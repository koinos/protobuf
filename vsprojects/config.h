#if defined(_MSC_VER)
# define HASH_MAP_H <hash_map>
#else
# define HASH_MAP_H <unordered_map>
#endif

#if defined(_MSC_VER)
# define HASH_NAMESPACE stdext
#else
# define HASH_NAMESPACE std
#endif

#if defined(_MSC_VER)
# define HASH_SET_H <hash_set>
#else
# define HASH_SET_H <unordered_set>
#endif

/* define if the compiler has hash_map */
#define HAVE_HASH_MAP

/* define if the compiler has hash_set */
#define HAVE_HASH_SET

#if !defined(_MSC_VER)
# define HASH_MAP_CLASS unordered_map
# define HASH_SET_CLASS unordered_set
#endif

/* define if you want to use zlib.  See readme.txt for additional
 * requirements. */
// #define HAVE_ZLIB 1

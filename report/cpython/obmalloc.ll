inline.NumInlined: 1359
inline.NumDeleted: 295
begin_hunk_0
@.str.61 = private unnamed_addr constant [16 x i8] c"reset_decommits\00", align 1
@.str.62 = private unnamed_addr constant [21 x i8] c"allow_large_os_pages\00", align 1
@.str.63 = private unnamed_addr constant [15 x i8] c"large_os_pages\00", align 1
@.str.64 = private unnamed_addr constant [22 x i8] c"reserve_huge_os_pages\00", align 1
@.str.65 = private unnamed_addr constant [25 x i8] c"reserve_huge_os_pages_at\00", align 1
@.str.66 = private unnamed_addr constant [18 x i8] c"reserve_os_memory\00", align 1
@.str.67 = private unnamed_addr constant [25 x i8] c"deprecated_segment_cache\00", align 1
@.str.68 = private unnamed_addr constant [22 x i8] c"deprecated_page_reset\00", align 1
@.str.69 = private unnamed_addr constant [21 x i8] c"abandoned_page_purge\00", align 1
@.str.70 = private unnamed_addr constant [21 x i8] c"abandoned_page_reset\00", align 1
@.str.71 = private unnamed_addr constant [25 x i8] c"deprecated_segment_reset\00", align 1
@.str.72 = private unnamed_addr constant [19 x i8] c"eager_commit_delay\00", align 1
@.str.73 = private unnamed_addr constant [12 x i8] c"purge_delay\00", align 1
@.str.74 = private unnamed_addr constant [12 x i8] c"reset_delay\00", align 1
@.str.75 = private unnamed_addr constant [15 x i8] c"use_numa_nodes\00", align 1
@.str.76 = private unnamed_addr constant [15 x i8] c"limit_os_alloc\00", align 1
@.str.77 = private unnamed_addr constant [7 x i8] c"os_tag\00", align 1
@.str.78 = private unnamed_addr constant [11 x i8] c"max_errors\00", align 1
@.str.79 = private unnamed_addr constant [13 x i8] c"max_warnings\00", align 1
@.str.80 = private unnamed_addr constant [20 x i8] c"max_segment_reclaim\00", align 1
@.str.81 = private unnamed_addr constant [16 x i8] c"destroy_on_exit\00", align 1
@.str.82 = private unnamed_addr constant [14 x i8] c"arena_reserve\00", align 1
@.str.83 = private unnamed_addr constant [17 x i8] c"arena_purge_mult\00", align 1
@.str.84 = private unnamed_addr constant [19 x i8] c"purge_extend_delay\00", align 1
@.str.85 = private unnamed_addr constant [22 x i8] c"decommit_extend_delay\00", align 1
@out_len = internal global i64 0, align 8
@out_buf = internal global [32769 x i8] zeroinitializer, align 16
@recurse = internal thread_local unnamed_addr global i8 0, align 1
@.str.86 = private unnamed_addr constant [18 x i8] c"%sthread 0x%llx: \00", align 1
@error_count = internal global i64 0, align 8
@.str.87 = private unnamed_addr constant [18 x i8] c"mimalloc: error: \00", align 1
@.str.89 = private unnamed_addr constant [78 x i8] c"environment option \22mimalloc_%s\22 is deprecated -- use \22mimalloc_%s\22 instead.\0A\00", align 1
@.str.90 = private unnamed_addr constant [14 x i8] c"1;TRUE;YES;ON\00", align 1
@.str.91 = private unnamed_addr constant [15 x i8] c"0;FALSE;NO;OFF\00", align 1
@.str.92 = private unnamed_addr constant [54 x i8] c"environment option mimalloc_%s has an invalid value.\0A\00", align 1
@mi_os_mem_config.0 = internal unnamed_addr global i64 4096, align 8
@mi_os_mem_config.1 = internal unnamed_addr global i1 false, align 8
@mi_os_mem_config.3 = internal unnamed_addr global i8 1, align 8
@.str.94 = private unnamed_addr constant [77 x i8] c"unable to free OS memory (error: %d (0x%x), size: 0x%zx bytes, address: %p)\0A\00", align 1
@.str.95 = private unnamed_addr constant [111 x i8] c"unable to allocate OS memory (error: %d (0x%x), size: 0x%zx bytes, align: 0x%zx, commit: %d, allow large: %d)\0A\00", align 1
@.str.96 = private unnamed_addr constant [78 x i8] c"cannot decommit OS memory (error: %d (0x%x), address: %p, size: 0x%zx bytes)\0A\00", align 1
@.str.97 = private unnamed_addr constant [72 x i8] c"cannot %s OS memory (error: %d (0x%x), address: %p, size: 0x%zx bytes)\0A\00", align 1
@.str.98 = private unnamed_addr constant [8 x i8] c"protect\00", align 1
@.str.99 = private unnamed_addr constant [10 x i8] c"unprotect\00", align 1
@mi_huge_start = internal global i64 0, align 64
@.str.100 = private unnamed_addr constant [28 x i8] c"corrupted thread-free list\0A\00", align 1
@.str.101 = private unnamed_addr constant [45 x i8] c"allocation request is too large (%zu bytes)\0A\00", align 1
@.str.102 = private unnamed_addr constant [33 x i8] c"unable to use secure randomness\0A\00", align 1
@.str.104 = private unnamed_addr constant [88 x i8] c"commit mask overflow: idx=%zu count=%zu start=%zx end=%zx p=0x%p size=%zu fullsize=%zu\0A\00", align 1
@.str.105 = private unnamed_addr constant [9 x i8] c"reserved\00", align 1
@.str.106 = private unnamed_addr constant [10 x i8] c"committed\00", align 1
@.str.107 = private unnamed_addr constant [6 x i8] c"reset\00", align 1
@.str.108 = private unnamed_addr constant [7 x i8] c"purged\00", align 1
@.str.109 = private unnamed_addr constant [8 x i8] c"touched\00", align 1
@.str.110 = private unnamed_addr constant [9 x i8] c"segments\00", align 1
@.str.111 = private unnamed_addr constant [11 x i8] c"-abandoned\00", align 1
@.str.112 = private unnamed_addr constant [8 x i8] c"-cached\00", align 1
@.str.113 = private unnamed_addr constant [6 x i8] c"pages\00", align 1
@.str.114 = private unnamed_addr constant [10 x i8] c"-extended\00", align 1
@.str.115 = private unnamed_addr constant [10 x i8] c"-noretire\00", align 1
@.str.116 = private unnamed_addr constant [6 x i8] c"mmaps\00", align 1
@.str.117 = private unnamed_addr constant [8 x i8] c"commits\00", align 1
@.str.118 = private unnamed_addr constant [7 x i8] c"resets\00", align 1
@.str.119 = private unnamed_addr constant [7 x i8] c"purges\00", align 1
@.str.120 = private unnamed_addr constant [8 x i8] c"threads\00", align 1
@.str.121 = private unnamed_addr constant [9 x i8] c"searches\00", align 1
@.str.122 = private unnamed_addr constant [12 x i8] c"%10s: %5zu\0A\00", align 1
@.str.123 = private unnamed_addr constant [11 x i8] c"numa nodes\00", align 1
@.str.124 = private unnamed_addr constant [20 x i8] c"%10s: %5ld.%03ld s\0A\00", align 1
@.str.125 = private unnamed_addr constant [8 x i8] c"elapsed\00", align 1
@.str.126 = private unnamed_addr constant [65 x i8] c"%10s: user: %ld.%03ld s, system: %ld.%03ld s, faults: %lu, rss: \00", align 1
@.str.127 = private unnamed_addr constant [8 x i8] c"process\00", align 1
@.str.128 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.129 = private unnamed_addr constant [11 x i8] c", commit: \00", align 1
@.str.130 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.131 = private unnamed_addr constant [37 x i8] c"%10s: %11s %11s %11s %11s %11s %11s\0A\00", align 1
@.str.132 = private unnamed_addr constant [11 x i8] c"heap stats\00", align 1
@.str.133 = private unnamed_addr constant [8 x i8] c"peak   \00", align 1
@.str.134 = private unnamed_addr constant [9 x i8] c"total   \00", align 1
@.str.135 = private unnamed_addr constant [9 x i8] c"freed   \00", align 1
@.str.136 = private unnamed_addr constant [11 x i8] c"current   \00", align 1
@.str.137 = private unnamed_addr constant [8 x i8] c"unit   \00", align 1
@.str.138 = private unnamed_addr constant [9 x i8] c"count   \00", align 1
@.str.139 = private unnamed_addr constant [6 x i8] c"%10s:\00", align 1
@.str.140 = private unnamed_addr constant [14 x i8] c"not all freed\00", align 1
@.str.141 = private unnamed_addr constant [6 x i8] c"  ok\0A\00", align 1
@.str.142 = private unnamed_addr constant [5 x i8] c"%24s\00", align 1
@.str.143 = private unnamed_addr constant [18 x i8] c"  not all freed!\0A\00", align 1
@.str.144 = private unnamed_addr constant [5 x i8] c"%11s\00", align 1
@.str.145 = private unnamed_addr constant [2 x i8] c" \00", align 1
@.str.146 = private unnamed_addr constant [5 x i8] c"%12s\00", align 1
@.str.147 = private unnamed_addr constant [20 x i8] c"%10s: %5ld.%ld avg\0A\00", align 1
@.str.148 = private unnamed_addr constant [2 x i8] c"B\00", align 1
@.str.149 = private unnamed_addr constant [10 x i8] c"%d   %-3s\00", align 1
@.str.150 = private unnamed_addr constant [2 x i8] c"K\00", align 1
@.str.151 = private unnamed_addr constant [2 x i8] c"M\00", align 1
@.str.152 = private unnamed_addr constant [2 x i8] c"G\00", align 1
@.str.153 = private unnamed_addr constant [7 x i8] c"%s%s%s\00", align 1
@.str.154 = private unnamed_addr constant [2 x i8] c"i\00", align 1
@.str.155 = private unnamed_addr constant [13 x i8] c"%ld.%ld %-3s\00", align 1
@.str.156 = private unnamed_addr constant [31 x i8] c"/proc/sys/vm/overcommit_memory\00", align 1
@unix_mmap.large_page_try_ok = internal global i64 0, align 8
@unix_mmap.mi_huge_pages_available = internal unnamed_addr global i1 false, align 1
@.str.157 = private unnamed_addr constant [84 x i8] c"unable to allocate huge (1GiB) page, trying large (2MiB) pages instead (errno: %i)\0A\00", align 1
@.str.158 = private unnamed_addr constant [127 x i8] c"unable to directly request hinted aligned OS memory (error: %d (0x%x), size: 0x%zx bytes, alignment: 0x%zx, hint address: %p)\0A\00", align 1
@environ = external local_unnamed_addr global ptr, align 8
@__const.get_current_allocator_name_unlocked.malloc_alloc = private unnamed_addr constant %struct.PyMemAllocatorEx { ptr null, ptr @_PyMem_RawMalloc, ptr @_PyMem_RawCalloc, ptr @_PyMem_RawRealloc, ptr @_PyMem_RawFree }, align 8
@__const.get_current_allocator_name_unlocked.pymalloc = private unnamed_addr constant %struct.PyMemAllocatorEx { ptr null, ptr @_PyObject_Malloc, ptr @_PyObject_Calloc, ptr @_PyObject_Realloc, ptr @_PyObject_Free }, align 8
@__const.get_current_allocator_name_unlocked.mimalloc = private unnamed_addr constant %struct.PyMemAllocatorEx { ptr null, ptr @_PyMem_MiMalloc, ptr @_PyMem_MiCalloc, ptr @_PyMem_MiRealloc, ptr @_PyMem_MiFree }, align 8
@__const.get_current_allocator_name_unlocked.mimalloc_obj = private unnamed_addr constant %struct.PyMemAllocatorEx { ptr null, ptr @_PyObject_MiMalloc, ptr @_PyObject_MiCalloc, ptr @_PyObject_MiRealloc, ptr @_PyObject_MiFree }, align 8
@__const.get_current_allocator_name_unlocked.mimalloc_raw = private unnamed_addr constant %struct.PyMemAllocatorEx { ptr null, ptr @_PyMem_MiRawMalloc, ptr @_PyMem_MiRawCalloc, ptr @_PyMem_MiRawRealloc, ptr @_PyMem_MiRawFree }, align 8
@__const.get_current_allocator_name_unlocked.dbg_raw = private unnamed_addr constant %struct.PyMemAllocatorEx { ptr getelementptr (i8, ptr @_PyRuntime, i64 1064), ptr @_PyMem_DebugRawMalloc, ptr @_PyMem_DebugRawCalloc, ptr @_PyMem_DebugRawRealloc, ptr @_PyMem_DebugRawFree }, align 8
@__const.get_current_allocator_name_unlocked.dbg_mem = private unnamed_addr constant %struct.PyMemAllocatorEx { ptr getelementptr (i8, ptr @_PyRuntime, i64 1112), ptr @_PyMem_DebugMalloc, ptr @_PyMem_DebugCalloc, ptr @_PyMem_DebugRealloc, ptr @_PyMem_DebugFree }, align 8
@__const.get_current_allocator_name_unlocked.dbg_obj = private unnamed_addr constant %struct.PyMemAllocatorEx { ptr getelementptr (i8, ptr @_PyRuntime, i64 1160), ptr @_PyMem_DebugMalloc, ptr @_PyMem_DebugCalloc, ptr @_PyMem_DebugRealloc, ptr @_PyMem_DebugFree }, align 8
@_Py_tss_tstate = external thread_local local_unnamed_addr global ptr, align 8
@_Py_tss_interp = external thread_local local_unnamed_addr global ptr, align 8
@.str.162 = private unnamed_addr constant [18 x i8] c"PYTHONMALLOCSTATS\00", align 1
@.str.163 = private unnamed_addr constant [55 x i8] c"Python memory allocator called without holding the GIL\00", align 1
@.str.164 = private unnamed_addr constant [58 x i8] c"bad ID: Allocated using API '%c', verified using API '%c'\00", align 1
@.str.165 = private unnamed_addr constant [21 x i8] c"bad leading pad byte\00", align 1
@.str.166 = private unnamed_addr constant [22 x i8] c"bad trailing pad byte\00", align 1
@.str.167 = private unnamed_addr constant [36 x i8] c"Debug memory block at address p=%p:\00", align 1
@.str.168 = private unnamed_addr constant [11 x i8] c" API '%c'\0A\00", align 1
@.str.169 = private unnamed_addr constant [36 x i8] c"    %zu bytes originally requested\0A\00", align 1
@.str.170 = private unnamed_addr constant [34 x i8] c"    The %d pad bytes at p-%d are \00", align 1
@.str.171 = private unnamed_addr constant [29 x i8] c"FORBIDDENBYTE, as expected.\0A\00", align 1
@.str.172 = private unnamed_addr constant [33 x i8] c"not all FORBIDDENBYTE (0x%02x):\0A\00", align 1
@.str.173 = private unnamed_addr constant [24 x i8] c"        at p-%d: 0x%02x\00", align 1
@.str.174 = private unnamed_addr constant [10 x i8] c" *** OUCH\00", align 1
@.str.175 = private unnamed_addr constant [147 x i8] c"    Because memory is corrupted at the start, the count of bytes requested\0A       may be bogus, and checking the trailing pad bytes may segfault.\0A\00", align 1
@.str.176 = private unnamed_addr constant [37 x i8] c"    The %d pad bytes at tail=%p are \00", align 1
@.str.177 = private unnamed_addr constant [27 x i8] c"        at tail+%d: 0x%02x\00", align 1
@.str.178 = private unnamed_addr constant [15 x i8] c"    Data at p:\00", align 1
@.str.179 = private unnamed_addr constant [6 x i8] c" %02x\00", align 1
@.str.180 = private unnamed_addr constant [5 x i8] c" ...\00", align 1
@.str.181 = private unnamed_addr constant [50 x i8] c"Small block threshold = %zu, in %u size classes.\0A\00", align 1
@.str.182 = private unnamed_addr constant [30 x i8] c"Medium block threshold = %zu\0A\00", align 1
@.str.183 = private unnamed_addr constant [29 x i8] c"Large object max size = %zu\0A\00", align 1
@.str.184 = private unnamed_addr constant [27 x i8] c"    Allocated Blocks: %zd\0A\00", align 1
@.str.185 = private unnamed_addr constant [26 x i8] c"    Allocated Bytes: %zd\0A\00", align 1
@.str.186 = private unnamed_addr constant [38 x i8] c"    Allocated Bytes w/ Overhead: %zd\0A\00", align 1
@.str.187 = private unnamed_addr constant [25 x i8] c"    Bytes Reserved: %zd\0A\00", align 1
@.str.188 = private unnamed_addr constant [26 x i8] c"    Bytes Committed: %zd\0A\00", align 1
@.str.189 = private unnamed_addr constant [49 x i8] c"Small block threshold = %d, in %u size classes.\0A\00", align 1
@.str.190 = private unnamed_addr constant [111 x i8] c"class   size   num pools   blocks in use  avail blocks\0A-----   ----   ---------   -------------  ------------\0A\00", align 1
@.str.191 = private unnamed_addr constant [27 x i8] c"%5u %6u %11zu %15zu %13zu\0A\00", align 1
@.str.192 = private unnamed_addr constant [25 x i8] c"# arenas allocated total\00", align 1
@.str.193 = private unnamed_addr constant [19 x i8] c"# arenas reclaimed\00", align 1
@.str.194 = private unnamed_addr constant [24 x i8] c"# arenas highwater mark\00", align 1
@.str.195 = private unnamed_addr constant [27 x i8] c"# arenas allocated current\00", align 1
@.str.196 = private unnamed_addr constant [28 x i8] c"%zu arenas * %d bytes/arena\00", align 1
@.str.197 = private unnamed_addr constant [28 x i8] c"# bytes in allocated blocks\00", align 1
@.str.198 = private unnamed_addr constant [28 x i8] c"# bytes in available blocks\00", align 1
@.str.199 = private unnamed_addr constant [27 x i8] c"%u unused pools * %d bytes\00", align 1
@.str.200 = private unnamed_addr constant [29 x i8] c"# bytes lost to pool headers\00", align 1
@.str.201 = private unnamed_addr constant [29 x i8] c"# bytes lost to quantization\00", align 1
@.str.202 = private unnamed_addr constant [32 x i8] c"# bytes lost to arena alignment\00", align 1
@.str.203 = private unnamed_addr constant [6 x i8] c"Total\00", align 1
@.str.204 = private unnamed_addr constant [19 x i8] c"\0Aarena map counts\0A\00", align 1
@.str.205 = private unnamed_addr constant [22 x i8] c"# arena map mid nodes\00", align 1
@.str.206 = private unnamed_addr constant [22 x i8] c"# arena map bot nodes\00", align 1
@.str.207 = private unnamed_addr constant [31 x i8] c"# bytes lost to arena map root\00", align 1
@.str.208 = private unnamed_addr constant [30 x i8] c"# bytes lost to arena map mid\00", align 1
@.str.209 = private unnamed_addr constant [30 x i8] c"# bytes lost to arena map bot\00", align 1
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 65535, ptr @_mi_process_init, ptr null }]

; Function Attrs: inlinehint nounwind uwtable
define hidden ptr @_mi_page_malloc(ptr noundef %0, ptr nofree noundef captures(none) %1, i64 noundef %2, i1 noundef zeroext %3) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr i8, ptr %1, i64 16         ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !11   ; 8 uses
  %i.c = icmp eq ptr %i.b, null
  br i1 %i.c, label %bb.b, label %bb.c, !prof !17

bb.b:                                             ; preds = %bb.a
  %i.d = tail call noalias ptr @_mi_malloc_generic(ptr noundef %0, i64 noundef %2, i1 noundef zeroext %3, i64 noundef 0)
  br label %bb.g

bb.c:                                             ; preds = %bb.a
  %i.e = getelementptr i8, ptr %1, i64 24         ; 2 uses
  %i.f = load i32, ptr %i.e, align 8, !tbaa !18
  %i.g = add i32 %i.f, 1
  store i32 %i.g, ptr %i.e, align 8, !tbaa !18
  %i.h = load atomic i64, ptr %i.b monotonic, align 8
  %i.i = inttoptr i64 %i.h to ptr
  store ptr %i.i, ptr %i.a, align 8, !tbaa !11
  br i1 %3, label %bb.d, label %bb.g, !prof !17

bb.d:                                             ; preds = %bb.c
  %i.j = getelementptr i8, ptr %1, i64 15
  %i.k = load i8, ptr %i.j, align 1
  %i.l = and i8 %i.k, 1
  %.not = icmp eq i8 %i.l, 0
  br i1 %.not, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  store atomic i64 0, ptr %i.b seq_cst, align 8, !tbaa !19
  br label %bb.g

bb.f:                                             ; preds = %bb.d
  call void @llvm.assume(i1 true) [ "align"(ptr %i.b, i64 8) ]
  %i.m = getelementptr i8, ptr %1, i64 28
  %i.n = load i32, ptr %i.m, align 4, !tbaa !21
  %i.o = zext i32 %i.n to i64
  tail call void @llvm.memset.p0.i64(ptr nonnull align 8 %i.b, i8 0, i64 %i.o, i1 false)
  br label %bb.g

bb.g:                                             ; preds = %bb.c, %bb.f, %bb.e, %bb.b
  %.0 = phi ptr [ %i.d, %bb.b ], [ %i.b, %bb.e ], [ %i.b, %bb.f ], [ %i.b, %bb.c ]
  ret ptr %.0
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

; Function Attrs: nounwind uwtable
define hidden noalias ptr @_mi_malloc_generic(ptr noundef %0, i64 noundef %1, i1 noundef zeroext %2, i64 noundef %3) local_unnamed_addr #2 {
bb.a:
  br label %tailrecurse

tailrecurse:                                      ; preds = %.critedge, %bb.a
  %.tr = phi ptr [ %0, %bb.a ], [ %.027, %.critedge ] ; 2 uses
  %.tr40 = phi i64 [ %3, %bb.a ], [ 0, %.critedge ] ; 2 uses
  %.not = icmp eq ptr %.tr, @_mi_heap_empty
  br i1 %.not, label %bb.b, label %bb.c, !prof !17

bb.b:                                             ; preds = %tailrecurse
  %i.a = tail call ptr @mi_heap_get_default()     ; 2 uses
  %.not37 = icmp eq ptr %i.a, @_mi_heap_empty
  br i1 %.not37, label %_mi_page_malloc.exit34, label %bb.c, !prof !17

bb.c:                                             ; preds = %bb.b, %tailrecurse
  %.027 = phi ptr [ %i.a, %bb.b ], [ %.tr, %tailrecurse ] ; 8 uses
  %i.b = load ptr, ptr %.027, align 8, !tbaa !22  ; 3 uses
  %i.c = load i64, ptr %i.b, align 8, !tbaa !29
  %i.d = add i64 %i.c, 1                          ; 2 uses
  store i64 %i.d, ptr %i.b, align 8, !tbaa !29
  %i.e = load volatile ptr, ptr @deferred_free, align 8, !tbaa !40
  %.not.i = icmp eq ptr %i.e, null
  br i1 %.not.i, label %_mi_deferred_free.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.f = getelementptr i8, ptr %i.b, i64 8        ; 2 uses
  %i.g = load i8, ptr %i.f, align 8, !tbaa !41, !range !42, !noundef !43
  %i.h = trunc nuw i8 %i.g to i1
  br i1 %i.h, label %_mi_deferred_free.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  store i8 1, ptr %i.f, align 8, !tbaa !41
  %i.i = load volatile ptr, ptr @deferred_free, align 8, !tbaa !40
  %i.j = load atomic ptr, ptr @deferred_arg monotonic, align 8
  tail call void %i.i(i1 noundef zeroext false, i64 noundef %i.d, ptr noundef %i.j) #55, !inline_history !44
  %i.k = load ptr, ptr %.027, align 8, !tbaa !22
  %i.l = getelementptr i8, ptr %i.k, i64 8
  store i8 0, ptr %i.l, align 8, !tbaa !41
  br label %_mi_deferred_free.exit

_mi_deferred_free.exit:                           ; preds = %bb.c, %bb.d, %bb.e
  %i.m = getelementptr i8, ptr %.027, i64 2840    ; 4 uses
  %i.n = load atomic ptr, ptr %i.m monotonic, align 8 ; 2 uses
  %.old1.not.i = icmp eq ptr %i.n, null
  br i1 %.old1.not.i, label %_mi_heap_delayed_free_partial.exit, label %.preheader.i

.preheader.i:                                     ; preds = %_mi_deferred_free.exit, %.preheader.i
  %.0.i = phi ptr [ %i.q, %.preheader.i ], [ %i.n, %_mi_deferred_free.exit ]
  %i.o = cmpxchg weak ptr %i.m, ptr %.0.i, ptr null acq_rel acquire, align 8 ; 2 uses
  %i.p = extractvalue { ptr, i1 } %i.o, 1
  %i.q = extractvalue { ptr, i1 } %i.o, 0         ; 3 uses
  %i.r = icmp eq ptr %i.q, null                   ; 2 uses
  %or.cond.not.i = select i1 %i.p, i1 true, i1 %i.r
  br i1 %or.cond.not.i, label %.critedge.i, label %.preheader.i, !llvm.loop !45

.critedge.i:                                      ; preds = %.preheader.i
  br i1 %i.r, label %_mi_heap_delayed_free_partial.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.critedge.i, %.loopexit.i
  %.334.i = phi ptr [ %i.t, %.loopexit.i ], [ %i.q, %.critedge.i ] ; 4 uses
  %i.s = load atomic i64, ptr %.334.i monotonic, align 8 ; 2 uses
  %i.t = inttoptr i64 %i.s to ptr
  %i.u = tail call zeroext i1 @_mi_free_delayed_block(ptr noundef nonnull %.334.i)
  br i1 %i.u, label %.loopexit.i, label %bb.f

bb.f:                                             ; preds = %.lr.ph.i
  %i.v = load atomic ptr, ptr %i.m monotonic, align 8
  br label %bb.g

bb.g:                                             ; preds = %bb.g, %bb.f
  %.027.i = phi ptr [ %i.v, %bb.f ], [ %i.z, %bb.g ] ; 2 uses
  %i.w = ptrtoint ptr %.027.i to i64
  store atomic i64 %i.w, ptr %.334.i monotonic, align 8
  %i.x = cmpxchg weak ptr %i.m, ptr %.027.i, ptr %.334.i release monotonic, align 8 ; 2 uses
  %i.y = extractvalue { ptr, i1 } %i.x, 1
  %i.z = extractvalue { ptr, i1 } %i.x, 0
  br i1 %i.y, label %.loopexit.i, label %bb.g, !llvm.loop !47

.loopexit.i:                                      ; preds = %bb.g, %.lr.ph.i
  %.not.i30 = icmp eq i64 %i.s, 0
  br i1 %.not.i30, label %_mi_heap_delayed_free_partial.exit, label %.lr.ph.i, !llvm.loop !48

_mi_heap_delayed_free_partial.exit:               ; preds = %.loopexit.i, %_mi_deferred_free.exit, %.critedge.i
  %i.aa = tail call fastcc ptr @mi_find_page(ptr noundef nonnull %.027, i64 noundef %1, i64 noundef %.tr40) ; 2 uses
  %i.ab = icmp eq ptr %i.aa, null
  br i1 %i.ab, label %bb.h, label %.thread, !prof !17

bb.h:                                             ; preds = %_mi_heap_delayed_free_partial.exit
  tail call fastcc void @mi_heap_collect_ex(ptr noundef nonnull %.027, i32 noundef 1)
  %i.ac = tail call fastcc ptr @mi_find_page(ptr noundef nonnull %.027, i64 noundef %1, i64 noundef %.tr40) ; 2 uses
  %i.ad = icmp eq ptr %i.ac, null
  br i1 %i.ad, label %bb.i, label %.thread, !prof !49

bb.i:                                             ; preds = %bb.h
  tail call void (i32, ptr, ...) @_mi_error_message(i32 noundef 12, ptr noundef nonnull @.str.31, i64 noundef %1)
  br label %_mi_page_malloc.exit34

.thread:                                          ; preds = %_mi_heap_delayed_free_partial.exit, %bb.h
  %.02836 = phi ptr [ %i.ac, %bb.h ], [ %i.aa, %_mi_heap_delayed_free_partial.exit ] ; 10 uses
  br i1 %2, label %bb.j, label %.critedge

bb.j:                                             ; preds = %.thread
  %i.ae = getelementptr i8, ptr %.02836, i64 28
  %i.af = load i32, ptr %i.ae, align 4, !tbaa !21
  %i.ag = icmp eq i32 %i.af, 0
  br i1 %i.ag, label %bb.k, label %.critedge, !prof !17

bb.k:                                             ; preds = %bb.j
  %i.ah = getelementptr i8, ptr %.02836, i64 16   ; 2 uses
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !11 ; 3 uses
  %i.aj = icmp eq ptr %i.ai, null
  br i1 %i.aj, label %_mi_page_malloc.exit, label %_mi_page_malloc.exit.thread, !prof !17

_mi_page_malloc.exit.thread:                      ; preds = %bb.k
  %i.ak = getelementptr i8, ptr %.02836, i64 24   ; 2 uses
  %i.al = load i32, ptr %i.ak, align 8, !tbaa !18
  %i.am = add i32 %i.al, 1
  store i32 %i.am, ptr %i.ak, align 8, !tbaa !18
  %i.an = load atomic i64, ptr %i.ai monotonic, align 8
  %i.ao = inttoptr i64 %i.an to ptr
  store ptr %i.ao, ptr %i.ah, align 8, !tbaa !11
  br label %bb.l

_mi_page_malloc.exit:                             ; preds = %bb.k
  %i.ap = getelementptr i8, ptr %.02836, i64 28
  %i.aq = tail call noalias ptr @_mi_malloc_generic(ptr noundef nonnull %.027, i64 noundef %1, i1 noundef zeroext false, i64 noundef 0), !inline_history !50 ; 2 uses
  %.pre = load i32, ptr %i.ap, align 4, !tbaa !21 ; 2 uses
  %i.ar = icmp sgt i32 %.pre, -1
  br i1 %i.ar, label %bb.l, label %_mi_segment_page_start.exit.i.i, !prof !51

bb.l:                                             ; preds = %_mi_page_malloc.exit.thread, %_mi_page_malloc.exit
  %.0.i3164 = phi ptr [ %i.ai, %_mi_page_malloc.exit.thread ], [ %i.aq, %_mi_page_malloc.exit ]
  %i.as = phi i32 [ 0, %_mi_page_malloc.exit.thread ], [ %.pre, %_mi_page_malloc.exit ]
  %i.at = zext nneg i32 %i.as to i64
  br label %mi_page_usable_block_size.exit

_mi_segment_page_start.exit.i.i:                  ; preds = %_mi_page_malloc.exit
  %i.au = load i32, ptr %.02836, align 8, !tbaa !52
  %i.av = zext i32 %i.au to i64
  %i.aw = shl nuw nsw i64 %i.av, 16
  br label %mi_page_usable_block_size.exit

mi_page_usable_block_size.exit:                   ; preds = %bb.l, %_mi_segment_page_start.exit.i.i
  %.0.i3163 = phi ptr [ %.0.i3164, %bb.l ], [ %i.aq, %_mi_segment_page_start.exit.i.i ] ; 3 uses
  %.0.i.i = phi i64 [ %i.at, %bb.l ], [ %i.aw, %_mi_segment_page_start.exit.i.i ]
  call void @llvm.assume(i1 true) [ "align"(ptr %.0.i3163, i64 8) ]
  tail call void @llvm.memset.p0.i64(ptr align 8 %.0.i3163, i8 0, i64 %.0.i.i, i1 false)
  br label %_mi_page_malloc.exit34

.critedge:                                        ; preds = %.thread, %bb.j
  %i.ax = getelementptr i8, ptr %.02836, i64 16
  %i.ay = load ptr, ptr %i.ax, align 8, !tbaa !11 ; 8 uses
  %i.az = icmp eq ptr %i.ay, null
  br i1 %i.az, label %tailrecurse, label %bb.m, !prof !17

bb.m:                                             ; preds = %.critedge
  %i.ba = getelementptr i8, ptr %.02836, i64 16
  %i.bb = getelementptr i8, ptr %.02836, i64 24   ; 2 uses
  %i.bc = load i32, ptr %i.bb, align 8, !tbaa !18
  %i.bd = add i32 %i.bc, 1
  store i32 %i.bd, ptr %i.bb, align 8, !tbaa !18
  %i.be = load atomic i64, ptr %i.ay monotonic, align 8
  %i.bf = inttoptr i64 %i.be to ptr
  store ptr %i.bf, ptr %i.ba, align 8, !tbaa !11
  br i1 %2, label %bb.n, label %_mi_page_malloc.exit34, !prof !17

bb.n:                                             ; preds = %bb.m
  %i.bg = getelementptr i8, ptr %.02836, i64 15
  %i.bh = load i8, ptr %i.bg, align 1
  %i.bi = and i8 %i.bh, 1
  %.not.i33 = icmp eq i8 %i.bi, 0
  br i1 %.not.i33, label %bb.p, label %bb.o

bb.o:                                             ; preds = %bb.n
  store atomic i64 0, ptr %i.ay seq_cst, align 8, !tbaa !19
  br label %_mi_page_malloc.exit34

bb.p:                                             ; preds = %bb.n
  call void @llvm.assume(i1 true) [ "align"(ptr %i.ay, i64 8) ]
  %i.bj = getelementptr i8, ptr %.02836, i64 28
  %i.bk = load i32, ptr %i.bj, align 4, !tbaa !21
  %i.bl = zext i32 %i.bk to i64
  tail call void @llvm.memset.p0.i64(ptr nonnull align 8 %i.ay, i8 0, i64 %i.bl, i1 false)
  br label %_mi_page_malloc.exit34

_mi_page_malloc.exit34:                           ; preds = %bb.b, %bb.p, %bb.o, %bb.m, %bb.i, %mi_page_usable_block_size.exit
  %.1 = phi ptr [ %i.ay, %bb.p ], [ null, %bb.i ], [ %.0.i3163, %mi_page_usable_block_size.exit ], [ %i.ay, %bb.m ], [ %i.ay, %bb.o ], [ null, %bb.b ]
  ret ptr %.1
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: inlinehint nounwind uwtable
define hidden noalias ptr @mi_heap_malloc_small(ptr noundef %0, i64 noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = add i64 %1, 7
  %i.b = lshr i64 %i.a, 3
  %i.c = getelementptr i8, ptr %0, i64 8
  %i.d = getelementptr [8 x i8], ptr %i.c, i64 %i.b
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !53   ; 2 uses
  %i.f = getelementptr i8, ptr %i.e, i64 16       ; 2 uses
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !11   ; 3 uses
  %i.h = icmp eq ptr %i.g, null
  br i1 %i.h, label %bb.b, label %bb.c, !prof !17

bb.b:                                             ; preds = %bb.a
  %i.i = tail call noalias ptr @_mi_malloc_generic(ptr noundef nonnull %0, i64 noundef %1, i1 noundef zeroext false, i64 noundef 0), !inline_history !50
  br label %mi_heap_malloc_small_zero.exit

bb.c:                                             ; preds = %bb.a
  %i.j = getelementptr i8, ptr %i.e, i64 24       ; 2 uses
  %i.k = load i32, ptr %i.j, align 8, !tbaa !18
  %i.l = add i32 %i.k, 1
  store i32 %i.l, ptr %i.j, align 8, !tbaa !18
  %i.m = load atomic i64, ptr %i.g monotonic, align 8
  %i.n = inttoptr i64 %i.m to ptr
  store ptr %i.n, ptr %i.f, align 8, !tbaa !11
  br label %mi_heap_malloc_small_zero.exit

mi_heap_malloc_small_zero.exit:                   ; preds = %bb.b, %bb.c
  %.0.i.i = phi ptr [ %i.i, %bb.b ], [ %i.g, %bb.c ]
  ret ptr %.0.i.i
}

; Function Attrs: inlinehint nounwind uwtable
define hidden noalias ptr @mi_malloc_small(i64 noundef %0) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @_mi_heap_default)
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !54   ; 2 uses
  %i.c = add i64 %0, 7
  %i.d = lshr i64 %i.c, 3
  %i.e = getelementptr i8, ptr %i.b, i64 8
  %i.f = getelementptr [8 x i8], ptr %i.e, i64 %i.d
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !53   ; 2 uses
  %i.h = getelementptr i8, ptr %i.g, i64 16       ; 2 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !11   ; 3 uses
  %i.j = icmp eq ptr %i.i, null
  br i1 %i.j, label %bb.b, label %bb.c, !prof !17

bb.b:                                             ; preds = %bb.a
  %i.k = tail call noalias ptr @_mi_malloc_generic(ptr noundef nonnull %i.b, i64 noundef %0, i1 noundef zeroext false, i64 noundef 0), !inline_history !50
  br label %mi_heap_malloc_small.exit

bb.c:                                             ; preds = %bb.a
  %i.l = getelementptr i8, ptr %i.g, i64 24       ; 2 uses
  %i.m = load i32, ptr %i.l, align 8, !tbaa !18
  %i.n = add i32 %i.m, 1
  store i32 %i.n, ptr %i.l, align 8, !tbaa !18
  %i.o = load atomic i64, ptr %i.i monotonic, align 8
  %i.p = inttoptr i64 %i.o to ptr
  store ptr %i.p, ptr %i.h, align 8, !tbaa !11
  br label %mi_heap_malloc_small.exit

mi_heap_malloc_small.exit:                        ; preds = %bb.b, %bb.c
  %.0.i.i.i = phi ptr [ %i.k, %bb.b ], [ %i.i, %bb.c ]
  ret ptr %.0.i.i.i
}

; Function Attrs: inlinehint nounwind uwtable
define hidden ptr @_mi_heap_malloc_zero_ex(ptr noundef %0, i64 noundef %1, i1 noundef zeroext %2, i64 noundef %3) local_unnamed_addr #0 {
bb.a:
  %i.a = icmp ult i64 %1, 1025
  br i1 %i.a, label %bb.b, label %bb.h, !prof !55

bb.b:                                             ; preds = %bb.a
  %i.b = add nuw nsw i64 %1, 7
  %i.c = lshr i64 %i.b, 3
  %i.d = getelementptr i8, ptr %0, i64 8
  %i.e = getelementptr [8 x i8], ptr %i.d, i64 %i.c
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !53   ; 4 uses
  %i.g = getelementptr i8, ptr %i.f, i64 16       ; 2 uses
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !11   ; 8 uses
  %i.i = icmp eq ptr %i.h, null
  br i1 %i.i, label %bb.c, label %bb.d, !prof !17

bb.c:                                             ; preds = %bb.b
  %i.j = tail call noalias ptr @_mi_malloc_generic(ptr noundef nonnull %0, i64 noundef %1, i1 noundef zeroext %2, i64 noundef 0), !inline_history !50
  br label %mi_heap_malloc_small_zero.exit

bb.d:                                             ; preds = %bb.b
  %i.k = getelementptr i8, ptr %i.f, i64 24       ; 2 uses
  %i.l = load i32, ptr %i.k, align 8, !tbaa !18
  %i.m = add i32 %i.l, 1
  store i32 %i.m, ptr %i.k, align 8, !tbaa !18
  %i.n = load atomic i64, ptr %i.h monotonic, align 8
  %i.o = inttoptr i64 %i.n to ptr
  store ptr %i.o, ptr %i.g, align 8, !tbaa !11
  br i1 %2, label %bb.e, label %mi_heap_malloc_small_zero.exit, !prof !17

bb.e:                                             ; preds = %bb.d
  %i.p = getelementptr i8, ptr %i.f, i64 15
  %i.q = load i8, ptr %i.p, align 1
  %i.r = and i8 %i.q, 1
  %.not.i.i = icmp eq i8 %i.r, 0
  br i1 %.not.i.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  store atomic i64 0, ptr %i.h seq_cst, align 8, !tbaa !19
  br label %mi_heap_malloc_small_zero.exit

bb.g:                                             ; preds = %bb.e
  call void @llvm.assume(i1 true) [ "align"(ptr %i.h, i64 8) ]
  %i.s = getelementptr i8, ptr %i.f, i64 28
  %i.t = load i32, ptr %i.s, align 4, !tbaa !21
  %i.u = zext i32 %i.t to i64
  tail call void @llvm.memset.p0.i64(ptr nonnull align 8 %i.h, i8 0, i64 %i.u, i1 false)
  br label %mi_heap_malloc_small_zero.exit

bb.h:                                             ; preds = %bb.a
  %i.v = tail call noalias ptr @_mi_malloc_generic(ptr noundef %0, i64 noundef %1, i1 noundef zeroext %2, i64 noundef %3)
  br label %mi_heap_malloc_small_zero.exit

mi_heap_malloc_small_zero.exit:                   ; preds = %bb.g, %bb.f, %bb.d, %bb.c, %bb.h
  %.0 = phi ptr [ %i.v, %bb.h ], [ %i.j, %bb.c ], [ %i.h, %bb.f ], [ %i.h, %bb.g ], [ %i.h, %bb.d ]
  ret ptr %.0
}

; Function Attrs: inlinehint nounwind uwtable
define hidden ptr @_mi_heap_malloc_zero(ptr noundef %0, i64 noundef %1, i1 noundef zeroext %2) local_unnamed_addr #0 {
bb.a:
  %i.a = icmp ult i64 %1, 1025
  br i1 %i.a, label %bb.b, label %bb.h, !prof !55

bb.b:                                             ; preds = %bb.a
  %i.b = add nuw nsw i64 %1, 7
  %i.c = lshr i64 %i.b, 3
  %i.d = getelementptr i8, ptr %0, i64 8
  %i.e = getelementptr [8 x i8], ptr %i.d, i64 %i.c
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !53   ; 4 uses
  %i.g = getelementptr i8, ptr %i.f, i64 16       ; 2 uses
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !11   ; 8 uses
  %i.i = icmp eq ptr %i.h, null
  br i1 %i.i, label %bb.c, label %bb.d, !prof !17

bb.c:                                             ; preds = %bb.b
  %i.j = tail call noalias ptr @_mi_malloc_generic(ptr noundef nonnull %0, i64 noundef %1, i1 noundef zeroext %2, i64 noundef 0), !inline_history !50
  br label %_mi_heap_malloc_zero_ex.exit

bb.d:                                             ; preds = %bb.b
  %i.k = getelementptr i8, ptr %i.f, i64 24       ; 2 uses
  %i.l = load i32, ptr %i.k, align 8, !tbaa !18
  %i.m = add i32 %i.l, 1
  store i32 %i.m, ptr %i.k, align 8, !tbaa !18
  %i.n = load atomic i64, ptr %i.h monotonic, align 8
  %i.o = inttoptr i64 %i.n to ptr
  store ptr %i.o, ptr %i.g, align 8, !tbaa !11
  br i1 %2, label %bb.e, label %_mi_heap_malloc_zero_ex.exit, !prof !17

bb.e:                                             ; preds = %bb.d
  %i.p = getelementptr i8, ptr %i.f, i64 15
  %i.q = load i8, ptr %i.p, align 1
  %i.r = and i8 %i.q, 1
  %.not.i.i.i = icmp eq i8 %i.r, 0
  br i1 %.not.i.i.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  store atomic i64 0, ptr %i.h seq_cst, align 8, !tbaa !19
  br label %_mi_heap_malloc_zero_ex.exit

bb.g:                                             ; preds = %bb.e
  call void @llvm.assume(i1 true) [ "align"(ptr %i.h, i64 8) ]
  %i.s = getelementptr i8, ptr %i.f, i64 28
  %i.t = load i32, ptr %i.s, align 4, !tbaa !21
  %i.u = zext i32 %i.t to i64
  tail call void @llvm.memset.p0.i64(ptr nonnull align 8 %i.h, i8 0, i64 %i.u, i1 false)
  br label %_mi_heap_malloc_zero_ex.exit

bb.h:                                             ; preds = %bb.a
  %i.v = tail call noalias ptr @_mi_malloc_generic(ptr noundef %0, i64 noundef %1, i1 noundef zeroext %2, i64 noundef 0)
  br label %_mi_heap_malloc_zero_ex.exit

_mi_heap_malloc_zero_ex.exit:                     ; preds = %bb.c, %bb.d, %bb.f, %bb.g, %bb.h
  %.0.i = phi ptr [ %i.v, %bb.h ], [ %i.j, %bb.c ], [ %i.h, %bb.f ], [ %i.h, %bb.g ], [ %i.h, %bb.d ]
  ret ptr %.0.i
}

; Function Attrs: inlinehint nounwind uwtable
define hidden noalias ptr @mi_heap_malloc(ptr noundef %0, i64 noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = icmp ult i64 %1, 1025
  br i1 %i.a, label %bb.b, label %bb.e, !prof !55

bb.b:                                             ; preds = %bb.a
  %i.b = add nuw nsw i64 %1, 7
  %i.c = lshr i64 %i.b, 3
  %i.d = getelementptr i8, ptr %0, i64 8
  %i.e = getelementptr [8 x i8], ptr %i.d, i64 %i.c
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !53   ; 2 uses
  %i.g = getelementptr i8, ptr %i.f, i64 16       ; 2 uses
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !11   ; 3 uses
  %i.i = icmp eq ptr %i.h, null
  br i1 %i.i, label %bb.c, label %bb.d, !prof !17

bb.c:                                             ; preds = %bb.b
  %i.j = tail call noalias ptr @_mi_malloc_generic(ptr noundef nonnull %0, i64 noundef %1, i1 noundef zeroext false, i64 noundef 0), !inline_history !50
  br label %_mi_heap_malloc_zero.exit

bb.d:                                             ; preds = %bb.b
  %i.k = getelementptr i8, ptr %i.f, i64 24       ; 2 uses
  %i.l = load i32, ptr %i.k, align 8, !tbaa !18
  %i.m = add i32 %i.l, 1
  store i32 %i.m, ptr %i.k, align 8, !tbaa !18
  %i.n = load atomic i64, ptr %i.h monotonic, align 8
  %i.o = inttoptr i64 %i.n to ptr
  store ptr %i.o, ptr %i.g, align 8, !tbaa !11
  br label %_mi_heap_malloc_zero.exit

bb.e:                                             ; preds = %bb.a
  %i.p = tail call noalias ptr @_mi_malloc_generic(ptr noundef %0, i64 noundef %1, i1 noundef zeroext false, i64 noundef 0)
  br label %_mi_heap_malloc_zero.exit

_mi_heap_malloc_zero.exit:                        ; preds = %bb.c, %bb.d, %bb.e
  %.0.i.i = phi ptr [ %i.p, %bb.e ], [ %i.j, %bb.c ], [ %i.h, %bb.d ]
  ret ptr %.0.i.i
}

; Function Attrs: inlinehint nounwind uwtable
define hidden noalias ptr @mi_malloc(i64 noundef %0) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @_mi_heap_default)
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !54   ; 3 uses
  %i.c = icmp ult i64 %0, 1025
  br i1 %i.c, label %bb.b, label %bb.e, !prof !55

bb.b:                                             ; preds = %bb.a
  %i.d = add nuw nsw i64 %0, 7
  %i.e = lshr i64 %i.d, 3
  %i.f = getelementptr i8, ptr %i.b, i64 8
  %i.g = getelementptr [8 x i8], ptr %i.f, i64 %i.e
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !53   ; 2 uses
  %i.i = getelementptr i8, ptr %i.h, i64 16       ; 2 uses
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !11   ; 3 uses
  %i.k = icmp eq ptr %i.j, null
  br i1 %i.k, label %bb.c, label %bb.d, !prof !17

bb.c:                                             ; preds = %bb.b
  %i.l = tail call noalias ptr @_mi_malloc_generic(ptr noundef nonnull %i.b, i64 noundef %0, i1 noundef zeroext false, i64 noundef 0), !inline_history !50
  br label %mi_heap_malloc.exit

bb.d:                                             ; preds = %bb.b
  %i.m = getelementptr i8, ptr %i.h, i64 24       ; 2 uses
  %i.n = load i32, ptr %i.m, align 8, !tbaa !18
  %i.o = add i32 %i.n, 1
  store i32 %i.o, ptr %i.m, align 8, !tbaa !18
  %i.p = load atomic i64, ptr %i.j monotonic, align 8
  %i.q = inttoptr i64 %i.p to ptr
  store ptr %i.q, ptr %i.i, align 8, !tbaa !11
  br label %mi_heap_malloc.exit

bb.e:                                             ; preds = %bb.a
  %i.r = tail call noalias ptr @_mi_malloc_generic(ptr noundef %i.b, i64 noundef %0, i1 noundef zeroext false, i64 noundef 0)
  br label %mi_heap_malloc.exit

mi_heap_malloc.exit:                              ; preds = %bb.c, %bb.d, %bb.e
  %.0.i.i.i = phi ptr [ %i.r, %bb.e ], [ %i.l, %bb.c ], [ %i.j, %bb.d ]
  ret ptr %.0.i.i.i
}

; Function Attrs: nounwind uwtable
define hidden noalias ptr @mi_zalloc_small(i64 noundef %0) local_unnamed_addr #2 {
bb.a:
  %i.a = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @_mi_heap_default)
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !54   ; 2 uses
  %i.c = add i64 %0, 7
  %i.d = lshr i64 %i.c, 3
  %i.e = getelementptr i8, ptr %i.b, i64 8
  %i.f = getelementptr [8 x i8], ptr %i.e, i64 %i.d
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !53   ; 4 uses
  %i.h = getelementptr i8, ptr %i.g, i64 16       ; 2 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !11   ; 7 uses
  %i.j = icmp eq ptr %i.i, null
  br i1 %i.j, label %bb.b, label %bb.c, !prof !17

bb.b:                                             ; preds = %bb.a
  %i.k = tail call noalias ptr @_mi_malloc_generic(ptr noundef nonnull %i.b, i64 noundef %0, i1 noundef zeroext true, i64 noundef 0), !inline_history !50
  br label %mi_heap_malloc_small_zero.exit

bb.c:                                             ; preds = %bb.a
  %i.l = getelementptr i8, ptr %i.g, i64 24       ; 2 uses
  %i.m = load i32, ptr %i.l, align 8, !tbaa !18
  %i.n = add i32 %i.m, 1
  store i32 %i.n, ptr %i.l, align 8, !tbaa !18
  %i.o = load atomic i64, ptr %i.i monotonic, align 8
  %i.p = inttoptr i64 %i.o to ptr
  store ptr %i.p, ptr %i.h, align 8, !tbaa !11
  %i.q = getelementptr i8, ptr %i.g, i64 15
  %i.r = load i8, ptr %i.q, align 1
  %i.s = and i8 %i.r, 1
  %.not.i.i = icmp eq i8 %i.s, 0
  br i1 %.not.i.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  store atomic i64 0, ptr %i.i seq_cst, align 8, !tbaa !19
  br label %mi_heap_malloc_small_zero.exit

bb.e:                                             ; preds = %bb.c
  call void @llvm.assume(i1 true) [ "align"(ptr %i.i, i64 8) ]
  %i.t = getelementptr i8, ptr %i.g, i64 28
  %i.u = load i32, ptr %i.t, align 4, !tbaa !21
  %i.v = zext i32 %i.u to i64
  tail call void @llvm.memset.p0.i64(ptr nonnull align 8 %i.i, i8 0, i64 %i.v, i1 false)
  br label %mi_heap_malloc_small_zero.exit

mi_heap_malloc_small_zero.exit:                   ; preds = %bb.b, %bb.d, %bb.e
  %.0.i.i = phi ptr [ %i.k, %bb.b ], [ %i.i, %bb.d ], [ %i.i, %bb.e ]
  ret ptr %.0.i.i
}

; Function Attrs: inlinehint nounwind uwtable
define hidden noalias ptr @mi_heap_zalloc(ptr noundef %0, i64 noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = icmp ult i64 %1, 1025
  br i1 %i.a, label %bb.b, label %bb.g, !prof !55

bb.b:                                             ; preds = %bb.a
  %i.b = add nuw nsw i64 %1, 7
  %i.c = lshr i64 %i.b, 3
  %i.d = getelementptr i8, ptr %0, i64 8
  %i.e = getelementptr [8 x i8], ptr %i.d, i64 %i.c
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !53   ; 4 uses
  %i.g = getelementptr i8, ptr %i.f, i64 16       ; 2 uses
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !11   ; 7 uses
  %i.i = icmp eq ptr %i.h, null
  br i1 %i.i, label %bb.c, label %bb.d, !prof !17

bb.c:                                             ; preds = %bb.b
  %i.j = tail call noalias ptr @_mi_malloc_generic(ptr noundef nonnull %0, i64 noundef %1, i1 noundef zeroext true, i64 noundef 0), !inline_history !50
  br label %_mi_heap_malloc_zero.exit

bb.d:                                             ; preds = %bb.b
  %i.k = getelementptr i8, ptr %i.f, i64 24       ; 2 uses
  %i.l = load i32, ptr %i.k, align 8, !tbaa !18
  %i.m = add i32 %i.l, 1
  store i32 %i.m, ptr %i.k, align 8, !tbaa !18
  %i.n = load atomic i64, ptr %i.h monotonic, align 8
  %i.o = inttoptr i64 %i.n to ptr
  store ptr %i.o, ptr %i.g, align 8, !tbaa !11
  %i.p = getelementptr i8, ptr %i.f, i64 15
  %i.q = load i8, ptr %i.p, align 1
  %i.r = and i8 %i.q, 1
  %.not.i.i.i.i = icmp eq i8 %i.r, 0
  br i1 %.not.i.i.i.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  store atomic i64 0, ptr %i.h seq_cst, align 8, !tbaa !19
  br label %_mi_heap_malloc_zero.exit

bb.f:                                             ; preds = %bb.d
  call void @llvm.assume(i1 true) [ "align"(ptr %i.h, i64 8) ]
  %i.s = getelementptr i8, ptr %i.f, i64 28
  %i.t = load i32, ptr %i.s, align 4, !tbaa !21
  %i.u = zext i32 %i.t to i64
  tail call void @llvm.memset.p0.i64(ptr nonnull align 8 %i.h, i8 0, i64 %i.u, i1 false)
  br label %_mi_heap_malloc_zero.exit

bb.g:                                             ; preds = %bb.a
  %i.v = tail call noalias ptr @_mi_malloc_generic(ptr noundef %0, i64 noundef %1, i1 noundef zeroext true, i64 noundef 0)
  br label %_mi_heap_malloc_zero.exit

_mi_heap_malloc_zero.exit:                        ; preds = %bb.c, %bb.e, %bb.f, %bb.g
  %.0.i.i = phi ptr [ %i.v, %bb.g ], [ %i.j, %bb.c ], [ %i.h, %bb.e ], [ %i.h, %bb.f ]
  ret ptr %.0.i.i
}

; Function Attrs: nounwind uwtable
define hidden noalias ptr @mi_zalloc(i64 noundef %0) local_unnamed_addr #2 {
bb.a:
  %i.a = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @_mi_heap_default)
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !54   ; 3 uses
  %i.c = icmp ult i64 %0, 1025
  br i1 %i.c, label %bb.b, label %bb.g, !prof !55

bb.b:                                             ; preds = %bb.a
  %i.d = add nuw nsw i64 %0, 7
  %i.e = lshr i64 %i.d, 3
  %i.f = getelementptr i8, ptr %i.b, i64 8
  %i.g = getelementptr [8 x i8], ptr %i.f, i64 %i.e
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !53   ; 4 uses
  %i.i = getelementptr i8, ptr %i.h, i64 16       ; 2 uses
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !11   ; 7 uses
  %i.k = icmp eq ptr %i.j, null
  br i1 %i.k, label %bb.c, label %bb.d, !prof !17

bb.c:                                             ; preds = %bb.b
  %i.l = tail call noalias ptr @_mi_malloc_generic(ptr noundef nonnull %i.b, i64 noundef %0, i1 noundef zeroext true, i64 noundef 0), !inline_history !50
  br label %mi_heap_zalloc.exit

bb.d:                                             ; preds = %bb.b
  %i.m = getelementptr i8, ptr %i.h, i64 24       ; 2 uses
  %i.n = load i32, ptr %i.m, align 8, !tbaa !18
  %i.o = add i32 %i.n, 1
  store i32 %i.o, ptr %i.m, align 8, !tbaa !18
  %i.p = load atomic i64, ptr %i.j monotonic, align 8
  %i.q = inttoptr i64 %i.p to ptr
  store ptr %i.q, ptr %i.i, align 8, !tbaa !11
  %i.r = getelementptr i8, ptr %i.h, i64 15
  %i.s = load i8, ptr %i.r, align 1
  %i.t = and i8 %i.s, 1
  %.not.i.i.i.i.i = icmp eq i8 %i.t, 0
  br i1 %.not.i.i.i.i.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  store atomic i64 0, ptr %i.j seq_cst, align 8, !tbaa !19
  br label %mi_heap_zalloc.exit

bb.f:                                             ; preds = %bb.d
  call void @llvm.assume(i1 true) [ "align"(ptr %i.j, i64 8) ]
  %i.u = getelementptr i8, ptr %i.h, i64 28
  %i.v = load i32, ptr %i.u, align 4, !tbaa !21
  %i.w = zext i32 %i.v to i64
  tail call void @llvm.memset.p0.i64(ptr nonnull align 8 %i.j, i8 0, i64 %i.w, i1 false)
  br label %mi_heap_zalloc.exit

bb.g:                                             ; preds = %bb.a
  %i.x = tail call noalias ptr @_mi_malloc_generic(ptr noundef %i.b, i64 noundef %0, i1 noundef zeroext true, i64 noundef 0)
  br label %mi_heap_zalloc.exit

mi_heap_zalloc.exit:                              ; preds = %bb.c, %bb.e, %bb.f, %bb.g
  %.0.i.i.i = phi ptr [ %i.x, %bb.g ], [ %i.l, %bb.c ], [ %i.j, %bb.e ], [ %i.j, %bb.f ]
  ret ptr %.0.i.i.i
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define hidden void @_mi_padding_shrink(ptr nofree noundef readnone captures(none) %0, ptr nofree noundef readnone captures(none) %1, i64 noundef %2) local_unnamed_addr #3 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define hidden ptr @_mi_page_ptr_unalign(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #4 {
bb.a:
  %i.a = getelementptr i8, ptr %1, i64 28
  %i.b = load i32, ptr %i.a, align 4, !tbaa !21   ; 5 uses
  %i.c = zext i32 %i.b to i64                     ; 4 uses
  %i.d = load i32, ptr %1, align 8, !tbaa !52
  %i.e = zext i32 %i.d to i64
  %i.f = icmp ugt i32 %i.b, 7
  br i1 %i.f, label %bb.b, label %_mi_page_start.exit.thread

bb.b:                                             ; preds = %bb.a
  %i.g = icmp ult i32 %i.b, 65
  br i1 %i.g, label %bb.c, label %_mi_page_start.exit

bb.c:                                             ; preds = %bb.b
  %i.h = mul nuw nsw i64 %i.c, 3
  br label %_mi_page_start.exit.thread

_mi_page_start.exit.thread:                       ; preds = %bb.a, %bb.c
  %.0.i.i.i.ph = phi i64 [ 0, %bb.a ], [ %i.h, %bb.c ]
  %i.i = ptrtoint ptr %1 to i64
  %i.j = getelementptr i8, ptr %0, i64 264
  %i.k = ptrtoint ptr %i.j to i64
  %i.l = sub i64 %i.i, %i.k
  %i.m = sdiv exact i64 %i.l, 80
  %i.n = shl i64 %i.m, 16
  %i.o = getelementptr i8, ptr %0, i64 %i.n
  %i.p = getelementptr i8, ptr %i.o, i64 %.0.i.i.i.ph
  %i.q = ptrtoint ptr %2 to i64                   ; 2 uses
  %i.r = ptrtoint ptr %i.p to i64
  %i.s = sub i64 %i.q, %i.r
  br label %mi_page_block_size.exit

_mi_page_start.exit:                              ; preds = %bb.b
  %i.t = icmp ult i32 %i.b, 513
  %spec.select.i.i.i = select i1 %i.t, i64 %i.c, i64 0
  %i.u = ptrtoint ptr %1 to i64
  %i.v = getelementptr i8, ptr %0, i64 264
  %i.w = ptrtoint ptr %i.v to i64
  %i.x = sub i64 %i.u, %i.w
  %i.y = sdiv exact i64 %i.x, 80
  %i.z = shl i64 %i.y, 16
  %i.aa = getelementptr i8, ptr %0, i64 %i.z
  %i.ab = getelementptr i8, ptr %i.aa, i64 %spec.select.i.i.i
  %i.ac = ptrtoint ptr %2 to i64                  ; 3 uses
  %i.ad = ptrtoint ptr %i.ab to i64
  %i.ae = sub i64 %i.ac, %i.ad                    ; 2 uses
  %i.af = icmp sgt i32 %i.b, -1
  br i1 %i.af, label %mi_page_block_size.exit, label %_mi_segment_page_start.exit.i, !prof !56

_mi_segment_page_start.exit.i:                    ; preds = %_mi_page_start.exit
  %i.ag = shl nuw nsw i64 %i.e, 16
  br label %mi_page_block_size.exit

mi_page_block_size.exit:                          ; preds = %_mi_page_start.exit, %_mi_page_start.exit.thread, %_mi_segment_page_start.exit.i
  %i.ah = phi i64 [ %i.ae, %_mi_segment_page_start.exit.i ], [ %i.s, %_mi_page_start.exit.thread ], [ %i.ae, %_mi_page_start.exit ]
  %i.ai = phi i64 [ %i.ac, %_mi_segment_page_start.exit.i ], [ %i.q, %_mi_page_start.exit.thread ], [ %i.ac, %_mi_page_start.exit ]
  %.0.i = phi i64 [ %i.ag, %_mi_segment_page_start.exit.i ], [ %i.c, %_mi_page_start.exit.thread ], [ %i.c, %_mi_page_start.exit ]
  %i.aj = urem i64 %i.ah, %.0.i
  %i.ak = sub i64 %i.ai, %i.aj
  %i.al = inttoptr i64 %i.ak to ptr
  ret ptr %i.al
}

; Function Attrs: noinline nounwind uwtable
define hidden void @_mi_free_generic(ptr noundef %0, ptr noundef %1, i1 noundef zeroext %2, ptr noundef %3) local_unnamed_addr #5 {
bb.a:
  %i.a = getelementptr i8, ptr %1, i64 14         ; 2 uses
  %.val = load i8, ptr %i.a, align 2
  %i.b = and i8 %.val, 2
  %.not = icmp eq i8 %i.b, 0
  br i1 %.not, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr i8, ptr %1, i64 28
  %i.d = load i32, ptr %i.c, align 4, !tbaa !21   ; 5 uses
  %i.e = zext i32 %i.d to i64                     ; 4 uses
  %i.f = load i32, ptr %1, align 8, !tbaa !52
  %i.g = zext i32 %i.f to i64
  %i.h = icmp ugt i32 %i.d, 7
  br i1 %i.h, label %bb.c, label %_mi_page_start.exit.thread.i

bb.c:                                             ; preds = %bb.b
  %i.i = icmp ult i32 %i.d, 65
  br i1 %i.i, label %bb.d, label %_mi_page_start.exit.i

bb.d:                                             ; preds = %bb.c
  %i.j = mul nuw nsw i64 %i.e, 3
  br label %_mi_page_start.exit.thread.i

_mi_page_start.exit.thread.i:                     ; preds = %bb.d, %bb.b
  %.0.i.i.i.ph.i = phi i64 [ 0, %bb.b ], [ %i.j, %bb.d ]
  %i.k = ptrtoint ptr %1 to i64
  %i.l = getelementptr i8, ptr %0, i64 264
  %i.m = ptrtoint ptr %i.l to i64
  %i.n = sub i64 %i.k, %i.m
  %i.o = sdiv exact i64 %i.n, 80
  %i.p = shl i64 %i.o, 16
  %i.q = getelementptr i8, ptr %0, i64 %i.p
  %i.r = getelementptr i8, ptr %i.q, i64 %.0.i.i.i.ph.i
  %i.s = ptrtoint ptr %3 to i64                   ; 2 uses
  %i.t = ptrtoint ptr %i.r to i64
  %i.u = sub i64 %i.s, %i.t
  br label %_mi_page_ptr_unalign.exit

_mi_page_start.exit.i:                            ; preds = %bb.c
  %i.v = icmp ult i32 %i.d, 513
  %spec.select.i.i.i.i = select i1 %i.v, i64 %i.e, i64 0
  %i.w = ptrtoint ptr %1 to i64
  %i.x = getelementptr i8, ptr %0, i64 264
  %i.y = ptrtoint ptr %i.x to i64
  %i.z = sub i64 %i.w, %i.y
  %i.aa = sdiv exact i64 %i.z, 80
  %i.ab = shl i64 %i.aa, 16
  %i.ac = getelementptr i8, ptr %0, i64 %i.ab
  %i.ad = getelementptr i8, ptr %i.ac, i64 %spec.select.i.i.i.i
  %i.ae = ptrtoint ptr %3 to i64                  ; 3 uses
  %i.af = ptrtoint ptr %i.ad to i64
  %i.ag = sub i64 %i.ae, %i.af                    ; 2 uses
  %i.ah = icmp sgt i32 %i.d, -1
  br i1 %i.ah, label %_mi_page_ptr_unalign.exit, label %_mi_segment_page_start.exit.i.i, !prof !56

_mi_segment_page_start.exit.i.i:                  ; preds = %_mi_page_start.exit.i
  %i.ai = shl nuw nsw i64 %i.g, 16
  br label %_mi_page_ptr_unalign.exit

_mi_page_ptr_unalign.exit:                        ; preds = %_mi_page_start.exit.thread.i, %_mi_page_start.exit.i, %_mi_segment_page_start.exit.i.i
  %i.aj = phi i64 [ %i.ag, %_mi_segment_page_start.exit.i.i ], [ %i.u, %_mi_page_start.exit.thread.i ], [ %i.ag, %_mi_page_start.exit.i ]
  %i.ak = phi i64 [ %i.ae, %_mi_segment_page_start.exit.i.i ], [ %i.s, %_mi_page_start.exit.thread.i ], [ %i.ae, %_mi_page_start.exit.i ]
  %.0.i.i = phi i64 [ %i.ai, %_mi_segment_page_start.exit.i.i ], [ %i.e, %_mi_page_start.exit.thread.i ], [ %i.e, %_mi_page_start.exit.i ]
  %i.al = urem i64 %i.aj, %.0.i.i
  %i.am = sub i64 %i.ak, %i.al
  %i.an = inttoptr i64 %i.am to ptr
  br label %bb.e

bb.e:                                             ; preds = %bb.a, %_mi_page_ptr_unalign.exit
  %i.ao = phi ptr [ %i.an, %_mi_page_ptr_unalign.exit ], [ %3, %bb.a ] ; 3 uses
  br i1 %2, label %bb.f, label %bb.j, !prof !55

bb.f:                                             ; preds = %bb.e
  %i.ap = getelementptr i8, ptr %1, i64 32        ; 2 uses
  %i.aq = load ptr, ptr %i.ap, align 8, !tbaa !57
  %i.ar = ptrtoint ptr %i.aq to i64
  store atomic i64 %i.ar, ptr %i.ao monotonic, align 8
  store ptr %i.ao, ptr %i.ap, align 8, !tbaa !57
  %i.as = getelementptr i8, ptr %1, i64 24        ; 2 uses
  %i.at = load i32, ptr %i.as, align 8, !tbaa !18
  %i.au = add i32 %i.at, -1                       ; 2 uses
  store i32 %i.au, ptr %i.as, align 8, !tbaa !18
  %i.av = icmp eq i32 %i.au, 0
  br i1 %i.av, label %bb.g, label %bb.h, !prof !17

bb.g:                                             ; preds = %bb.f
  tail call void @_mi_page_retire(ptr noundef nonnull %1)
  br label %_mi_free_block.exit

bb.h:                                             ; preds = %bb.f
  %.val16.i = load i8, ptr %i.a, align 2
  %i.aw = trunc i8 %.val16.i to i1
  br i1 %i.aw, label %bb.i, label %_mi_free_block.exit, !prof !17

bb.i:                                             ; preds = %bb.h
  tail call void @_mi_page_unfull(ptr noundef nonnull %1)
  br label %_mi_free_block.exit

bb.j:                                             ; preds = %bb.e
  tail call fastcc void @_mi_free_block_mt(ptr noundef nonnull %1, ptr noundef %i.ao)
  br label %_mi_free_block.exit

_mi_free_block.exit:                              ; preds = %bb.g, %bb.h, %bb.i, %bb.j
  ret void
}

; Function Attrs: nounwind uwtable
define hidden void @mi_free(ptr noundef %0) local_unnamed_addr #2 {
bb.a:
  %i.a = icmp eq ptr %0, null
  br i1 %i.a, label %bb.h, label %bb.b, !prof !17

bb.b:                                             ; preds = %bb.a
  %i.b = ptrtoint ptr %0 to i64                   ; 2 uses
end_hunk_0
begin_hunk_1_@mi_free_size:bb.a
  store atomic i64 %i.y, ptr %0 monotonic, align 8
  store ptr %0, ptr %i.w, align 8, !tbaa !57
  %i.z = getelementptr i8, ptr %i.s, i64 24       ; 2 uses
  %i.aa = load i32, ptr %i.z, align 8, !tbaa !18
  %i.ab = add i32 %i.aa, -1                       ; 2 uses
  store i32 %i.ab, ptr %i.z, align 8, !tbaa !18
  %i.ac = icmp eq i32 %i.ab, 0
  br i1 %i.ac, label %bb.e, label %mi_free.exit, !prof !17

bb.e:                                             ; preds = %bb.d
  tail call void @_mi_page_retire(ptr noundef %i.s)
  br label %mi_free.exit

bb.f:                                             ; preds = %bb.c
  tail call void @_mi_free_generic(ptr noundef nonnull %i.e, ptr noundef %i.s, i1 noundef zeroext true, ptr noundef nonnull %0)
  br label %mi_free.exit

bb.g:                                             ; preds = %bb.b
  tail call void @_mi_free_generic(ptr noundef nonnull %i.e, ptr noundef %i.s, i1 noundef zeroext false, ptr noundef nonnull %0)
  br label %mi_free.exit

mi_free.exit:                                     ; preds = %bb.a, %bb.d, %bb.e, %bb.f, %bb.g
  ret void
}

; Function Attrs: nounwind uwtable
define hidden void @mi_free_size_aligned(ptr noundef %0, i64 noundef %1, i64 noundef %2) local_unnamed_addr #2 {
bb.a:
  %i.a = icmp eq ptr %0, null
  br i1 %i.a, label %mi_free_size.exit, label %bb.b, !prof !17

bb.b:                                             ; preds = %bb.a
  %i.b = ptrtoint ptr %0 to i64                   ; 2 uses
  %i.c = add i64 %i.b, -1
  %i.d = and i64 %i.c, -33554432                  ; 2 uses
  %i.e = inttoptr i64 %i.d to ptr                 ; 4 uses
  %i.f = tail call ptr asm "movq %fs:$1, $0", "=r,*m,~{dirflag},~{fpsr},~{flags}"(ptr elementtype(ptr) null) #60, !srcloc !58
  %i.g = ptrtoint ptr %i.f to i64
  %i.h = getelementptr i8, ptr %i.e, i64 256
  %i.i = load atomic i64, ptr %i.h monotonic, align 256
  %i.j = icmp eq i64 %i.i, %i.g
  %i.k = sub i64 %i.b, %i.d
  %i.l = lshr i64 %i.k, 16
  %i.m = getelementptr i8, ptr %i.e, i64 264
  %i.n = getelementptr [80 x i8], ptr %i.m, i64 %i.l ; 2 uses
  %i.o = getelementptr i8, ptr %i.n, i64 4
  %i.p = load i32, ptr %i.o, align 4, !tbaa !59
  %i.q = zext i32 %i.p to i64
  %i.r = sub nsw i64 0, %i.q
  %i.s = getelementptr i8, ptr %i.n, i64 %i.r     ; 6 uses
  br i1 %i.j, label %bb.c, label %bb.g, !prof !55

bb.c:                                             ; preds = %bb.b
  %i.t = getelementptr i8, ptr %i.s, i64 14
  %i.u = load i8, ptr %i.t, align 2, !tbaa !60
  %i.v = icmp eq i8 %i.u, 0
  br i1 %i.v, label %bb.d, label %bb.f, !prof !55

bb.d:                                             ; preds = %bb.c
  %i.w = getelementptr i8, ptr %i.s, i64 32       ; 2 uses
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !57
  %i.y = ptrtoint ptr %i.x to i64
  store atomic i64 %i.y, ptr %0 monotonic, align 8
  store ptr %0, ptr %i.w, align 8, !tbaa !57
  %i.z = getelementptr i8, ptr %i.s, i64 24       ; 2 uses
  %i.aa = load i32, ptr %i.z, align 8, !tbaa !18
  %i.ab = add i32 %i.aa, -1                       ; 2 uses
  store i32 %i.ab, ptr %i.z, align 8, !tbaa !18
  %i.ac = icmp eq i32 %i.ab, 0
  br i1 %i.ac, label %bb.e, label %mi_free_size.exit, !prof !17

bb.e:                                             ; preds = %bb.d
  tail call void @_mi_page_retire(ptr noundef %i.s)
  br label %mi_free_size.exit

bb.f:                                             ; preds = %bb.c
  tail call void @_mi_free_generic(ptr noundef nonnull %i.e, ptr noundef %i.s, i1 noundef zeroext true, ptr noundef nonnull %0)
  br label %mi_free_size.exit

bb.g:                                             ; preds = %bb.b
  tail call void @_mi_free_generic(ptr noundef nonnull %i.e, ptr noundef %i.s, i1 noundef zeroext false, ptr noundef nonnull %0)
  br label %mi_free_size.exit

mi_free_size.exit:                                ; preds = %bb.a, %bb.d, %bb.e, %bb.f, %bb.g
  ret void
}

; Function Attrs: nounwind uwtable
define hidden void @mi_free_aligned(ptr noundef %0, i64 noundef %1) local_unnamed_addr #2 {
bb.a:
  %i.a = icmp eq ptr %0, null
  br i1 %i.a, label %mi_free.exit, label %bb.b, !prof !17

bb.b:                                             ; preds = %bb.a
  %i.b = ptrtoint ptr %0 to i64                   ; 2 uses
  %i.c = add i64 %i.b, -1
  %i.d = and i64 %i.c, -33554432                  ; 2 uses
  %i.e = inttoptr i64 %i.d to ptr                 ; 4 uses
  %i.f = tail call ptr asm "movq %fs:$1, $0", "=r,*m,~{dirflag},~{fpsr},~{flags}"(ptr elementtype(ptr) null) #60, !srcloc !58
  %i.g = ptrtoint ptr %i.f to i64
  %i.h = getelementptr i8, ptr %i.e, i64 256
  %i.i = load atomic i64, ptr %i.h monotonic, align 256
  %i.j = icmp eq i64 %i.i, %i.g
  %i.k = sub i64 %i.b, %i.d
  %i.l = lshr i64 %i.k, 16
  %i.m = getelementptr i8, ptr %i.e, i64 264
  %i.n = getelementptr [80 x i8], ptr %i.m, i64 %i.l ; 2 uses
  %i.o = getelementptr i8, ptr %i.n, i64 4
  %i.p = load i32, ptr %i.o, align 4, !tbaa !59
  %i.q = zext i32 %i.p to i64
  %i.r = sub nsw i64 0, %i.q
  %i.s = getelementptr i8, ptr %i.n, i64 %i.r     ; 6 uses
  br i1 %i.j, label %bb.c, label %bb.g, !prof !55

bb.c:                                             ; preds = %bb.b
  %i.t = getelementptr i8, ptr %i.s, i64 14
  %i.u = load i8, ptr %i.t, align 2, !tbaa !60
  %i.v = icmp eq i8 %i.u, 0
  br i1 %i.v, label %bb.d, label %bb.f, !prof !55

bb.d:                                             ; preds = %bb.c
  %i.w = getelementptr i8, ptr %i.s, i64 32       ; 2 uses
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !57
  %i.y = ptrtoint ptr %i.x to i64
  store atomic i64 %i.y, ptr %0 monotonic, align 8
  store ptr %0, ptr %i.w, align 8, !tbaa !57
  %i.z = getelementptr i8, ptr %i.s, i64 24       ; 2 uses
  %i.aa = load i32, ptr %i.z, align 8, !tbaa !18
  %i.ab = add i32 %i.aa, -1                       ; 2 uses
  store i32 %i.ab, ptr %i.z, align 8, !tbaa !18
  %i.ac = icmp eq i32 %i.ab, 0
  br i1 %i.ac, label %bb.e, label %mi_free.exit, !prof !17

bb.e:                                             ; preds = %bb.d
  tail call void @_mi_page_retire(ptr noundef %i.s)
  br label %mi_free.exit

bb.f:                                             ; preds = %bb.c
  tail call void @_mi_free_generic(ptr noundef nonnull %i.e, ptr noundef %i.s, i1 noundef zeroext true, ptr noundef nonnull %0)
  br label %mi_free.exit

bb.g:                                             ; preds = %bb.b
  tail call void @_mi_free_generic(ptr noundef nonnull %i.e, ptr noundef %i.s, i1 noundef zeroext false, ptr noundef nonnull %0)
  br label %mi_free.exit

mi_free.exit:                                     ; preds = %bb.a, %bb.d, %bb.e, %bb.f, %bb.g
  ret void
}

; Function Attrs: inlinehint nounwind uwtable
define hidden noalias ptr @mi_heap_calloc(ptr noundef %0, i64 noundef %1, i64 noundef %2) local_unnamed_addr #0 {
bb.a:
  %.not = icmp eq i64 %1, 1
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = tail call { i64, i1 } @llvm.umul.with.overflow.i64(i64 range(i64 2, 1) %1, i64 %2) ; 2 uses
  %i.b = extractvalue { i64, i1 } %i.a, 1
  %i.c = extractvalue { i64, i1 } %i.a, 0
  br i1 %i.b, label %mi_count_size_overflow.exit, label %bb.c, !prof !17

bb.c:                                             ; preds = %bb.b, %bb.a
  %storemerge.i.ph = phi i64 [ %2, %bb.a ], [ %i.c, %bb.b ] ; 4 uses
  %i.d = icmp ult i64 %storemerge.i.ph, 1025
  br i1 %i.d, label %bb.d, label %bb.i, !prof !55

bb.d:                                             ; preds = %bb.c
  %i.e = add nuw nsw i64 %storemerge.i.ph, 7
  %i.f = lshr i64 %i.e, 3
  %i.g = getelementptr i8, ptr %0, i64 8
  %i.h = getelementptr [8 x i8], ptr %i.g, i64 %i.f
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !53   ; 4 uses
  %i.j = getelementptr i8, ptr %i.i, i64 16       ; 2 uses
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !11   ; 7 uses
  %i.l = icmp eq ptr %i.k, null
  br i1 %i.l, label %bb.e, label %bb.f, !prof !17

bb.e:                                             ; preds = %bb.d
  %i.m = tail call noalias ptr @_mi_malloc_generic(ptr noundef nonnull %0, i64 noundef %storemerge.i.ph, i1 noundef zeroext true, i64 noundef 0), !inline_history !50
  br label %mi_count_size_overflow.exit

bb.f:                                             ; preds = %bb.d
  %i.n = getelementptr i8, ptr %i.i, i64 24       ; 2 uses
  %i.o = load i32, ptr %i.n, align 8, !tbaa !18
  %i.p = add i32 %i.o, 1
  store i32 %i.p, ptr %i.n, align 8, !tbaa !18
  %i.q = load atomic i64, ptr %i.k monotonic, align 8
  %i.r = inttoptr i64 %i.q to ptr
  store ptr %i.r, ptr %i.j, align 8, !tbaa !11
  %i.s = getelementptr i8, ptr %i.i, i64 15
  %i.t = load i8, ptr %i.s, align 1
  %i.u = and i8 %i.t, 1
  %.not.i.i.i.i.i = icmp eq i8 %i.u, 0
  br i1 %.not.i.i.i.i.i, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  store atomic i64 0, ptr %i.k seq_cst, align 8, !tbaa !19
  br label %mi_count_size_overflow.exit

bb.h:                                             ; preds = %bb.f
  call void @llvm.assume(i1 true) [ "align"(ptr %i.k, i64 8) ]
  %i.v = getelementptr i8, ptr %i.i, i64 28
  %i.w = load i32, ptr %i.v, align 4, !tbaa !21
  %i.x = zext i32 %i.w to i64
  tail call void @llvm.memset.p0.i64(ptr nonnull align 8 %i.k, i8 0, i64 %i.x, i1 false)
  br label %mi_count_size_overflow.exit

bb.i:                                             ; preds = %bb.c
  %i.y = tail call noalias ptr @_mi_malloc_generic(ptr noundef %0, i64 noundef %storemerge.i.ph, i1 noundef zeroext true, i64 noundef 0)
  br label %mi_count_size_overflow.exit

mi_count_size_overflow.exit:                      ; preds = %bb.i, %bb.h, %bb.g, %bb.e, %bb.b
  %.0 = phi ptr [ null, %bb.b ], [ %i.y, %bb.i ], [ %i.m, %bb.e ], [ %i.k, %bb.g ], [ %i.k, %bb.h ]
  ret ptr %.0
}

; Function Attrs: nounwind uwtable
define hidden noalias ptr @mi_calloc(i64 noundef %0, i64 noundef %1) local_unnamed_addr #2 {
bb.a:
  %i.a = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @_mi_heap_default)
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !54   ; 3 uses
  %.not.i = icmp eq i64 %0, 1
  br i1 %.not.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = tail call { i64, i1 } @llvm.umul.with.overflow.i64(i64 range(i64 2, 1) %0, i64 %1) ; 2 uses
  %i.d = extractvalue { i64, i1 } %i.c, 1
  %i.e = extractvalue { i64, i1 } %i.c, 0
  br i1 %i.d, label %mi_heap_calloc.exit, label %bb.c, !prof !17

bb.c:                                             ; preds = %bb.b, %bb.a
  %storemerge.i.ph.i = phi i64 [ %1, %bb.a ], [ %i.e, %bb.b ] ; 4 uses
  %i.f = icmp ult i64 %storemerge.i.ph.i, 1025
  br i1 %i.f, label %bb.d, label %bb.i, !prof !55

bb.d:                                             ; preds = %bb.c
  %i.g = add nuw nsw i64 %storemerge.i.ph.i, 7
  %i.h = lshr i64 %i.g, 3
  %i.i = getelementptr i8, ptr %i.b, i64 8
  %i.j = getelementptr [8 x i8], ptr %i.i, i64 %i.h
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !53   ; 4 uses
  %i.l = getelementptr i8, ptr %i.k, i64 16       ; 2 uses
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !11   ; 7 uses
  %i.n = icmp eq ptr %i.m, null
  br i1 %i.n, label %bb.e, label %bb.f, !prof !17

bb.e:                                             ; preds = %bb.d
  %i.o = tail call noalias ptr @_mi_malloc_generic(ptr noundef nonnull %i.b, i64 noundef %storemerge.i.ph.i, i1 noundef zeroext true, i64 noundef 0), !inline_history !50
  br label %mi_heap_calloc.exit

bb.f:                                             ; preds = %bb.d
  %i.p = getelementptr i8, ptr %i.k, i64 24       ; 2 uses
  %i.q = load i32, ptr %i.p, align 8, !tbaa !18
  %i.r = add i32 %i.q, 1
  store i32 %i.r, ptr %i.p, align 8, !tbaa !18
  %i.s = load atomic i64, ptr %i.m monotonic, align 8
  %i.t = inttoptr i64 %i.s to ptr
  store ptr %i.t, ptr %i.l, align 8, !tbaa !11
  %i.u = getelementptr i8, ptr %i.k, i64 15
  %i.v = load i8, ptr %i.u, align 1
  %i.w = and i8 %i.v, 1
  %.not.i.i.i.i.i.i = icmp eq i8 %i.w, 0
  br i1 %.not.i.i.i.i.i.i, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  store atomic i64 0, ptr %i.m seq_cst, align 8, !tbaa !19
  br label %mi_heap_calloc.exit

bb.h:                                             ; preds = %bb.f
  call void @llvm.assume(i1 true) [ "align"(ptr %i.m, i64 8) ]
  %i.x = getelementptr i8, ptr %i.k, i64 28
  %i.y = load i32, ptr %i.x, align 4, !tbaa !21
  %i.z = zext i32 %i.y to i64
  tail call void @llvm.memset.p0.i64(ptr nonnull align 8 %i.m, i8 0, i64 %i.z, i1 false)
  br label %mi_heap_calloc.exit

bb.i:                                             ; preds = %bb.c
  %i.aa = tail call noalias ptr @_mi_malloc_generic(ptr noundef %i.b, i64 noundef %storemerge.i.ph.i, i1 noundef zeroext true, i64 noundef 0)
  br label %mi_heap_calloc.exit

mi_heap_calloc.exit:                              ; preds = %bb.b, %bb.e, %bb.g, %bb.h, %bb.i
  %.0.i = phi ptr [ null, %bb.b ], [ %i.aa, %bb.i ], [ %i.o, %bb.e ], [ %i.m, %bb.g ], [ %i.m, %bb.h ]
  ret ptr %.0.i
}

; Function Attrs: nounwind uwtable
define hidden noalias ptr @mi_heap_mallocn(ptr noundef %0, i64 noundef %1, i64 noundef %2) local_unnamed_addr #2 {
bb.a:
  %.not = icmp eq i64 %1, 1
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = tail call { i64, i1 } @llvm.umul.with.overflow.i64(i64 range(i64 2, 1) %1, i64 %2) ; 2 uses
  %i.b = extractvalue { i64, i1 } %i.a, 1
  %i.c = extractvalue { i64, i1 } %i.a, 0
  br i1 %i.b, label %mi_count_size_overflow.exit, label %bb.c, !prof !17

bb.c:                                             ; preds = %bb.b, %bb.a
  %storemerge.i.ph = phi i64 [ %2, %bb.a ], [ %i.c, %bb.b ] ; 4 uses
  %i.d = icmp ult i64 %storemerge.i.ph, 1025
  br i1 %i.d, label %bb.d, label %bb.g, !prof !55

bb.d:                                             ; preds = %bb.c
  %i.e = add nuw nsw i64 %storemerge.i.ph, 7
  %i.f = lshr i64 %i.e, 3
  %i.g = getelementptr i8, ptr %0, i64 8
  %i.h = getelementptr [8 x i8], ptr %i.g, i64 %i.f
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !53   ; 2 uses
  %i.j = getelementptr i8, ptr %i.i, i64 16       ; 2 uses
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !11   ; 3 uses
  %i.l = icmp eq ptr %i.k, null
  br i1 %i.l, label %bb.e, label %bb.f, !prof !17

bb.e:                                             ; preds = %bb.d
  %i.m = tail call noalias ptr @_mi_malloc_generic(ptr noundef nonnull %0, i64 noundef %storemerge.i.ph, i1 noundef zeroext false, i64 noundef 0), !inline_history !50
  br label %mi_count_size_overflow.exit

bb.f:                                             ; preds = %bb.d
  %i.n = getelementptr i8, ptr %i.i, i64 24       ; 2 uses
  %i.o = load i32, ptr %i.n, align 8, !tbaa !18
  %i.p = add i32 %i.o, 1
  store i32 %i.p, ptr %i.n, align 8, !tbaa !18
  %i.q = load atomic i64, ptr %i.k monotonic, align 8
  %i.r = inttoptr i64 %i.q to ptr
  store ptr %i.r, ptr %i.j, align 8, !tbaa !11
  br label %mi_count_size_overflow.exit

bb.g:                                             ; preds = %bb.c
  %i.s = tail call noalias ptr @_mi_malloc_generic(ptr noundef %0, i64 noundef %storemerge.i.ph, i1 noundef zeroext false, i64 noundef 0)
  br label %mi_count_size_overflow.exit

mi_count_size_overflow.exit:                      ; preds = %bb.g, %bb.f, %bb.e, %bb.b
  %.0 = phi ptr [ null, %bb.b ], [ %i.s, %bb.g ], [ %i.m, %bb.e ], [ %i.k, %bb.f ]
  ret ptr %.0
}

; Function Attrs: nounwind uwtable
define hidden noalias ptr @mi_mallocn(i64 noundef %0, i64 noundef %1) local_unnamed_addr #2 {
bb.a:
  %i.a = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @_mi_heap_default)
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !54   ; 3 uses
  %.not.i = icmp eq i64 %0, 1
  br i1 %.not.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = tail call { i64, i1 } @llvm.umul.with.overflow.i64(i64 range(i64 2, 1) %0, i64 %1) ; 2 uses
  %i.d = extractvalue { i64, i1 } %i.c, 1
  %i.e = extractvalue { i64, i1 } %i.c, 0
  br i1 %i.d, label %mi_heap_mallocn.exit, label %bb.c, !prof !17

bb.c:                                             ; preds = %bb.b, %bb.a
  %storemerge.i.ph.i = phi i64 [ %1, %bb.a ], [ %i.e, %bb.b ] ; 4 uses
  %i.f = icmp ult i64 %storemerge.i.ph.i, 1025
  br i1 %i.f, label %bb.d, label %bb.g, !prof !55

bb.d:                                             ; preds = %bb.c
  %i.g = add nuw nsw i64 %storemerge.i.ph.i, 7
  %i.h = lshr i64 %i.g, 3
  %i.i = getelementptr i8, ptr %i.b, i64 8
  %i.j = getelementptr [8 x i8], ptr %i.i, i64 %i.h
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !53   ; 2 uses
  %i.l = getelementptr i8, ptr %i.k, i64 16       ; 2 uses
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !11   ; 3 uses
  %i.n = icmp eq ptr %i.m, null
  br i1 %i.n, label %bb.e, label %bb.f, !prof !17

bb.e:                                             ; preds = %bb.d
  %i.o = tail call noalias ptr @_mi_malloc_generic(ptr noundef nonnull %i.b, i64 noundef %storemerge.i.ph.i, i1 noundef zeroext false, i64 noundef 0), !inline_history !50
  br label %mi_heap_mallocn.exit

bb.f:                                             ; preds = %bb.d
  %i.p = getelementptr i8, ptr %i.k, i64 24       ; 2 uses
  %i.q = load i32, ptr %i.p, align 8, !tbaa !18
  %i.r = add i32 %i.q, 1
  store i32 %i.r, ptr %i.p, align 8, !tbaa !18
  %i.s = load atomic i64, ptr %i.m monotonic, align 8
  %i.t = inttoptr i64 %i.s to ptr
  store ptr %i.t, ptr %i.l, align 8, !tbaa !11
  br label %mi_heap_mallocn.exit

bb.g:                                             ; preds = %bb.c
  %i.u = tail call noalias ptr @_mi_malloc_generic(ptr noundef %i.b, i64 noundef %storemerge.i.ph.i, i1 noundef zeroext false, i64 noundef 0)
  br label %mi_heap_mallocn.exit

mi_heap_mallocn.exit:                             ; preds = %bb.b, %bb.e, %bb.f, %bb.g
  %.0.i = phi ptr [ null, %bb.b ], [ %i.u, %bb.g ], [ %i.o, %bb.e ], [ %i.m, %bb.f ]
  ret ptr %.0.i
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define hidden ptr @mi_expand(ptr noundef %0, i64 noundef %1) local_unnamed_addr #6 {
bb.a:
  %i.a = icmp eq ptr %0, null
  br i1 %i.a, label %bb.f, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = ptrtoint ptr %0 to i64                   ; 2 uses
  %i.c = add i64 %i.b, -1
  %i.d = and i64 %i.c, -33554432                  ; 2 uses
  %i.e = inttoptr i64 %i.d to ptr                 ; 2 uses
  %i.f = sub i64 %i.b, %i.d
  %i.g = lshr i64 %i.f, 16
  %i.h = getelementptr i8, ptr %i.e, i64 264
  %i.i = getelementptr [80 x i8], ptr %i.h, i64 %i.g ; 2 uses
  %i.j = getelementptr i8, ptr %i.i, i64 4
  %i.k = load i32, ptr %i.j, align 4, !tbaa !59
  %i.l = zext i32 %i.k to i64
  %i.m = sub nsw i64 0, %i.l
  %i.n = getelementptr i8, ptr %i.i, i64 %i.m     ; 4 uses
  %i.o = getelementptr i8, ptr %i.n, i64 14
  %.val.i = load i8, ptr %i.o, align 2
  %i.p = and i8 %.val.i, 2
  %.not.i = icmp eq i8 %i.p, 0
  br i1 %.not.i, label %bb.c, label %bb.e, !prof !55

bb.c:                                             ; preds = %bb.b
  %i.q = getelementptr i8, ptr %i.n, i64 28
  %i.r = load i32, ptr %i.q, align 4, !tbaa !21   ; 2 uses
  %i.s = icmp sgt i32 %i.r, -1
  br i1 %i.s, label %bb.d, label %_mi_segment_page_start.exit.i.i.i.i, !prof !55

bb.d:                                             ; preds = %bb.c
  %i.t = zext nneg i32 %i.r to i64
  br label %_mi_usable_size.exit

_mi_segment_page_start.exit.i.i.i.i:              ; preds = %bb.c
  %i.u = load i32, ptr %i.n, align 8, !tbaa !52
  %i.v = zext i32 %i.u to i64
  %i.w = shl nuw nsw i64 %i.v, 16
  br label %_mi_usable_size.exit

bb.e:                                             ; preds = %bb.b
  %i.x = tail call fastcc i64 @mi_page_usable_aligned_size_of(ptr noundef nonnull %i.e, ptr noundef %i.n, ptr noundef nonnull %0)
  br label %_mi_usable_size.exit

_mi_usable_size.exit:                             ; preds = %bb.d, %_mi_segment_page_start.exit.i.i.i.i, %bb.e
  %.1.i = phi i64 [ %i.w, %_mi_segment_page_start.exit.i.i.i.i ], [ %i.x, %bb.e ], [ %i.t, %bb.d ]
  %i.y = icmp ugt i64 %1, %.1.i
  %. = select i1 %i.y, ptr null, ptr %0
  br label %bb.f

bb.f:                                             ; preds = %bb.a, %_mi_usable_size.exit
  %.1 = phi ptr [ %., %_mi_usable_size.exit ], [ null, %bb.a ]
  ret ptr %.1
}

; Function Attrs: nounwind uwtable
define hidden ptr @_mi_heap_realloc_zero(ptr noundef %0, ptr noundef %1, i64 noundef %2, i1 noundef zeroext %3) local_unnamed_addr #2 {
bb.a:
  %i.a = icmp eq ptr %1, null                     ; 2 uses
  br i1 %i.a, label %_mi_usable_size.exit.thread, label %bb.b

_mi_usable_size.exit.thread:                      ; preds = %bb.a
  %.not50 = icmp ne i64 %2, 0
  br label %bb.f

bb.b:                                             ; preds = %bb.a
  %i.b = ptrtoint ptr %1 to i64                   ; 2 uses
  %i.c = add i64 %i.b, -1
  %i.d = and i64 %i.c, -33554432                  ; 2 uses
  %i.e = inttoptr i64 %i.d to ptr                 ; 2 uses
  %i.f = sub i64 %i.b, %i.d
  %i.g = lshr i64 %i.f, 16
  %i.h = getelementptr i8, ptr %i.e, i64 264
  %i.i = getelementptr [80 x i8], ptr %i.h, i64 %i.g ; 2 uses
  %i.j = getelementptr i8, ptr %i.i, i64 4
  %i.k = load i32, ptr %i.j, align 4, !tbaa !59
  %i.l = zext i32 %i.k to i64
  %i.m = sub nsw i64 0, %i.l
  %i.n = getelementptr i8, ptr %i.i, i64 %i.m     ; 4 uses
  %i.o = getelementptr i8, ptr %i.n, i64 14
  %.val.i = load i8, ptr %i.o, align 2
  %i.p = and i8 %.val.i, 2
end_hunk_1
begin_hunk_2_@mi_new_reallocn:bb.a
bb.b:                                             ; preds = %bb.a
  %i.a = tail call { i64, i1 } @llvm.umul.with.overflow.i64(i64 range(i64 2, 1) %1, i64 %2) ; 2 uses
  %i.b = extractvalue { i64, i1 } %i.a, 1
  %i.c = extractvalue { i64, i1 } %i.a, 0
  br i1 %i.b, label %mi_count_size_overflow.exit, label %bb.c, !prof !17

mi_count_size_overflow.exit:                      ; preds = %bb.b
  tail call fastcc void @mi_try_new_handler(i1 noundef zeroext false)
  br label %mi_new_realloc.exit

bb.c:                                             ; preds = %bb.b, %bb.a
  %storemerge.i.ph = phi i64 [ %2, %bb.a ], [ %i.c, %bb.b ] ; 2 uses
  %i.d = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @_mi_heap_default) ; 2 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !54
  %i.f = tail call ptr @_mi_heap_realloc_zero(ptr noundef %i.e, ptr noundef %0, i64 noundef %storemerge.i.ph, i1 noundef zeroext false) ; 2 uses
  %i.g = icmp eq ptr %i.f, null
  br i1 %i.g, label %.lr.ph.i, label %mi_new_realloc.exit

.lr.ph.i:                                         ; preds = %bb.c, %mi_try_new_handler.exit.i
  %i.h = tail call ptr @_Py__ZSt15get_new_handlerv() ; 2 uses
  %.not.i = icmp eq ptr %i.h, null
  br i1 %.not.i, label %bb.d, label %mi_try_new_handler.exit.i

bb.d:                                             ; preds = %.lr.ph.i
  tail call void (i32, ptr, ...) @_mi_error_message(i32 noundef 12, ptr noundef nonnull @.str.47)
  tail call void @abort() #62
  unreachable

mi_try_new_handler.exit.i:                        ; preds = %.lr.ph.i
  tail call void %i.h() #55, !inline_history !89
  %i.i = load ptr, ptr %i.d, align 8, !tbaa !54
  %i.j = tail call ptr @_mi_heap_realloc_zero(ptr noundef %i.i, ptr noundef %0, i64 noundef %storemerge.i.ph, i1 noundef zeroext false) ; 2 uses
  %i.k = icmp eq ptr %i.j, null
  br i1 %i.k, label %.lr.ph.i, label %mi_new_realloc.exit, !llvm.loop !88

mi_new_realloc.exit:                              ; preds = %mi_try_new_handler.exit.i, %bb.c, %mi_count_size_overflow.exit
  %.0 = phi ptr [ null, %mi_count_size_overflow.exit ], [ %i.f, %bb.c ], [ %i.j, %mi_try_new_handler.exit.i ]
  ret ptr %.0
}

; Function Attrs: nounwind uwtable
define hidden noalias ptr @mi_heap_malloc_aligned_at(ptr noundef %0, i64 noundef %1, i64 noundef %2, i64 noundef %3) local_unnamed_addr #2 {
bb.a:
  %i.a = icmp eq i64 %2, 0
  br i1 %i.a, label %mi_heap_malloc_zero_aligned_at.exit, label %bb.b, !prof !17

bb.b:                                             ; preds = %bb.a
  %i.b = tail call range(i64 1, 65) i64 @llvm.ctpop.i64(i64 %2)
  %i.c = icmp samesign ugt i64 %i.b, 1
  %i.d = icmp slt i64 %1, 0
  %or.cond.i = or i1 %i.d, %i.c
  br i1 %or.cond.i, label %mi_heap_malloc_zero_aligned_at.exit, label %bb.c, !prof !90

bb.c:                                             ; preds = %bb.b
  %i.e = icmp samesign ult i64 %1, 1025
  %i.f = icmp ule i64 %2, %1
  %i.g = and i1 %i.e, %i.f
  br i1 %i.g, label %bb.d, label %_mi_page_malloc.exit.i, !prof !55

bb.d:                                             ; preds = %bb.c
  %i.h = add nsw i64 %2, -1
  %i.i = add nuw nsw i64 %1, 7
  %i.j = lshr i64 %i.i, 3
  %i.k = getelementptr i8, ptr %0, i64 8
  %i.l = getelementptr [8 x i8], ptr %i.k, i64 %i.j
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !53   ; 2 uses
  %i.n = getelementptr i8, ptr %i.m, i64 16       ; 2 uses
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !11   ; 4 uses
  %i.p = ptrtoint ptr %i.o to i64
  %i.q = add i64 %3, %i.p
  %i.r = and i64 %i.q, %i.h
  %i.s = icmp ne i64 %i.r, 0
  %i.t = icmp eq ptr %i.o, null
  %.not31.i = or i1 %i.t, %i.s
  br i1 %.not31.i, label %_mi_page_malloc.exit.i, label %bb.e, !prof !17

bb.e:                                             ; preds = %bb.d
  %i.u = getelementptr i8, ptr %i.m, i64 24       ; 2 uses
  %i.v = load i32, ptr %i.u, align 8, !tbaa !18
  %i.w = add i32 %i.v, 1
  store i32 %i.w, ptr %i.u, align 8, !tbaa !18
  %i.x = load atomic i64, ptr %i.o monotonic, align 8
  %i.y = inttoptr i64 %i.x to ptr
  store ptr %i.y, ptr %i.n, align 8, !tbaa !11
  br label %mi_heap_malloc_zero_aligned_at.exit

_mi_page_malloc.exit.i:                           ; preds = %bb.d, %bb.c
  %i.z = tail call fastcc ptr @mi_heap_malloc_zero_aligned_at_fallback(ptr noundef %0, i64 noundef %1, i64 noundef %2, i64 noundef %3, i1 noundef zeroext false)
  br label %mi_heap_malloc_zero_aligned_at.exit

mi_heap_malloc_zero_aligned_at.exit:              ; preds = %bb.a, %bb.b, %bb.e, %_mi_page_malloc.exit.i
  %.2.i = phi ptr [ null, %bb.a ], [ null, %bb.b ], [ %i.z, %_mi_page_malloc.exit.i ], [ %i.o, %bb.e ]
  ret ptr %.2.i
}

; Function Attrs: nounwind uwtable
define hidden noalias ptr @mi_heap_malloc_aligned(ptr noundef %0, i64 noundef %1, i64 noundef %2) local_unnamed_addr #2 {
bb.a:
  %i.a = tail call range(i64 0, 65) i64 @llvm.ctpop.i64(i64 %2)
  %or.cond.not16 = icmp eq i64 %i.a, 1
  br i1 %or.cond.not16, label %bb.b, label %.critedge, !prof !83

bb.b:                                             ; preds = %bb.a
  %i.b = tail call range(i64 0, 65) i64 @llvm.ctpop.i64(i64 %1)
  %i.c = icmp samesign ult i64 %i.b, 2
  %.not = icmp uge i64 %1, %2
  %or.cond.not = and i1 %i.c, %.not
  %i.d = icmp ult i64 %1, 1025
  %i.e = and i1 %i.d, %or.cond.not
  br i1 %i.e, label %bb.c, label %bb.f, !prof !55

bb.c:                                             ; preds = %bb.b
  %i.f = add nuw nsw i64 %1, 7
  %i.g = lshr i64 %i.f, 3
  %i.h = getelementptr i8, ptr %0, i64 8
  %i.i = getelementptr [8 x i8], ptr %i.h, i64 %i.g
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !53   ; 2 uses
  %i.k = getelementptr i8, ptr %i.j, i64 16       ; 2 uses
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !11   ; 3 uses
  %i.m = icmp eq ptr %i.l, null
  br i1 %i.m, label %bb.d, label %bb.e, !prof !17

bb.d:                                             ; preds = %bb.c
  %i.n = tail call noalias ptr @_mi_malloc_generic(ptr noundef nonnull %0, i64 noundef %1, i1 noundef zeroext false, i64 noundef 0), !inline_history !50
  br label %.critedge

bb.e:                                             ; preds = %bb.c
  %i.o = getelementptr i8, ptr %i.j, i64 24       ; 2 uses
  %i.p = load i32, ptr %i.o, align 8, !tbaa !18
  %i.q = add i32 %i.p, 1
  store i32 %i.q, ptr %i.o, align 8, !tbaa !18
  %i.r = load atomic i64, ptr %i.l monotonic, align 8
  %i.s = inttoptr i64 %i.r to ptr
  store ptr %i.s, ptr %i.k, align 8, !tbaa !11
  br label %.critedge

bb.f:                                             ; preds = %bb.b
  %i.t = tail call noalias ptr @mi_heap_malloc_aligned_at(ptr noundef %0, i64 noundef %1, i64 noundef %2, i64 noundef 0)
  br label %.critedge

.critedge:                                        ; preds = %bb.e, %bb.d, %bb.a, %bb.f
  %.0 = phi ptr [ %i.t, %bb.f ], [ null, %bb.a ], [ %i.l, %bb.e ], [ %i.n, %bb.d ]
  ret ptr %.0
}

; Function Attrs: nounwind uwtable
define hidden noalias ptr @mi_heap_zalloc_aligned_at(ptr noundef %0, i64 noundef %1, i64 noundef %2, i64 noundef %3) local_unnamed_addr #2 {
bb.a:
  %i.a = icmp eq i64 %2, 0
  br i1 %i.a, label %mi_heap_malloc_zero_aligned_at.exit, label %bb.b, !prof !17

bb.b:                                             ; preds = %bb.a
  %i.b = tail call range(i64 1, 65) i64 @llvm.ctpop.i64(i64 %2)
  %i.c = icmp samesign ugt i64 %i.b, 1
  %i.d = icmp slt i64 %1, 0
  %or.cond.i = or i1 %i.d, %i.c
  br i1 %or.cond.i, label %mi_heap_malloc_zero_aligned_at.exit, label %bb.c, !prof !90

bb.c:                                             ; preds = %bb.b
  %i.e = icmp samesign ult i64 %1, 1025
  %i.f = icmp ule i64 %2, %1
  %i.g = and i1 %i.e, %i.f
  br i1 %i.g, label %bb.d, label %_mi_page_malloc.exit.i, !prof !55

bb.d:                                             ; preds = %bb.c
  %i.h = add nsw i64 %2, -1
  %i.i = add nuw nsw i64 %1, 7
  %i.j = lshr i64 %i.i, 3
  %i.k = getelementptr i8, ptr %0, i64 8
  %i.l = getelementptr [8 x i8], ptr %i.k, i64 %i.j
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !53   ; 4 uses
  %i.n = getelementptr i8, ptr %i.m, i64 16       ; 2 uses
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !11   ; 8 uses
  %i.p = ptrtoint ptr %i.o to i64
  %i.q = add i64 %3, %i.p
  %i.r = and i64 %i.q, %i.h
  %i.s = icmp ne i64 %i.r, 0
  %i.t = icmp eq ptr %i.o, null
  %.not31.i = or i1 %i.t, %i.s
  br i1 %.not31.i, label %_mi_page_malloc.exit.i, label %bb.e, !prof !17

bb.e:                                             ; preds = %bb.d
  %i.u = getelementptr i8, ptr %i.m, i64 24       ; 2 uses
  %i.v = load i32, ptr %i.u, align 8, !tbaa !18
  %i.w = add i32 %i.v, 1
  store i32 %i.w, ptr %i.u, align 8, !tbaa !18
  %i.x = load atomic i64, ptr %i.o monotonic, align 8
  %i.y = inttoptr i64 %i.x to ptr
  store ptr %i.y, ptr %i.n, align 8, !tbaa !11
  %i.z = getelementptr i8, ptr %i.m, i64 15
  %i.aa = load i8, ptr %i.z, align 1
  %i.ab = and i8 %i.aa, 1
  %.not.i.i = icmp eq i8 %i.ab, 0
  br i1 %.not.i.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  store atomic i64 0, ptr %i.o seq_cst, align 8, !tbaa !19
  br label %mi_heap_malloc_zero_aligned_at.exit

bb.g:                                             ; preds = %bb.e
  call void @llvm.assume(i1 true) [ "align"(ptr %i.o, i64 8) ]
  %i.ac = getelementptr i8, ptr %i.m, i64 28
  %i.ad = load i32, ptr %i.ac, align 4, !tbaa !21
  %i.ae = zext i32 %i.ad to i64
  tail call void @llvm.memset.p0.i64(ptr nonnull align 8 %i.o, i8 0, i64 %i.ae, i1 false)
  br label %mi_heap_malloc_zero_aligned_at.exit

_mi_page_malloc.exit.i:                           ; preds = %bb.d, %bb.c
  %i.af = tail call fastcc ptr @mi_heap_malloc_zero_aligned_at_fallback(ptr noundef %0, i64 noundef %1, i64 noundef %2, i64 noundef %3, i1 noundef zeroext true)
  br label %mi_heap_malloc_zero_aligned_at.exit

mi_heap_malloc_zero_aligned_at.exit:              ; preds = %bb.a, %bb.b, %bb.f, %bb.g, %_mi_page_malloc.exit.i
  %.2.i = phi ptr [ null, %bb.a ], [ null, %bb.b ], [ %i.af, %_mi_page_malloc.exit.i ], [ %i.o, %bb.g ], [ %i.o, %bb.f ]
  ret ptr %.2.i
}

; Function Attrs: nounwind uwtable
define hidden noalias ptr @mi_heap_zalloc_aligned(ptr noundef %0, i64 noundef %1, i64 noundef %2) local_unnamed_addr #2 {
bb.a:
  %i.a = icmp eq i64 %2, 0
  br i1 %i.a, label %mi_heap_zalloc_aligned_at.exit, label %bb.b, !prof !17

bb.b:                                             ; preds = %bb.a
  %i.b = tail call range(i64 1, 65) i64 @llvm.ctpop.i64(i64 %2)
  %i.c = icmp samesign ugt i64 %i.b, 1
  %i.d = icmp slt i64 %1, 0
  %or.cond.i.i = or i1 %i.d, %i.c
  br i1 %or.cond.i.i, label %mi_heap_zalloc_aligned_at.exit, label %bb.c, !prof !90

bb.c:                                             ; preds = %bb.b
  %i.e = icmp samesign ult i64 %1, 1025
  %i.f = icmp ule i64 %2, %1
  %i.g = and i1 %i.e, %i.f
  br i1 %i.g, label %bb.d, label %_mi_page_malloc.exit.i.i, !prof !55

bb.d:                                             ; preds = %bb.c
  %i.h = add nsw i64 %2, -1
  %i.i = add nuw nsw i64 %1, 7
  %i.j = lshr i64 %i.i, 3
  %i.k = getelementptr i8, ptr %0, i64 8
  %i.l = getelementptr [8 x i8], ptr %i.k, i64 %i.j
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !53   ; 4 uses
  %i.n = getelementptr i8, ptr %i.m, i64 16       ; 2 uses
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !11   ; 8 uses
  %i.p = ptrtoint ptr %i.o to i64
  %i.q = and i64 %i.h, %i.p
  %i.r = icmp ne i64 %i.q, 0
  %i.s = icmp eq ptr %i.o, null
  %.not31.i.i = or i1 %i.s, %i.r
  br i1 %.not31.i.i, label %_mi_page_malloc.exit.i.i, label %bb.e, !prof !17

bb.e:                                             ; preds = %bb.d
  %i.t = getelementptr i8, ptr %i.m, i64 24       ; 2 uses
  %i.u = load i32, ptr %i.t, align 8, !tbaa !18
  %i.v = add i32 %i.u, 1
  store i32 %i.v, ptr %i.t, align 8, !tbaa !18
  %i.w = load atomic i64, ptr %i.o monotonic, align 8
  %i.x = inttoptr i64 %i.w to ptr
  store ptr %i.x, ptr %i.n, align 8, !tbaa !11
  %i.y = getelementptr i8, ptr %i.m, i64 15
  %i.z = load i8, ptr %i.y, align 1
  %i.aa = and i8 %i.z, 1
  %.not.i.i.i = icmp eq i8 %i.aa, 0
  br i1 %.not.i.i.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  store atomic i64 0, ptr %i.o seq_cst, align 8, !tbaa !19
  br label %mi_heap_zalloc_aligned_at.exit

bb.g:                                             ; preds = %bb.e
  call void @llvm.assume(i1 true) [ "align"(ptr %i.o, i64 8) ]
  %i.ab = getelementptr i8, ptr %i.m, i64 28
  %i.ac = load i32, ptr %i.ab, align 4, !tbaa !21
  %i.ad = zext i32 %i.ac to i64
  tail call void @llvm.memset.p0.i64(ptr nonnull align 8 %i.o, i8 0, i64 %i.ad, i1 false)
  br label %mi_heap_zalloc_aligned_at.exit

_mi_page_malloc.exit.i.i:                         ; preds = %bb.d, %bb.c
  %i.ae = tail call fastcc ptr @mi_heap_malloc_zero_aligned_at_fallback(ptr noundef %0, i64 noundef %1, i64 noundef %2, i64 noundef 0, i1 noundef zeroext true)
  br label %mi_heap_zalloc_aligned_at.exit

mi_heap_zalloc_aligned_at.exit:                   ; preds = %bb.a, %bb.b, %bb.f, %bb.g, %_mi_page_malloc.exit.i.i
  %.2.i.i = phi ptr [ null, %bb.a ], [ null, %bb.b ], [ %i.ae, %_mi_page_malloc.exit.i.i ], [ %i.o, %bb.g ], [ %i.o, %bb.f ]
  ret ptr %.2.i.i
}

; Function Attrs: nounwind uwtable
define hidden noalias ptr @mi_heap_calloc_aligned_at(ptr noundef %0, i64 noundef %1, i64 noundef %2, i64 noundef %3, i64 noundef %4) local_unnamed_addr #2 {
bb.a:
  %.not = icmp eq i64 %1, 1
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = tail call { i64, i1 } @llvm.umul.with.overflow.i64(i64 range(i64 2, 1) %1, i64 %2) ; 2 uses
  %i.b = extractvalue { i64, i1 } %i.a, 1
  %i.c = extractvalue { i64, i1 } %i.a, 0
  br i1 %i.b, label %mi_count_size_overflow.exit, label %bb.c, !prof !17

bb.c:                                             ; preds = %bb.b, %bb.a
  %storemerge.i.ph = phi i64 [ %2, %bb.a ], [ %i.c, %bb.b ] ; 5 uses
  %i.d = icmp eq i64 %3, 0
  br i1 %i.d, label %mi_count_size_overflow.exit, label %bb.d, !prof !17

bb.d:                                             ; preds = %bb.c
  %i.e = tail call range(i64 1, 65) i64 @llvm.ctpop.i64(i64 %3)
  %i.f = icmp samesign ugt i64 %i.e, 1
  %i.g = icmp slt i64 %storemerge.i.ph, 0
  %or.cond.i.i = or i1 %i.f, %i.g
  br i1 %or.cond.i.i, label %mi_count_size_overflow.exit, label %bb.e, !prof !90

bb.e:                                             ; preds = %bb.d
  %i.h = icmp samesign ult i64 %storemerge.i.ph, 1025
  %i.i = icmp ule i64 %3, %storemerge.i.ph
  %i.j = and i1 %i.h, %i.i
  br i1 %i.j, label %bb.f, label %_mi_page_malloc.exit.i.i, !prof !55

bb.f:                                             ; preds = %bb.e
  %i.k = add nsw i64 %3, -1
  %i.l = add nuw nsw i64 %storemerge.i.ph, 7
  %i.m = lshr i64 %i.l, 3
  %i.n = getelementptr i8, ptr %0, i64 8
  %i.o = getelementptr [8 x i8], ptr %i.n, i64 %i.m
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !53   ; 4 uses
  %i.q = getelementptr i8, ptr %i.p, i64 16       ; 2 uses
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !11   ; 8 uses
  %i.s = ptrtoint ptr %i.r to i64
  %i.t = add i64 %4, %i.s
  %i.u = and i64 %i.t, %i.k
  %i.v = icmp ne i64 %i.u, 0
  %i.w = icmp eq ptr %i.r, null
  %.not31.i.i = or i1 %i.w, %i.v
  br i1 %.not31.i.i, label %_mi_page_malloc.exit.i.i, label %bb.g, !prof !17

bb.g:                                             ; preds = %bb.f
  %i.x = getelementptr i8, ptr %i.p, i64 24       ; 2 uses
  %i.y = load i32, ptr %i.x, align 8, !tbaa !18
  %i.z = add i32 %i.y, 1
  store i32 %i.z, ptr %i.x, align 8, !tbaa !18
  %i.aa = load atomic i64, ptr %i.r monotonic, align 8
  %i.ab = inttoptr i64 %i.aa to ptr
  store ptr %i.ab, ptr %i.q, align 8, !tbaa !11
  %i.ac = getelementptr i8, ptr %i.p, i64 15
  %i.ad = load i8, ptr %i.ac, align 1
  %i.ae = and i8 %i.ad, 1
  %.not.i.i.i = icmp eq i8 %i.ae, 0
  br i1 %.not.i.i.i, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  store atomic i64 0, ptr %i.r seq_cst, align 8, !tbaa !19
  br label %mi_count_size_overflow.exit

bb.i:                                             ; preds = %bb.g
  call void @llvm.assume(i1 true) [ "align"(ptr %i.r, i64 8) ]
  %i.af = getelementptr i8, ptr %i.p, i64 28
  %i.ag = load i32, ptr %i.af, align 4, !tbaa !21
  %i.ah = zext i32 %i.ag to i64
  tail call void @llvm.memset.p0.i64(ptr nonnull align 8 %i.r, i8 0, i64 %i.ah, i1 false)
  br label %mi_count_size_overflow.exit

_mi_page_malloc.exit.i.i:                         ; preds = %bb.f, %bb.e
  %i.ai = tail call fastcc ptr @mi_heap_malloc_zero_aligned_at_fallback(ptr noundef %0, i64 noundef %storemerge.i.ph, i64 noundef %3, i64 noundef %4, i1 noundef zeroext true)
  br label %mi_count_size_overflow.exit

mi_count_size_overflow.exit:                      ; preds = %_mi_page_malloc.exit.i.i, %bb.i, %bb.h, %bb.d, %bb.c, %bb.b
  %.0 = phi ptr [ null, %bb.b ], [ null, %bb.c ], [ null, %bb.d ], [ %i.ai, %_mi_page_malloc.exit.i.i ], [ %i.r, %bb.i ], [ %i.r, %bb.h ]
  ret ptr %.0
}

; Function Attrs: nounwind uwtable
define hidden noalias ptr @mi_heap_calloc_aligned(ptr noundef %0, i64 noundef %1, i64 noundef %2, i64 noundef %3) local_unnamed_addr #2 {
bb.a:
  %.not.i = icmp eq i64 %1, 1
  br i1 %.not.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = tail call { i64, i1 } @llvm.umul.with.overflow.i64(i64 range(i64 2, 1) %1, i64 %2) ; 2 uses
  %i.b = extractvalue { i64, i1 } %i.a, 1
  %i.c = extractvalue { i64, i1 } %i.a, 0
  br i1 %i.b, label %mi_heap_calloc_aligned_at.exit, label %bb.c, !prof !17

bb.c:                                             ; preds = %bb.b, %bb.a
  %storemerge.i.ph.i = phi i64 [ %2, %bb.a ], [ %i.c, %bb.b ] ; 5 uses
  %i.d = icmp eq i64 %3, 0
  br i1 %i.d, label %mi_heap_calloc_aligned_at.exit, label %bb.d, !prof !17

bb.d:                                             ; preds = %bb.c
  %i.e = tail call range(i64 1, 65) i64 @llvm.ctpop.i64(i64 %3)
  %i.f = icmp samesign ugt i64 %i.e, 1
  %i.g = icmp slt i64 %storemerge.i.ph.i, 0
  %or.cond.i.i.i = or i1 %i.f, %i.g
  br i1 %or.cond.i.i.i, label %mi_heap_calloc_aligned_at.exit, label %bb.e, !prof !90

bb.e:                                             ; preds = %bb.d
  %i.h = icmp samesign ult i64 %storemerge.i.ph.i, 1025
  %i.i = icmp ule i64 %3, %storemerge.i.ph.i
  %i.j = and i1 %i.h, %i.i
  br i1 %i.j, label %bb.f, label %_mi_page_malloc.exit.i.i.i, !prof !55

bb.f:                                             ; preds = %bb.e
  %i.k = add nsw i64 %3, -1
  %i.l = add nuw nsw i64 %storemerge.i.ph.i, 7
  %i.m = lshr i64 %i.l, 3
  %i.n = getelementptr i8, ptr %0, i64 8
  %i.o = getelementptr [8 x i8], ptr %i.n, i64 %i.m
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !53   ; 4 uses
  %i.q = getelementptr i8, ptr %i.p, i64 16       ; 2 uses
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !11   ; 8 uses
  %i.s = ptrtoint ptr %i.r to i64
  %i.t = and i64 %i.k, %i.s
  %i.u = icmp ne i64 %i.t, 0
  %i.v = icmp eq ptr %i.r, null
  %.not31.i.i.i = or i1 %i.v, %i.u
  br i1 %.not31.i.i.i, label %_mi_page_malloc.exit.i.i.i, label %bb.g, !prof !17

bb.g:                                             ; preds = %bb.f
  %i.w = getelementptr i8, ptr %i.p, i64 24       ; 2 uses
  %i.x = load i32, ptr %i.w, align 8, !tbaa !18
  %i.y = add i32 %i.x, 1
  store i32 %i.y, ptr %i.w, align 8, !tbaa !18
  %i.z = load atomic i64, ptr %i.r monotonic, align 8
  %i.aa = inttoptr i64 %i.z to ptr
  store ptr %i.aa, ptr %i.q, align 8, !tbaa !11
  %i.ab = getelementptr i8, ptr %i.p, i64 15
  %i.ac = load i8, ptr %i.ab, align 1
  %i.ad = and i8 %i.ac, 1
  %.not.i.i.i.i = icmp eq i8 %i.ad, 0
  br i1 %.not.i.i.i.i, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  store atomic i64 0, ptr %i.r seq_cst, align 8, !tbaa !19
  br label %mi_heap_calloc_aligned_at.exit

bb.i:                                             ; preds = %bb.g
  call void @llvm.assume(i1 true) [ "align"(ptr %i.r, i64 8) ]
  %i.ae = getelementptr i8, ptr %i.p, i64 28
  %i.af = load i32, ptr %i.ae, align 4, !tbaa !21
  %i.ag = zext i32 %i.af to i64
  tail call void @llvm.memset.p0.i64(ptr nonnull align 8 %i.r, i8 0, i64 %i.ag, i1 false)
  br label %mi_heap_calloc_aligned_at.exit

_mi_page_malloc.exit.i.i.i:                       ; preds = %bb.f, %bb.e
  %i.ah = tail call fastcc ptr @mi_heap_malloc_zero_aligned_at_fallback(ptr noundef %0, i64 noundef %storemerge.i.ph.i, i64 noundef %3, i64 noundef 0, i1 noundef zeroext true)
  br label %mi_heap_calloc_aligned_at.exit

mi_heap_calloc_aligned_at.exit:                   ; preds = %bb.b, %bb.c, %bb.d, %bb.h, %bb.i, %_mi_page_malloc.exit.i.i.i
  %.0.i = phi ptr [ null, %bb.b ], [ null, %bb.c ], [ null, %bb.d ], [ %i.ah, %_mi_page_malloc.exit.i.i.i ], [ %i.r, %bb.i ], [ %i.r, %bb.h ]
  ret ptr %.0.i
}

; Function Attrs: nounwind uwtable
define hidden noalias ptr @mi_malloc_aligned_at(i64 noundef %0, i64 noundef %1, i64 noundef %2) local_unnamed_addr #2 {
bb.a:
  %i.a = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @_mi_heap_default)
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !54   ; 2 uses
  %i.c = icmp eq i64 %1, 0
  br i1 %i.c, label %mi_heap_malloc_aligned_at.exit, label %bb.b, !prof !17

bb.b:                                             ; preds = %bb.a
  %i.d = tail call range(i64 1, 65) i64 @llvm.ctpop.i64(i64 %1)
  %i.e = icmp samesign ugt i64 %i.d, 1
  %i.f = icmp slt i64 %0, 0
  %or.cond.i.i = or i1 %i.f, %i.e
  br i1 %or.cond.i.i, label %mi_heap_malloc_aligned_at.exit, label %bb.c, !prof !90

bb.c:                                             ; preds = %bb.b
  %i.g = icmp samesign ult i64 %0, 1025
  %i.h = icmp ule i64 %1, %0
  %i.i = and i1 %i.g, %i.h
  br i1 %i.i, label %bb.d, label %_mi_page_malloc.exit.i.i, !prof !55

bb.d:                                             ; preds = %bb.c
  %i.j = add nsw i64 %1, -1
  %i.k = add nuw nsw i64 %0, 7
  %i.l = lshr i64 %i.k, 3
  %i.m = getelementptr i8, ptr %i.b, i64 8
  %i.n = getelementptr [8 x i8], ptr %i.m, i64 %i.l
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !53   ; 2 uses
  %i.p = getelementptr i8, ptr %i.o, i64 16       ; 2 uses
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !11   ; 4 uses
  %i.r = ptrtoint ptr %i.q to i64
  %i.s = add i64 %2, %i.r
  %i.t = and i64 %i.s, %i.j
  %i.u = icmp ne i64 %i.t, 0
  %i.v = icmp eq ptr %i.q, null
  %.not31.i.i = or i1 %i.v, %i.u
  br i1 %.not31.i.i, label %_mi_page_malloc.exit.i.i, label %bb.e, !prof !17

bb.e:                                             ; preds = %bb.d
  %i.w = getelementptr i8, ptr %i.o, i64 24       ; 2 uses
  %i.x = load i32, ptr %i.w, align 8, !tbaa !18
  %i.y = add i32 %i.x, 1
  store i32 %i.y, ptr %i.w, align 8, !tbaa !18
  %i.z = load atomic i64, ptr %i.q monotonic, align 8
  %i.aa = inttoptr i64 %i.z to ptr
  store ptr %i.aa, ptr %i.p, align 8, !tbaa !11
  br label %mi_heap_malloc_aligned_at.exit

_mi_page_malloc.exit.i.i:                         ; preds = %bb.d, %bb.c
  %i.ab = tail call fastcc ptr @mi_heap_malloc_zero_aligned_at_fallback(ptr noundef %i.b, i64 noundef %0, i64 noundef %1, i64 noundef %2, i1 noundef zeroext false)
  br label %mi_heap_malloc_aligned_at.exit

mi_heap_malloc_aligned_at.exit:                   ; preds = %bb.a, %bb.b, %bb.e, %_mi_page_malloc.exit.i.i
  %.2.i.i = phi ptr [ null, %bb.a ], [ null, %bb.b ], [ %i.ab, %_mi_page_malloc.exit.i.i ], [ %i.q, %bb.e ]
  ret ptr %.2.i.i
}

; Function Attrs: nounwind uwtable
define hidden noalias ptr @mi_zalloc_aligned_at(i64 noundef %0, i64 noundef %1, i64 noundef %2) local_unnamed_addr #2 {
bb.a:
  %i.a = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @_mi_heap_default)
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !54   ; 2 uses
  %i.c = icmp eq i64 %1, 0
  br i1 %i.c, label %mi_heap_zalloc_aligned_at.exit, label %bb.b, !prof !17

bb.b:                                             ; preds = %bb.a
  %i.d = tail call range(i64 1, 65) i64 @llvm.ctpop.i64(i64 %1)
  %i.e = icmp samesign ugt i64 %i.d, 1
  %i.f = icmp slt i64 %0, 0
  %or.cond.i.i = or i1 %i.f, %i.e
  br i1 %or.cond.i.i, label %mi_heap_zalloc_aligned_at.exit, label %bb.c, !prof !90

bb.c:                                             ; preds = %bb.b
  %i.g = icmp samesign ult i64 %0, 1025
  %i.h = icmp ule i64 %1, %0
  %i.i = and i1 %i.g, %i.h
  br i1 %i.i, label %bb.d, label %_mi_page_malloc.exit.i.i, !prof !55

bb.d:                                             ; preds = %bb.c
  %i.j = add nsw i64 %1, -1
  %i.k = add nuw nsw i64 %0, 7
  %i.l = lshr i64 %i.k, 3
  %i.m = getelementptr i8, ptr %i.b, i64 8
  %i.n = getelementptr [8 x i8], ptr %i.m, i64 %i.l
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !53   ; 4 uses
  %i.p = getelementptr i8, ptr %i.o, i64 16       ; 2 uses
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !11   ; 8 uses
  %i.r = ptrtoint ptr %i.q to i64
  %i.s = add i64 %2, %i.r
  %i.t = and i64 %i.s, %i.j
  %i.u = icmp ne i64 %i.t, 0
  %i.v = icmp eq ptr %i.q, null
  %.not31.i.i = or i1 %i.v, %i.u
  br i1 %.not31.i.i, label %_mi_page_malloc.exit.i.i, label %bb.e, !prof !17

bb.e:                                             ; preds = %bb.d
  %i.w = getelementptr i8, ptr %i.o, i64 24       ; 2 uses
  %i.x = load i32, ptr %i.w, align 8, !tbaa !18
  %i.y = add i32 %i.x, 1
  store i32 %i.y, ptr %i.w, align 8, !tbaa !18
  %i.z = load atomic i64, ptr %i.q monotonic, align 8
  %i.aa = inttoptr i64 %i.z to ptr
  store ptr %i.aa, ptr %i.p, align 8, !tbaa !11
  %i.ab = getelementptr i8, ptr %i.o, i64 15
  %i.ac = load i8, ptr %i.ab, align 1
  %i.ad = and i8 %i.ac, 1
  %.not.i.i.i = icmp eq i8 %i.ad, 0
  br i1 %.not.i.i.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  store atomic i64 0, ptr %i.q seq_cst, align 8, !tbaa !19
  br label %mi_heap_zalloc_aligned_at.exit

bb.g:                                             ; preds = %bb.e
  call void @llvm.assume(i1 true) [ "align"(ptr %i.q, i64 8) ]
  %i.ae = getelementptr i8, ptr %i.o, i64 28
  %i.af = load i32, ptr %i.ae, align 4, !tbaa !21
  %i.ag = zext i32 %i.af to i64
  tail call void @llvm.memset.p0.i64(ptr nonnull align 8 %i.q, i8 0, i64 %i.ag, i1 false)
  br label %mi_heap_zalloc_aligned_at.exit

_mi_page_malloc.exit.i.i:                         ; preds = %bb.d, %bb.c
  %i.ah = tail call fastcc ptr @mi_heap_malloc_zero_aligned_at_fallback(ptr noundef %i.b, i64 noundef %0, i64 noundef %1, i64 noundef %2, i1 noundef zeroext true)
  br label %mi_heap_zalloc_aligned_at.exit

mi_heap_zalloc_aligned_at.exit:                   ; preds = %bb.a, %bb.b, %bb.f, %bb.g, %_mi_page_malloc.exit.i.i
  %.2.i.i = phi ptr [ null, %bb.a ], [ null, %bb.b ], [ %i.ah, %_mi_page_malloc.exit.i.i ], [ %i.q, %bb.g ], [ %i.q, %bb.f ]
  ret ptr %.2.i.i
}

; Function Attrs: nounwind uwtable
define hidden noalias ptr @mi_zalloc_aligned(i64 noundef %0, i64 noundef %1) local_unnamed_addr #2 {
bb.a:
  %i.a = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @_mi_heap_default)
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !54   ; 2 uses
  %i.c = icmp eq i64 %1, 0
  br i1 %i.c, label %mi_heap_zalloc_aligned.exit, label %bb.b, !prof !17

bb.b:                                             ; preds = %bb.a
  %i.d = tail call range(i64 1, 65) i64 @llvm.ctpop.i64(i64 %1)
  %i.e = icmp samesign ugt i64 %i.d, 1
  %i.f = icmp slt i64 %0, 0
  %or.cond.i.i.i = or i1 %i.f, %i.e
  br i1 %or.cond.i.i.i, label %mi_heap_zalloc_aligned.exit, label %bb.c, !prof !90

bb.c:                                             ; preds = %bb.b
  %i.g = icmp samesign ult i64 %0, 1025
  %i.h = icmp ule i64 %1, %0
  %i.i = and i1 %i.g, %i.h
  br i1 %i.i, label %bb.d, label %_mi_page_malloc.exit.i.i.i, !prof !55

bb.d:                                             ; preds = %bb.c
  %i.j = add nsw i64 %1, -1
  %i.k = add nuw nsw i64 %0, 7
  %i.l = lshr i64 %i.k, 3
  %i.m = getelementptr i8, ptr %i.b, i64 8
  %i.n = getelementptr [8 x i8], ptr %i.m, i64 %i.l
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !53   ; 4 uses
  %i.p = getelementptr i8, ptr %i.o, i64 16       ; 2 uses
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !11   ; 8 uses
  %i.r = ptrtoint ptr %i.q to i64
  %i.s = and i64 %i.j, %i.r
  %i.t = icmp ne i64 %i.s, 0
  %i.u = icmp eq ptr %i.q, null
  %.not31.i.i.i = or i1 %i.u, %i.t
  br i1 %.not31.i.i.i, label %_mi_page_malloc.exit.i.i.i, label %bb.e, !prof !17

bb.e:                                             ; preds = %bb.d
  %i.v = getelementptr i8, ptr %i.o, i64 24       ; 2 uses
  %i.w = load i32, ptr %i.v, align 8, !tbaa !18
  %i.x = add i32 %i.w, 1
  store i32 %i.x, ptr %i.v, align 8, !tbaa !18
  %i.y = load atomic i64, ptr %i.q monotonic, align 8
  %i.z = inttoptr i64 %i.y to ptr
  store ptr %i.z, ptr %i.p, align 8, !tbaa !11
  %i.aa = getelementptr i8, ptr %i.o, i64 15
  %i.ab = load i8, ptr %i.aa, align 1
  %i.ac = and i8 %i.ab, 1
  %.not.i.i.i.i = icmp eq i8 %i.ac, 0
  br i1 %.not.i.i.i.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  store atomic i64 0, ptr %i.q seq_cst, align 8, !tbaa !19
  br label %mi_heap_zalloc_aligned.exit

bb.g:                                             ; preds = %bb.e
  call void @llvm.assume(i1 true) [ "align"(ptr %i.q, i64 8) ]
  %i.ad = getelementptr i8, ptr %i.o, i64 28
  %i.ae = load i32, ptr %i.ad, align 4, !tbaa !21
  %i.af = zext i32 %i.ae to i64
  tail call void @llvm.memset.p0.i64(ptr nonnull align 8 %i.q, i8 0, i64 %i.af, i1 false)
  br label %mi_heap_zalloc_aligned.exit

_mi_page_malloc.exit.i.i.i:                       ; preds = %bb.d, %bb.c
  %i.ag = tail call fastcc ptr @mi_heap_malloc_zero_aligned_at_fallback(ptr noundef %i.b, i64 noundef %0, i64 noundef %1, i64 noundef 0, i1 noundef zeroext true)
  br label %mi_heap_zalloc_aligned.exit

mi_heap_zalloc_aligned.exit:                      ; preds = %bb.a, %bb.b, %bb.f, %bb.g, %_mi_page_malloc.exit.i.i.i
  %.2.i.i.i = phi ptr [ null, %bb.a ], [ null, %bb.b ], [ %i.ag, %_mi_page_malloc.exit.i.i.i ], [ %i.q, %bb.g ], [ %i.q, %bb.f ]
  ret ptr %.2.i.i.i
}

; Function Attrs: nounwind uwtable
define hidden noalias ptr @mi_calloc_aligned_at(i64 noundef %0, i64 noundef %1, i64 noundef %2, i64 noundef %3) local_unnamed_addr #2 {
bb.a:
  %i.a = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @_mi_heap_default)
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !54   ; 2 uses
  %.not.i = icmp eq i64 %0, 1
  br i1 %.not.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = tail call { i64, i1 } @llvm.umul.with.overflow.i64(i64 range(i64 2, 1) %0, i64 %1) ; 2 uses
  %i.d = extractvalue { i64, i1 } %i.c, 1
  %i.e = extractvalue { i64, i1 } %i.c, 0
  br i1 %i.d, label %mi_heap_calloc_aligned_at.exit, label %bb.c, !prof !17

bb.c:                                             ; preds = %bb.b, %bb.a
  %storemerge.i.ph.i = phi i64 [ %1, %bb.a ], [ %i.e, %bb.b ] ; 5 uses
  %i.f = icmp eq i64 %2, 0
  br i1 %i.f, label %mi_heap_calloc_aligned_at.exit, label %bb.d, !prof !17

bb.d:                                             ; preds = %bb.c
  %i.g = tail call range(i64 1, 65) i64 @llvm.ctpop.i64(i64 %2)
  %i.h = icmp samesign ugt i64 %i.g, 1
  %i.i = icmp slt i64 %storemerge.i.ph.i, 0
  %or.cond.i.i.i = or i1 %i.h, %i.i
  br i1 %or.cond.i.i.i, label %mi_heap_calloc_aligned_at.exit, label %bb.e, !prof !90

bb.e:                                             ; preds = %bb.d
  %i.j = icmp samesign ult i64 %storemerge.i.ph.i, 1025
  %i.k = icmp ule i64 %2, %storemerge.i.ph.i
  %i.l = and i1 %i.j, %i.k
  br i1 %i.l, label %bb.f, label %_mi_page_malloc.exit.i.i.i, !prof !55

bb.f:                                             ; preds = %bb.e
  %i.m = add nsw i64 %2, -1
  %i.n = add nuw nsw i64 %storemerge.i.ph.i, 7
  %i.o = lshr i64 %i.n, 3
  %i.p = getelementptr i8, ptr %i.b, i64 8
  %i.q = getelementptr [8 x i8], ptr %i.p, i64 %i.o
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !53   ; 4 uses
  %i.s = getelementptr i8, ptr %i.r, i64 16       ; 2 uses
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !11   ; 8 uses
  %i.u = ptrtoint ptr %i.t to i64
  %i.v = add i64 %3, %i.u
  %i.w = and i64 %i.v, %i.m
  %i.x = icmp ne i64 %i.w, 0
  %i.y = icmp eq ptr %i.t, null
  %.not31.i.i.i = or i1 %i.y, %i.x
  br i1 %.not31.i.i.i, label %_mi_page_malloc.exit.i.i.i, label %bb.g, !prof !17

bb.g:                                             ; preds = %bb.f
  %i.z = getelementptr i8, ptr %i.r, i64 24       ; 2 uses
  %i.aa = load i32, ptr %i.z, align 8, !tbaa !18
  %i.ab = add i32 %i.aa, 1
  store i32 %i.ab, ptr %i.z, align 8, !tbaa !18
  %i.ac = load atomic i64, ptr %i.t monotonic, align 8
  %i.ad = inttoptr i64 %i.ac to ptr
  store ptr %i.ad, ptr %i.s, align 8, !tbaa !11
  %i.ae = getelementptr i8, ptr %i.r, i64 15
  %i.af = load i8, ptr %i.ae, align 1
  %i.ag = and i8 %i.af, 1
  %.not.i.i.i.i = icmp eq i8 %i.ag, 0
  br i1 %.not.i.i.i.i, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  store atomic i64 0, ptr %i.t seq_cst, align 8, !tbaa !19
  br label %mi_heap_calloc_aligned_at.exit

bb.i:                                             ; preds = %bb.g
  call void @llvm.assume(i1 true) [ "align"(ptr %i.t, i64 8) ]
  %i.ah = getelementptr i8, ptr %i.r, i64 28
  %i.ai = load i32, ptr %i.ah, align 4, !tbaa !21
  %i.aj = zext i32 %i.ai to i64
  tail call void @llvm.memset.p0.i64(ptr nonnull align 8 %i.t, i8 0, i64 %i.aj, i1 false)
  br label %mi_heap_calloc_aligned_at.exit

_mi_page_malloc.exit.i.i.i:                       ; preds = %bb.f, %bb.e
  %i.ak = tail call fastcc ptr @mi_heap_malloc_zero_aligned_at_fallback(ptr noundef %i.b, i64 noundef %storemerge.i.ph.i, i64 noundef %2, i64 noundef %3, i1 noundef zeroext true)
  br label %mi_heap_calloc_aligned_at.exit

mi_heap_calloc_aligned_at.exit:                   ; preds = %bb.b, %bb.c, %bb.d, %bb.h, %bb.i, %_mi_page_malloc.exit.i.i.i
  %.0.i = phi ptr [ null, %bb.b ], [ null, %bb.c ], [ null, %bb.d ], [ %i.ak, %_mi_page_malloc.exit.i.i.i ], [ %i.t, %bb.i ], [ %i.t, %bb.h ]
  ret ptr %.0.i
}

; Function Attrs: nounwind uwtable
define hidden noalias ptr @mi_calloc_aligned(i64 noundef %0, i64 noundef %1, i64 noundef %2) local_unnamed_addr #2 {
bb.a:
  %i.a = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @_mi_heap_default)
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !54   ; 2 uses
  %.not.i.i = icmp eq i64 %0, 1
  br i1 %.not.i.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = tail call { i64, i1 } @llvm.umul.with.overflow.i64(i64 range(i64 2, 1) %0, i64 %1) ; 2 uses
  %i.d = extractvalue { i64, i1 } %i.c, 1
  %i.e = extractvalue { i64, i1 } %i.c, 0
  br i1 %i.d, label %mi_heap_calloc_aligned.exit, label %bb.c, !prof !17

bb.c:                                             ; preds = %bb.b, %bb.a
  %storemerge.i.ph.i.i = phi i64 [ %1, %bb.a ], [ %i.e, %bb.b ] ; 5 uses
  %i.f = icmp eq i64 %2, 0
  br i1 %i.f, label %mi_heap_calloc_aligned.exit, label %bb.d, !prof !17

bb.d:                                             ; preds = %bb.c
  %i.g = tail call range(i64 1, 65) i64 @llvm.ctpop.i64(i64 %2)
  %i.h = icmp samesign ugt i64 %i.g, 1
  %i.i = icmp slt i64 %storemerge.i.ph.i.i, 0
  %or.cond.i.i.i.i = or i1 %i.h, %i.i
  br i1 %or.cond.i.i.i.i, label %mi_heap_calloc_aligned.exit, label %bb.e, !prof !90

bb.e:                                             ; preds = %bb.d
  %i.j = icmp samesign ult i64 %storemerge.i.ph.i.i, 1025
  %i.k = icmp ule i64 %2, %storemerge.i.ph.i.i
  %i.l = and i1 %i.j, %i.k
  br i1 %i.l, label %bb.f, label %_mi_page_malloc.exit.i.i.i.i, !prof !55

bb.f:                                             ; preds = %bb.e
  %i.m = add nsw i64 %2, -1
  %i.n = add nuw nsw i64 %storemerge.i.ph.i.i, 7
  %i.o = lshr i64 %i.n, 3
  %i.p = getelementptr i8, ptr %i.b, i64 8
  %i.q = getelementptr [8 x i8], ptr %i.p, i64 %i.o
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !53   ; 4 uses
  %i.s = getelementptr i8, ptr %i.r, i64 16       ; 2 uses
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !11   ; 8 uses
  %i.u = ptrtoint ptr %i.t to i64
  %i.v = and i64 %i.m, %i.u
  %i.w = icmp ne i64 %i.v, 0
  %i.x = icmp eq ptr %i.t, null
  %.not31.i.i.i.i = or i1 %i.x, %i.w
  br i1 %.not31.i.i.i.i, label %_mi_page_malloc.exit.i.i.i.i, label %bb.g, !prof !17

bb.g:                                             ; preds = %bb.f
  %i.y = getelementptr i8, ptr %i.r, i64 24       ; 2 uses
  %i.z = load i32, ptr %i.y, align 8, !tbaa !18
  %i.aa = add i32 %i.z, 1
  store i32 %i.aa, ptr %i.y, align 8, !tbaa !18
  %i.ab = load atomic i64, ptr %i.t monotonic, align 8
  %i.ac = inttoptr i64 %i.ab to ptr
  store ptr %i.ac, ptr %i.s, align 8, !tbaa !11
  %i.ad = getelementptr i8, ptr %i.r, i64 15
  %i.ae = load i8, ptr %i.ad, align 1
  %i.af = and i8 %i.ae, 1
  %.not.i.i.i.i.i = icmp eq i8 %i.af, 0
  br i1 %.not.i.i.i.i.i, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  store atomic i64 0, ptr %i.t seq_cst, align 8, !tbaa !19
  br label %mi_heap_calloc_aligned.exit

bb.i:                                             ; preds = %bb.g
  call void @llvm.assume(i1 true) [ "align"(ptr %i.t, i64 8) ]
  %i.ag = getelementptr i8, ptr %i.r, i64 28
  %i.ah = load i32, ptr %i.ag, align 4, !tbaa !21
  %i.ai = zext i32 %i.ah to i64
  tail call void @llvm.memset.p0.i64(ptr nonnull align 8 %i.t, i8 0, i64 %i.ai, i1 false)
  br label %mi_heap_calloc_aligned.exit

_mi_page_malloc.exit.i.i.i.i:                     ; preds = %bb.f, %bb.e
  %i.aj = tail call fastcc ptr @mi_heap_malloc_zero_aligned_at_fallback(ptr noundef %i.b, i64 noundef %storemerge.i.ph.i.i, i64 noundef %2, i64 noundef 0, i1 noundef zeroext true)
  br label %mi_heap_calloc_aligned.exit

mi_heap_calloc_aligned.exit:                      ; preds = %bb.b, %bb.c, %bb.d, %bb.h, %bb.i, %_mi_page_malloc.exit.i.i.i.i
  %.0.i.i = phi ptr [ null, %bb.b ], [ null, %bb.c ], [ null, %bb.d ], [ %i.aj, %_mi_page_malloc.exit.i.i.i.i ], [ %i.t, %bb.i ], [ %i.t, %bb.h ]
  ret ptr %.0.i.i
}

; Function Attrs: nounwind uwtable
define hidden ptr @mi_heap_realloc_aligned_at(ptr noundef %0, ptr noundef %1, i64 noundef %2, i64 noundef %3, i64 noundef %4) local_unnamed_addr #2 {
bb.a:
  %i.a = tail call fastcc ptr @mi_heap_realloc_zero_aligned_at(ptr noundef %0, ptr noundef %1, i64 noundef %2, i64 noundef %3, i64 noundef %4, i1 noundef zeroext false)
  ret ptr %i.a
}

; Function Attrs: nounwind uwtable
define internal fastcc ptr @mi_heap_realloc_zero_aligned_at(ptr noundef %0, ptr noundef %1, i64 noundef %2, i64 noundef %3, i64 noundef %4, i1 noundef zeroext %5) unnamed_addr #2 {
bb.a:
  %i.a = icmp ult i64 %3, 9
  br i1 %i.a, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.b = tail call ptr @_mi_heap_realloc_zero(ptr noundef %0, ptr noundef %1, i64 noundef %2, i1 noundef zeroext %5)
  br label %mi_heap_malloc_zero_aligned_at.exit

bb.c:                                             ; preds = %bb.a
  %i.c = icmp eq ptr %1, null
  br i1 %i.c, label %bb.d, label %bb.k

bb.d:                                             ; preds = %bb.c
  %i.d = tail call range(i64 1, 65) i64 @llvm.ctpop.i64(i64 %3)
  %i.e = icmp samesign ugt i64 %i.d, 1
  %i.f = icmp slt i64 %2, 0
  %or.cond.i = or i1 %i.f, %i.e
  br i1 %or.cond.i, label %mi_heap_malloc_zero_aligned_at.exit, label %bb.e, !prof !90

bb.e:                                             ; preds = %bb.d
  %i.g = icmp samesign ult i64 %2, 1025
  %i.h = icmp ule i64 %3, %2
  %i.i = and i1 %i.g, %i.h
  br i1 %i.i, label %bb.f, label %_mi_page_malloc.exit.i, !prof !55

bb.f:                                             ; preds = %bb.e
  %i.j = add nsw i64 %3, -1
  %i.k = add nuw nsw i64 %2, 7
  %i.l = lshr i64 %i.k, 3
  %i.m = getelementptr i8, ptr %0, i64 8
  %i.n = getelementptr [8 x i8], ptr %i.m, i64 %i.l
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !53   ; 4 uses
  %i.p = getelementptr i8, ptr %i.o, i64 16       ; 2 uses
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !11   ; 9 uses
  %i.r = ptrtoint ptr %i.q to i64
  %i.s = add i64 %4, %i.r
  %i.t = and i64 %i.s, %i.j
  %i.u = icmp ne i64 %i.t, 0
  %i.v = icmp eq ptr %i.q, null
  %.not31.i = or i1 %i.v, %i.u
  br i1 %.not31.i, label %_mi_page_malloc.exit.i, label %bb.g, !prof !17

bb.g:                                             ; preds = %bb.f
  %i.w = getelementptr i8, ptr %i.o, i64 24       ; 2 uses
  %i.x = load i32, ptr %i.w, align 8, !tbaa !18
  %i.y = add i32 %i.x, 1
  store i32 %i.y, ptr %i.w, align 8, !tbaa !18
  %i.z = load atomic i64, ptr %i.q monotonic, align 8
  %i.aa = inttoptr i64 %i.z to ptr
  store ptr %i.aa, ptr %i.p, align 8, !tbaa !11
  br i1 %5, label %bb.h, label %mi_heap_malloc_zero_aligned_at.exit, !prof !17

bb.h:                                             ; preds = %bb.g
  %i.ab = getelementptr i8, ptr %i.o, i64 15
  %i.ac = load i8, ptr %i.ab, align 1
  %i.ad = and i8 %i.ac, 1
  %.not.i.i = icmp eq i8 %i.ad, 0
  br i1 %.not.i.i, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  store atomic i64 0, ptr %i.q seq_cst, align 8, !tbaa !19
  br label %mi_heap_malloc_zero_aligned_at.exit

bb.j:                                             ; preds = %bb.h
  call void @llvm.assume(i1 true) [ "align"(ptr %i.q, i64 8) ]
  %i.ae = getelementptr i8, ptr %i.o, i64 28
  %i.af = load i32, ptr %i.ae, align 4, !tbaa !21
  %i.ag = zext i32 %i.af to i64
  tail call void @llvm.memset.p0.i64(ptr nonnull align 8 %i.q, i8 0, i64 %i.ag, i1 false)
  br label %mi_heap_malloc_zero_aligned_at.exit

_mi_page_malloc.exit.i:                           ; preds = %bb.f, %bb.e
  %i.ah = tail call fastcc ptr @mi_heap_malloc_zero_aligned_at_fallback(ptr noundef %0, i64 noundef %2, i64 noundef %3, i64 noundef %4, i1 noundef zeroext %5)
  br label %mi_heap_malloc_zero_aligned_at.exit

bb.k:                                             ; preds = %bb.c
  %i.ai = ptrtoint ptr %1 to i64                  ; 5 uses
  %i.aj = add i64 %i.ai, -1
  %i.ak = and i64 %i.aj, -33554432                ; 2 uses
  %i.al = inttoptr i64 %i.ak to ptr               ; 2 uses
  %i.am = sub i64 %i.ai, %i.ak
  %i.an = lshr i64 %i.am, 16
  %i.ao = getelementptr i8, ptr %i.al, i64 264
  %i.ap = getelementptr [80 x i8], ptr %i.ao, i64 %i.an ; 2 uses
  %i.aq = getelementptr i8, ptr %i.ap, i64 4
  %i.ar = load i32, ptr %i.aq, align 4, !tbaa !59
  %i.as = zext i32 %i.ar to i64
  %i.at = sub nsw i64 0, %i.as
  %i.au = getelementptr i8, ptr %i.ap, i64 %i.at  ; 4 uses
  %i.av = getelementptr i8, ptr %i.au, i64 14
  %.val.i.i = load i8, ptr %i.av, align 2
  %i.aw = and i8 %.val.i.i, 2
  %.not.i.i52 = icmp eq i8 %i.aw, 0
  br i1 %.not.i.i52, label %bb.l, label %bb.n, !prof !55

bb.l:                                             ; preds = %bb.k
  %i.ax = getelementptr i8, ptr %i.au, i64 28
  %i.ay = load i32, ptr %i.ax, align 4, !tbaa !21 ; 2 uses
  %i.az = icmp sgt i32 %i.ay, -1
  br i1 %i.az, label %bb.m, label %_mi_segment_page_start.exit.i.i.i.i.i, !prof !55

bb.m:                                             ; preds = %bb.l
  %i.ba = zext nneg i32 %i.ay to i64
  br label %mi_usable_size.exit

_mi_segment_page_start.exit.i.i.i.i.i:            ; preds = %bb.l
  %i.bb = load i32, ptr %i.au, align 8, !tbaa !52
  %i.bc = zext i32 %i.bb to i64
  %i.bd = shl nuw nsw i64 %i.bc, 16
  br label %mi_usable_size.exit

bb.n:                                             ; preds = %bb.k
  %i.be = tail call fastcc i64 @mi_page_usable_aligned_size_of(ptr noundef nonnull %i.al, ptr noundef %i.au, ptr noundef nonnull %1)
  br label %mi_usable_size.exit

mi_usable_size.exit:                              ; preds = %bb.m, %_mi_segment_page_start.exit.i.i.i.i.i, %bb.n
  %.1.i.i = phi i64 [ %i.bd, %_mi_segment_page_start.exit.i.i.i.i.i ], [ %i.be, %bb.n ], [ %i.ba, %bb.m ] ; 5 uses
  %.not = icmp ugt i64 %2, %.1.i.i                ; 2 uses
  br i1 %.not, label %bb.q, label %bb.o

bb.o:                                             ; preds = %mi_usable_size.exit
  %i.bf = lshr i64 %.1.i.i, 1
  %i.bg = sub i64 %.1.i.i, %i.bf
  %.not50 = icmp ult i64 %2, %i.bg
  br i1 %.not50, label %bb.q, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.bh = add i64 %4, %i.ai
  %i.bi = urem i64 %i.bh, %3
  %i.bj = icmp eq i64 %i.bi, 0
  br i1 %i.bj, label %mi_heap_malloc_zero_aligned_at.exit, label %bb.q

bb.q:                                             ; preds = %mi_usable_size.exit, %bb.o, %bb.p
  %i.bk = tail call range(i64 1, 65) i64 @llvm.ctpop.i64(i64 %3)
  %i.bl = icmp samesign ugt i64 %i.bk, 1
  %i.bm = icmp slt i64 %2, 0
  %or.cond.i.i = or i1 %i.bm, %i.bl
  br i1 %or.cond.i.i, label %mi_heap_malloc_zero_aligned_at.exit, label %bb.r, !prof !90

bb.r:                                             ; preds = %bb.q
  %i.bn = icmp samesign ult i64 %2, 1025
  %i.bo = icmp ule i64 %3, %2
  %i.bp = and i1 %i.bn, %i.bo
  br i1 %i.bp, label %bb.s, label %mi_heap_malloc_aligned_at.exit, !prof !55

bb.s:                                             ; preds = %bb.r
  %i.bq = add nsw i64 %3, -1
  %i.br = add nuw nsw i64 %2, 7
  %i.bs = lshr i64 %i.br, 3
  %i.bt = getelementptr i8, ptr %0, i64 8
  %i.bu = getelementptr [8 x i8], ptr %i.bt, i64 %i.bs
  %i.bv = load ptr, ptr %i.bu, align 8, !tbaa !53 ; 2 uses
  %i.bw = getelementptr i8, ptr %i.bv, i64 16     ; 2 uses
  %i.bx = load ptr, ptr %i.bw, align 8, !tbaa !11 ; 4 uses
  %i.by = ptrtoint ptr %i.bx to i64
  %i.bz = add i64 %4, %i.by
  %i.ca = and i64 %i.bz, %i.bq
  %i.cb = icmp ne i64 %i.ca, 0
  %i.cc = icmp eq ptr %i.bx, null
  %.not31.i.i = or i1 %i.cc, %i.cb
  br i1 %.not31.i.i, label %mi_heap_malloc_aligned_at.exit, label %mi_heap_malloc_aligned_at.exit.thread55, !prof !17

mi_heap_malloc_aligned_at.exit.thread55:          ; preds = %bb.s
  %i.cd = getelementptr i8, ptr %i.bv, i64 24     ; 2 uses
  %i.ce = load i32, ptr %i.cd, align 8, !tbaa !18
  %i.cf = add i32 %i.ce, 1
  store i32 %i.cf, ptr %i.cd, align 8, !tbaa !18
  %i.cg = load atomic i64, ptr %i.bx monotonic, align 8
  %i.ch = inttoptr i64 %i.cg to ptr
  store ptr %i.ch, ptr %i.bw, align 8, !tbaa !11
  br label %bb.t

mi_heap_malloc_aligned_at.exit:                   ; preds = %bb.r, %bb.s
  %i.ci = tail call fastcc ptr @mi_heap_malloc_zero_aligned_at_fallback(ptr noundef %0, i64 noundef %2, i64 noundef %3, i64 noundef %4, i1 noundef zeroext false) ; 2 uses
  %.not51 = icmp eq ptr %i.ci, null
  br i1 %.not51, label %mi_heap_malloc_zero_aligned_at.exit, label %bb.t

bb.t:                                             ; preds = %mi_heap_malloc_aligned_at.exit.thread55, %mi_heap_malloc_aligned_at.exit
  %.2.i.i58 = phi ptr [ %i.bx, %mi_heap_malloc_aligned_at.exit.thread55 ], [ %i.ci, %mi_heap_malloc_aligned_at.exit ] ; 7 uses
  %or.cond = and i1 %5, %.not
  br i1 %or.cond, label %bb.u, label %bb.v

bb.u:                                             ; preds = %bb.t
  %i.cj = tail call i64 @llvm.usub.sat.i64(i64 %.1.i.i, i64 8) ; 2 uses
  %i.ck = getelementptr i8, ptr %.2.i.i58, i64 %i.cj
  %i.cl = sub i64 %2, %i.cj
  tail call void @llvm.memset.p0.i64(ptr align 1 %i.ck, i8 0, i64 %i.cl, i1 false)
  br label %bb.v

bb.v:                                             ; preds = %bb.t, %bb.u
  call void @llvm.assume(i1 true) [ "align"(ptr %.2.i.i58, i64 8), "align"(ptr %1, i64 8) ]
  %6 = tail call i64 @llvm.umin.i64(i64 %2, i64 %.1.i.i)
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %.2.i.i58, ptr nonnull readonly align 8 %1, i64 %6, i1 false)
  %i.cm = add i64 %i.ai, -8
  %i.cn = and i64 %i.cm, -33554432                ; 2 uses
  %i.co = inttoptr i64 %i.cn to ptr               ; 4 uses
  %i.cp = tail call ptr asm "movq %fs:$1, $0", "=r,*m,~{dirflag},~{fpsr},~{flags}"(ptr elementtype(ptr) null) #60, !srcloc !58
  %i.cq = ptrtoint ptr %i.cp to i64
  %i.cr = getelementptr i8, ptr %i.co, i64 256
  %i.cs = load atomic i64, ptr %i.cr monotonic, align 256
  %i.ct = icmp eq i64 %i.cs, %i.cq
  %i.cu = sub i64 %i.ai, %i.cn
  %i.cv = lshr i64 %i.cu, 16
  %i.cw = getelementptr i8, ptr %i.co, i64 264
  %i.cx = getelementptr [80 x i8], ptr %i.cw, i64 %i.cv ; 2 uses
  %i.cy = getelementptr i8, ptr %i.cx, i64 4
  %i.cz = load i32, ptr %i.cy, align 4, !tbaa !59
  %i.da = zext i32 %i.cz to i64
  %i.db = sub nsw i64 0, %i.da
  %i.dc = getelementptr i8, ptr %i.cx, i64 %i.db  ; 6 uses
  br i1 %i.ct, label %bb.w, label %bb.aa, !prof !55

bb.w:                                             ; preds = %bb.v
  %i.dd = getelementptr i8, ptr %i.dc, i64 14
  %i.de = load i8, ptr %i.dd, align 2, !tbaa !60
  %i.df = icmp eq i8 %i.de, 0
  br i1 %i.df, label %bb.x, label %bb.z, !prof !55

bb.x:                                             ; preds = %bb.w
  %i.dg = getelementptr i8, ptr %i.dc, i64 32     ; 2 uses
  %i.dh = load ptr, ptr %i.dg, align 8, !tbaa !57
  %i.di = ptrtoint ptr %i.dh to i64
  store atomic i64 %i.di, ptr %1 monotonic, align 8
  store ptr %1, ptr %i.dg, align 8, !tbaa !57
  %i.dj = getelementptr i8, ptr %i.dc, i64 24     ; 2 uses
  %i.dk = load i32, ptr %i.dj, align 8, !tbaa !18
  %i.dl = add i32 %i.dk, -1                       ; 2 uses
  store i32 %i.dl, ptr %i.dj, align 8, !tbaa !18
  %i.dm = icmp eq i32 %i.dl, 0
  br i1 %i.dm, label %bb.y, label %mi_heap_malloc_zero_aligned_at.exit, !prof !17

bb.y:                                             ; preds = %bb.x
  tail call void @_mi_page_retire(ptr noundef %i.dc)
  br label %mi_heap_malloc_zero_aligned_at.exit

bb.z:                                             ; preds = %bb.w
  tail call void @_mi_free_generic(ptr noundef nonnull %i.co, ptr noundef %i.dc, i1 noundef zeroext true, ptr noundef nonnull %1)
  br label %mi_heap_malloc_zero_aligned_at.exit

bb.aa:                                            ; preds = %bb.v
  tail call void @_mi_free_generic(ptr noundef nonnull %i.co, ptr noundef %i.dc, i1 noundef zeroext false, ptr noundef nonnull %1)
  br label %mi_heap_malloc_zero_aligned_at.exit

mi_heap_malloc_zero_aligned_at.exit:              ; preds = %bb.q, %bb.aa, %bb.z, %bb.y, %bb.x, %_mi_page_malloc.exit.i, %bb.j, %bb.i, %bb.g, %bb.d, %bb.p, %mi_heap_malloc_aligned_at.exit, %bb.b
  %.1 = phi ptr [ %i.b, %bb.b ], [ null, %mi_heap_malloc_aligned_at.exit ], [ %1, %bb.p ], [ %.2.i.i58, %bb.aa ], [ %i.q, %bb.g ], [ null, %bb.d ], [ %i.ah, %_mi_page_malloc.exit.i ], [ %i.q, %bb.j ], [ %i.q, %bb.i ], [ %.2.i.i58, %bb.x ], [ %.2.i.i58, %bb.y ], [ %.2.i.i58, %bb.z ], [ null, %bb.q ]
  ret ptr %.1
}

; Function Attrs: nounwind uwtable
define hidden ptr @mi_heap_realloc_aligned(ptr noundef %0, ptr noundef %1, i64 noundef %2, i64 noundef %3) local_unnamed_addr #2 {
bb.a:
  %i.a = icmp ult i64 %3, 9
  br i1 %i.a, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.b = tail call ptr @_mi_heap_realloc_zero(ptr noundef %0, ptr noundef %1, i64 noundef %2, i1 noundef zeroext false)
  br label %mi_heap_realloc_zero_aligned.exit

bb.c:                                             ; preds = %bb.a
  %i.c = ptrtoint ptr %1 to i64
  %i.d = urem i64 %i.c, %3
  %i.e = tail call fastcc ptr @mi_heap_realloc_zero_aligned_at(ptr noundef %0, ptr noundef %1, i64 noundef %2, i64 noundef %3, i64 noundef %i.d, i1 noundef zeroext false)
  br label %mi_heap_realloc_zero_aligned.exit

mi_heap_realloc_zero_aligned.exit:                ; preds = %bb.b, %bb.c
  %.0.i = phi ptr [ %i.b, %bb.b ], [ %i.e, %bb.c ]
  ret ptr %.0.i
}

; Function Attrs: nounwind uwtable
define hidden ptr @mi_heap_rezalloc_aligned_at(ptr noundef %0, ptr noundef %1, i64 noundef %2, i64 noundef %3, i64 noundef %4) local_unnamed_addr #2 {
bb.a:
  %i.a = tail call fastcc ptr @mi_heap_realloc_zero_aligned_at(ptr noundef %0, ptr noundef %1, i64 noundef %2, i64 noundef %3, i64 noundef %4, i1 noundef zeroext true)
  ret ptr %i.a
}

; Function Attrs: nounwind uwtable
define hidden ptr @mi_heap_rezalloc_aligned(ptr noundef %0, ptr noundef %1, i64 noundef %2, i64 noundef %3) local_unnamed_addr #2 {
bb.a:
  %i.a = icmp ult i64 %3, 9
  br i1 %i.a, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.b = tail call ptr @_mi_heap_realloc_zero(ptr noundef %0, ptr noundef %1, i64 noundef %2, i1 noundef zeroext true)
  br label %mi_heap_realloc_zero_aligned.exit

bb.c:                                             ; preds = %bb.a
  %i.c = ptrtoint ptr %1 to i64
  %i.d = urem i64 %i.c, %3
  %i.e = tail call fastcc ptr @mi_heap_realloc_zero_aligned_at(ptr noundef %0, ptr noundef %1, i64 noundef %2, i64 noundef %3, i64 noundef %i.d, i1 noundef zeroext true)
  br label %mi_heap_realloc_zero_aligned.exit

mi_heap_realloc_zero_aligned.exit:                ; preds = %bb.b, %bb.c
  %.0.i = phi ptr [ %i.b, %bb.b ], [ %i.e, %bb.c ]
  ret ptr %.0.i
}

; Function Attrs: nounwind uwtable
define hidden ptr @mi_heap_recalloc_aligned_at(ptr noundef %0, ptr noundef %1, i64 noundef %2, i64 noundef %3, i64 noundef %4, i64 noundef %5) local_unnamed_addr #2 {
bb.a:
  %.not = icmp eq i64 %2, 1
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = tail call { i64, i1 } @llvm.umul.with.overflow.i64(i64 range(i64 2, 1) %2, i64 %3) ; 2 uses
  %i.b = extractvalue { i64, i1 } %i.a, 1
  %i.c = extractvalue { i64, i1 } %i.a, 0
  br i1 %i.b, label %mi_count_size_overflow.exit, label %bb.c, !prof !17

bb.c:                                             ; preds = %bb.b, %bb.a
  %storemerge.i.ph = phi i64 [ %3, %bb.a ], [ %i.c, %bb.b ]
  %i.d = tail call fastcc ptr @mi_heap_realloc_zero_aligned_at(ptr noundef %0, ptr noundef %1, i64 noundef %storemerge.i.ph, i64 noundef %4, i64 noundef %5, i1 noundef zeroext true)
  br label %mi_count_size_overflow.exit

mi_count_size_overflow.exit:                      ; preds = %bb.b, %bb.c
  %.0 = phi ptr [ %i.d, %bb.c ], [ null, %bb.b ]
  ret ptr %.0
}

; Function Attrs: nounwind uwtable
define hidden ptr @mi_heap_recalloc_aligned(ptr noundef %0, ptr noundef %1, i64 noundef %2, i64 noundef %3, i64 noundef %4) local_unnamed_addr #2 {
bb.a:
  %.not = icmp eq i64 %2, 1
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = tail call { i64, i1 } @llvm.umul.with.overflow.i64(i64 range(i64 2, 1) %2, i64 %3) ; 2 uses
  %i.b = extractvalue { i64, i1 } %i.a, 1
  %i.c = extractvalue { i64, i1 } %i.a, 0
  br i1 %i.b, label %mi_count_size_overflow.exit, label %bb.c, !prof !17

bb.c:                                             ; preds = %bb.b, %bb.a
  %storemerge.i.ph = phi i64 [ %3, %bb.a ], [ %i.c, %bb.b ] ; 2 uses
  %i.d = icmp ult i64 %4, 9
  br i1 %i.d, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.e = tail call ptr @_mi_heap_realloc_zero(ptr noundef %0, ptr noundef %1, i64 noundef %storemerge.i.ph, i1 noundef zeroext true)
  br label %mi_count_size_overflow.exit

bb.e:                                             ; preds = %bb.c
  %i.f = ptrtoint ptr %1 to i64
  %i.g = urem i64 %i.f, %4
  %i.h = tail call fastcc ptr @mi_heap_realloc_zero_aligned_at(ptr noundef %0, ptr noundef %1, i64 noundef %storemerge.i.ph, i64 noundef %4, i64 noundef %i.g, i1 noundef zeroext true)
  br label %mi_count_size_overflow.exit

mi_count_size_overflow.exit:                      ; preds = %bb.e, %bb.d, %bb.b
  %.0 = phi ptr [ null, %bb.b ], [ %i.e, %bb.d ], [ %i.h, %bb.e ]
  ret ptr %.0
}

; Function Attrs: nounwind uwtable
define hidden ptr @mi_realloc_aligned_at(ptr noundef %0, i64 noundef %1, i64 noundef %2, i64 noundef %3) local_unnamed_addr #2 {
bb.a:
  %i.a = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @_mi_heap_default)
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !54
  %i.c = tail call fastcc ptr @mi_heap_realloc_zero_aligned_at(ptr noundef %i.b, ptr noundef %0, i64 noundef %1, i64 noundef %2, i64 noundef %3, i1 noundef zeroext false)
  ret ptr %i.c
}

; Function Attrs: nounwind uwtable
define hidden ptr @mi_realloc_aligned(ptr noundef %0, i64 noundef %1, i64 noundef %2) local_unnamed_addr #2 {
bb.a:
  %i.a = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @_mi_heap_default)
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !54   ; 2 uses
  %i.c = icmp ult i64 %2, 9
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.d = tail call ptr @_mi_heap_realloc_zero(ptr noundef %i.b, ptr noundef %0, i64 noundef %1, i1 noundef zeroext false)
  br label %mi_heap_realloc_aligned.exit

bb.c:                                             ; preds = %bb.a
  %i.e = ptrtoint ptr %0 to i64
  %i.f = urem i64 %i.e, %2
  %i.g = tail call fastcc ptr @mi_heap_realloc_zero_aligned_at(ptr noundef %i.b, ptr noundef %0, i64 noundef %1, i64 noundef %2, i64 noundef %i.f, i1 noundef zeroext false)
  br label %mi_heap_realloc_aligned.exit

mi_heap_realloc_aligned.exit:                     ; preds = %bb.b, %bb.c
  %.0.i.i = phi ptr [ %i.d, %bb.b ], [ %i.g, %bb.c ]
  ret ptr %.0.i.i
}

; Function Attrs: nounwind uwtable
define hidden ptr @mi_rezalloc_aligned_at(ptr noundef %0, i64 noundef %1, i64 noundef %2, i64 noundef %3) local_unnamed_addr #2 {
bb.a:
  %i.a = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @_mi_heap_default)
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !54
  %i.c = tail call fastcc ptr @mi_heap_realloc_zero_aligned_at(ptr noundef %i.b, ptr noundef %0, i64 noundef %1, i64 noundef %2, i64 noundef %3, i1 noundef zeroext true)
  ret ptr %i.c
}

end_hunk_2
begin_hunk_3_@_mi_random_next:bb.a
  %i.h = getelementptr [4 x i8], ptr %i.e, i64 %i.g ; 2 uses
  %i.i = load i32, ptr %i.h, align 4, !tbaa !7
  store i32 0, ptr %i.h, align 4, !tbaa !7
  %i.j = load i32, ptr %i.a, align 4, !tbaa !175
  %i.k = add i32 %i.j, -1                         ; 3 uses
  store i32 %i.k, ptr %i.a, align 4, !tbaa !175
  %i.l = icmp slt i32 %i.k, 1
  br i1 %i.l, label %bb.c, label %chacha_next32.exit2

bb.c:                                             ; preds = %chacha_next32.exit
  tail call fastcc void @chacha_block(ptr noundef nonnull %0)
  store i32 16, ptr %i.a, align 4, !tbaa !175
  br label %chacha_next32.exit2

chacha_next32.exit2:                              ; preds = %chacha_next32.exit, %bb.c
  %i.m = phi i32 [ 16, %bb.c ], [ %i.k, %chacha_next32.exit ]
  %i.n = zext i32 %i.i to i64
  %i.o = shl nuw i64 %i.n, 32
  %i.p = sub nsw i32 16, %i.m
  %i.q = sext i32 %i.p to i64
  %i.r = getelementptr [4 x i8], ptr %i.e, i64 %i.q ; 2 uses
  %i.s = load i32, ptr %i.r, align 4, !tbaa !7
  store i32 0, ptr %i.r, align 4, !tbaa !7
  %i.t = load i32, ptr %i.a, align 4, !tbaa !175
  %i.u = add i32 %i.t, -1
  store i32 %i.u, ptr %i.a, align 4, !tbaa !175
  %i.v = zext i32 %i.s to i64
  %i.w = or disjoint i64 %i.o, %i.v
  ret i64 %i.w
}

; Function Attrs: nounwind uwtable
define hidden void @_mi_heap_destroy_pages(ptr nofree noundef captures(address_is_null) %0) local_unnamed_addr #2 {
bb.a:
  %i.a = icmp eq ptr %0, null
  br i1 %i.a, label %mi_heap_visit_pages.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr i8, ptr %0, i64 3024
  %i.c = load i64, ptr %i.b, align 8, !tbaa !196
  %i.d = icmp eq i64 %i.c, 0
  br i1 %i.d, label %mi_heap_visit_pages.exit, label %.preheader.i

.preheader.i:                                     ; preds = %bb.b
  %i.e = getelementptr i8, ptr %0, i64 1040
  br label %bb.c

bb.c:                                             ; preds = %.critedge.i, %.preheader.i
  %.02229.i = phi i64 [ 0, %.preheader.i ], [ %i.bd, %.critedge.i ] ; 2 uses
  %i.f = getelementptr [24 x i8], ptr %i.e, i64 %.02229.i
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !64   ; 2 uses
  %.not.i8 = icmp eq ptr %i.g, null
  br i1 %.not.i8, label %.critedge.i, label %.lr.ph

.lr.ph:                                           ; preds = %bb.c, %_mi_heap_page_destroy.exit
  %.020.i9 = phi ptr [ %i.i, %_mi_heap_page_destroy.exit ], [ %i.g, %bb.c ] ; 6 uses
  %i.h = getelementptr i8, ptr %.020.i9, i64 56   ; 2 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !197  ; 2 uses
  %i.j = tail call zeroext i1 @_mi_page_try_use_delayed_free(ptr noundef nonnull %.020.i9, i32 noundef 3, i1 noundef zeroext false)
  br i1 %i.j, label %mi_page_block_size.exit.i, label %.lr.ph.i.i.preheader

.lr.ph.i.i.preheader:                             ; preds = %.lr.ph
  %i.k = getelementptr i8, ptr %.020.i9, i64 40   ; 10 uses
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.critedge.4.i, %.lr.ph.i.i.preheader
  tail call void @llvm.x86.sse2.pause()
  br label %.critedge.i2

.critedge.i2:                                     ; preds = %bb.h, %.lr.ph.i.i
  %i.l = load atomic i64, ptr %i.k acquire, align 8 ; 3 uses
  %i.m = trunc i64 %i.l to i32
  %i.n = and i32 %i.m, 3
  switch i32 %i.n, label %bb.h [
    i32 1, label %.critedge.outer.1.i
    i32 3, label %mi_page_block_size.exit.i
  ], !prof !208

.critedge.outer.1.i:                              ; preds = %.critedge.i2
  tail call void @llvm.x86.sse2.pause()
  br label %.critedge.1.i

.critedge.1.i:                                    ; preds = %bb.d, %.critedge.outer.1.i
  %i.o = load atomic i64, ptr %i.k acquire, align 8 ; 3 uses
  %i.p = trunc i64 %i.o to i32
  %i.q = and i32 %i.p, 3
  switch i32 %i.q, label %bb.d [
    i32 1, label %.critedge.outer.2.i
    i32 3, label %mi_page_block_size.exit.i
  ], !prof !208

.critedge.outer.2.i:                              ; preds = %.critedge.1.i
  tail call void @llvm.x86.sse2.pause()
  br label %.critedge.2.i

bb.d:                                             ; preds = %.critedge.1.i
  %i.r = or i64 %i.o, 3
  %i.s = cmpxchg weak ptr %i.k, i64 %i.o, i64 %i.r release monotonic, align 8
  %i.t = extractvalue { i64, i1 } %i.s, 1
  br i1 %i.t, label %mi_page_block_size.exit.i, label %.critedge.1.i, !llvm.loop !76

.critedge.2.i:                                    ; preds = %bb.e, %.critedge.outer.2.i
  %i.u = load atomic i64, ptr %i.k acquire, align 8 ; 3 uses
  %i.v = trunc i64 %i.u to i32
  %i.w = and i32 %i.v, 3
  switch i32 %i.w, label %bb.e [
    i32 1, label %.critedge.outer.3.i
    i32 3, label %mi_page_block_size.exit.i
  ], !prof !208

.critedge.outer.3.i:                              ; preds = %.critedge.2.i
  tail call void @llvm.x86.sse2.pause()
  br label %.critedge.3.i

bb.e:                                             ; preds = %.critedge.2.i
  %i.x = or i64 %i.u, 3
  %i.y = cmpxchg weak ptr %i.k, i64 %i.u, i64 %i.x release monotonic, align 8
  %i.z = extractvalue { i64, i1 } %i.y, 1
  br i1 %i.z, label %mi_page_block_size.exit.i, label %.critedge.2.i, !llvm.loop !76

.critedge.3.i:                                    ; preds = %bb.f, %.critedge.outer.3.i
  %i.aa = load atomic i64, ptr %i.k acquire, align 8 ; 3 uses
  %i.ab = trunc i64 %i.aa to i32
  %i.ac = and i32 %i.ab, 3
  switch i32 %i.ac, label %bb.f [
    i32 1, label %.critedge.outer.4.i
    i32 3, label %mi_page_block_size.exit.i
  ], !prof !208

.critedge.outer.4.i:                              ; preds = %.critedge.3.i
  tail call void @llvm.x86.sse2.pause()
  br label %.critedge.4.i

bb.f:                                             ; preds = %.critedge.3.i
  %i.ad = or i64 %i.aa, 3
  %i.ae = cmpxchg weak ptr %i.k, i64 %i.aa, i64 %i.ad release monotonic, align 8
  %i.af = extractvalue { i64, i1 } %i.ae, 1
  br i1 %i.af, label %mi_page_block_size.exit.i, label %.critedge.3.i, !llvm.loop !76

.critedge.4.i:                                    ; preds = %bb.g, %.critedge.outer.4.i
  %i.ag = load atomic i64, ptr %i.k acquire, align 8 ; 3 uses
  %i.ah = trunc i64 %i.ag to i32
  %i.ai = and i32 %i.ah, 3
  switch i32 %i.ai, label %bb.g [
    i32 1, label %.lr.ph.i.i
    i32 3, label %mi_page_block_size.exit.i
  ], !prof !208, !llvm.loop !198

bb.g:                                             ; preds = %.critedge.4.i
  %i.aj = or i64 %i.ag, 3
  %i.ak = cmpxchg weak ptr %i.k, i64 %i.ag, i64 %i.aj release monotonic, align 8
  %i.al = extractvalue { i64, i1 } %i.ak, 1
  br i1 %i.al, label %mi_page_block_size.exit.i, label %.critedge.4.i, !llvm.loop !76

bb.h:                                             ; preds = %.critedge.i2
  %i.am = or i64 %i.l, 3
  %i.an = cmpxchg weak ptr %i.k, i64 %i.l, i64 %i.am release monotonic, align 8
  %i.ao = extractvalue { i64, i1 } %i.an, 1
  br i1 %i.ao, label %mi_page_block_size.exit.i, label %.critedge.i2, !llvm.loop !76

mi_page_block_size.exit.i:                        ; preds = %.critedge.i2, %bb.h, %.critedge.1.i, %bb.d, %.critedge.2.i, %bb.e, %.critedge.3.i, %bb.f, %.critedge.4.i, %bb.g, %.lr.ph
  %i.ap = getelementptr i8, ptr %.020.i9, i64 24
  store i32 0, ptr %i.ap, align 8, !tbaa !18
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.h, i8 0, i64 16, i1 false)
  %i.aq = load ptr, ptr %0, align 8, !tbaa !22
  %i.ar = getelementptr i8, ptr %i.aq, i64 32     ; 3 uses
  %i.as = ptrtoint ptr %.020.i9 to i64
  %i.at = add i64 %i.as, -1
  %i.au = and i64 %i.at, -33554432
  %i.av = inttoptr i64 %i.au to ptr               ; 4 uses
  %i.aw = tail call fastcc ptr @mi_segment_page_clear(ptr noundef nonnull %.020.i9, ptr noundef %i.ar) ; 0 uses
  %i.ax = getelementptr i8, ptr %i.av, i64 208
  %i.ay = load i64, ptr %i.ax, align 16, !tbaa !67 ; 2 uses
  %i.az = icmp eq i64 %i.ay, 0
  br i1 %i.az, label %bb.i, label %bb.j

bb.i:                                             ; preds = %mi_page_block_size.exit.i
  tail call fastcc void @mi_segment_free(ptr noundef nonnull %i.av, ptr noundef %i.ar)
  br label %_mi_heap_page_destroy.exit

bb.j:                                             ; preds = %mi_page_block_size.exit.i
  %i.ba = getelementptr i8, ptr %i.av, i64 192
  %i.bb = load i64, ptr %i.ba, align 64, !tbaa !72
  %i.bc = icmp eq i64 %i.ay, %i.bb
  br i1 %i.bc, label %bb.k, label %_mi_heap_page_destroy.exit

bb.k:                                             ; preds = %bb.j
  tail call fastcc void @mi_segment_abandon(ptr noundef nonnull %i.av, ptr noundef %i.ar)
  br label %_mi_heap_page_destroy.exit

_mi_heap_page_destroy.exit:                       ; preds = %bb.i, %bb.j, %bb.k
  %.not.i = icmp eq ptr %i.i, null
  br i1 %.not.i, label %.critedge.i, label %.lr.ph, !llvm.loop !199

.critedge.i:                                      ; preds = %_mi_heap_page_destroy.exit, %bb.c
  %i.bd = add nuw nsw i64 %.02229.i, 1            ; 2 uses
  %exitcond.i = icmp eq i64 %i.bd, 75
  br i1 %exitcond.i, label %mi_heap_visit_pages.exit, label %bb.c, !llvm.loop !200

mi_heap_visit_pages.exit:                         ; preds = %.critedge.i, %bb.a, %bb.b
  call void @llvm.assume(i1 true) [ "align"(ptr %0, i64 8) ]
  %i.be = getelementptr i8, ptr %0, i64 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(1032) %i.be, i8 0, i64 1032, i1 false)
  %i.bf = getelementptr i8, ptr %0, i64 1040
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1800) %i.bf, ptr noundef nonnull readonly align 16 dereferenceable(1800) getelementptr inbounds nuw (i8, ptr @_mi_heap_empty, i64 1040), i64 1800, i1 false)
  %i.bg = getelementptr i8, ptr %0, i64 2840
  store atomic ptr null, ptr %i.bg seq_cst, align 8, !tbaa !209
  %i.bh = getelementptr i8, ptr %0, i64 3024
  store i64 0, ptr %i.bh, align 8, !tbaa !196
  ret void
}

; Function Attrs: nounwind uwtable
define hidden void @mi_heap_destroy(ptr noundef %0) local_unnamed_addr #2 {
bb.a:
  %i.a = icmp ne ptr %0, null
  %i.b = icmp ne ptr %0, @_mi_heap_empty
  %or.cond = and i1 %i.a, %i.b
  br i1 %or.cond, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr i8, ptr %0, i64 3056
  %i.d = load i8, ptr %i.c, align 8, !tbaa !195, !range !42, !noundef !43
  %i.e = trunc nuw i8 %i.d to i1
  br i1 %i.e, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  tail call void @mi_heap_delete(ptr noundef nonnull %0)
  br label %bb.e

bb.d:                                             ; preds = %bb.b
  tail call void @_mi_heap_destroy_pages(ptr noundef nonnull %0)
  tail call fastcc void @mi_heap_free(ptr noundef %0)
  br label %bb.e

bb.e:                                             ; preds = %bb.a, %bb.d, %bb.c
  ret void
}

; Function Attrs: nounwind uwtable
define hidden void @mi_heap_delete(ptr noundef %0) local_unnamed_addr #2 {
bb.a:
  %i.a = icmp ne ptr %0, null
  %i.b = icmp ne ptr %0, @_mi_heap_empty
  %or.cond = and i1 %i.a, %i.b
  br i1 %or.cond, label %bb.b, label %bb.j

bb.b:                                             ; preds = %bb.a
  %i.c = load ptr, ptr %0, align 8, !tbaa !22
  %i.d = getelementptr i8, ptr %i.c, i64 16
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !194  ; 4 uses
  %i.f = icmp eq ptr %i.e, %0
  br i1 %i.f, label %bb.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.g = getelementptr i8, ptr %0, i64 3024       ; 4 uses
  %i.h = load i64, ptr %i.g, align 8, !tbaa !196
  %i.i = icmp eq i64 %i.h, 0
  br i1 %i.i, label %mi_heap_absorb.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.j = getelementptr i8, ptr %0, i64 2840       ; 5 uses
  %i.k = load atomic ptr, ptr %i.j monotonic, align 8 ; 2 uses
  %.old1.not.i.i = icmp eq ptr %i.k, null
  br i1 %.old1.not.i.i, label %_mi_heap_delayed_free_partial.exit.i, label %.preheader.i.i

.preheader.i.i:                                   ; preds = %bb.d, %.preheader.i.i
  %.0.i.i = phi ptr [ %i.n, %.preheader.i.i ], [ %i.k, %bb.d ]
  %i.l = cmpxchg weak ptr %i.j, ptr %.0.i.i, ptr null acq_rel acquire, align 8 ; 2 uses
  %i.m = extractvalue { ptr, i1 } %i.l, 1
  %i.n = extractvalue { ptr, i1 } %i.l, 0         ; 3 uses
  %i.o = icmp eq ptr %i.n, null                   ; 2 uses
  %or.cond.not.i.i = select i1 %i.m, i1 true, i1 %i.o
  br i1 %or.cond.not.i.i, label %.critedge.i.i, label %.preheader.i.i, !llvm.loop !45

.critedge.i.i:                                    ; preds = %.preheader.i.i
  br i1 %i.o, label %_mi_heap_delayed_free_partial.exit.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.critedge.i.i, %.loopexit.i.i
  %.334.i.i = phi ptr [ %i.q, %.loopexit.i.i ], [ %i.n, %.critedge.i.i ] ; 4 uses
  %i.p = load atomic i64, ptr %.334.i.i monotonic, align 8 ; 2 uses
  %i.q = inttoptr i64 %i.p to ptr
  %i.r = tail call zeroext i1 @_mi_free_delayed_block(ptr noundef nonnull %.334.i.i)
  br i1 %i.r, label %.loopexit.i.i, label %bb.e

bb.e:                                             ; preds = %.lr.ph.i.i
  %i.s = load atomic ptr, ptr %i.j monotonic, align 8
  br label %bb.f

bb.f:                                             ; preds = %bb.f, %bb.e
  %.027.i.i = phi ptr [ %i.s, %bb.e ], [ %i.w, %bb.f ] ; 2 uses
  %i.t = ptrtoint ptr %.027.i.i to i64
  store atomic i64 %i.t, ptr %.334.i.i monotonic, align 8
  %i.u = cmpxchg weak ptr %i.j, ptr %.027.i.i, ptr %.334.i.i release monotonic, align 8 ; 2 uses
  %i.v = extractvalue { ptr, i1 } %i.u, 1
  %i.w = extractvalue { ptr, i1 } %i.u, 0
  br i1 %i.v, label %.loopexit.i.i, label %bb.f, !llvm.loop !47

.loopexit.i.i:                                    ; preds = %bb.f, %.lr.ph.i.i
  %.not.i.i = icmp eq i64 %i.p, 0
  br i1 %.not.i.i, label %_mi_heap_delayed_free_partial.exit.i, label %.lr.ph.i.i, !llvm.loop !48

_mi_heap_delayed_free_partial.exit.i:             ; preds = %.loopexit.i.i, %.critedge.i.i, %bb.d
  %i.x = getelementptr i8, ptr %i.e, i64 1040
  %i.y = getelementptr i8, ptr %0, i64 1040       ; 2 uses
  %i.z = getelementptr i8, ptr %i.e, i64 3024     ; 2 uses
  br label %bb.h

bb.g:                                             ; preds = %bb.h
  tail call void @_mi_heap_delayed_free_all(ptr noundef nonnull %0)
  call void @llvm.assume(i1 true) [ "align"(ptr %0, i64 8) ]
  %i.aa = getelementptr i8, ptr %0, i64 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(1032) %i.aa, i8 0, i64 1032, i1 false)
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1800) %i.y, ptr noundef nonnull readonly align 16 dereferenceable(1800) getelementptr inbounds nuw (i8, ptr @_mi_heap_empty, i64 1040), i64 1800, i1 false)
  store atomic ptr null, ptr %i.j seq_cst, align 8, !tbaa !209
  store i64 0, ptr %i.g, align 8, !tbaa !196
  br label %mi_heap_absorb.exit

bb.h:                                             ; preds = %bb.h, %_mi_heap_delayed_free_partial.exit.i
  %.019.i = phi i64 [ 0, %_mi_heap_delayed_free_partial.exit.i ], [ %i.ai, %bb.h ] ; 3 uses
  %i.ab = getelementptr [24 x i8], ptr %i.x, i64 %.019.i
  %i.ac = getelementptr [24 x i8], ptr %i.y, i64 %.019.i
  %i.ad = tail call i64 @_mi_page_queue_append(ptr noundef %i.e, ptr noundef %i.ab, ptr noundef %i.ac) ; 2 uses
  %i.ae = load i64, ptr %i.z, align 8, !tbaa !196
  %i.af = add i64 %i.ae, %i.ad
  store i64 %i.af, ptr %i.z, align 8, !tbaa !196
  %i.ag = load i64, ptr %i.g, align 8, !tbaa !196
  %i.ah = sub i64 %i.ag, %i.ad
  store i64 %i.ah, ptr %i.g, align 8, !tbaa !196
  %i.ai = add nuw nsw i64 %.019.i, 1              ; 2 uses
  %exitcond.not.i = icmp eq i64 %i.ai, 75
  br i1 %exitcond.not.i, label %bb.g, label %bb.h, !llvm.loop !210

bb.i:                                             ; preds = %bb.b
  tail call fastcc void @mi_heap_collect_ex(ptr noundef nonnull %0, i32 noundef 2)
  br label %mi_heap_absorb.exit

mi_heap_absorb.exit:                              ; preds = %bb.g, %bb.c, %bb.i
  tail call fastcc void @mi_heap_free(ptr noundef %0)
  br label %bb.j

bb.j:                                             ; preds = %bb.a, %mi_heap_absorb.exit
  ret void
}

; Function Attrs: nounwind uwtable
define internal fastcc void @mi_heap_free(ptr noundef nonnull %0) unnamed_addr #2 {
bb.a:
  %.not21 = icmp eq ptr %0, @_mi_heap_empty
  br i1 %.not21, label %mi_free.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = load ptr, ptr %0, align 8, !tbaa !22     ; 3 uses
  %i.b = getelementptr i8, ptr %i.a, i64 16
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !194  ; 3 uses
  %i.d = icmp eq ptr %i.c, %0
  br i1 %i.d, label %mi_free.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @_mi_heap_default) ; 2 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !54
  %i.g = icmp eq ptr %0, %i.f
  br i1 %i.g, label %bb.d, label %_mi_heap_set_default_direct.exit

bb.d:                                             ; preds = %bb.c
  store ptr %i.c, ptr %i.e, align 8, !tbaa !54
  %i.h = load i32, ptr @_mi_heap_default_key, align 4, !tbaa !7 ; 2 uses
  %.not.i.i = icmp eq i32 %i.h, -1
  br i1 %.not.i.i, label %_mi_heap_set_default_direct.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.i = tail call i32 @pthread_setspecific(i32 noundef %i.h, ptr noundef %i.c) #55 ; 0 uses
  %.pre = load ptr, ptr %0, align 8, !tbaa !22
  br label %_mi_heap_set_default_direct.exit

_mi_heap_set_default_direct.exit:                 ; preds = %bb.e, %bb.d, %bb.c
  %i.j = phi ptr [ %.pre, %bb.e ], [ %i.a, %bb.d ], [ %i.a, %bb.c ]
  %i.k = getelementptr i8, ptr %i.j, i64 24       ; 2 uses
  br label %bb.f

bb.f:                                             ; preds = %bb.f, %_mi_heap_set_default_direct.exit
  %.019 = phi ptr [ null, %_mi_heap_set_default_direct.exit ], [ %.0, %bb.f ] ; 2 uses
  %.0.in = phi ptr [ %i.k, %_mi_heap_set_default_direct.exit ], [ %i.o, %bb.f ]
  %.0 = load ptr, ptr %.0.in, align 8, !tbaa !54  ; 5 uses
  %i.l = icmp ne ptr %.0, %0
  %i.m = icmp ne ptr %.0, null
  %i.n = and i1 %i.l, %i.m
  %i.o = getelementptr i8, ptr %.0, i64 3048
  br i1 %i.n, label %bb.f, label %bb.g, !llvm.loop !211

bb.g:                                             ; preds = %bb.f
  %i.p = icmp eq ptr %.0, %0
  br i1 %i.p, label %bb.h, label %bb.k

bb.h:                                             ; preds = %bb.g
  %.not = icmp eq ptr %.019, null
  %i.q = getelementptr i8, ptr %0, i64 3048
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !207  ; 2 uses
  br i1 %.not, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.s = getelementptr i8, ptr %.019, i64 3048
  store ptr %i.r, ptr %i.s, align 8, !tbaa !207
  br label %bb.k

bb.j:                                             ; preds = %bb.h
  store ptr %i.r, ptr %i.k, align 8, !tbaa !206
  br label %bb.k

bb.k:                                             ; preds = %bb.i, %bb.j, %bb.g
  %i.t = ptrtoint ptr %0 to i64                   ; 2 uses
  %i.u = add i64 %i.t, -1
  %i.v = and i64 %i.u, -33554432                  ; 2 uses
  %i.w = inttoptr i64 %i.v to ptr                 ; 4 uses
  %i.x = tail call ptr asm "movq %fs:$1, $0", "=r,*m,~{dirflag},~{fpsr},~{flags}"(ptr elementtype(ptr) null) #60, !srcloc !58
  %i.y = ptrtoint ptr %i.x to i64
  %i.z = getelementptr i8, ptr %i.w, i64 256
  %i.aa = load atomic i64, ptr %i.z monotonic, align 256
  %i.ab = icmp eq i64 %i.aa, %i.y
  %i.ac = sub i64 %i.t, %i.v
  %i.ad = lshr i64 %i.ac, 16
  %i.ae = getelementptr i8, ptr %i.w, i64 264
  %i.af = getelementptr [80 x i8], ptr %i.ae, i64 %i.ad ; 2 uses
  %i.ag = getelementptr i8, ptr %i.af, i64 4
  %i.ah = load i32, ptr %i.ag, align 4, !tbaa !59
  %i.ai = zext i32 %i.ah to i64
  %i.aj = sub nsw i64 0, %i.ai
  %i.ak = getelementptr i8, ptr %i.af, i64 %i.aj  ; 6 uses
  br i1 %i.ab, label %bb.l, label %bb.p, !prof !55

bb.l:                                             ; preds = %bb.k
  %i.al = getelementptr i8, ptr %i.ak, i64 14
  %i.am = load i8, ptr %i.al, align 2, !tbaa !60
  %i.an = icmp eq i8 %i.am, 0
  br i1 %i.an, label %bb.m, label %bb.o, !prof !55

bb.m:                                             ; preds = %bb.l
  %i.ao = getelementptr i8, ptr %i.ak, i64 32     ; 2 uses
  %i.ap = load ptr, ptr %i.ao, align 8, !tbaa !57
  %i.aq = ptrtoint ptr %i.ap to i64
  store atomic i64 %i.aq, ptr %0 monotonic, align 8
  store ptr %0, ptr %i.ao, align 8, !tbaa !57
  %i.ar = getelementptr i8, ptr %i.ak, i64 24     ; 2 uses
  %i.as = load i32, ptr %i.ar, align 8, !tbaa !18
  %i.at = add i32 %i.as, -1                       ; 2 uses
  store i32 %i.at, ptr %i.ar, align 8, !tbaa !18
  %i.au = icmp eq i32 %i.at, 0
  br i1 %i.au, label %bb.n, label %mi_free.exit, !prof !17

bb.n:                                             ; preds = %bb.m
  tail call void @_mi_page_retire(ptr noundef %i.ak)
  br label %mi_free.exit

bb.o:                                             ; preds = %bb.l
  tail call void @_mi_free_generic(ptr noundef nonnull %i.w, ptr noundef %i.ak, i1 noundef zeroext true, ptr noundef nonnull %0)
  br label %mi_free.exit

bb.p:                                             ; preds = %bb.k
  tail call void @_mi_free_generic(ptr noundef nonnull %i.w, ptr noundef %i.ak, i1 noundef zeroext false, ptr noundef nonnull %0)
  br label %mi_free.exit

mi_free.exit:                                     ; preds = %bb.p, %bb.o, %bb.n, %bb.m, %bb.b, %bb.a
  ret void
}

; Function Attrs: nounwind uwtable
define hidden void @_mi_heap_unsafe_destroy_all() local_unnamed_addr #2 {
bb.a:
  tail call void @mi_process_init(), !inline_history !203
  %i.a = tail call fastcc zeroext i1 @_mi_heap_init(), !inline_history !203
  br i1 %i.a, label %mi_heap_get_backing.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = atomicrmw add ptr getelementptr inbounds nuw (i8, ptr @_mi_stats_main, i64 312), i64 1 monotonic, align 8
  %i.c = add i64 %i.b, 1                          ; 2 uses
  %i.d = load atomic i64, ptr getelementptr inbounds nuw (i8, ptr @_mi_stats_main, i64 304) monotonic, align 16
  br label %bb.c

bb.c:                                             ; preds = %bb.d, %bb.b
  %.0.i.i.i.i.i = phi i64 [ %i.d, %bb.b ], [ %i.h, %bb.d ] ; 2 uses
  %i.e = icmp slt i64 %.0.i.i.i.i.i, %i.c
  br i1 %i.e, label %bb.d, label %_mi_stat_increase.exit.i.i

bb.d:                                             ; preds = %bb.c
  %i.f = cmpxchg weak ptr getelementptr inbounds nuw (i8, ptr @_mi_stats_main, i64 304), i64 %.0.i.i.i.i.i, i64 %i.c release monotonic, align 8 ; 2 uses
  %i.g = extractvalue { i64, i1 } %i.f, 1
  %i.h = extractvalue { i64, i1 } %i.f, 0
  br i1 %i.g, label %_mi_stat_increase.exit.i.i, label %bb.c, !llvm.loop !124

_mi_stat_increase.exit.i.i:                       ; preds = %bb.d, %bb.c
  %i.i = atomicrmw add ptr getelementptr inbounds nuw (i8, ptr @_mi_stats_main, i64 288), i64 1 monotonic, align 8 ; 0 uses
  %i.j = atomicrmw add ptr @thread_count, i64 1 monotonic, align 8 ; 0 uses
  br label %mi_heap_get_backing.exit

mi_heap_get_backing.exit:                         ; preds = %bb.a, %_mi_stat_increase.exit.i.i
  %i.k = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @_mi_heap_default)
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !54
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !22
  %i.n = getelementptr i8, ptr %i.m, i64 16
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !194
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !22
  %i.q = getelementptr i8, ptr %i.p, i64 24
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !206  ; 2 uses
  %.not8 = icmp eq ptr %i.r, null
  br i1 %.not8, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %mi_heap_get_backing.exit, %mi_heap_destroy.exit
  %.09 = phi ptr [ %i.t, %mi_heap_destroy.exit ], [ %i.r, %mi_heap_get_backing.exit ] ; 6 uses
  %i.s = getelementptr i8, ptr %.09, i64 3048
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !207  ; 2 uses
  %i.u = getelementptr i8, ptr %.09, i64 3056
  %i.v = load i8, ptr %i.u, align 8, !tbaa !195, !range !42, !noundef !43
  %i.w = trunc nuw i8 %i.v to i1
end_hunk_3
begin_hunk_4_@_mi_heap_init:bb.a
  %i.l = atomicrmw xchg ptr @td_cache, ptr null acq_rel, align 8 ; 2 uses
  %.not27.i = icmp eq ptr %i.l, null
  br i1 %.not27.i, label %bb.f, label %.loopexit.i

bb.f:                                             ; preds = %bb.e, %bb.d
  %i.m = load atomic ptr, ptr getelementptr inbounds nuw (i8, ptr @td_cache, i64 8) monotonic, align 8
  %.not.1.i = icmp eq ptr %i.m, null
  br i1 %.not.1.i, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.n = atomicrmw xchg ptr getelementptr inbounds nuw (i8, ptr @td_cache, i64 8), ptr null acq_rel, align 8 ; 2 uses
  %.not27.1.i = icmp eq ptr %i.n, null
  br i1 %.not27.1.i, label %bb.h, label %.loopexit.i

bb.h:                                             ; preds = %bb.g, %bb.f
  %i.o = load atomic ptr, ptr getelementptr inbounds nuw (i8, ptr @td_cache, i64 16) monotonic, align 16
  %.not.2.i = icmp eq ptr %i.o, null
  br i1 %.not.2.i, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.p = atomicrmw xchg ptr getelementptr inbounds nuw (i8, ptr @td_cache, i64 16), ptr null acq_rel, align 8 ; 2 uses
  %.not27.2.i = icmp eq ptr %i.p, null
  br i1 %.not27.2.i, label %bb.j, label %.loopexit.i

bb.j:                                             ; preds = %bb.i, %bb.h
  %i.q = load atomic ptr, ptr getelementptr inbounds nuw (i8, ptr @td_cache, i64 24) monotonic, align 8
  %.not.3.i = icmp eq ptr %i.q, null
  br i1 %.not.3.i, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.r = atomicrmw xchg ptr getelementptr inbounds nuw (i8, ptr @td_cache, i64 24), ptr null acq_rel, align 8 ; 2 uses
  %.not27.3.i = icmp eq ptr %i.r, null
  br i1 %.not27.3.i, label %bb.l, label %.loopexit.i

bb.l:                                             ; preds = %bb.k, %bb.j
  %i.s = load atomic ptr, ptr getelementptr inbounds nuw (i8, ptr @td_cache, i64 32) monotonic, align 16
  %.not.4.i = icmp eq ptr %i.s, null
  br i1 %.not.4.i, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.t = atomicrmw xchg ptr getelementptr inbounds nuw (i8, ptr @td_cache, i64 32), ptr null acq_rel, align 8 ; 2 uses
  %.not27.4.i = icmp eq ptr %i.t, null
  br i1 %.not27.4.i, label %bb.n, label %.loopexit.i

bb.n:                                             ; preds = %bb.m, %bb.l
  %i.u = load atomic ptr, ptr getelementptr inbounds nuw (i8, ptr @td_cache, i64 40) monotonic, align 8
  %.not.5.i = icmp eq ptr %i.u, null
  br i1 %.not.5.i, label %bb.p, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.v = atomicrmw xchg ptr getelementptr inbounds nuw (i8, ptr @td_cache, i64 40), ptr null acq_rel, align 8 ; 2 uses
  %.not27.5.i = icmp eq ptr %i.v, null
  br i1 %.not27.5.i, label %bb.p, label %.loopexit.i

bb.p:                                             ; preds = %bb.o, %bb.n
  %i.w = load atomic ptr, ptr getelementptr inbounds nuw (i8, ptr @td_cache, i64 48) monotonic, align 16
  %.not.6.i = icmp eq ptr %i.w, null
  br i1 %.not.6.i, label %bb.r, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.x = atomicrmw xchg ptr getelementptr inbounds nuw (i8, ptr @td_cache, i64 48), ptr null acq_rel, align 8 ; 2 uses
  %.not27.6.i = icmp eq ptr %i.x, null
  br i1 %.not27.6.i, label %bb.r, label %.loopexit.i

bb.r:                                             ; preds = %bb.q, %bb.p
  %i.y = load atomic ptr, ptr getelementptr inbounds nuw (i8, ptr @td_cache, i64 56) monotonic, align 8
  %.not.7.i = icmp eq ptr %i.y, null
  br i1 %.not.7.i, label %bb.t, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.z = atomicrmw xchg ptr getelementptr inbounds nuw (i8, ptr @td_cache, i64 56), ptr null acq_rel, align 8 ; 2 uses
  %.not27.7.i = icmp eq ptr %i.z, null
  br i1 %.not27.7.i, label %bb.t, label %.loopexit.i

bb.t:                                             ; preds = %bb.s, %bb.r
  %i.aa = load atomic ptr, ptr getelementptr inbounds nuw (i8, ptr @td_cache, i64 64) monotonic, align 16
  %.not.8.i = icmp eq ptr %i.aa, null
  br i1 %.not.8.i, label %bb.v, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.ab = atomicrmw xchg ptr getelementptr inbounds nuw (i8, ptr @td_cache, i64 64), ptr null acq_rel, align 8 ; 2 uses
  %.not27.8.i = icmp eq ptr %i.ab, null
  br i1 %.not27.8.i, label %bb.v, label %.loopexit.i

bb.v:                                             ; preds = %bb.u, %bb.t
  %i.ac = load atomic ptr, ptr getelementptr inbounds nuw (i8, ptr @td_cache, i64 72) monotonic, align 8
  %.not.9.i = icmp eq ptr %i.ac, null
  br i1 %.not.9.i, label %bb.x, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.ad = atomicrmw xchg ptr getelementptr inbounds nuw (i8, ptr @td_cache, i64 72), ptr null acq_rel, align 8 ; 2 uses
  %.not27.9.i = icmp eq ptr %i.ad, null
  br i1 %.not27.9.i, label %bb.x, label %.loopexit.i

bb.x:                                             ; preds = %bb.w, %bb.v
  %i.ae = load atomic ptr, ptr getelementptr inbounds nuw (i8, ptr @td_cache, i64 80) monotonic, align 16
  %.not.10.i = icmp eq ptr %i.ae, null
  br i1 %.not.10.i, label %bb.z, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.af = atomicrmw xchg ptr getelementptr inbounds nuw (i8, ptr @td_cache, i64 80), ptr null acq_rel, align 8 ; 2 uses
  %.not27.10.i = icmp eq ptr %i.af, null
  br i1 %.not27.10.i, label %bb.z, label %.loopexit.i

bb.z:                                             ; preds = %bb.y, %bb.x
  %i.ag = load atomic ptr, ptr getelementptr inbounds nuw (i8, ptr @td_cache, i64 88) monotonic, align 8
  %.not.11.i = icmp eq ptr %i.ag, null
  br i1 %.not.11.i, label %bb.ab, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.ah = atomicrmw xchg ptr getelementptr inbounds nuw (i8, ptr @td_cache, i64 88), ptr null acq_rel, align 8 ; 2 uses
  %.not27.11.i = icmp eq ptr %i.ah, null
  br i1 %.not27.11.i, label %bb.ab, label %.loopexit.i

bb.ab:                                            ; preds = %bb.aa, %bb.z
  %i.ai = load atomic ptr, ptr getelementptr inbounds nuw (i8, ptr @td_cache, i64 96) monotonic, align 16
  %.not.12.i = icmp eq ptr %i.ai, null
  br i1 %.not.12.i, label %bb.ad, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.aj = atomicrmw xchg ptr getelementptr inbounds nuw (i8, ptr @td_cache, i64 96), ptr null acq_rel, align 8 ; 2 uses
  %.not27.12.i = icmp eq ptr %i.aj, null
  br i1 %.not27.12.i, label %bb.ad, label %.loopexit.i

bb.ad:                                            ; preds = %bb.ac, %bb.ab
  %i.ak = load atomic ptr, ptr getelementptr inbounds nuw (i8, ptr @td_cache, i64 104) monotonic, align 8
  %.not.13.i = icmp eq ptr %i.ak, null
  br i1 %.not.13.i, label %bb.af, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.al = atomicrmw xchg ptr getelementptr inbounds nuw (i8, ptr @td_cache, i64 104), ptr null acq_rel, align 8 ; 2 uses
  %.not27.13.i = icmp eq ptr %i.al, null
  br i1 %.not27.13.i, label %bb.af, label %.loopexit.i

bb.af:                                            ; preds = %bb.ae, %bb.ad
  %i.am = load atomic ptr, ptr getelementptr inbounds nuw (i8, ptr @td_cache, i64 112) monotonic, align 16
  %.not.14.i = icmp eq ptr %i.am, null
  br i1 %.not.14.i, label %bb.ah, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  %i.an = atomicrmw xchg ptr getelementptr inbounds nuw (i8, ptr @td_cache, i64 112), ptr null acq_rel, align 8 ; 2 uses
  %.not27.14.i = icmp eq ptr %i.an, null
  br i1 %.not27.14.i, label %bb.ah, label %.loopexit.i

bb.ah:                                            ; preds = %bb.ag, %bb.af
  %i.ao = load atomic ptr, ptr getelementptr inbounds nuw (i8, ptr @td_cache, i64 120) monotonic, align 8
  %.not.15.i = icmp eq ptr %i.ao, null
  br i1 %.not.15.i, label %bb.aj, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  %i.ap = atomicrmw xchg ptr getelementptr inbounds nuw (i8, ptr @td_cache, i64 120), ptr null acq_rel, align 8 ; 2 uses
  %.not27.15.i = icmp eq ptr %i.ap, null
  br i1 %.not27.15.i, label %bb.aj, label %.loopexit.i

bb.aj:                                            ; preds = %bb.ai, %bb.ah
  call void @llvm.lifetime.start.p0(ptr nonnull %0) #55
  %i.aq = call ptr @_mi_os_alloc(i64 noundef 4696, ptr noundef nonnull %0, ptr nonnull poison) ; 2 uses
  %i.ar = icmp eq ptr %i.aq, null
  br i1 %i.ar, label %bb.ak, label %bb.am

bb.ak:                                            ; preds = %bb.aj
  %i.as = call ptr @_mi_os_alloc(i64 noundef 4696, ptr noundef nonnull %0, ptr nonnull poison) ; 2 uses
  %i.at = icmp eq ptr %i.as, null
  br i1 %i.at, label %bb.al, label %bb.am

bb.al:                                            ; preds = %bb.ak
  tail call void (i32, ptr, ...) @_mi_error_message(i32 noundef 12, ptr noundef nonnull @.str.51, i64 noundef 4696)
  br label %bb.an

bb.am:                                            ; preds = %bb.ak, %bb.aj
  %.3.ph.i = phi ptr [ %i.aq, %bb.aj ], [ %i.as, %bb.ak ] ; 2 uses
  %i.au = getelementptr i8, ptr %.3.ph.i, i64 4672
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.au, ptr noundef nonnull align 8 dereferenceable(24) %0, i64 24, i1 false), !tbaa.struct !165
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 18
  %i.aw = load i8, ptr %i.av, align 2, !tbaa !163, !range !42, !noundef !43
  %i.ax = trunc nuw i8 %i.aw to i1
  br label %bb.an

bb.an:                                            ; preds = %bb.am, %bb.al
  %.334.i = phi ptr [ %.3.ph.i, %bb.am ], [ null, %bb.al ]
  %.0.i = phi i1 [ %i.ax, %bb.am ], [ false, %bb.al ]
  call void @llvm.lifetime.end.p0(ptr nonnull %0) #55
  br label %.loopexit.i

.loopexit.i:                                      ; preds = %bb.an, %bb.ai, %bb.ag, %bb.ae, %bb.ac, %bb.aa, %bb.y, %bb.w, %bb.u, %bb.s, %bb.q, %bb.o, %bb.m, %bb.k, %bb.i, %bb.g, %bb.e
  %.4.i = phi ptr [ %.334.i, %bb.an ], [ %i.l, %bb.e ], [ %i.n, %bb.g ], [ %i.p, %bb.i ], [ %i.r, %bb.k ], [ %i.t, %bb.m ], [ %i.v, %bb.o ], [ %i.x, %bb.q ], [ %i.z, %bb.s ], [ %i.ab, %bb.u ], [ %i.ad, %bb.w ], [ %i.af, %bb.y ], [ %i.ah, %bb.aa ], [ %i.aj, %bb.ac ], [ %i.al, %bb.ae ], [ %i.an, %bb.ag ], [ %i.ap, %bb.ai ] ; 16 uses
  %.1.i = phi i1 [ %.0.i, %bb.an ], [ false, %bb.e ], [ false, %bb.g ], [ false, %bb.i ], [ false, %bb.k ], [ false, %bb.m ], [ false, %bb.o ], [ false, %bb.q ], [ false, %bb.s ], [ false, %bb.u ], [ false, %bb.w ], [ false, %bb.y ], [ false, %bb.aa ], [ false, %bb.ac ], [ false, %bb.ae ], [ false, %bb.ag ], [ false, %bb.ai ]
  %i.ay = icmp eq ptr %.4.i, null                 ; 2 uses
  %or.cond.i = select i1 %i.ay, i1 true, i1 %.1.i
  br i1 %or.cond.i, label %mi_thread_data_zalloc.exit, label %mi_thread_data_zalloc.exit.thread

mi_thread_data_zalloc.exit.thread:                ; preds = %.loopexit.i
  call void @llvm.assume(i1 true) [ "align"(ptr %.4.i, i64 8) ]
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(4696) %.4.i, i8 0, i64 4696, i1 false)
  br label %bb.ao

mi_thread_data_zalloc.exit:                       ; preds = %.loopexit.i
  br i1 %i.ay, label %_mi_heap_set_default_direct.exit, label %bb.ao

bb.ao:                                            ; preds = %mi_thread_data_zalloc.exit.thread, %mi_thread_data_zalloc.exit
  call void @llvm.assume(i1 true) [ "align"(ptr %.4.i, i64 8) ]
  %1 = getelementptr i8, ptr %.4.i, i64 3064      ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1608) %1, ptr noundef nonnull readonly align 64 dereferenceable(1608) @tld_empty, i64 1608, i1 false)
  %i.az = getelementptr i8, ptr %.4.i, i64 4032   ; 2 uses
  %i.ba = getelementptr i8, ptr %.4.i, i64 3992
  store ptr %i.az, ptr %i.ba, align 8, !tbaa !230
  %i.bb = getelementptr i8, ptr %.4.i, i64 4016
  %i.bc = getelementptr i8, ptr %.4.i, i64 4000
  store ptr %i.bb, ptr %i.bc, align 8, !tbaa !231
  %i.bd = getelementptr i8, ptr %.4.i, i64 4008
  store ptr @_mi_abandoned_default, ptr %i.bd, align 8, !tbaa !232
  %i.be = getelementptr i8, ptr %.4.i, i64 4024
  store ptr %i.az, ptr %i.be, align 8, !tbaa !233
  %i.bf = getelementptr i8, ptr %.4.i, i64 3080
  store ptr %.4.i, ptr %i.bf, align 8, !tbaa !194
  tail call void @_mi_heap_init_ex(ptr noundef nonnull %.4.i, ptr noundef nonnull %1, i32 noundef 0, i1 noundef zeroext false, i8 noundef zeroext 0)
  store ptr %.4.i, ptr %i.a, align 8, !tbaa !54
  %i.bg = load i32, ptr @_mi_heap_default_key, align 4, !tbaa !7 ; 2 uses
  %.not.i.i9 = icmp eq i32 %i.bg, -1
  br i1 %.not.i.i9, label %_mi_heap_set_default_direct.exit, label %bb.ap

bb.ap:                                            ; preds = %bb.ao
  %i.bh = tail call i32 @pthread_setspecific(i32 noundef %i.bg, ptr noundef nonnull %.4.i) #55 ; 0 uses
  br label %_mi_heap_set_default_direct.exit

_mi_heap_set_default_direct.exit:                 ; preds = %bb.ap, %bb.ao, %bb.c, %_mi_is_main_thread.exit.thread, %mi_thread_data_zalloc.exit, %bb.a
  ret i1 %i.c
}

; Function Attrs: norecurse nounwind uwtable
define hidden void @_mi_stat_increase(ptr nofree noundef captures(address) %0, i64 noundef %1) local_unnamed_addr #11 {
bb.a:
  %i.a = icmp eq i64 %1, 0
  br i1 %i.a, label %mi_stat_update.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = icmp uge ptr %0, @_mi_stats_main
  %i.c = icmp ult ptr %0, getelementptr inbounds nuw (i8, ptr @_mi_stats_main, i64 640)
  %i.d = select i1 %i.b, i1 %i.c, i1 false
  %i.e = getelementptr i8, ptr %0, i64 24         ; 3 uses
  br i1 %i.d, label %bb.c, label %bb.h

bb.c:                                             ; preds = %bb.b
  %i.f = atomicrmw add ptr %i.e, i64 %1 monotonic, align 8
  %i.g = getelementptr i8, ptr %0, i64 16         ; 2 uses
  %i.h = add i64 %i.f, %1                         ; 2 uses
  %i.i = load atomic i64, ptr %i.g monotonic, align 8
  br label %bb.d

bb.d:                                             ; preds = %bb.e, %bb.c
  %.0.i.i = phi i64 [ %i.i, %bb.c ], [ %i.m, %bb.e ] ; 2 uses
  %i.j = icmp slt i64 %.0.i.i, %i.h
  br i1 %i.j, label %bb.e, label %mi_atomic_maxi64_relaxed.exit.i

bb.e:                                             ; preds = %bb.d
  %i.k = cmpxchg weak ptr %i.g, i64 %.0.i.i, i64 %i.h release monotonic, align 8 ; 2 uses
  %i.l = extractvalue { i64, i1 } %i.k, 1
  %i.m = extractvalue { i64, i1 } %i.k, 0
  br i1 %i.l, label %mi_atomic_maxi64_relaxed.exit.i, label %bb.d, !llvm.loop !124

mi_atomic_maxi64_relaxed.exit.i:                  ; preds = %bb.e, %bb.d
  %i.n = icmp sgt i64 %1, 0
  br i1 %i.n, label %bb.f, label %bb.g

bb.f:                                             ; preds = %mi_atomic_maxi64_relaxed.exit.i
  %i.o = atomicrmw add ptr %0, i64 %1 monotonic, align 8 ; 0 uses
  br label %mi_stat_update.exit

bb.g:                                             ; preds = %mi_atomic_maxi64_relaxed.exit.i
  %i.p = getelementptr i8, ptr %0, i64 8
  %i.q = atomicrmw sub ptr %i.p, i64 %1 monotonic, align 8 ; 0 uses
  br label %mi_stat_update.exit

bb.h:                                             ; preds = %bb.b
  %i.r = load i64, ptr %i.e, align 8, !tbaa !127
  %i.s = add i64 %i.r, %1                         ; 3 uses
  store i64 %i.s, ptr %i.e, align 8, !tbaa !127
  %i.t = getelementptr i8, ptr %0, i64 16         ; 2 uses
  %i.u = load i64, ptr %i.t, align 8, !tbaa !128
  %i.v = icmp sgt i64 %i.s, %i.u
  br i1 %i.v, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  store i64 %i.s, ptr %i.t, align 8, !tbaa !128
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  %i.w = icmp sgt i64 %1, 0
  br i1 %i.w, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.x = load i64, ptr %0, align 8, !tbaa !129
  %i.y = add i64 %i.x, %1
  store i64 %i.y, ptr %0, align 8, !tbaa !129
  br label %mi_stat_update.exit

bb.l:                                             ; preds = %bb.j
  %i.z = getelementptr i8, ptr %0, i64 8          ; 2 uses
  %i.aa = load i64, ptr %i.z, align 8, !tbaa !130
  %i.ab = sub i64 %i.aa, %1
  store i64 %i.ab, ptr %i.z, align 8, !tbaa !130
  br label %mi_stat_update.exit

mi_stat_update.exit:                              ; preds = %bb.a, %bb.f, %bb.g, %bb.k, %bb.l
  ret void
}

; Function Attrs: nounwind uwtable
define hidden void @mi_thread_done() local_unnamed_addr #2 {
bb.a:
  tail call void @_mi_thread_done(ptr noundef null)
  ret void
}

; Function Attrs: nounwind uwtable
define hidden void @_mi_thread_done(ptr nofree noundef readonly captures(address) %0) local_unnamed_addr #2 {
bb.a:
  %i.a = icmp eq ptr %0, null
  br i1 %i.a, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.b = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @_mi_heap_default)
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !54   ; 2 uses
  %i.d = icmp eq ptr %i.c, null
  br i1 %i.d, label %_mi_heap_done.exit, label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %.0 = phi ptr [ %i.c, %bb.b ], [ %0, %bb.a ]    ; 3 uses
  %.not7 = icmp eq ptr %.0, @_mi_heap_empty
  br i1 %.not7, label %_mi_heap_done.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.e = atomicrmw sub ptr @thread_count, i64 1 monotonic, align 8 ; 0 uses
  %i.f = atomicrmw sub ptr getelementptr inbounds nuw (i8, ptr @_mi_stats_main, i64 312), i64 1 monotonic, align 8
  %i.g = add i64 %i.f, -1                         ; 2 uses
  %i.h = load atomic i64, ptr getelementptr inbounds nuw (i8, ptr @_mi_stats_main, i64 304) monotonic, align 16
  br label %bb.e

bb.e:                                             ; preds = %bb.f, %bb.d
  %.0.i.i.i = phi i64 [ %i.h, %bb.d ], [ %i.l, %bb.f ] ; 2 uses
  %i.i = icmp slt i64 %.0.i.i.i, %i.g
  br i1 %i.i, label %bb.f, label %_mi_stat_decrease.exit

bb.f:                                             ; preds = %bb.e
  %i.j = cmpxchg weak ptr getelementptr inbounds nuw (i8, ptr @_mi_stats_main, i64 304), i64 %.0.i.i.i, i64 %i.g release monotonic, align 8 ; 2 uses
  %i.k = extractvalue { i64, i1 } %i.j, 1
  %i.l = extractvalue { i64, i1 } %i.j, 0
  br i1 %i.k, label %_mi_stat_decrease.exit, label %bb.e, !llvm.loop !124

_mi_stat_decrease.exit:                           ; preds = %bb.e, %bb.f
  %i.m = atomicrmw add ptr getelementptr inbounds nuw (i8, ptr @_mi_stats_main, i64 296), i64 1 monotonic, align 8 ; 0 uses
  %i.n = getelementptr i8, ptr %.0, i64 2848
  %i.o = load i64, ptr %i.n, align 8, !tbaa !193  ; 2 uses
  %i.p = tail call ptr asm "movq %fs:$1, $0", "=r,*m,~{dirflag},~{fpsr},~{flags}"(ptr elementtype(ptr) null) #60, !srcloc !58
  %i.q = ptrtoint ptr %i.p to i64
  %.not.not = icmp eq i64 %i.o, %i.q
  br i1 %.not.not, label %bb.g, label %_mi_heap_done.exit

bb.g:                                             ; preds = %_mi_stat_decrease.exit
  %i.r = load i64, ptr getelementptr inbounds nuw (i8, ptr @_mi_heap_main, i64 2848), align 8, !tbaa !193 ; 2 uses
  %i.s = icmp eq i64 %i.r, 0
  br i1 %i.s, label %_mi_is_main_thread.exit.thread.i, label %_mi_is_main_thread.exit.i

_mi_is_main_thread.exit.i:                        ; preds = %bb.g
  %i.t = icmp eq i64 %i.r, %i.o
  %cond.fr.i = freeze i1 %i.t
  br i1 %cond.fr.i, label %_mi_is_main_thread.exit.thread.i, label %bb.h

_mi_is_main_thread.exit.thread.i:                 ; preds = %_mi_is_main_thread.exit.i, %bb.g
  br label %bb.h

bb.h:                                             ; preds = %_mi_is_main_thread.exit.thread.i, %_mi_is_main_thread.exit.i
  %i.u = phi ptr [ @_mi_heap_main, %_mi_is_main_thread.exit.thread.i ], [ @_mi_heap_empty, %_mi_is_main_thread.exit.i ] ; 2 uses
  %i.v = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @_mi_heap_default)
  store ptr %i.u, ptr %i.v, align 8, !tbaa !54
  %i.w = load i32, ptr @_mi_heap_default_key, align 4, !tbaa !7 ; 2 uses
  %.not.i.i.i = icmp eq i32 %i.w, -1
  br i1 %.not.i.i.i, label %_mi_heap_set_default_direct.exit.i, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.x = tail call i32 @pthread_setspecific(i32 noundef %i.w, ptr noundef nonnull %i.u) #55 ; 0 uses
  br label %_mi_heap_set_default_direct.exit.i

_mi_heap_set_default_direct.exit.i:               ; preds = %bb.i, %bb.h
  %i.y = load ptr, ptr %.0, align 8, !tbaa !22
  %i.z = getelementptr i8, ptr %i.y, i64 16
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !194 ; 24 uses
  %.not22.i = icmp eq ptr %i.aa, @_mi_heap_empty
  br i1 %.not22.i, label %_mi_heap_done.exit, label %bb.j

bb.j:                                             ; preds = %_mi_heap_set_default_direct.exit.i
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !22
  %i.ac = getelementptr i8, ptr %i.ab, i64 24
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !206 ; 2 uses
  %.not23.i = icmp eq ptr %i.ad, null
  br i1 %.not23.i, label %._crit_edge.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.j, %bb.l
  %.01624.i = phi ptr [ %i.af, %bb.l ], [ %i.ad, %bb.j ] ; 3 uses
  %i.ae = getelementptr i8, ptr %.01624.i, i64 3048
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !207 ; 2 uses
  %.not19.i = icmp eq ptr %.01624.i, %i.aa
end_hunk_4
begin_hunk_5_@_mi_prim_random_buf:bb.a
    i32 11, label %bb.i
    i32 4, label %bb.i
  ]

bb.h:                                             ; preds = %.lr.ph
  %i.q = add i64 %i.m, %.02543
  br label %bb.i

bb.i:                                             ; preds = %bb.g, %bb.g, %bb.h
  %.227 = phi i64 [ %i.q, %bb.h ], [ %.02543, %bb.g ], [ %.02543, %bb.g ] ; 3 uses
  %i.r = icmp ult i64 %.227, %1
  br i1 %i.r, label %.lr.ph, label %.thread40.loopexit

.thread40.loopexit:                               ; preds = %bb.g, %bb.i
  %.025.lcssa.ph = phi i64 [ %.227, %bb.i ], [ %.02543, %bb.g ]
  %i.s = icmp eq i64 %.025.lcssa.ph, %1
  br label %.thread40

.thread40:                                        ; preds = %.thread40.loopexit, %.preheader
  %.025.lcssa = phi i1 [ true, %.preheader ], [ %i.s, %.thread40.loopexit ]
  %i.t = tail call i64 (i64, ...) @syscall(i64 noundef 3, i32 noundef range(i32 0, -2147483648) %i.i) #55 ; 0 uses
  br label %.thread

.thread:                                          ; preds = %bb.d, %bb.c, %.thread40, %bb.f
  %.2 = phi i1 [ false, %bb.f ], [ %.025.lcssa, %.thread40 ], [ false, %bb.d ], [ %i.e, %bb.c ]
  ret i1 %.2
}

; Function Attrs: nounwind uwtable
define hidden void @_mi_prim_thread_init_auto_done() local_unnamed_addr #2 {
bb.a:
  %i.a = tail call i32 @pthread_key_create(ptr noundef nonnull @_mi_heap_default_key, ptr noundef nonnull @mi_pthread_done) #55 ; 0 uses
  ret void
}

; Function Attrs: nounwind
declare i32 @pthread_key_create(ptr noundef, ptr noundef) local_unnamed_addr #37

; Function Attrs: nounwind uwtable
define internal void @mi_pthread_done(ptr nofree noundef readonly captures(address) %0) #2 {
bb.a:
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @_mi_thread_done(ptr noundef nonnull %0)
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define hidden void @_mi_prim_thread_done_auto_done() local_unnamed_addr #3 {
bb.a:
  ret void
}

; Function Attrs: nounwind
declare i32 @pthread_setspecific(i32 noundef, ptr noundef) local_unnamed_addr #37

; Function Attrs: mustprogress nofree nounwind willreturn memory(inaccessiblemem: readwrite, errnomem: write) uwtable
define hidden noalias noundef ptr @_PyMem_RawMalloc(ptr nofree readnone captures(none) %0, i64 noundef %1) #40 {
bb.a:
  %spec.store.select = tail call i64 @llvm.umax.i64(i64 %1, i64 1)
  %i.a = tail call noalias ptr @malloc(i64 noundef %spec.store.select) #65
  ret ptr %i.a
}

; Function Attrs: mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite, errnomem: write)
declare noalias noundef ptr @malloc(i64 noundef) local_unnamed_addr #41

; Function Attrs: mustprogress nofree nounwind willreturn memory(inaccessiblemem: readwrite, errnomem: write) uwtable
define hidden noalias noundef ptr @_PyMem_RawCalloc(ptr nofree readnone captures(none) %0, i64 noundef %1, i64 noundef %2) #40 {
bb.a:
  %i.a = icmp eq i64 %1, 0
  %i.b = icmp eq i64 %2, 0
  %or.cond = or i1 %i.a, %i.b                     ; 2 uses
  %spec.select = select i1 %or.cond, i64 1, i64 %1
  %spec.select8 = select i1 %or.cond, i64 1, i64 %2
  %i.c = tail call noalias ptr @calloc(i64 noundef %spec.select, i64 noundef %spec.select8) #66
  ret ptr %i.c
}

; Function Attrs: mustprogress nofree nounwind willreturn allockind("alloc,zeroed") allocsize(0,1) memory(inaccessiblemem: readwrite, errnomem: write)
declare noalias noundef ptr @calloc(i64 noundef, i64 noundef) local_unnamed_addr #42

; Function Attrs: mustprogress nounwind willreturn memory(argmem: readwrite, inaccessiblemem: readwrite, errnomem: write) uwtable
define hidden noalias noundef ptr @_PyMem_RawRealloc(ptr nofree readnone captures(none) %0, ptr noundef captures(none) %1, i64 noundef %2) #43 {
bb.a:
  %spec.store.select = tail call i64 @llvm.umax.i64(i64 %2, i64 1)
  %i.a = tail call ptr @realloc(ptr noundef %1, i64 noundef %spec.store.select) #67
  ret ptr %i.a
}

; Function Attrs: mustprogress nounwind willreturn allockind("realloc") allocsize(1) memory(argmem: readwrite, inaccessiblemem: readwrite, errnomem: write)
declare noalias noundef ptr @realloc(ptr allocptr noundef captures(none), i64 noundef) local_unnamed_addr #44

; Function Attrs: mustprogress nounwind willreturn memory(argmem: readwrite, inaccessiblemem: readwrite) uwtable
define hidden void @_PyMem_RawFree(ptr nofree readnone captures(none) %0, ptr noundef captures(none) %1) #45 {
bb.a:
  tail call void @free(ptr noundef %1) #55
  ret void
}

; Function Attrs: nounwind uwtable
define hidden ptr @_PyMem_MiMalloc(ptr nofree readnone captures(none) %0, i64 noundef %1) #2 {
bb.a:
  %i.a = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @_mi_heap_default)
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !54   ; 3 uses
  %i.c = icmp ult i64 %1, 1025
  br i1 %i.c, label %bb.b, label %bb.e, !prof !55

bb.b:                                             ; preds = %bb.a
  %i.d = add nuw nsw i64 %1, 7
  %i.e = lshr i64 %i.d, 3
  %i.f = getelementptr i8, ptr %i.b, i64 8
  %i.g = getelementptr [8 x i8], ptr %i.f, i64 %i.e
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !53   ; 2 uses
  %i.i = getelementptr i8, ptr %i.h, i64 16       ; 2 uses
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !11   ; 3 uses
  %i.k = icmp eq ptr %i.j, null
  br i1 %i.k, label %bb.c, label %bb.d, !prof !17

bb.c:                                             ; preds = %bb.b
  %i.l = tail call noalias ptr @_mi_malloc_generic(ptr noundef nonnull %i.b, i64 noundef %1, i1 noundef zeroext false, i64 noundef 0), !inline_history !50
  br label %mi_malloc.exit

bb.d:                                             ; preds = %bb.b
  %i.m = getelementptr i8, ptr %i.h, i64 24       ; 2 uses
  %i.n = load i32, ptr %i.m, align 8, !tbaa !18
  %i.o = add i32 %i.n, 1
  store i32 %i.o, ptr %i.m, align 8, !tbaa !18
  %i.p = load atomic i64, ptr %i.j monotonic, align 8
  %i.q = inttoptr i64 %i.p to ptr
  store ptr %i.q, ptr %i.i, align 8, !tbaa !11
  br label %mi_malloc.exit

bb.e:                                             ; preds = %bb.a
  %i.r = tail call noalias ptr @_mi_malloc_generic(ptr noundef %i.b, i64 noundef %1, i1 noundef zeroext false, i64 noundef 0)
  br label %mi_malloc.exit

mi_malloc.exit:                                   ; preds = %bb.c, %bb.d, %bb.e
  %.0.i.i.i.i = phi ptr [ %i.r, %bb.e ], [ %i.l, %bb.c ], [ %i.j, %bb.d ]
  ret ptr %.0.i.i.i.i
}

; Function Attrs: nounwind uwtable
define hidden ptr @_PyMem_MiCalloc(ptr nofree readnone captures(none) %0, i64 noundef %1, i64 noundef %2) #2 {
bb.a:
  %i.a = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @_mi_heap_default)
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !54   ; 3 uses
  %.not.i.i = icmp eq i64 %1, 1
  br i1 %.not.i.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = tail call { i64, i1 } @llvm.umul.with.overflow.i64(i64 range(i64 2, 1) %1, i64 %2) ; 2 uses
  %i.d = extractvalue { i64, i1 } %i.c, 1
  %i.e = extractvalue { i64, i1 } %i.c, 0
  br i1 %i.d, label %mi_calloc.exit, label %bb.c, !prof !17

bb.c:                                             ; preds = %bb.b, %bb.a
  %storemerge.i.ph.i.i = phi i64 [ %2, %bb.a ], [ %i.e, %bb.b ] ; 4 uses
  %i.f = icmp ult i64 %storemerge.i.ph.i.i, 1025
  br i1 %i.f, label %bb.d, label %bb.i, !prof !55

bb.d:                                             ; preds = %bb.c
  %i.g = add nuw nsw i64 %storemerge.i.ph.i.i, 7
  %i.h = lshr i64 %i.g, 3
  %i.i = getelementptr i8, ptr %i.b, i64 8
  %i.j = getelementptr [8 x i8], ptr %i.i, i64 %i.h
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !53   ; 4 uses
  %i.l = getelementptr i8, ptr %i.k, i64 16       ; 2 uses
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !11   ; 7 uses
  %i.n = icmp eq ptr %i.m, null
  br i1 %i.n, label %bb.e, label %bb.f, !prof !17

bb.e:                                             ; preds = %bb.d
  %i.o = tail call noalias ptr @_mi_malloc_generic(ptr noundef nonnull %i.b, i64 noundef %storemerge.i.ph.i.i, i1 noundef zeroext true, i64 noundef 0), !inline_history !50
  br label %mi_calloc.exit

bb.f:                                             ; preds = %bb.d
  %i.p = getelementptr i8, ptr %i.k, i64 24       ; 2 uses
  %i.q = load i32, ptr %i.p, align 8, !tbaa !18
  %i.r = add i32 %i.q, 1
  store i32 %i.r, ptr %i.p, align 8, !tbaa !18
  %i.s = load atomic i64, ptr %i.m monotonic, align 8
  %i.t = inttoptr i64 %i.s to ptr
  store ptr %i.t, ptr %i.l, align 8, !tbaa !11
  %i.u = getelementptr i8, ptr %i.k, i64 15
  %i.v = load i8, ptr %i.u, align 1
  %i.w = and i8 %i.v, 1
  %.not.i.i.i.i.i.i.i = icmp eq i8 %i.w, 0
  br i1 %.not.i.i.i.i.i.i.i, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  store atomic i64 0, ptr %i.m seq_cst, align 8, !tbaa !19
  br label %mi_calloc.exit

bb.h:                                             ; preds = %bb.f
  call void @llvm.assume(i1 true) [ "align"(ptr %i.m, i64 8) ]
  %i.x = getelementptr i8, ptr %i.k, i64 28
  %i.y = load i32, ptr %i.x, align 4, !tbaa !21
  %i.z = zext i32 %i.y to i64
  tail call void @llvm.memset.p0.i64(ptr nonnull align 8 %i.m, i8 0, i64 %i.z, i1 false)
  br label %mi_calloc.exit

bb.i:                                             ; preds = %bb.c
  %i.aa = tail call noalias ptr @_mi_malloc_generic(ptr noundef %i.b, i64 noundef %storemerge.i.ph.i.i, i1 noundef zeroext true, i64 noundef 0)
  br label %mi_calloc.exit

mi_calloc.exit:                                   ; preds = %bb.b, %bb.e, %bb.g, %bb.h, %bb.i
  %.0.i.i = phi ptr [ null, %bb.b ], [ %i.aa, %bb.i ], [ %i.o, %bb.e ], [ %i.m, %bb.g ], [ %i.m, %bb.h ]
  ret ptr %.0.i.i
}

; Function Attrs: nounwind uwtable
define hidden ptr @_PyMem_MiRealloc(ptr nofree readnone captures(none) %0, ptr noundef %1, i64 noundef %2) #2 {
bb.a:
  %i.a = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @_mi_heap_default)
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !54
  %i.c = tail call ptr @_mi_heap_realloc_zero(ptr noundef %i.b, ptr noundef %1, i64 noundef %2, i1 noundef zeroext false)
  ret ptr %i.c
}

; Function Attrs: nounwind uwtable
define hidden void @_PyMem_MiFree(ptr nofree readnone captures(none) %0, ptr noundef %1) #2 {
bb.a:
  %i.a = icmp eq ptr %1, null
  br i1 %i.a, label %mi_free.exit, label %bb.b, !prof !17

bb.b:                                             ; preds = %bb.a
  %i.b = ptrtoint ptr %1 to i64                   ; 2 uses
  %i.c = add i64 %i.b, -1
  %i.d = and i64 %i.c, -33554432                  ; 2 uses
  %i.e = inttoptr i64 %i.d to ptr                 ; 4 uses
  %i.f = tail call ptr asm "movq %fs:$1, $0", "=r,*m,~{dirflag},~{fpsr},~{flags}"(ptr elementtype(ptr) null) #60, !srcloc !58
  %i.g = ptrtoint ptr %i.f to i64
  %i.h = getelementptr i8, ptr %i.e, i64 256
  %i.i = load atomic i64, ptr %i.h monotonic, align 256
  %i.j = icmp eq i64 %i.i, %i.g
  %i.k = sub i64 %i.b, %i.d
  %i.l = lshr i64 %i.k, 16
  %i.m = getelementptr i8, ptr %i.e, i64 264
  %i.n = getelementptr [80 x i8], ptr %i.m, i64 %i.l ; 2 uses
  %i.o = getelementptr i8, ptr %i.n, i64 4
  %i.p = load i32, ptr %i.o, align 4, !tbaa !59
  %i.q = zext i32 %i.p to i64
  %i.r = sub nsw i64 0, %i.q
  %i.s = getelementptr i8, ptr %i.n, i64 %i.r     ; 6 uses
  br i1 %i.j, label %bb.c, label %bb.g, !prof !55

bb.c:                                             ; preds = %bb.b
  %i.t = getelementptr i8, ptr %i.s, i64 14
  %i.u = load i8, ptr %i.t, align 2, !tbaa !60
  %i.v = icmp eq i8 %i.u, 0
  br i1 %i.v, label %bb.d, label %bb.f, !prof !55

bb.d:                                             ; preds = %bb.c
  %i.w = getelementptr i8, ptr %i.s, i64 32       ; 2 uses
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !57
  %i.y = ptrtoint ptr %i.x to i64
  store atomic i64 %i.y, ptr %1 monotonic, align 8
  store ptr %1, ptr %i.w, align 8, !tbaa !57
  %i.z = getelementptr i8, ptr %i.s, i64 24       ; 2 uses
  %i.aa = load i32, ptr %i.z, align 8, !tbaa !18
  %i.ab = add i32 %i.aa, -1                       ; 2 uses
  store i32 %i.ab, ptr %i.z, align 8, !tbaa !18
  %i.ac = icmp eq i32 %i.ab, 0
  br i1 %i.ac, label %bb.e, label %mi_free.exit, !prof !17

bb.e:                                             ; preds = %bb.d
  tail call void @_mi_page_retire(ptr noundef %i.s)
  br label %mi_free.exit

bb.f:                                             ; preds = %bb.c
  tail call void @_mi_free_generic(ptr noundef nonnull %i.e, ptr noundef %i.s, i1 noundef zeroext true, ptr noundef nonnull %1)
  br label %mi_free.exit

bb.g:                                             ; preds = %bb.b
  tail call void @_mi_free_generic(ptr noundef nonnull %i.e, ptr noundef %i.s, i1 noundef zeroext false, ptr noundef nonnull %1)
  br label %mi_free.exit

mi_free.exit:                                     ; preds = %bb.a, %bb.d, %bb.e, %bb.f, %bb.g
  ret void
}

; Function Attrs: nounwind uwtable
define hidden ptr @_PyObject_MiMalloc(ptr nofree readnone captures(none) %0, i64 noundef %1) #2 {
bb.a:
  %i.a = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @_mi_heap_default)
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !54   ; 3 uses
  %i.c = icmp ult i64 %1, 1025
  br i1 %i.c, label %bb.b, label %bb.e, !prof !55

bb.b:                                             ; preds = %bb.a
  %i.d = add nuw nsw i64 %1, 7
  %i.e = lshr i64 %i.d, 3
  %i.f = getelementptr i8, ptr %i.b, i64 8
  %i.g = getelementptr [8 x i8], ptr %i.f, i64 %i.e
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !53   ; 2 uses
  %i.i = getelementptr i8, ptr %i.h, i64 16       ; 2 uses
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !11   ; 3 uses
  %i.k = icmp eq ptr %i.j, null
  br i1 %i.k, label %bb.c, label %bb.d, !prof !17

bb.c:                                             ; preds = %bb.b
  %i.l = tail call noalias ptr @_mi_malloc_generic(ptr noundef nonnull %i.b, i64 noundef %1, i1 noundef zeroext false, i64 noundef 0), !inline_history !50
  br label %mi_malloc.exit

bb.d:                                             ; preds = %bb.b
  %i.m = getelementptr i8, ptr %i.h, i64 24       ; 2 uses
  %i.n = load i32, ptr %i.m, align 8, !tbaa !18
  %i.o = add i32 %i.n, 1
  store i32 %i.o, ptr %i.m, align 8, !tbaa !18
  %i.p = load atomic i64, ptr %i.j monotonic, align 8
  %i.q = inttoptr i64 %i.p to ptr
  store ptr %i.q, ptr %i.i, align 8, !tbaa !11
  br label %mi_malloc.exit

bb.e:                                             ; preds = %bb.a
  %i.r = tail call noalias ptr @_mi_malloc_generic(ptr noundef %i.b, i64 noundef %1, i1 noundef zeroext false, i64 noundef 0)
  br label %mi_malloc.exit

mi_malloc.exit:                                   ; preds = %bb.c, %bb.d, %bb.e
  %.0.i.i.i.i = phi ptr [ %i.r, %bb.e ], [ %i.l, %bb.c ], [ %i.j, %bb.d ]
  ret ptr %.0.i.i.i.i
}

; Function Attrs: nounwind uwtable
define hidden ptr @_PyObject_MiCalloc(ptr nofree readnone captures(none) %0, i64 noundef %1, i64 noundef %2) #2 {
bb.a:
  %i.a = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @_mi_heap_default)
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !54   ; 3 uses
  %.not.i.i = icmp eq i64 %1, 1
  br i1 %.not.i.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = tail call { i64, i1 } @llvm.umul.with.overflow.i64(i64 range(i64 2, 1) %1, i64 %2) ; 2 uses
  %i.d = extractvalue { i64, i1 } %i.c, 1
  %i.e = extractvalue { i64, i1 } %i.c, 0
  br i1 %i.d, label %mi_calloc.exit, label %bb.c, !prof !17

bb.c:                                             ; preds = %bb.b, %bb.a
  %storemerge.i.ph.i.i = phi i64 [ %2, %bb.a ], [ %i.e, %bb.b ] ; 4 uses
  %i.f = icmp ult i64 %storemerge.i.ph.i.i, 1025
  br i1 %i.f, label %bb.d, label %bb.i, !prof !55

bb.d:                                             ; preds = %bb.c
  %i.g = add nuw nsw i64 %storemerge.i.ph.i.i, 7
  %i.h = lshr i64 %i.g, 3
  %i.i = getelementptr i8, ptr %i.b, i64 8
  %i.j = getelementptr [8 x i8], ptr %i.i, i64 %i.h
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !53   ; 4 uses
  %i.l = getelementptr i8, ptr %i.k, i64 16       ; 2 uses
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !11   ; 7 uses
  %i.n = icmp eq ptr %i.m, null
  br i1 %i.n, label %bb.e, label %bb.f, !prof !17

bb.e:                                             ; preds = %bb.d
  %i.o = tail call noalias ptr @_mi_malloc_generic(ptr noundef nonnull %i.b, i64 noundef %storemerge.i.ph.i.i, i1 noundef zeroext true, i64 noundef 0), !inline_history !50
  br label %mi_calloc.exit

bb.f:                                             ; preds = %bb.d
  %i.p = getelementptr i8, ptr %i.k, i64 24       ; 2 uses
  %i.q = load i32, ptr %i.p, align 8, !tbaa !18
  %i.r = add i32 %i.q, 1
  store i32 %i.r, ptr %i.p, align 8, !tbaa !18
  %i.s = load atomic i64, ptr %i.m monotonic, align 8
  %i.t = inttoptr i64 %i.s to ptr
  store ptr %i.t, ptr %i.l, align 8, !tbaa !11
  %i.u = getelementptr i8, ptr %i.k, i64 15
  %i.v = load i8, ptr %i.u, align 1
  %i.w = and i8 %i.v, 1
  %.not.i.i.i.i.i.i.i = icmp eq i8 %i.w, 0
  br i1 %.not.i.i.i.i.i.i.i, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  store atomic i64 0, ptr %i.m seq_cst, align 8, !tbaa !19
  br label %mi_calloc.exit

bb.h:                                             ; preds = %bb.f
  call void @llvm.assume(i1 true) [ "align"(ptr %i.m, i64 8) ]
  %i.x = getelementptr i8, ptr %i.k, i64 28
  %i.y = load i32, ptr %i.x, align 4, !tbaa !21
  %i.z = zext i32 %i.y to i64
  tail call void @llvm.memset.p0.i64(ptr nonnull align 8 %i.m, i8 0, i64 %i.z, i1 false)
  br label %mi_calloc.exit

bb.i:                                             ; preds = %bb.c
  %i.aa = tail call noalias ptr @_mi_malloc_generic(ptr noundef %i.b, i64 noundef %storemerge.i.ph.i.i, i1 noundef zeroext true, i64 noundef 0)
  br label %mi_calloc.exit

mi_calloc.exit:                                   ; preds = %bb.b, %bb.e, %bb.g, %bb.h, %bb.i
  %.0.i.i = phi ptr [ null, %bb.b ], [ %i.aa, %bb.i ], [ %i.o, %bb.e ], [ %i.m, %bb.g ], [ %i.m, %bb.h ]
  ret ptr %.0.i.i
}

; Function Attrs: nounwind uwtable
define hidden ptr @_PyObject_MiRealloc(ptr nofree readnone captures(none) %0, ptr noundef %1, i64 noundef %2) #2 {
bb.a:
  %i.a = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @_mi_heap_default)
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !54
  %i.c = tail call ptr @_mi_heap_realloc_zero(ptr noundef %i.b, ptr noundef %1, i64 noundef %2, i1 noundef zeroext false)
  ret ptr %i.c
}

; Function Attrs: nounwind uwtable
define hidden void @_PyObject_MiFree(ptr nofree readnone captures(none) %0, ptr noundef %1) #2 {
bb.a:
  %i.a = icmp eq ptr %1, null
  br i1 %i.a, label %mi_free.exit, label %bb.b, !prof !17

bb.b:                                             ; preds = %bb.a
  %i.b = ptrtoint ptr %1 to i64                   ; 2 uses
  %i.c = add i64 %i.b, -1
  %i.d = and i64 %i.c, -33554432                  ; 2 uses
  %i.e = inttoptr i64 %i.d to ptr                 ; 4 uses
  %i.f = tail call ptr asm "movq %fs:$1, $0", "=r,*m,~{dirflag},~{fpsr},~{flags}"(ptr elementtype(ptr) null) #60, !srcloc !58
  %i.g = ptrtoint ptr %i.f to i64
  %i.h = getelementptr i8, ptr %i.e, i64 256
  %i.i = load atomic i64, ptr %i.h monotonic, align 256
  %i.j = icmp eq i64 %i.i, %i.g
  %i.k = sub i64 %i.b, %i.d
  %i.l = lshr i64 %i.k, 16
  %i.m = getelementptr i8, ptr %i.e, i64 264
  %i.n = getelementptr [80 x i8], ptr %i.m, i64 %i.l ; 2 uses
  %i.o = getelementptr i8, ptr %i.n, i64 4
  %i.p = load i32, ptr %i.o, align 4, !tbaa !59
  %i.q = zext i32 %i.p to i64
  %i.r = sub nsw i64 0, %i.q
  %i.s = getelementptr i8, ptr %i.n, i64 %i.r     ; 6 uses
  br i1 %i.j, label %bb.c, label %bb.g, !prof !55

bb.c:                                             ; preds = %bb.b
  %i.t = getelementptr i8, ptr %i.s, i64 14
  %i.u = load i8, ptr %i.t, align 2, !tbaa !60
  %i.v = icmp eq i8 %i.u, 0
  br i1 %i.v, label %bb.d, label %bb.f, !prof !55

bb.d:                                             ; preds = %bb.c
  %i.w = getelementptr i8, ptr %i.s, i64 32       ; 2 uses
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !57
  %i.y = ptrtoint ptr %i.x to i64
  store atomic i64 %i.y, ptr %1 monotonic, align 8
  store ptr %1, ptr %i.w, align 8, !tbaa !57
  %i.z = getelementptr i8, ptr %i.s, i64 24       ; 2 uses
  %i.aa = load i32, ptr %i.z, align 8, !tbaa !18
  %i.ab = add i32 %i.aa, -1                       ; 2 uses
  store i32 %i.ab, ptr %i.z, align 8, !tbaa !18
  %i.ac = icmp eq i32 %i.ab, 0
  br i1 %i.ac, label %bb.e, label %mi_free.exit, !prof !17

bb.e:                                             ; preds = %bb.d
  tail call void @_mi_page_retire(ptr noundef %i.s)
  br label %mi_free.exit

bb.f:                                             ; preds = %bb.c
  tail call void @_mi_free_generic(ptr noundef nonnull %i.e, ptr noundef %i.s, i1 noundef zeroext true, ptr noundef nonnull %1)
  br label %mi_free.exit

bb.g:                                             ; preds = %bb.b
  tail call void @_mi_free_generic(ptr noundef nonnull %i.e, ptr noundef %i.s, i1 noundef zeroext false, ptr noundef nonnull %1)
  br label %mi_free.exit

mi_free.exit:                                     ; preds = %bb.a, %bb.d, %bb.e, %bb.f, %bb.g
  ret void
}

; Function Attrs: nounwind uwtable
define hidden ptr @_PyMem_MiRawMalloc(ptr nofree readnone captures(none) %0, i64 noundef %1) #2 {
bb.a:
  %i.a = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @_mi_heap_default)
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !54   ; 3 uses
  %i.c = icmp ult i64 %1, 1025
  br i1 %i.c, label %bb.b, label %bb.e, !prof !55

bb.b:                                             ; preds = %bb.a
  %i.d = add nuw nsw i64 %1, 7
  %i.e = lshr i64 %i.d, 3
  %i.f = getelementptr i8, ptr %i.b, i64 8
  %i.g = getelementptr [8 x i8], ptr %i.f, i64 %i.e
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !53   ; 2 uses
  %i.i = getelementptr i8, ptr %i.h, i64 16       ; 2 uses
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !11   ; 3 uses
  %i.k = icmp eq ptr %i.j, null
  br i1 %i.k, label %bb.c, label %bb.d, !prof !17

bb.c:                                             ; preds = %bb.b
  %i.l = tail call noalias ptr @_mi_malloc_generic(ptr noundef nonnull %i.b, i64 noundef %1, i1 noundef zeroext false, i64 noundef 0), !inline_history !50
  br label %mi_malloc.exit

bb.d:                                             ; preds = %bb.b
  %i.m = getelementptr i8, ptr %i.h, i64 24       ; 2 uses
  %i.n = load i32, ptr %i.m, align 8, !tbaa !18
  %i.o = add i32 %i.n, 1
  store i32 %i.o, ptr %i.m, align 8, !tbaa !18
  %i.p = load atomic i64, ptr %i.j monotonic, align 8
  %i.q = inttoptr i64 %i.p to ptr
  store ptr %i.q, ptr %i.i, align 8, !tbaa !11
  br label %mi_malloc.exit

bb.e:                                             ; preds = %bb.a
  %i.r = tail call noalias ptr @_mi_malloc_generic(ptr noundef %i.b, i64 noundef %1, i1 noundef zeroext false, i64 noundef 0)
  br label %mi_malloc.exit

mi_malloc.exit:                                   ; preds = %bb.c, %bb.d, %bb.e
  %.0.i.i.i.i = phi ptr [ %i.r, %bb.e ], [ %i.l, %bb.c ], [ %i.j, %bb.d ]
  ret ptr %.0.i.i.i.i
}

; Function Attrs: nounwind uwtable
define hidden ptr @_PyMem_MiRawCalloc(ptr nofree readnone captures(none) %0, i64 noundef %1, i64 noundef %2) #2 {
bb.a:
  %i.a = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @_mi_heap_default)
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !54   ; 3 uses
  %.not.i.i = icmp eq i64 %1, 1
  br i1 %.not.i.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = tail call { i64, i1 } @llvm.umul.with.overflow.i64(i64 range(i64 2, 1) %1, i64 %2) ; 2 uses
  %i.d = extractvalue { i64, i1 } %i.c, 1
  %i.e = extractvalue { i64, i1 } %i.c, 0
  br i1 %i.d, label %mi_calloc.exit, label %bb.c, !prof !17

bb.c:                                             ; preds = %bb.b, %bb.a
  %storemerge.i.ph.i.i = phi i64 [ %2, %bb.a ], [ %i.e, %bb.b ] ; 4 uses
  %i.f = icmp ult i64 %storemerge.i.ph.i.i, 1025
  br i1 %i.f, label %bb.d, label %bb.i, !prof !55

bb.d:                                             ; preds = %bb.c
  %i.g = add nuw nsw i64 %storemerge.i.ph.i.i, 7
  %i.h = lshr i64 %i.g, 3
  %i.i = getelementptr i8, ptr %i.b, i64 8
  %i.j = getelementptr [8 x i8], ptr %i.i, i64 %i.h
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !53   ; 4 uses
  %i.l = getelementptr i8, ptr %i.k, i64 16       ; 2 uses
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !11   ; 7 uses
  %i.n = icmp eq ptr %i.m, null
  br i1 %i.n, label %bb.e, label %bb.f, !prof !17

bb.e:                                             ; preds = %bb.d
  %i.o = tail call noalias ptr @_mi_malloc_generic(ptr noundef nonnull %i.b, i64 noundef %storemerge.i.ph.i.i, i1 noundef zeroext true, i64 noundef 0), !inline_history !50
  br label %mi_calloc.exit

bb.f:                                             ; preds = %bb.d
  %i.p = getelementptr i8, ptr %i.k, i64 24       ; 2 uses
  %i.q = load i32, ptr %i.p, align 8, !tbaa !18
  %i.r = add i32 %i.q, 1
  store i32 %i.r, ptr %i.p, align 8, !tbaa !18
  %i.s = load atomic i64, ptr %i.m monotonic, align 8
  %i.t = inttoptr i64 %i.s to ptr
  store ptr %i.t, ptr %i.l, align 8, !tbaa !11
  %i.u = getelementptr i8, ptr %i.k, i64 15
  %i.v = load i8, ptr %i.u, align 1
  %i.w = and i8 %i.v, 1
  %.not.i.i.i.i.i.i.i = icmp eq i8 %i.w, 0
  br i1 %.not.i.i.i.i.i.i.i, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  store atomic i64 0, ptr %i.m seq_cst, align 8, !tbaa !19
  br label %mi_calloc.exit

bb.h:                                             ; preds = %bb.f
  call void @llvm.assume(i1 true) [ "align"(ptr %i.m, i64 8) ]
  %i.x = getelementptr i8, ptr %i.k, i64 28
  %i.y = load i32, ptr %i.x, align 4, !tbaa !21
  %i.z = zext i32 %i.y to i64
  tail call void @llvm.memset.p0.i64(ptr nonnull align 8 %i.m, i8 0, i64 %i.z, i1 false)
  br label %mi_calloc.exit

bb.i:                                             ; preds = %bb.c
  %i.aa = tail call noalias ptr @_mi_malloc_generic(ptr noundef %i.b, i64 noundef %storemerge.i.ph.i.i, i1 noundef zeroext true, i64 noundef 0)
  br label %mi_calloc.exit

mi_calloc.exit:                                   ; preds = %bb.b, %bb.e, %bb.g, %bb.h, %bb.i
  %.0.i.i = phi ptr [ null, %bb.b ], [ %i.aa, %bb.i ], [ %i.o, %bb.e ], [ %i.m, %bb.g ], [ %i.m, %bb.h ]
  ret ptr %.0.i.i
}

; Function Attrs: nounwind uwtable
define hidden ptr @_PyMem_MiRawRealloc(ptr nofree readnone captures(none) %0, ptr noundef %1, i64 noundef %2) #2 {
bb.a:
  %i.a = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @_mi_heap_default)
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !54
  %i.c = tail call ptr @_mi_heap_realloc_zero(ptr noundef %i.b, ptr noundef %1, i64 noundef %2, i1 noundef zeroext false)
  ret ptr %i.c
}

; Function Attrs: nounwind uwtable
define hidden void @_PyMem_MiRawFree(ptr nofree readnone captures(none) %0, ptr noundef %1) #2 {
bb.a:
  %i.a = icmp eq ptr %1, null
  br i1 %i.a, label %mi_free.exit, label %bb.b, !prof !17

bb.b:                                             ; preds = %bb.a
  %i.b = ptrtoint ptr %1 to i64                   ; 2 uses
  %i.c = add i64 %i.b, -1
  %i.d = and i64 %i.c, -33554432                  ; 2 uses
  %i.e = inttoptr i64 %i.d to ptr                 ; 4 uses
  %i.f = tail call ptr asm "movq %fs:$1, $0", "=r,*m,~{dirflag},~{fpsr},~{flags}"(ptr elementtype(ptr) null) #60, !srcloc !58
  %i.g = ptrtoint ptr %i.f to i64
  %i.h = getelementptr i8, ptr %i.e, i64 256
  %i.i = load atomic i64, ptr %i.h monotonic, align 256
  %i.j = icmp eq i64 %i.i, %i.g
  %i.k = sub i64 %i.b, %i.d
  %i.l = lshr i64 %i.k, 16
  %i.m = getelementptr i8, ptr %i.e, i64 264
  %i.n = getelementptr [80 x i8], ptr %i.m, i64 %i.l ; 2 uses
  %i.o = getelementptr i8, ptr %i.n, i64 4
  %i.p = load i32, ptr %i.o, align 4, !tbaa !59
  %i.q = zext i32 %i.p to i64
  %i.r = sub nsw i64 0, %i.q
  %i.s = getelementptr i8, ptr %i.n, i64 %i.r     ; 6 uses
  br i1 %i.j, label %bb.c, label %bb.g, !prof !55

bb.c:                                             ; preds = %bb.b
  %i.t = getelementptr i8, ptr %i.s, i64 14
  %i.u = load i8, ptr %i.t, align 2, !tbaa !60
  %i.v = icmp eq i8 %i.u, 0
  br i1 %i.v, label %bb.d, label %bb.f, !prof !55

bb.d:                                             ; preds = %bb.c
  %i.w = getelementptr i8, ptr %i.s, i64 32       ; 2 uses
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !57
  %i.y = ptrtoint ptr %i.x to i64
  store atomic i64 %i.y, ptr %1 monotonic, align 8
  store ptr %1, ptr %i.w, align 8, !tbaa !57
  %i.z = getelementptr i8, ptr %i.s, i64 24       ; 2 uses
  %i.aa = load i32, ptr %i.z, align 8, !tbaa !18
  %i.ab = add i32 %i.aa, -1                       ; 2 uses
  store i32 %i.ab, ptr %i.z, align 8, !tbaa !18
  %i.ac = icmp eq i32 %i.ab, 0
  br i1 %i.ac, label %bb.e, label %mi_free.exit, !prof !17

bb.e:                                             ; preds = %bb.d
  tail call void @_mi_page_retire(ptr noundef %i.s)
  br label %mi_free.exit

bb.f:                                             ; preds = %bb.c
  tail call void @_mi_free_generic(ptr noundef nonnull %i.e, ptr noundef %i.s, i1 noundef zeroext true, ptr noundef nonnull %1)
  br label %mi_free.exit

bb.g:                                             ; preds = %bb.b
  tail call void @_mi_free_generic(ptr noundef nonnull %i.e, ptr noundef %i.s, i1 noundef zeroext false, ptr noundef nonnull %1)
  br label %mi_free.exit

mi_free.exit:                                     ; preds = %bb.a, %bb.d, %bb.e, %bb.f, %bb.g
  ret void
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(inaccessiblemem: readwrite, errnomem: write) uwtable
define hidden noalias noundef ptr @_PyMem_DefaultRawMalloc(i64 noundef %0) local_unnamed_addr #40 {
bb.a:
  %spec.store.select.i = tail call i64 @llvm.umax.i64(i64 %0, i64 1)
  %i.a = tail call noalias noundef ptr @malloc(i64 noundef %spec.store.select.i) #65
  ret ptr %i.a
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(inaccessiblemem: readwrite, errnomem: write) uwtable
define hidden noalias noundef ptr @_PyMem_DefaultRawCalloc(i64 noundef %0, i64 noundef %1) local_unnamed_addr #40 {
bb.a:
  %i.a = icmp eq i64 %0, 0
  %i.b = icmp eq i64 %1, 0
  %or.cond.i = or i1 %i.a, %i.b                   ; 2 uses
  %spec.select.i = select i1 %or.cond.i, i64 1, i64 %0
  %spec.select8.i = select i1 %or.cond.i, i64 1, i64 %1
  %i.c = tail call noalias noundef ptr @calloc(i64 noundef %spec.select.i, i64 noundef %spec.select8.i) #66
  ret ptr %i.c
}

; Function Attrs: mustprogress nounwind willreturn memory(argmem: readwrite, inaccessiblemem: readwrite, errnomem: write) uwtable
define hidden noalias noundef ptr @_PyMem_DefaultRawRealloc(ptr noundef captures(none) %0, i64 noundef %1) local_unnamed_addr #43 {
bb.a:
  %spec.store.select.i = tail call i64 @llvm.umax.i64(i64 %1, i64 1)
  %i.a = tail call noalias noundef ptr @realloc(ptr noundef %0, i64 noundef %spec.store.select.i) #67
  ret ptr %i.a
}

; Function Attrs: mustprogress nounwind willreturn memory(argmem: readwrite, inaccessiblemem: readwrite) uwtable
define hidden void @_PyMem_DefaultRawFree(ptr noundef captures(none) %0) local_unnamed_addr #45 {
bb.a:
  tail call void @free(ptr noundef %0) #55
  ret void
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(readwrite, target_mem: none) uwtable
define hidden noundef ptr @_PyMem_DefaultRawWcsdup(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #46 {
bb.a:
  %i.a = tail call i64 @wcslen(ptr noundef %0) #61 ; 2 uses
  %i.b = icmp ugt i64 %i.a, 2305843009213693950
  br i1 %i.b, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = shl nuw nsw i64 %i.a, 2
  %i.d = add nuw nsw i64 %i.c, 4                  ; 2 uses
  %i.e = tail call noalias noundef ptr @malloc(i64 noundef %i.d) #65 ; 3 uses
  %i.f = icmp eq ptr %i.e, null
  br i1 %i.f, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(1) %i.e, ptr noundef nonnull align 4 dereferenceable(1) %0, i64 %i.d, i1 false)
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b, %bb.a
  %.1 = phi ptr [ null, %bb.a ], [ %i.e, %bb.c ], [ null, %bb.b ]
  ret ptr %.1
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i64 @wcslen(ptr noundef captures(none)) local_unnamed_addr #7

; Function Attrs: nounwind uwtable
define hidden ptr @_PyMem_ArenaAlloc(ptr nofree noundef readnone captures(none) %0, i64 noundef %1) local_unnamed_addr #2 {
bb.a:
  %i.a = tail call ptr @mmap64(ptr noundef null, i64 noundef %1, i32 noundef 3, i32 noundef 34, i32 noundef -1, i64 noundef 0) #55 ; 4 uses
  %i.b = icmp eq ptr %i.a, inttoptr (i64 -1 to ptr)
  br i1 %i.b, label %_PyAnnotateMemoryMap.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = tail call ptr @_Py_GetConfig() #55
  %i.d = getelementptr i8, ptr %i.c, i64 12
  %i.e = load i32, ptr %i.d, align 4, !tbaa !344
  %.not.i = icmp eq i32 %i.e, 0
  br i1 %.not.i, label %_PyAnnotateMemoryMap.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = ptrtoint ptr %i.a to i64
  %i.g = tail call i32 (i32, ...) @prctl(i32 noundef 1398164801, i32 noundef 0, i64 noundef %i.f, i64 noundef %1, ptr noundef nonnull @.str.35) #55 ; 0 uses
  br label %_PyAnnotateMemoryMap.exit

_PyAnnotateMemoryMap.exit:                        ; preds = %bb.c, %bb.b, %bb.a
  %.0 = phi ptr [ null, %bb.a ], [ %i.a, %bb.b ], [ %i.a, %bb.c ]
  ret ptr %.0
}

; Function Attrs: nounwind
declare ptr @mmap64(ptr noundef, i64 noundef, i32 noundef, i32 noundef, i32 noundef, i64 noundef) local_unnamed_addr #37

; Function Attrs: nounwind uwtable
define hidden void @_PyMem_ArenaFree(ptr nofree noundef readnone captures(none) %0, ptr noundef %1, i64 noundef %2) local_unnamed_addr #2 {
bb.a:
  %i.a = icmp eq ptr %1, null
  br i1 %i.a, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = tail call i32 @munmap(ptr noundef nonnull %1, i64 noundef %2) #55 ; 0 uses
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define hidden range(i32 -1, 1) i32 @_PyMem_GetAllocatorName(ptr nofree noundef readonly captures(address_is_null) %0, ptr nofree noundef writeonly captures(none) %1) local_unnamed_addr #36 {
bb.a:
  %i.a = icmp eq ptr %0, null
  br i1 %i.a, label %.sink.split, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = load i8, ptr %0, align 1, !tbaa !60
  %i.c = icmp eq i8 %i.b, 0
  br i1 %i.c, label %.sink.split, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.d = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %0, ptr noundef nonnull dereferenceable(8) @.str.36) #61
  %i.e = icmp eq i32 %i.d, 0
  br i1 %i.e, label %.sink.split, label %bb.d
end_hunk_5
begin_hunk_6_@_mi_free_block_mt:bb.a
  %i.am = getelementptr i8, ptr %0, i64 40        ; 5 uses
  %i.an = load atomic i64, ptr %i.am monotonic, align 8
  %i.ao = ptrtoint ptr %1 to i64
  br label %bb.h

bb.h:                                             ; preds = %.backedge, %_mi_segment_huge_page_reset.exit
  %.047 = phi i64 [ %i.an, %_mi_segment_huge_page_reset.exit ], [ %.047.be, %.backedge ] ; 5 uses
  %i.ap = and i64 %.047, 3                        ; 2 uses
  %i.aq = icmp eq i64 %i.ap, 0
  br i1 %i.aq, label %bb.i, label %.thread, !prof !17

bb.i:                                             ; preds = %bb.h
  %i.ar = or disjoint i64 %.047, 1
  %i.as = cmpxchg weak ptr %i.am, i64 %.047, i64 %i.ar release monotonic, align 8 ; 2 uses
  %i.at = extractvalue { i64, i1 } %i.as, 1
  br i1 %i.at, label %bb.j, label %.backedge

.backedge:                                        ; preds = %bb.i, %.thread
  %.pn = phi { i64, i1 } [ %i.as, %bb.i ], [ %i.aw, %.thread ]
  %.047.be = extractvalue { i64, i1 } %.pn, 0
  br label %bb.h, !llvm.loop !621

.thread:                                          ; preds = %bb.h
  %i.au = and i64 %.047, -4
  store atomic i64 %i.au, ptr %1 monotonic, align 8
  %i.av = or i64 %i.ap, %i.ao
  %i.aw = cmpxchg weak ptr %i.am, i64 %.047, i64 %i.av release monotonic, align 8 ; 2 uses
  %i.ax = extractvalue { i64, i1 } %i.aw, 1
  br i1 %i.ax, label %.thread55, label %.backedge

bb.j:                                             ; preds = %bb.i
  %i.ay = getelementptr i8, ptr %0, i64 48
  %i.az = load atomic i64, ptr %i.ay acquire, align 8 ; 2 uses
  %.not = icmp eq i64 %i.az, 0
  br i1 %.not, label %.loopexit, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ba = inttoptr i64 %i.az to ptr
  %i.bb = getelementptr i8, ptr %i.ba, i64 2840   ; 2 uses
  %i.bc = load atomic ptr, ptr %i.bb monotonic, align 8
  br label %bb.l

bb.l:                                             ; preds = %bb.l, %bb.k
  %.048 = phi ptr [ %i.bc, %bb.k ], [ %i.bg, %bb.l ] ; 2 uses
  %i.bd = ptrtoint ptr %.048 to i64
  store atomic i64 %i.bd, ptr %1 monotonic, align 8
  %i.be = cmpxchg weak ptr %i.bb, ptr %.048, ptr %1 release monotonic, align 8 ; 2 uses
  %i.bf = extractvalue { ptr, i1 } %i.be, 1
  %i.bg = extractvalue { ptr, i1 } %i.be, 0
  br i1 %i.bf, label %.loopexit, label %bb.l, !llvm.loop !622

.loopexit:                                        ; preds = %bb.l, %bb.j
  %i.bh = load atomic i64, ptr %i.am monotonic, align 8
  br label %bb.m

bb.m:                                             ; preds = %bb.m, %.loopexit
  %.2 = phi i64 [ %i.bh, %.loopexit ], [ %i.bm, %bb.m ] ; 2 uses
  %i.bi = and i64 %.2, -4
  %i.bj = or disjoint i64 %i.bi, 2
  %i.bk = cmpxchg weak ptr %i.am, i64 %.2, i64 %i.bj release monotonic, align 8 ; 2 uses
  %i.bl = extractvalue { i64, i1 } %i.bk, 1
  %i.bm = extractvalue { i64, i1 } %i.bk, 0
  br i1 %i.bl, label %.thread55, label %bb.m, !llvm.loop !623

.thread55:                                        ; preds = %.thread, %bb.m
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define internal fastcc i64 @mi_page_usable_aligned_size_of(ptr noundef %0, ptr noundef %1, ptr noundef nonnull %2) unnamed_addr #50 {
bb.a:
  %i.a = getelementptr i8, ptr %1, i64 28
  %i.b = load i32, ptr %i.a, align 4, !tbaa !21   ; 5 uses
  %i.c = zext i32 %i.b to i64                     ; 4 uses
  %i.d = load i32, ptr %1, align 8, !tbaa !52
  %i.e = zext i32 %i.d to i64
  %i.f = icmp ugt i32 %i.b, 7
  br i1 %i.f, label %bb.b, label %_mi_page_start.exit.thread.i

bb.b:                                             ; preds = %bb.a
  %i.g = icmp ult i32 %i.b, 65
  br i1 %i.g, label %bb.c, label %_mi_page_start.exit.i

bb.c:                                             ; preds = %bb.b
  %i.h = mul nuw nsw i64 %i.c, 3
  br label %_mi_page_start.exit.thread.i

_mi_page_start.exit.thread.i:                     ; preds = %bb.c, %bb.a
  %.0.i.i.i.ph.i = phi i64 [ 0, %bb.a ], [ %i.h, %bb.c ]
  %i.i = ptrtoint ptr %1 to i64
  %i.j = getelementptr i8, ptr %0, i64 264
  %i.k = ptrtoint ptr %i.j to i64
  %i.l = sub i64 %i.i, %i.k
  %i.m = sdiv exact i64 %i.l, 80
  %i.n = shl i64 %i.m, 16
  %i.o = getelementptr i8, ptr %0, i64 %i.n
  %i.p = getelementptr i8, ptr %i.o, i64 %.0.i.i.i.ph.i
  %i.q = ptrtoint ptr %2 to i64                   ; 2 uses
  %i.r = ptrtoint ptr %i.p to i64
  %i.s = sub i64 %i.q, %i.r
  br label %bb.d

_mi_page_start.exit.i:                            ; preds = %bb.b
  %i.t = icmp ult i32 %i.b, 513
  %spec.select.i.i.i.i = select i1 %i.t, i64 %i.c, i64 0
  %i.u = ptrtoint ptr %1 to i64
  %i.v = getelementptr i8, ptr %0, i64 264
  %i.w = ptrtoint ptr %i.v to i64
  %i.x = sub i64 %i.u, %i.w
  %i.y = sdiv exact i64 %i.x, 80
  %i.z = shl i64 %i.y, 16
  %i.aa = getelementptr i8, ptr %0, i64 %i.z
  %i.ab = getelementptr i8, ptr %i.aa, i64 %spec.select.i.i.i.i
  %i.ac = ptrtoint ptr %2 to i64                  ; 4 uses
  %i.ad = ptrtoint ptr %i.ab to i64
  %i.ae = sub i64 %i.ac, %i.ad                    ; 2 uses
  %i.af = icmp sgt i32 %i.b, -1
  br i1 %i.af, label %bb.d, label %_mi_segment_page_start.exit.i.i.i, !prof !56

bb.d:                                             ; preds = %_mi_page_start.exit.thread.i, %_mi_page_start.exit.i
  %.pre.pre-phi = phi i64 [ %i.q, %_mi_page_start.exit.thread.i ], [ %i.ac, %_mi_page_start.exit.i ] ; 2 uses
  %.ph = phi i64 [ %i.s, %_mi_page_start.exit.thread.i ], [ %i.ae, %_mi_page_start.exit.i ]
  %i.ag = urem i64 %.ph, %i.c
  %i.ah = sub i64 %.pre.pre-phi, %i.ag
  br label %mi_page_usable_size_of.exit

_mi_segment_page_start.exit.i.i.i:                ; preds = %_mi_page_start.exit.i
  %i.ai = shl nuw nsw i64 %i.e, 16                ; 2 uses
  %i.aj = urem i64 %i.ae, %i.ai
  %i.ak = sub i64 %i.ac, %i.aj
  br label %mi_page_usable_size_of.exit

mi_page_usable_size_of.exit:                      ; preds = %bb.d, %_mi_segment_page_start.exit.i.i.i
  %.pre-phi = phi i64 [ %.pre.pre-phi, %bb.d ], [ %i.ac, %_mi_segment_page_start.exit.i.i.i ]
  %i.al = phi i64 [ %i.ah, %bb.d ], [ %i.ak, %_mi_segment_page_start.exit.i.i.i ]
  %.0.i.i.i = phi i64 [ %i.c, %bb.d ], [ %i.ai, %_mi_segment_page_start.exit.i.i.i ]
  %.neg = sub i64 %i.al, %.pre-phi
  %i.am = add i64 %.neg, %.0.i.i.i
  ret i64 %i.am
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare { i64, i1 } @llvm.umul.with.overflow.i64(i64, i64) #51

; Function Attrs: cold nofree noreturn nounwind
declare void @abort() local_unnamed_addr #52

; Function Attrs: noinline nounwind uwtable
define internal fastcc ptr @mi_heap_malloc_zero_aligned_at_fallback(ptr noundef %0, i64 noundef range(i64 0, -9223372036854775808) %1, i64 noundef %2, i64 noundef %3, i1 noundef zeroext %4) unnamed_addr #5 {
bb.a:
  %i.a = add i64 %2, -1                           ; 2 uses
  %i.b = icmp eq i64 %3, 0
  br i1 %i.b, label %bb.b, label %.thread

bb.b:                                             ; preds = %bb.a
  %i.c = icmp ule i64 %2, %1
  %i.d = icmp samesign ult i64 %1, 129
  %or.cond = select i1 %i.c, i1 %i.d, i1 false
  %i.e = and i64 %i.a, %1
  %i.f = icmp eq i64 %i.e, 0
  %or.cond60 = and i1 %or.cond, %i.f
  br i1 %or.cond60, label %bb.c, label %bb.i

bb.c:                                             ; preds = %bb.b
  %i.g = add nuw nsw i64 %1, 7
  %i.h = lshr i64 %i.g, 3
  %i.i = getelementptr i8, ptr %0, i64 8
  %i.j = getelementptr [8 x i8], ptr %i.i, i64 %i.h
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !53   ; 4 uses
  %i.l = getelementptr i8, ptr %i.k, i64 16       ; 2 uses
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !11   ; 8 uses
  %i.n = icmp eq ptr %i.m, null
  br i1 %i.n, label %bb.d, label %bb.e, !prof !17

bb.d:                                             ; preds = %bb.c
  %i.o = tail call noalias ptr @_mi_malloc_generic(ptr noundef nonnull %0, i64 noundef %1, i1 noundef zeroext %4, i64 noundef 0), !inline_history !50
  br label %_mi_heap_malloc_zero.exit

bb.e:                                             ; preds = %bb.c
  %i.p = getelementptr i8, ptr %i.k, i64 24       ; 2 uses
  %i.q = load i32, ptr %i.p, align 8, !tbaa !18
  %i.r = add i32 %i.q, 1
  store i32 %i.r, ptr %i.p, align 8, !tbaa !18
  %i.s = load atomic i64, ptr %i.m monotonic, align 8
  %i.t = inttoptr i64 %i.s to ptr
  store ptr %i.t, ptr %i.l, align 8, !tbaa !11
  br i1 %4, label %bb.f, label %_mi_heap_malloc_zero.exit, !prof !17

bb.f:                                             ; preds = %bb.e
  %i.u = getelementptr i8, ptr %i.k, i64 15
  %i.v = load i8, ptr %i.u, align 1
  %i.w = and i8 %i.v, 1
  %.not.i.i.i.i = icmp eq i8 %i.w, 0
  br i1 %.not.i.i.i.i, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  store atomic i64 0, ptr %i.m seq_cst, align 8, !tbaa !19
  br label %_mi_heap_malloc_zero.exit

bb.h:                                             ; preds = %bb.f
  call void @llvm.assume(i1 true) [ "align"(ptr %i.m, i64 8) ]
  %i.x = getelementptr i8, ptr %i.k, i64 28
  %i.y = load i32, ptr %i.x, align 4, !tbaa !21
  %i.z = zext i32 %i.y to i64
  tail call void @llvm.memset.p0.i64(ptr nonnull align 8 %i.m, i8 0, i64 %i.z, i1 false)
  br label %_mi_heap_malloc_zero.exit

bb.i:                                             ; preds = %bb.b
  %i.aa = icmp ugt i64 %2, 16777216
  br i1 %i.aa, label %bb.j, label %bb.k, !prof !17

.thread:                                          ; preds = %bb.a
  %i.ab = icmp ugt i64 %2, 16777216
  br i1 %i.ab, label %_mi_heap_malloc_zero.exit, label %bb.k, !prof !17

bb.j:                                             ; preds = %bb.i
  %i.ac = tail call i64 @llvm.umax.i64(i64 %1, i64 1025)
  %i.ad = tail call ptr @_mi_heap_malloc_zero_ex(ptr noundef %0, i64 noundef %i.ac, i1 noundef zeroext false, i64 noundef %2) ; 2 uses
  %i.ae = icmp eq ptr %i.ad, null
  br i1 %i.ae, label %_mi_heap_malloc_zero.exit, label %_mi_heap_malloc_zero.exit63.thread

bb.k:                                             ; preds = %.thread, %bb.i
  %i.af = add nuw i64 %2, %1                      ; 2 uses
  %i.ag = add i64 %i.af, -1                       ; 2 uses
  %i.ah = icmp ult i64 %i.ag, 1025
  br i1 %i.ah, label %bb.l, label %_mi_heap_malloc_zero.exit63, !prof !55

bb.l:                                             ; preds = %bb.k
  %i.ai = add nuw nsw i64 %i.af, 6
  %i.aj = lshr i64 %i.ai, 3
  %i.ak = getelementptr i8, ptr %0, i64 8
  %i.al = getelementptr [8 x i8], ptr %i.ak, i64 %i.aj
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !53 ; 4 uses
  %i.an = getelementptr i8, ptr %i.am, i64 16     ; 2 uses
  %i.ao = load ptr, ptr %i.an, align 8, !tbaa !11 ; 8 uses
  %i.ap = icmp eq ptr %i.ao, null
  br i1 %i.ap, label %_mi_heap_malloc_zero.exit63, label %bb.m, !prof !17

bb.m:                                             ; preds = %bb.l
  %i.aq = getelementptr i8, ptr %i.am, i64 24     ; 2 uses
  %i.ar = load i32, ptr %i.aq, align 8, !tbaa !18
  %i.as = add i32 %i.ar, 1
  store i32 %i.as, ptr %i.aq, align 8, !tbaa !18
  %i.at = load atomic i64, ptr %i.ao monotonic, align 8
  %i.au = inttoptr i64 %i.at to ptr
  store ptr %i.au, ptr %i.an, align 8, !tbaa !11
  br i1 %4, label %bb.n, label %_mi_heap_malloc_zero.exit63.thread, !prof !17

bb.n:                                             ; preds = %bb.m
  %i.av = getelementptr i8, ptr %i.am, i64 15
  %i.aw = load i8, ptr %i.av, align 1
  %i.ax = and i8 %i.aw, 1
  %.not.i.i.i.i62 = icmp eq i8 %i.ax, 0
  br i1 %.not.i.i.i.i62, label %bb.p, label %bb.o

bb.o:                                             ; preds = %bb.n
  store atomic i64 0, ptr %i.ao seq_cst, align 8, !tbaa !19
  br label %_mi_heap_malloc_zero.exit63.thread

bb.p:                                             ; preds = %bb.n
  call void @llvm.assume(i1 true) [ "align"(ptr %i.ao, i64 8) ]
  %i.ay = getelementptr i8, ptr %i.am, i64 28
  %i.az = load i32, ptr %i.ay, align 4, !tbaa !21
  %i.ba = zext i32 %i.az to i64
  tail call void @llvm.memset.p0.i64(ptr nonnull align 8 %i.ao, i8 0, i64 %i.ba, i1 false)
  br label %_mi_heap_malloc_zero.exit63.thread

_mi_heap_malloc_zero.exit63:                      ; preds = %bb.k, %bb.l
  %i.bb = tail call noalias ptr @_mi_malloc_generic(ptr noundef %0, i64 noundef %i.ag, i1 noundef zeroext %4, i64 noundef 0) ; 2 uses
  %i.bc = icmp eq ptr %i.bb, null
  br i1 %i.bc, label %_mi_heap_malloc_zero.exit, label %_mi_heap_malloc_zero.exit63.thread

_mi_heap_malloc_zero.exit63.thread:               ; preds = %bb.m, %bb.p, %bb.o, %_mi_heap_malloc_zero.exit63, %bb.j
  %or.cond3 = phi i1 [ %4, %bb.j ], [ false, %_mi_heap_malloc_zero.exit63 ], [ false, %bb.o ], [ false, %bb.p ], [ false, %bb.m ]
  %.052 = phi ptr [ %i.ad, %bb.j ], [ %i.bb, %_mi_heap_malloc_zero.exit63 ], [ %i.ao, %bb.o ], [ %i.ao, %bb.p ], [ %i.ao, %bb.m ] ; 2 uses
  %i.bd = ptrtoint ptr %.052 to i64               ; 4 uses
  %i.be = add i64 %3, %i.bd
  %i.bf = and i64 %i.be, %i.a                     ; 2 uses
  %i.bg = icmp eq i64 %i.bf, 0
  %i.bh = sub i64 %2, %i.bf
  %i.bi = select i1 %i.bg, i64 0, i64 %i.bh
  %i.bj = add i64 %i.bi, %i.bd                    ; 4 uses
  %i.bk = inttoptr i64 %i.bj to ptr               ; 6 uses
  %.not58 = icmp eq ptr %.052, %i.bk
  br i1 %.not58, label %bb.r, label %bb.q

bb.q:                                             ; preds = %_mi_heap_malloc_zero.exit63.thread
  %i.bl = add i64 %i.bd, -1
  %i.bm = and i64 %i.bl, -33554432                ; 2 uses
  %i.bn = inttoptr i64 %i.bm to ptr
  %i.bo = sub i64 %i.bd, %i.bm
  %i.bp = lshr i64 %i.bo, 16
  %i.bq = getelementptr i8, ptr %i.bn, i64 264
  %i.br = getelementptr [80 x i8], ptr %i.bq, i64 %i.bp ; 2 uses
  %i.bs = getelementptr i8, ptr %i.br, i64 4
  %i.bt = load i32, ptr %i.bs, align 4, !tbaa !59
  %i.bu = zext i32 %i.bt to i64
  %i.bv = sub nsw i64 0, %i.bu
  %i.bw = getelementptr i8, ptr %i.br, i64 %i.bv
  %i.bx = getelementptr i8, ptr %i.bw, i64 14     ; 2 uses
  %i.by = load i8, ptr %i.bx, align 2
  %i.bz = or i8 %i.by, 2
  store i8 %i.bz, ptr %i.bx, align 2
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %_mi_heap_malloc_zero.exit63.thread
  br i1 %or.cond3, label %bb.s, label %_mi_heap_malloc_zero.exit

bb.s:                                             ; preds = %bb.r
  %i.ca = icmp eq i64 %i.bj, 0
  br i1 %i.ca, label %mi_usable_size.exit, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.cb = add i64 %i.bj, -1
  %i.cc = and i64 %i.cb, -33554432                ; 2 uses
  %i.cd = inttoptr i64 %i.cc to ptr               ; 2 uses
  %i.ce = sub i64 %i.bj, %i.cc
  %i.cf = lshr i64 %i.ce, 16
  %i.cg = getelementptr i8, ptr %i.cd, i64 264
  %i.ch = getelementptr [80 x i8], ptr %i.cg, i64 %i.cf ; 2 uses
  %i.ci = getelementptr i8, ptr %i.ch, i64 4
  %i.cj = load i32, ptr %i.ci, align 4, !tbaa !59
  %i.ck = zext i32 %i.cj to i64
  %i.cl = sub nsw i64 0, %i.ck
  %i.cm = getelementptr i8, ptr %i.ch, i64 %i.cl  ; 4 uses
  %i.cn = getelementptr i8, ptr %i.cm, i64 14
  %.val.i.i = load i8, ptr %i.cn, align 2
  %i.co = and i8 %.val.i.i, 2
  %.not.i.i = icmp eq i8 %i.co, 0
  br i1 %.not.i.i, label %bb.u, label %bb.w, !prof !55

bb.u:                                             ; preds = %bb.t
  %i.cp = getelementptr i8, ptr %i.cm, i64 28
  %i.cq = load i32, ptr %i.cp, align 4, !tbaa !21 ; 2 uses
  %i.cr = icmp sgt i32 %i.cq, -1
  br i1 %i.cr, label %bb.v, label %_mi_segment_page_start.exit.i.i.i.i.i, !prof !55

bb.v:                                             ; preds = %bb.u
  %i.cs = zext nneg i32 %i.cq to i64
  br label %mi_usable_size.exit

_mi_segment_page_start.exit.i.i.i.i.i:            ; preds = %bb.u
  %i.ct = load i32, ptr %i.cm, align 8, !tbaa !52
  %i.cu = zext i32 %i.ct to i64
  %i.cv = shl nuw nsw i64 %i.cu, 16
  br label %mi_usable_size.exit

bb.w:                                             ; preds = %bb.t
  %i.cw = tail call fastcc i64 @mi_page_usable_aligned_size_of(ptr noundef nonnull %i.cd, ptr noundef %i.cm, ptr noundef %i.bk)
  br label %mi_usable_size.exit

mi_usable_size.exit:                              ; preds = %bb.s, %bb.v, %_mi_segment_page_start.exit.i.i.i.i.i, %bb.w
  %.1.i.i = phi i64 [ 0, %bb.s ], [ %i.cw, %bb.w ], [ %i.cs, %bb.v ], [ %i.cv, %_mi_segment_page_start.exit.i.i.i.i.i ]
  call void @llvm.assume(i1 true) [ "align"(ptr %i.bk, i64 8) ]
  tail call void @llvm.memset.p0.i64(ptr align 8 %i.bk, i8 0, i64 %.1.i.i, i1 false)
  br label %_mi_heap_malloc_zero.exit

_mi_heap_malloc_zero.exit:                        ; preds = %.thread, %bb.h, %bb.g, %bb.e, %bb.d, %bb.j, %_mi_heap_malloc_zero.exit63, %mi_usable_size.exit, %bb.r
  %.1 = phi ptr [ %i.bk, %bb.r ], [ null, %bb.j ], [ %i.m, %bb.h ], [ null, %_mi_heap_malloc_zero.exit63 ], [ %i.bk, %mi_usable_size.exit ], [ %i.m, %bb.e ], [ %i.o, %bb.d ], [ %i.m, %bb.g ], [ null, %.thread ]
  ret ptr %.1
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc ptr @mi_arena_try_alloc_at(ptr nofree noundef nonnull captures(address) %0, i64 noundef range(i64 0, 288230376151711744) %1, i1 noundef zeroext %2, ptr nofree noundef writeonly captures(none) %3, ptr nofree noundef readonly captures(none) %4) unnamed_addr #5 {
bb.a:
  %i.a = alloca i64, align 8                      ; 5 uses
  %i.b = alloca i8, align 1                       ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #55
  %i.c = getelementptr i8, ptr %0, i64 136
  %i.d = getelementptr i8, ptr %0, i64 48
  %i.e = load i64, ptr %i.d, align 8, !tbaa !131
  %i.f = call zeroext i1 @_mi_bitmap_try_find_from_claim_across(ptr noundef %i.c, i64 noundef %i.e, i64 noundef 0, i64 noundef range(i64 0, 288230376151711744) %1, ptr noundef nonnull %i.a)
  br i1 %i.f, label %bb.b, label %mi_arena_try_claim.exit

bb.b:                                             ; preds = %bb.a
  %i.g = getelementptr i8, ptr %0, i64 96
  %i.h = load i64, ptr %i.a, align 8, !tbaa !105  ; 2 uses
  %i.i = lshr i64 %i.h, 6
  store atomic i64 %i.i, ptr %i.g monotonic, align 8
  %i.j = getelementptr i8, ptr %0, i64 32
  %i.k = load atomic ptr, ptr %i.j seq_cst, align 8, !tbaa !98
  %i.l = shl i64 %i.h, 25
  %i.m = getelementptr i8, ptr %i.k, i64 %i.l     ; 7 uses
  %i.n = load i32, ptr %0, align 8, !tbaa !117
  %i.o = getelementptr i8, ptr %0, i64 92
  %i.p = load i8, ptr %i.o, align 4, !tbaa !118, !range !42, !noundef !43
  %i.q = load i64, ptr %i.a, align 8, !tbaa !105  ; 9 uses
  store i64 %i.q, ptr %3, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i32 %i.n, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %3, i64 12
  store i8 %i.p, ptr %.sroa.6.0..sroa_idx, align 4
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %3, i64 13
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %.sroa.7.0..sroa_idx, i8 0, i64 7, i1 false)
  %.sroa.787.0..sroa_idx = getelementptr inbounds nuw i8, ptr %3, i64 20
  store i32 6, ptr %.sroa.787.0..sroa_idx, align 4, !tbaa !7
  %i.r = getelementptr i8, ptr %0, i64 24
  %i.s = load i8, ptr %i.r, align 8, !tbaa !132, !range !42, !noundef !43
  %i.t = getelementptr i8, ptr %3, i64 16
  store i8 %i.s, ptr %i.t, align 8, !tbaa !164
  %i.u = getelementptr i8, ptr %0, i64 128
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !141  ; 3 uses
  %.not = icmp eq ptr %i.v, null
  br i1 %.not, label %_mi_bitmap_unclaim_across.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.w = lshr i64 %i.q, 6                         ; 2 uses
  %i.x = and i64 %i.q, 63                         ; 5 uses
  %i.y = add nuw nsw i64 %i.x, %1
  %i.z = icmp samesign ult i64 %i.y, 65
  br i1 %i.z, label %bb.d, label %mi_bitmap_mask_.exit24.i.i, !prof !55

bb.d:                                             ; preds = %bb.c
  %i.aa = icmp samesign ugt i64 %1, 63
  br i1 %i.aa, label %._crit_edge.thread.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.ab = icmp eq i64 %1, 0
  br i1 %i.ab, label %._crit_edge.thread.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  %notmask.i.i.i = shl nsw i64 -1, %1
  %i.ac = xor i64 %notmask.i.i.i, -1
  %i.ad = shl i64 %i.ac, %i.x
  %i.ae = xor i64 %i.ad, -1
  br label %._crit_edge.thread.i

mi_bitmap_mask_.exit24.i.i:                       ; preds = %bb.c
  %i.af = sub nuw nsw i64 64, %i.x                ; 2 uses
  %i.ag = icmp eq i64 %i.x, 0
  %notmask.i22.i.i = shl nsw i64 -1, %i.af
  %i.ah = xor i64 %notmask.i22.i.i, -1
  %i.ai = shl i64 %i.ah, %i.x
  %i.aj = sub nsw i64 %1, %i.af                   ; 3 uses
  %i.ak = lshr i64 %i.aj, 6                       ; 4 uses
  %i.al = and i64 %i.aj, 63                       ; 2 uses
  %notmask.i25.i.i = shl nsw i64 -1, %i.al
  %i.am = getelementptr [8 x i8], ptr %i.v, i64 %i.w ; 2 uses
  %i.an = xor i64 %i.ai, -1
  %i.ao = select i1 %i.ag, i64 0, i64 %i.an
  %i.ap = atomicrmw and ptr %i.am, i64 %i.ao acq_rel, align 8 ; 0 uses
  %.02035.i = getelementptr i8, ptr %i.am, i64 8  ; 3 uses
  %.not2236.i = icmp eq i64 %i.ak, 0
  br i1 %.not2236.i, label %._crit_edge.i, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %mi_bitmap_mask_.exit24.i.i
  %xtraiter = and i64 %i.ak, 7                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.prol.loopexit, label %.lr.ph.i.prol

.lr.ph.i.prol:                                    ; preds = %.lr.ph.i.preheader, %.lr.ph.i.prol
  %.02039.i.prol = phi ptr [ %.020.i.prol, %.lr.ph.i.prol ], [ %.02035.i, %.lr.ph.i.preheader ] ; 2 uses
  %.038.i.prol = phi i64 [ %i.aq, %.lr.ph.i.prol ], [ %i.ak, %.lr.ph.i.preheader ]
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.prol ], [ 0, %.lr.ph.i.preheader ]
  %i.aq = add nsw i64 %.038.i.prol, -1            ; 2 uses
  %i.ar = atomicrmw xchg ptr %.02039.i.prol, i64 0 acq_rel, align 8 ; 0 uses
  %.020.i.prol = getelementptr i8, ptr %.02039.i.prol, i64 8 ; 3 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.prol.loopexit, label %.lr.ph.i.prol, !llvm.loop !624

.lr.ph.i.prol.loopexit:                           ; preds = %.lr.ph.i.prol, %.lr.ph.i.preheader
  %.020.i.lcssa.unr = phi ptr [ poison, %.lr.ph.i.preheader ], [ %.020.i.prol, %.lr.ph.i.prol ]
  %.02039.i.unr = phi ptr [ %.02035.i, %.lr.ph.i.preheader ], [ %.020.i.prol, %.lr.ph.i.prol ]
end_hunk_6

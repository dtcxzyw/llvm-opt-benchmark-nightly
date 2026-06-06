inline.NumInlined: 1500
inline.NumDeleted: 204
begin_hunk_0
@.str.184 = private unnamed_addr constant [4 x i8] c"SET\00", align 1
@sym_SET = internal unnamed_addr global i64 0, align 8
@.str.185 = private unnamed_addr constant [4 x i8] c"CUR\00", align 1
@sym_CUR = internal unnamed_addr global i64 0, align 8
@.str.186 = private unnamed_addr constant [4 x i8] c"END\00", align 1
@sym_END = internal unnamed_addr global i64 0, align 8
@.str.187 = private unnamed_addr constant [5 x i8] c"DATA\00", align 1
@sym_DATA = internal unnamed_addr global i64 0, align 8
@.str.188 = private unnamed_addr constant [5 x i8] c"HOLE\00", align 1
@sym_HOLE = internal unnamed_addr global i64 0, align 8
@sym_wait_readable = internal unnamed_addr global i64 0, align 8
@sym_wait_writable = internal unnamed_addr global i64 0, align 8
@Init_builtin_io.io_table = internal constant [4 x %struct.rb_builtin_function] [%struct.rb_builtin_function { ptr @io_read_nonblock, i32 3, i32 0, ptr @.str.189 }, %struct.rb_builtin_function { ptr @io_write_nonblock, i32 2, i32 1, ptr @.str.190 }, %struct.rb_builtin_function { ptr @io_readline, i32 3, i32 2, ptr @.str.191 }, %struct.rb_builtin_function { ptr null, i32 0, i32 -1, ptr null }], align 16
@.str.189 = private unnamed_addr constant [17 x i8] c"io_read_nonblock\00", align 1
@.str.190 = private unnamed_addr constant [18 x i8] c"io_write_nonblock\00", align 1
@.str.191 = private unnamed_addr constant [12 x i8] c"io_readline\00", align 1
@.str.192 = private unnamed_addr constant [3 x i8] c"io\00", align 1
@.str.193 = private unnamed_addr constant [55 x i8] c"rb_fix_detect_o_cloexec: fcntl(%d, F_GETFD) failed: %s\00", align 1
@closed_stream = internal constant [14 x i8] c"closed stream\00", align 1
@__func__.rb_sys_fail_on_write = private unnamed_addr constant [21 x i8] c"rb_sys_fail_on_write\00", align 1
@ruby_static_id_signo = external local_unnamed_addr global i64, align 8
@ruby_current_ec = external thread_local local_unnamed_addr global ptr, align 8
@.str.194 = private unnamed_addr constant [7 x i8] c"fd:%d \00", align 1
@__func__.io_fillbuf = private unnamed_addr constant [11 x i8] c"io_fillbuf\00", align 1
@.str.195 = private unnamed_addr constant [3 x i8] c"\0A\0A\00", align 1
@.str.196 = private unnamed_addr constant [17 x i8] c"broken separator\00", align 1
@__func__.io_fread = private unnamed_addr constant [9 x i8] c"io_fread\00", align 1
@__func__.swallow = private unnamed_addr constant [8 x i8] c"swallow\00", align 1
@rb_eRuntimeError = external local_unnamed_addr global i64, align 8
@.str.197 = private unnamed_addr constant [12 x i8] c"rs modified\00", align 1
@.str.198 = private unnamed_addr constant [17 x i8] c"ungetbyte failed\00", align 1
@.str.199 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@__func__.fptr_finalize_flush = private unnamed_addr constant [20 x i8] c"fptr_finalize_flush\00", align 1
@ruby_current_vm_ptr = external local_unnamed_addr global ptr, align 8
@bom_prefix = internal constant [5 x i8] c"bom|\00", align 1
@utf_prefix = internal constant [5 x i8] c"utf-\00", align 1
@.str.200 = private unnamed_addr constant [41 x i8] c"BOM with non-UTF encoding %s is nonsense\00", align 1
@.str.201 = private unnamed_addr constant [32 x i8] c"Unsupported encoding %s ignored\00", align 1
@.str.202 = private unnamed_addr constant [25 x i8] c"textmode specified twice\00", align 1
@.str.203 = private unnamed_addr constant [36 x i8] c"both textmode and binmode specified\00", align 1
@.str.204 = private unnamed_addr constant [24 x i8] c"binmode specified twice\00", align 1
@.str.205 = private unnamed_addr constant [42 x i8] c"ASCII incompatible encoding needs binmode\00", align 1
@.str.206 = private unnamed_addr constant [35 x i8] c"newline decorator with binary mode\00", align 1
@__func__.rb_sysopen = private unnamed_addr constant [11 x i8] c"rb_sysopen\00", align 1
@.str.207 = private unnamed_addr constant [34 x i8] c"Unsupported encoding %li\0B ignored\00", align 1
@.str.208 = private unnamed_addr constant [18 x i8] c"/proc/self/status\00", align 1
@.str.210 = private unnamed_addr constant [39 x i8] c"exclusive access mode is not supported\00", align 1
@.str.211 = private unnamed_addr constant [2 x i8] c"a\00", align 1
@.str.212 = private unnamed_addr constant [3 x i8] c"a+\00", align 1
@.str.213 = private unnamed_addr constant [27 x i8] c"invalid access oflags 0x%x\00", align 1
@.str.214 = private unnamed_addr constant [2 x i8] c"r\00", align 1
@.str.215 = private unnamed_addr constant [3 x i8] c"w+\00", align 1
@.str.216 = private unnamed_addr constant [3 x i8] c"r+\00", align 1
@pipe_open.rbimpl_id = internal unnamed_addr global i64 0, align 8
@.str.217 = private unnamed_addr constant [21 x i8] c"@tied_io_for_writing\00", align 1
@.str.218 = private unnamed_addr constant [6 x i8] c"[...]\00", align 1
@.str.219 = private unnamed_addr constant [67 x i8] c"%+li\0B%cwrite is outdated interface which accepts just one argument\00", align 1
@rb_cFalseClass = external local_unnamed_addr global i64, align 8
@rb_cNilClass = external local_unnamed_addr global i64, align 8
@rb_cTrueClass = external local_unnamed_addr global i64, align 8
@rb_cInteger = external local_unnamed_addr global i64, align 8
@rb_cSymbol = external local_unnamed_addr global i64, align 8
@rb_cFloat = external local_unnamed_addr global i64, align 8
@.str.220 = private unnamed_addr constant [83 x i8] c"ASCII incompatible string written for text mode IO without encoding conversion: %s\00", align 1
@.str.221 = private unnamed_addr constant [42 x i8] c"Can't do inplace edit for stdio; skipping\00", align 1
@.str.222 = private unnamed_addr constant [45 x i8] c"Can't rename %li\0B to %li\0B: %s, skipping file\00", align 1
@.str.223 = private unnamed_addr constant [37 x i8] c"Can't remove %li\0B: %s, skipping file\00", align 1
@.str.224 = private unnamed_addr constant [65 x i8] c"Can't set owner/group of %li\0B to same as %li\0B: %s, skipping file\00", align 1
@.str.225 = private unnamed_addr constant [32 x i8] c"Can't do inplace edit for stdio\00", align 1
@io_close.rbimpl_id = internal unnamed_addr global i64 0, align 8
@io_call_close.rbimpl_id = internal unnamed_addr global i64 0, align 8
@.str.227 = private unnamed_addr constant [95 x i8] c"We plan to remove a syscall function at future release. DL(Fiddle) provides safer alternative.\00", align 1
@.str.228 = private unnamed_addr constant [30 x i8] c"too few arguments for syscall\00", align 1
@.str.229 = private unnamed_addr constant [31 x i8] c"too many arguments for syscall\00", align 1
@rb_f_open.rbimpl_id = internal unnamed_addr global i64 0, align 8
@.str.230 = private unnamed_addr constant [8 x i8] c"to_open\00", align 1
@rb_f_putc.rbimpl_id = internal unnamed_addr global i64 0, align 8
@rb_f_puts.rbimpl_id = internal unnamed_addr global i64 0, align 8
@rb_f_readline.rbimpl_id = internal unnamed_addr global i64 0, align 8
@rb_f_readlines.rbimpl_id = internal unnamed_addr global i64 0, align 8
@.str.233 = private unnamed_addr constant [58 x i8] c"%li\0B::new() does not take block; use %li\0B::open() instead\00", align 1
@extract_getline_opts.kwds = internal global [1 x i64] zeroinitializer, align 8
@.str.238 = private unnamed_addr constant [6 x i8] c"chomp\00", align 1
@.str.239 = private unnamed_addr constant [36 x i8] c"encoding mismatch: %s IO with %s RS\00", align 1
@.str.240 = private unnamed_addr constant [29 x i8] c"invalid limit: 0 for foreach\00", align 1
@.str.241 = private unnamed_addr constant [31 x i8] c"invalid limit: 0 for readlines\00", align 1
@.str.243 = private unnamed_addr constant [26 x i8] c"negative offset %ld given\00", align 1
@__func__.rb_io_seek = private unnamed_addr constant [11 x i8] c"rb_io_seek\00", align 1
@__const.rb_io_s_binread.convconfig = private unnamed_addr constant { ptr, ptr, i32, [4 x i8], i64 } { ptr null, ptr null, i32 0, [4 x i8] zeroinitializer, i64 4 }, align 8
@copy_stream_body.rbimpl_id = internal unnamed_addr global i64 0, align 8
@.str.246 = private unnamed_addr constant [6 x i8] c"fstat\00", align 1
@copy_stream_body.rbimpl_id.247 = internal unnamed_addr global i64 0, align 8
@.str.248 = private unnamed_addr constant [13 x i8] c"flush failed\00", align 1
@.str.249 = private unnamed_addr constant [37 x i8] c"cannot specify src_offset for non-IO\00", align 1
@.str.250 = private unnamed_addr constant [5 x i8] c"poll\00", align 1
@.str.251 = private unnamed_addr constant [6 x i8] c"lseek\00", align 1
@.str.252 = private unnamed_addr constant [16 x i8] c"copy_file_range\00", align 1
@.str.253 = private unnamed_addr constant [9 x i8] c"sendfile\00", align 1
@rb_eNotImpError = external local_unnamed_addr global i64, align 8
@.str.254 = private unnamed_addr constant [21 x i8] c"%s() not implemented\00", align 1
@.str.255 = private unnamed_addr constant [58 x i8] c"The given fd is not accessible because RubyVM reserves it\00", align 1
@rb_eSystemCallError = external local_unnamed_addr global i64, align 8
@rb_io_init_copy.rbimpl_id = internal unnamed_addr global i64 0, align 8
@.str.256 = private unnamed_addr constant [46 x i8] c"%s can't change access mode from \22%s\22 to \22%s\22\00", align 1
@__func__.rb_io_reopen = private unnamed_addr constant [13 x i8] c"rb_io_reopen\00", align 1
@.str.257 = private unnamed_addr constant [37 x i8] c"setvbuf() can't be honoured for %li\0B\00", align 1
@__func__.io_reopen = private unnamed_addr constant [10 x i8] c"io_reopen\00", align 1
@.str.258 = private unnamed_addr constant [4 x i8] c"ab+\00", align 1
@.str.259 = private unnamed_addr constant [4 x i8] c"at+\00", align 1
@.str.260 = private unnamed_addr constant [3 x i8] c"ab\00", align 1
@.str.261 = private unnamed_addr constant [3 x i8] c"at\00", align 1
@.str.262 = private unnamed_addr constant [26 x i8] c"invalid access fmode 0x%x\00", align 1
@.str.263 = private unnamed_addr constant [3 x i8] c"rb\00", align 1
@.str.264 = private unnamed_addr constant [3 x i8] c"rt\00", align 1
@.str.265 = private unnamed_addr constant [4 x i8] c"wbx\00", align 1
@.str.266 = private unnamed_addr constant [4 x i8] c"wtx\00", align 1
@.str.267 = private unnamed_addr constant [3 x i8] c"wx\00", align 1
@.str.268 = private unnamed_addr constant [3 x i8] c"wb\00", align 1
@.str.269 = private unnamed_addr constant [3 x i8] c"wt\00", align 1
@.str.270 = private unnamed_addr constant [5 x i8] c"wb+x\00", align 1
@.str.271 = private unnamed_addr constant [5 x i8] c"wt+x\00", align 1
@.str.272 = private unnamed_addr constant [4 x i8] c"w+x\00", align 1
@.str.273 = private unnamed_addr constant [4 x i8] c"wb+\00", align 1
@.str.274 = private unnamed_addr constant [4 x i8] c"wt+\00", align 1
@.str.275 = private unnamed_addr constant [4 x i8] c"rb+\00", align 1
@.str.276 = private unnamed_addr constant [4 x i8] c"rt+\00", align 1
@.str.277 = private unnamed_addr constant [31 x i8] c"invalid limit: 0 for each_line\00", align 1
@.str.278 = private unnamed_addr constant [19 x i8] c"too long character\00", align 1
@.str.279 = private unnamed_addr constant [28 x i8] c"invalid byte sequence in %s\00", align 1
@.str.280 = private unnamed_addr constant [25 x i8] c"syswrite for buffered IO\00", align 1
@__func__.rb_io_syswrite = private unnamed_addr constant [15 x i8] c"rb_io_syswrite\00", align 1
@.str.282 = private unnamed_addr constant [24 x i8] c"sysread for buffered IO\00", align 1
@__func__.rb_io_sysread = private unnamed_addr constant [14 x i8] c"rb_io_sysread\00", align 1
@__func__.rb_io_pread = private unnamed_addr constant [12 x i8] c"rb_io_pread\00", align 1
@__func__.rb_io_pwrite = private unnamed_addr constant [13 x i8] c"rb_io_pwrite\00", align 1
@__func__.rb_io_fsync = private unnamed_addr constant [12 x i8] c"rb_io_fsync\00", align 1
@.str.284 = private unnamed_addr constant [26 x i8] c"negative length %ld given\00", align 1
@.str.285 = private unnamed_addr constant [17 x i8] c"read would block\00", align 1
@__func__.io_getpartial = private unnamed_addr constant [14 x i8] c"io_getpartial\00", align 1
@__func__.rb_io_tell = private unnamed_addr constant [11 x i8] c"rb_io_tell\00", align 1
@__func__.rb_io_rewind = private unnamed_addr constant [13 x i8] c"rb_io_rewind\00", align 1
@__func__.rb_io_set_pos = private unnamed_addr constant [14 x i8] c"rb_io_set_pos\00", align 1
@__func__.rb_io_close_on_exec_p = private unnamed_addr constant [22 x i8] c"rb_io_close_on_exec_p\00", align 1
@__func__.rb_io_set_close_on_exec = private unnamed_addr constant [24 x i8] c"rb_io_set_close_on_exec\00", align 1
@__func__.rb_io_close_read = private unnamed_addr constant [17 x i8] c"rb_io_close_read\00", align 1
@.str.287 = private unnamed_addr constant [34 x i8] c"closing non-duplex IO for reading\00", align 1
@__func__.is_socket = private unnamed_addr constant [10 x i8] c"is_socket\00", align 1
@__func__.rb_io_close_write = private unnamed_addr constant [18 x i8] c"rb_io_close_write\00", align 1
@.str.288 = private unnamed_addr constant [34 x i8] c"closing non-duplex IO for writing\00", align 1
@.str.289 = private unnamed_addr constant [24 x i8] c"sysseek for buffered IO\00", align 1
@__func__.rb_io_sysseek = private unnamed_addr constant [14 x i8] c"rb_io_sysseek\00", align 1
@.str.290 = private unnamed_addr constant [24 x i8] c"advice must be a Symbol\00", align 1
@.str.291 = private unnamed_addr constant [26 x i8] c"Unsupported advice: %+li\0B\00", align 1
@.str.292 = private unnamed_addr constant [22 x i8] c"%li\0B (%ld, %ld, %li\0B)\00", align 1
@__func__.finish_narg = private unnamed_addr constant [12 x i8] c"finish_narg\00", align 1
@.str.293 = private unnamed_addr constant [31 x i8] c"return value overflowed string\00", align 1
@rb_io_inspect.closed = internal constant [10 x i8] c" (closed)\00", align 1
@.str.294 = private unnamed_addr constant [3 x i8] c"#<\00", align 1
@.str.295 = private unnamed_addr constant [2 x i8] c":\00", align 1
@.str.296 = private unnamed_addr constant [6 x i8] c"fd %d\00", align 1
@.str.297 = private unnamed_addr constant [2 x i8] c">\00", align 1
@.str.298 = private unnamed_addr constant [27 x i8] c"encoding conversion is set\00", align 1
@.str.299 = private unnamed_addr constant [30 x i8] c"encoding is set to %s already\00", align 1
@.str.300 = private unnamed_addr constant [29 x i8] c"timeout given more than once\00", align 1
@wait_mode_sym.rbimpl_id = internal unnamed_addr global i64 0, align 8
@wait_mode_sym.rbimpl_id.301 = internal unnamed_addr global i64 0, align 8
@wait_mode_sym.rbimpl_id.302 = internal unnamed_addr global i64 0, align 8
@.str.303 = private unnamed_addr constant [9 x i8] c"readable\00", align 1
@wait_mode_sym.rbimpl_id.304 = internal unnamed_addr global i64 0, align 8
@wait_mode_sym.rbimpl_id.305 = internal unnamed_addr global i64 0, align 8
@wait_mode_sym.rbimpl_id.306 = internal unnamed_addr global i64 0, align 8
@.str.307 = private unnamed_addr constant [9 x i8] c"writable\00", align 1
@wait_mode_sym.rbimpl_id.308 = internal unnamed_addr global i64 0, align 8
@.str.309 = private unnamed_addr constant [3 x i8] c"rw\00", align 1
@wait_mode_sym.rbimpl_id.310 = internal unnamed_addr global i64 0, align 8
@.str.311 = private unnamed_addr constant [11 x i8] c"read_write\00", align 1
@wait_mode_sym.rbimpl_id.312 = internal unnamed_addr global i64 0, align 8
@.str.313 = private unnamed_addr constant [18 x i8] c"readable_writable\00", align 1
@.str.314 = private unnamed_addr constant [23 x i8] c"unsupported mode: %li\0B\00", align 1
@.str.315 = private unnamed_addr constant [33 x i8] c"Events must be positive integer!\00", align 1
@.str.316 = private unnamed_addr constant [39 x i8] c"%li\0B must have %li\0B method, %li\0B given\00", align 1
@argf_type = internal constant %struct.rb_data_type_struct { ptr @.str.167, %struct.anon.24 { ptr @argf_mark_and_move, ptr inttoptr (i64 -1 to ptr), ptr @argf_memsize, ptr @argf_mark_and_move, [1 x ptr] zeroinitializer }, ptr null, ptr null, i64 1 }, align 8
@.str.317 = private unnamed_addr constant [10 x i8] c"no stream\00", align 1
@argf_each_line.rbimpl_id = internal unnamed_addr global i64 0, align 8
@argf_each_byte.rbimpl_id = internal unnamed_addr global i64 0, align 8
@argf_each_char.rbimpl_id = internal unnamed_addr global i64 0, align 8
@argf_each_codepoint.rbimpl_id = internal unnamed_addr global i64 0, align 8
@argf_readlines.rbimpl_id = internal unnamed_addr global i64 0, align 8
@argf_getc.rbimpl_id = internal unnamed_addr global i64 0, align 8
@argf_getbyte.rbimpl_id = internal unnamed_addr global i64 0, align 8
@argf_readchar.rbimpl_id = internal unnamed_addr global i64 0, align 8
@.str.318 = private unnamed_addr constant [18 x i8] c"no stream to tell\00", align 1
@.str.319 = private unnamed_addr constant [18 x i8] c"no stream to seek\00", align 1
@.str.320 = private unnamed_addr constant [20 x i8] c"no stream to rewind\00", align 1
@.str.321 = private unnamed_addr constant [26 x i8] c"no stream to set position\00", align 1
@.str.322 = private unnamed_addr constant [26 x i8] c"no stream to set encoding\00", align 1
@.str.323 = private unnamed_addr constant [20 x i8] c"reinitializing File\00", align 1
@.str.324 = private unnamed_addr constant [10 x i8] c"exception\00", align 1
@.str.325 = private unnamed_addr constant [18 x i8] c"write would block\00", align 1
@switch.table.rb_io_stdio_file.18 = private unnamed_addr constant [3 x ptr] [ptr @.str.214, ptr @.str.211, ptr @.str.212], align 8
@switch.table.rb_io_reopen = private unnamed_addr constant [4 x i32] [i32 0, i32 0, i32 1, i32 2], align 4
@switch.table.io_initialize = private unnamed_addr constant [4 x i32] [i32 1, i32 2, i32 3, i32 0], align 4

; Function Attrs: nounwind sspstrong uwtable
define dso_local i64 @rb_io_blocking_region_wait(ptr noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef %3) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call i64 @rb_thread_io_blocking_call(ptr noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef %3) #28
  ret i64 %i.a
}

declare i64 @rb_thread_io_blocking_call(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind sspstrong uwtable
define dso_local i64 @rb_io_blocking_region(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call i64 @rb_thread_io_blocking_call(ptr noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef 0) #28
  ret i64 %i.a
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @rb_update_max_fd(i32 noundef %0) local_unnamed_addr #0 {
bb.a:
  %i.a = load i32, ptr @max_file_descriptor, align 4, !tbaa !7 ; 2 uses
  %i.b = icmp sgt i32 %0, -1
  %.not = icmp ugt i32 %0, %i.a
  %or.cond = select i1 %i.b, i1 %.not, i1 false
  br i1 %or.cond, label %bb.b, label %.loopexit

bb.b:                                             ; preds = %bb.a
  %i.c = tail call i32 (i32, i32, ...) @fcntl(i32 noundef %0, i32 noundef 3) #28
  %i.d = icmp eq i32 %i.c, -1
  br i1 %i.d, label %bb.c, label %.lr.ph.preheader

bb.c:                                             ; preds = %bb.b
  %i.e = tail call ptr @rb_errno_ptr() #28
  %i.f = load i32, ptr %i.e, align 4, !tbaa !7
  %i.g = icmp eq i32 %i.f, 9
  br i1 %i.g, label %bb.d, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.b, %bb.c
  br label %.lr.ph

bb.d:                                             ; preds = %bb.c
  tail call void (ptr, ...) @rb_bug(ptr noundef nonnull @.str, i32 noundef %0) #29
  unreachable

.lr.ph:                                           ; preds = %.lr.ph.preheader, %.lr.ph
  %.013 = phi i32 [ %i.i, %.lr.ph ], [ %i.a, %.lr.ph.preheader ]
  %i.h = cmpxchg volatile ptr @max_file_descriptor, i32 %.013, i32 %0 seq_cst seq_cst, align 4
  %i.i = extractvalue { i32, i1 } %i.h, 0         ; 2 uses
  %i.j = icmp ult i32 %i.i, %0
  br i1 %i.j, label %.lr.ph, label %.loopexit, !llvm.loop !11

.loopexit:                                        ; preds = %.lr.ph, %bb.a
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #2

declare i32 @fcntl(i32 noundef, i32 noundef, ...) local_unnamed_addr #1

declare ptr @rb_errno_ptr() local_unnamed_addr #1

; Function Attrs: cold noreturn
declare void @rb_bug(ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #2

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @rb_maygvl_fd_fix_cloexec(i32 noundef %0) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call i32 (i32, i32, ...) @fcntl(i32 noundef %0, i32 noundef 1) #28 ; 3 uses
  %i.b = icmp eq i32 %i.a, -1
  br i1 %i.b, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.c = tail call ptr @rb_errno_ptr() #28
  %i.d = load i32, ptr %i.c, align 4, !tbaa !7
  %i.e = tail call ptr @strerror(i32 noundef %i.d) #28
  tail call void (ptr, ...) @rb_bug(ptr noundef nonnull @.str.1, i32 noundef %0, ptr noundef %i.e) #29
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.f = icmp sgt i32 %0, 2
  %i.g = and i32 %i.a, -2
  %masksel = zext i1 %i.f to i32
  %.0 = or disjoint i32 %i.g, %masksel            ; 3 uses
  %.not = icmp eq i32 %i.a, %.0
  br i1 %.not, label %bb.f, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.h = tail call i32 (i32, i32, ...) @fcntl(i32 noundef %0, i32 noundef 2, i32 noundef %.0) #28
  %.not14 = icmp eq i32 %i.h, 0
  br i1 %.not14, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.i = tail call ptr @rb_errno_ptr() #28
  %i.j = load i32, ptr %i.i, align 4, !tbaa !7
  %i.k = tail call ptr @strerror(i32 noundef %i.j) #28
  tail call void (ptr, ...) @rb_bug(ptr noundef nonnull @.str.2, i32 noundef %0, i32 noundef %.0, ptr noundef %i.k) #29
  unreachable

bb.f:                                             ; preds = %bb.d, %bb.c
  ret void
}

; Function Attrs: nounwind
declare ptr @strerror(i32 noundef) local_unnamed_addr #4

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @rb_fd_fix_cloexec(i32 noundef %0) local_unnamed_addr #0 {
bb.a:
  tail call void @rb_maygvl_fd_fix_cloexec(i32 noundef %0)
  %i.a = load i32, ptr @max_file_descriptor, align 4, !tbaa !7 ; 2 uses
  %i.b = icmp sgt i32 %0, -1
  %.not.i = icmp ugt i32 %0, %i.a
  %or.cond.i = select i1 %i.b, i1 %.not.i, i1 false
  br i1 %or.cond.i, label %bb.b, label %rb_update_max_fd.exit

bb.b:                                             ; preds = %bb.a
  %i.c = tail call i32 (i32, i32, ...) @fcntl(i32 noundef %0, i32 noundef 3) #28
  %i.d = icmp eq i32 %i.c, -1
  br i1 %i.d, label %bb.c, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %bb.c, %bb.b
  br label %.lr.ph.i

bb.c:                                             ; preds = %bb.b
  %i.e = tail call ptr @rb_errno_ptr() #28
  %i.f = load i32, ptr %i.e, align 4, !tbaa !7
  %i.g = icmp eq i32 %i.f, 9
  br i1 %i.g, label %bb.d, label %.lr.ph.i.preheader

bb.d:                                             ; preds = %bb.c
  tail call void (ptr, ...) @rb_bug(ptr noundef nonnull @.str, i32 noundef %0) #29
  unreachable

.lr.ph.i:                                         ; preds = %.lr.ph.i.preheader, %.lr.ph.i
  %.013.i = phi i32 [ %i.i, %.lr.ph.i ], [ %i.a, %.lr.ph.i.preheader ]
  %i.h = cmpxchg volatile ptr @max_file_descriptor, i32 %.013.i, i32 %0 seq_cst seq_cst, align 4
  %i.i = extractvalue { i32, i1 } %i.h, 0         ; 2 uses
  %i.j = icmp ult i32 %i.i, %0
  br i1 %i.j, label %.lr.ph.i, label %rb_update_max_fd.exit, !llvm.loop !11

rb_update_max_fd.exit:                            ; preds = %.lr.ph.i, %bb.a
  ret void
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local noundef i32 @rb_cloexec_open(ptr nofree noundef readonly captures(none) %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #0 {
bb.a:
  %i.a = or i32 %1, 524288                        ; 2 uses
  %i.b = tail call i32 (ptr, i32, ...) @open(ptr noundef %0, i32 noundef %i.a, i32 noundef %2) #28 ; 2 uses
  %i.c = icmp eq i32 %i.b, -1
  br i1 %i.c, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a, %bb.b
  %.01624 = phi i32 [ %i.h, %bb.b ], [ 0, %bb.a ] ; 2 uses
  %i.d = tail call ptr @rb_errno_ptr() #28
  %i.e = load i32, ptr %i.d, align 4, !tbaa !7
  %i.f = icmp ne i32 %i.e, 11
  %i.g = icmp samesign ugt i32 %.01624, 9999
  %or.cond22 = select i1 %i.f, i1 true, i1 %i.g
  br i1 %or.cond22, label %.thread21, label %bb.b

bb.b:                                             ; preds = %.lr.ph
  %i.h = add nuw nsw i32 %.01624, 1
  %i.i = tail call i32 @sleep(i32 noundef 0) #28  ; 0 uses
  %i.j = tail call i32 (ptr, i32, ...) @open(ptr noundef %0, i32 noundef %i.a, i32 noundef %2) #28 ; 2 uses
  %i.k = icmp eq i32 %i.j, -1
  br i1 %i.k, label %.lr.ph, label %._crit_edge

._crit_edge:                                      ; preds = %bb.b, %bb.a
  %.lcssa = phi i32 [ %i.b, %bb.a ], [ %i.j, %bb.b ] ; 10 uses
  %i.l = icmp slt i32 %.lcssa, 0
  br i1 %i.l, label %.thread21, label %bb.c

bb.c:                                             ; preds = %._crit_edge
  %i.m = icmp samesign ult i32 %.lcssa, 3
  %i.n = load i32, ptr @rb_cloexec_open.o_cloexec_state, align 4 ; 2 uses
  %i.o = icmp eq i32 %i.n, 0
  %or.cond = select i1 %i.m, i1 true, i1 %i.o
  br i1 %or.cond, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  tail call void @rb_maygvl_fd_fix_cloexec(i32 noundef %.lcssa)
  br label %.thread21

bb.e:                                             ; preds = %bb.c
  %i.p = icmp sgt i32 %i.n, 0
  br i1 %i.p, label %.thread21, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.q = tail call i32 (i32, i32, ...) @fcntl(i32 noundef range(i32 3, -2147483648) %.lcssa, i32 noundef 1) #28 ; 2 uses
  %i.r = icmp eq i32 %i.q, -1
  br i1 %i.r, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.s = tail call ptr @rb_errno_ptr() #28
  %i.t = load i32, ptr %i.s, align 4, !tbaa !7
end_hunk_0
begin_hunk_1_@io_ascii8bit_binmode:bb.a
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.e = getelementptr i8, ptr %0, i64 20         ; 2 uses
  %i.f = load i32, ptr %i.e, align 4, !tbaa !39
  %i.g = and i32 %i.f, -4101
  %i.h = or disjoint i32 %i.g, 4
  store i32 %i.h, ptr %i.e, align 4, !tbaa !39
  %i.i = tail call nonnull ptr @rb_ascii8bit_encoding() #28
  %i.j = getelementptr i8, ptr %0, i64 96
  store ptr %i.i, ptr %i.j, align 8, !tbaa !83
  %i.k = getelementptr i8, ptr %0, i64 104
  store ptr null, ptr %i.k, align 8, !tbaa !72
  %i.l = getelementptr i8, ptr %0, i64 112
  store i32 0, ptr %i.l, align 8, !tbaa !96
  %i.m = getelementptr i8, ptr %0, i64 120
  store i64 4, ptr %i.m, align 8, !tbaa !97
  %i.n = load ptr, ptr %i.a, align 8, !tbaa !48   ; 2 uses
  %.not.i.i = icmp eq ptr %i.n, null
  br i1 %.not.i.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  tail call void @rb_econv_close(ptr noundef nonnull %i.n) #28
  store ptr null, ptr %i.a, align 8, !tbaa !48
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %i.o = getelementptr i8, ptr %0, i64 136        ; 2 uses
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !49   ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.p, null
  br i1 %.not.i.i.i, label %clear_readconv.exit.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  tail call void @ruby_xfree(ptr noundef nonnull %i.p) #28
  store ptr null, ptr %i.o, align 8, !tbaa !49
  br label %clear_readconv.exit.i

clear_readconv.exit.i:                            ; preds = %bb.h, %bb.g
  %i.q = load ptr, ptr %i.c, align 8, !tbaa !50   ; 2 uses
  %.not.i2.i = icmp eq ptr %i.q, null
  br i1 %.not.i2.i, label %clear_codeconv.exit, label %bb.i

bb.i:                                             ; preds = %clear_readconv.exit.i
  tail call void @rb_econv_close(ptr noundef nonnull %i.q) #28
  store ptr null, ptr %i.c, align 8, !tbaa !50
  br label %clear_codeconv.exit

clear_codeconv.exit:                              ; preds = %clear_readconv.exit.i, %bb.i
  %i.r = getelementptr i8, ptr %0, i64 176
  store i32 0, ptr %i.r, align 8, !tbaa !51
  ret void
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local range(i32 0, -4) i32 @rb_io_modestr_fmode(ptr noundef %0) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 1          ; 4 uses
  %i.b = load i8, ptr %0, align 1, !tbaa !86      ; 2 uses
  switch i8 %i.b, label %.loopexit33 [
    i8 114, label %bb.c
    i8 119, label %.thread
    i8 97, label %bb.b
  ]

bb.b:                                             ; preds = %bb.a
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.022 = phi i32 [ 194, %bb.b ], [ 1, %bb.a ]    ; 3 uses
  %i.c = load i8, ptr %i.a, align 1, !tbaa !86    ; 3 uses
  %.not37 = icmp eq i8 %i.c, 0
  br i1 %.not37, label %.loopexit, label %.lr.ph

.thread:                                          ; preds = %bb.a
  %i.d = load i8, ptr %i.a, align 1, !tbaa !86    ; 2 uses
  %.not3757 = icmp eq i8 %i.d, 0
  br i1 %.not3757, label %.loopexit.thread, label %.lr.ph.split.us.preheader

.lr.ph:                                           ; preds = %bb.c
  %.not29 = icmp eq i8 %i.b, 119
  br i1 %.not29, label %.lr.ph.split.us.preheader, label %.lr.ph.split

.lr.ph.split.us.preheader:                        ; preds = %.thread, %.lr.ph
  %.ph = phi i8 [ %i.d, %.thread ], [ %i.c, %.lr.ph ]
  %.138.us.ph = phi i32 [ 2178, %.thread ], [ %.022, %.lr.ph ]
  br label %.lr.ph.split.us

.lr.ph.split.us:                                  ; preds = %.lr.ph.split.us.preheader, %bb.g
  %i.e = phi i8 [ %i.h, %bb.g ], [ %.ph, %.lr.ph.split.us.preheader ]
  %.039.us = phi ptr [ %i.f, %bb.g ], [ %i.a, %.lr.ph.split.us.preheader ]
  %.138.us = phi i32 [ %i.g, %bb.g ], [ %.138.us.ph, %.lr.ph.split.us.preheader ] ; 2 uses
  %i.f = getelementptr i8, ptr %.039.us, i64 1    ; 3 uses
  switch i8 %i.e, label %.loopexit33 [
    i8 98, label %bb.f
    i8 116, label %bb.e
    i8 43, label %bb.d
    i8 120, label %bb.g
    i8 58, label %.split.us
  ]

bb.d:                                             ; preds = %.lr.ph.split.us
  br label %bb.g

bb.e:                                             ; preds = %.lr.ph.split.us
  br label %bb.g

bb.f:                                             ; preds = %.lr.ph.split.us
  br label %bb.g

bb.g:                                             ; preds = %.lr.ph.split.us, %bb.f, %bb.e, %bb.d
  %.sink = phi i32 [ 4, %bb.f ], [ 4096, %bb.e ], [ 3, %bb.d ], [ 1024, %.lr.ph.split.us ]
  %i.g = or i32 %.138.us, %.sink                  ; 2 uses
  %i.h = load i8, ptr %i.f, align 1, !tbaa !86    ; 2 uses
  %.not.us = icmp eq i8 %i.h, 0
  br i1 %.not.us, label %.loopexit, label %.lr.ph.split.us, !llvm.loop !127

.lr.ph.split:                                     ; preds = %.lr.ph, %bb.m
  %i.i = phi i8 [ %i.u, %bb.m ], [ %i.c, %.lr.ph ]
  %.039 = phi ptr [ %i.j, %bb.m ], [ %i.a, %.lr.ph ]
  %.138 = phi i32 [ %i.t, %bb.m ], [ %.022, %.lr.ph ] ; 2 uses
  %i.j = getelementptr i8, ptr %.039, i64 1       ; 3 uses
  switch i8 %i.i, label %.loopexit33 [
    i8 98, label %bb.m
    i8 116, label %bb.h
    i8 43, label %bb.i
    i8 58, label %.split.us
  ]

bb.h:                                             ; preds = %.lr.ph.split
  br label %bb.m

bb.i:                                             ; preds = %.lr.ph.split
  br label %bb.m

.split.us:                                        ; preds = %.lr.ph.split, %.lr.ph.split.us
  %.us-phi = phi ptr [ %i.f, %.lr.ph.split.us ], [ %i.j, %.lr.ph.split ] ; 4 uses
  %.us-phi40 = phi i32 [ %.138.us, %.lr.ph.split.us ], [ %.138, %.lr.ph.split ] ; 2 uses
  %i.k = tail call ptr @strchr(ptr noundef nonnull dereferenceable(1) %.us-phi, i32 noundef 58) #33 ; 2 uses
  %.not25 = icmp eq ptr %i.k, null
  br i1 %.not25, label %bb.k, label %bb.j

bb.j:                                             ; preds = %.split.us
  %i.l = ptrtoint ptr %i.k to i64
  %i.m = ptrtoint ptr %.us-phi to i64
  %i.n = sub i64 %i.l, %i.m
  br label %bb.l

bb.k:                                             ; preds = %.split.us
  %i.o = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %.us-phi) #33
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j
  %i.p = phi i64 [ %i.n, %bb.j ], [ %i.o, %bb.k ]
  %i.q = icmp sgt i64 %i.p, 4
  br i1 %i.q, label %io_encname_bom_p.exit, label %io_encname_bom_p.exit.thread

io_encname_bom_p.exit:                            ; preds = %bb.l
  %i.r = tail call i32 @rb_st_locale_insensitive_strncasecmp(ptr noundef nonnull readonly %.us-phi, ptr noundef nonnull @bom_prefix, i64 noundef 4) #33
  %.fr = freeze i32 %i.r
  %.not32 = icmp eq i32 %.fr, 0
  %i.s = or i32 %.us-phi40, 1048576
  br i1 %.not32, label %.loopexit, label %io_encname_bom_p.exit.thread

io_encname_bom_p.exit.thread:                     ; preds = %bb.l, %io_encname_bom_p.exit
  br label %.loopexit

bb.m:                                             ; preds = %.lr.ph.split, %bb.i, %bb.h
  %.sink76 = phi i32 [ 3, %bb.i ], [ 4096, %bb.h ], [ 4, %.lr.ph.split ]
  %i.t = or i32 %.138, %.sink76                   ; 2 uses
  %i.u = load i8, ptr %i.j, align 1, !tbaa !86    ; 2 uses
  %.not = icmp eq i8 %i.u, 0
  br i1 %.not, label %.loopexit, label %.lr.ph.split, !llvm.loop !127

.loopexit:                                        ; preds = %bb.m, %bb.g, %bb.c, %io_encname_bom_p.exit.thread, %io_encname_bom_p.exit
  %.3 = phi i32 [ %i.s, %io_encname_bom_p.exit ], [ %.us-phi40, %io_encname_bom_p.exit.thread ], [ %.022, %bb.c ], [ %i.g, %bb.g ], [ %i.t, %bb.m ] ; 2 uses
  %i.v = and i32 %.3, 4100
  %or.cond.not = icmp eq i32 %i.v, 4100
  br i1 %or.cond.not, label %.loopexit33, label %.loopexit.thread

.loopexit.thread:                                 ; preds = %.thread, %.loopexit
  %.364 = phi i32 [ %.3, %.loopexit ], [ 2178, %.thread ]
  ret i32 %.364

.loopexit33:                                      ; preds = %.lr.ph.split, %.lr.ph.split.us, %.loopexit, %bb.a
  %i.w = load i64, ptr @rb_eArgError, align 8, !tbaa !13
  tail call void (i64, ptr, ...) @rb_raise(i64 noundef %i.w, ptr noundef nonnull @.str.14, ptr noundef nonnull %0) #30
  unreachable
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare ptr @strchr(ptr noundef, i32 noundef) local_unnamed_addr #10

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i64 @strlen(ptr noundef captures(none)) local_unnamed_addr #10

; Function Attrs: mustprogress nofree norecurse nosync nounwind sspstrong willreturn memory(none) uwtable
define dso_local range(i32 0, 4096) i32 @rb_io_oflags_fmode(i32 noundef %0) local_unnamed_addr #11 {
switch.lookup:
  %i.a = and i32 %0, 3
  %i.b = zext nneg i32 %i.a to i64
  %switch.gep = getelementptr inbounds nuw [4 x i8], ptr @switch.table.io_initialize, i64 %i.b
  %switch.load = load i32, ptr %switch.gep, align 4
  %i.c = lshr i32 %0, 4
  %i.d = and i32 %i.c, 64
  %i.e = shl i32 %0, 2
  %i.f = and i32 %i.e, 2048
  %i.g = shl i32 %0, 1
  %i.h = and i32 %i.g, 128
  %i.i = shl i32 %0, 3
  %i.j = and i32 %i.i, 1024
  %spec.select = or disjoint i32 %i.f, %i.d
  %.2 = or disjoint i32 %spec.select, %i.h
  %.3 = or disjoint i32 %.2, %i.j
  %.4 = or disjoint i32 %.3, %switch.load
  ret i32 %.4
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local range(i32 0, 2048) i32 @rb_io_modestr_oflags(ptr noundef %0) local_unnamed_addr #0 {
switch.lookup:
  %i.a = tail call i32 @rb_io_modestr_fmode(ptr noundef %0) ; 5 uses
  %i.b = and i32 %i.a, 3
  %i.c = zext nneg i32 %i.b to i64
  %switch.gep = getelementptr inbounds nuw [4 x i8], ptr @switch.table.rb_io_reopen, i64 %i.c
  %switch.load = load i32, ptr %switch.gep, align 4
  %i.d = shl i32 %i.a, 4
  %i.e = and i32 %i.d, 1024
  %i.f = lshr i32 %i.a, 2
  %i.g = and i32 %i.f, 512
  %i.h = lshr i32 %i.a, 1
  %i.i = and i32 %i.h, 64
  %i.j = lshr i32 %i.a, 3
  %i.k = and i32 %i.j, 128
  %spec.select.i = or disjoint i32 %i.g, %i.e
  %.2.i = or disjoint i32 %spec.select.i, %i.i
  %.3.i = or disjoint i32 %.2.i, %i.k
  %.4.i = or disjoint i32 %.3.i, %switch.load
  ret i32 %.4.i
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local range(i32 0, 2) i32 @rb_io_extract_encoding_option(i64 noundef %0, ptr nofree noundef writeonly captures(none) %1, ptr nofree noundef writeonly captures(none) %2, ptr nofree noundef captures(address_is_null) %3) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #28
  %i.b = icmp eq i64 %0, 4
  br i1 %i.b, label %.thread101, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = load i64, ptr @sym_encoding, align 8, !tbaa !13
  %i.d = tail call i64 @rb_hash_lookup2(i64 noundef %0, i64 noundef %i.c, i64 noundef 4) #28 ; 6 uses
  %i.e = load i64, ptr @sym_extenc, align 8, !tbaa !13
  %i.f = tail call i64 @rb_hash_lookup2(i64 noundef %0, i64 noundef %i.e, i64 noundef 36) #28 ; 2 uses
  %i.g = load i64, ptr @sym_intenc, align 8, !tbaa !13
  %i.h = tail call i64 @rb_hash_lookup2(i64 noundef %0, i64 noundef %i.g, i64 noundef 36) #28 ; 5 uses
  switch i64 %i.f, label %bb.c [
    i64 4, label %.thread
    i64 36, label %.thread
  ]

.thread:                                          ; preds = %bb.b, %bb.b
  %i.i = icmp eq i64 %i.h, 36
  br i1 %i.i, label %bb.p, label %bb.c

bb.c:                                             ; preds = %bb.b, %.thread
  %i.j = phi i1 [ true, %.thread ], [ false, %bb.b ] ; 3 uses
  %.14575 = phi i64 [ 36, %.thread ], [ %i.f, %bb.b ]
  %i.k = icmp eq i64 %i.d, 4
  br i1 %i.k, label %bb.h, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.l = tail call ptr @rb_ruby_verbose_ptr() #28
  %i.m = load i64, ptr %i.l, align 8, !tbaa !13
  %i.n = icmp eq i64 %i.m, 4
  br i1 %i.n, label %bb.h, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.o = tail call i32 @rb_to_encoding_index(i64 noundef %i.d) #28 ; 2 uses
  %i.p = icmp sgt i32 %i.o, -1
  br i1 %i.p, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.q = tail call ptr @rb_enc_from_index(i32 noundef %i.o) #28
  %i.r = tail call i64 @rb_enc_from_encoding(ptr noundef %i.q) #28
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %.2 = phi i64 [ %i.r, %bb.f ], [ %i.d, %bb.e ]
  %i.s = select i1 %i.j, ptr @.str.16, ptr @.str.17
  tail call void (ptr, ...) @rb_warn(ptr noundef nonnull @.str.15, i64 noundef %.2, ptr noundef nonnull %i.s) #34
  br i1 %i.j, label %bb.j, label %bb.i

bb.h:                                             ; preds = %bb.d, %bb.c
  br i1 %i.j, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %i.t = tail call ptr @rb_to_encoding(i64 noundef %.14575) #28
  br label %bb.j

bb.j:                                             ; preds = %bb.g, %bb.i, %bb.h
  %.not57 = phi i1 [ false, %bb.h ], [ false, %bb.g ], [ true, %bb.i ]
  %.049 = phi ptr [ null, %bb.h ], [ null, %bb.g ], [ %i.t, %bb.i ] ; 3 uses
  switch i64 %i.h, label %bb.k [
    i64 36, label %.thread95
    i64 4, label %.thread95.thread
  ]

bb.k:                                             ; preds = %bb.j
  %i.u = tail call i64 @rb_check_string_type(i64 noundef %i.h) #28 ; 2 uses
  store i64 %i.u, ptr %i.a, align 8, !tbaa !13
  %i.v = icmp eq i64 %i.u, 4
  br i1 %i.v, label %bb.o, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.w = call ptr @rb_string_value_cstr(ptr noundef nonnull %i.a) #28 ; 2 uses
  %i.x = load i8, ptr %i.w, align 1, !tbaa !86
  %i.y = icmp eq i8 %i.x, 45
  br i1 %i.y, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  %i.z = getelementptr i8, ptr %i.w, i64 1
  %i.aa = load i8, ptr %i.z, align 1, !tbaa !86
  %i.ab = icmp eq i8 %i.aa, 0
  br i1 %i.ab, label %.thread95.thread, label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.l
  %i.ac = call ptr @rb_to_encoding(i64 noundef %i.h) #28
  br label %.thread95.thread

bb.o:                                             ; preds = %bb.k
  %i.ad = tail call ptr @rb_to_encoding(i64 noundef %i.h) #28
  br label %.thread95.thread

.thread95.thread:                                 ; preds = %bb.j, %bb.o, %bb.m, %bb.n
  %.147 = phi ptr [ inttoptr (i64 4 to ptr), %bb.j ], [ %i.ad, %bb.o ], [ %i.ac, %bb.n ], [ inttoptr (i64 4 to ptr), %bb.m ] ; 2 uses
  %i.ae = icmp eq ptr %.049, %.147
  %spec.store.select = select i1 %i.ae, ptr inttoptr (i64 4 to ptr), ptr %.147
  br label %bb.z

bb.p:                                             ; preds = %.thread
  %i.af = icmp eq i64 %i.d, 4
  br i1 %i.af, label %.thread101, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.ag = tail call i64 @rb_check_string_type(i64 noundef %i.d) #28 ; 2 uses
  store i64 %i.ag, ptr %i.a, align 8, !tbaa !13
  %i.ah = icmp eq i64 %i.ag, 4
  br i1 %i.ah, label %bb.s, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.ai = call ptr @rb_string_value_cstr(ptr noundef nonnull %i.a) #28
  %i.aj = load i64, ptr %i.a, align 8, !tbaa !13
  %i.ak = call ptr @rb_enc_get(i64 noundef %i.aj) #28
  call fastcc void @parse_mode_enc(ptr noundef %i.ai, ptr noundef %i.ak, ptr noundef %1, ptr noundef %2, ptr noundef %3)
  br label %.thread101

bb.s:                                             ; preds = %bb.q
  %i.al = tail call ptr @rb_to_encoding(i64 noundef %i.d) #28 ; 2 uses
  %.not24.i = icmp ne ptr %i.al, null             ; 2 uses
  br i1 %.not24.i, label %bb.u, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.am = tail call ptr @rb_default_external_encoding() #28
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %bb.s
  %.018.i = phi ptr [ %i.am, %bb.t ], [ %i.al, %bb.s ] ; 5 uses
  %i.an = tail call nonnull ptr @rb_ascii8bit_encoding() #28
  %i.ao = icmp eq ptr %.018.i, %i.an
  br i1 %i.ao, label %bb.w, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.ap = tail call ptr @rb_default_internal_encoding() #28
  br label %bb.w

bb.w:                                             ; preds = %bb.v, %bb.u
  %.019.i = phi ptr [ null, %bb.u ], [ %i.ap, %bb.v ] ; 4 uses
  %magicptr.i = ptrtoint ptr %.019.i to i64
  switch i64 %magicptr.i, label %bb.x [
    i64 4, label %bb.y
    i64 0, label %bb.y
  ]

bb.x:                                             ; preds = %bb.w
  %i.aq = icmp eq ptr %.019.i, %.018.i
  br i1 %i.aq, label %bb.y, label %rb_io_ext_int_to_encs.exit

bb.y:                                             ; preds = %bb.x, %bb.w, %bb.w
  %.not25.i = icmp eq ptr %.019.i, %.018.i
  %or.cond26.i = select i1 %.not24.i, i1 true, i1 %.not25.i
  %i.ar = select i1 %or.cond26.i, ptr %.018.i, ptr null
  br label %rb_io_ext_int_to_encs.exit

rb_io_ext_int_to_encs.exit:                       ; preds = %bb.x, %bb.y
  %storemerge22.i = phi ptr [ %i.ar, %bb.y ], [ %.019.i, %bb.x ]
  %storemerge.i = phi ptr [ null, %bb.y ], [ %.018.i, %bb.x ]
  store ptr %storemerge22.i, ptr %1, align 8, !tbaa !128
  store ptr %storemerge.i, ptr %2, align 8, !tbaa !128
  br label %.thread101

.thread95:                                        ; preds = %bb.j
  br i1 %.not57, label %bb.z, label %.thread101

bb.z:                                             ; preds = %.thread95.thread, %.thread95
  %.248100107 = phi ptr [ null, %.thread95 ], [ %spec.store.select, %.thread95.thread ] ; 2 uses
  %.not24.i59.not = icmp ne ptr %.049, null       ; 2 uses
  br i1 %.not24.i59.not, label %bb.aa, label %.thread109

.thread109:                                       ; preds = %bb.z
  %i.as = call ptr @rb_default_external_encoding() #28
  br label %bb.aa

bb.aa:                                            ; preds = %.thread109, %bb.z
  %.018.i60 = phi ptr [ %i.as, %.thread109 ], [ %.049, %bb.z ] ; 5 uses
  %i.at = call nonnull ptr @rb_ascii8bit_encoding() #28
  %i.au = icmp eq ptr %.018.i60, %i.at
  br i1 %i.au, label %bb.ad, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.av = icmp eq ptr %.248100107, null
  br i1 %i.av, label %bb.ac, label %bb.ad

bb.ac:                                            ; preds = %bb.ab
  %i.aw = call ptr @rb_default_internal_encoding() #28
  br label %bb.ad

bb.ad:                                            ; preds = %bb.ac, %bb.ab, %bb.aa
  %.019.i61 = phi ptr [ %.248100107, %bb.ab ], [ %i.aw, %bb.ac ], [ null, %bb.aa ] ; 4 uses
  %magicptr.i62 = ptrtoint ptr %.019.i61 to i64
  switch i64 %magicptr.i62, label %bb.ae [
    i64 4, label %bb.af
    i64 0, label %bb.af
  ]

bb.ae:                                            ; preds = %bb.ad
  %i.ax = icmp eq ptr %.019.i61, %.018.i60
  br i1 %i.ax, label %bb.af, label %rb_io_ext_int_to_encs.exit67
end_hunk_1
begin_hunk_2_@parse_mode_enc:bb.a
  store i8 0, ptr %i.v, align 1, !tbaa !86
  br label %bb.l

bb.l:                                             ; preds = %ruby_nonempty_memcpy.exit, %bb.k
  %.1 = phi ptr [ %i.a, %ruby_nonempty_memcpy.exit ], [ %.051, %bb.k ] ; 2 uses
  %i.w = call i32 @rb_enc_find_index(ptr noundef %.1) #28
  br label %bb.m

bb.m:                                             ; preds = %io_encname_bom_p.exit.thread, %bb.l
  %.052 = phi i32 [ %i.w, %bb.l ], [ -1, %io_encname_bom_p.exit.thread ] ; 4 uses
  %.2 = phi ptr [ %.1, %bb.l ], [ %.051, %io_encname_bom_p.exit.thread ]
  br i1 %.not, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  store i32 %.050, ptr %4, align 4, !tbaa !7
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.m
  %i.x = icmp sgt i32 %.052, -1
  br i1 %i.x, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  %i.y = call ptr @rb_enc_from_index(i32 noundef %.052) #28
  br label %bb.s

bb.q:                                             ; preds = %bb.o
  %.not64 = icmp eq i32 %.052, -2
  br i1 %.not64, label %bb.s, label %bb.r

bb.r:                                             ; preds = %bb.q
  call void (ptr, ptr, ...) @rb_enc_warn(ptr noundef %1, ptr noundef nonnull @.str.201, ptr noundef %.2) #28
  br label %bb.s

bb.s:                                             ; preds = %bb.q, %bb.r, %bb.p
  %.049 = phi ptr [ %i.y, %bb.p ], [ null, %bb.r ], [ null, %bb.q ] ; 2 uses
  %.not65 = icmp eq ptr %.053, null
  br i1 %.not65, label %bb.z, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.z = load i8, ptr %.053, align 1, !tbaa !86
  %i.aa = icmp eq i8 %i.z, 45
  br i1 %i.aa, label %bb.u, label %bb.v

bb.u:                                             ; preds = %bb.t
  %i.ab = getelementptr i8, ptr %.053, i64 1
  %i.ac = load i8, ptr %i.ab, align 1, !tbaa !86
  %i.ad = icmp eq i8 %i.ac, 0
  br i1 %i.ad, label %bb.z, label %bb.v

bb.v:                                             ; preds = %bb.u, %bb.t
  %i.ae = call i32 @rb_enc_find_index(ptr noundef nonnull %.053) #28 ; 3 uses
  %i.af = icmp slt i32 %i.ae, 0
  br i1 %i.af, label %bb.w, label %bb.x

bb.w:                                             ; preds = %bb.v
  call void (ptr, ptr, ...) @rb_enc_warn(ptr noundef %1, ptr noundef nonnull @.str.201, ptr noundef nonnull %.053) #28
  br label %bb.z

bb.x:                                             ; preds = %bb.v
  %i.ag = and i32 %.050, 1048576
  %.not66 = icmp eq i32 %i.ag, 0
  %i.ah = icmp eq i32 %i.ae, %.052
  %or.cond67 = select i1 %.not66, i1 %i.ah, i1 false
  br i1 %or.cond67, label %bb.z, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.ai = call ptr @rb_enc_from_index(i32 noundef %i.ae) #28
  br label %bb.z

bb.z:                                             ; preds = %bb.x, %bb.u, %bb.y, %bb.w, %bb.s
  %.048 = phi ptr [ null, %bb.s ], [ null, %bb.w ], [ %i.ai, %bb.y ], [ inttoptr (i64 4 to ptr), %bb.u ], [ inttoptr (i64 4 to ptr), %bb.x ] ; 2 uses
  %.not24.i = icmp ne ptr %.049, null             ; 2 uses
  br i1 %.not24.i, label %bb.ab, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.aj = call ptr @rb_default_external_encoding() #28
  br label %bb.ab

bb.ab:                                            ; preds = %bb.aa, %bb.z
  %.018.i = phi ptr [ %i.aj, %bb.aa ], [ %.049, %bb.z ] ; 5 uses
  %i.ak = call nonnull ptr @rb_ascii8bit_encoding() #28
  %i.al = icmp eq ptr %.018.i, %i.ak
  br i1 %i.al, label %bb.ae, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.am = icmp eq ptr %.048, null
  br i1 %i.am, label %bb.ad, label %bb.ae

bb.ad:                                            ; preds = %bb.ac
  %i.an = call ptr @rb_default_internal_encoding() #28
  br label %bb.ae

bb.ae:                                            ; preds = %bb.ad, %bb.ac, %bb.ab
  %.019.i = phi ptr [ %.048, %bb.ac ], [ %i.an, %bb.ad ], [ null, %bb.ab ] ; 4 uses
  %magicptr.i = ptrtoint ptr %.019.i to i64
  switch i64 %magicptr.i, label %bb.af [
    i64 4, label %bb.ag
    i64 0, label %bb.ag
  ]

bb.af:                                            ; preds = %bb.ae
  %i.ao = and i32 %.050, 1048576
  %.not.i68 = icmp eq i32 %i.ao, 0
  %i.ap = icmp eq ptr %.019.i, %.018.i
  %or.cond.i = select i1 %.not.i68, i1 %i.ap, i1 false
  br i1 %or.cond.i, label %bb.ag, label %rb_io_ext_int_to_encs.exit

bb.ag:                                            ; preds = %bb.af, %bb.ae, %bb.ae
  %.not25.i = icmp eq ptr %.019.i, %.018.i
  %or.cond26.i = select i1 %.not24.i, i1 true, i1 %.not25.i
  %i.aq = select i1 %or.cond26.i, ptr %.018.i, ptr null
  br label %rb_io_ext_int_to_encs.exit

rb_io_ext_int_to_encs.exit:                       ; preds = %bb.af, %bb.ag
  %storemerge22.i = phi ptr [ %i.aq, %bb.ag ], [ %.019.i, %bb.af ]
  %storemerge.i = phi ptr [ null, %bb.ag ], [ %.018.i, %bb.af ]
  store ptr %storemerge22.i, ptr %2, align 8, !tbaa !128
  store ptr %storemerge.i, ptr %3, align 8, !tbaa !128
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #28
  ret void
}

declare ptr @rb_enc_get(i64 noundef) local_unnamed_addr #1

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @rb_io_extract_modeenc(ptr nofree noundef captures(none) %0, ptr nofree noundef captures(address_is_null) %1, i64 noundef %2, ptr nofree noundef writeonly captures(none) %3, ptr nofree noundef writeonly captures(none) %4, ptr nofree noundef writeonly captures(none) %5) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 15 uses
  %i.b = alloca i32, align 4                      ; 15 uses
  %i.c = alloca ptr, align 8                      ; 11 uses
  %i.d = alloca ptr, align 8                      ; 11 uses
  %i.e = alloca i64, align 8                      ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #28
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #28
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #28
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #28
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #28
  %i.f = load i64, ptr %0, align 8, !tbaa !13     ; 3 uses
  store i64 %i.f, ptr %i.a, align 8, !tbaa !13
  %i.g = tail call ptr @rb_default_external_encoding() #28 ; 5 uses
  %i.h = tail call nonnull ptr @rb_ascii8bit_encoding() #28
  %i.i = icmp eq ptr %i.g, %i.h
  br i1 %i.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.j = tail call ptr @rb_default_internal_encoding() #28
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %.019.i = phi ptr [ null, %bb.a ], [ %i.j, %bb.b ] ; 4 uses
  %magicptr.i = ptrtoint ptr %.019.i to i64
  switch i64 %magicptr.i, label %bb.d [
    i64 4, label %bb.e
    i64 0, label %bb.e
  ]

bb.d:                                             ; preds = %bb.c
  %i.k = icmp eq ptr %.019.i, %i.g
  br i1 %i.k, label %bb.e, label %rb_io_ext_int_to_encs.exit

bb.e:                                             ; preds = %bb.d, %bb.c, %bb.c
  %.not25.i = icmp eq ptr %.019.i, %i.g
  %i.l = select i1 %.not25.i, ptr %i.g, ptr null
  br label %rb_io_ext_int_to_encs.exit

rb_io_ext_int_to_encs.exit:                       ; preds = %bb.d, %bb.e
  %storemerge22.i = phi ptr [ %i.l, %bb.e ], [ %.019.i, %bb.d ]
  %storemerge.i = phi ptr [ null, %bb.e ], [ %i.g, %bb.d ]
  store ptr %storemerge22.i, ptr %i.c, align 8, !tbaa !128
  store ptr %storemerge.i, ptr %i.d, align 8, !tbaa !128
  %i.m = icmp eq i64 %2, 4
  %i.n = icmp eq i64 %i.f, 4
  br i1 %i.n, label %bb.f, label %bb.g

bb.f:                                             ; preds = %rb_io_ext_int_to_encs.exit
  store i32 1, ptr %i.b, align 4, !tbaa !7
  br label %bb.s

bb.g:                                             ; preds = %rb_io_ext_int_to_encs.exit
  %i.o = tail call i64 @rb_check_to_integer(i64 noundef %i.f, ptr noundef nonnull @.str.18) #28 ; 5 uses
  %i.p = icmp eq i64 %i.o, 4
  br i1 %i.p, label %switch.lookup, label %bb.h

bb.h:                                             ; preds = %bb.g
  store i64 %i.o, ptr %i.a, align 8, !tbaa !13
  %i.q = trunc i64 %i.o to i1
  br i1 %i.q, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.r = tail call i64 @rb_fix2int(i64 noundef %i.o) #28
  br label %rb_num2int_inline.exit

bb.j:                                             ; preds = %bb.h
  %i.s = tail call i64 @rb_num2int(i64 noundef %i.o) #28
  br label %rb_num2int_inline.exit

rb_num2int_inline.exit:                           ; preds = %bb.i, %bb.j
  %.0.i = phi i64 [ %i.r, %bb.i ], [ %i.s, %bb.j ] ; 2 uses
  %i.t = trunc i64 %.0.i to i32                   ; 5 uses
  %i.u = and i64 %.0.i, 3
  %switch.gep = getelementptr inbounds nuw [4 x i8], ptr @switch.table.io_initialize, i64 %i.u
  %switch.load = load i32, ptr %switch.gep, align 4
  %i.v = lshr i32 %i.t, 4
  %i.w = and i32 %i.v, 64
  %i.x = shl i32 %i.t, 2
  %i.y = and i32 %i.x, 2048
  %i.z = shl i32 %i.t, 1
  %i.aa = and i32 %i.z, 128
  %i.ab = shl i32 %i.t, 3
  %i.ac = and i32 %i.ab, 1024
  %spec.select.i = or disjoint i32 %i.y, %i.w
  %.2.i = or disjoint i32 %spec.select.i, %i.aa
  %.3.i = or disjoint i32 %.2.i, %i.ac
  %.4.i = or disjoint i32 %.3.i, %switch.load
  store i32 %.4.i, ptr %i.b, align 4, !tbaa !7
  br label %bb.s

switch.lookup:                                    ; preds = %bb.g
  %i.ad = call i64 @rb_string_value(ptr noundef nonnull %i.a) #28 ; 0 uses
  %i.ae = call ptr @rb_string_value_cstr(ptr noundef nonnull %i.a) #28 ; 2 uses
  %i.af = call i32 @rb_io_modestr_fmode(ptr noundef %i.ae) ; 8 uses
  store i32 %i.af, ptr %i.b, align 4, !tbaa !7
  %i.ag = and i32 %i.af, 3
  %i.ah = zext nneg i32 %i.ag to i64
  %switch.gep152 = getelementptr inbounds nuw [4 x i8], ptr @switch.table.rb_io_reopen, i64 %i.ah
  %switch.load153 = load i32, ptr %switch.gep152, align 4
  %i.ai = shl i32 %i.af, 4
  %i.aj = and i32 %i.ai, 1024
  %i.ak = lshr i32 %i.af, 2
  %i.al = and i32 %i.ak, 512
  %i.am = lshr i32 %i.af, 1
  %i.an = and i32 %i.am, 64
  %i.ao = lshr i32 %i.af, 3
  %i.ap = and i32 %i.ao, 128
  %spec.select.i73 = or disjoint i32 %i.al, %i.aj
  %.2.i74 = or disjoint i32 %spec.select.i73, %i.an
  %.3.i75 = or disjoint i32 %.2.i74, %i.ap
  %.4.i76 = or disjoint i32 %.3.i75, %switch.load153 ; 2 uses
  %i.aq = call ptr @strchr(ptr noundef nonnull dereferenceable(1) %i.ae, i32 noundef 58) #33 ; 2 uses
  %.not62 = icmp eq ptr %i.aq, null
  br i1 %.not62, label %bb.l, label %bb.k

bb.k:                                             ; preds = %switch.lookup
  %i.ar = getelementptr i8, ptr %i.aq, i64 1
  %i.as = load i64, ptr %i.a, align 8, !tbaa !13
  %i.at = call ptr @rb_enc_get(i64 noundef %i.as) #28
  call fastcc void @parse_mode_enc(ptr noundef %i.ar, ptr noundef %i.at, ptr noundef nonnull %i.c, ptr noundef nonnull %i.d, ptr noundef nonnull %i.b)
  br label %bb.s

bb.l:                                             ; preds = %switch.lookup
  %i.au = and i32 %i.af, 4
  %.not63 = icmp ne i32 %i.au, 0                  ; 2 uses
  br i1 %.not63, label %.thread, label %bb.m

.thread:                                          ; preds = %bb.l
  %i.av = call nonnull ptr @rb_ascii8bit_encoding() #28
  br label %bb.n

bb.m:                                             ; preds = %bb.l
  %i.aw = call ptr @rb_default_external_encoding() #28
  br label %bb.n

bb.n:                                             ; preds = %.thread, %bb.m
  %.018.i = phi ptr [ %i.aw, %bb.m ], [ %i.av, %.thread ] ; 5 uses
  %i.ax = call nonnull ptr @rb_ascii8bit_encoding() #28
  %i.ay = icmp eq ptr %.018.i, %i.ax
  br i1 %i.ay, label %bb.p, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.az = call ptr @rb_default_internal_encoding() #28
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.n
  %.019.i77 = phi ptr [ null, %bb.n ], [ %i.az, %bb.o ] ; 4 uses
  %magicptr.i78 = ptrtoint ptr %.019.i77 to i64
  switch i64 %magicptr.i78, label %bb.q [
    i64 4, label %bb.r
    i64 0, label %bb.r
  ]

bb.q:                                             ; preds = %bb.p
  %i.ba = and i32 %i.af, 1048576
  %.not.i = icmp eq i32 %i.ba, 0
  %i.bb = icmp eq ptr %.019.i77, %.018.i
  %or.cond.i = select i1 %.not.i, i1 %i.bb, i1 false
  br i1 %or.cond.i, label %bb.r, label %rb_io_ext_int_to_encs.exit82

bb.r:                                             ; preds = %bb.q, %bb.p, %bb.p
  %.not25.i79 = icmp eq ptr %.019.i77, %.018.i
  %or.cond26.i = select i1 %.not63, i1 true, i1 %.not25.i79
  %i.bc = select i1 %or.cond26.i, ptr %.018.i, ptr null
  br label %rb_io_ext_int_to_encs.exit82

rb_io_ext_int_to_encs.exit82:                     ; preds = %bb.q, %bb.r
  %storemerge22.i80 = phi ptr [ %i.bc, %bb.r ], [ %.019.i77, %bb.q ]
  %storemerge.i81 = phi ptr [ null, %bb.r ], [ %.018.i, %bb.q ]
  store ptr %storemerge22.i80, ptr %i.c, align 8, !tbaa !128
  store ptr %storemerge.i81, ptr %i.d, align 8, !tbaa !128
  br label %bb.s

bb.s:                                             ; preds = %bb.k, %rb_io_ext_int_to_encs.exit82, %rb_num2int_inline.exit, %bb.f
  %i.bd = phi i1 [ false, %bb.f ], [ false, %rb_num2int_inline.exit ], [ true, %bb.k ], [ false, %rb_io_ext_int_to_encs.exit82 ]
  %.259 = phi i32 [ 0, %bb.f ], [ 0, %rb_num2int_inline.exit ], [ 1, %bb.k ], [ 0, %rb_io_ext_int_to_encs.exit82 ] ; 3 uses
  %.051 = phi i32 [ 0, %bb.f ], [ %i.t, %rb_num2int_inline.exit ], [ %.4.i76, %bb.k ], [ %.4.i76, %rb_io_ext_int_to_encs.exit82 ] ; 3 uses
  br i1 %i.m, label %._crit_edge138, label %bb.y

._crit_edge138:                                   ; preds = %bb.s
  %i.be = load i32, ptr %i.b, align 4, !tbaa !7   ; 6 uses
  %.pre139 = and i32 %i.be, 4
  %i.bf = lshr i32 %i.be, 4
  %i.bg = and i32 %i.bf, 256
  %i.bh = and i32 %i.be, 5
  %.not = icmp eq i32 %i.bh, 1
  %i.bi = select i1 %.not, i32 %i.bg, i32 0       ; 2 uses
  store i64 4, ptr %i.e, align 8, !tbaa !13
  %i.bj = icmp eq i32 %.pre139, 0
  %or.cond = or i1 %i.bj, %i.bd
  br i1 %or.cond, label %thread-pre-split, label %bb.t

bb.t:                                             ; preds = %._crit_edge138
  %i.bk = call nonnull ptr @rb_ascii8bit_encoding() #28 ; 4 uses
  %i.bl = call nonnull ptr @rb_ascii8bit_encoding() #28
  %i.bm = icmp eq ptr %i.bk, %i.bl
  br i1 %i.bm, label %bb.v, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.bn = call ptr @rb_default_internal_encoding() #28
  br label %bb.v

bb.v:                                             ; preds = %bb.u, %bb.t
  %.019.i85 = phi ptr [ null, %bb.t ], [ %i.bn, %bb.u ] ; 3 uses
  %magicptr.i86 = ptrtoint ptr %.019.i85 to i64
  switch i64 %magicptr.i86, label %bb.w [
    i64 4, label %bb.x
    i64 0, label %bb.x
  ]

bb.w:                                             ; preds = %bb.v
  %i.bo = and i32 %i.be, 1048576
  %.not.i91 = icmp eq i32 %i.bo, 0
  %i.bp = icmp eq ptr %.019.i85, %i.bk
  %or.cond.i92 = select i1 %.not.i91, i1 %i.bp, i1 false
  br i1 %or.cond.i92, label %bb.x, label %rb_io_ext_int_to_encs.exit93

bb.x:                                             ; preds = %bb.w, %bb.v, %bb.v
  br label %rb_io_ext_int_to_encs.exit93

rb_io_ext_int_to_encs.exit93:                     ; preds = %bb.w, %bb.x
  %storemerge22.i89 = phi ptr [ %i.bk, %bb.x ], [ %.019.i85, %bb.w ] ; 2 uses
  %storemerge.i90 = phi ptr [ null, %bb.x ], [ %i.bk, %bb.w ] ; 2 uses
  store ptr %storemerge22.i89, ptr %i.c, align 8, !tbaa !128
  store ptr %storemerge.i90, ptr %i.d, align 8, !tbaa !128
  br label %bb.bc

bb.y:                                             ; preds = %bb.s
  %i.bq = load i64, ptr @sym_mode, align 8, !tbaa !13
  %i.br = call i64 @rb_hash_aref(i64 noundef %2, i64 noundef %i.bq) #28 ; 3 uses
  %i.bs = icmp eq i64 %i.br, 4
  br i1 %i.bs, label %bb.aa, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.bt = load i64, ptr %i.a, align 8, !tbaa !13
  %i.bu = icmp eq i64 %i.bt, 4
  br i1 %i.bu, label %bb.aq, label %._crit_edge134

._crit_edge134:                                   ; preds = %bb.z
  %.pre = load i64, ptr @rb_eArgError, align 8, !tbaa !13
  call void (i64, ptr, ...) @rb_raise(i64 noundef %.pre, ptr noundef nonnull @.str.19) #30
  unreachable

bb.aa:                                            ; preds = %rb_io_ext_int_to_encs.exit82.1, %bb.au, %rb_num2int_inline.exit.1, %bb.y
  %.259.lcssa130 = phi i32 [ %.259, %bb.y ], [ %.259, %rb_io_ext_int_to_encs.exit82.1 ], [ %.259, %rb_num2int_inline.exit.1 ], [ 1, %bb.au ]
  %.051.lcssa128 = phi i32 [ %.051, %bb.y ], [ %.4.i76.1, %rb_io_ext_int_to_encs.exit82.1 ], [ %i.dv, %rb_num2int_inline.exit.1 ], [ %.4.i76.1, %bb.au ] ; 2 uses
  %i.bv = load i64, ptr @sym_flags, align 8, !tbaa !13
  %i.bw = call i64 @rb_hash_aref(i64 noundef %2, i64 noundef %i.bv) #28 ; 2 uses
  %i.bx = icmp eq i64 %i.bw, 4
  br i1 %i.bx, label %bb.ae, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.by = call i64 @rb_to_int(i64 noundef %i.bw) #28 ; 3 uses
  %i.bz = trunc i64 %i.by to i1
  br i1 %i.bz, label %bb.ac, label %bb.ad

bb.ac:                                            ; preds = %bb.ab
  %i.ca = call i64 @rb_fix2int(i64 noundef %i.by) #28
  br label %rb_num2int_inline.exit95

bb.ad:                                            ; preds = %bb.ab
  %i.cb = call i64 @rb_num2int(i64 noundef %i.by) #28
  br label %rb_num2int_inline.exit95

rb_num2int_inline.exit95:                         ; preds = %bb.ac, %bb.ad
  %.0.i94 = phi i64 [ %i.ca, %bb.ac ], [ %i.cb, %bb.ad ]
  %i.cc = trunc i64 %.0.i94 to i32
  %i.cd = or i32 %.051.lcssa128, %i.cc            ; 7 uses
  %i.ce = sext i32 %i.cd to i64
  %i.cf = shl nsw i64 %i.ce, 1
  %i.cg = or disjoint i64 %i.cf, 1
  store i64 %i.cg, ptr %i.a, align 8, !tbaa !13
  %i.ch = and i32 %i.cd, 3
  %i.ci = zext nneg i32 %i.ch to i64
  %switch.gep155 = getelementptr inbounds nuw [4 x i8], ptr @switch.table.io_initialize, i64 %i.ci
  %switch.load156 = load i32, ptr %switch.gep155, align 4
  %i.cj = lshr i32 %i.cd, 4
  %i.ck = and i32 %i.cj, 64
  %i.cl = shl i32 %i.cd, 2
  %i.cm = and i32 %i.cl, 2048
  %i.cn = shl i32 %i.cd, 1
  %i.co = and i32 %i.cn, 128
  %i.cp = shl i32 %i.cd, 3
  %i.cq = and i32 %i.cp, 1024
  %spec.select.i97 = or disjoint i32 %i.cm, %i.ck
  %.2.i98 = or disjoint i32 %spec.select.i97, %i.co
  %.3.i99 = or disjoint i32 %.2.i98, %i.cq
  %.4.i100 = or disjoint i32 %.3.i99, %switch.load156
  store i32 %.4.i100, ptr %i.b, align 4, !tbaa !7
  br label %bb.ae

bb.ae:                                            ; preds = %rb_num2int_inline.exit95, %bb.aa
  %.1 = phi i32 [ %.051.lcssa128, %bb.aa ], [ %i.cd, %rb_num2int_inline.exit95 ]
  call fastcc void @extract_binmode(i64 noundef %2, ptr noundef %i.b)
  %i.cr = load i32, ptr %i.b, align 4, !tbaa !7   ; 4 uses
  %i.cs = and i32 %i.cr, 4
  %i.ct = icmp eq i32 %i.cs, 0
  %i.cu = icmp ne i32 %.259.lcssa130, 0           ; 2 uses
  %or.cond3 = or i1 %i.ct, %i.cu
  br i1 %or.cond3, label %bb.ak, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.cv = call nonnull ptr @rb_ascii8bit_encoding() #28 ; 4 uses
  %i.cw = call nonnull ptr @rb_ascii8bit_encoding() #28
  %i.cx = icmp eq ptr %i.cv, %i.cw
  br i1 %i.cx, label %bb.ah, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  %i.cy = call ptr @rb_default_internal_encoding() #28
  br label %bb.ah

bb.ah:                                            ; preds = %bb.ag, %bb.af
  %.019.i105 = phi ptr [ null, %bb.af ], [ %i.cy, %bb.ag ] ; 3 uses
  %magicptr.i106 = ptrtoint ptr %.019.i105 to i64
  switch i64 %magicptr.i106, label %bb.ai [
    i64 4, label %bb.aj
    i64 0, label %bb.aj
  ]

bb.ai:                                            ; preds = %bb.ah
  %i.cz = and i32 %i.cr, 1048576
  %.not.i111 = icmp eq i32 %i.cz, 0
  %i.da = icmp eq ptr %.019.i105, %i.cv
  %or.cond.i112 = select i1 %.not.i111, i1 %i.da, i1 false
  br i1 %or.cond.i112, label %bb.aj, label %rb_io_ext_int_to_encs.exit113

bb.aj:                                            ; preds = %bb.ai, %bb.ah, %bb.ah
  br label %rb_io_ext_int_to_encs.exit113

rb_io_ext_int_to_encs.exit113:                    ; preds = %bb.ai, %bb.aj
  %storemerge22.i109 = phi ptr [ %i.cv, %bb.aj ], [ %.019.i105, %bb.ai ]
  %storemerge.i110 = phi ptr [ null, %bb.aj ], [ %i.cv, %bb.ai ]
  store ptr %storemerge22.i109, ptr %i.c, align 8, !tbaa !128
  store ptr %storemerge.i110, ptr %i.d, align 8, !tbaa !128
  br label %bb.ak

bb.ak:                                            ; preds = %rb_io_ext_int_to_encs.exit113, %bb.ae
  %i.db = load i64, ptr @sym_perm, align 8, !tbaa !13
  %i.dc = call i64 @rb_hash_aref(i64 noundef %2, i64 noundef %i.db) #28 ; 2 uses
  %i.dd = icmp eq i64 %i.dc, 4
  %i.de = icmp eq ptr %1, null
  %or.cond5.not = or i1 %i.de, %i.dd
  br i1 %or.cond5.not, label %bb.ao, label %bb.al

bb.al:                                            ; preds = %bb.ak
  %i.df = load i64, ptr %1, align 8, !tbaa !13
  %i.dg = icmp eq i64 %i.df, 4
  br i1 %i.dg, label %bb.an, label %bb.am

bb.am:                                            ; preds = %bb.al
  %i.dh = load i64, ptr @rb_eArgError, align 8, !tbaa !13
  call void (i64, ptr, ...) @rb_raise(i64 noundef %i.dh, ptr noundef nonnull @.str.20) #30
  unreachable

bb.an:                                            ; preds = %bb.al
  store i64 %i.dc, ptr %1, align 8, !tbaa !13
  br label %bb.ao

bb.ao:                                            ; preds = %bb.an, %bb.ak
  %i.di = call i32 @rb_io_extract_encoding_option(i64 noundef %2, ptr noundef nonnull %i.c, ptr noundef nonnull %i.d, ptr noundef nonnull %i.b)
  %i.dj = icmp ne i32 %i.di, 0
  %or.cond7 = and i1 %i.dj, %i.cu
  br i1 %or.cond7, label %bb.ap, label %.thread117

bb.ap:                                            ; preds = %bb.ao
  %i.dk = load i64, ptr @rb_eArgError, align 8, !tbaa !13
  call void (i64, ptr, ...) @rb_raise(i64 noundef %i.dk, ptr noundef nonnull @.str.21) #30
  unreachable

.thread117:                                       ; preds = %bb.ao
  %i.dl = lshr i32 %i.cr, 4
  %i.dm = and i32 %i.dl, 256
  %i.dn = and i32 %i.cr, 5
  %.not123 = icmp eq i32 %i.dn, 1
  %i.do = select i1 %.not123, i32 %i.dm, i32 0
  %i.dp = call i32 @rb_econv_prepare_options(i64 noundef %2, ptr noundef nonnull %i.e, i32 noundef %i.do) #28
  %.pre136.pre = load i32, ptr %i.b, align 4, !tbaa !7
  br label %thread-pre-split

bb.aq:                                            ; preds = %bb.z
  store i64 %i.br, ptr %i.a, align 8, !tbaa !13
  %i.dq = call i64 @rb_check_to_integer(i64 noundef %i.br, ptr noundef nonnull @.str.18) #28 ; 5 uses
  %i.dr = icmp eq i64 %i.dq, 4
  br i1 %i.dr, label %switch.lookup160, label %bb.ar

bb.ar:                                            ; preds = %bb.aq
  store i64 %i.dq, ptr %i.a, align 8, !tbaa !13
  %i.ds = trunc i64 %i.dq to i1
  br i1 %i.ds, label %bb.at, label %bb.as

bb.as:                                            ; preds = %bb.ar
  %i.dt = call i64 @rb_num2int(i64 noundef %i.dq) #28
  br label %rb_num2int_inline.exit.1

bb.at:                                            ; preds = %bb.ar
  %i.du = call i64 @rb_fix2int(i64 noundef %i.dq) #28
  br label %rb_num2int_inline.exit.1

rb_num2int_inline.exit.1:                         ; preds = %bb.at, %bb.as
  %.0.i.1 = phi i64 [ %i.du, %bb.at ], [ %i.dt, %bb.as ] ; 2 uses
  %i.dv = trunc i64 %.0.i.1 to i32                ; 5 uses
  %i.dw = and i64 %.0.i.1, 3
  %switch.gep158 = getelementptr inbounds nuw [4 x i8], ptr @switch.table.io_initialize, i64 %i.dw
  %switch.load159 = load i32, ptr %switch.gep158, align 4
  %i.dx = lshr i32 %i.dv, 4
  %i.dy = and i32 %i.dx, 64
  %i.dz = shl i32 %i.dv, 2
  %i.ea = and i32 %i.dz, 2048
  %i.eb = shl i32 %i.dv, 1
  %i.ec = and i32 %i.eb, 128
  %i.ed = shl i32 %i.dv, 3
  %i.ee = and i32 %i.ed, 1024
  %spec.select.i.1 = or disjoint i32 %i.ea, %i.dy
  %.2.i.1 = or disjoint i32 %spec.select.i.1, %i.ec
  %.3.i.1 = or disjoint i32 %.2.i.1, %i.ee
  %.4.i.1 = or disjoint i32 %.3.i.1, %switch.load159
  store i32 %.4.i.1, ptr %i.b, align 4, !tbaa !7
  br label %bb.aa

switch.lookup160:                                 ; preds = %bb.aq
  %i.ef = call i64 @rb_string_value(ptr noundef nonnull %i.a) #28 ; 0 uses
  %i.eg = call ptr @rb_string_value_cstr(ptr noundef nonnull %i.a) #28 ; 2 uses
  %i.eh = call i32 @rb_io_modestr_fmode(ptr noundef %i.eg) ; 8 uses
  store i32 %i.eh, ptr %i.b, align 4, !tbaa !7
  %i.ei = and i32 %i.eh, 3
  %i.ej = zext nneg i32 %i.ei to i64
  %switch.gep161 = getelementptr inbounds nuw [4 x i8], ptr @switch.table.rb_io_reopen, i64 %i.ej
  %switch.load162 = load i32, ptr %switch.gep161, align 4
  %i.ek = shl i32 %i.eh, 4
  %i.el = and i32 %i.ek, 1024
  %i.em = lshr i32 %i.eh, 2
  %i.en = and i32 %i.em, 512
  %i.eo = lshr i32 %i.eh, 1
  %i.ep = and i32 %i.eo, 64
  %i.eq = lshr i32 %i.eh, 3
  %i.er = and i32 %i.eq, 128
  %spec.select.i73.1 = or disjoint i32 %i.en, %i.el
  %.2.i74.1 = or disjoint i32 %spec.select.i73.1, %i.ep
  %.3.i75.1 = or disjoint i32 %.2.i74.1, %i.er
  %.4.i76.1 = or disjoint i32 %.3.i75.1, %switch.load162 ; 2 uses
  %i.es = call ptr @strchr(ptr noundef nonnull dereferenceable(1) %i.eg, i32 noundef 58) #33 ; 2 uses
  %.not62.1 = icmp eq ptr %i.es, null
  br i1 %.not62.1, label %bb.av, label %bb.au

bb.au:                                            ; preds = %switch.lookup160
  %i.et = getelementptr i8, ptr %i.es, i64 1
  %i.eu = load i64, ptr %i.a, align 8, !tbaa !13
  %i.ev = call ptr @rb_enc_get(i64 noundef %i.eu) #28
  call fastcc void @parse_mode_enc(ptr noundef %i.et, ptr noundef %i.ev, ptr noundef nonnull %i.c, ptr noundef nonnull %i.d, ptr noundef nonnull %i.b)
  br label %bb.aa

bb.av:                                            ; preds = %switch.lookup160
  %i.ew = and i32 %i.eh, 4
  %.not63.1 = icmp ne i32 %i.ew, 0                ; 2 uses
  br i1 %.not63.1, label %.thread.1, label %bb.aw

bb.aw:                                            ; preds = %bb.av
  %i.ex = call ptr @rb_default_external_encoding() #28
  br label %bb.ax

.thread.1:                                        ; preds = %bb.av
  %i.ey = call nonnull ptr @rb_ascii8bit_encoding() #28
  br label %bb.ax

bb.ax:                                            ; preds = %.thread.1, %bb.aw
  %.018.i.1 = phi ptr [ %i.ex, %bb.aw ], [ %i.ey, %.thread.1 ] ; 5 uses
  %i.ez = call nonnull ptr @rb_ascii8bit_encoding() #28
  %i.fa = icmp eq ptr %.018.i.1, %i.ez
  br i1 %i.fa, label %bb.az, label %bb.ay

bb.ay:                                            ; preds = %bb.ax
  %i.fb = call ptr @rb_default_internal_encoding() #28
  br label %bb.az

bb.az:                                            ; preds = %bb.ay, %bb.ax
  %.019.i77.1 = phi ptr [ null, %bb.ax ], [ %i.fb, %bb.ay ] ; 4 uses
  %magicptr.i78.1 = ptrtoint ptr %.019.i77.1 to i64
  switch i64 %magicptr.i78.1, label %bb.ba [
    i64 4, label %bb.bb
    i64 0, label %bb.bb
  ]

bb.ba:                                            ; preds = %bb.az
  %i.fc = and i32 %i.eh, 1048576
  %.not.i.1 = icmp eq i32 %i.fc, 0
  %i.fd = icmp eq ptr %.019.i77.1, %.018.i.1
  %or.cond.i.1 = select i1 %.not.i.1, i1 %i.fd, i1 false
  br i1 %or.cond.i.1, label %bb.bb, label %rb_io_ext_int_to_encs.exit82.1

bb.bb:                                            ; preds = %bb.ba, %bb.az, %bb.az
  %.not25.i79.1 = icmp eq ptr %.019.i77.1, %.018.i.1
  %or.cond26.i.1 = select i1 %.not63.1, i1 true, i1 %.not25.i79.1
  %i.fe = select i1 %or.cond26.i.1, ptr %.018.i.1, ptr null
  br label %rb_io_ext_int_to_encs.exit82.1

rb_io_ext_int_to_encs.exit82.1:                   ; preds = %bb.bb, %bb.ba
  %storemerge22.i80.1 = phi ptr [ %i.fe, %bb.bb ], [ %.019.i77.1, %bb.ba ]
  %storemerge.i81.1 = phi ptr [ null, %bb.bb ], [ %.018.i.1, %bb.ba ]
  store ptr %storemerge22.i80.1, ptr %i.c, align 8, !tbaa !128
  store ptr %storemerge.i81.1, ptr %i.d, align 8, !tbaa !128
  br label %bb.aa

thread-pre-split:                                 ; preds = %._crit_edge138, %.thread117
  %.pre136 = phi i32 [ %.pre136.pre, %.thread117 ], [ %i.be, %._crit_edge138 ]
  %.254.ph = phi i32 [ %i.dp, %.thread117 ], [ %i.bi, %._crit_edge138 ]
  %.3.ph = phi i32 [ %.1, %.thread117 ], [ %.051, %._crit_edge138 ]
  %.pr = load ptr, ptr %i.c, align 8, !tbaa !128
  %.pre135 = load ptr, ptr %i.d, align 8, !tbaa !128
  br label %bb.bc

bb.bc:                                            ; preds = %thread-pre-split, %rb_io_ext_int_to_encs.exit93
  %i.ff = phi i32 [ %.pre136, %thread-pre-split ], [ %i.be, %rb_io_ext_int_to_encs.exit93 ] ; 5 uses
  %i.fg = phi ptr [ %.pre135, %thread-pre-split ], [ %storemerge.i90, %rb_io_ext_int_to_encs.exit93 ] ; 2 uses
  %i.fh = phi ptr [ %.pr, %thread-pre-split ], [ %storemerge22.i89, %rb_io_ext_int_to_encs.exit93 ] ; 3 uses
  %.254 = phi i32 [ %.254.ph, %thread-pre-split ], [ %i.bi, %rb_io_ext_int_to_encs.exit93 ] ; 3 uses
  %.3 = phi i32 [ %.3.ph, %thread-pre-split ], [ %.051, %rb_io_ext_int_to_encs.exit93 ]
  %i.fi = icmp eq ptr %i.fg, null
  %i.fj = and i32 %i.ff, 4
  %.not.i114 = icmp eq i32 %i.fj, 0               ; 2 uses
  %i.fk = and i32 %i.ff, 5
  %i.fl = icmp eq i32 %i.fk, 1
  %or.cond22.i = and i1 %i.fi, %i.fl
  br i1 %or.cond22.i, label %bb.bd, label %bb.bg

bb.bd:                                            ; preds = %bb.bc
  %.not17.i = icmp eq ptr %i.fh, null
  br i1 %.not17.i, label %bb.be, label %bb.bf

bb.be:                                            ; preds = %bb.bd
  %i.fm = call ptr @rb_default_external_encoding() #28
  br label %bb.bf

bb.bf:                                            ; preds = %bb.be, %bb.bd
  %i.fn = phi ptr [ %i.fm, %bb.be ], [ %i.fh, %bb.bd ] ; 2 uses
  %i.fo = getelementptr i8, ptr %i.fn, i64 20
  %.val.i.i = load i32, ptr %i.fo, align 4, !tbaa !84
  %.not.i.i = icmp eq i32 %.val.i.i, 1
  br i1 %.not.i.i, label %rb_enc_asciicompat.exit.i, label %rb_enc_asciicompat.exit.thread.i

rb_enc_asciicompat.exit.i:                        ; preds = %bb.bf
  %i.fp = call i32 @rb_enc_dummy_p(ptr noundef nonnull readonly %i.fn) #33
  %.not3.i.i = icmp eq i32 %i.fp, 0
  br i1 %.not3.i.i, label %.thread.i, label %rb_enc_asciicompat.exit.thread.i

.thread.i:                                        ; preds = %rb_enc_asciicompat.exit.i
  %i.fq = and i32 %.254, 32512
  %.not1926.i = icmp eq i32 %i.fq, 0
  br label %validate_enc_binmode.exit

rb_enc_asciicompat.exit.thread.i:                 ; preds = %rb_enc_asciicompat.exit.i, %bb.bf
  %i.fr = load i64, ptr @rb_eArgError, align 8, !tbaa !13
  call void (i64, ptr, ...) @rb_raise(i64 noundef %i.fr, ptr noundef nonnull @.str.205) #30
  unreachable

bb.bg:                                            ; preds = %bb.bc
  %i.fs = and i32 %.254, 32512
  %.not19.i = icmp eq i32 %i.fs, 0                ; 2 uses
  %or.cond23.i = or i1 %.not19.i, %.not.i114
  br i1 %or.cond23.i, label %validate_enc_binmode.exit, label %bb.bh

bb.bh:                                            ; preds = %bb.bg
  %i.ft = load i64, ptr @rb_eArgError, align 8, !tbaa !13
  call void (i64, ptr, ...) @rb_raise(i64 noundef %i.ft, ptr noundef nonnull @.str.206) #30
  unreachable

validate_enc_binmode.exit:                        ; preds = %bb.bg, %.thread.i
  %.not1928.i = phi i1 [ %.not1926.i, %.thread.i ], [ %.not19.i, %bb.bg ]
  %i.fu = and i32 %i.ff, -4097
  %i.fv = or i32 %i.ff, 4096
  %spec.select = select i1 %.not.i114, i32 %i.fv, i32 %i.ff
  %i.fw = select i1 %.not1928.i, i32 %i.fu, i32 %spec.select
  %i.fx = load i64, ptr %i.a, align 8, !tbaa !13
  store i64 %i.fx, ptr %0, align 8, !tbaa !13
  store i32 %.3, ptr %3, align 4, !tbaa !7
  store i32 %i.fw, ptr %4, align 4, !tbaa !7
  store ptr %i.fh, ptr %5, align 8, !tbaa !133
  %i.fy = getelementptr i8, ptr %5, i64 8
  store ptr %i.fg, ptr %i.fy, align 8, !tbaa !134
  %i.fz = getelementptr i8, ptr %5, i64 16
  store i32 %.254, ptr %i.fz, align 8, !tbaa !135
  %i.ga = load i64, ptr %i.e, align 8, !tbaa !13
  %i.gb = getelementptr i8, ptr %5, i64 24
  store i64 %i.ga, ptr %i.gb, align 8, !tbaa !136
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #28
  ret void
}

declare i64 @rb_check_to_integer(i64 noundef, ptr noundef) local_unnamed_addr #1

declare nonnull ptr @rb_ascii8bit_encoding() local_unnamed_addr #1

declare i64 @rb_hash_aref(i64 noundef, i64 noundef) local_unnamed_addr #1

declare i64 @rb_to_int(i64 noundef) local_unnamed_addr #1

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc void @extract_binmode(i64 noundef %0, ptr nofree noundef nonnull captures(none) %1) unnamed_addr #0 {
bb.a:
  %i.a = icmp eq i64 %0, 4
  br i1 %i.a, label %bb.r, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = load i64, ptr @sym_textmode, align 8, !tbaa !13
  %i.c = tail call i64 @rb_hash_aref(i64 noundef %0, i64 noundef %i.b) #28 ; 2 uses
  %i.d = icmp eq i64 %i.c, 4
  br i1 %i.d, label %bb.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = load i32, ptr %1, align 4, !tbaa !7      ; 3 uses
  %i.f = and i32 %i.e, 4096
  %.not = icmp eq i32 %i.f, 0
  br i1 %.not, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.g = load i64, ptr @rb_eArgError, align 8, !tbaa !13
  tail call void (i64, ptr, ...) @rb_raise(i64 noundef %i.g, ptr noundef nonnull @.str.202) #30
  unreachable

bb.e:                                             ; preds = %bb.c
  %i.h = and i32 %i.e, 4
  %.not14 = icmp eq i32 %i.h, 0
  br i1 %.not14, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.i = load i64, ptr @rb_eArgError, align 8, !tbaa !13
  tail call void (i64, ptr, ...) @rb_raise(i64 noundef %i.i, ptr noundef nonnull @.str.203) #30
  unreachable

bb.g:                                             ; preds = %bb.e
  %i.j = and i64 %i.c, -5
  %.not19 = icmp eq i64 %i.j, 0
  br i1 %.not19, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.k = or disjoint i32 %i.e, 4096
  store i32 %i.k, ptr %1, align 4, !tbaa !7
end_hunk_2
begin_hunk_3_@extract_binmode:bb.a
  %i.o = and i32 %.pre, 4
  %.not15 = icmp eq i32 %i.o, 0
  br i1 %.not15, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.p = load i64, ptr @rb_eArgError, align 8, !tbaa !13
  tail call void (i64, ptr, ...) @rb_raise(i64 noundef %i.p, ptr noundef nonnull @.str.204) #30
  unreachable

bb.l:                                             ; preds = %bb.j
  %i.q = and i32 %.pre, 4096
  %.not16 = icmp eq i32 %i.q, 0
  br i1 %.not16, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.r = load i64, ptr @rb_eArgError, align 8, !tbaa !13
  tail call void (i64, ptr, ...) @rb_raise(i64 noundef %i.r, ptr noundef nonnull @.str.203) #30
  unreachable

bb.n:                                             ; preds = %bb.l
  %i.s = and i64 %i.m, -5
  %.not20 = icmp eq i64 %i.s, 0
  br i1 %.not20, label %bb.p, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.t = or disjoint i32 %.pre, 4                 ; 2 uses
  store i32 %i.t, ptr %1, align 4, !tbaa !7
  br label %bb.p

bb.p:                                             ; preds = %bb.n, %bb.o, %bb.i
  %i.u = phi i32 [ %.pre, %bb.n ], [ %i.t, %bb.o ], [ %.pre, %bb.i ]
  %i.v = and i32 %i.u, 4100
  %or.cond.not = icmp eq i32 %i.v, 4100
  br i1 %or.cond.not, label %bb.q, label %bb.r

bb.q:                                             ; preds = %bb.p
  %i.w = load i64, ptr @rb_eArgError, align 8, !tbaa !13
  tail call void (i64, ptr, ...) @rb_raise(i64 noundef %i.w, ptr noundef nonnull @.str.203) #30
  unreachable

bb.r:                                             ; preds = %bb.p, %bb.a
  ret void
}

declare i32 @rb_econv_prepare_options(i64 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind sspstrong uwtable
define dso_local noundef nonnull ptr @rb_fdopen(i32 noundef %0, ptr nofree noundef readonly captures(none) %1) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call noalias noundef ptr @fdopen(i32 noundef %0, ptr noundef readonly %1) #28 ; 2 uses
  %.not = icmp eq ptr %i.a, null
  br i1 %.not, label %bb.b, label %.critedge

bb.b:                                             ; preds = %bb.a
  %i.b = tail call ptr @rb_errno_ptr() #28
  %i.c = load i32, ptr %i.b, align 4, !tbaa !7    ; 2 uses
  switch i32 %i.c, label %rb_gc_for_fd.exit.thread [
    i32 24, label %bb.c
    i32 23, label %bb.c
    i32 12, label %bb.c
  ]

bb.c:                                             ; preds = %bb.b, %bb.b, %bb.b
  tail call void @rb_gc() #28
  %i.d = tail call noalias noundef ptr @fdopen(i32 noundef %0, ptr noundef readonly %1) #28 ; 2 uses
  %.not9 = icmp eq ptr %i.d, null
  br i1 %.not9, label %rb_gc_for_fd.exit.thread, label %.critedge

rb_gc_for_fd.exit.thread:                         ; preds = %bb.b, %bb.c
  %i.e = tail call ptr @rb_errno_ptr() #28        ; 0 uses
  tail call void @rb_syserr_fail(i32 noundef %i.c, ptr noundef null) #30
  unreachable

.critedge:                                        ; preds = %bb.a, %bb.c
  %.0 = phi ptr [ %i.d, %bb.c ], [ %i.a, %bb.a ]
  ret ptr %.0
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local noundef i64 @rb_file_open_str(i64 noundef %0, ptr noundef nonnull %1) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 3 uses
  %i.b = alloca ptr, align 8                      ; 5 uses
  store i64 %0, ptr %i.a, align 8, !tbaa !13
  %i.c = tail call i64 @rb_get_path(i64 noundef %0) #28
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #28
  store ptr %i.a, ptr %i.b, align 8, !tbaa !137
  call void asm sideeffect "", "*m,~{dirflag},~{fpsr},~{flags}"(ptr nonnull elementtype(ptr) %i.b) #28, !srcloc !138
  %i.d = load ptr, ptr %i.b, align 8, !tbaa !137
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #28
  store volatile i64 %i.c, ptr %i.d, align 8, !tbaa !13
  %i.e = load i64, ptr @rb_cFile, align 8, !tbaa !13
  %i.f = call i64 @rb_wb_unprotected_newobj_of(i64 noundef %i.e, i64 noundef 11, i32 noundef 0, i64 noundef 24) #28 ; 3 uses
  %i.g = inttoptr i64 %i.f to ptr
  %i.h = getelementptr i8, ptr %i.g, i64 16
  store ptr null, ptr %i.h, align 8, !tbaa !34
  %i.i = load i64, ptr %i.a, align 8, !tbaa !13
  %i.j = call fastcc i64 @rb_file_open_internal(i64 noundef %i.f, i64 noundef %i.i, ptr noundef %1) ; 0 uses
  ret i64 %i.f
}

declare i64 @rb_get_path(i64 noundef) local_unnamed_addr #1

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc noundef i64 @rb_file_open_internal(i64 noundef returned %0, i64 noundef %1, ptr noundef nonnull %2) unnamed_addr #0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 5 uses
  %3 = alloca %struct.rb_io_encoding, align 8     ; 10 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #28
  %i.b = tail call i32 @rb_io_modestr_fmode(ptr noundef nonnull %2) ; 4 uses
  store i32 %i.b, ptr %i.a, align 4, !tbaa !7
  %i.c = tail call ptr @strchr(ptr noundef nonnull dereferenceable(1) %2, i32 noundef 58) #33 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #28
  %.not = icmp eq ptr %i.c, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr i8, ptr %i.c, i64 1
  %i.e = tail call nonnull ptr @rb_usascii_encoding() #28
  %i.f = getelementptr inbounds nuw i8, ptr %3, i64 8
  call fastcc void @parse_mode_enc(ptr noundef %i.d, ptr noundef nonnull %i.e, ptr noundef nonnull %3, ptr noundef nonnull %i.f, ptr noundef nonnull %i.a)
  %.pre = load i32, ptr %i.a, align 4, !tbaa !7
  br label %bb.j

bb.c:                                             ; preds = %bb.a
  %i.g = and i32 %i.b, 4
  %.not6 = icmp ne i32 %i.g, 0                    ; 2 uses
  br i1 %.not6, label %.thread, label %bb.d

.thread:                                          ; preds = %bb.c
  %i.h = tail call nonnull ptr @rb_ascii8bit_encoding() #28
  %i.i = getelementptr inbounds nuw i8, ptr %3, i64 8
  br label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.j = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.k = tail call ptr @rb_default_external_encoding() #28
  br label %bb.e

bb.e:                                             ; preds = %.thread, %bb.d
  %i.l = phi ptr [ %i.j, %bb.d ], [ %i.i, %.thread ]
  %.018.i = phi ptr [ %i.k, %bb.d ], [ %i.h, %.thread ] ; 5 uses
  %i.m = tail call nonnull ptr @rb_ascii8bit_encoding() #28
  %i.n = icmp eq ptr %.018.i, %i.m
  br i1 %i.n, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.o = tail call ptr @rb_default_internal_encoding() #28
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %.019.i = phi ptr [ null, %bb.e ], [ %i.o, %bb.f ] ; 4 uses
  %magicptr.i = ptrtoint ptr %.019.i to i64
  switch i64 %magicptr.i, label %bb.h [
    i64 4, label %bb.i
    i64 0, label %bb.i
  ]

bb.h:                                             ; preds = %bb.g
  %i.p = and i32 %i.b, 1048576
  %.not.i = icmp eq i32 %i.p, 0
  %i.q = icmp eq ptr %.019.i, %.018.i
  %or.cond.i = select i1 %.not.i, i1 %i.q, i1 false
  br i1 %or.cond.i, label %bb.i, label %rb_io_ext_int_to_encs.exit

bb.i:                                             ; preds = %bb.h, %bb.g, %bb.g
  %.not25.i = icmp eq ptr %.019.i, %.018.i
  %or.cond26.i = select i1 %.not6, i1 true, i1 %.not25.i
  %i.r = select i1 %or.cond26.i, ptr %.018.i, ptr null
  br label %rb_io_ext_int_to_encs.exit

rb_io_ext_int_to_encs.exit:                       ; preds = %bb.h, %bb.i
  %storemerge22.i = phi ptr [ %i.r, %bb.i ], [ %.019.i, %bb.h ]
  %storemerge.i = phi ptr [ null, %bb.i ], [ %.018.i, %bb.h ]
  store ptr %storemerge22.i, ptr %3, align 8, !tbaa !128
  store ptr %storemerge.i, ptr %i.l, align 8, !tbaa !128
  br label %bb.j

bb.j:                                             ; preds = %rb_io_ext_int_to_encs.exit, %bb.b
  %i.s = phi i32 [ %i.b, %rb_io_ext_int_to_encs.exit ], [ %.pre, %bb.b ] ; 9 uses
  %i.t = and i32 %i.s, 1
  %.not7 = icmp eq i32 %i.t, 0
  br i1 %.not7, label %switch.lookup, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.u = and i32 %i.s, 4
  %.not8 = icmp eq i32 %i.u, 0
  %i.v = lshr i32 %i.s, 4
  %i.w = and i32 %i.v, 256
  %i.x = select i1 %.not8, i32 %i.w, i32 0
  br label %switch.lookup

switch.lookup:                                    ; preds = %bb.j, %bb.k
  %i.y = phi i32 [ %i.x, %bb.k ], [ 0, %bb.j ]
  %i.z = getelementptr inbounds nuw i8, ptr %3, i64 16
  store i32 %i.y, ptr %i.z, align 8, !tbaa !135
  %i.aa = getelementptr inbounds nuw i8, ptr %3, i64 24
  store i64 4, ptr %i.aa, align 8, !tbaa !136
  %i.ab = and i32 %i.s, 3
  %i.ac = zext nneg i32 %i.ab to i64
  %switch.gep = getelementptr inbounds nuw [4 x i8], ptr @switch.table.rb_io_reopen, i64 %i.ac
  %switch.load = load i32, ptr %switch.gep, align 4
  %i.ad = shl i32 %i.s, 4
  %i.ae = and i32 %i.ad, 1024
  %i.af = lshr i32 %i.s, 2
  %i.ag = and i32 %i.af, 512
  %i.ah = lshr i32 %i.s, 1
  %i.ai = and i32 %i.ah, 64
  %i.aj = lshr i32 %i.s, 3
  %i.ak = and i32 %i.aj, 128
  %spec.select.i = or disjoint i32 %i.ag, %i.ae
  %.2.i = or disjoint i32 %spec.select.i, %i.ai
  %.3.i = or disjoint i32 %.2.i, %i.ak
  %.4.i = or disjoint i32 %.3.i, %switch.load
  %i.al = call fastcc i64 @rb_file_open_generic(i64 noundef %0, i64 noundef %1, i32 noundef %.4.i, i32 noundef %i.s, ptr noundef %3, i32 noundef 438) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #28
  ret i64 %0
}

; Function Attrs: nounwind sspstrong uwtable
define internal i64 @io_alloc(i64 noundef %0) #0 {
bb.a:
  %i.a = tail call i64 @rb_wb_unprotected_newobj_of(i64 noundef %0, i64 noundef 11, i32 noundef 0, i64 noundef 24) #28 ; 2 uses
  %i.b = inttoptr i64 %i.a to ptr
  %i.c = getelementptr i8, ptr %i.b, i64 16
  store ptr null, ptr %i.c, align 8, !tbaa !34
  ret i64 %i.a
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i64 @rb_file_open(ptr noundef nonnull %0, ptr noundef nonnull %1) local_unnamed_addr #0 {
bb.a:
  %i.a = load i64, ptr @rb_cFile, align 8, !tbaa !13
  %i.b = tail call i64 @rb_wb_unprotected_newobj_of(i64 noundef %i.a, i64 noundef 11, i32 noundef 0, i64 noundef 24) #28 ; 3 uses
  %i.c = inttoptr i64 %i.b to ptr
  %i.d = getelementptr i8, ptr %i.c, i64 16
  store ptr null, ptr %i.d, align 8, !tbaa !34
  %i.e = tail call i64 @rb_str_new_cstr(ptr noundef nonnull %0) #28
  %i.f = tail call fastcc i64 @rb_file_open_internal(i64 noundef %i.b, i64 noundef %i.e, ptr noundef %1) ; 0 uses
  ret i64 %i.b
}

declare i64 @rb_str_new_cstr(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @rb_io_synchronized(ptr nofree noundef captures(address_is_null) %0) local_unnamed_addr #0 {
bb.a:
  %.not.i = icmp eq ptr %0, null
  br i1 %.not.i, label %bb.b, label %rb_io_check_initialized.exit

bb.b:                                             ; preds = %bb.a
  %i.a = load i64, ptr @rb_eIOError, align 8, !tbaa !13
  tail call void (i64, ptr, ...) @rb_raise(i64 noundef %i.a, ptr noundef nonnull @.str.4) #30
  unreachable

rb_io_check_initialized.exit:                     ; preds = %bb.a
  %i.b = getelementptr i8, ptr %0, i64 20         ; 2 uses
  %i.c = load i32, ptr %i.b, align 4, !tbaa !39
  %i.d = or i32 %i.c, 8
  store i32 %i.d, ptr %i.b, align 4, !tbaa !39
  ret void
}

; Function Attrs: nounwind sspstrong uwtable
define hidden void @rb_io_unbuffered(ptr nofree noundef captures(address_is_null) %0) local_unnamed_addr #0 {
bb.a:
  %.not.i.i = icmp eq ptr %0, null
  br i1 %.not.i.i, label %bb.b, label %rb_io_synchronized.exit

bb.b:                                             ; preds = %bb.a
  %i.a = load i64, ptr @rb_eIOError, align 8, !tbaa !13
  tail call void (i64, ptr, ...) @rb_raise(i64 noundef %i.a, ptr noundef nonnull @.str.4) #30
  unreachable

rb_io_synchronized.exit:                          ; preds = %bb.a
  %i.b = getelementptr i8, ptr %0, i64 20         ; 2 uses
  %i.c = load i32, ptr %i.b, align 4, !tbaa !39
  %i.d = or i32 %i.c, 8
  store i32 %i.d, ptr %i.b, align 4, !tbaa !39
  ret void
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i32 @rb_pipe(ptr noundef nonnull %0) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call i32 @pipe2(ptr noundef nonnull %0, i32 noundef 526336) #28 ; 3 uses
  %i.b = icmp sgt i32 %i.a, -1
  br i1 %i.b, label %.critedge, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = tail call ptr @rb_errno_ptr() #28
  %i.d = load i32, ptr %i.c, align 4, !tbaa !7
  switch i32 %i.d, label %rb_gc_for_fd.exit.thread [
    i32 24, label %bb.c
    i32 23, label %bb.c
    i32 12, label %bb.c
  ]

bb.c:                                             ; preds = %bb.b, %bb.b, %bb.b
  tail call void @rb_gc() #28
  %i.e = tail call i32 @pipe2(ptr noundef nonnull %0, i32 noundef 526336) #28 ; 3 uses
  %i.f = icmp sgt i32 %i.e, -1
  br i1 %i.f, label %.critedge, label %rb_gc_for_fd.exit.thread

rb_gc_for_fd.exit.thread:                         ; preds = %bb.b, %bb.c
  %.1 = phi i32 [ %i.e, %bb.c ], [ %i.a, %bb.b ]
  %i.g = tail call ptr @rb_errno_ptr() #28        ; 0 uses
  br label %rb_update_max_fd.exit17

.critedge:                                        ; preds = %bb.a, %bb.c
  %.2 = phi i32 [ %i.e, %bb.c ], [ %i.a, %bb.a ]  ; 2 uses
  %i.h = icmp eq i32 %.2, 0
  br i1 %i.h, label %bb.d, label %rb_update_max_fd.exit17

bb.d:                                             ; preds = %.critedge
  %i.i = load i32, ptr %0, align 4, !tbaa !7      ; 6 uses
  %i.j = load i32, ptr @max_file_descriptor, align 4, !tbaa !7 ; 3 uses
  %i.k = icmp sgt i32 %i.i, -1
  %.not.i = icmp ugt i32 %i.i, %i.j
  %or.cond.i = select i1 %i.k, i1 %.not.i, i1 false
  br i1 %or.cond.i, label %bb.e, label %rb_update_max_fd.exit

bb.e:                                             ; preds = %bb.d
  %i.l = tail call i32 (i32, i32, ...) @fcntl(i32 noundef %i.i, i32 noundef 3) #28
  %i.m = icmp eq i32 %i.l, -1
  br i1 %i.m, label %bb.f, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %bb.f, %bb.e
  br label %.lr.ph.i

bb.f:                                             ; preds = %bb.e
  %i.n = tail call ptr @rb_errno_ptr() #28
  %i.o = load i32, ptr %i.n, align 4, !tbaa !7
  %i.p = icmp eq i32 %i.o, 9
  br i1 %i.p, label %bb.g, label %.lr.ph.i.preheader

bb.g:                                             ; preds = %bb.f
  tail call void (ptr, ...) @rb_bug(ptr noundef nonnull @.str, i32 noundef %i.i) #29
  unreachable

.lr.ph.i:                                         ; preds = %.lr.ph.i.preheader, %.lr.ph.i
  %.013.i = phi i32 [ %i.r, %.lr.ph.i ], [ %i.j, %.lr.ph.i.preheader ]
  %i.q = cmpxchg volatile ptr @max_file_descriptor, i32 %.013.i, i32 %i.i seq_cst seq_cst, align 4
  %i.r = extractvalue { i32, i1 } %i.q, 0         ; 2 uses
  %i.s = icmp ult i32 %i.r, %i.i
  br i1 %i.s, label %.lr.ph.i, label %rb_update_max_fd.exit.loopexit, !llvm.loop !11

rb_update_max_fd.exit.loopexit:                   ; preds = %.lr.ph.i
  %.pre = load i32, ptr @max_file_descriptor, align 4, !tbaa !7
  br label %rb_update_max_fd.exit

rb_update_max_fd.exit:                            ; preds = %rb_update_max_fd.exit.loopexit, %bb.d
  %i.t = phi i32 [ %.pre, %rb_update_max_fd.exit.loopexit ], [ %i.j, %bb.d ] ; 2 uses
  %i.u = getelementptr i8, ptr %0, i64 4
  %i.v = load i32, ptr %i.u, align 4, !tbaa !7    ; 6 uses
  %i.w = icmp sgt i32 %i.v, -1
  %.not.i12 = icmp ugt i32 %i.v, %i.t
  %or.cond.i13 = select i1 %i.w, i1 %.not.i12, i1 false
  br i1 %or.cond.i13, label %bb.h, label %rb_update_max_fd.exit17

bb.h:                                             ; preds = %rb_update_max_fd.exit
  %i.x = tail call i32 (i32, i32, ...) @fcntl(i32 noundef %i.v, i32 noundef 3) #28
  %i.y = icmp eq i32 %i.x, -1
  br i1 %i.y, label %bb.i, label %.lr.ph.i15.preheader

.lr.ph.i15.preheader:                             ; preds = %bb.i, %bb.h
  br label %.lr.ph.i15

bb.i:                                             ; preds = %bb.h
  %i.z = tail call ptr @rb_errno_ptr() #28
  %i.aa = load i32, ptr %i.z, align 4, !tbaa !7
  %i.ab = icmp eq i32 %i.aa, 9
  br i1 %i.ab, label %bb.j, label %.lr.ph.i15.preheader

bb.j:                                             ; preds = %bb.i
  tail call void (ptr, ...) @rb_bug(ptr noundef nonnull @.str, i32 noundef %i.v) #29
  unreachable

.lr.ph.i15:                                       ; preds = %.lr.ph.i15.preheader, %.lr.ph.i15
  %.013.i16 = phi i32 [ %i.ad, %.lr.ph.i15 ], [ %i.t, %.lr.ph.i15.preheader ]
  %i.ac = cmpxchg volatile ptr @max_file_descriptor, i32 %.013.i16, i32 %i.v seq_cst seq_cst, align 4
  %i.ad = extractvalue { i32, i1 } %i.ac, 0       ; 2 uses
  %i.ae = icmp ult i32 %i.ad, %i.v
  br i1 %i.ae, label %.lr.ph.i15, label %rb_update_max_fd.exit17, !llvm.loop !11

rb_update_max_fd.exit17:                          ; preds = %.lr.ph.i15, %rb_gc_for_fd.exit.thread, %rb_update_max_fd.exit, %.critedge
  %.221 = phi i32 [ %.1, %rb_gc_for_fd.exit.thread ], [ %.2, %.critedge ], [ 0, %rb_update_max_fd.exit ], [ 0, %.lr.ph.i15 ]
  ret i32 %.221
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @rb_close_before_exec(i32 noundef %0, i32 noundef %1, i64 noundef %2) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca [4096 x i8], align 16             ; 5 uses
  %i.b = load i32, ptr @max_file_descriptor, align 4, !tbaa !7
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #28
  %i.c = tail call i32 @rb_cloexec_open(ptr noundef nonnull @.str.208, i32 noundef 256, i32 noundef 0) ; 5 uses
  %i.d = icmp slt i32 %i.c, 0
  br i1 %i.d, label %linux_get_maxfd.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = call i64 @read(i32 noundef %i.c, ptr noundef nonnull %i.a, i64 noundef 4096) #28 ; 5 uses
  %i.f = icmp slt i64 %i.e, 0
  br i1 %i.f, label %.critedge.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.g = getelementptr i8, ptr %i.a, i64 %i.e
  %i.h = ptrtoint ptr %i.g to i64
  %i.i = icmp samesign ugt i64 %i.e, 9
  br i1 %i.i, label %.lr.ph.i, label %.critedge.i

.lr.ph.i:                                         ; preds = %bb.c, %bb.f
  %i.j = phi i64 [ %i.aa, %bb.f ], [ %i.e, %bb.c ]
end_hunk_3
begin_hunk_4_@rb_write_error_str:bb.a
  br label %.critedge

.critedge:                                        ; preds = %bb.c, %bb.d, %RSTRING_PTR.exit
  ret void
}

; Function Attrs: nounwind sspstrong uwtable
define hidden i32 @rb_stderr_tty_p() local_unnamed_addr #0 {
bb.a:
  %i.a = tail call i64 @rb_ractor_stderr() #28
  %i.b = load i64, ptr @orig_stderr, align 8, !tbaa !13 ; 2 uses
  %i.c = icmp eq i64 %i.a, %i.b
  br i1 %i.c, label %rb_stderr_to_original_p.exit.thread, label %rb_stderr_to_original_p.exit

rb_stderr_to_original_p.exit:                     ; preds = %bb.a
  %i.d = inttoptr i64 %i.b to ptr
  %i.e = getelementptr i8, ptr %i.d, i64 16
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !34
  %i.g = getelementptr i8, ptr %i.f, i64 16
  %i.h = load i32, ptr %i.g, align 8, !tbaa !20
  %.not = icmp sgt i32 %i.h, -1
  br i1 %.not, label %bb.b, label %rb_stderr_to_original_p.exit.thread

rb_stderr_to_original_p.exit.thread:              ; preds = %bb.a, %rb_stderr_to_original_p.exit
  %i.i = load ptr, ptr @stderr, align 8, !tbaa !158
  %i.j = tail call i32 @fileno(ptr noundef %i.i) #28
  %i.k = tail call i32 @isatty(i32 noundef %i.j) #28
  br label %bb.b

bb.b:                                             ; preds = %rb_stderr_to_original_p.exit, %rb_stderr_to_original_p.exit.thread
  %.0 = phi i32 [ %i.k, %rb_stderr_to_original_p.exit.thread ], [ 0, %rb_stderr_to_original_p.exit ]
  ret i32 %.0
}

; Function Attrs: nounwind
declare i32 @isatty(i32 noundef) local_unnamed_addr #4

; Function Attrs: nofree nounwind
declare noundef i32 @fileno(ptr noundef captures(none)) local_unnamed_addr #14

; Function Attrs: nounwind sspstrong uwtable
define dso_local i64 @rb_io_open_descriptor(i64 noundef %0, i32 noundef %1, i32 noundef %2, i64 noundef %3, i64 noundef %4, ptr nofree noundef readonly captures(address_is_null) %5) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 4 uses
  %i.b = alloca i64, align 8                      ; 3 uses
  %i.c = alloca i32, align 4                      ; 5 uses
  store i64 %3, ptr %i.b, align 8, !tbaa !13
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #28
  %i.d = call i64 @rb_protect(ptr noundef nonnull @allocate_and_open_new_file, i64 noundef %0, ptr noundef nonnull %i.c) #28 ; 3 uses
  %i.e = load i32, ptr %i.c, align 4, !tbaa !7    ; 2 uses
  %.not = icmp eq i32 %i.e, 0
  br i1 %.not, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = and i32 %2, 65536
  %.not23 = icmp eq i32 %i.f, 0
  br i1 %.not23, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i32 %1, ptr %i.a, align 4, !tbaa !7
  %i.g = call ptr @rb_nogvl(ptr noundef nonnull @nogvl_close, ptr noundef nonnull %i.a, ptr noundef nonnull inttoptr (i64 -1 to ptr), ptr noundef null, i32 noundef 4) #28 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %.pre = load i32, ptr %i.c, align 4, !tbaa !7
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.h = phi i32 [ %.pre, %bb.c ], [ %i.e, %bb.b ]
  call void @rb_jump_tag(i32 noundef %i.h) #30
  unreachable

bb.e:                                             ; preds = %bb.a
  %i.i = inttoptr i64 %i.d to ptr
  %i.j = getelementptr i8, ptr %i.i, i64 16
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !34   ; 11 uses
  store i64 %i.d, ptr %i.k, align 8, !tbaa !42
  %i.l = getelementptr i8, ptr %i.k, i64 16
  store i32 %1, ptr %i.l, align 8, !tbaa !20
  %i.m = getelementptr i8, ptr %i.k, i64 20
  store i32 %2, ptr %i.m, align 4, !tbaa !39
  %i.n = icmp eq i64 %3, 4
  br i1 %i.n, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.o = call i64 @rb_string_value(ptr noundef nonnull %i.b) #28 ; 0 uses
  %i.p = load i64, ptr %i.b, align 8, !tbaa !13
  %i.q = call i64 @rb_str_new_frozen(i64 noundef %i.p) #28
  br label %bb.g

bb.g:                                             ; preds = %bb.e, %bb.f
  %.sink = phi i64 [ %i.q, %bb.f ], [ 4, %bb.e ]
  %i.r = getelementptr i8, ptr %i.k, i64 32
  store i64 %.sink, ptr %i.r, align 8, !tbaa !44
  %i.s = getelementptr i8, ptr %i.k, i64 200
  store i64 %4, ptr %i.s, align 8, !tbaa !38
  %i.t = getelementptr i8, ptr %i.k, i64 208      ; 3 uses
  %i.u = getelementptr i8, ptr %i.k, i64 216
  store ptr %i.t, ptr %i.u, align 8, !tbaa !167
  store ptr %i.t, ptr %i.t, align 8, !tbaa !168
  %i.v = getelementptr i8, ptr %i.k, i64 224
  store ptr null, ptr %i.v, align 8, !tbaa !169
  %i.w = getelementptr i8, ptr %i.k, i64 232
  store i64 4, ptr %i.w, align 8, !tbaa !170
  %i.x = load ptr, ptr @ruby_current_vm_ptr, align 8, !tbaa !99
  %i.y = getelementptr i8, ptr %i.x, i64 496
  %i.z = load i64, ptr %i.y, align 8, !tbaa !101
  %i.aa = getelementptr i8, ptr %i.k, i64 240
  store i64 %i.z, ptr %i.aa, align 8, !tbaa !122
  %.not22 = icmp eq ptr %5, null
  br i1 %.not22, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ab = getelementptr i8, ptr %i.k, i64 96
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.ab, ptr noundef nonnull align 8 dereferenceable(32) %5, i64 32, i1 false), !tbaa.struct !152
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %i.ac = load i32, ptr @max_file_descriptor, align 4, !tbaa !7 ; 2 uses
  %i.ad = icmp sgt i32 %1, -1
  %.not.i = icmp ugt i32 %1, %i.ac
  %or.cond.i = select i1 %i.ad, i1 %.not.i, i1 false
  br i1 %or.cond.i, label %bb.j, label %rb_update_max_fd.exit

bb.j:                                             ; preds = %bb.i
  %i.ae = call i32 (i32, i32, ...) @fcntl(i32 noundef %1, i32 noundef 3) #28
  %i.af = icmp eq i32 %i.ae, -1
  br i1 %i.af, label %bb.k, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %bb.k, %bb.j
  br label %.lr.ph.i

bb.k:                                             ; preds = %bb.j
  %i.ag = call ptr @rb_errno_ptr() #28
  %i.ah = load i32, ptr %i.ag, align 4, !tbaa !7
  %i.ai = icmp eq i32 %i.ah, 9
  br i1 %i.ai, label %bb.l, label %.lr.ph.i.preheader

bb.l:                                             ; preds = %bb.k
  call void (ptr, ...) @rb_bug(ptr noundef nonnull @.str, i32 noundef %1) #29
  unreachable

.lr.ph.i:                                         ; preds = %.lr.ph.i.preheader, %.lr.ph.i
  %.013.i = phi i32 [ %i.ak, %.lr.ph.i ], [ %i.ac, %.lr.ph.i.preheader ]
  %i.aj = cmpxchg volatile ptr @max_file_descriptor, i32 %.013.i, i32 %1 seq_cst seq_cst, align 4
  %i.ak = extractvalue { i32, i1 } %i.aj, 0       ; 2 uses
  %i.al = icmp ult i32 %i.ak, %1
  br i1 %i.al, label %.lr.ph.i, label %rb_update_max_fd.exit, !llvm.loop !11

rb_update_max_fd.exit:                            ; preds = %.lr.ph.i, %bb.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #28
  ret i64 %i.d
}

declare i64 @rb_protect(ptr noundef, i64 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind sspstrong uwtable
define internal noundef i64 @allocate_and_open_new_file(i64 noundef %0) #0 {
bb.a:
  %i.a = tail call i64 @rb_wb_unprotected_newobj_of(i64 noundef %0, i64 noundef 11, i32 noundef 0, i64 noundef 24) #28 ; 3 uses
  %i.b = inttoptr i64 %i.a to ptr
  %i.c = getelementptr i8, ptr %i.b, i64 16
  store ptr null, ptr %i.c, align 8, !tbaa !34
  %i.d = tail call ptr @rb_io_make_open_file(i64 noundef %i.a) ; 0 uses
  ret i64 %i.a
}

; Function Attrs: noreturn
declare void @rb_jump_tag(i32 noundef) local_unnamed_addr #7

declare i64 @rb_str_new_frozen(i64 noundef) local_unnamed_addr #1

; Function Attrs: nounwind sspstrong uwtable
define dso_local i64 @rb_io_fdopen(i32 noundef %0, i32 noundef %1, ptr noundef %2) local_unnamed_addr #0 {
bb.a:
  %i.a = load i64, ptr @rb_cIO, align 8, !tbaa !13 ; 2 uses
  %.not = icmp eq ptr %2, null
  br i1 %.not, label %switch.lookup, label %sub_0

sub_0:                                            ; preds = %bb.a
  %i.b = load i8, ptr %2, align 1
  %.not7 = icmp eq i8 %i.b, 45
  br i1 %.not7, label %.tail, label %.tail.thread

.tail.thread:                                     ; preds = %sub_0
  %i.c = load i64, ptr @rb_cFile, align 8
  br label %switch.lookup

.tail:                                            ; preds = %sub_0
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 1
  %i.e = load i8, ptr %i.d, align 1
  %.fr = freeze i8 %i.e
  %i.f = icmp eq i8 %.fr, 0
  %i.g = load i64, ptr @rb_cFile, align 8
  %spec.select = select i1 %i.f, i64 %i.a, i64 %i.g
  br label %switch.lookup

switch.lookup:                                    ; preds = %.tail, %.tail.thread, %bb.a
  %.0 = phi i64 [ %i.a, %bb.a ], [ %i.c, %.tail.thread ], [ %spec.select, %.tail ]
  %i.h = and i32 %1, 3
  %i.i = zext nneg i32 %i.h to i64
  %switch.gep = getelementptr inbounds nuw [4 x i8], ptr @switch.table.io_initialize, i64 %i.i
  %switch.load = load i32, ptr %switch.gep, align 4
  %i.j = lshr i32 %1, 4
  %i.k = and i32 %i.j, 64
  %i.l = shl i32 %1, 2
  %i.m = and i32 %i.l, 2048
  %i.n = shl i32 %1, 1
  %i.o = and i32 %i.n, 128
  %i.p = shl i32 %1, 3
  %i.q = and i32 %i.p, 1024
  %spec.select.i = or disjoint i32 %i.m, %i.k
  %.2.i = or disjoint i32 %spec.select.i, %i.o
  %.3.i = or disjoint i32 %.2.i, %i.q
  %.4.i = or disjoint i32 %.3.i, %switch.load
  %i.r = tail call fastcc i64 @prep_io(i32 noundef %0, i32 noundef %.4.i, i64 noundef %.0, ptr noundef %2)
  ret i64 %i.r
}

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc i64 @prep_io(i32 noundef %0, i32 noundef range(i32 0, 262144) %1, i64 noundef %2, ptr noundef %3) unnamed_addr #0 {
bb.a:
  %4 = alloca %struct.rb_io_encoding, align 8     ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #28
  %.not = icmp eq ptr %3, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = tail call i64 @rb_str_new_cstr(ptr noundef nonnull %3) #28
  %i.b = tail call i64 @rb_obj_freeze(i64 noundef %i.a) #28
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %.0 = phi i64 [ %i.b, %bb.b ], [ 4, %bb.a ]
  %i.c = and i32 %1, 4
  %.not15 = icmp ne i32 %i.c, 0                   ; 2 uses
  br i1 %.not15, label %.thread, label %bb.d

.thread:                                          ; preds = %bb.c
  %i.d = tail call nonnull ptr @rb_ascii8bit_encoding() #28
  %i.e = getelementptr inbounds nuw i8, ptr %4, i64 8
  br label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.f = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.g = tail call ptr @rb_default_external_encoding() #28
  br label %bb.e

bb.e:                                             ; preds = %.thread, %bb.d
  %i.h = phi ptr [ %i.f, %bb.d ], [ %i.e, %.thread ]
  %.018.i = phi ptr [ %i.g, %bb.d ], [ %i.d, %.thread ] ; 5 uses
  %i.i = tail call nonnull ptr @rb_ascii8bit_encoding() #28
  %i.j = icmp eq ptr %.018.i, %i.i
  br i1 %i.j, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.k = tail call ptr @rb_default_internal_encoding() #28
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %.019.i = phi ptr [ null, %bb.e ], [ %i.k, %bb.f ] ; 4 uses
  %magicptr.i = ptrtoint ptr %.019.i to i64
  switch i64 %magicptr.i, label %bb.h [
    i64 4, label %bb.i
    i64 0, label %bb.i
  ]

bb.h:                                             ; preds = %bb.g
  %i.l = icmp eq ptr %.019.i, %.018.i
  br i1 %i.l, label %bb.i, label %rb_io_ext_int_to_encs.exit

bb.i:                                             ; preds = %bb.h, %bb.g, %bb.g
  %.not25.i = icmp eq ptr %.019.i, %.018.i
  %or.cond26.i = select i1 %.not15, i1 true, i1 %.not25.i
  %i.m = select i1 %or.cond26.i, ptr %.018.i, ptr null
  br label %rb_io_ext_int_to_encs.exit

rb_io_ext_int_to_encs.exit:                       ; preds = %bb.h, %bb.i
  %storemerge22.i = phi ptr [ %i.m, %bb.i ], [ %.019.i, %bb.h ]
  %storemerge.i = phi ptr [ null, %bb.i ], [ %.018.i, %bb.h ]
  store ptr %storemerge22.i, ptr %4, align 8, !tbaa !128
  store ptr %storemerge.i, ptr %i.h, align 8, !tbaa !128
  %i.n = lshr i32 %1, 4
  %i.o = and i32 %i.n, 256
  %i.p = and i32 %1, 5
  %.not21 = icmp eq i32 %i.p, 1
  %i.q = select i1 %.not21, i32 %i.o, i32 0
  %i.r = getelementptr inbounds nuw i8, ptr %4, i64 16
  store i32 %i.q, ptr %i.r, align 8, !tbaa !135
  %i.s = getelementptr inbounds nuw i8, ptr %4, i64 24
  store i64 4, ptr %i.s, align 8, !tbaa !136
  %i.t = call i64 @rb_io_open_descriptor(i64 noundef %2, i32 noundef %0, i32 noundef %1, i64 noundef %.0, i64 noundef 4, ptr noundef nonnull %4) ; 2 uses
  %i.u = inttoptr i64 %i.t to ptr
  %i.v = getelementptr i8, ptr %i.u, i64 16
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !34   ; 2 uses
  %i.x = getelementptr i8, ptr %i.w, i64 16
  %i.y = load i32, ptr %i.x, align 8, !tbaa !20
  %i.z = call i32 @isatty(i32 noundef %i.y) #28
  %.not.i18 = icmp eq i32 %i.z, 0
  br i1 %.not.i18, label %io_check_tty.exit, label %bb.j

bb.j:                                             ; preds = %rb_io_ext_int_to_encs.exit
  %i.aa = getelementptr i8, ptr %i.w, i64 20      ; 2 uses
  %i.ab = load i32, ptr %i.aa, align 4, !tbaa !39
  %i.ac = or i32 %i.ab, 48
  store i32 %i.ac, ptr %i.aa, align 4, !tbaa !39
  br label %io_check_tty.exit

io_check_tty.exit:                                ; preds = %rb_io_ext_int_to_encs.exit, %bb.j
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #28
  ret i64 %i.t
}

; Function Attrs: nounwind sspstrong uwtable
define hidden range(i64 1, -7) i64 @rb_io_prep_stdin() local_unnamed_addr #0 {
bb.a:
  %i.a = load ptr, ptr @stdin, align 8, !tbaa !158
  %i.b = load i64, ptr @rb_cIO, align 8, !tbaa !13
  %i.c = tail call fastcc i64 @prep_stdio(ptr noundef %i.a, i32 noundef 1, i64 noundef %i.b, ptr noundef nonnull @.str.27)
  ret i64 %i.c
}

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc range(i64 1, -7) i64 @prep_stdio(ptr noundef %0, i32 noundef range(i32 1, 131075) %1, i64 noundef %2, ptr noundef %3) unnamed_addr #0 {
bb.a:
  %i.a = tail call i32 @fileno(ptr noundef %0) #28
  %i.b = or i32 %1, 65536
  %i.c = tail call fastcc i64 @prep_io(i32 noundef %i.a, i32 noundef %i.b, i64 noundef %2, ptr noundef %3) ; 6 uses
  %i.d = icmp ne i64 %i.c, 0
  %i.e = and i64 %i.c, 7
  %i.f = icmp eq i64 %i.e, 0
  %.not3.i.i.i = and i1 %i.d, %i.f
  br i1 %.not3.i.i.i, label %RB_OBJ_FROZEN.exit.i.i, label %RB_OBJ_FROZEN.exit.thread.i.i, !prof !15

RB_OBJ_FROZEN.exit.i.i:                           ; preds = %bb.a
  %i.g = inttoptr i64 %i.c to ptr                 ; 2 uses
  %i.h = load i64, ptr %i.g, align 8, !tbaa !16   ; 3 uses
  %i.i = and i64 %i.h, 2048
  %.not.i.i = icmp eq i64 %i.i, 0
  br i1 %.not.i.i, label %rbimpl_RB_TYPE_P_fastpath.exit.i.i, label %RB_OBJ_FROZEN.exit.thread.i.i, !prof !18

RB_OBJ_FROZEN.exit.thread.i.i:                    ; preds = %RB_OBJ_FROZEN.exit.i.i, %bb.a
  tail call void @rb_error_frozen_object(i64 noundef %i.c) #30
  unreachable

rbimpl_RB_TYPE_P_fastpath.exit.i.i:               ; preds = %RB_OBJ_FROZEN.exit.i.i
  %i.j = and i64 %i.h, 31
  %i.k = icmp ne i64 %i.j, 5
  %i.l = and i64 %i.h, 49152
  %.not8.i.i = icmp eq i64 %i.l, 0
  %or.cond.i.i = or i1 %i.k, %.not8.i.i
  br i1 %or.cond.i.i, label %rb_io_taint_check.exit, label %bb.b, !prof !19

bb.b:                                             ; preds = %rbimpl_RB_TYPE_P_fastpath.exit.i.i
  tail call void @rb_str_modify(i64 noundef %i.c) #28
  br label %rb_io_taint_check.exit

rb_io_taint_check.exit:                           ; preds = %rbimpl_RB_TYPE_P_fastpath.exit.i.i, %bb.b
  %i.m = getelementptr i8, ptr %i.g, i64 16
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !34   ; 3 uses
  %.not.i.i8 = icmp eq ptr %i.n, null
  br i1 %.not.i.i8, label %bb.c, label %rb_io_check_initialized.exit.i

bb.c:                                             ; preds = %rb_io_taint_check.exit
  %i.o = load i64, ptr @rb_eIOError, align 8, !tbaa !13
  tail call void (i64, ptr, ...) @rb_raise(i64 noundef %i.o, ptr noundef nonnull @.str.4) #30
  unreachable

rb_io_check_initialized.exit.i:                   ; preds = %rb_io_taint_check.exit
  %i.p = getelementptr i8, ptr %i.n, i64 16
  %i.q = load i32, ptr %i.p, align 8, !tbaa !20
  %i.r = icmp slt i32 %i.q, 0
  br i1 %i.r, label %bb.d, label %rb_io_check_closed.exit

bb.d:                                             ; preds = %rb_io_check_initialized.exit.i
  tail call void @rb_thread_check_ints() #28
  %i.s = load i64, ptr @rb_eIOError, align 8, !tbaa !13
  tail call void (i64, ptr, ...) @rb_raise(i64 noundef %i.s, ptr noundef nonnull @closed_stream) #30
  unreachable

rb_io_check_closed.exit:                          ; preds = %rb_io_check_initialized.exit.i
  %i.t = getelementptr i8, ptr %i.n, i64 8
  store ptr %0, ptr %i.t, align 8, !tbaa !151
  ret i64 %i.c
}

; Function Attrs: nounwind sspstrong uwtable
define hidden range(i64 1, -7) i64 @rb_io_prep_stdout() local_unnamed_addr #0 {
bb.a:
  %i.a = load ptr, ptr @stdout, align 8, !tbaa !158
  %i.b = load i64, ptr @rb_cIO, align 8, !tbaa !13
  %i.c = tail call fastcc i64 @prep_stdio(ptr noundef %i.a, i32 noundef 131074, i64 noundef %i.b, ptr noundef nonnull @.str.28)
  ret i64 %i.c
}

; Function Attrs: nounwind sspstrong uwtable
define hidden range(i64 1, -7) i64 @rb_io_prep_stderr() local_unnamed_addr #0 {
bb.a:
  %i.a = load ptr, ptr @stderr, align 8, !tbaa !158
  %i.b = load i64, ptr @rb_cIO, align 8, !tbaa !13
  %i.c = tail call fastcc i64 @prep_stdio(ptr noundef %i.a, i32 noundef 10, i64 noundef %i.b, ptr noundef nonnull @.str.29)
  ret i64 %i.c
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local nonnull ptr @rb_io_stdio_file(ptr nofree noundef captures(none) %0) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 8          ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !151  ; 2 uses
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %switch.lookup, label %bb.g

switch.lookup:                                    ; preds = %bb.a
  %i.c = getelementptr i8, ptr %0, i64 20
  %i.d = load i32, ptr %i.c, align 4, !tbaa !39   ; 3 uses
  %i.e = and i32 %i.d, 3
  %i.f = zext nneg i32 %i.e to i64
  %switch.gep = getelementptr inbounds nuw [4 x i8], ptr @switch.table.rb_io_reopen, i64 %i.f
  %switch.load = load i32, ptr %switch.gep, align 4 ; 2 uses
  %i.g = getelementptr i8, ptr %0, i64 16
  %i.h = load i32, ptr %i.g, align 8, !tbaa !20   ; 2 uses
  %i.i = and i32 %i.d, 64
  %.not9.i = icmp eq i32 %i.i, 0
  br i1 %.not9.i, label %bb.b, label %switch.lookup10

default.unreachable:                              ; preds = %bb.b
  unreachable

bb.b:                                             ; preds = %switch.lookup
  switch i32 %switch.load, label %default.unreachable [
    i32 0, label %bb.c
    i32 1, label %rb_io_oflags_modestr.exit
    i32 2, label %bb.d
  ]

bb.c:                                             ; preds = %bb.b
  br label %rb_io_oflags_modestr.exit

bb.d:                                             ; preds = %bb.b
  %i.j = and i32 %i.d, 2048
  %.not10.i = icmp eq i32 %i.j, 0
  %.str.216..str.215.i = select i1 %.not10.i, ptr @.str.216, ptr @.str.215
  br label %rb_io_oflags_modestr.exit

switch.lookup10:                                  ; preds = %switch.lookup
  %i.k = zext nneg i32 %switch.load to i64
  %switch.gep11 = getelementptr inbounds nuw [8 x i8], ptr @switch.table.rb_io_stdio_file.18, i64 %i.k
  %switch.load12 = load ptr, ptr %switch.gep11, align 8
  br label %rb_io_oflags_modestr.exit

rb_io_oflags_modestr.exit:                        ; preds = %switch.lookup10, %bb.b, %bb.c, %bb.d
  %.0.i5 = phi ptr [ @.str.24, %bb.b ], [ %.str.216..str.215.i, %bb.d ], [ @.str.214, %bb.c ], [ %switch.load12, %switch.lookup10 ] ; 2 uses
  %i.l = tail call noalias noundef ptr @fdopen(i32 noundef %i.h, ptr noundef nonnull readonly %.0.i5) #28 ; 2 uses
  %.not.i = icmp eq ptr %i.l, null
  br i1 %.not.i, label %bb.e, label %rb_fdopen.exit

bb.e:                                             ; preds = %rb_io_oflags_modestr.exit
  %i.m = tail call ptr @rb_errno_ptr() #28
  %i.n = load i32, ptr %i.m, align 4, !tbaa !7    ; 2 uses
  switch i32 %i.n, label %rb_gc_for_fd.exit.thread.i [
    i32 24, label %bb.f
    i32 23, label %bb.f
    i32 12, label %bb.f
  ]

bb.f:                                             ; preds = %bb.e, %bb.e, %bb.e
  tail call void @rb_gc() #28
  %i.o = tail call noalias noundef ptr @fdopen(i32 noundef %i.h, ptr noundef nonnull readonly %.0.i5) #28 ; 2 uses
  %.not9.i7 = icmp eq ptr %i.o, null
  br i1 %.not9.i7, label %rb_gc_for_fd.exit.thread.i, label %rb_fdopen.exit

rb_gc_for_fd.exit.thread.i:                       ; preds = %bb.f, %bb.e
  %i.p = tail call ptr @rb_errno_ptr() #28        ; 0 uses
  tail call void @rb_syserr_fail(i32 noundef %i.n, ptr noundef null) #30
  unreachable

rb_fdopen.exit:                                   ; preds = %rb_io_oflags_modestr.exit, %bb.f
  %.0.i6 = phi ptr [ %i.o, %bb.f ], [ %i.l, %rb_io_oflags_modestr.exit ] ; 2 uses
  store ptr %.0.i6, ptr %i.a, align 8, !tbaa !151
  br label %bb.g

bb.g:                                             ; preds = %rb_fdopen.exit, %bb.a
  %i.q = phi ptr [ %.0.i6, %rb_fdopen.exit ], [ %i.b, %bb.a ]
  ret ptr %i.q
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local noundef nonnull ptr @rb_io_make_open_file(i64 noundef %0) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 3 uses
  %i.b = icmp eq i64 %0, 0
  %i.c = and i64 %0, 7
  %i.d = icmp ne i64 %i.c, 0
  %i.e = or i1 %i.b, %i.d
  br i1 %i.e, label %rbimpl_RB_TYPE_P_fastpath.exit.thread.i, label %bb.b, !prof !171

bb.b:                                             ; preds = %bb.a
  %i.f = inttoptr i64 %0 to ptr                   ; 2 uses
  %i.g = load i64, ptr %i.f, align 8, !tbaa !16
  %i.h = and i64 %i.g, 31
  %i.i = icmp eq i64 %i.h, 11
  br i1 %i.i, label %Check_Type.exit, label %rbimpl_RB_TYPE_P_fastpath.exit.thread.i, !prof !18

rbimpl_RB_TYPE_P_fastpath.exit.thread.i:          ; preds = %bb.b, %bb.a
  tail call void @rb_unexpected_type(i64 noundef %0, i32 noundef 11) #29
  unreachable

Check_Type.exit:                                  ; preds = %bb.b
  %i.j = getelementptr i8, ptr %i.f, i64 16       ; 4 uses
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !34
  %.not = icmp eq ptr %i.k, null
  br i1 %.not, label %bb.g, label %bb.c

bb.c:                                             ; preds = %Check_Type.exit
  %i.l = tail call fastcc ptr @io_close_fptr(i64 noundef %0) ; 2 uses
  %.not.i = icmp eq ptr %i.l, null
  br i1 %.not.i, label %rb_io_close.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #28
  %i.m = getelementptr i8, ptr %i.l, i64 24       ; 3 uses
  %i.n = load i32, ptr %i.m, align 8, !tbaa !125
  %.not.i.i = icmp eq i32 %i.n, 0
  br i1 %.not.i.i, label %fptr_waitpid.exit.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  tail call void @rb_last_status_clear() #28
  %i.o = load i32, ptr %i.m, align 8, !tbaa !125
  %i.p = call i32 @rb_waitpid(i32 noundef %i.o, ptr noundef nonnull %i.a, i32 noundef 0) #28 ; 0 uses
  store i32 0, ptr %i.m, align 8, !tbaa !125
  br label %fptr_waitpid.exit.i

fptr_waitpid.exit.i:                              ; preds = %bb.e, %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #28
  br label %rb_io_close.exit

rb_io_close.exit:                                 ; preds = %bb.c, %fptr_waitpid.exit.i
  %i.q = load ptr, ptr %i.j, align 8, !tbaa !34   ; 3 uses
  %.not.i9 = icmp eq ptr %i.q, null
  br i1 %.not.i9, label %rb_io_fptr_finalize.exit, label %bb.f

bb.f:                                             ; preds = %rb_io_close.exit
  call fastcc void @rb_io_fptr_cleanup_all(ptr noundef nonnull %i.q)
  call void @ruby_xfree(ptr noundef nonnull %i.q) #28
  br label %rb_io_fptr_finalize.exit

rb_io_fptr_finalize.exit:                         ; preds = %rb_io_close.exit, %bb.f
  store ptr null, ptr %i.j, align 8, !tbaa !34
  br label %bb.g

bb.g:                                             ; preds = %rb_io_fptr_finalize.exit, %Check_Type.exit
  %i.r = call noalias nonnull dereferenceable(248) ptr @ruby_xmalloc(i64 noundef 248) #36 ; 22 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 16
  %i.t = getelementptr inbounds nuw i8, ptr %i.r, i64 8
  store ptr null, ptr %i.t, align 8, !tbaa !151
  store <4 x i32> <i32 -1, i32 0, i32 0, i32 0>, ptr %i.s, align 8, !tbaa !7
  %i.u = getelementptr inbounds nuw i8, ptr %i.r, i64 32
  store i64 4, ptr %i.u, align 8, !tbaa !44
  %i.v = getelementptr inbounds nuw i8, ptr %i.r, i64 40
  %i.w = getelementptr inbounds nuw i8, ptr %i.r, i64 128
  %i.x = getelementptr inbounds nuw i8, ptr %i.r, i64 160
  store ptr null, ptr %i.x, align 8, !tbaa !50
  %i.y = getelementptr inbounds nuw i8, ptr %i.r, i64 168
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.v, i8 0, i64 48, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(28) %i.w, i8 0, i64 28, i1 false)
  store i64 4, ptr %i.y, align 8, !tbaa !172
  %i.z = getelementptr inbounds nuw i8, ptr %i.r, i64 180
  store i32 0, ptr %i.z, align 4, !tbaa !126
  %i.aa = getelementptr inbounds nuw i8, ptr %i.r, i64 184
  store i64 4, ptr %i.aa, align 8, !tbaa !173
  %i.ab = getelementptr inbounds nuw i8, ptr %i.r, i64 176
  store i32 0, ptr %i.ab, align 8, !tbaa !51
  %i.ac = getelementptr inbounds nuw i8, ptr %i.r, i64 88
  %i.ad = getelementptr inbounds nuw i8, ptr %i.r, i64 120
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(28) %i.ac, i8 0, i64 28, i1 false)
  store i64 4, ptr %i.ad, align 8, !tbaa !97
  %i.ae = getelementptr inbounds nuw i8, ptr %i.r, i64 192
  store i64 4, ptr %i.ae, align 8, !tbaa !41
  %i.af = getelementptr inbounds nuw i8, ptr %i.r, i64 200
  store i64 4, ptr %i.af, align 8, !tbaa !38
  %i.ag = getelementptr inbounds nuw i8, ptr %i.r, i64 208 ; 3 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %i.r, i64 216
  store ptr %i.ag, ptr %i.ah, align 8, !tbaa !167
  store ptr %i.ag, ptr %i.ag, align 8, !tbaa !168
  %i.ai = getelementptr inbounds nuw i8, ptr %i.r, i64 224
  store ptr null, ptr %i.ai, align 8, !tbaa !169
  %i.aj = getelementptr inbounds nuw i8, ptr %i.r, i64 232
  store i64 4, ptr %i.aj, align 8, !tbaa !170
  %i.ak = load ptr, ptr @ruby_current_vm_ptr, align 8, !tbaa !99
  %i.al = getelementptr i8, ptr %i.ak, i64 496
  %i.am = load i64, ptr %i.al, align 8, !tbaa !101
  %i.an = getelementptr inbounds nuw i8, ptr %i.r, i64 240
  store i64 %i.am, ptr %i.an, align 8, !tbaa !122
  store i64 %0, ptr %i.r, align 8, !tbaa !42
  store ptr %i.r, ptr %i.j, align 8, !tbaa !34
  ret ptr %i.r
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind sspstrong willreturn memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define hidden void @rb_reset_argf_lineno(i64 noundef %0) local_unnamed_addr #15 {
bb.a:
  %i.a = load i64, ptr @argf, align 8, !tbaa !13
  %i.b = inttoptr i64 %i.a to ptr
  %i.c = getelementptr i8, ptr %i.b, i64 32
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !75
  %i.e = getelementptr i8, ptr %i.d, i64 24
  store i64 %0, ptr %i.e, align 8, !tbaa !79
  %i.f = load i64, ptr @argf, align 8, !tbaa !13
  %i.g = inttoptr i64 %i.f to ptr
  %i.h = getelementptr i8, ptr %i.g, i64 32
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !75
  %i.j = getelementptr i8, ptr %i.i, i64 16
  store i64 %0, ptr %i.j, align 8, !tbaa !80
  ret void
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i64 @rb_gets() local_unnamed_addr #0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 3 uses
  %i.b = load i64, ptr @rb_rs, align 8, !tbaa !13
  %i.c = load i64, ptr @rb_default_rs, align 8, !tbaa !13
  %.not = icmp eq i64 %i.b, %i.c
  %i.d = load i64, ptr @argf, align 8, !tbaa !13  ; 2 uses
  br i1 %.not, label %.preheader, label %rb_f_gets.exit

.preheader:                                       ; preds = %bb.a
  %i.e = tail call fastcc i32 @argf_next_argv(i64 noundef %i.d)
  %.not58 = icmp eq i32 %i.e, 0
  br i1 %.not58, label %.loopexit, label %.lr.ph

rb_f_gets.exit:                                   ; preds = %bb.a
  %i.f = tail call i64 @argf_gets(i32 noundef 0, ptr noundef null, i64 noundef %i.d)
  br label %.loopexit

.lr.ph:                                           ; preds = %.preheader, %rb_io_close.exit
  %i.g = load i64, ptr @argf, align 8, !tbaa !13
  %i.h = inttoptr i64 %i.g to ptr
  %i.i = getelementptr i8, ptr %i.h, i64 32
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !75
  %i.k = getelementptr i8, ptr %i.j, i64 8
  %i.l = load i64, ptr %i.k, align 8, !tbaa !77
  %i.m = load i64, ptr @rb_default_rs, align 8, !tbaa !13
  %i.n = call fastcc i64 @rb_io_getline_1(i64 noundef %i.m, i64 noundef -1, i32 noundef 0, i64 noundef %i.l) ; 3 uses
  %i.o = icmp eq i64 %i.n, 4
  br i1 %i.o, label %bb.b, label %bb.g
end_hunk_4
begin_hunk_5_@rb_f_p:bb.a
  br label %bb.d

bb.d:                                             ; preds = %bb.a, %bb.c, %bb.b
  %.0.i = phi i64 [ %i.h, %bb.b ], [ %i.j, %bb.c ], [ 4, %bb.a ]
  %i.k = tail call i64 @rb_ractor_stdout() #28    ; 4 uses
  %i.l = icmp eq i64 %i.k, 0
  %i.m = and i64 %i.k, 7
  %i.n = icmp ne i64 %i.m, 0
  %i.o = or i1 %i.l, %i.n
  br i1 %i.o, label %rb_p_result.exit, label %rbimpl_RB_TYPE_P_fastpath.exit.i

rbimpl_RB_TYPE_P_fastpath.exit.i:                 ; preds = %bb.d
  %i.p = inttoptr i64 %i.k to ptr
  %i.q = load i64, ptr %i.p, align 8, !tbaa !16
  %i.r = and i64 %i.q, 31
  %i.s = icmp eq i64 %i.r, 11
  br i1 %i.s, label %bb.e, label %rb_p_result.exit

bb.e:                                             ; preds = %rbimpl_RB_TYPE_P_fastpath.exit.i
  %i.t = tail call i64 @rb_uninterruptible(ptr noundef nonnull @rb_io_flush, i64 noundef %i.k) #28 ; 0 uses
  br label %rb_p_result.exit

rb_p_result.exit:                                 ; preds = %bb.d, %rbimpl_RB_TYPE_P_fastpath.exit.i, %bb.e
  ret i64 %.0.i
}

declare extern_weak void @rb_define_method(i64 noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind sspstrong uwtable
define internal noundef i64 @rb_obj_display(i32 noundef %0, ptr nofree noundef readonly captures(none) %1, i64 noundef %2) #0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 4 uses
  %or.cond.i = icmp ugt i32 %0, 1
  br i1 %or.cond.i, label %bb.b, label %rb_check_arity.exit

bb.b:                                             ; preds = %bb.a
  tail call void @rb_error_arity(i32 noundef %0, i32 noundef 0, i32 noundef 1) #30
  unreachable

rb_check_arity.exit:                              ; preds = %bb.a
  %.not = icmp eq i32 %0, 0
  br i1 %.not, label %bb.c, label %bb.d

bb.c:                                             ; preds = %rb_check_arity.exit
  %i.b = tail call i64 @rb_ractor_stdout() #28
  br label %bb.e

bb.d:                                             ; preds = %rb_check_arity.exit
  %i.c = load i64, ptr %1, align 8, !tbaa !13
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.d = phi i64 [ %i.b, %bb.c ], [ %i.c, %bb.d ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i64 %2, ptr %i.a, align 8, !tbaa !13
  %i.e = load i64, ptr @id_write, align 8, !tbaa !13
  %i.f = call i64 @rb_funcallv(i64 noundef %i.d, i64 noundef %i.e, i32 noundef 1, ptr noundef nonnull %i.a) #28 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret i64 4
}

declare void @rb_include_module(i64 noundef, i64 noundef) local_unnamed_addr #1

declare i64 @rb_define_class_under(i64 noundef, ptr noundef, i64 noundef) local_unnamed_addr #1

declare void @rb_define_const(i64 noundef, ptr noundef, i64 noundef) local_unnamed_addr #1

declare i64 @rb_define_module_under(i64 noundef, ptr noundef) local_unnamed_addr #1

declare void @rb_define_alloc_func(i64 noundef, ptr noundef) local_unnamed_addr #1

declare extern_weak void @rb_define_singleton_method(i64 noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind sspstrong uwtable
define internal i64 @rb_io_s_new(i32 noundef %0, ptr noundef %1, i64 noundef %2) #0 {
bb.a:
  %i.a = tail call i32 @rb_block_given_p() #28
  %.not = icmp eq i32 %i.a, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = tail call i64 @rb_obj_as_string(i64 noundef %2) #28 ; 2 uses
  tail call void (ptr, ...) @rb_warn(ptr noundef nonnull @.str.233, i64 noundef %i.b, i64 noundef %i.b) #34
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.c = tail call i32 @rb_keyword_given_p() #28
  %i.d = icmp ne i32 %i.c, 0
  %i.e = zext i1 %i.d to i32
  %i.f = tail call i64 @rb_class_new_instance_kw(i32 noundef %0, ptr noundef %1, i64 noundef %2, i32 noundef %i.e) #28
  ret i64 %i.f
}

; Function Attrs: nounwind sspstrong uwtable
define internal i64 @rb_io_s_open(i32 noundef %0, ptr noundef %1, i64 noundef %2) #0 {
bb.a:
  %i.a = tail call i32 @rb_keyword_given_p() #28
  %i.b = icmp ne i32 %i.a, 0
  %i.c = zext i1 %i.b to i32
  %i.d = tail call i64 @rb_class_new_instance_kw(i32 noundef %0, ptr noundef %1, i64 noundef %2, i32 noundef %i.c) #28 ; 3 uses
  %i.e = tail call i32 @rb_block_given_p() #28
  %.not = icmp eq i32 %i.e, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = tail call i64 @rb_ensure(ptr noundef nonnull @rb_yield, i64 noundef %i.d, ptr noundef nonnull @io_close, i64 noundef %i.d) #28
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.0 = phi i64 [ %i.f, %bb.b ], [ %i.d, %bb.a ]
  ret i64 %.0
}

; Function Attrs: nounwind sspstrong uwtable
define internal range(i64 1, 4294967296) i64 @rb_io_s_sysopen(i32 noundef %0, ptr nofree noundef readonly captures(none) %1, i64 %2) #0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 7 uses
  %i.b = alloca i64, align 8                      ; 6 uses
  %i.c = alloca ptr, align 8                      ; 5 uses
  %i.d = alloca ptr, align 8                      ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #28
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #28
  %i.e = icmp slt i32 %0, 1
  br i1 %i.e, label %bb.f, label %.preheader

.preheader:                                       ; preds = %bb.a
  %i.f = load i64, ptr %1, align 8, !tbaa !13     ; 2 uses
  store i64 %i.f, ptr %i.a, align 8, !tbaa !13
  %.not = icmp eq i32 %0, 1
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %.preheader
  %i.g = getelementptr i8, ptr %1, i64 8
  %i.h = load i64, ptr %i.g, align 8, !tbaa !13
  br label %bb.c

bb.c:                                             ; preds = %.preheader, %bb.b
  %.sink = phi i64 [ %i.h, %bb.b ], [ 4, %.preheader ]
  %.286.i = phi i32 [ 2, %bb.b ], [ 1, %.preheader ] ; 4 uses
  store i64 %.sink, ptr %i.b, align 8, !tbaa !13
  %i.i = icmp samesign ult i32 %.286.i, %0
  br i1 %i.i, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.j = zext nneg i32 %.286.i to i64
  %i.k = getelementptr [8 x i8], ptr %1, i64 %i.j
  %i.l = load i64, ptr %i.k, align 8, !tbaa !13
  %i.m = add nuw nsw i32 %.286.i, 1
  br label %bb.e

bb.e:                                             ; preds = %bb.c, %bb.d
  %i.n = phi i64 [ %i.l, %bb.d ], [ 4, %bb.c ]    ; 2 uses
  %.286.i.1 = phi i32 [ %i.m, %bb.d ], [ %.286.i, %bb.c ]
  %i.o = icmp eq i32 %.286.i.1, %0
  br i1 %i.o, label %rb_scan_args_set.exit, label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.a
  tail call void @rb_error_arity(i32 noundef %0, i32 noundef 1, i32 noundef 3) #30
  unreachable

rb_scan_args_set.exit:                            ; preds = %bb.e
  %i.p = tail call i64 @rb_get_path(i64 noundef %i.f) #28
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #28
  store ptr %i.a, ptr %i.c, align 8, !tbaa !137
  call void asm sideeffect "", "*m,~{dirflag},~{fpsr},~{flags}"(ptr nonnull elementtype(ptr) %i.c) #28, !srcloc !199
  %i.q = load ptr, ptr %i.c, align 8, !tbaa !137
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #28
  store volatile i64 %i.p, ptr %i.q, align 8, !tbaa !13
  %i.r = load i64, ptr %i.b, align 8, !tbaa !13   ; 2 uses
  %i.s = icmp eq i64 %i.r, 4
  br i1 %i.s, label %bb.k, label %bb.g

bb.g:                                             ; preds = %rb_scan_args_set.exit
  %i.t = call i64 @rb_check_to_integer(i64 noundef %i.r, ptr noundef nonnull @.str.18) #28 ; 4 uses
  %i.u = icmp eq i64 %i.t, 4
  br i1 %i.u, label %switch.lookup, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.v = trunc i64 %i.t to i1
  br i1 %i.v, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.w = call i64 @rb_fix2int(i64 noundef %i.t) #28
  br label %rb_num2int_inline.exit

bb.j:                                             ; preds = %bb.h
  %i.x = call i64 @rb_num2int(i64 noundef %i.t) #28
  br label %rb_num2int_inline.exit

rb_num2int_inline.exit:                           ; preds = %bb.i, %bb.j
  %.0.i = phi i64 [ %i.w, %bb.i ], [ %i.x, %bb.j ]
  %i.y = trunc i64 %.0.i to i32
  br label %bb.k

switch.lookup:                                    ; preds = %bb.g
  %i.z = call i64 @rb_string_value(ptr noundef nonnull %i.b) #28 ; 0 uses
  %i.aa = call ptr @rb_string_value_cstr(ptr noundef nonnull %i.b) #28
  %i.ab = call i32 @rb_io_modestr_fmode(ptr noundef %i.aa) ; 5 uses
  %i.ac = and i32 %i.ab, 3
  %i.ad = zext nneg i32 %i.ac to i64
  %switch.gep = getelementptr inbounds nuw [4 x i8], ptr @switch.table.rb_io_reopen, i64 %i.ad
  %switch.load = load i32, ptr %switch.gep, align 4
  %i.ae = shl i32 %i.ab, 4
  %i.af = and i32 %i.ae, 1024
  %i.ag = lshr i32 %i.ab, 2
  %i.ah = and i32 %i.ag, 512
  %i.ai = lshr i32 %i.ab, 1
  %i.aj = and i32 %i.ai, 64
  %i.ak = lshr i32 %i.ab, 3
  %i.al = and i32 %i.ak, 128
  %spec.select.i.i = or disjoint i32 %i.ah, %i.af
  %.2.i.i = or disjoint i32 %spec.select.i.i, %i.aj
  %.3.i.i = or disjoint i32 %.2.i.i, %i.al
  %.4.i.i = or disjoint i32 %.3.i.i, %switch.load
  br label %bb.k

bb.k:                                             ; preds = %rb_scan_args_set.exit, %rb_num2int_inline.exit, %switch.lookup
  %.0 = phi i32 [ %i.y, %rb_num2int_inline.exit ], [ %.4.i.i, %switch.lookup ], [ 0, %rb_scan_args_set.exit ]
  %i.am = icmp eq i64 %i.n, 4
  br i1 %i.am, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.an = call i64 @rb_num2uint(i64 noundef %i.n) #28
  %i.ao = trunc i64 %i.an to i32
  br label %bb.m

bb.m:                                             ; preds = %bb.k, %bb.l
  %.07 = phi i32 [ %i.ao, %bb.l ], [ 438, %bb.k ]
  %i.ap = load i64, ptr %i.a, align 8, !tbaa !13
  %i.aq = call i64 @rb_str_new_frozen(i64 noundef %i.ap) #28
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #28
  store ptr %i.a, ptr %i.d, align 8, !tbaa !137
  call void asm sideeffect "", "*m,~{dirflag},~{fpsr},~{flags}"(ptr nonnull elementtype(ptr) %i.d) #28, !srcloc !200
  %i.ar = load ptr, ptr %i.d, align 8, !tbaa !137
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #28
  store volatile i64 %i.aq, ptr %i.ar, align 8, !tbaa !13
  %i.as = load i64, ptr %i.a, align 8, !tbaa !13
  %i.at = call fastcc i32 @rb_sysopen(i64 noundef %i.as, i32 noundef %.0, i32 noundef %.07)
  %i.au = shl nuw i32 %i.at, 1
  %i.av = or disjoint i32 %i.au, 1
  %i.aw = zext i32 %i.av to i64
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #28
  ret i64 %i.aw
}

; Function Attrs: nounwind sspstrong uwtable
define internal i64 @rb_io_s_for_fd(i32 noundef %0, ptr nofree noundef readonly captures(none) %1, i64 noundef %2) #0 {
bb.a:
  %i.a = tail call i64 @rb_obj_alloc(i64 noundef %2) #28 ; 2 uses
  %i.b = icmp sgt i32 %0, 0
  br i1 %i.b, label %bb.b, label %.thread.i

bb.b:                                             ; preds = %bb.a
  %i.c = zext nneg i32 %0 to i64
  %i.d = getelementptr [8 x i8], ptr %1, i64 %i.c
  %i.e = getelementptr i8, ptr %i.d, i64 -8
  %i.f = load i64, ptr %i.e, align 8, !tbaa !13
  %i.g = tail call i32 @rb_keyword_given_p() #28
  %.not.i = icmp eq i32 %i.g, 0
  br i1 %.not.i, label %.preheader.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.h = tail call i64 @rb_hash_dup(i64 noundef %i.f) #28
  %i.i = add nsw i32 %0, -1                       ; 2 uses
  %i.j = icmp eq i32 %i.i, 0
  br i1 %i.j, label %.thread.i, label %.preheader.i

.preheader.i:                                     ; preds = %bb.c, %bb.b
  %.1.i16.i = phi i32 [ %i.i, %bb.c ], [ %0, %bb.b ] ; 3 uses
  %.188.i15.i = phi i64 [ %i.h, %bb.c ], [ 4, %bb.b ]
  %i.k = load i64, ptr %1, align 8, !tbaa !13
  %i.l = icmp samesign ugt i32 %.1.i16.i, 1
  br i1 %i.l, label %bb.d, label %bb.e

bb.d:                                             ; preds = %.preheader.i
  %i.m = getelementptr i8, ptr %1, i64 8
  %i.n = load i64, ptr %i.m, align 8, !tbaa !13
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %.preheader.i
  %i.o = phi i64 [ %i.n, %bb.d ], [ 4, %.preheader.i ]
  %.185.i.lcssa.i = phi i32 [ 2, %bb.d ], [ 1, %.preheader.i ]
  %i.p = icmp eq i32 %.185.i.lcssa.i, %.1.i16.i
  br i1 %i.p, label %rb_io_initialize.exit, label %.thread.i

.thread.i:                                        ; preds = %bb.e, %bb.c, %bb.a
  %.1.i4.i = phi i32 [ 0, %bb.c ], [ %.1.i16.i, %bb.e ], [ %0, %bb.a ]
  tail call void @rb_error_arity(i32 noundef %.1.i4.i, i32 noundef 1, i32 noundef 2) #30
  unreachable

rb_io_initialize.exit:                            ; preds = %bb.e
  %i.q = tail call fastcc i64 @io_initialize(i64 noundef %i.a, i64 noundef %i.k, i64 noundef %i.o, i64 noundef %.188.i15.i) ; 0 uses
  ret i64 %i.a
}

; Function Attrs: nounwind sspstrong uwtable
define internal i64 @rb_io_s_popen(i32 noundef %0, ptr nofree noundef readonly captures(none) %1, i64 noundef %2) #0 {
bb.a:
  %i.a = icmp sgt i32 %0, 1
  br i1 %i.a, label %bb.b, label %.thread31

bb.b:                                             ; preds = %bb.a
  %i.b = zext nneg i32 %0 to i64
  %i.c = getelementptr [8 x i8], ptr %1, i64 %i.b
  %i.d = getelementptr i8, ptr %i.c, i64 -8
  %i.e = load i64, ptr %i.d, align 8, !tbaa !13
  %i.f = tail call i64 @rb_check_hash_type(i64 noundef %i.e) #28 ; 4 uses
  %i.g = icmp eq i64 %i.f, 4
  br i1 %i.g, label %.thread, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.h = add nsw i32 %0, -1
  %.not = icmp eq i32 %0, 2
  br i1 %.not, label %.thread34, label %.thread

.thread:                                          ; preds = %bb.b, %bb.c
  %.030 = phi i32 [ %i.h, %bb.c ], [ %0, %bb.b ]  ; 2 uses
  %i.i = load i64, ptr %1, align 8, !tbaa !13
  %i.j = tail call i64 @rb_check_hash_type(i64 noundef %i.i) #28 ; 2 uses
  %i.k = icmp eq i64 %i.j, 4
  br i1 %i.k, label %.thread31, label %bb.d

bb.d:                                             ; preds = %.thread
  %i.l = add nsw i32 %.030, -1
  %i.m = getelementptr i8, ptr %1, i64 8
  br label %.thread31

.thread31:                                        ; preds = %bb.a, %bb.d, %.thread
  %.02128 = phi i64 [ %i.f, %.thread ], [ %i.f, %bb.d ], [ 4, %bb.a ] ; 3 uses
  %.023 = phi ptr [ %1, %.thread ], [ %i.m, %bb.d ], [ %1, %bb.a ] ; 3 uses
  %.020 = phi i64 [ 4, %.thread ], [ %i.j, %bb.d ], [ 4, %bb.a ] ; 2 uses
  %.1 = phi i32 [ %.030, %.thread ], [ %i.l, %bb.d ], [ %0, %bb.a ] ; 2 uses
  switch i32 %.1, label %bb.k [
    i32 2, label %bb.e
    i32 1, label %.thread34
  ]

bb.e:                                             ; preds = %.thread31
  %i.n = getelementptr i8, ptr %.023, i64 8
  %i.o = load i64, ptr %i.n, align 8, !tbaa !13
  br label %.thread34

.thread34:                                        ; preds = %bb.c, %bb.e, %.thread31
  %.02041 = phi i64 [ %.020, %bb.e ], [ %.020, %.thread31 ], [ 4, %bb.c ]
  %.02340 = phi ptr [ %.023, %bb.e ], [ %.023, %.thread31 ], [ %1, %bb.c ]
  %.0212839 = phi i64 [ %.02128, %bb.e ], [ %.02128, %.thread31 ], [ %i.f, %bb.c ]
  %.022 = phi i64 [ %i.o, %bb.e ], [ 4, %.thread31 ], [ 4, %bb.c ]
  %i.p = load i64, ptr %.02340, align 8, !tbaa !13
  %i.q = tail call i64 @rb_io_popen(i64 noundef %i.p, i64 noundef %.022, i64 noundef %.02041, i64 noundef %.0212839) ; 6 uses
  %i.r = icmp eq i64 %i.q, 4
  br i1 %i.r, label %bb.f, label %bb.h

bb.f:                                             ; preds = %.thread34
  %i.s = tail call i32 @rb_block_given_p() #28
  %.not7.i = icmp eq i32 %i.s, 0
  br i1 %.not7.i, label %popen_finish.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.t = tail call i64 @rb_protect(ptr noundef nonnull @rb_yield, i64 noundef 4, ptr noundef null) #28 ; 0 uses
  %i.u = tail call i64 @rb_ractor_stdout() #28
  %i.v = tail call i64 @rb_io_flush(i64 noundef %i.u) ; 0 uses
  %i.w = tail call i64 @rb_ractor_stderr() #28
  %i.x = tail call i64 @rb_io_flush(i64 noundef %i.w) ; 0 uses
  tail call void @_exit(i32 noundef 0) #30
  unreachable

bb.h:                                             ; preds = %.thread34
  %i.y = inttoptr i64 %i.q to ptr
  %i.z = getelementptr i8, ptr %i.y, i64 8
  store i64 %2, ptr %i.z, align 8, !tbaa !13
  %i.aa = icmp eq i64 %2, 0
  %i.ab = and i64 %2, 7
  %i.ac = icmp ne i64 %i.ab, 0
  %i.ad = or i1 %i.aa, %i.ac
  br i1 %i.ad, label %RBASIC_SET_CLASS.exit.i, label %bb.i

bb.i:                                             ; preds = %bb.h
  tail call void @rb_gc_writebarrier(i64 noundef %i.q, i64 noundef %2) #28
  br label %RBASIC_SET_CLASS.exit.i

RBASIC_SET_CLASS.exit.i:                          ; preds = %bb.i, %bb.h
  %i.ae = tail call i32 @rb_block_given_p() #28
  %.not.i = icmp eq i32 %i.ae, 0
  br i1 %.not.i, label %popen_finish.exit, label %bb.j

bb.j:                                             ; preds = %RBASIC_SET_CLASS.exit.i
  %i.af = tail call i64 @rb_ensure(ptr noundef nonnull @rb_yield, i64 noundef %i.q, ptr noundef nonnull @pipe_close, i64 noundef %i.q) #28
  br label %popen_finish.exit

popen_finish.exit:                                ; preds = %bb.f, %RBASIC_SET_CLASS.exit.i, %bb.j
  %.0.i = phi i64 [ 4, %bb.f ], [ %i.af, %bb.j ], [ %i.q, %RBASIC_SET_CLASS.exit.i ]
  ret i64 %.0.i

bb.k:                                             ; preds = %.thread31
  %i.ag = icmp ne i64 %.02128, 4                  ; 3 uses
  %i.ah = zext i1 %i.ag to i32
  %i.ai = add i32 %.1, %i.ah
  %i.aj = select i1 %i.ag, i32 2, i32 1
  %i.ak = select i1 %i.ag, i32 3, i32 2
  tail call void @rb_error_arity(i32 noundef %i.ai, i32 noundef %i.aj, i32 noundef %i.ak) #30
  unreachable
}

; Function Attrs: nounwind sspstrong uwtable
define internal i64 @rb_io_s_foreach(i32 noundef %0, ptr noundef %1, i64 noundef %2) #0 {
rb_scan_args_n_opt.exit:
  %i.a = alloca i64, align 8                      ; 4 uses
  %i.b = alloca i64, align 8                      ; 6 uses
  %3 = alloca %struct.foreach_arg, align 8        ; 4 uses
  %4 = alloca %struct.getline_arg, align 8        ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #28
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #28
  %i.c = icmp sgt i32 %0, 0
end_hunk_5
begin_hunk_6_@rb_io_reopen:rb_scan_args_n_opt.exit
bb.bb:                                            ; preds = %rb_update_max_fd.exit.i
  %i.ft = tail call ptr @rb_errno_ptr() #28
  store i32 0, ptr %i.ft, align 4, !tbaa !7
  %i.fu = tail call fastcc i32 @io_fflush(ptr noundef nonnull %i.aj)
  %i.fv = icmp slt i32 %i.fu, 0
  br i1 %i.fv, label %bb.bc, label %flush_before_seek.exit127.i

bb.bc:                                            ; preds = %bb.bb
  tail call fastcc void @rb_sys_fail_on_write(ptr noundef nonnull %i.aj) #31
  unreachable

flush_before_seek.exit127.i:                      ; preds = %bb.bb
  tail call fastcc void @io_unread(ptr noundef nonnull %i.aj, i1 noundef zeroext true)
  %i.fw = tail call ptr @rb_errno_ptr() #28
  store i32 0, ptr %i.fw, align 4, !tbaa !7
  %i.fx = load i32, ptr %i.al, align 8, !tbaa !20
  %i.fy = tail call i64 @lseek(i32 noundef %i.fx, i64 noundef %.083.i, i32 noundef 0) #28
  %i.fz = icmp slt i64 %i.fy, 0
  br i1 %i.fz, label %bb.bd, label %bb.bf

bb.bd:                                            ; preds = %flush_before_seek.exit127.i
  %i.ga = tail call ptr @rb_errno_ptr() #28
  %i.gb = load i32, ptr %i.ga, align 4, !tbaa !7
  %.not97.i = icmp eq i32 %i.gb, 0
  br i1 %.not97.i, label %bb.bf, label %bb.be

bb.be:                                            ; preds = %bb.bd
  %i.gc = tail call ptr @rb_errno_ptr() #28
  %i.gd = load i32, ptr %i.gc, align 4, !tbaa !7
  %i.ge = getelementptr i8, ptr %i.aj, i64 32
  %i.gf = load i64, ptr %i.ge, align 8, !tbaa !44
  tail call void @rb_syserr_fail_path_in(ptr noundef nonnull @__func__.io_reopen, i32 noundef %i.gd, i64 noundef %i.gf) #30
  unreachable

bb.bf:                                            ; preds = %bb.bd, %flush_before_seek.exit127.i
  %i.gg = tail call ptr @rb_errno_ptr() #28
  store i32 0, ptr %i.gg, align 4, !tbaa !7
  %i.gh = tail call fastcc i32 @io_fflush(ptr noundef nonnull %i.az)
  %i.gi = icmp slt i32 %i.gh, 0
  br i1 %i.gi, label %bb.bg, label %flush_before_seek.exit128.i

bb.bg:                                            ; preds = %bb.bf
  tail call fastcc void @rb_sys_fail_on_write(ptr noundef nonnull %i.az) #31
  unreachable

flush_before_seek.exit128.i:                      ; preds = %bb.bf
  tail call fastcc void @io_unread(ptr noundef nonnull %i.az, i1 noundef zeroext true)
  %i.gj = tail call ptr @rb_errno_ptr() #28
  store i32 0, ptr %i.gj, align 4, !tbaa !7
  %i.gk = load i32, ptr %i.bb, align 8, !tbaa !20
  %i.gl = tail call i64 @lseek(i32 noundef %i.gk, i64 noundef %.083.i, i32 noundef 0) #28
  %i.gm = icmp slt i64 %i.gl, 0
  br i1 %i.gm, label %bb.bh, label %bb.bj

bb.bh:                                            ; preds = %flush_before_seek.exit128.i
  %i.gn = tail call ptr @rb_errno_ptr() #28
  %i.go = load i32, ptr %i.gn, align 4, !tbaa !7
  %.not98.i = icmp eq i32 %i.go, 0
  br i1 %.not98.i, label %bb.bj, label %bb.bi

bb.bi:                                            ; preds = %bb.bh
  %i.gp = tail call ptr @rb_errno_ptr() #28
  %i.gq = load i32, ptr %i.gp, align 4, !tbaa !7
  %i.gr = load i64, ptr %i.dm, align 8, !tbaa !44
  tail call void @rb_syserr_fail_path_in(ptr noundef nonnull @__func__.io_reopen, i32 noundef %i.gq, i64 noundef %i.gr) #30
  unreachable

bb.bj:                                            ; preds = %bb.bh, %flush_before_seek.exit128.i, %rb_update_max_fd.exit.i, %bb.ag
  %i.gs = load i32, ptr %i.bg, align 4, !tbaa !39
  %i.gt = and i32 %i.gs, 4
  %.not99.i = icmp eq i32 %i.gt, 0
  br i1 %.not99.i, label %bb.bl, label %bb.bk

bb.bk:                                            ; preds = %bb.bj
  %i.gu = tail call i64 @rb_io_binmode(i64 noundef %2) ; 0 uses
  br label %bb.bl

bb.bl:                                            ; preds = %bb.bk, %bb.bj
  %i.gv = tail call i64 @rb_obj_class(i64 noundef %i.y) #28 ; 4 uses
  %i.gw = getelementptr i8, ptr %i.ac, i64 8
  store i64 %i.gv, ptr %i.gw, align 8, !tbaa !13
  %i.gx = icmp eq i64 %i.gv, 0
  %i.gy = and i64 %i.gv, 7
  %i.gz = icmp ne i64 %i.gy, 0
  %i.ha = or i1 %i.gx, %i.gz
  br i1 %i.ha, label %io_reopen.exit.thread, label %bb.bm

bb.bm:                                            ; preds = %bb.bl
  tail call void @rb_gc_writebarrier(i64 noundef %2, i64 noundef %i.gv) #28
  br label %io_reopen.exit.thread

io_reopen.exit:                                   ; preds = %.thread147, %bb.c
  %i.hb = phi i1 [ %i.u, %bb.c ], [ true, %.thread147 ]
  %.pre112 = load i64, ptr %i.c, align 8, !tbaa !13
  %i.hc = tail call i64 @rb_get_path(i64 noundef %.pre112) #28
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #28
  store ptr %i.c, ptr %i.f, align 8, !tbaa !137
  call void asm sideeffect "", "*m,~{dirflag},~{fpsr},~{flags}"(ptr nonnull elementtype(ptr) %i.f) #28, !srcloc !224
  %i.hd = load ptr, ptr %i.f, align 8, !tbaa !137
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #28
  store volatile i64 %i.hc, ptr %i.hd, align 8, !tbaa !13
  %i.he = icmp ne i64 %2, 0
  %i.hf = and i64 %2, 7
  %i.hg = icmp eq i64 %i.hf, 0
  %.not3.i.i.i = and i1 %i.he, %i.hg
  br i1 %.not3.i.i.i, label %RB_OBJ_FROZEN.exit.i.i, label %RB_OBJ_FROZEN.exit.thread.i.i, !prof !15

RB_OBJ_FROZEN.exit.i.i:                           ; preds = %io_reopen.exit
  %i.hh = inttoptr i64 %2 to ptr                  ; 2 uses
  %i.hi = load i64, ptr %i.hh, align 8, !tbaa !16 ; 3 uses
  %i.hj = and i64 %i.hi, 2048
  %.not.i.i72 = icmp eq i64 %i.hj, 0
  br i1 %.not.i.i72, label %rbimpl_RB_TYPE_P_fastpath.exit.i.i, label %RB_OBJ_FROZEN.exit.thread.i.i, !prof !18

RB_OBJ_FROZEN.exit.thread.i.i:                    ; preds = %RB_OBJ_FROZEN.exit.i.i, %io_reopen.exit
  call void @rb_error_frozen_object(i64 noundef %2) #30
  unreachable

rbimpl_RB_TYPE_P_fastpath.exit.i.i:               ; preds = %RB_OBJ_FROZEN.exit.i.i
  %i.hk = and i64 %i.hi, 31
  %i.hl = icmp ne i64 %i.hk, 5
  %i.hm = and i64 %i.hi, 49152
  %.not8.i.i = icmp eq i64 %i.hm, 0
  %or.cond.i.i73 = or i1 %i.hl, %.not8.i.i
  br i1 %or.cond.i.i73, label %rb_io_taint_check.exit, label %bb.bn, !prof !19

bb.bn:                                            ; preds = %rbimpl_RB_TYPE_P_fastpath.exit.i.i
  call void @rb_str_modify(i64 noundef %2) #28
  br label %rb_io_taint_check.exit

rb_io_taint_check.exit:                           ; preds = %rbimpl_RB_TYPE_P_fastpath.exit.i.i, %bb.bn
  %i.hn = getelementptr i8, ptr %i.hh, i64 16     ; 2 uses
  %i.ho = load ptr, ptr %i.hn, align 8, !tbaa !34 ; 2 uses
  %.not = icmp eq ptr %i.ho, null
  br i1 %.not, label %bb.bo, label %bb.bp

bb.bo:                                            ; preds = %rb_io_taint_check.exit
  %i.hp = call noalias nonnull dereferenceable(248) ptr @ruby_xcalloc(i64 noundef 1, i64 noundef 248) #32 ; 2 uses
  store ptr %i.hp, ptr %i.hn, align 8, !tbaa !34
  br label %bb.bp

bb.bp:                                            ; preds = %bb.bo, %rb_io_taint_check.exit
  %.055 = phi ptr [ %i.ho, %rb_io_taint_check.exit ], [ %i.hp, %bb.bo ] ; 12 uses
  %i.hq = icmp eq i64 %.188.i145, 4
  %or.cond = select i1 %i.hb, i1 %i.hq, i1 false
  br i1 %or.cond, label %switch.lookup, label %bb.bq

bb.bq:                                            ; preds = %bb.bp
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g) #28
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #28
  call void @rb_io_extract_modeenc(ptr noundef nonnull %i.d, ptr noundef null, i64 noundef %.188.i145, ptr noundef nonnull %i.e, ptr noundef nonnull %i.g, ptr noundef nonnull %3)
  %i.hr = getelementptr i8, ptr %.055, i64 20     ; 2 uses
  %i.hs = load i32, ptr %i.hr, align 4, !tbaa !39 ; 3 uses
  %i.ht = and i32 %i.hs, 65536
  %.not61 = icmp eq i32 %i.ht, 0
  %.pre113 = load i32, ptr %i.g, align 4, !tbaa !7 ; 4 uses
  br i1 %.not61, label %bb.bu, label %bb.br

bb.br:                                            ; preds = %bb.bq
  %i.hu = and i32 %.pre113, 3
  %i.hv = xor i32 %i.hu, 3
  %i.hw = and i32 %i.hv, %i.hs
  %.not62 = icmp eq i32 %i.hw, 0
  br i1 %.not62, label %bb.bu, label %bb.bs

bb.bs:                                            ; preds = %bb.br
  %i.hx = load i64, ptr @rb_eArgError, align 8, !tbaa !13
  %i.hy = getelementptr i8, ptr %.055, i64 32
  %i.hz = load i64, ptr %i.hy, align 8, !tbaa !44
  %i.ia = inttoptr i64 %i.hz to ptr               ; 2 uses
  %i.ib = load i64, ptr %i.ia, align 8, !tbaa !16
  %i.ic = and i64 %i.ib, 8192
  %.not.i74 = icmp eq i64 %i.ic, 0
  %i.id = getelementptr i8, ptr %i.ia, i64 24     ; 2 uses
  br i1 %.not.i74, label %RSTRING_PTR.exit, label %bb.bt

bb.bt:                                            ; preds = %bb.bs
  %i.ie = load ptr, ptr %i.id, align 8, !tbaa !86
  br label %RSTRING_PTR.exit

RSTRING_PTR.exit:                                 ; preds = %bb.bs, %bb.bt
  %i.if = phi ptr [ %i.ie, %bb.bt ], [ %i.id, %bb.bs ]
  %i.ig = call fastcc ptr @rb_io_fmode_modestr(i32 noundef %i.hs)
  %i.ih = call fastcc ptr @rb_io_fmode_modestr(i32 noundef %.pre113)
  call void (i64, ptr, ...) @rb_raise(i64 noundef %i.hx, ptr noundef nonnull @.str.256, ptr noundef %i.if, ptr noundef nonnull %i.ig, ptr noundef nonnull %i.ih) #30
  unreachable

bb.bu:                                            ; preds = %bb.br, %bb.bq
  store i32 %.pre113, ptr %i.hr, align 4, !tbaa !39
  %i.ii = getelementptr i8, ptr %.055, i64 96
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.ii, ptr noundef nonnull align 8 dereferenceable(32) %3, i64 32, i1 false), !tbaa.struct !152
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #28
  br label %bb.bv

switch.lookup:                                    ; preds = %bb.bp
  %i.ij = getelementptr i8, ptr %.055, i64 20
  %i.ik = load i32, ptr %i.ij, align 4, !tbaa !39 ; 6 uses
  %i.il = and i32 %i.ik, 3
  %i.im = zext nneg i32 %i.il to i64
  %switch.gep = getelementptr inbounds nuw [4 x i8], ptr @switch.table.rb_io_reopen, i64 %i.im
  %switch.load = load i32, ptr %switch.gep, align 4
  %i.in = shl i32 %i.ik, 4
  %i.io = and i32 %i.in, 1024
  %i.ip = lshr i32 %i.ik, 2
  %i.iq = and i32 %i.ip, 512
  %i.ir = lshr i32 %i.ik, 1
  %i.is = and i32 %i.ir, 64
  %i.it = lshr i32 %i.ik, 3
  %i.iu = and i32 %i.it, 128
  %spec.select.i75 = or disjoint i32 %i.iq, %i.io
  %.2.i76 = or disjoint i32 %spec.select.i75, %i.is
  %.3.i = or disjoint i32 %.2.i76, %i.iu
  %.4.i77 = or disjoint i32 %.3.i, %switch.load
  store i32 %.4.i77, ptr %i.e, align 4, !tbaa !7
  br label %bb.bv

default.unreachable:                              ; preds = %bb.cg, %bb.ce
  unreachable

bb.bv:                                            ; preds = %switch.lookup, %bb.bu
  %i.iv = phi i32 [ %i.ik, %switch.lookup ], [ %.pre113, %bb.bu ]
  %i.iw = load i64, ptr %i.c, align 8, !tbaa !13  ; 2 uses
  %i.ix = getelementptr i8, ptr %.055, i64 32     ; 6 uses
  store i64 %i.iw, ptr %i.ix, align 8, !tbaa !44
  %i.iy = getelementptr i8, ptr %.055, i64 16     ; 5 uses
  %i.iz = load i32, ptr %i.iy, align 8, !tbaa !20
  %i.ja = icmp slt i32 %i.iz, 0
  br i1 %i.ja, label %bb.bw, label %bb.bx

bb.bw:                                            ; preds = %bb.bv
  %i.jb = load i32, ptr %i.e, align 4, !tbaa !7
  %i.jc = call fastcc i32 @rb_sysopen(i64 noundef %i.iw, i32 noundef %i.jb, i32 noundef 438)
  store i32 %i.jc, ptr %i.iy, align 8, !tbaa !20
  %i.jd = getelementptr i8, ptr %.055, i64 8
  store ptr null, ptr %i.jd, align 8, !tbaa !151
  br label %io_reopen.exit.thread

bb.bx:                                            ; preds = %bb.bv
  %i.je = and i32 %i.iv, 2
  %.not63 = icmp eq i32 %i.je, 0
  br i1 %.not63, label %bb.ca, label %bb.by

bb.by:                                            ; preds = %bb.bx
  %i.jf = call fastcc i32 @io_fflush(ptr noundef nonnull %.055)
  %i.jg = icmp slt i32 %i.jf, 0
  br i1 %i.jg, label %bb.bz, label %bb.ca

bb.bz:                                            ; preds = %bb.by
  call fastcc void @rb_sys_fail_on_write(ptr noundef nonnull %.055) #31
  unreachable

bb.ca:                                            ; preds = %bb.by, %bb.bx
  %i.jh = getelementptr i8, ptr %.055, i64 80
  store i32 0, ptr %i.jh, align 8, !tbaa !46
  %i.ji = getelementptr i8, ptr %.055, i64 76
  store i32 0, ptr %i.ji, align 4, !tbaa !47
  %i.jj = getelementptr i8, ptr %.055, i64 8      ; 5 uses
  %i.jk = load ptr, ptr %i.jj, align 8, !tbaa !151
  %.not64 = icmp eq ptr %i.jk, null
  %i.jl = load i64, ptr %i.ix, align 8, !tbaa !44 ; 2 uses
  br i1 %.not64, label %bb.cw, label %bb.cb

bb.cb:                                            ; preds = %bb.ca
  %i.jm = call i64 @rb_str_encode_ospath(i64 noundef %i.jl) #28 ; 2 uses
  %i.jn = load i32, ptr %i.e, align 4, !tbaa !7   ; 5 uses
  %i.jo = and i32 %i.jn, 128
  %.not.i78 = icmp eq i32 %i.jo, 0
  br i1 %.not.i78, label %bb.cd, label %bb.cc

bb.cc:                                            ; preds = %bb.cb
  %i.jp = load i64, ptr @rb_eArgError, align 8, !tbaa !13
  call void (i64, ptr, ...) @rb_raise(i64 noundef %i.jp, ptr noundef nonnull @.str.210) #30
  unreachable

bb.cd:                                            ; preds = %bb.cb
  %i.jq = and i32 %i.jn, 3                        ; 2 uses
  %i.jr = and i32 %i.jn, 1024
  %.not9.i = icmp eq i32 %i.jr, 0
  br i1 %.not9.i, label %bb.cg, label %bb.ce

bb.ce:                                            ; preds = %bb.cd
  switch i32 %i.jq, label %default.unreachable [
    i32 1, label %rb_io_oflags_modestr.exit
    i32 2, label %bb.cf
    i32 0, label %bb.ci
    i32 3, label %bb.ch
  ]

bb.cf:                                            ; preds = %bb.ce
  br label %rb_io_oflags_modestr.exit

bb.cg:                                            ; preds = %bb.cd
  switch i32 %i.jq, label %default.unreachable [
    i32 0, label %bb.ci
    i32 1, label %rb_io_oflags_modestr.exit
    i32 2, label %bb.cj
    i32 3, label %bb.ch
  ]

bb.ch:                                            ; preds = %bb.cg, %bb.ce
  %i.js = load i64, ptr @rb_eArgError, align 8, !tbaa !13
  call void (i64, ptr, ...) @rb_raise(i64 noundef %i.js, ptr noundef nonnull @.str.213, i32 noundef %i.jn) #30
  unreachable

bb.ci:                                            ; preds = %bb.cg, %bb.ce
  br label %rb_io_oflags_modestr.exit

bb.cj:                                            ; preds = %bb.cg
  %i.jt = and i32 %i.jn, 512
  %.not10.i = icmp eq i32 %i.jt, 0
  %.str.216..str.215.i = select i1 %.not10.i, ptr @.str.216, ptr @.str.215
  br label %rb_io_oflags_modestr.exit

rb_io_oflags_modestr.exit:                        ; preds = %bb.ce, %bb.cf, %bb.cg, %bb.ci, %bb.cj
  %.0.i79 = phi ptr [ @.str.24, %bb.cg ], [ @.str.212, %bb.cf ], [ @.str.214, %bb.ci ], [ @.str.211, %bb.ce ], [ %.str.216..str.215.i, %bb.cj ]
  %i.ju = load ptr, ptr %i.jj, align 8, !tbaa !151
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i64 %i.jm, ptr %i.a, align 8, !tbaa !13
  %i.jv = inttoptr i64 %i.jm to ptr               ; 2 uses
  %i.jw = load i64, ptr %i.jv, align 8, !tbaa !16
  %i.jx = and i64 %i.jw, 8192
  %.not.i.i80 = icmp eq i64 %i.jx, 0
  %i.jy = getelementptr i8, ptr %i.jv, i64 24     ; 2 uses
  br i1 %.not.i.i80, label %RSTRING_PTR.exit.i81, label %bb.ck

bb.ck:                                            ; preds = %rb_io_oflags_modestr.exit
  %i.jz = load ptr, ptr %i.jy, align 8, !tbaa !86
  br label %RSTRING_PTR.exit.i81

RSTRING_PTR.exit.i81:                             ; preds = %bb.ck, %rb_io_oflags_modestr.exit
  %i.ka = phi ptr [ %i.jz, %bb.ck ], [ %i.jy, %rb_io_oflags_modestr.exit ]
  %i.kb = call ptr @freopen(ptr noundef %i.ka, ptr noundef nonnull %.0.i79, ptr noundef %i.ju) #28
  %.not.i82 = icmp eq ptr %i.kb, null
  br i1 %.not.i82, label %rb_freopen.exit, label %rb_freopen.exit.thread

rb_freopen.exit.thread:                           ; preds = %RSTRING_PTR.exit.i81
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %bb.cm

rb_freopen.exit:                                  ; preds = %RSTRING_PTR.exit.i81
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #28
  store ptr %i.a, ptr %i.b, align 8, !tbaa !137
  call void asm sideeffect "", "*m,~{dirflag},~{fpsr},~{flags}"(ptr nonnull elementtype(ptr) %i.b) #28, !srcloc !225
  %i.kc = load ptr, ptr %i.b, align 8, !tbaa !137
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #28
  %i.kd = load volatile i64, ptr %i.kc, align 8, !tbaa !13 ; 0 uses
  %i.ke = call ptr @rb_errno_ptr() #28
  %i.kf = load i32, ptr %i.ke, align 4, !tbaa !7  ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %.not66 = icmp eq i32 %i.kf, 0
  br i1 %.not66, label %bb.cm, label %bb.cl

bb.cl:                                            ; preds = %rb_freopen.exit
  %i.kg = load i64, ptr %i.ix, align 8, !tbaa !44
  call void @rb_syserr_fail_path_in(ptr noundef nonnull @__func__.rb_io_reopen, i32 noundef %i.kf, i64 noundef %i.kg) #30
  unreachable

bb.cm:                                            ; preds = %rb_freopen.exit.thread, %rb_freopen.exit
  %i.kh = load ptr, ptr %i.jj, align 8, !tbaa !151
  %i.ki = call i32 @fileno(ptr noundef %i.kh) #28 ; 8 uses
  store i32 %i.ki, ptr %i.iy, align 8, !tbaa !20
  call void @rb_maygvl_fd_fix_cloexec(i32 noundef %i.ki)
  %i.kj = load i32, ptr @max_file_descriptor, align 4, !tbaa !7 ; 2 uses
  %i.kk = icmp sgt i32 %i.ki, -1
  %.not.i.i84 = icmp ugt i32 %i.ki, %i.kj
  %or.cond.i.i85 = select i1 %i.kk, i1 %.not.i.i84, i1 false
  br i1 %or.cond.i.i85, label %bb.cn, label %rb_fd_fix_cloexec.exit

bb.cn:                                            ; preds = %bb.cm
  %i.kl = call i32 (i32, i32, ...) @fcntl(i32 noundef %i.ki, i32 noundef 3) #28
  %i.km = icmp eq i32 %i.kl, -1
  br i1 %i.km, label %bb.co, label %.lr.ph.i.i88.preheader

.lr.ph.i.i88.preheader:                           ; preds = %bb.co, %bb.cn
  br label %.lr.ph.i.i88

bb.co:                                            ; preds = %bb.cn
  %i.kn = call ptr @rb_errno_ptr() #28
  %i.ko = load i32, ptr %i.kn, align 4, !tbaa !7
  %i.kp = icmp eq i32 %i.ko, 9
  br i1 %i.kp, label %bb.cp, label %.lr.ph.i.i88.preheader

bb.cp:                                            ; preds = %bb.co
  call void (ptr, ...) @rb_bug(ptr noundef nonnull @.str, i32 noundef %i.ki) #29
  unreachable

.lr.ph.i.i88:                                     ; preds = %.lr.ph.i.i88.preheader, %.lr.ph.i.i88
  %.013.i.i89 = phi i32 [ %i.kr, %.lr.ph.i.i88 ], [ %i.kj, %.lr.ph.i.i88.preheader ]
  %i.kq = cmpxchg volatile ptr @max_file_descriptor, i32 %.013.i.i89, i32 %i.ki seq_cst seq_cst, align 4
  %i.kr = extractvalue { i32, i1 } %i.kq, 0       ; 2 uses
  %i.ks = icmp ult i32 %i.kr, %i.ki
  br i1 %i.ks, label %.lr.ph.i.i88, label %rb_fd_fix_cloexec.exit, !llvm.loop !11

rb_fd_fix_cloexec.exit:                           ; preds = %.lr.ph.i.i88, %bb.cm
  %i.kt = load ptr, ptr %i.jj, align 8, !tbaa !151 ; 3 uses
  %i.ku = load ptr, ptr @stderr, align 8, !tbaa !158
  %i.kv = icmp eq ptr %i.kt, %i.ku
  br i1 %i.kv, label %bb.cq, label %bb.cs

bb.cq:                                            ; preds = %rb_fd_fix_cloexec.exit
  %i.kw = call i32 @setvbuf(ptr noundef %i.kt, ptr noundef null, i32 noundef 2, i64 noundef 8192) #28
  %.not69 = icmp eq i32 %i.kw, 0
  br i1 %.not69, label %io_reopen.exit.thread, label %bb.cr

bb.cr:                                            ; preds = %bb.cq
  %i.kx = load i64, ptr %i.ix, align 8, !tbaa !44
  call void (ptr, ...) @rb_warn(ptr noundef nonnull @.str.257, i64 noundef %i.kx) #34
  br label %io_reopen.exit.thread

bb.cs:                                            ; preds = %rb_fd_fix_cloexec.exit
  %i.ky = load ptr, ptr @stdout, align 8, !tbaa !158
  %i.kz = icmp eq ptr %i.kt, %i.ky
  br i1 %i.kz, label %bb.ct, label %io_reopen.exit.thread
end_hunk_6
begin_hunk_7_@maygvl_copy_stream_read:bb.a
  store i32 %i.bp, ptr %i.bq, align 4, !tbaa !378
  br label %.loopexit

.loopexit:                                        ; preds = %bb.f, %maygvl_read.exit, %maygvl_copy_stream_wait_read.exit.thread, %bb.w, %bb.v
  %.2 = phi i64 [ %.025, %bb.v ], [ %.025, %bb.w ], [ %i.bk, %maygvl_copy_stream_wait_read.exit.thread ], [ %.025, %bb.f ], [ 0, %maygvl_read.exit ]
  ret i64 %.2
}

; Function Attrs: nofree
declare noundef i64 @pread(i32 noundef, ptr noundef captures(none), i64 noundef, i64 noundef) local_unnamed_addr #5

declare i32 @rb_thread_interrupted(i64 noundef) local_unnamed_addr #1

declare void @rb_thread_execute_interrupts(i64 noundef) local_unnamed_addr #1

; Function Attrs: nounwind sspstrong uwtable
define internal noalias noundef ptr @exec_interrupts(ptr noundef %0) #0 {
bb.a:
  %i.a = ptrtoint ptr %0 to i64
  tail call void @rb_thread_execute_interrupts(i64 noundef %i.a) #28
  ret ptr null
}

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc range(i32 -2147483648, 1) i32 @nogvl_copy_stream_wait_write(ptr nofree noundef captures(none) %0) unnamed_addr #0 {
bb.a:
  %1 = alloca %struct.fiber_scheduler_wait_for_arguments, align 8 ; 7 uses
  %2 = alloca %struct.pollfd, align 4             ; 5 uses
  %i.a = getelementptr i8, ptr %0, i64 80         ; 4 uses
  %i.b = getelementptr i8, ptr %0, i64 40         ; 2 uses
  %i.c = load i64, ptr %i.a, align 8, !tbaa !374
  %i.d = load ptr, ptr %i.b, align 8, !tbaa !379  ; 2 uses
  %i.e = tail call i64 @rb_fiber_scheduler_current_for_thread(i64 noundef %i.c) #28 ; 2 uses
  %.not.i20 = icmp eq i64 %i.e, 4
  br i1 %.not.i20, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 4
  br label %bb.b

._crit_edge:                                      ; preds = %maygvl_copy_stream_continue_p.exit, %bb.a
  %.lcssa16 = phi ptr [ %i.d, %bb.a ], [ %i.y, %maygvl_copy_stream_continue_p.exit ]
  %.lcssa = phi i64 [ %i.e, %bb.a ], [ %i.z, %maygvl_copy_stream_continue_p.exit ]
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #28
  store i64 %.lcssa, ptr %1, align 8, !tbaa !312
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 8
  store ptr %.lcssa16, ptr %i.g, align 8, !tbaa !315
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 16
  store i16 4, ptr %i.h, align 8, !tbaa !316
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 18
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 2 dereferenceable(14) %i.i, i8 0, i64 14, i1 false)
  %i.j = call ptr @rb_thread_call_with_gvl(ptr noundef nonnull @fiber_scheduler_wait_for, ptr noundef nonnull %1) #28 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #28
  br label %.critedge9

bb.b:                                             ; preds = %.lr.ph, %maygvl_copy_stream_continue_p.exit
  %i.k = phi ptr [ %i.d, %.lr.ph ], [ %i.y, %maygvl_copy_stream_continue_p.exit ]
  %i.l = getelementptr i8, ptr %i.k, i64 16
  %i.m = load i32, ptr %i.l, align 8, !tbaa !20   ; 2 uses
  %i.n = icmp eq i32 %i.m, -1
  br i1 %i.n, label %.critedge9, label %nogvl_wait_for.exit

nogvl_wait_for.exit:                              ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #28
  store i32 %i.m, ptr %2, align 4, !tbaa !318
  store i16 4, ptr %i.f, align 4, !tbaa !320
  %i.o = call i32 @poll(ptr noundef nonnull %2, i64 noundef 1, i32 noundef -1) #28 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #28
  %i.p = icmp slt i32 %i.o, 0
  br i1 %i.p, label %bb.c, label %.critedge9

bb.c:                                             ; preds = %nogvl_wait_for.exit
  %i.q = call ptr @rb_errno_ptr() #28
  %i.r = load i32, ptr %i.q, align 4, !tbaa !7
  switch i32 %i.r, label %.critedge [
    i32 4, label %bb.d
    i32 85, label %bb.d
  ]

bb.d:                                             ; preds = %bb.c, %bb.c
  %i.s = load i64, ptr %i.a, align 8, !tbaa !374
  %i.t = call i32 @rb_thread_interrupted(i64 noundef %i.s) #28
  %.not.i10 = icmp eq i32 %i.t, 0
  br i1 %.not.i10, label %maygvl_copy_stream_continue_p.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.u = load i64, ptr %i.a, align 8, !tbaa !374
  %i.v = inttoptr i64 %i.u to ptr
  %i.w = call ptr @rb_thread_call_with_gvl(ptr noundef nonnull @exec_interrupts, ptr noundef %i.v) #28 ; 0 uses
  br label %maygvl_copy_stream_continue_p.exit

maygvl_copy_stream_continue_p.exit:               ; preds = %bb.d, %bb.e
  %i.x = load i64, ptr %i.a, align 8, !tbaa !374
  %i.y = load ptr, ptr %i.b, align 8, !tbaa !379  ; 2 uses
  %i.z = call i64 @rb_fiber_scheduler_current_for_thread(i64 noundef %i.x) #28 ; 2 uses
  %.not.i = icmp eq i64 %i.z, 4
  br i1 %.not.i, label %bb.b, label %._crit_edge, !llvm.loop !384

.critedge:                                        ; preds = %bb.c
  %i.aa = getelementptr i8, ptr %0, i64 64
  store ptr @.str.250, ptr %i.aa, align 8, !tbaa !377
  %i.ab = call ptr @rb_errno_ptr() #28
  %i.ac = load i32, ptr %i.ab, align 4, !tbaa !7
  %i.ad = getelementptr i8, ptr %0, i64 52
  store i32 %i.ac, ptr %i.ad, align 4, !tbaa !378
  br label %.critedge9

.critedge9:                                       ; preds = %bb.b, %nogvl_wait_for.exit, %._crit_edge, %.critedge
  %.0 = phi i32 [ %i.o, %.critedge ], [ 0, %._crit_edge ], [ 0, %nogvl_wait_for.exit ], [ 0, %bb.b ]
  ret i32 %.0
}

declare i64 @copy_file_range(i32 noundef, ptr noundef, i32 noundef, ptr noundef, i64 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare i64 @sendfile(i32 noundef, i32 noundef, ptr noundef, i64 noundef) local_unnamed_addr #4

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc noundef i64 @io_initialize(i64 noundef returned %0, i64 noundef %1, i64 noundef %2, i64 noundef %3) unnamed_addr #0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 3 uses
  %i.b = alloca i32, align 4                      ; 3 uses
  %i.c = alloca i32, align 4                      ; 4 uses
  %4 = alloca %struct.rb_io_encoding, align 8     ; 4 uses
  %i.d = alloca i64, align 8                      ; 3 uses
  %i.e = alloca i64, align 8                      ; 8 uses
  store i64 %2, ptr %i.a, align 8, !tbaa !13
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #28
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #28
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #28
  call void @rb_io_extract_modeenc(ptr noundef nonnull %i.a, ptr noundef null, i64 noundef %3, ptr noundef nonnull %i.b, ptr noundef nonnull %i.c, ptr noundef nonnull %4)
  %i.f = trunc i64 %1 to i1
  br i1 %i.f, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.g = tail call i64 @rb_fix2int(i64 noundef %1) #28
  br label %rb_num2int_inline.exit

bb.c:                                             ; preds = %bb.a
  %i.h = tail call i64 @rb_num2int(i64 noundef %1) #28
  br label %rb_num2int_inline.exit

rb_num2int_inline.exit:                           ; preds = %bb.b, %bb.c
  %.0.i = phi i64 [ %i.g, %bb.b ], [ %i.h, %bb.c ]
  %i.i = trunc i64 %.0.i to i32                   ; 12 uses
  %i.j = tail call i32 @rb_reserved_fd_p(i32 noundef %i.i) #28
  %.not = icmp eq i32 %i.j, 0
  br i1 %.not, label %bb.e, label %bb.d

bb.d:                                             ; preds = %rb_num2int_inline.exit
  %i.k = load i64, ptr @rb_eArgError, align 8, !tbaa !13
  tail call void (i64, ptr, ...) @rb_raise(i64 noundef %i.k, ptr noundef nonnull @.str.255) #30
  unreachable

bb.e:                                             ; preds = %rb_num2int_inline.exit
  %i.l = tail call i32 (i32, i32, ...) @fcntl(i32 noundef %i.i, i32 noundef 3) #28 ; 6 uses
  %i.m = icmp eq i32 %i.l, -1
  br i1 %i.m, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.n = tail call ptr @rb_errno_ptr() #28
  %i.o = load i32, ptr %i.n, align 4, !tbaa !7
  tail call void @rb_syserr_fail(i32 noundef %i.o, ptr noundef null) #30
  unreachable

bb.g:                                             ; preds = %bb.e
  %i.p = load i32, ptr @max_file_descriptor, align 4, !tbaa !7 ; 2 uses
  %i.q = icmp sgt i32 %i.i, -1
  %.not.i = icmp ult i32 %i.p, %i.i
  %or.cond.i = select i1 %i.q, i1 %.not.i, i1 false
  br i1 %or.cond.i, label %bb.h, label %rb_update_max_fd.exit

bb.h:                                             ; preds = %bb.g
  %i.r = tail call i32 (i32, i32, ...) @fcntl(i32 noundef %i.i, i32 noundef 3) #28
  %i.s = icmp eq i32 %i.r, -1
  br i1 %i.s, label %bb.i, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %bb.i, %bb.h
  br label %.lr.ph.i

bb.i:                                             ; preds = %bb.h
  %i.t = tail call ptr @rb_errno_ptr() #28
  %i.u = load i32, ptr %i.t, align 4, !tbaa !7
  %i.v = icmp eq i32 %i.u, 9
  br i1 %i.v, label %bb.j, label %.lr.ph.i.preheader

bb.j:                                             ; preds = %bb.i
  tail call void (ptr, ...) @rb_bug(ptr noundef nonnull @.str, i32 noundef %i.i) #29
  unreachable

.lr.ph.i:                                         ; preds = %.lr.ph.i.preheader, %.lr.ph.i
  %.013.i = phi i32 [ %i.x, %.lr.ph.i ], [ %i.p, %.lr.ph.i.preheader ]
  %i.w = cmpxchg volatile ptr @max_file_descriptor, i32 %.013.i, i32 %i.i seq_cst seq_cst, align 4
  %i.x = extractvalue { i32, i1 } %i.w, 0         ; 2 uses
  %i.y = icmp ult i32 %i.x, %i.i
  br i1 %i.y, label %.lr.ph.i, label %rb_update_max_fd.exit, !llvm.loop !11

rb_update_max_fd.exit:                            ; preds = %.lr.ph.i, %bb.g
  %i.z = and i32 %i.l, 3
  %i.aa = zext nneg i32 %i.z to i64
  %switch.gep = getelementptr inbounds nuw [4 x i8], ptr @switch.table.io_initialize, i64 %i.aa
  %switch.load = load i32, ptr %switch.gep, align 4 ; 2 uses
  %i.ab = load i64, ptr %i.a, align 8, !tbaa !13
  %i.ac = icmp eq i64 %i.ab, 4
  br i1 %i.ac, label %bb.k, label %bb.l

bb.k:                                             ; preds = %rb_update_max_fd.exit
  %i.ad = shl i32 %i.l, 2
  %i.ae = and i32 %i.ad, 2048
  %i.af = lshr i32 %i.l, 4
  %i.ag = and i32 %i.af, 64
  %spec.select.i = or disjoint i32 %i.ae, %i.ag
  %i.ah = shl i32 %i.l, 1
  %i.ai = and i32 %i.ah, 128
  %.2.i = or disjoint i32 %spec.select.i, %i.ai
  %i.aj = shl i32 %i.l, 3
  %i.ak = and i32 %i.aj, 1024
  %.3.i = or disjoint i32 %.2.i, %i.ak
  %.4.i = or disjoint i32 %.3.i, %switch.load
  br label %bb.n

bb.l:                                             ; preds = %rb_update_max_fd.exit
  %i.al = load i32, ptr %i.c, align 4, !tbaa !7   ; 2 uses
  %i.am = xor i32 %switch.load, 3
  %i.an = and i32 %i.am, %i.al
  %.not33 = icmp eq i32 %i.an, 0
  br i1 %.not33, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #28
  store i64 45, ptr %i.d, align 8, !tbaa !13
  %i.ao = load i64, ptr @rb_eSystemCallError, align 8, !tbaa !13
  %i.ap = call i64 @rb_class_new_instance(i32 noundef 1, ptr noundef nonnull %i.d, i64 noundef %i.ao) #28
  call void @rb_exc_raise(i64 noundef %i.ap) #30
  unreachable

bb.n:                                             ; preds = %bb.l, %bb.k
  %i.aq = phi i32 [ %i.al, %bb.l ], [ %.4.i, %bb.k ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #28
  store i64 4, ptr %i.e, align 8, !tbaa !13
  %i.ar = icmp eq i64 %3, 4
  br i1 %i.ar, label %bb.q, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.as = load i64, ptr @sym_autoclose, align 8, !tbaa !13
  %i.at = tail call i64 @rb_hash_aref(i64 noundef %3, i64 noundef %i.as) #28
  %i.au = icmp eq i64 %i.at, 0
  %i.av = or i32 %i.aq, 65536
  %spec.select = select i1 %i.au, i32 %i.av, i32 %i.aq ; 2 uses
  %i.aw = tail call i64 @rb_id2sym(i64 noundef 3681) #28
  %i.ax = tail call i64 @rb_hash_aref(i64 noundef %3, i64 noundef %i.aw) #28 ; 2 uses
  store i64 %i.ax, ptr %i.e, align 8, !tbaa !13
  %i.ay = icmp eq i64 %i.ax, 4
  br i1 %i.ay, label %bb.q, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.az = call i64 @rb_string_value(ptr noundef nonnull %i.e) #28 ; 0 uses
  %i.ba = load i64, ptr %i.e, align 8, !tbaa !13
  %i.bb = call i64 @rb_str_new_frozen(i64 noundef %i.ba) #28
  store i64 %i.bb, ptr %i.e, align 8, !tbaa !13
  br label %bb.q

bb.q:                                             ; preds = %bb.n, %bb.p, %bb.o
  %i.bc = phi i32 [ %i.aq, %bb.n ], [ %spec.select, %bb.p ], [ %spec.select, %bb.o ] ; 2 uses
  %i.bd = call ptr @rb_io_make_open_file(i64 noundef %0) ; 16 uses
  store i64 %0, ptr %i.bd, align 8, !tbaa !42
  %i.be = getelementptr i8, ptr %i.bd, i64 16     ; 2 uses
  store i32 %i.i, ptr %i.be, align 8, !tbaa !20
  %i.bf = getelementptr i8, ptr %i.bd, i64 20     ; 3 uses
  store i32 %i.bc, ptr %i.bf, align 4, !tbaa !39
  %i.bg = getelementptr i8, ptr %i.bd, i64 96
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.bg, ptr noundef nonnull align 8 dereferenceable(32) %4, i64 32, i1 false), !tbaa.struct !152
  %i.bh = load i64, ptr %i.e, align 8, !tbaa !13
  %i.bi = getelementptr i8, ptr %i.bd, i64 32
  store i64 %i.bh, ptr %i.bi, align 8, !tbaa !44
  %i.bj = getelementptr i8, ptr %i.bd, i64 200
  store i64 4, ptr %i.bj, align 8, !tbaa !38
  %i.bk = getelementptr i8, ptr %i.bd, i64 208    ; 3 uses
  %i.bl = getelementptr i8, ptr %i.bd, i64 216
  store ptr %i.bk, ptr %i.bl, align 8, !tbaa !167
  store ptr %i.bk, ptr %i.bk, align 8, !tbaa !168
  %i.bm = getelementptr i8, ptr %i.bd, i64 224
  store ptr null, ptr %i.bm, align 8, !tbaa !169
  %i.bn = getelementptr i8, ptr %i.bd, i64 232
  store i64 4, ptr %i.bn, align 8, !tbaa !170
  %i.bo = load ptr, ptr @ruby_current_vm_ptr, align 8, !tbaa !99
  %i.bp = getelementptr i8, ptr %i.bo, i64 496
  %i.bq = load i64, ptr %i.bp, align 8, !tbaa !101
  %i.br = getelementptr i8, ptr %i.bd, i64 240
  store i64 %i.bq, ptr %i.br, align 8, !tbaa !122
  %i.bs = getelementptr i8, ptr %i.bd, i64 128    ; 2 uses
  %i.bt = load ptr, ptr %i.bs, align 8, !tbaa !48 ; 2 uses
  %.not.i.i = icmp eq ptr %i.bt, null
  br i1 %.not.i.i, label %bb.s, label %bb.r

bb.r:                                             ; preds = %bb.q
  call void @rb_econv_close(ptr noundef nonnull %i.bt) #28
  store ptr null, ptr %i.bs, align 8, !tbaa !48
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %bb.q
  %i.bu = getelementptr i8, ptr %i.bd, i64 136    ; 2 uses
  %i.bv = load ptr, ptr %i.bu, align 8, !tbaa !49 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.bv, null
  br i1 %.not.i.i.i, label %clear_readconv.exit.i, label %bb.t

bb.t:                                             ; preds = %bb.s
  call void @ruby_xfree(ptr noundef nonnull %i.bv) #28
  store ptr null, ptr %i.bu, align 8, !tbaa !49
  br label %clear_readconv.exit.i

clear_readconv.exit.i:                            ; preds = %bb.t, %bb.s
  %i.bw = getelementptr i8, ptr %i.bd, i64 160    ; 2 uses
  %i.bx = load ptr, ptr %i.bw, align 8, !tbaa !50 ; 2 uses
  %.not.i2.i = icmp eq ptr %i.bx, null
  br i1 %.not.i2.i, label %clear_codeconv.exit, label %bb.u

bb.u:                                             ; preds = %clear_readconv.exit.i
  call void @rb_econv_close(ptr noundef nonnull %i.bx) #28
  store ptr null, ptr %i.bw, align 8, !tbaa !50
  br label %clear_codeconv.exit

clear_codeconv.exit:                              ; preds = %clear_readconv.exit.i, %bb.u
  %i.by = getelementptr i8, ptr %i.bd, i64 176
  store i32 0, ptr %i.by, align 8, !tbaa !51
  %i.bz = load i32, ptr %i.be, align 8, !tbaa !20
  %i.ca = call i32 @isatty(i32 noundef %i.bz) #28
  %.not.i36 = icmp eq i32 %i.ca, 0
  br i1 %.not.i36, label %io_check_tty.exit, label %bb.v

bb.v:                                             ; preds = %clear_codeconv.exit
  %i.cb = load i32, ptr %i.bf, align 4, !tbaa !39
  %i.cc = or i32 %i.cb, 48
  store i32 %i.cc, ptr %i.bf, align 4, !tbaa !39
  br label %io_check_tty.exit

io_check_tty.exit:                                ; preds = %clear_codeconv.exit, %bb.v
  %i.cd = load ptr, ptr @stdin, align 8, !tbaa !158
  %i.ce = call i32 @fileno(ptr noundef %i.cd) #28
  %i.cf = icmp eq i32 %i.ce, %i.i
  br i1 %i.cf, label %.sink.split, label %bb.w

bb.w:                                             ; preds = %io_check_tty.exit
  %i.cg = load ptr, ptr @stdout, align 8, !tbaa !158
  %i.ch = call i32 @fileno(ptr noundef %i.cg) #28
  %i.ci = icmp eq i32 %i.ch, %i.i
  br i1 %i.ci, label %.sink.split, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.cj = load ptr, ptr @stderr, align 8, !tbaa !158
  %i.ck = call i32 @fileno(ptr noundef %i.cj) #28
  %i.cl = icmp eq i32 %i.ck, %i.i
  br i1 %i.cl, label %.sink.split, label %bb.y

.sink.split:                                      ; preds = %bb.x, %bb.w, %io_check_tty.exit
  %stdout.sink = phi ptr [ @stdin, %io_check_tty.exit ], [ @stdout, %bb.w ], [ @stderr, %bb.x ]
  %i.cm = load ptr, ptr %stdout.sink, align 8, !tbaa !158
  %i.cn = getelementptr i8, ptr %i.bd, i64 8
  store ptr %i.cm, ptr %i.cn, align 8, !tbaa !151
  br label %bb.y

bb.y:                                             ; preds = %.sink.split, %bb.x
  %i.co = and i32 %i.bc, 1048576
  %.not34 = icmp eq i32 %i.co, 0
  br i1 %.not34, label %bb.aa, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.cp = call fastcc ptr @io_set_encoding_by_bom(i64 noundef %0) ; 0 uses
  br label %bb.aa

bb.aa:                                            ; preds = %bb.z, %bb.y
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #28
  ret i64 %0
}

declare i32 @rb_reserved_fd_p(i32 noundef) local_unnamed_addr #1

declare i64 @rb_str_equal(i64 noundef, i64 noundef) local_unnamed_addr #1

declare i64 @rb_str_frozen_bare_string(i64 noundef) local_unnamed_addr #1

declare i64 @rb_obj_init_copy(i64 noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: allocsize(0,1)
declare noalias nonnull ptr @ruby_xcalloc(i64 noundef, i64 noundef) local_unnamed_addr #19

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc noundef nonnull ptr @rb_io_fmode_modestr(i32 noundef %0) unnamed_addr #0 {
bb.a:
  %i.a = and i32 %0, 64
  %.not = icmp eq i32 %i.a, 0
  %i.b = and i32 %0, 3                            ; 2 uses
  br i1 %.not, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = icmp eq i32 %i.b, 3
  %i.d = and i32 %0, 4
  %.not40 = icmp eq i32 %i.d, 0                   ; 2 uses
  %i.e = and i32 %0, 4096
  %.not41 = icmp eq i32 %i.e, 0                   ; 2 uses
  br i1 %i.c, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.f = select i1 %.not41, ptr @.str.212, ptr @.str.259
  %i.g = select i1 %.not40, ptr %i.f, ptr @.str.258
  br label %bb.p

bb.d:                                             ; preds = %bb.b
  %i.h = select i1 %.not41, ptr @.str.211, ptr @.str.261
  %i.i = select i1 %.not40, ptr %i.h, ptr @.str.260
  br label %bb.p

bb.e:                                             ; preds = %bb.a
  switch i32 %i.b, label %default.unreachable42 [
    i32 1, label %bb.g
    i32 2, label %bb.h
    i32 3, label %bb.k
    i32 0, label %bb.f
  ]

default.unreachable42:                            ; preds = %bb.e
end_hunk_7

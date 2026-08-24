Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/linux/original/file?download=true
inline.NumInlined: 55
inline.NumDeleted: 10
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.guid_t = type { [16 x i8] }
%struct.finfo = type { %struct.efi_file_info_t, [256 x i16] }
%struct.efi_file_info_t = type { i64, i64, i64, %struct.efi_time_t, %struct.efi_time_t, %struct.efi_time_t, i64, [0 x i16] }
%struct.efi_time_t = type { i16, i8, i8, i8, i8, i8, i8, i32, i16, i8, i8 }

@efi_nochunk = external hidden local_unnamed_addr global i8, align 1
@builtin_cmdline = internal constant [1 x i16] zeroinitializer, align 2
@.str = private unnamed_addr constant [46 x i8] c"\013ERROR: Failed to allocate memory for files\0A\00", align 1
@.str.1 = private unnamed_addr constant [30 x i8] c"\013ERROR: Failed to read file\0A\00", align 1
@efi_is64 = external hidden local_unnamed_addr constant i8, align 1
@__const.efi_open_device_path.text_to_dp_guid = private unnamed_addr constant %struct.guid_t { [16 x i8] c"!\9A\C9\05\0F\C7\D2J\8A_5\DF3C\F5\1E" }, align 4
@efi_open_device_path.text_to_dp = internal global ptr null, align 8
@efi_system_table = external hidden local_unnamed_addr global ptr, align 8
@.str.2 = private unnamed_addr constant [55 x i8] c"\014WARNING: Unexpected device path node type: (%x, %x)\0A\00", align 1
@.str.3 = private unnamed_addr constant [32 x i8] c"\013ERROR: Failed to open volume\0A\00", align 1
@__const.efi_open_volume.fs_proto = private unnamed_addr constant %struct.guid_t { [16 x i8] c"\22[N\96Yd\D2\11\8E9\00\A0\C9ir;" }, align 4
@.str.4 = private unnamed_addr constant [36 x i8] c"\013ERROR: Failed to handle fs_proto\0A\00", align 1
@__const.efi_open_file.info_guid = private unnamed_addr constant %struct.guid_t { [16 x i8] c"\92nW\09?m\D2\11\8E9\00\A0\C9ir;" }, align 4
@.str.5 = private unnamed_addr constant [35 x i8] c"\013ERROR: Failed to open file: %ls\0A\00", align 1
@.str.6 = private unnamed_addr constant [34 x i8] c"\013ERROR: Failed to get file info\0A\00", align 1

; Function Attrs: noredzone nounwind optsize
define hidden i64 @handle_cmdline_files(ptr nofree noundef readonly captures(none) %0, ptr noundef %1, i32 noundef %2, i64 noundef %3, i64 noundef %4, ptr nofree noundef writeonly captures(address_is_null) %5, ptr nofree noundef writeonly captures(address_is_null) %6) local_unnamed_addr #0 {
bb.a:
  %7 = alloca %struct.guid_t, align 4             ; 9 uses
  %i.a = alloca ptr, align 8                      ; 14 uses
  %i.b = alloca i64, align 8                      ; 10 uses
  %i.c = alloca [3 x i64], align 16               ; 3 uses
  %i.d = alloca [3 x i64], align 16               ; 3 uses
  %i.e = alloca [3 x i64], align 16               ; 3 uses
  %8 = alloca %struct.guid_t, align 4             ; 5 uses
  %i.f = alloca ptr, align 8                      ; 7 uses
  %i.g = alloca [3 x i64], align 16               ; 3 uses
  %i.h = alloca [3 x i64], align 16               ; 3 uses
  %9 = alloca %struct.guid_t, align 4             ; 7 uses
  %10 = alloca %struct.guid_t, align 4            ; 9 uses
  %i.i = alloca ptr, align 8                      ; 9 uses
  %i.j = alloca ptr, align 8                      ; 8 uses
  %i.k = alloca ptr, align 8                      ; 9 uses
  %i.l = alloca [3 x i64], align 16               ; 3 uses
  %i.m = alloca [3 x i64], align 16               ; 3 uses
  %i.n = alloca [3 x i64], align 16               ; 3 uses
  %i.o = alloca [3 x i64], align 16               ; 3 uses
  %i.p = alloca [3 x i64], align 16               ; 3 uses
  %i.q = alloca ptr, align 8                      ; 8 uses
  %i.r = alloca i32, align 4                      ; 10 uses
  %i.s = alloca ptr, align 8                      ; 13 uses
  %i.t = alloca i64, align 8                      ; 10 uses
  %11 = alloca %struct.finfo, align 8             ; 13 uses
  %i.u = alloca i64, align 8                      ; 7 uses
  %i.v = alloca [3 x i64], align 16               ; 3 uses
  %i.w = alloca [3 x i64], align 16               ; 3 uses
  %i.x = alloca [3 x i64], align 16               ; 3 uses
  %i.y = alloca [3 x i64], align 16               ; 3 uses
  %i.z = alloca [3 x i64], align 16               ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q) #4
  %i.aa = load i8, ptr @efi_is64, align 1, !range !4, !noundef !5
  %i.ab = trunc nuw i8 %i.aa to i1                ; 9 uses
  br i1 %i.ab, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.ad = load ptr, ptr %i.ac, align 8
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 28
  %i.af = load i32, ptr %i.ae, align 4
  %i.ag = zext i32 %i.af to i64
  %i.ah = inttoptr i64 %i.ag to ptr
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.ai = phi ptr [ %i.ad, %bb.b ], [ %i.ah, %bb.c ]
  store ptr %i.ai, ptr %i.q, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.r) #4
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %.in = select i1 %i.ab, ptr %i.aj, ptr %i.ak
  %i.al = load i32, ptr %.in, align 8
  store i32 %i.al, ptr %i.r, align 4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.s) #4
  store ptr null, ptr %i.s, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.t) #4
  %i.am = icmp ne ptr %5, null
  %i.an = icmp ne ptr %6, null
  %or.cond = and i1 %i.am, %i.an
  br i1 %or.cond, label %bb.e, label %bb.ba

bb.e:                                             ; preds = %bb.d
  call void @efi_apply_loadoptions_quirk(ptr noundef nonnull %i.q, ptr noundef nonnull %i.r) #5
  %i.ao = load i32, ptr %i.r, align 4
  %i.ap = lshr i32 %i.ao, 1                       ; 2 uses
  store i32 %i.ap, ptr %i.r, align 4
  %i.aq = load i8, ptr @efi_nochunk, align 1, !range !4, !noundef !5
  %i.ar = trunc nuw i8 %i.aq to i1
  store i64 0, ptr %i.t, align 8
  %.not = icmp eq i32 %i.ap, 0
  br i1 %.not, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  store ptr @builtin_cmdline, ptr %i.q, align 8
  store i32 0, ptr %i.r, align 4
  br label %bb.g

bb.g:                                             ; preds = %bb.e, %bb.f
  %i.as = getelementptr inbounds nuw i8, ptr %11, i64 80 ; 11 uses
  %i.at = sdiv i32 %2, 2                          ; 2 uses
  %i.au = sext i32 %2 to i64
  %i.av = sext i32 %i.at to i64                   ; 2 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %i.k, i64 4
  %i.ax = getelementptr inbounds nuw i8, ptr %i.j, i64 4
  %i.ay = getelementptr inbounds nuw i8, ptr %i.s, i64 4 ; 2 uses
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.ba = getelementptr inbounds nuw i8, ptr %i.f, i64 4
  %i.bb = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  %i.bc = getelementptr inbounds nuw i8, ptr %11, i64 8
  %i.bd = icmp ult i64 %3, %4
  br label %bb.h

bb.h:                                             ; preds = %bb.av, %bb.g
  %.2 = phi i64 [ 0, %bb.g ], [ %i.hz, %bb.av ]   ; 12 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #4
  %i.be = load ptr, ptr %i.q, align 8             ; 3 uses
  %i.bf = load i32, ptr %i.r, align 4             ; 7 uses
  %i.bg = icmp slt i32 %i.at, %i.bf
  br i1 %i.bg, label %.lr.ph.i, label %.thread174

.lr.ph.i:                                         ; preds = %bb.h, %bb.i
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %bb.i ], [ %i.av, %bb.h ] ; 4 uses
  %12 = sub nsw i64 %indvars.iv.i, %i.av
  %i.bh = getelementptr inbounds [2 x i8], ptr %i.be, i64 %12
  %i.bi = call i32 @memcmp(ptr noundef %i.bh, ptr noundef %1, i64 noundef %i.au) #5
  %.not.i = icmp eq i32 %i.bi, 0
  br i1 %.not.i, label %.preheader.i, label %bb.i

.preheader.i:                                     ; preds = %.lr.ph.i
  %13 = trunc nsw i64 %indvars.iv.i to i32        ; 2 uses
  %i.bj = icmp sgt i32 %i.bf, %13
  br i1 %i.bj, label %.lr.ph54.i, label %.critedge.i

bb.i:                                             ; preds = %.lr.ph.i
  %indvars.iv.next.i = add nsw i64 %indvars.iv.i, 1 ; 2 uses
  %lftr.wideiv.i.a = trunc i64 %indvars.iv.next.i to i32
  %exitcond.not.i = icmp eq i32 %i.bf, %lftr.wideiv.i.a
  br i1 %exitcond.not.i, label %.thread174, label %.lr.ph.i, !llvm.loop !6

.lr.ph54.i:                                       ; preds = %.preheader.i, %.critedge2.i
  %indvars.iv74.i = phi i64 [ %indvars.iv.next75.i, %.critedge2.i ], [ %indvars.iv.i, %.preheader.i ] ; 3 uses
  %i.bk = getelementptr inbounds [2 x i8], ptr %i.be, i64 %indvars.iv74.i
  %i.bl = load i16, ptr %i.bk, align 2
  switch i16 %i.bl, label %.critedge.loopexit.i [
    i16 47, label %.critedge2.i
    i16 92, label %.critedge2.i
  ]

.critedge2.i:                                     ; preds = %.lr.ph54.i, %.lr.ph54.i
  %indvars.iv.next75.i = add nsw i64 %indvars.iv74.i, 1 ; 2 uses
  %lftr.wideiv77.i = trunc i64 %indvars.iv.next75.i to i32
  %exitcond78.not.i = icmp eq i32 %i.bf, %lftr.wideiv77.i
  br i1 %exitcond78.not.i, label %find_file_option.exit, label %.lr.ph54.i, !llvm.loop !8

.critedge.loopexit.i:                             ; preds = %.lr.ph54.i
  %i.bm = trunc nsw i64 %indvars.iv74.i to i32
  br label %.critedge.i

.critedge.i:                                      ; preds = %.critedge.loopexit.i, %.preheader.i
  %.1.lcssa.i = phi i32 [ %13, %.preheader.i ], [ %i.bm, %.critedge.loopexit.i ] ; 3 uses
  %i.bn = icmp slt i32 %.1.lcssa.i, %i.bf
  br i1 %i.bn, label %.lr.ph59.preheader.i, label %find_file_option.exit

.lr.ph59.preheader.i:                             ; preds = %.critedge.i
  %i.bo = sext i32 %.1.lcssa.i to i64
  %i.bp = sext i32 %i.bf to i64
  br label %.lr.ph59.i

.lr.ph59.i:                                       ; preds = %bb.j, %.lr.ph59.preheader.i
  %indvars.iv79.i = phi i64 [ %i.bo, %.lr.ph59.preheader.i ], [ %indvars.iv.next80.i, %bb.j ] ; 2 uses
  %i.bq = phi i32 [ 255, %.lr.ph59.preheader.i ], [ %i.bu, %bb.j ] ; 2 uses
  %.04157.i = phi ptr [ %i.as, %.lr.ph59.preheader.i ], [ %i.bt, %bb.j ] ; 5 uses
  %indvars.iv.next80.i = add nsw i64 %indvars.iv79.i, 1 ; 3 uses
  %i.br = getelementptr inbounds [2 x i8], ptr %i.be, i64 %indvars.iv79.i
  %i.bs = load i16, ptr %i.br, align 2            ; 2 uses
  switch i16 %i.bs, label %bb.j [
    i16 32, label %.thread.loopexit.i
    i16 10, label %.thread.loopexit.i
    i16 0, label %.thread.loopexit.i
  ]

bb.j:                                             ; preds = %.lr.ph59.i
  %i.bt = getelementptr inbounds nuw i8, ptr %.04157.i, i64 2 ; 2 uses
  store i16 %i.bs, ptr %.04157.i, align 2
  %i.bu = add nsw i32 %i.bq, -1
  %i.bv = icmp samesign ugt i32 %i.bq, 1
  %i.bw = icmp slt i64 %indvars.iv.next80.i, %i.bp
  %i.bx = select i1 %i.bv, i1 %i.bw, i1 false
  br i1 %i.bx, label %.lr.ph59.i, label %.thread.loopexit.i

.thread.loopexit.i:                               ; preds = %bb.j, %.lr.ph59.i, %.lr.ph59.i, %.lr.ph59.i
  %.041.lcssa.ph.i = phi ptr [ %.04157.i, %.lr.ph59.i ], [ %.04157.i, %.lr.ph59.i ], [ %i.bt, %bb.j ], [ %.04157.i, %.lr.ph59.i ]
  %i.by = trunc nsw i64 %indvars.iv.next80.i to i32
  br label %find_file_option.exit

find_file_option.exit:                            ; preds = %.critedge2.i, %.critedge.i, %.thread.loopexit.i
  %.041.lcssa.i = phi ptr [ %i.as, %.critedge.i ], [ %.041.lcssa.ph.i, %.thread.loopexit.i ], [ %i.as, %.critedge2.i ]
  %.3.i = phi i32 [ %.1.lcssa.i, %.critedge.i ], [ %i.by, %.thread.loopexit.i ], [ %i.bf, %.critedge2.i ] ; 4 uses
  store i16 0, ptr %.041.lcssa.i, align 2
  %.not104 = icmp eq i32 %.3.i, 0
  br i1 %.not104, label %.thread174, label %bb.k

bb.k:                                             ; preds = %find_file_option.exit
  %i.bz = load ptr, ptr %i.q, align 8
  %i.ca = sext i32 %.3.i to i64
  %i.cb = getelementptr inbounds [2 x i8], ptr %i.bz, i64 %i.ca
  store ptr %i.cb, ptr %i.q, align 8
  %i.cc = load i32, ptr %i.r, align 4
  %i.cd = sub i32 %i.cc, %.3.i
  store i32 %i.cd, ptr %i.r, align 4
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #4
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %9, ptr noundef nonnull align 4 dereferenceable(16) @__const.efi_open_device_path.text_to_dp_guid, i64 16, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #4
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %10, ptr noundef nonnull align 4 dereferenceable(16) @__const.efi_open_volume.fs_proto, i64 16, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i) #4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j) #4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k) #4
  %i.ce = load ptr, ptr @efi_open_device_path.text_to_dp, align 8 ; 3 uses
  %.not.i111 = icmp eq ptr %i.ce, null
  br i1 %.not.i111, label %bb.l, label %._crit_edge37.i

._crit_edge37.i:                                  ; preds = %bb.k
  br i1 %i.ab, label %bb.n, label %.thread31.i

bb.l:                                             ; preds = %bb.k
  br i1 %i.ab, label %bb.m, label %.thread

bb.m:                                             ; preds = %bb.l
  %i.cf = load ptr, ptr @efi_system_table, align 8
  %i.cg = getelementptr inbounds nuw i8, ptr %i.cf, i64 96
  %i.ch = load ptr, ptr %i.cg, align 8
  %i.ci = getelementptr inbounds nuw i8, ptr %i.ch, i64 320
  %i.cj = load ptr, ptr %i.ci, align 8
  %i.ck = call win64cc i64 %i.cj(ptr noundef nonnull %9, ptr noundef null, ptr noundef nonnull @efi_open_device_path.text_to_dp) #5, !inline_history !9
  %.not25.i = icmp eq i64 %i.ck, 0
  br i1 %.not25.i, label %._crit_edge294, label %efi_open_device_path.exit.thread

._crit_edge294:                                   ; preds = %bb.m
  %.pre295 = load ptr, ptr @efi_open_device_path.text_to_dp, align 8
  br label %bb.n

.thread:                                          ; preds = %bb.l
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l) #4
  %i.cl = load ptr, ptr @efi_system_table, align 8
  %i.cm = getelementptr inbounds nuw i8, ptr %i.cl, i64 60
  %i.cn = load i32, ptr %i.cm, align 4
  %i.co = zext i32 %i.cn to i64
  %i.cp = inttoptr i64 %i.co to ptr
  %i.cq = getelementptr inbounds nuw i8, ptr %i.cp, i64 172
  %i.cr = load i32, ptr %i.cq, align 4
  store i32 0, ptr getelementptr inbounds nuw (i8, ptr @efi_open_device_path.text_to_dp, i64 4), align 4
  %i.cs = call i64 (i32, ...) @__efi64_thunk(i32 noundef %i.cr, ptr noundef nonnull %9, ptr noundef null, ptr noundef nonnull @efi_open_device_path.text_to_dp, ptr noundef nonnull %i.l) #5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l) #4
  %i.ct = and i64 %i.cs, 4294967295
  %.not25.i132 = icmp eq i64 %i.ct, 0
  br i1 %.not25.i132, label %.thread..thread31.i_crit_edge, label %efi_open_device_path.exit.thread

.thread..thread31.i_crit_edge:                    ; preds = %.thread
  %.pre = load ptr, ptr @efi_open_device_path.text_to_dp, align 8
  br label %.thread31.i

bb.n:                                             ; preds = %._crit_edge294, %._crit_edge37.i
  %i.cu = phi ptr [ %.pre295, %._crit_edge294 ], [ %i.ce, %._crit_edge37.i ]
  %i.cv = getelementptr inbounds nuw i8, ptr %i.cu, i64 8
  %i.cw = load ptr, ptr %i.cv, align 8
  %i.cx = call win64cc ptr %i.cw(ptr noundef nonnull %i.as) #5, !inline_history !9
  store ptr %i.cx, ptr %i.i, align 8
  %i.cy = load ptr, ptr @efi_system_table, align 8
  %i.cz = getelementptr inbounds nuw i8, ptr %i.cy, i64 96
  %i.da = load ptr, ptr %i.cz, align 8
  %i.db = getelementptr inbounds nuw i8, ptr %i.da, i64 184
  %i.dc = load ptr, ptr %i.db, align 8
  %i.dd = call win64cc i64 %i.dc(ptr noundef nonnull %10, ptr noundef nonnull %i.i, ptr noundef nonnull %i.k) #5, !inline_history !9
  %.not26.i = icmp eq i64 %i.dd, 0
  br i1 %.not26.i, label %bb.o, label %efi_open_device_path.exit.thread

.thread31.i:                                      ; preds = %.thread..thread31.i_crit_edge, %._crit_edge37.i
  %i.de = phi ptr [ %.pre, %.thread..thread31.i_crit_edge ], [ %i.ce, %._crit_edge37.i ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m) #4
  %i.df = getelementptr inbounds nuw i8, ptr %i.de, i64 4
  %i.dg = load i32, ptr %i.df, align 4
  %i.dh = call i64 (i32, ...) @__efi64_thunk(i32 noundef %i.dg, ptr noundef nonnull %i.as, ptr noundef nonnull %i.m) #5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m) #4
  %i.di = inttoptr i64 %i.dh to ptr
  store ptr %i.di, ptr %i.i, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n) #4
  %i.dj = load ptr, ptr @efi_system_table, align 8
  %i.dk = getelementptr inbounds nuw i8, ptr %i.dj, i64 60
  %i.dl = load i32, ptr %i.dk, align 4
  %i.dm = zext i32 %i.dl to i64
  %i.dn = inttoptr i64 %i.dm to ptr
  %i.do = getelementptr inbounds nuw i8, ptr %i.dn, i64 104
  %i.dp = load i32, ptr %i.do, align 8
  store i32 0, ptr %i.aw, align 4
  %i.dq = call i64 (i32, ...) @__efi64_thunk(i32 noundef %i.dp, ptr noundef nonnull %10, ptr noundef nonnull %i.i, ptr noundef nonnull %i.k, ptr noundef nonnull %i.n) #5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n) #4
  %i.dr = and i64 %i.dq, 4294967295
  %.not2632.i = icmp eq i64 %i.dr, 0
  br i1 %.not2632.i, label %.thread33.i, label %efi_open_device_path.exit.thread

bb.o:                                             ; preds = %bb.n
  %i.ds = load ptr, ptr @efi_system_table, align 8
  %i.dt = getelementptr inbounds nuw i8, ptr %i.ds, i64 96
  %i.du = load ptr, ptr %i.dt, align 8
  %i.dv = getelementptr inbounds nuw i8, ptr %i.du, i64 152
  %i.dw = load ptr, ptr %i.dv, align 8
  %i.dx = load ptr, ptr %i.k, align 8
  %i.dy = call win64cc i64 %i.dw(ptr noundef %i.dx, ptr noundef nonnull %10, ptr noundef nonnull %i.j) #5, !inline_history !9
  br label %bb.p

.thread33.i:                                      ; preds = %.thread31.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o) #4
  %i.dz = load ptr, ptr @efi_system_table, align 8
  %i.ea = getelementptr inbounds nuw i8, ptr %i.dz, i64 60
  %i.eb = load i32, ptr %i.ea, align 4
  %i.ec = zext i32 %i.eb to i64
  %i.ed = inttoptr i64 %i.ec to ptr
  %i.ee = getelementptr inbounds nuw i8, ptr %i.ed, i64 88
  %i.ef = load i32, ptr %i.ee, align 8
  %i.eg = load ptr, ptr %i.k, align 8
  store i32 0, ptr %i.ax, align 4
  %i.eh = call i64 (i32, ...) @__efi64_thunk(i32 noundef %i.ef, ptr noundef %i.eg, ptr noundef nonnull %10, ptr noundef nonnull %i.j, ptr noundef nonnull %i.o) #5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o) #4
  %i.ei = trunc i64 %i.eh to i32                  ; 2 uses
  %i.ej = call noundef i32 @llvm.fshl.i32(i32 %i.ei, i32 %i.ei, i32 1)
  %i.ek = zext i32 %i.ej to i64                   ; 2 uses
  %i.el = call range(i64 0, -9223372034707292160) i64 @llvm.fshl.i64(i64 range(i64 0, 4294967296) %i.ek, i64 range(i64 0, 4294967296) %i.ek, i64 63)
  br label %bb.p

bb.p:                                             ; preds = %.thread33.i, %bb.o
  %.pre-phi41.i = phi i1 [ false, %.thread33.i ], [ true, %bb.o ]
  %i.em = phi i64 [ %i.el, %.thread33.i ], [ %i.dy, %bb.o ]
  %.not27.i = icmp eq i64 %i.em, 0
  br i1 %.not27.i, label %bb.q, label %efi_open_device_path.exit.thread

bb.q:                                             ; preds = %bb.p
  %i.en = load ptr, ptr %i.i, align 8             ; 4 uses
  %i.eo = load i8, ptr %i.en, align 1             ; 2 uses
  %.not28.i = icmp eq i8 %i.eo, 4
  %i.ep = getelementptr inbounds nuw i8, ptr %i.en, i64 1
  %i.eq = load i8, ptr %i.ep, align 1             ; 2 uses
  %.not29.i = icmp eq i8 %i.eq, 4
  %or.cond.i = select i1 %.not28.i, i1 %.not29.i, i1 false
  br i1 %or.cond.i, label %bb.r, label %._crit_edge.i

._crit_edge.i:                                    ; preds = %bb.q
  %i.er = zext i8 %i.eo to i32
  %i.es = zext i8 %i.eq to i32
  %i.et = call i32 (ptr, ...) @efi_printk(ptr noundef nonnull @.str.2, i32 noundef %i.er, i32 noundef %i.es) #5 ; 0 uses
  br label %efi_open_device_path.exit.thread136

bb.r:                                             ; preds = %bb.q
  %i.eu = getelementptr inbounds nuw i8, ptr %i.en, i64 4
  %i.ev = getelementptr inbounds nuw i8, ptr %i.en, i64 2
  %i.ew = load i16, ptr %i.ev, align 1
  %i.ex = zext i16 %i.ew to i64
  %i.ey = add nsw i64 %i.ex, -4
  %i.ez = call i64 @llvm.umin.i64(i64 %i.ey, i64 512)
  %i.fa = call ptr @memcpy(ptr noundef nonnull %i.as, ptr noundef nonnull %i.eu, i64 noundef %i.ez) #5 ; 0 uses
  %i.fb = load ptr, ptr %i.j, align 8             ; 4 uses
end_hunk_0

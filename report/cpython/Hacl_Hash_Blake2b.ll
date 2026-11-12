Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/cpython/original/Hacl_Hash_Blake2b?download=true
inline.NumInlined: 123
inline.NumDeleted: 15
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.Hacl_Hash_Blake2b_blake2_params_s = type { i8, i8, i8, i8, i32, i64, i8, i8, ptr, ptr }
%struct.Hacl_Hash_Blake2b_block_state_t_s = type { i8, i8, i8, %struct.Hacl_Streaming_Types_two_pointers_s }
%struct.Hacl_Streaming_Types_two_pointers_s = type { ptr, ptr }

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define hidden void @_Py_LibHacl_Hacl_Hash_Blake2b_init(ptr nofree noundef writeonly captures(none) initializes((0, 128)) %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #0 !guid !23 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 32
  %i.b = getelementptr i8, ptr %0, i64 64
  %i.c = getelementptr i8, ptr %0, i64 96
  store i64 7640891576956012808, ptr %i.b, align 8, !tbaa !12
  %i.d = getelementptr i8, ptr %0, i64 72
  store i64 -4942790177534073029, ptr %i.d, align 8, !tbaa !12
  %i.e = getelementptr i8, ptr %0, i64 80
  store i64 4354685564936845355, ptr %i.e, align 8, !tbaa !12
  %i.f = getelementptr i8, ptr %0, i64 88
  store i64 -6534734903238641935, ptr %i.f, align 8, !tbaa !12
  store i64 5840696475078001361, ptr %i.c, align 8, !tbaa !12
  %i.g = getelementptr i8, ptr %0, i64 104
  store i64 -7276294671716946913, ptr %i.g, align 8, !tbaa !12
  %i.h = getelementptr i8, ptr %0, i64 112
  store i64 2270897969802886507, ptr %i.h, align 8, !tbaa !12
  %i.i = getelementptr i8, ptr %0, i64 120
  store i64 6620516959819538809, ptr %i.i, align 8, !tbaa !12
  %i.j = and i32 %2, 255
  %i.k = shl i32 %1, 8
  %i.l = and i32 %i.k, 65280
  %i.m = or disjoint i32 %i.j, %i.l
  %i.n = or disjoint i32 %i.m, 16842752
  %i.o = zext nneg i32 %i.n to i64
  %i.p = xor i64 %i.o, 7640891576956012808
  store i64 %i.p, ptr %0, align 8, !tbaa !12
  %i.q = getelementptr i8, ptr %0, i64 8
  store i64 -4942790177534073029, ptr %i.q, align 8, !tbaa !12
  %i.r = getelementptr i8, ptr %0, i64 16
  store i64 4354685564936845355, ptr %i.r, align 8, !tbaa !12
  %i.s = getelementptr i8, ptr %0, i64 24
  store i64 -6534734903238641935, ptr %i.s, align 8, !tbaa !12
  store i64 5840696475078001361, ptr %i.a, align 8, !tbaa !12
  %i.t = getelementptr i8, ptr %0, i64 40
  store i64 -7276294671716946913, ptr %i.t, align 8, !tbaa !12
  %i.u = getelementptr i8, ptr %0, i64 48
  store i64 2270897969802886507, ptr %i.u, align 8, !tbaa !12
  %i.v = getelementptr i8, ptr %0, i64 56
  store i64 6620516959819538809, ptr %i.v, align 8, !tbaa !12
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define hidden void @_Py_LibHacl_Hacl_Hash_Blake2b_update_multi(i32 noundef %0, ptr nofree noundef captures(none) %1, ptr nofree noundef captures(none) %2, i64 %3, i64 %4, ptr nofree noundef readonly captures(none) %5, i32 noundef %6) local_unnamed_addr #3 !guid !24 {
bb.a:
  %.not = icmp eq i32 %6, 0
  br i1 %.not, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.a
  %wide.trip.count = zext i32 %6 to i64
  br label %.lr.ph

._crit_edge:                                      ; preds = %.lr.ph, %bb.a
  ret void

.lr.ph:                                           ; preds = %.lr.ph.preheader, %.lr.ph
  %indvars.iv = phi i64 [ 0, %.lr.ph.preheader ], [ %indvars.iv.next, %.lr.ph ] ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 3 uses
  %i.a = shl i64 %indvars.iv.next, 7
  %i.b = and i64 %i.a, 4294967168
  %i.c = add i64 %3, %i.b                         ; 2 uses
  %i.d = xor i64 %i.c, -1
  %i.e = and i64 %3, %i.d
  %i.f = lshr i64 %i.e, 63
  %i.g = add i64 %i.f, %4
  %i.h = shl i64 %indvars.iv, 7
  %i.i = and i64 %i.h, 4294967168
  %i.j = getelementptr i8, ptr %5, i64 %i.i
  tail call fastcc void @update_block(ptr noundef %1, ptr noundef %2, i1 noundef zeroext false, i1 noundef zeroext false, i64 %i.c, i64 %i.g, ptr noundef %i.j)
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !llvm.loop !0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @update_block(ptr nofree noundef captures(none) initializes((0, 128)) %0, ptr nofree noundef captures(none) %1, i1 noundef zeroext %2, i1 noundef zeroext %3, i64 %4, i64 %5, ptr nofree noundef readonly captures(none) %6) unnamed_addr #4 !guid !25 {
bb.a:
  %.val15062 = load i64, ptr %6, align 1          ; 12 uses
  %i.a = getelementptr i8, ptr %6, i64 8
  %.val15061 = load i64, ptr %i.a, align 1        ; 12 uses
  %i.b = getelementptr i8, ptr %6, i64 16
  %.val15060 = load i64, ptr %i.b, align 1        ; 12 uses
  %i.c = getelementptr i8, ptr %6, i64 24
  %.val15059 = load i64, ptr %i.c, align 1        ; 12 uses
  %i.d = getelementptr i8, ptr %6, i64 32
  %.val15058 = load i64, ptr %i.d, align 1        ; 12 uses
  %i.e = getelementptr i8, ptr %6, i64 40
  %.val15057 = load i64, ptr %i.e, align 1        ; 12 uses
  %i.f = getelementptr i8, ptr %6, i64 48
  %.val15056 = load i64, ptr %i.f, align 1        ; 12 uses
  %i.g = getelementptr i8, ptr %6, i64 56
  %.val15055 = load i64, ptr %i.g, align 1        ; 12 uses
  %i.h = getelementptr i8, ptr %6, i64 64
  %.val15054 = load i64, ptr %i.h, align 1        ; 12 uses
  %i.i = getelementptr i8, ptr %6, i64 72
  %.val15053 = load i64, ptr %i.i, align 1        ; 12 uses
  %i.j = getelementptr i8, ptr %6, i64 80
  %.val15052 = load i64, ptr %i.j, align 1        ; 12 uses
  %i.k = getelementptr i8, ptr %6, i64 88
  %.val15051 = load i64, ptr %i.k, align 1        ; 12 uses
  %i.l = getelementptr i8, ptr %6, i64 96
  %.val15050 = load i64, ptr %i.l, align 1        ; 12 uses
  %i.m = getelementptr i8, ptr %6, i64 104
  %.val15049 = load i64, ptr %i.m, align 1        ; 12 uses
  %i.n = getelementptr i8, ptr %6, i64 112
  %.val15048 = load i64, ptr %i.n, align 1        ; 12 uses
  %i.o = getelementptr i8, ptr %6, i64 120
  %.val = load i64, ptr %i.o, align 1             ; 12 uses
  %. = sext i1 %2 to i64
  %.015047 = sext i1 %3 to i64
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(128) %0, ptr noundef nonnull align 8 dereferenceable(128) %1, i64 128, i1 false)
  %i.p = getelementptr i8, ptr %0, i64 96         ; 3 uses
  %i.q = load i64, ptr %i.p, align 8, !tbaa !12
  %i.r = xor i64 %i.q, %4
  %i.s = getelementptr i8, ptr %0, i64 104        ; 3 uses
  %i.t = load i64, ptr %i.s, align 8, !tbaa !12
  %i.u = xor i64 %i.t, %5
  %i.v = getelementptr i8, ptr %0, i64 112        ; 3 uses
  %i.w = load i64, ptr %i.v, align 8, !tbaa !12
  %i.x = xor i64 %i.w, %.
  %i.y = getelementptr i8, ptr %0, i64 120        ; 3 uses
  %i.z = load i64, ptr %i.y, align 8, !tbaa !12
  %i.aa = xor i64 %i.z, %.015047
  %i.ab = getelementptr i8, ptr %0, i64 32        ; 3 uses
  %i.ac = load i64, ptr %0, align 8, !tbaa !12
  %i.ad = load i64, ptr %i.ab, align 8, !tbaa !12 ; 2 uses
  %i.ae = add i64 %i.ad, %i.ac
  %i.af = getelementptr i8, ptr %0, i64 8         ; 3 uses
  %i.ag = load i64, ptr %i.af, align 8, !tbaa !12
  %i.ah = getelementptr i8, ptr %0, i64 40        ; 3 uses
  %i.ai = load i64, ptr %i.ah, align 8, !tbaa !12 ; 2 uses
  %i.aj = add i64 %i.ai, %i.ag
  %i.ak = getelementptr i8, ptr %0, i64 16        ; 3 uses
  %i.al = load i64, ptr %i.ak, align 8, !tbaa !12
  %i.am = getelementptr i8, ptr %0, i64 48        ; 3 uses
  %i.an = load i64, ptr %i.am, align 8, !tbaa !12 ; 2 uses
  %i.ao = add i64 %i.an, %i.al
  %i.ap = getelementptr i8, ptr %0, i64 24        ; 3 uses
  %i.aq = load i64, ptr %i.ap, align 8, !tbaa !12
  %i.ar = getelementptr i8, ptr %0, i64 56        ; 3 uses
  %i.as = load i64, ptr %i.ar, align 8, !tbaa !12 ; 2 uses
  %i.at = add i64 %i.as, %i.aq
  %i.au = add i64 %i.ae, %.val15062               ; 2 uses
  %i.av = add i64 %i.aj, %.val15060               ; 2 uses
  %i.aw = add i64 %i.ao, %.val15058               ; 2 uses
  %i.ax = add i64 %i.at, %.val15056               ; 2 uses
  %i.ay = xor i64 %i.au, %i.r                     ; 2 uses
  %i.az = xor i64 %i.av, %i.u                     ; 2 uses
  %i.ba = xor i64 %i.aw, %i.x                     ; 2 uses
  %i.bb = xor i64 %i.ax, %i.aa                    ; 2 uses
  %i.bc = tail call i64 @llvm.fshl.i64(i64 %i.ay, i64 %i.ay, i64 32) ; 2 uses
  %i.bd = tail call i64 @llvm.fshl.i64(i64 %i.az, i64 %i.az, i64 32) ; 2 uses
  %i.be = tail call i64 @llvm.fshl.i64(i64 %i.ba, i64 %i.ba, i64 32) ; 2 uses
  %i.bf = tail call i64 @llvm.fshl.i64(i64 %i.bb, i64 %i.bb, i64 32) ; 2 uses
  %i.bg = getelementptr i8, ptr %0, i64 64        ; 3 uses
  %i.bh = load i64, ptr %i.bg, align 8, !tbaa !12
  %i.bi = add i64 %i.bh, %i.bc                    ; 2 uses
  %i.bj = getelementptr i8, ptr %0, i64 72        ; 3 uses
  %i.bk = load i64, ptr %i.bj, align 8, !tbaa !12
  %i.bl = add i64 %i.bk, %i.bd                    ; 2 uses
  %i.bm = getelementptr i8, ptr %0, i64 80        ; 3 uses
  %i.bn = load i64, ptr %i.bm, align 8, !tbaa !12
  %i.bo = add i64 %i.bn, %i.be                    ; 2 uses
  %i.bp = getelementptr i8, ptr %0, i64 88        ; 3 uses
  %i.bq = load i64, ptr %i.bp, align 8, !tbaa !12
  %i.br = add i64 %i.bq, %i.bf                    ; 2 uses
  %i.bs = xor i64 %i.bi, %i.ad                    ; 2 uses
  %i.bt = xor i64 %i.bl, %i.ai                    ; 2 uses
  %i.bu = xor i64 %i.bo, %i.an                    ; 2 uses
  %i.bv = xor i64 %i.br, %i.as                    ; 2 uses
  %i.bw = tail call i64 @llvm.fshl.i64(i64 %i.bs, i64 %i.bs, i64 40) ; 2 uses
  %i.bx = tail call i64 @llvm.fshl.i64(i64 %i.bt, i64 %i.bt, i64 40) ; 2 uses
  %i.by = tail call i64 @llvm.fshl.i64(i64 %i.bu, i64 %i.bu, i64 40) ; 2 uses
  %i.bz = tail call i64 @llvm.fshl.i64(i64 %i.bv, i64 %i.bv, i64 40) ; 2 uses
  %i.ca = add i64 %i.bw, %i.au
  %i.cb = add i64 %i.bx, %i.av
  %i.cc = add i64 %i.by, %i.aw
  %i.cd = add i64 %i.bz, %i.ax
  %i.ce = add i64 %i.ca, %.val15061               ; 2 uses
  %i.cf = add i64 %i.cb, %.val15059               ; 2 uses
  %i.cg = add i64 %i.cc, %.val15057               ; 2 uses
  %i.ch = add i64 %i.cd, %.val15055               ; 2 uses
  %i.ci = xor i64 %i.ce, %i.bc                    ; 2 uses
  %i.cj = xor i64 %i.cf, %i.bd                    ; 2 uses
  %i.ck = xor i64 %i.cg, %i.be                    ; 2 uses
  %i.cl = xor i64 %i.ch, %i.bf                    ; 2 uses
  %i.cm = tail call i64 @llvm.fshl.i64(i64 %i.ci, i64 %i.ci, i64 48) ; 2 uses
  %i.cn = tail call i64 @llvm.fshl.i64(i64 %i.cj, i64 %i.cj, i64 48) ; 2 uses
  %i.co = tail call i64 @llvm.fshl.i64(i64 %i.ck, i64 %i.ck, i64 48) ; 2 uses
  %i.cp = tail call i64 @llvm.fshl.i64(i64 %i.cl, i64 %i.cl, i64 48) ; 2 uses
  %i.cq = add i64 %i.cm, %i.bi                    ; 2 uses
  %i.cr = add i64 %i.cn, %i.bl                    ; 2 uses
  %i.cs = add i64 %i.co, %i.bo                    ; 2 uses
  %i.ct = add i64 %i.cp, %i.br                    ; 2 uses
  %i.cu = xor i64 %i.cq, %i.bw                    ; 2 uses
  %i.cv = xor i64 %i.cr, %i.bx                    ; 2 uses
  %i.cw = xor i64 %i.cs, %i.by                    ; 2 uses
  %i.cx = xor i64 %i.ct, %i.bz                    ; 2 uses
  %i.cy = tail call i64 @llvm.fshl.i64(i64 %i.cu, i64 %i.cu, i64 1) ; 2 uses
  %i.cz = tail call i64 @llvm.fshl.i64(i64 %i.cv, i64 %i.cv, i64 1) ; 2 uses
  %i.da = tail call i64 @llvm.fshl.i64(i64 %i.cw, i64 %i.cw, i64 1) ; 2 uses
  %i.db = tail call i64 @llvm.fshl.i64(i64 %i.cx, i64 %i.cx, i64 1) ; 2 uses
  %i.dc = add i64 %i.cz, %i.ce
  %i.dd = add i64 %i.da, %i.cf
  %i.de = add i64 %i.db, %i.cg
  %i.df = add i64 %i.ch, %i.cy
  %i.dg = add i64 %i.dc, %.val15054               ; 2 uses
  %i.dh = add i64 %i.dd, %.val15052               ; 2 uses
  %i.di = add i64 %i.de, %.val15050               ; 2 uses
  %i.dj = add i64 %i.df, %.val15048               ; 2 uses
  %i.dk = xor i64 %i.dg, %i.cp                    ; 2 uses
  %i.dl = xor i64 %i.dh, %i.cm                    ; 2 uses
  %i.dm = xor i64 %i.di, %i.cn                    ; 2 uses
  %i.dn = xor i64 %i.dj, %i.co                    ; 2 uses
end_hunk_0

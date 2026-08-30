Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/mimalloc/original/random?download=true
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@_mi_cpu_stosb_max = external hidden local_unnamed_addr global i64, align 8
@_mi_cpu_movsb_max = external hidden local_unnamed_addr global i64, align 8
@.str = private unnamed_addr constant [33 x i8] c"unable to use secure randomness\0A\00", align 1

; Function Attrs: nooutline nounwind uwtable
define hidden void @_mi_random_split(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 128 ; 7 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  %.pre.i = load i32, ptr %i.a, align 4, !tbaa !8
  br label %bb.b

bb.b:                                             ; preds = %chacha_next32.exit3.i, %bb.a
  %i.c = phi i32 [ %i.u, %chacha_next32.exit3.i ], [ %.pre.i, %bb.a ] ; 2 uses
  %i.d = icmp slt i32 %i.c, 1
  br i1 %i.d, label %bb.c, label %chacha_next32.exit.i

bb.c:                                             ; preds = %bb.b
  tail call fastcc void @chacha_block(ptr noundef nonnull %0) #6
  store i32 16, ptr %i.a, align 4, !tbaa !8
  br label %chacha_next32.exit.i

chacha_next32.exit.i:                             ; preds = %bb.c, %bb.b
  %i.e = phi i32 [ 16, %bb.c ], [ %i.c, %bb.b ]
  %i.f = sub nsw i32 16, %i.e
  %i.g = sext i32 %i.f to i64
  %i.h = getelementptr inbounds [4 x i8], ptr %i.b, i64 %i.g ; 2 uses
  %i.i = load i32, ptr %i.h, align 4, !tbaa !11
  store i32 0, ptr %i.h, align 4, !tbaa !11
  %i.j = load i32, ptr %i.a, align 4, !tbaa !8    ; 2 uses
  %i.k = add nsw i32 %i.j, -1                     ; 2 uses
  store i32 %i.k, ptr %i.a, align 4, !tbaa !8
  %i.l = zext i32 %i.i to i64
  %i.m = shl nuw i64 %i.l, 32
  %i.n = icmp slt i32 %i.j, 2
  br i1 %i.n, label %bb.d, label %chacha_next32.exit3.i

bb.d:                                             ; preds = %chacha_next32.exit.i
  tail call fastcc void @chacha_block(ptr noundef nonnull %0) #6
  store i32 16, ptr %i.a, align 4, !tbaa !8
  br label %chacha_next32.exit3.i

chacha_next32.exit3.i:                            ; preds = %bb.d, %chacha_next32.exit.i
  %i.o = phi i32 [ 16, %bb.d ], [ %i.k, %chacha_next32.exit.i ]
  %i.p = sub nsw i32 16, %i.o
  %i.q = sext i32 %i.p to i64
  %i.r = getelementptr inbounds [4 x i8], ptr %i.b, i64 %i.q ; 2 uses
  %i.s = load i32, ptr %i.r, align 4, !tbaa !11
  store i32 0, ptr %i.r, align 4, !tbaa !11
  %i.t = load i32, ptr %i.a, align 4, !tbaa !8
  %i.u = add nsw i32 %i.t, -1                     ; 2 uses
  store i32 %i.u, ptr %i.a, align 4, !tbaa !8
  %i.v = zext i32 %i.s to i64
  %i.w = or disjoint i64 %i.m, %i.v               ; 2 uses
  %i.x = icmp eq i64 %i.w, 0
  br i1 %i.x, label %bb.b, label %_mi_random_next.exit, !llvm.loop !12

_mi_random_next.exit:                             ; preds = %chacha_next32.exit3.i
  %i.y = load i64, ptr @_mi_cpu_stosb_max, align 8, !tbaa !14
  %.not.i.i.i = icmp ult i64 %i.y, 136
  br i1 %.not.i.i.i, label %bb.f, label %bb.e, !prof !16

bb.e:                                             ; preds = %_mi_random_next.exit
  %i.z = tail call { ptr, i64 } asm sideeffect "rep stosb", "={di},={cx},{ax},0,1,~{memory},~{dirflag},~{fpsr},~{flags}"(i8 0, ptr %1, i64 range(i64 32, 137) 136) #7, !srcloc !17 ; 0 uses
  br label %_mi_memzero.exit.i

bb.f:                                             ; preds = %_mi_random_next.exit
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(136) %1, i8 0, i64 range(i64 32, 137) 136, i1 false)
  br label %_mi_memzero.exit.i

_mi_memzero.exit.i:                               ; preds = %bb.f, %bb.e
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 132
  %i.ab = load i8, ptr %i.aa, align 4, !tbaa !18, !range !19, !noundef !20
  %i.ac = getelementptr inbounds nuw i8, ptr %1, i64 132
  store i8 %i.ab, ptr %i.ac, align 4, !tbaa !18
  %i.ad = load i64, ptr @_mi_cpu_movsb_max, align 8, !tbaa !14
  %i.ae = icmp ugt i64 %i.ad, 63
  br i1 %i.ae, label %bb.g, label %bb.h, !prof !21

bb.g:                                             ; preds = %_mi_memzero.exit.i
  %i.af = tail call { ptr, i64, ptr } asm sideeffect "rep movsb", "={di},={cx},={si},0,1,2,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr nonnull %1, i64 64, ptr nonnull %0) #7, !srcloc !22 ; 0 uses
  br label %chacha_split.exit

bb.h:                                             ; preds = %_mi_memzero.exit.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(64) %1, ptr noundef nonnull align 1 dereferenceable(64) %0, i64 48, i1 false)
  br label %chacha_split.exit

chacha_split.exit:                                ; preds = %bb.g, %bb.h
  %i.ag = ptrtoint ptr %1 to i64
  %i.ah = xor i64 %i.w, %i.ag
  %i.ai = getelementptr inbounds nuw i8, ptr %1, i64 48
  store i32 0, ptr %i.ai, align 4, !tbaa !11
  %i.aj = getelementptr inbounds nuw i8, ptr %1, i64 52
  store i32 0, ptr %i.aj, align 4, !tbaa !11
  %i.ak = getelementptr inbounds nuw i8, ptr %1, i64 56
  store i64 %i.ah, ptr %i.ak, align 4
  tail call fastcc void @chacha_block(ptr noundef nonnull %1) #6
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

; Function Attrs: nofree nooutline norecurse nosync nounwind memory(argmem: readwrite) uwtable
define hidden range(i64 1, 0) i64 @_mi_random_next(ptr nofree noundef captures(none) %0) local_unnamed_addr #2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 128 ; 7 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  %.pre = load i32, ptr %i.a, align 4, !tbaa !8
  br label %bb.b

bb.b:                                             ; preds = %chacha_next32.exit3, %bb.a
  %i.c = phi i32 [ %i.u, %chacha_next32.exit3 ], [ %.pre, %bb.a ] ; 2 uses
  %i.d = icmp slt i32 %i.c, 1
  br i1 %i.d, label %bb.c, label %chacha_next32.exit

bb.c:                                             ; preds = %bb.b
  tail call fastcc void @chacha_block(ptr noundef nonnull %0) #6
  store i32 16, ptr %i.a, align 4, !tbaa !8
  br label %chacha_next32.exit

chacha_next32.exit:                               ; preds = %bb.b, %bb.c
  %i.e = phi i32 [ 16, %bb.c ], [ %i.c, %bb.b ]
  %i.f = sub nsw i32 16, %i.e
  %i.g = sext i32 %i.f to i64
  %i.h = getelementptr inbounds [4 x i8], ptr %i.b, i64 %i.g ; 2 uses
  %i.i = load i32, ptr %i.h, align 4, !tbaa !11
  store i32 0, ptr %i.h, align 4, !tbaa !11
  %i.j = load i32, ptr %i.a, align 4, !tbaa !8    ; 2 uses
  %i.k = add nsw i32 %i.j, -1                     ; 2 uses
  store i32 %i.k, ptr %i.a, align 4, !tbaa !8
  %i.l = zext i32 %i.i to i64
  %i.m = shl nuw i64 %i.l, 32
  %i.n = icmp slt i32 %i.j, 2
  br i1 %i.n, label %bb.d, label %chacha_next32.exit3

bb.d:                                             ; preds = %chacha_next32.exit
  tail call fastcc void @chacha_block(ptr noundef nonnull %0) #6
  store i32 16, ptr %i.a, align 4, !tbaa !8
  br label %chacha_next32.exit3

chacha_next32.exit3:                              ; preds = %chacha_next32.exit, %bb.d
  %i.o = phi i32 [ 16, %bb.d ], [ %i.k, %chacha_next32.exit ]
  %i.p = sub nsw i32 16, %i.o
  %i.q = sext i32 %i.p to i64
  %i.r = getelementptr inbounds [4 x i8], ptr %i.b, i64 %i.q ; 2 uses
  %i.s = load i32, ptr %i.r, align 4, !tbaa !11
  store i32 0, ptr %i.r, align 4, !tbaa !11
  %i.t = load i32, ptr %i.a, align 4, !tbaa !8
  %i.u = add nsw i32 %i.t, -1                     ; 2 uses
  store i32 %i.u, ptr %i.a, align 4, !tbaa !8
  %i.v = zext i32 %i.s to i64
  %i.w = or disjoint i64 %i.m, %i.v               ; 2 uses
  %i.x = icmp eq i64 %i.w, 0
  br i1 %i.x, label %bb.b, label %bb.e, !llvm.loop !12

bb.e:                                             ; preds = %chacha_next32.exit3
  ret i64 %i.w
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: nooutline nounwind uwtable
define hidden range(i64 1, 0) i64 @_mi_os_random_weak(i64 noundef %0) #0 {
bb.a:
  %i.a = xor i64 %0, ptrtoint (ptr @_mi_os_random_weak to i64) ; 2 uses
  %i.b = tail call i64 @_mi_prim_clock_now() #8   ; 2 uses
  %i.c = xor i64 %i.a, %i.b                       ; 3 uses
  %i.d = lshr i64 %i.c, 17
  %i.e = xor i64 %i.d, %i.c
  %i.f = and i64 %i.e, 15
  %i.g = icmp eq i64 %i.a, %i.b
  br label %bb.c

bb.b:                                             ; preds = %bb.c
  ret i64 %i.r

bb.c:                                             ; preds = %bb.a, %bb.c
  %i.h = phi i1 [ %i.g, %bb.a ], [ %i.t, %bb.c ]
  %.013 = phi i64 [ 0, %bb.a ], [ %i.q, %bb.c ]
  %.01112 = phi i64 [ %i.c, %bb.a ], [ %i.r, %bb.c ]
  %spec.store.select.i = select i1 %i.h, i64 17, i64 %.01112 ; 2 uses
  %i.i = lshr i64 %spec.store.select.i, 30
  %i.j = xor i64 %i.i, %spec.store.select.i
  %i.k = mul i64 %i.j, -4658895280553007687       ; 2 uses
  %i.l = lshr i64 %i.k, 27
  %i.m = xor i64 %i.l, %i.k
  %i.n = mul i64 %i.m, -7723592293110705685       ; 2 uses
  %i.o = lshr i64 %i.n, 31
  %i.p = xor i64 %i.o, %i.n
  %i.q = add i64 %.013, 1                         ; 2 uses
  %i.r = add i64 %i.p, 1                          ; 3 uses
  %i.s = icmp ule i64 %i.q, %i.f
  %i.t = icmp eq i64 %i.r, 0                      ; 2 uses
  %i.u = select i1 %i.s, i1 true, i1 %i.t
  br i1 %i.u, label %bb.c, label %bb.b, !llvm.loop !23
}

declare i64 @_mi_prim_clock_now() local_unnamed_addr #3

; Function Attrs: nooutline nounwind uwtable
define hidden void @_mi_random_init(ptr noundef %0) local_unnamed_addr #0 {
bb.a:
  tail call fastcc void @mi_random_init_ex(ptr noundef %0, i1 noundef zeroext false) #6
  ret void
}

; Function Attrs: nooutline nounwind uwtable
define internal fastcc void @mi_random_init_ex(ptr noundef %0, i1 noundef zeroext %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca [32 x i8], align 16               ; 14 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #7
  br i1 %1, label %.critedge, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = call zeroext i1 @_mi_prim_random_buf(ptr noundef nonnull %i.a, i64 noundef 32) #8
  br i1 %i.b, label %bb.e, label %bb.c

bb.c:                                             ; preds = %bb.b
  call void (ptr, ...) @_mi_warning_message(ptr noundef nonnull @.str) #8
  br label %.critedge

.critedge:                                        ; preds = %bb.a, %bb.c
  %i.c = call i64 @_mi_prim_clock_now() #8, !inline_history !24 ; 2 uses
  %i.d = xor i64 %i.c, ptrtoint (ptr @_mi_os_random_weak to i64) ; 3 uses
  %i.e = lshr i64 %i.d, 17
  %i.f = xor i64 %i.e, %i.d
  %i.g = and i64 %i.f, 15
  %i.h = icmp eq i64 %i.c, ptrtoint (ptr @_mi_os_random_weak to i64)
  br label %bb.d

bb.d:                                             ; preds = %bb.d, %.critedge
  %i.i = phi i1 [ %i.h, %.critedge ], [ %i.u, %bb.d ]
  %.013.i = phi i64 [ 0, %.critedge ], [ %i.r, %bb.d ]
  %.01112.i = phi i64 [ %i.d, %.critedge ], [ %i.s, %bb.d ]
  %spec.store.select.i.i = select i1 %i.i, i64 17, i64 %.01112.i ; 2 uses
  %i.j = lshr i64 %spec.store.select.i.i, 30
  %i.k = xor i64 %i.j, %spec.store.select.i.i
  %i.l = mul i64 %i.k, -4658895280553007687       ; 2 uses
  %i.m = lshr i64 %i.l, 27
  %i.n = xor i64 %i.m, %i.l
  %i.o = mul i64 %i.n, -7723592293110705685       ; 2 uses
  %i.p = lshr i64 %i.o, 31
  %i.q = xor i64 %i.p, %i.o
  %i.r = add i64 %.013.i, 1                       ; 2 uses
  %i.s = add i64 %i.q, 1                          ; 4 uses
  %i.t = icmp ule i64 %i.r, %i.g
  %i.u = icmp eq i64 %i.s, 0                      ; 2 uses
  %i.v = select i1 %i.t, i1 true, i1 %i.u
  br i1 %i.v, label %bb.d, label %_mi_os_random_weak.exit.preheader, !llvm.loop !23

_mi_os_random_weak.exit.preheader:                ; preds = %bb.d
  %i.w = lshr i64 %i.s, 30
  %i.x = xor i64 %i.w, %i.s
  %i.y = mul i64 %i.x, -4658895280553007687       ; 2 uses
  %i.z = lshr i64 %i.y, 27
  %i.aa = xor i64 %i.z, %i.y
  %i.ab = mul i64 %i.aa, -7723592293110705685     ; 2 uses
  %i.ac = lshr i64 %i.ab, 31
  %i.ad = xor i64 %i.ac, %i.ab                    ; 2 uses
  %i.ae = trunc i64 %i.ad to i32
  store i32 %i.ae, ptr %i.a, align 16
  %i.af = add i64 %i.ad, 1                        ; 2 uses
  %i.ag = icmp eq i64 %i.af, 0
  %spec.store.select.i.1 = select i1 %i.ag, i64 17, i64 %i.af ; 2 uses
  %i.ah = lshr i64 %spec.store.select.i.1, 30
  %i.ai = xor i64 %i.ah, %spec.store.select.i.1
  %i.aj = mul i64 %i.ai, -4658895280553007687     ; 2 uses
  %i.ak = lshr i64 %i.aj, 27
  %i.al = xor i64 %i.ak, %i.aj
  %i.am = mul i64 %i.al, -7723592293110705685     ; 2 uses
  %i.an = lshr i64 %i.am, 31
  %i.ao = xor i64 %i.an, %i.am                    ; 2 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  %i.aq = trunc i64 %i.ao to i32
  store i32 %i.aq, ptr %i.ap, align 4
  %i.ar = add i64 %i.ao, 1                        ; 2 uses
  %i.as = icmp eq i64 %i.ar, 0
  %spec.store.select.i.2 = select i1 %i.as, i64 17, i64 %i.ar ; 2 uses
  %i.at = lshr i64 %spec.store.select.i.2, 30
  %i.au = xor i64 %i.at, %spec.store.select.i.2
  %i.av = mul i64 %i.au, -4658895280553007687     ; 2 uses
  %i.aw = lshr i64 %i.av, 27
  %i.ax = xor i64 %i.aw, %i.av
  %i.ay = mul i64 %i.ax, -7723592293110705685     ; 2 uses
  %i.az = lshr i64 %i.ay, 31
  %i.ba = xor i64 %i.az, %i.ay                    ; 2 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.bc = trunc i64 %i.ba to i32
  store i32 %i.bc, ptr %i.bb, align 8
  %i.bd = add i64 %i.ba, 1                        ; 2 uses
  %i.be = icmp eq i64 %i.bd, 0
  %spec.store.select.i.3 = select i1 %i.be, i64 17, i64 %i.bd ; 2 uses
  %i.bf = lshr i64 %spec.store.select.i.3, 30
  %i.bg = xor i64 %i.bf, %spec.store.select.i.3
  %i.bh = mul i64 %i.bg, -4658895280553007687     ; 2 uses
  %i.bi = lshr i64 %i.bh, 27
  %i.bj = xor i64 %i.bi, %i.bh
  %i.bk = mul i64 %i.bj, -7723592293110705685     ; 2 uses
  %i.bl = lshr i64 %i.bk, 31
  %i.bm = xor i64 %i.bl, %i.bk                    ; 2 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %i.a, i64 12
  %i.bo = trunc i64 %i.bm to i32
  store i32 %i.bo, ptr %i.bn, align 4
  %i.bp = add i64 %i.bm, 1                        ; 2 uses
  %i.bq = icmp eq i64 %i.bp, 0
  %spec.store.select.i.4 = select i1 %i.bq, i64 17, i64 %i.bp ; 2 uses
  %i.br = lshr i64 %spec.store.select.i.4, 30
  %i.bs = xor i64 %i.br, %spec.store.select.i.4
  %i.bt = mul i64 %i.bs, -4658895280553007687     ; 2 uses
  %i.bu = lshr i64 %i.bt, 27
  %i.bv = xor i64 %i.bu, %i.bt
  %i.bw = mul i64 %i.bv, -7723592293110705685     ; 2 uses
  %i.bx = lshr i64 %i.bw, 31
  %i.by = xor i64 %i.bx, %i.bw                    ; 2 uses
  %i.bz = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.ca = trunc i64 %i.by to i32
  store i32 %i.ca, ptr %i.bz, align 16
  %i.cb = add i64 %i.by, 1                        ; 2 uses
  %i.cc = icmp eq i64 %i.cb, 0
  %spec.store.select.i.5 = select i1 %i.cc, i64 17, i64 %i.cb ; 2 uses
  %i.cd = lshr i64 %spec.store.select.i.5, 30
  %i.ce = xor i64 %i.cd, %spec.store.select.i.5
  %i.cf = mul i64 %i.ce, -4658895280553007687     ; 2 uses
  %i.cg = lshr i64 %i.cf, 27
  %i.ch = xor i64 %i.cg, %i.cf
  %i.ci = mul i64 %i.ch, -7723592293110705685     ; 2 uses
  %i.cj = lshr i64 %i.ci, 31
  %i.ck = xor i64 %i.cj, %i.ci                    ; 2 uses
  %i.cl = getelementptr inbounds nuw i8, ptr %i.a, i64 20
  %i.cm = trunc i64 %i.ck to i32
  store i32 %i.cm, ptr %i.cl, align 4
  %i.cn = add i64 %i.ck, 1                        ; 2 uses
  %i.co = icmp eq i64 %i.cn, 0
  %spec.store.select.i.6 = select i1 %i.co, i64 17, i64 %i.cn ; 2 uses
  %i.cp = lshr i64 %spec.store.select.i.6, 30
  %i.cq = xor i64 %i.cp, %spec.store.select.i.6
  %i.cr = mul i64 %i.cq, -4658895280553007687     ; 2 uses
  %i.cs = lshr i64 %i.cr, 27
  %i.ct = xor i64 %i.cs, %i.cr
  %i.cu = mul i64 %i.ct, -7723592293110705685     ; 2 uses
  %i.cv = lshr i64 %i.cu, 31
  %i.cw = xor i64 %i.cv, %i.cu                    ; 2 uses
  %i.cx = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  %i.cy = trunc i64 %i.cw to i32
  store i32 %i.cy, ptr %i.cx, align 8
  %i.cz = add i64 %i.cw, 1                        ; 2 uses
  %i.da = icmp eq i64 %i.cz, 0
  %spec.store.select.i.7 = select i1 %i.da, i64 17, i64 %i.cz ; 2 uses
  %i.db = lshr i64 %spec.store.select.i.7, 30
  %i.dc = xor i64 %i.db, %spec.store.select.i.7
  %i.dd = mul i64 %i.dc, -4658895280553007687     ; 2 uses
  %i.de = lshr i64 %i.dd, 27
  %i.df = xor i64 %i.de, %i.dd
  %i.dg = mul i64 %i.df, -7723592293110705685     ; 2 uses
  %i.dh = lshr i64 %i.dg, 31
  %i.di = xor i64 %i.dh, %i.dg
  %i.dj = getelementptr inbounds nuw i8, ptr %i.a, i64 28
  %i.dk = trunc i64 %i.di to i32
  store i32 %i.dk, ptr %i.dj, align 4
  br label %bb.e

bb.e:                                             ; preds = %bb.b, %_mi_os_random_weak.exit.preheader
  %.sink = phi i8 [ 1, %_mi_os_random_weak.exit.preheader ], [ 0, %bb.b ]
  %i.dl = getelementptr inbounds nuw i8, ptr %0, i64 132
  store i8 %.sink, ptr %i.dl, align 4, !tbaa !18
  %i.dm = ptrtoint ptr %0 to i64
  %i.dn = getelementptr inbounds nuw i8, ptr %0, i64 128
  store i32 0, ptr %i.dn, align 4, !tbaa !8
  %i.do = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  %i.dp = load i64, ptr @_mi_cpu_stosb_max, align 8, !tbaa !14 ; 2 uses
  %.not.i.i.i = icmp ult i64 %i.dp, 64
  br i1 %.not.i.i.i, label %bb.g, label %bb.f, !prof !16

bb.f:                                             ; preds = %bb.e
  %i.dq = call { ptr, i64 } asm sideeffect "rep stosb", "={di},={cx},{ax},0,1,~{memory},~{dirflag},~{fpsr},~{flags}"(i8 0, ptr nonnull %i.do, i64 range(i64 32, 137) 64) #7, !srcloc !17 ; 0 uses
  %.pre = load i64, ptr @_mi_cpu_stosb_max, align 8, !tbaa !14
  br label %chacha_init.exit

bb.g:                                             ; preds = %bb.e
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(64) %i.do, i8 0, i64 range(i64 32, 137) 64, i1 false)
  br label %chacha_init.exit

chacha_init.exit:                                 ; preds = %bb.f, %bb.g
  %i.dr = phi i64 [ %.pre, %bb.f ], [ %i.dp, %bb.g ]
  store <4 x i32> <i32 1634760805, i32 857760878, i32 2036477234, i32 1797285236>, ptr %0, align 4, !tbaa !11
  %i.ds = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.dt = load <4 x i32>, ptr %i.a, align 16
  store <4 x i32> %i.dt, ptr %i.ds, align 4, !tbaa !11
  %i.du = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.dv = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.dw = load <4 x i32>, ptr %i.du, align 16
  store <4 x i32> %i.dw, ptr %i.dv, align 4, !tbaa !11
  %i.dx = getelementptr inbounds nuw i8, ptr %0, i64 48
  store i32 0, ptr %i.dx, align 4, !tbaa !11
  %i.dy = getelementptr inbounds nuw i8, ptr %0, i64 52
  store i32 0, ptr %i.dy, align 4, !tbaa !11
  %i.dz = getelementptr inbounds nuw i8, ptr %0, i64 56
  store i64 %i.dm, ptr %i.dz, align 4
  %.not.i.i = icmp ult i64 %i.dr, 32
  br i1 %.not.i.i, label %_mi_memzero.exit, label %bb.h, !prof !16

bb.h:                                             ; preds = %chacha_init.exit
  %i.ea = call { ptr, i64 } asm sideeffect "rep stosb", "={di},={cx},{ax},0,1,~{memory},~{dirflag},~{fpsr},~{flags}"(i8 0, ptr nonnull %i.a, i64 range(i64 32, 137) 32) #7, !srcloc !17 ; 0 uses
  br label %_mi_memzero.exit

_mi_memzero.exit:                                 ; preds = %chacha_init.exit, %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #7
  ret void
}

; Function Attrs: nooutline nounwind uwtable
define hidden void @_mi_random_init_weak(ptr noundef %0) local_unnamed_addr #0 {
bb.a:
  tail call fastcc void @mi_random_init_ex(ptr noundef %0, i1 noundef zeroext true) #6
  ret void
}

; Function Attrs: nooutline nounwind uwtable
define hidden void @_mi_random_reinit_if_weak(ptr noundef %0) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 132
  %i.b = load i8, ptr %i.a, align 4, !tbaa !18, !range !19, !noundef !20
  %i.c = trunc nuw i8 %i.b to i1
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call fastcc void @mi_random_init_ex(ptr noundef nonnull %0, i1 noundef zeroext false) #6
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  ret void
}

; Function Attrs: nofree nooutline norecurse nosync nounwind memory(argmem: readwrite) uwtable
define internal fastcc void @chacha_block(ptr nofree noundef captures(none) %0) unnamed_addr #2 {
.preheader21:
  %.sroa.0.0.copyload = load i32, ptr %0, align 4, !tbaa !11
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 2 uses
  %.sroa.6.0.copyload = load i32, ptr %.sroa.6.0..sroa_idx, align 4, !tbaa !11
  %.sroa.9.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.sroa.9.0.copyload = load i32, ptr %.sroa.9.0..sroa_idx, align 4, !tbaa !11
  %.sroa.12.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 12
  %.sroa.12.0.copyload = load i32, ptr %.sroa.12.0..sroa_idx, align 4, !tbaa !11
  %.sroa.15.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.sroa.15.0.copyload = load i32, ptr %.sroa.15.0..sroa_idx, align 4, !tbaa !11
  %.sroa.18.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 20 ; 2 uses
  %.sroa.18.0.copyload = load i32, ptr %.sroa.18.0..sroa_idx, align 4, !tbaa !11
  %.sroa.21.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  %.sroa.21.0.copyload = load i32, ptr %.sroa.21.0..sroa_idx, align 4, !tbaa !11
  %.sroa.24.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 28
  %.sroa.24.0.copyload = load i32, ptr %.sroa.24.0..sroa_idx, align 4, !tbaa !11
  %.sroa.27.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32
  %.sroa.27.0.copyload = load i32, ptr %.sroa.27.0..sroa_idx, align 4, !tbaa !11
  %.sroa.30.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 36 ; 2 uses
  %.sroa.30.0.copyload = load i32, ptr %.sroa.30.0..sroa_idx, align 4, !tbaa !11
  %.sroa.33.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 40
  %.sroa.33.0.copyload = load i32, ptr %.sroa.33.0..sroa_idx, align 4, !tbaa !11
  %.sroa.36.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 44
  %.sroa.36.0.copyload = load i32, ptr %.sroa.36.0..sroa_idx, align 4, !tbaa !11
  %.sroa.39.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 3 uses
  %.sroa.39.0.copyload = load i32, ptr %.sroa.39.0..sroa_idx, align 4, !tbaa !11
  %.sroa.42.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 52 ; 3 uses
  %.sroa.42.0.copyload = load i32, ptr %.sroa.42.0..sroa_idx, align 4, !tbaa !11
  %.sroa.45.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 3 uses
  %.sroa.45.0.copyload = load i32, ptr %.sroa.45.0..sroa_idx, align 4, !tbaa !11
  %.sroa.48.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 60 ; 2 uses
  %.sroa.48.0.copyload = load i32, ptr %.sroa.48.0..sroa_idx, align 4, !tbaa !11
  br label %bb.a

.preheader:                                       ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.b = load i32, ptr %0, align 4, !tbaa !11
  %i.c = add i32 %i.b, %i.dd
  store i32 %i.c, ptr %i.a, align 4, !tbaa !11
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 68
  %i.e = load <4 x i32>, ptr %.sroa.6.0..sroa_idx, align 4, !tbaa !11
  %i.f = insertelement <4 x i32> poison, i32 %i.dy, i64 0
  %i.g = insertelement <4 x i32> %i.f, i32 %i.ea, i64 1
  %i.h = insertelement <4 x i32> %i.g, i32 %i.eg, i64 2
  %i.i = insertelement <4 x i32> %i.h, i32 %i.es, i64 3
  %i.j = add <4 x i32> %i.e, %i.i
  store <4 x i32> %i.j, ptr %i.d, align 4, !tbaa !11
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 84
  %i.l = load <4 x i32>, ptr %.sroa.18.0..sroa_idx, align 4, !tbaa !11
  %i.m = insertelement <4 x i32> poison, i32 %i.el, i64 0
  %i.n = insertelement <4 x i32> %i.m, i32 %i.ep, i64 1
  %i.o = insertelement <4 x i32> %i.n, i32 %i.ef, i64 2
  %i.p = insertelement <4 x i32> %i.o, i32 %i.ed, i64 3
  %i.q = add <4 x i32> %i.l, %i.p
  store <4 x i32> %i.q, ptr %i.k, align 4, !tbaa !11
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 100
  %i.s = load i32, ptr %.sroa.39.0..sroa_idx, align 4, !tbaa !11
  %i.t = load <4 x i32>, ptr %.sroa.30.0..sroa_idx, align 4, !tbaa !11
  %i.u = insertelement <4 x i32> poison, i32 %i.eq, i64 0
  %i.v = insertelement <4 x i32> %i.u, i32 %i.ej, i64 1
  %i.w = insertelement <4 x i32> %i.v, i32 %i.en, i64 2
  %i.x = insertelement <4 x i32> %i.w, i32 %i.em, i64 3
  %i.y = add <4 x i32> %i.t, %i.x
  store <4 x i32> %i.y, ptr %i.r, align 4, !tbaa !11
  %i.z = load i32, ptr %.sroa.42.0..sroa_idx, align 4, !tbaa !11 ; 2 uses
  %i.aa = add i32 %i.z, %i.ec
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 116
  store i32 %i.aa, ptr %i.ab, align 4, !tbaa !11
  %i.ac = load i32, ptr %.sroa.45.0..sroa_idx, align 4, !tbaa !11 ; 2 uses
  %i.ad = add i32 %i.ac, %i.ei
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 120
  store i32 %i.ad, ptr %i.ae, align 4, !tbaa !11
  %i.af = load i32, ptr %.sroa.48.0..sroa_idx, align 4, !tbaa !11
  %i.ag = add i32 %i.af, %i.df
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 124
  store i32 %i.ag, ptr %i.ah, align 4, !tbaa !11
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 128
  store i32 16, ptr %i.ai, align 4, !tbaa !8
  %i.aj = add i32 %i.s, 1                         ; 2 uses
  store i32 %i.aj, ptr %.sroa.39.0..sroa_idx, align 4, !tbaa !11
  %i.ak = icmp eq i32 %i.aj, 0
  br i1 %i.ak, label %bb.b, label %bb.d

bb.a:                                             ; preds = %.preheader21, %bb.a
  %.01953 = phi i64 [ 0, %.preheader21 ], [ %i.et, %bb.a ] ; 2 uses
  %i.al = phi i32 [ %.sroa.15.0.copyload, %.preheader21 ], [ %i.es, %bb.a ] ; 2 uses
  %i.am = phi i32 [ %.sroa.0.0.copyload, %.preheader21 ], [ %i.dd, %bb.a ]
  %i.an = phi i32 [ %.sroa.39.0.copyload, %.preheader21 ], [ %i.em, %bb.a ]
  %i.ao = phi i32 [ %.sroa.27.0.copyload, %.preheader21 ], [ %i.ed, %bb.a ]
  %i.ap = phi i32 [ %.sroa.18.0.copyload, %.preheader21 ], [ %i.el, %bb.a ] ; 2 uses
  %i.aq = phi i32 [ %.sroa.6.0.copyload, %.preheader21 ], [ %i.dy, %bb.a ]
  %i.ar = phi i32 [ %.sroa.42.0.copyload, %.preheader21 ], [ %i.ec, %bb.a ]
  %i.as = phi i32 [ %.sroa.30.0.copyload, %.preheader21 ], [ %i.eq, %bb.a ]
  %i.at = phi i32 [ %.sroa.21.0.copyload, %.preheader21 ], [ %i.ep, %bb.a ] ; 2 uses
  %i.au = phi i32 [ %.sroa.9.0.copyload, %.preheader21 ], [ %i.ea, %bb.a ]
  %i.av = phi i32 [ %.sroa.45.0.copyload, %.preheader21 ], [ %i.ei, %bb.a ]
  %i.aw = phi i32 [ %.sroa.33.0.copyload, %.preheader21 ], [ %i.ej, %bb.a ]
  %i.ax = phi i32 [ %.sroa.24.0.copyload, %.preheader21 ], [ %i.ef, %bb.a ] ; 2 uses
  %i.ay = phi i32 [ %.sroa.12.0.copyload, %.preheader21 ], [ %i.eg, %bb.a ]
  %i.az = phi i32 [ %.sroa.48.0.copyload, %.preheader21 ], [ %i.df, %bb.a ]
  %i.ba = phi i32 [ %.sroa.36.0.copyload, %.preheader21 ], [ %i.en, %bb.a ]
  %i.bb = add i32 %i.am, %i.al                    ; 2 uses
  %i.bc = xor i32 %i.an, %i.bb                    ; 2 uses
  %i.bd = tail call noundef i32 @llvm.fshl.i32(i32 %i.bc, i32 %i.bc, i32 16) ; 2 uses
  %i.be = add i32 %i.bd, %i.ao                    ; 2 uses
  %i.bf = xor i32 %i.be, %i.al                    ; 2 uses
  %i.bg = tail call noundef i32 @llvm.fshl.i32(i32 %i.bf, i32 %i.bf, i32 12) ; 2 uses
  %i.bh = add i32 %i.bg, %i.bb                    ; 2 uses
  %i.bi = xor i32 %i.bh, %i.bd                    ; 2 uses
  %i.bj = tail call noundef i32 @llvm.fshl.i32(i32 %i.bi, i32 %i.bi, i32 8) ; 2 uses
  %i.bk = add i32 %i.bj, %i.be                    ; 2 uses
  %i.bl = xor i32 %i.bk, %i.bg                    ; 2 uses
  %i.bm = tail call noundef i32 @llvm.fshl.i32(i32 %i.bl, i32 %i.bl, i32 7) ; 2 uses
  %i.bn = add i32 %i.aq, %i.ap                    ; 2 uses
  %i.bo = xor i32 %i.ar, %i.bn                    ; 2 uses
  %i.bp = tail call noundef i32 @llvm.fshl.i32(i32 %i.bo, i32 %i.bo, i32 16) ; 2 uses
  %i.bq = add i32 %i.bp, %i.as                    ; 2 uses
  %i.br = xor i32 %i.bq, %i.ap                    ; 2 uses
  %i.bs = tail call noundef i32 @llvm.fshl.i32(i32 %i.br, i32 %i.br, i32 12) ; 2 uses
  %i.bt = add i32 %i.bs, %i.bn                    ; 2 uses
  %i.bu = xor i32 %i.bt, %i.bp                    ; 2 uses
  %i.bv = tail call noundef i32 @llvm.fshl.i32(i32 %i.bu, i32 %i.bu, i32 8) ; 2 uses
  %i.bw = add i32 %i.bv, %i.bq                    ; 2 uses
  %i.bx = xor i32 %i.bw, %i.bs                    ; 2 uses
  %i.by = tail call noundef i32 @llvm.fshl.i32(i32 %i.bx, i32 %i.bx, i32 7) ; 2 uses
  %i.bz = add i32 %i.au, %i.at                    ; 2 uses
  %i.ca = xor i32 %i.av, %i.bz                    ; 2 uses
  %i.cb = tail call noundef i32 @llvm.fshl.i32(i32 %i.ca, i32 %i.ca, i32 16) ; 2 uses
  %i.cc = add i32 %i.cb, %i.aw                    ; 2 uses
  %i.cd = xor i32 %i.cc, %i.at                    ; 2 uses
  %i.ce = tail call noundef i32 @llvm.fshl.i32(i32 %i.cd, i32 %i.cd, i32 12) ; 2 uses
  %i.cf = add i32 %i.ce, %i.bz                    ; 2 uses
  %i.cg = xor i32 %i.cf, %i.cb                    ; 2 uses
  %i.ch = tail call noundef i32 @llvm.fshl.i32(i32 %i.cg, i32 %i.cg, i32 8) ; 2 uses
  %i.ci = add i32 %i.ch, %i.cc                    ; 2 uses
  %i.cj = xor i32 %i.ci, %i.ce                    ; 2 uses
  %i.ck = tail call noundef i32 @llvm.fshl.i32(i32 %i.cj, i32 %i.cj, i32 7) ; 2 uses
  %i.cl = add i32 %i.ay, %i.ax                    ; 2 uses
  %i.cm = xor i32 %i.az, %i.cl                    ; 2 uses
  %i.cn = tail call noundef i32 @llvm.fshl.i32(i32 %i.cm, i32 %i.cm, i32 16) ; 2 uses
  %i.co = add i32 %i.cn, %i.ba                    ; 2 uses
  %i.cp = xor i32 %i.co, %i.ax                    ; 2 uses
  %i.cq = tail call noundef i32 @llvm.fshl.i32(i32 %i.cp, i32 %i.cp, i32 12) ; 2 uses
  %i.cr = add i32 %i.cq, %i.cl                    ; 2 uses
  %i.cs = xor i32 %i.cr, %i.cn                    ; 2 uses
end_hunk_0

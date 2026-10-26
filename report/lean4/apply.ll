Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/lean4/original/apply?download=true
inline.NumInlined: 3227
inline.NumDeleted: 31
loop-unroll.NumRuntimeUnrolled: 19
loop-unroll.NumUnrolled: 19
begin_hunk_0_@lean_apply_1:bb.a
  %i.axm = load ptr, ptr %i.aub, align 8, !tbaa !18
  %i.axn = load ptr, ptr %i.aui, align 8, !tbaa !18
  %i.axo = load ptr, ptr %i.aup, align 8, !tbaa !18
  %i.axp = load ptr, ptr %i.auw, align 8, !tbaa !18
  %i.axq = load ptr, ptr %i.avd, align 8, !tbaa !18
  %i.axr = load ptr, ptr %i.avk, align 8, !tbaa !18
  %i.axs = load ptr, ptr %i.avr, align 8, !tbaa !18
  %i.axt = load ptr, ptr %i.avy, align 8, !tbaa !18
  %i.axu = load ptr, ptr %i.awf, align 8, !tbaa !18
  %i.axv = load ptr, ptr %i.awm, align 8, !tbaa !18
  %i.axw = load ptr, ptr %i.awt, align 8, !tbaa !18
  %i.axx = tail call noundef ptr %.val812(ptr noundef %i.axj, ptr noundef %i.axk, ptr noundef %i.axl, ptr noundef %i.axm, ptr noundef %i.axn, ptr noundef %i.axo, ptr noundef %i.axp, ptr noundef %i.axq, ptr noundef %i.axr, ptr noundef %i.axs, ptr noundef %i.axt, ptr noundef %i.axu, ptr noundef %i.axv, ptr noundef %i.axw, ptr noundef %i.axh, ptr noundef %1) ; 3 uses
  %i.axy = load i32, ptr %0, align 8, !tbaa !20   ; 3 uses
  %i.axz = icmp sgt i32 %i.axy, 1
  br i1 %i.axz, label %bb.uv, label %bb.uw, !prof !21

bb.uv:                                            ; preds = %_ZL8lean_incP11lean_object.exit570
  %i.aya = add nsw i32 %i.axy, -1
  store i32 %i.aya, ptr %0, align 8, !tbaa !20
  br label %_ZL8lean_decP11lean_object.exit

bb.uw:                                            ; preds = %_ZL8lean_incP11lean_object.exit570
  %.not.i536 = icmp eq i32 %i.axy, 0
  br i1 %.not.i536, label %_ZL8lean_decP11lean_object.exit, label %bb.ux

bb.ux:                                            ; preds = %bb.uw
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %0)
  br label %_ZL8lean_decP11lean_object.exit

bb.uy:                                            ; preds = %bb.i, %bb.z
  %i.ayb = shl nuw nsw i32 %i.j, 3
  %i.ayc = zext nneg i32 %i.ayb to i64
  %i.ayd = alloca i8, i64 %i.ayc, align 16        ; 3 uses
  %.not1208 = icmp eq i16 %.val809, 0
  br i1 %.not1208, label %.preheader, label %.lr.ph

.lr.ph:                                           ; preds = %bb.uy
  %i.aye = getelementptr inbounds nuw i8, ptr %0, i64 24
  %wide.trip.count = zext i16 %.val809 to i64
  br label %bb.uz

.preheader:                                       ; preds = %_ZL8lean_incP11lean_object.exit, %bb.uy
  %i.ayf = zext i16 %.val809 to i64
  %i.ayg = getelementptr inbounds nuw [8 x i8], ptr %i.ayd, i64 %i.ayf
  store ptr %1, ptr %i.ayg, align 8, !tbaa !18
  %i.ayh = getelementptr i8, ptr %0, i64 8
  %.val811 = load ptr, ptr %i.ayh, align 8, !tbaa !18
  %i.ayi = call noundef ptr %.val811(ptr noundef nonnull %i.ayd) ; 3 uses
  %i.ayj = load i32, ptr %0, align 8, !tbaa !20   ; 3 uses
  %i.ayk = icmp sgt i32 %i.ayj, 1
  br i1 %i.ayk, label %bb.ve, label %bb.vf, !prof !21

bb.uz:                                            ; preds = %.lr.ph, %_ZL8lean_incP11lean_object.exit
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %_ZL8lean_incP11lean_object.exit ] ; 3 uses
  %i.ayl = getelementptr inbounds nuw [8 x i8], ptr %i.aye, i64 %indvars.iv ; 2 uses
  %i.aym = load ptr, ptr %i.ayl, align 8, !tbaa !18 ; 7 uses
  %i.ayn = ptrtoint ptr %i.aym to i64
  %i.ayo = and i64 %i.ayn, 1
  %.not.i568 = icmp eq i64 %i.ayo, 0
  br i1 %.not.i568, label %bb.va, label %_ZL8lean_incP11lean_object.exit

bb.va:                                            ; preds = %bb.uz
  %.val.i.i1203 = load i32, ptr %i.aym, align 4, !tbaa !20 ; 3 uses
  %i.ayp = icmp sgt i32 %.val.i.i1203, 0
  br i1 %i.ayp, label %bb.vb, label %bb.vc, !prof !21

bb.vb:                                            ; preds = %bb.va
  %i.ayq = add nuw i32 %.val.i.i1203, 1
  store i32 %i.ayq, ptr %i.aym, align 4, !tbaa !20
  br label %_ZL8lean_incP11lean_object.exit

bb.vc:                                            ; preds = %bb.va
  %.not.i.i1204 = icmp eq i32 %.val.i.i1203, 0
  br i1 %.not.i.i1204, label %_ZL8lean_incP11lean_object.exit, label %bb.vd

bb.vd:                                            ; preds = %bb.vc
  %i.ayr = atomicrmw add ptr %i.aym, i32 -1 monotonic, align 4 ; 0 uses
  %.pre1224 = load ptr, ptr %i.ayl, align 8, !tbaa !18
  br label %_ZL8lean_incP11lean_object.exit

_ZL8lean_incP11lean_object.exit:                  ; preds = %bb.vd, %bb.vc, %bb.vb, %bb.uz
  %i.ays = phi ptr [ %.pre1224, %bb.vd ], [ %i.aym, %bb.vc ], [ %i.aym, %bb.vb ], [ %i.aym, %bb.uz ]
  %i.ayt = getelementptr inbounds nuw [8 x i8], ptr %i.ayd, i64 %indvars.iv
  store ptr %i.ays, ptr %i.ayt, align 8, !tbaa !18
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %.preheader, label %bb.uz, !llvm.loop !28

bb.ve:                                            ; preds = %.preheader
  %i.ayu = add nsw i32 %i.ayj, -1
  store i32 %i.ayu, ptr %0, align 8, !tbaa !20
  br label %_ZL8lean_decP11lean_object.exit

bb.vf:                                            ; preds = %.preheader
  %.not.i534 = icmp eq i32 %i.ayj, 0
  br i1 %.not.i534, label %_ZL8lean_decP11lean_object.exit, label %bb.vg

bb.vg:                                            ; preds = %bb.vf
  call void @lean_dec_ref_cold(ptr noundef nonnull %0)
  br label %_ZL8lean_decP11lean_object.exit

bb.vh:                                            ; preds = %bb.g
  %.not531 = icmp ugt i16 %.val, %.val809
  br i1 %.not531, label %bb.vj, label %bb.vi

bb.vi:                                            ; preds = %bb.vh
  %i.ayv = tail call ptr @__cxa_allocate_exception(i64 40) #7 ; 5 uses
  %i.ayw = getelementptr inbounds nuw i8, ptr %i.ayv, i64 8
  %i.ayx = getelementptr inbounds nuw i8, ptr %i.ayv, i64 24 ; 2 uses
  store ptr %i.ayx, ptr %i.ayw, align 8, !tbaa !11
  %i.ayy = getelementptr inbounds nuw i8, ptr %i.ayv, i64 16
  store i64 0, ptr %i.ayy, align 8, !tbaa !14
  store i8 0, ptr %i.ayx, align 8, !tbaa !15
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN4lean19unreachable_reachedE, i64 16), ptr %i.ayv, align 8, !tbaa !17
  tail call void @__cxa_throw(ptr nonnull %i.ayv, ptr nonnull @_ZTIN4lean19unreachable_reachedE, ptr nonnull @_ZN4lean9throwableD2Ev) #8
  unreachable

bb.vj:                                            ; preds = %bb.vh
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #7
  store ptr %1, ptr %i.a, align 8, !tbaa !18
  %i.ayz = call fastcc noundef ptr @_ZN4leanL8fix_argsEP11lean_objectjPKS1_(ptr noundef nonnull %0, i32 noundef 1, ptr noundef nonnull readonly %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #7
  br label %_ZL8lean_decP11lean_object.exit

_ZL8lean_decP11lean_object.exit:                  ; preds = %bb.vg, %bb.vf, %bb.ve, %bb.ux, %bb.uw, %bb.uv, %bb.sl, %bb.sk, %bb.sj, %bb.qd, %bb.qc, %bb.qb, %bb.nz, %bb.ny, %bb.nx, %bb.lz, %bb.ly, %bb.lx, %bb.kd, %bb.kc, %bb.kb, %bb.il, %bb.ik, %bb.ij, %bb.gx, %bb.gw, %bb.gv, %bb.fn, %bb.fm, %bb.fl, %bb.eh, %bb.eg, %bb.ef, %bb.df, %bb.de, %bb.dd, %bb.ch, %bb.cg, %bb.cf, %bb.bn, %bb.bm, %bb.bl, %bb.ax, %bb.aw, %bb.av, %bb.al, %bb.ak, %bb.aj, %bb.ad, %bb.ac, %bb.ab, %bb.b, %bb.d, %bb.e, %bb.f, %bb.j, %bb.k, %bb.l, %bb.m, %bb.n, %bb.o, %bb.p, %bb.q, %bb.r, %bb.s, %bb.t, %bb.u, %bb.v, %bb.w, %bb.x, %bb.y, %bb.vj
  %.1 = phi ptr [ %i.ayz, %bb.vj ], [ %i.axx, %bb.ux ], [ %0, %bb.b ], [ %i.kc, %bb.ad ], [ %i.kp, %bb.al ], [ %i.lk, %bb.ax ], [ %i.mn, %bb.bn ], [ %i.ny, %bb.ch ], [ %i.pr, %bb.df ], [ %i.rs, %bb.eh ], [ %i.ub, %bb.fn ], [ %i.ws, %bb.gx ], [ %i.zr, %bb.il ], [ %i.acy, %bb.kd ], [ %i.agn, %bb.lz ], [ %i.akk, %bb.nz ], [ %i.aop, %bb.qd ], [ %i.atc, %bb.sl ], [ %i.q, %bb.j ], [ %i.u, %bb.k ], [ %i.aa, %bb.l ], [ %i.ai, %bb.m ], [ %i.as, %bb.n ], [ %i.be, %bb.o ], [ %i.bs, %bb.p ], [ %i.ci, %bb.q ], [ %i.da, %bb.r ], [ %i.du, %bb.s ], [ %i.eq, %bb.t ], [ %i.fo, %bb.u ], [ %i.go, %bb.v ], [ %i.hq, %bb.w ], [ %i.iu, %bb.x ], [ %i.ka, %bb.y ], [ %0, %bb.f ], [ %0, %bb.e ], [ %0, %bb.d ], [ %i.kc, %bb.ab ], [ %i.kc, %bb.ac ], [ %i.kp, %bb.aj ], [ %i.kp, %bb.ak ], [ %i.lk, %bb.av ], [ %i.lk, %bb.aw ], [ %i.mn, %bb.bl ], [ %i.mn, %bb.bm ], [ %i.ny, %bb.cf ], [ %i.ny, %bb.cg ], [ %i.pr, %bb.dd ], [ %i.pr, %bb.de ], [ %i.rs, %bb.ef ], [ %i.rs, %bb.eg ], [ %i.ub, %bb.fl ], [ %i.ub, %bb.fm ], [ %i.ws, %bb.gv ], [ %i.ws, %bb.gw ], [ %i.zr, %bb.ij ], [ %i.zr, %bb.ik ], [ %i.acy, %bb.kb ], [ %i.acy, %bb.kc ], [ %i.agn, %bb.lx ], [ %i.agn, %bb.ly ], [ %i.akk, %bb.nx ], [ %i.akk, %bb.ny ], [ %i.aop, %bb.qb ], [ %i.aop, %bb.qc ], [ %i.atc, %bb.sj ], [ %i.atc, %bb.sk ], [ %i.axx, %bb.uv ], [ %i.axx, %bb.uw ], [ %i.ayi, %bb.ve ], [ %i.ayi, %bb.vf ], [ %i.ayi, %bb.vg ]
  ret ptr %.1
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #3

declare void @lean_free_object(ptr noundef) local_unnamed_addr #4

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #3

; Function Attrs: mustprogress uwtable
define ptr @lean_apply_2(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca [2 x ptr], align 16               ; 11 uses
  %i.b = alloca [2 x ptr], align 8                ; 5 uses
  %i.c = ptrtoint ptr %0 to i64
  %i.d = and i64 %i.c, 1
  %.not = icmp eq i64 %i.d, 0
  br i1 %.not, label %bb.k, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = ptrtoint ptr %1 to i64
  %i.f = and i64 %i.e, 1
  %.not.i543 = icmp eq i64 %i.f, 0
  br i1 %.not.i543, label %bb.c, label %_ZL8lean_decP11lean_object.exit544

bb.c:                                             ; preds = %bb.b
  %i.g = load i32, ptr %1, align 4, !tbaa !20     ; 3 uses
  %i.h = icmp sgt i32 %i.g, 1
  br i1 %i.h, label %bb.d, label %bb.e, !prof !21

bb.d:                                             ; preds = %bb.c
  %i.i = add nsw i32 %i.g, -1
  store i32 %i.i, ptr %1, align 4, !tbaa !20
  br label %_ZL8lean_decP11lean_object.exit544

bb.e:                                             ; preds = %bb.c
  %.not.i545 = icmp eq i32 %i.g, 0
  br i1 %.not.i545, label %_ZL8lean_decP11lean_object.exit544, label %bb.f

bb.f:                                             ; preds = %bb.e
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %1)
  br label %_ZL8lean_decP11lean_object.exit544

_ZL8lean_decP11lean_object.exit544:               ; preds = %bb.f, %bb.e, %bb.d, %bb.b
  %i.j = ptrtoint ptr %2 to i64
  %i.k = and i64 %i.j, 1
  %.not.i = icmp eq i64 %i.k, 0
  br i1 %.not.i, label %bb.g, label %_ZL8lean_decP11lean_object.exit

bb.g:                                             ; preds = %_ZL8lean_decP11lean_object.exit544
  %i.l = load i32, ptr %2, align 4, !tbaa !20     ; 3 uses
  %i.m = icmp sgt i32 %i.l, 1
  br i1 %i.m, label %bb.h, label %bb.i, !prof !21

bb.h:                                             ; preds = %bb.g
  %i.n = add nsw i32 %i.l, -1
  store i32 %i.n, ptr %2, align 4, !tbaa !20
  br label %_ZL8lean_decP11lean_object.exit

bb.i:                                             ; preds = %bb.g
  %.not.i546 = icmp eq i32 %i.l, 0
  br i1 %.not.i546, label %_ZL8lean_decP11lean_object.exit, label %bb.j

bb.j:                                             ; preds = %bb.i
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %2)
  br label %_ZL8lean_decP11lean_object.exit

bb.k:                                             ; preds = %bb.a
  %i.o = getelementptr i8, ptr %0, i64 16
  %.val = load i16, ptr %i.o, align 8, !tbaa !23  ; 4 uses
  %i.p = zext i16 %.val to i32                    ; 7 uses
  %i.q = getelementptr i8, ptr %0, i64 18
  %.val795 = load i16, ptr %i.q, align 2, !tbaa !23 ; 7 uses
  %i.r = zext i16 %.val795 to i32                 ; 9 uses
  %i.s = add nuw nsw i32 %i.r, 2                  ; 3 uses
  %i.t = icmp eq i32 %i.s, %i.p
  br i1 %i.t, label %bb.l, label %bb.sy

bb.l:                                             ; preds = %bb.k
  %.val796 = load i32, ptr %0, align 8, !tbaa !20
  %i.u = icmp eq i32 %.val796, 1
  br i1 %i.u, label %bb.m, label %bb.ac

bb.m:                                             ; preds = %bb.l
  switch i16 %.val, label %bb.sp [
    i16 2, label %bb.n
    i16 3, label %bb.o
    i16 4, label %bb.p
    i16 5, label %bb.q
    i16 6, label %bb.r
    i16 7, label %bb.s
    i16 8, label %bb.t
    i16 9, label %bb.u
    i16 10, label %bb.v
    i16 11, label %bb.w
    i16 12, label %bb.x
    i16 13, label %bb.y
    i16 14, label %bb.z
    i16 15, label %bb.aa
    i16 16, label %bb.ab
  ]

bb.n:                                             ; preds = %bb.m
  %i.v = getelementptr i8, ptr %0, i64 8
  %.val827 = load ptr, ptr %i.v, align 8, !tbaa !18
  %i.w = tail call noundef ptr %.val827(ptr noundef %1, ptr noundef %2)
  tail call void @lean_free_object(ptr noundef nonnull %0)
  br label %_ZL8lean_decP11lean_object.exit

bb.o:                                             ; preds = %bb.m
  %i.x = getelementptr i8, ptr %0, i64 8
  %.val826 = load ptr, ptr %i.x, align 8, !tbaa !18
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !18
  %i.aa = tail call noundef ptr %.val826(ptr noundef %i.z, ptr noundef %1, ptr noundef %2)
  tail call void @lean_free_object(ptr noundef nonnull %0)
  br label %_ZL8lean_decP11lean_object.exit

bb.p:                                             ; preds = %bb.m
  %i.ab = getelementptr i8, ptr %0, i64 8
  %.val825 = load ptr, ptr %i.ab, align 8, !tbaa !18
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !18
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !18
  %i.ag = tail call noundef ptr %.val825(ptr noundef %i.ad, ptr noundef %i.af, ptr noundef %1, ptr noundef %2)
  tail call void @lean_free_object(ptr noundef nonnull %0)
  br label %_ZL8lean_decP11lean_object.exit

bb.q:                                             ; preds = %bb.m
  %i.ah = getelementptr i8, ptr %0, i64 8
  %.val824 = load ptr, ptr %i.ah, align 8, !tbaa !18
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !18
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !18
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !18
  %i.ao = tail call noundef ptr %.val824(ptr noundef %i.aj, ptr noundef %i.al, ptr noundef %i.an, ptr noundef %1, ptr noundef %2)
  tail call void @lean_free_object(ptr noundef nonnull %0)
  br label %_ZL8lean_decP11lean_object.exit

bb.r:                                             ; preds = %bb.m
  %i.ap = getelementptr i8, ptr %0, i64 8
  %.val823 = load ptr, ptr %i.ap, align 8, !tbaa !18
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.ar = load ptr, ptr %i.aq, align 8, !tbaa !18
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.at = load ptr, ptr %i.as, align 8, !tbaa !18
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.av = load ptr, ptr %i.au, align 8, !tbaa !18
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.ax = load ptr, ptr %i.aw, align 8, !tbaa !18
  %i.ay = tail call noundef ptr %.val823(ptr noundef %i.ar, ptr noundef %i.at, ptr noundef %i.av, ptr noundef %i.ax, ptr noundef %1, ptr noundef %2)
  tail call void @lean_free_object(ptr noundef nonnull %0)
  br label %_ZL8lean_decP11lean_object.exit

bb.s:                                             ; preds = %bb.m
  %i.az = getelementptr i8, ptr %0, i64 8
  %.val822 = load ptr, ptr %i.az, align 8, !tbaa !18
  %i.ba = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.bb = load ptr, ptr %i.ba, align 8, !tbaa !18
  %i.bc = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.bd = load ptr, ptr %i.bc, align 8, !tbaa !18
  %i.be = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.bf = load ptr, ptr %i.be, align 8, !tbaa !18
  %i.bg = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.bh = load ptr, ptr %i.bg, align 8, !tbaa !18
  %i.bi = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.bj = load ptr, ptr %i.bi, align 8, !tbaa !18
  %i.bk = tail call noundef ptr %.val822(ptr noundef %i.bb, ptr noundef %i.bd, ptr noundef %i.bf, ptr noundef %i.bh, ptr noundef %i.bj, ptr noundef %1, ptr noundef %2)
  tail call void @lean_free_object(ptr noundef nonnull %0)
  br label %_ZL8lean_decP11lean_object.exit

bb.t:                                             ; preds = %bb.m
  %i.bl = getelementptr i8, ptr %0, i64 8
  %.val821 = load ptr, ptr %i.bl, align 8, !tbaa !18
  %i.bm = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.bn = load ptr, ptr %i.bm, align 8, !tbaa !18
  %i.bo = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.bp = load ptr, ptr %i.bo, align 8, !tbaa !18
  %i.bq = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.br = load ptr, ptr %i.bq, align 8, !tbaa !18
  %i.bs = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.bt = load ptr, ptr %i.bs, align 8, !tbaa !18
  %i.bu = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.bv = load ptr, ptr %i.bu, align 8, !tbaa !18
  %i.bw = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.bx = load ptr, ptr %i.bw, align 8, !tbaa !18
  %i.by = tail call noundef ptr %.val821(ptr noundef %i.bn, ptr noundef %i.bp, ptr noundef %i.br, ptr noundef %i.bt, ptr noundef %i.bv, ptr noundef %i.bx, ptr noundef %1, ptr noundef %2)
  tail call void @lean_free_object(ptr noundef nonnull %0)
  br label %_ZL8lean_decP11lean_object.exit

bb.u:                                             ; preds = %bb.m
  %i.bz = getelementptr i8, ptr %0, i64 8
  %.val820 = load ptr, ptr %i.bz, align 8, !tbaa !18
  %i.ca = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.cb = load ptr, ptr %i.ca, align 8, !tbaa !18
  %i.cc = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.cd = load ptr, ptr %i.cc, align 8, !tbaa !18
  %i.ce = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.cf = load ptr, ptr %i.ce, align 8, !tbaa !18
  %i.cg = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.ch = load ptr, ptr %i.cg, align 8, !tbaa !18
  %i.ci = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.cj = load ptr, ptr %i.ci, align 8, !tbaa !18
  %i.ck = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.cl = load ptr, ptr %i.ck, align 8, !tbaa !18
  %i.cm = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.cn = load ptr, ptr %i.cm, align 8, !tbaa !18
  %i.co = tail call noundef ptr %.val820(ptr noundef %i.cb, ptr noundef %i.cd, ptr noundef %i.cf, ptr noundef %i.ch, ptr noundef %i.cj, ptr noundef %i.cl, ptr noundef %i.cn, ptr noundef %1, ptr noundef %2)
  tail call void @lean_free_object(ptr noundef nonnull %0)
  br label %_ZL8lean_decP11lean_object.exit

bb.v:                                             ; preds = %bb.m
  %i.cp = getelementptr i8, ptr %0, i64 8
  %.val819 = load ptr, ptr %i.cp, align 8, !tbaa !18
  %i.cq = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.cr = load ptr, ptr %i.cq, align 8, !tbaa !18
  %i.cs = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.ct = load ptr, ptr %i.cs, align 8, !tbaa !18
  %i.cu = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.cv = load ptr, ptr %i.cu, align 8, !tbaa !18
  %i.cw = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.cx = load ptr, ptr %i.cw, align 8, !tbaa !18
  %i.cy = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.cz = load ptr, ptr %i.cy, align 8, !tbaa !18
  %i.da = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.db = load ptr, ptr %i.da, align 8, !tbaa !18
  %i.dc = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.dd = load ptr, ptr %i.dc, align 8, !tbaa !18
  %i.de = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.df = load ptr, ptr %i.de, align 8, !tbaa !18
  %i.dg = tail call noundef ptr %.val819(ptr noundef %i.cr, ptr noundef %i.ct, ptr noundef %i.cv, ptr noundef %i.cx, ptr noundef %i.cz, ptr noundef %i.db, ptr noundef %i.dd, ptr noundef %i.df, ptr noundef %1, ptr noundef %2)
  tail call void @lean_free_object(ptr noundef nonnull %0)
  br label %_ZL8lean_decP11lean_object.exit

bb.w:                                             ; preds = %bb.m
  %i.dh = getelementptr i8, ptr %0, i64 8
  %.val818 = load ptr, ptr %i.dh, align 8, !tbaa !18
  %i.di = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.dj = load ptr, ptr %i.di, align 8, !tbaa !18
  %i.dk = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.dl = load ptr, ptr %i.dk, align 8, !tbaa !18
  %i.dm = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.dn = load ptr, ptr %i.dm, align 8, !tbaa !18
  %i.do = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.dp = load ptr, ptr %i.do, align 8, !tbaa !18
  %i.dq = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.dr = load ptr, ptr %i.dq, align 8, !tbaa !18
  %i.ds = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.dt = load ptr, ptr %i.ds, align 8, !tbaa !18
  %i.du = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.dv = load ptr, ptr %i.du, align 8, !tbaa !18
  %i.dw = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.dx = load ptr, ptr %i.dw, align 8, !tbaa !18
  %i.dy = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.dz = load ptr, ptr %i.dy, align 8, !tbaa !18
  %i.ea = tail call noundef ptr %.val818(ptr noundef %i.dj, ptr noundef %i.dl, ptr noundef %i.dn, ptr noundef %i.dp, ptr noundef %i.dr, ptr noundef %i.dt, ptr noundef %i.dv, ptr noundef %i.dx, ptr noundef %i.dz, ptr noundef %1, ptr noundef %2)
  tail call void @lean_free_object(ptr noundef nonnull %0)
  br label %_ZL8lean_decP11lean_object.exit

bb.x:                                             ; preds = %bb.m
  %i.eb = getelementptr i8, ptr %0, i64 8
  %.val817 = load ptr, ptr %i.eb, align 8, !tbaa !18
  %i.ec = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.ed = load ptr, ptr %i.ec, align 8, !tbaa !18
  %i.ee = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.ef = load ptr, ptr %i.ee, align 8, !tbaa !18
  %i.eg = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.eh = load ptr, ptr %i.eg, align 8, !tbaa !18
  %i.ei = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.ej = load ptr, ptr %i.ei, align 8, !tbaa !18
end_hunk_0
begin_hunk_1_@lean_apply_2:bb.a

bb.rn:                                            ; preds = %bb.rm
  %i.apw = atomicrmw add ptr %i.apr, i32 -1 monotonic, align 4 ; 0 uses
  br label %_ZL8lean_incP11lean_object.exit598

_ZL8lean_incP11lean_object.exit598:               ; preds = %bb.rn, %bb.rm, %bb.rl, %_ZL8lean_incP11lean_object.exit600
  %i.apx = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 2 uses
  %i.apy = load ptr, ptr %i.apx, align 8, !tbaa !18 ; 4 uses
  %i.apz = ptrtoint ptr %i.apy to i64
  %i.aqa = and i64 %i.apz, 1
  %.not.i595 = icmp eq i64 %i.aqa, 0
  br i1 %.not.i595, label %bb.ro, label %_ZL8lean_incP11lean_object.exit596

bb.ro:                                            ; preds = %_ZL8lean_incP11lean_object.exit598
  %.val.i.i1125 = load i32, ptr %i.apy, align 4, !tbaa !20 ; 3 uses
  %i.aqb = icmp sgt i32 %.val.i.i1125, 0
  br i1 %i.aqb, label %bb.rp, label %bb.rq, !prof !21

bb.rp:                                            ; preds = %bb.ro
  %i.aqc = add nuw i32 %.val.i.i1125, 1
  store i32 %i.aqc, ptr %i.apy, align 4, !tbaa !20
  br label %_ZL8lean_incP11lean_object.exit596

bb.rq:                                            ; preds = %bb.ro
  %.not.i.i1126 = icmp eq i32 %.val.i.i1125, 0
  br i1 %.not.i.i1126, label %_ZL8lean_incP11lean_object.exit596, label %bb.rr

bb.rr:                                            ; preds = %bb.rq
  %i.aqd = atomicrmw add ptr %i.apy, i32 -1 monotonic, align 4 ; 0 uses
  br label %_ZL8lean_incP11lean_object.exit596

_ZL8lean_incP11lean_object.exit596:               ; preds = %bb.rr, %bb.rq, %bb.rp, %_ZL8lean_incP11lean_object.exit598
  %i.aqe = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 2 uses
  %i.aqf = load ptr, ptr %i.aqe, align 8, !tbaa !18 ; 4 uses
  %i.aqg = ptrtoint ptr %i.aqf to i64
  %i.aqh = and i64 %i.aqg, 1
  %.not.i593 = icmp eq i64 %i.aqh, 0
  br i1 %.not.i593, label %bb.rs, label %_ZL8lean_incP11lean_object.exit594

bb.rs:                                            ; preds = %_ZL8lean_incP11lean_object.exit596
  %.val.i.i1128 = load i32, ptr %i.aqf, align 4, !tbaa !20 ; 3 uses
  %i.aqi = icmp sgt i32 %.val.i.i1128, 0
  br i1 %i.aqi, label %bb.rt, label %bb.ru, !prof !21

bb.rt:                                            ; preds = %bb.rs
  %i.aqj = add nuw i32 %.val.i.i1128, 1
  store i32 %i.aqj, ptr %i.aqf, align 4, !tbaa !20
  br label %_ZL8lean_incP11lean_object.exit594

bb.ru:                                            ; preds = %bb.rs
  %.not.i.i1129 = icmp eq i32 %.val.i.i1128, 0
  br i1 %.not.i.i1129, label %_ZL8lean_incP11lean_object.exit594, label %bb.rv

bb.rv:                                            ; preds = %bb.ru
  %i.aqk = atomicrmw add ptr %i.aqf, i32 -1 monotonic, align 4 ; 0 uses
  br label %_ZL8lean_incP11lean_object.exit594

_ZL8lean_incP11lean_object.exit594:               ; preds = %bb.rv, %bb.ru, %bb.rt, %_ZL8lean_incP11lean_object.exit596
  %i.aql = getelementptr inbounds nuw i8, ptr %0, i64 104 ; 2 uses
  %i.aqm = load ptr, ptr %i.aql, align 8, !tbaa !18 ; 4 uses
  %i.aqn = ptrtoint ptr %i.aqm to i64
  %i.aqo = and i64 %i.aqn, 1
  %.not.i591 = icmp eq i64 %i.aqo, 0
  br i1 %.not.i591, label %bb.rw, label %_ZL8lean_incP11lean_object.exit592

bb.rw:                                            ; preds = %_ZL8lean_incP11lean_object.exit594
  %.val.i.i1131 = load i32, ptr %i.aqm, align 4, !tbaa !20 ; 3 uses
  %i.aqp = icmp sgt i32 %.val.i.i1131, 0
  br i1 %i.aqp, label %bb.rx, label %bb.ry, !prof !21

bb.rx:                                            ; preds = %bb.rw
  %i.aqq = add nuw i32 %.val.i.i1131, 1
  store i32 %i.aqq, ptr %i.aqm, align 4, !tbaa !20
  br label %_ZL8lean_incP11lean_object.exit592

bb.ry:                                            ; preds = %bb.rw
  %.not.i.i1132 = icmp eq i32 %.val.i.i1131, 0
  br i1 %.not.i.i1132, label %_ZL8lean_incP11lean_object.exit592, label %bb.rz

bb.rz:                                            ; preds = %bb.ry
  %i.aqr = atomicrmw add ptr %i.aqm, i32 -1 monotonic, align 4 ; 0 uses
  br label %_ZL8lean_incP11lean_object.exit592

_ZL8lean_incP11lean_object.exit592:               ; preds = %bb.rz, %bb.ry, %bb.rx, %_ZL8lean_incP11lean_object.exit594
  %i.aqs = getelementptr inbounds nuw i8, ptr %0, i64 112 ; 2 uses
  %i.aqt = load ptr, ptr %i.aqs, align 8, !tbaa !18 ; 4 uses
  %i.aqu = ptrtoint ptr %i.aqt to i64
  %i.aqv = and i64 %i.aqu, 1
  %.not.i589 = icmp eq i64 %i.aqv, 0
  br i1 %.not.i589, label %bb.sa, label %_ZL8lean_incP11lean_object.exit590

bb.sa:                                            ; preds = %_ZL8lean_incP11lean_object.exit592
  %.val.i.i1134 = load i32, ptr %i.aqt, align 4, !tbaa !20 ; 3 uses
  %i.aqw = icmp sgt i32 %.val.i.i1134, 0
  br i1 %i.aqw, label %bb.sb, label %bb.sc, !prof !21

bb.sb:                                            ; preds = %bb.sa
  %i.aqx = add nuw i32 %.val.i.i1134, 1
  store i32 %i.aqx, ptr %i.aqt, align 4, !tbaa !20
  br label %_ZL8lean_incP11lean_object.exit590

bb.sc:                                            ; preds = %bb.sa
  %.not.i.i1135 = icmp eq i32 %.val.i.i1134, 0
  br i1 %.not.i.i1135, label %_ZL8lean_incP11lean_object.exit590, label %bb.sd

bb.sd:                                            ; preds = %bb.sc
  %i.aqy = atomicrmw add ptr %i.aqt, i32 -1 monotonic, align 4 ; 0 uses
  br label %_ZL8lean_incP11lean_object.exit590

_ZL8lean_incP11lean_object.exit590:               ; preds = %bb.sd, %bb.sc, %bb.sb, %_ZL8lean_incP11lean_object.exit592
  %i.aqz = getelementptr inbounds nuw i8, ptr %0, i64 120 ; 2 uses
  %i.ara = load ptr, ptr %i.aqz, align 8, !tbaa !18 ; 4 uses
  %i.arb = ptrtoint ptr %i.ara to i64
  %i.arc = and i64 %i.arb, 1
  %.not.i587 = icmp eq i64 %i.arc, 0
  br i1 %.not.i587, label %bb.se, label %_ZL8lean_incP11lean_object.exit588

bb.se:                                            ; preds = %_ZL8lean_incP11lean_object.exit590
  %.val.i.i1137 = load i32, ptr %i.ara, align 4, !tbaa !20 ; 3 uses
  %i.ard = icmp sgt i32 %.val.i.i1137, 0
  br i1 %i.ard, label %bb.sf, label %bb.sg, !prof !21

bb.sf:                                            ; preds = %bb.se
  %i.are = add nuw i32 %.val.i.i1137, 1
  store i32 %i.are, ptr %i.ara, align 4, !tbaa !20
  br label %_ZL8lean_incP11lean_object.exit588

bb.sg:                                            ; preds = %bb.se
  %.not.i.i1138 = icmp eq i32 %.val.i.i1137, 0
  br i1 %.not.i.i1138, label %_ZL8lean_incP11lean_object.exit588, label %bb.sh

bb.sh:                                            ; preds = %bb.sg
  %i.arf = atomicrmw add ptr %i.ara, i32 -1 monotonic, align 4 ; 0 uses
  br label %_ZL8lean_incP11lean_object.exit588

_ZL8lean_incP11lean_object.exit588:               ; preds = %bb.sh, %bb.sg, %bb.sf, %_ZL8lean_incP11lean_object.exit590
  %i.arg = getelementptr inbounds nuw i8, ptr %0, i64 128 ; 2 uses
  %i.arh = load ptr, ptr %i.arg, align 8, !tbaa !18 ; 7 uses
  %i.ari = ptrtoint ptr %i.arh to i64
  %i.arj = and i64 %i.ari, 1
  %.not.i585 = icmp eq i64 %i.arj, 0
  br i1 %.not.i585, label %bb.si, label %_ZL8lean_incP11lean_object.exit586

bb.si:                                            ; preds = %_ZL8lean_incP11lean_object.exit588
  %.val.i.i1140 = load i32, ptr %i.arh, align 4, !tbaa !20 ; 3 uses
  %i.ark = icmp sgt i32 %.val.i.i1140, 0
  br i1 %i.ark, label %bb.sj, label %bb.sk, !prof !21

bb.sj:                                            ; preds = %bb.si
  %i.arl = add nuw i32 %.val.i.i1140, 1
  store i32 %i.arl, ptr %i.arh, align 4, !tbaa !20
  br label %_ZL8lean_incP11lean_object.exit586

bb.sk:                                            ; preds = %bb.si
  %.not.i.i1141 = icmp eq i32 %.val.i.i1140, 0
  br i1 %.not.i.i1141, label %_ZL8lean_incP11lean_object.exit586, label %bb.sl

bb.sl:                                            ; preds = %bb.sk
  %i.arm = atomicrmw add ptr %i.arh, i32 -1 monotonic, align 4 ; 0 uses
  %.pre1174 = load ptr, ptr %i.arg, align 8, !tbaa !18
  br label %_ZL8lean_incP11lean_object.exit586

_ZL8lean_incP11lean_object.exit586:               ; preds = %bb.sl, %bb.sk, %bb.sj, %_ZL8lean_incP11lean_object.exit588
  %i.arn = phi ptr [ %.pre1174, %bb.sl ], [ %i.arh, %bb.sk ], [ %i.arh, %bb.sj ], [ %i.arh, %_ZL8lean_incP11lean_object.exit588 ]
  %i.aro = getelementptr i8, ptr %0, i64 8
  %.val798 = load ptr, ptr %i.aro, align 8, !tbaa !18
  %i.arp = load ptr, ptr %i.ant, align 8, !tbaa !18
  %i.arq = load ptr, ptr %i.aoa, align 8, !tbaa !18
  %i.arr = load ptr, ptr %i.aoh, align 8, !tbaa !18
  %i.ars = load ptr, ptr %i.aoo, align 8, !tbaa !18
  %i.art = load ptr, ptr %i.aov, align 8, !tbaa !18
  %i.aru = load ptr, ptr %i.apc, align 8, !tbaa !18
  %i.arv = load ptr, ptr %i.apj, align 8, !tbaa !18
  %i.arw = load ptr, ptr %i.apq, align 8, !tbaa !18
  %i.arx = load ptr, ptr %i.apx, align 8, !tbaa !18
  %i.ary = load ptr, ptr %i.aqe, align 8, !tbaa !18
  %i.arz = load ptr, ptr %i.aql, align 8, !tbaa !18
  %i.asa = load ptr, ptr %i.aqs, align 8, !tbaa !18
  %i.asb = load ptr, ptr %i.aqz, align 8, !tbaa !18
  %i.asc = tail call noundef ptr %.val798(ptr noundef %i.arp, ptr noundef %i.arq, ptr noundef %i.arr, ptr noundef %i.ars, ptr noundef %i.art, ptr noundef %i.aru, ptr noundef %i.arv, ptr noundef %i.arw, ptr noundef %i.arx, ptr noundef %i.ary, ptr noundef %i.arz, ptr noundef %i.asa, ptr noundef %i.asb, ptr noundef %i.arn, ptr noundef %1, ptr noundef %2) ; 3 uses
  %i.asd = load i32, ptr %0, align 8, !tbaa !20   ; 3 uses
  %i.ase = icmp sgt i32 %i.asd, 1
  br i1 %i.ase, label %bb.sm, label %bb.sn, !prof !21

bb.sm:                                            ; preds = %_ZL8lean_incP11lean_object.exit586
  %i.asf = add nsw i32 %i.asd, -1
  store i32 %i.asf, ptr %0, align 8, !tbaa !20
  br label %_ZL8lean_decP11lean_object.exit

bb.sn:                                            ; preds = %_ZL8lean_incP11lean_object.exit586
  %.not.i552 = icmp eq i32 %i.asd, 0
  br i1 %.not.i552, label %_ZL8lean_decP11lean_object.exit, label %bb.so

bb.so:                                            ; preds = %bb.sn
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %0)
  br label %_ZL8lean_decP11lean_object.exit

bb.sp:                                            ; preds = %bb.m, %bb.ac
  %i.asg = shl nuw nsw i32 %i.p, 3
  %i.ash = zext nneg i32 %i.asg to i64
  %i.asi = alloca i8, i64 %i.ash, align 16        ; 3 uses
  %.not1159 = icmp eq i16 %.val795, 0
  br i1 %.not1159, label %.preheader, label %.lr.ph1155

.lr.ph1155:                                       ; preds = %bb.sp
  %i.asj = getelementptr inbounds nuw i8, ptr %0, i64 24
  %wide.trip.count1169 = zext i16 %.val795 to i64
  br label %bb.sq

.preheader:                                       ; preds = %_ZL8lean_incP11lean_object.exit584, %bb.sp
  %3 = zext i16 %.val795 to i64
  %4 = shl nuw nsw i64 %3, 3
  %scevgep = getelementptr i8, ptr %i.asi, i64 %4 ; 2 uses
  store ptr %1, ptr %scevgep, align 8, !tbaa !18
  %.sroa.4.0.scevgep.sroa_idx = getelementptr inbounds nuw i8, ptr %scevgep, i64 8
  store ptr %2, ptr %.sroa.4.0.scevgep.sroa_idx, align 8, !tbaa !18
  %i.ask = getelementptr i8, ptr %0, i64 8
  %.val797 = load ptr, ptr %i.ask, align 8, !tbaa !18
  %i.asl = call noundef ptr %.val797(ptr noundef nonnull %i.asi) ; 3 uses
  %i.asm = load i32, ptr %0, align 8, !tbaa !20   ; 3 uses
  %i.asn = icmp sgt i32 %i.asm, 1
  br i1 %i.asn, label %bb.sv, label %bb.sw, !prof !21

bb.sq:                                            ; preds = %.lr.ph1155, %_ZL8lean_incP11lean_object.exit584
  %indvars.iv1166 = phi i64 [ 0, %.lr.ph1155 ], [ %indvars.iv.next1167, %_ZL8lean_incP11lean_object.exit584 ] ; 3 uses
  %i.aso = getelementptr inbounds nuw [8 x i8], ptr %i.asj, i64 %indvars.iv1166 ; 2 uses
  %i.asp = load ptr, ptr %i.aso, align 8, !tbaa !18 ; 7 uses
  %i.asq = ptrtoint ptr %i.asp to i64
  %i.asr = and i64 %i.asq, 1
  %.not.i583 = icmp eq i64 %i.asr, 0
  br i1 %.not.i583, label %bb.sr, label %_ZL8lean_incP11lean_object.exit584

bb.sr:                                            ; preds = %bb.sq
  %.val.i.i1143 = load i32, ptr %i.asp, align 4, !tbaa !20 ; 3 uses
  %i.ass = icmp sgt i32 %.val.i.i1143, 0
  br i1 %i.ass, label %bb.ss, label %bb.st, !prof !21

bb.ss:                                            ; preds = %bb.sr
  %i.ast = add nuw i32 %.val.i.i1143, 1
  store i32 %i.ast, ptr %i.asp, align 4, !tbaa !20
  br label %_ZL8lean_incP11lean_object.exit584

bb.st:                                            ; preds = %bb.sr
  %.not.i.i1144 = icmp eq i32 %.val.i.i1143, 0
  br i1 %.not.i.i1144, label %_ZL8lean_incP11lean_object.exit584, label %bb.su

bb.su:                                            ; preds = %bb.st
  %i.asu = atomicrmw add ptr %i.asp, i32 -1 monotonic, align 4 ; 0 uses
  %.pre1188 = load ptr, ptr %i.aso, align 8, !tbaa !18
  br label %_ZL8lean_incP11lean_object.exit584

_ZL8lean_incP11lean_object.exit584:               ; preds = %bb.su, %bb.st, %bb.ss, %bb.sq
  %i.asv = phi ptr [ %.pre1188, %bb.su ], [ %i.asp, %bb.st ], [ %i.asp, %bb.ss ], [ %i.asp, %bb.sq ]
  %i.asw = getelementptr inbounds nuw [8 x i8], ptr %i.asi, i64 %indvars.iv1166
  store ptr %i.asv, ptr %i.asw, align 8, !tbaa !18
  %indvars.iv.next1167 = add nuw nsw i64 %indvars.iv1166, 1 ; 2 uses
  %exitcond1170.not = icmp eq i64 %indvars.iv.next1167, %wide.trip.count1169
  br i1 %exitcond1170.not, label %.preheader, label %bb.sq, !llvm.loop !29

bb.sv:                                            ; preds = %.preheader
  %i.asx = add nsw i32 %i.asm, -1
  store i32 %i.asx, ptr %0, align 8, !tbaa !20
  br label %_ZL8lean_decP11lean_object.exit

bb.sw:                                            ; preds = %.preheader
  %.not.i550 = icmp eq i32 %i.asm, 0
  br i1 %.not.i550, label %_ZL8lean_decP11lean_object.exit, label %bb.sx

bb.sx:                                            ; preds = %bb.sw
  call void @lean_dec_ref_cold(ptr noundef nonnull %0)
  br label %_ZL8lean_decP11lean_object.exit

bb.sy:                                            ; preds = %bb.k
  %i.asy = icmp samesign ugt i32 %i.s, %i.p
  br i1 %i.asy, label %bb.sz, label %bb.ti

bb.sz:                                            ; preds = %bb.sy
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #7
  store ptr %1, ptr %i.a, align 16, !tbaa !18
  %i.asz = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr %2, ptr %i.asz, align 8, !tbaa !18
  %i.ata = shl nuw nsw i32 %i.p, 3
  %i.atb = zext nneg i32 %i.ata to i64
  %i.atc = alloca i8, i64 %i.atb, align 16        ; 8 uses
  %.not1157 = icmp eq i16 %.val795, 0
  br i1 %.not1157, label %.preheader1149, label %.lr.ph

.lr.ph:                                           ; preds = %bb.sz
  %i.atd = getelementptr inbounds nuw i8, ptr %0, i64 24
  %wide.trip.count = zext i16 %.val795 to i64
  br label %bb.ta

.preheader1149:                                   ; preds = %_ZL8lean_incP11lean_object.exit, %bb.sz
  %i.ate = sub nsw i32 %i.p, %i.r                 ; 3 uses
  %.not1158 = icmp eq i16 %.val, %.val795
  br i1 %.not1158, label %._crit_edge, label %.lr.ph1152.preheader

.lr.ph1152.preheader:                             ; preds = %.preheader1149
  %wide.trip.count1164 = zext i32 %i.ate to i64   ; 6 uses
  %min.iters.check = icmp ult i32 %i.ate, 10
  br i1 %min.iters.check, label %.lr.ph1152.preheader1231, label %vector.scevcheck

vector.scevcheck:                                 ; preds = %.lr.ph1152.preheader
  %i.atf = add nsw i64 %wide.trip.count1164, -1   ; 2 uses
  %i.atg = trunc i64 %i.atf to i32
  %i.ath = xor i32 %i.r, -1
  %i.ati = icmp ult i32 %i.ath, %i.atg
  %i.atj = icmp ugt i64 %i.atf, 4294967295
  %i.atk = or i1 %i.ati, %i.atj
  br i1 %i.atk, label %.lr.ph1152.preheader1231, label %vector.ph

vector.ph:                                        ; preds = %vector.scevcheck
  %n.vec = and i64 %wide.trip.count1164, 4294967292 ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.atl = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %index ; 2 uses
  %i.atm = getelementptr inbounds nuw i8, ptr %i.atl, i64 16
  %wide.load = load <2 x ptr>, ptr %i.atl, align 16, !tbaa !18
  %wide.load1230 = load <2 x ptr>, ptr %i.atm, align 16, !tbaa !18
  %i.atn = trunc nuw i64 %index to i32
  %i.ato = add i32 %i.atn, %i.r
  %i.atp = zext i32 %i.ato to i64
  %i.atq = getelementptr inbounds nuw [8 x i8], ptr %i.atc, i64 %i.atp ; 2 uses
  %i.atr = getelementptr inbounds nuw i8, ptr %i.atq, i64 16
  store <2 x ptr> %wide.load, ptr %i.atq, align 8, !tbaa !18
  store <2 x ptr> %wide.load1230, ptr %i.atr, align 8, !tbaa !18
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.ats = icmp eq i64 %index.next, %n.vec
  br i1 %i.ats, label %middle.block, label %vector.body, !llvm.loop !30

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count1164
  br i1 %cmp.n, label %._crit_edge, label %.lr.ph1152.preheader1231

.lr.ph1152.preheader1231:                         ; preds = %vector.scevcheck, %.lr.ph1152.preheader, %middle.block
  %indvars.iv1161.ph = phi i64 [ 0, %vector.scevcheck ], [ 0, %.lr.ph1152.preheader ], [ %n.vec, %middle.block ] ; 3 uses
  %xtraiter = and i64 %wide.trip.count1164, 3     ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph1152.prol.loopexit, label %.lr.ph1152.prol

.lr.ph1152.prol:                                  ; preds = %.lr.ph1152.preheader1231, %.lr.ph1152.prol
  %indvars.iv1161.prol = phi i64 [ %indvars.iv.next1162.prol, %.lr.ph1152.prol ], [ %indvars.iv1161.ph, %.lr.ph1152.preheader1231 ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph1152.prol ], [ 0, %.lr.ph1152.preheader1231 ]
  %i.att = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %indvars.iv1161.prol
  %i.atu = load ptr, ptr %i.att, align 8, !tbaa !18
  %i.atv = trunc nuw i64 %indvars.iv1161.prol to i32
  %i.atw = add i32 %i.atv, %i.r
  %i.atx = zext i32 %i.atw to i64
  %i.aty = getelementptr inbounds nuw [8 x i8], ptr %i.atc, i64 %i.atx
  store ptr %i.atu, ptr %i.aty, align 8, !tbaa !18
  %indvars.iv.next1162.prol = add nuw nsw i64 %indvars.iv1161.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph1152.prol.loopexit, label %.lr.ph1152.prol, !llvm.loop !31

.lr.ph1152.prol.loopexit:                         ; preds = %.lr.ph1152.prol, %.lr.ph1152.preheader1231
  %indvars.iv1161.unr = phi i64 [ %indvars.iv1161.ph, %.lr.ph1152.preheader1231 ], [ %indvars.iv.next1162.prol, %.lr.ph1152.prol ]
  %i.atz = sub nsw i64 %indvars.iv1161.ph, %wide.trip.count1164
  %i.aua = icmp ugt i64 %i.atz, -4
  br i1 %i.aua, label %._crit_edge, label %.lr.ph1152

bb.ta:                                            ; preds = %.lr.ph, %_ZL8lean_incP11lean_object.exit
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %_ZL8lean_incP11lean_object.exit ] ; 3 uses
  %i.aub = getelementptr inbounds nuw [8 x i8], ptr %i.atd, i64 %indvars.iv ; 2 uses
  %i.auc = load ptr, ptr %i.aub, align 8, !tbaa !18 ; 7 uses
  %i.aud = ptrtoint ptr %i.auc to i64
  %i.aue = and i64 %i.aud, 1
  %.not.i582 = icmp eq i64 %i.aue, 0
  br i1 %.not.i582, label %bb.tb, label %_ZL8lean_incP11lean_object.exit

bb.tb:                                            ; preds = %bb.ta
  %.val.i.i1146 = load i32, ptr %i.auc, align 4, !tbaa !20 ; 3 uses
  %i.auf = icmp sgt i32 %.val.i.i1146, 0
  br i1 %i.auf, label %bb.tc, label %bb.td, !prof !21

bb.tc:                                            ; preds = %bb.tb
  %i.aug = add nuw i32 %.val.i.i1146, 1
  store i32 %i.aug, ptr %i.auc, align 4, !tbaa !20
  br label %_ZL8lean_incP11lean_object.exit

bb.td:                                            ; preds = %bb.tb
  %.not.i.i1147 = icmp eq i32 %.val.i.i1146, 0
  br i1 %.not.i.i1147, label %_ZL8lean_incP11lean_object.exit, label %bb.te

bb.te:                                            ; preds = %bb.td
  %i.auh = atomicrmw add ptr %i.auc, i32 -1 monotonic, align 4 ; 0 uses
  %.pre = load ptr, ptr %i.aub, align 8, !tbaa !18
  br label %_ZL8lean_incP11lean_object.exit

_ZL8lean_incP11lean_object.exit:                  ; preds = %bb.te, %bb.td, %bb.tc, %bb.ta
  %i.aui = phi ptr [ %.pre, %bb.te ], [ %i.auc, %bb.td ], [ %i.auc, %bb.tc ], [ %i.auc, %bb.ta ]
  %i.auj = getelementptr inbounds nuw [8 x i8], ptr %i.atc, i64 %indvars.iv
  store ptr %i.aui, ptr %i.auj, align 8, !tbaa !18
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %.preheader1149, label %bb.ta, !llvm.loop !32

._crit_edge:                                      ; preds = %.lr.ph1152.prol.loopexit, %.lr.ph1152, %middle.block, %.preheader1149
  %i.auk = getelementptr i8, ptr %0, i64 8
  %.val830 = load ptr, ptr %i.auk, align 8, !tbaa !18
  %i.aul = call noundef ptr @_ZN4lean5curryEPvjPP11lean_object(ptr noundef readonly %.val830, i32 noundef range(i32 0, 65536) %i.p, ptr noundef nonnull %i.atc)
  %i.aum = load i32, ptr %0, align 8, !tbaa !20   ; 3 uses
  %i.aun = icmp sgt i32 %i.aum, 1
  br i1 %i.aun, label %bb.tf, label %bb.tg, !prof !21

bb.tf:                                            ; preds = %._crit_edge
  %i.auo = add nsw i32 %i.aum, -1
  store i32 %i.auo, ptr %0, align 8, !tbaa !20
  br label %_ZL12lean_dec_refP11lean_object.exit549

bb.tg:                                            ; preds = %._crit_edge
  %.not.i548 = icmp eq i32 %i.aum, 0
  br i1 %.not.i548, label %_ZL12lean_dec_refP11lean_object.exit549, label %bb.th
end_hunk_1

Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/mold/original/rust-demangle?download=true
inline.NumInlined: 217
inline.NumDeleted: 20
loop-unroll.NumCompletelyUnrolled: 4
loop-unroll.NumRuntimeUnrolled: 3
loop-unroll.NumUnrolled: 8
begin_hunk_0_@rust_demangle_with_callback:sub_0
  %i.hn = load ptr, ptr %i.d, align 8, !tbaa !21
  call void %i.hm(ptr noundef nonnull @.str.25, i64 noundef 3, ptr noundef %i.hn) #12, !inline_history !48
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #12
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(9) %i.b, i8 0, i64 9, i1 false)
  %i.ho = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %i.b, ptr noundef nonnull dereferenceable(1) @.str.26, i32 noundef %.075.lcssa238242.i.i) #12 ; 0 uses
  %i.hp = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.b) #13
  %i.hq = load ptr, ptr %i.e, align 8, !tbaa !22  ; 2 uses
  %i.hr = load ptr, ptr %i.d, align 8, !tbaa !21  ; 2 uses
  call void %i.hq(ptr noundef nonnull %i.b, i64 noundef %i.hp, ptr noundef %i.hr) #12, !inline_history !48
  call void %i.hq(ptr noundef nonnull @.str.27, i64 noundef 1, ptr noundef %i.hr) #12, !inline_history !48
  br label %print_str.exit105.i.i

print_str.exit105.i.i:                            ; preds = %print_str.exit103.i.i.thread, %bb.as
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #12
  br label %.thread.i.i

.thread.i.i:                                      ; preds = %print_str.exit105.i.i, %print_str.exit102.i.i, %bb.am, %bb.al, %bb.ak, %bb.aj, %bb.ai, %bb.ah, %bb.ag, %bb.af, %bb.ae, %bb.ad, %bb.ac, %bb.ab, %bb.aa, %bb.z, %bb.y, %bb.x
  %i.hs = add i64 %i.dj, 2                        ; 2 uses
  %i.ht = getelementptr inbounds nuw i8, ptr %i.cl, i64 %i.hs
  %i.hu = sub i64 %i.ck, %i.hs
  br label %bb.aw

.preheader.i18.i:                                 ; preds = %.lr.ph155.i.i, %bb.av
  %.0148.i.i = phi i64 [ %i.if, %bb.av ], [ 0, %.lr.ph155.i.i ] ; 5 uses
  %i.hv = getelementptr inbounds nuw i8, ptr %i.cl, i64 %.0148.i.i
  %i.hw = load i8, ptr %i.hv, align 1, !tbaa !30
  switch i8 %i.hw, label %bb.av [
    i8 36, label %bb.at
    i8 46, label %bb.at
  ]

bb.at:                                            ; preds = %.preheader.i18.i, %.preheader.i18.i
  %i.hx = getelementptr inbounds nuw i8, ptr %i.cl, i64 %.0148.i.i
  %i.hy = load i8, ptr %i.g, align 8, !tbaa !24, !range !32, !noundef !33
  %i.hz = trunc nuw i8 %i.hy to i1
  %i.ia = load i8, ptr %i.h, align 1, !range !32
  %i.ib = trunc nuw i8 %i.ia to i1
  %or.cond72 = select i1 %i.hz, i1 true, i1 %i.ib
  br i1 %or.cond72, label %print_str.exit106.i.i, label %bb.au

bb.au:                                            ; preds = %bb.at
  %i.ic = load ptr, ptr %i.e, align 8, !tbaa !22
  %i.id = load ptr, ptr %i.d, align 8, !tbaa !21
  call void %i.ic(ptr noundef nonnull %i.cl, i64 noundef %.0148.i.i, ptr noundef %i.id) #12, !inline_history !48
  br label %print_str.exit106.i.i

print_str.exit106.i.i:                            ; preds = %bb.au, %bb.at
  %i.ie = sub nuw i64 %i.ck, %.0148.i.i
  br label %bb.aw

bb.av:                                            ; preds = %.preheader.i18.i
  %i.if = add nuw i64 %.0148.i.i, 1               ; 2 uses
  %exitcond189.not.i.i = icmp eq i64 %i.if, %i.ck
  br i1 %exitcond189.not.i.i, label %.critedge92.i.i, label %.preheader.i18.i, !llvm.loop !51

bb.aw:                                            ; preds = %print_str.exit106.i.i, %.thread.i.i, %print_str.exit93.i.i, %print_str.exit.i.i
  %i.ig = phi ptr [ %i.hx, %print_str.exit106.i.i ], [ %i.ht, %.thread.i.i ], [ %i.dc, %print_str.exit93.i.i ], [ %i.cu, %print_str.exit.i.i ] ; 2 uses
  %i.ih = phi i64 [ %i.ie, %print_str.exit106.i.i ], [ %i.hu, %.thread.i.i ], [ %i.dd, %print_str.exit93.i.i ], [ %i.cv, %print_str.exit.i.i ] ; 2 uses
  %i.ii = icmp eq i64 %i.ih, 0
  br i1 %i.ii, label %.critedge92.i.i, label %.lr.ph155.i.i

.critedge92.i.i:                                  ; preds = %bb.aw, %.critedge._crit_edge.i.i, %.tail125.i.i, %.tail121.i.i, %.tail117.i.i, %.tail113.i.i, %.tail.i.i, %sub_0.i.i, %bb.w, %.lr.ph.i16.i, %bb.av, %bb.p
  %.lcssa.sink.i.i = phi i64 [ %i.ck, %.lr.ph.i16.i ], [ %i.ck, %bb.av ], [ 0, %bb.p ], [ 0, %bb.aw ], [ %i.ck, %bb.w ], [ %i.ck, %.critedge._crit_edge.i.i ], [ %i.ck, %.tail.i.i ], [ %i.ck, %sub_0.i.i ], [ %i.ck, %.tail113.i.i ], [ %i.ck, %.tail117.i.i ], [ %i.ck, %.tail121.i.i ], [ %i.ck, %.tail125.i.i ]
  %.lcssa152.sink.i.i = phi ptr [ %i.cl, %.lr.ph.i16.i ], [ %i.cl, %bb.av ], [ %.promoted151.i.i, %bb.p ], [ %i.ig, %bb.aw ], [ %i.cl, %bb.w ], [ %i.cl, %.critedge._crit_edge.i.i ], [ %i.cl, %.tail.i.i ], [ %i.cl, %sub_0.i.i ], [ %i.cl, %.tail113.i.i ], [ %i.cl, %.tail117.i.i ], [ %i.cl, %.tail121.i.i ], [ %i.cl, %.tail125.i.i ]
  %i.ij = load i8, ptr %i.g, align 8, !tbaa !24, !range !32, !noundef !33
  %i.ik = trunc nuw i8 %i.ij to i1
  br i1 %i.ik, label %print_legacy_ident.exit.thread.i, label %bb.ax

bb.ax:                                            ; preds = %.critedge92.i.i
  %i.il = load i8, ptr %i.h, align 1, !tbaa !25, !range !32, !noundef !33
  %i.im = trunc nuw i8 %i.il to i1
  br i1 %i.im, label %eat.exit13.i, label %print_legacy_ident.exit.i

print_legacy_ident.exit.i:                        ; preds = %bb.ax
  %i.in = load ptr, ptr %i.e, align 8, !tbaa !22
  %i.io = load ptr, ptr %i.d, align 8, !tbaa !21
  call void %i.in(ptr noundef %.lcssa152.sink.i.i, i64 noundef %.lcssa.sink.i.i, ptr noundef %i.io) #12, !inline_history !48
  %.pre71.i = load i8, ptr %i.g, align 8, !tbaa !24, !range !32
  %i.ip = trunc nuw i8 %.pre71.i to i1
  br i1 %i.ip, label %print_legacy_ident.exit.thread.i, label %eat.exit13.i

print_legacy_ident.exit.thread.i:                 ; preds = %print_legacy_ident.exit.i, %.critedge92.i.i, %bb.m, %print_str.exit.i, %bb.j
  store i8 1, ptr %i.g, align 8, !tbaa !24
  br label %eat.exit13.thread.i

eat.exit13.thread.i:                              ; preds = %print_legacy_ident.exit.thread.i, %peek.exit.i12.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #12
  br label %demangle_legacy_path.exit

eat.exit13.i:                                     ; preds = %bb.k, %print_legacy_ident.exit.i, %bb.ax, %bb.l
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #12
  %.pre = load i64, ptr %i.f, align 8, !tbaa !23
  %.pre138 = load i64, ptr %i.c, align 8, !tbaa !20
  br label %bb.e

bb.ay:                                            ; preds = %.critedge
  call fastcc void @demangle_path(ptr noundef %5, i1 noundef zeroext true)
  %i.iq = load i8, ptr %i.g, align 8, !tbaa !24, !range !32, !noundef !33
  %i.ir = trunc nuw i8 %i.iq to i1
  br i1 %i.ir, label %demangle_legacy_path.exit, label %bb.az

bb.az:                                            ; preds = %bb.ay
  %i.is = load i64, ptr %i.f, align 8, !tbaa !23  ; 2 uses
  %i.it = load i64, ptr %i.c, align 8, !tbaa !20
  %i.iu = icmp ult i64 %i.is, %i.it
  br i1 %i.iu, label %peek.exit, label %demangle_legacy_path.exit

peek.exit:                                        ; preds = %bb.az
  %i.iv = load ptr, ptr %5, align 8, !tbaa !28
  %i.iw = getelementptr inbounds nuw i8, ptr %i.iv, i64 %i.is
  %i.ix = load i8, ptr %i.iw, align 1, !tbaa !30
  %i.iy = add i8 %i.ix, -65
  %or.cond203 = icmp ult i8 %i.iy, 26
  br i1 %or.cond203, label %bb.ba, label %demangle_legacy_path.exit

bb.ba:                                            ; preds = %peek.exit
  store i8 1, ptr %i.h, align 1, !tbaa !25
  call fastcc void @demangle_path(ptr noundef %5, i1 noundef zeroext false)
  br label %demangle_legacy_path.exit

demangle_legacy_path.exit:                        ; preds = %eat.exit13.thread.i, %eat.exit.i, %bb.ay, %bb.az, %peek.exit, %bb.ba
  %i.iz = load i8, ptr %i.g, align 8, !tbaa !24, !range !32, !noundef !33
  %i.ja = trunc nuw i8 %i.iz to i1
  br i1 %i.ja, label %.loopexit, label %bb.bb

bb.bb:                                            ; preds = %demangle_legacy_path.exit
  %i.jb = load i64, ptr %i.c, align 8, !tbaa !20  ; 2 uses
  %i.jc = load i64, ptr %i.f, align 8, !tbaa !23  ; 3 uses
  %.not33 = icmp eq i64 %i.jb, %i.jc
  br i1 %.not33, label %.loopexit, label %bb.bc

bb.bc:                                            ; preds = %bb.bb
  %i.jd = load ptr, ptr %5, align 8, !tbaa !28
  %i.je = getelementptr inbounds nuw i8, ptr %i.jd, i64 %i.jc ; 3 uses
  %i.jf = load i8, ptr %i.je, align 1, !tbaa !30  ; 2 uses
  %.not34112 = icmp eq i8 %i.jf, 0
  br i1 %.not34112, label %._crit_edge, label %.lr.ph114

.lr.ph114:                                        ; preds = %bb.bc, %bb.be
  %i.jg = phi i8 [ %i.jm, %bb.be ], [ %i.jf, %bb.bc ] ; 3 uses
  %.0113 = phi ptr [ %i.jl, %bb.be ], [ %i.je, %bb.bc ]
  %i.jh = and i8 %i.jg, -33
  %i.ji = add i8 %i.jh, -65
  %or.cond87 = icmp ult i8 %i.ji, 26
  br i1 %or.cond87, label %bb.be, label %bb.bd

bb.bd:                                            ; preds = %.lr.ph114
  %i.jj = add i8 %i.jg, -48
  %or.cond37 = icmp ult i8 %i.jj, 10
  %i.jk = icmp eq i8 %i.jg, 46
  %or.cond73 = or i1 %i.jk, %or.cond37
  br i1 %or.cond73, label %bb.be, label %.loopexit

bb.be:                                            ; preds = %bb.bd, %.lr.ph114
  %i.jl = getelementptr inbounds nuw i8, ptr %.0113, i64 1 ; 2 uses
  %i.jm = load i8, ptr %i.jl, align 1, !tbaa !30  ; 2 uses
  %.not34 = icmp eq i8 %i.jm, 0
  br i1 %.not34, label %._crit_edge, label %.lr.ph114, !llvm.loop !52

._crit_edge:                                      ; preds = %bb.be, %bb.bc
  %i.jn = load i8, ptr %i.h, align 1, !tbaa !25, !range !32, !noundef !33
  %i.jo = trunc nuw i8 %i.jn to i1
  br i1 %i.jo, label %.loopexit, label %bb.bf

bb.bf:                                            ; preds = %._crit_edge
  %i.jp = sub i64 %i.jb, %i.jc
  %i.jq = load ptr, ptr %i.e, align 8, !tbaa !22
  %i.jr = load ptr, ptr %i.d, align 8, !tbaa !21
  call void %i.jq(ptr noundef nonnull %i.je, i64 noundef %i.jp, ptr noundef %i.jr) #12, !inline_history !0
  %.pre144 = load i8, ptr %i.g, align 8, !tbaa !24, !range !32
  %i.js = trunc nuw i8 %.pre144 to i1
  %i.jt = xor i1 %i.js, true
  br label %.loopexit

.loopexit.loopexit239:                            ; preds = %.lr.ph
  store i64 %i.am, ptr %i.c, align 1
  br label %.loopexit

.loopexit:                                        ; preds = %bb.bd, %.loopexit.loopexit239, %demangle_legacy_path.exit, %bb.bb, %._crit_edge, %bb.bf, %bb.a, %.tail83.thread
  %.2 = phi i1 [ false, %.loopexit.loopexit239 ], [ false, %demangle_legacy_path.exit ], [ false, %bb.a ], [ false, %.tail83.thread ], [ %i.jt, %bb.bf ], [ true, %._crit_edge ], [ true, %bb.bb ], [ false, %bb.bd ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #12
  ret i1 %.2
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i32 @strncmp(ptr noundef captures(none), ptr noundef captures(none), i64 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: nounwind
define internal fastcc void @demangle_path(ptr noundef nonnull %0, i1 noundef zeroext %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca [17 x i8], align 16               ; 7 uses
  %2 = alloca %struct.rust_mangled_ident, align 8 ; 4 uses
  %i.b = alloca i8, align 1                       ; 5 uses
  %3 = alloca %struct.rust_mangled_ident, align 8 ; 9 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 25 uses
  %i.d = load i8, ptr %i.c, align 8, !tbaa !24, !range !32, !noundef !33
  %i.e = trunc nuw i8 %i.d to i1
  br i1 %i.e, label %4, label %bb.b

4:                                                ; preds = %bb.a
  store i8 1, ptr %i.c, align 8, !tbaa !24
  br label %common.ret304

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 29 uses
  %i.g = load i64, ptr %i.f, align 8, !tbaa !23   ; 9 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.i = load i64, ptr %i.h, align 8, !tbaa !20   ; 13 uses
  %i.j = icmp ult i64 %i.g, %i.i
  br i1 %i.j, label %peek.exit.i, label %next.exit.thread

peek.exit.i:                                      ; preds = %bb.b
  %i.k = load ptr, ptr %0, align 8, !tbaa !28     ; 13 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 %i.g
  %i.m = load i8, ptr %i.l, align 1, !tbaa !30    ; 3 uses
  %.not.i = icmp eq i8 %i.m, 0
  br i1 %.not.i, label %next.exit.thread, label %next.exit

next.exit:                                        ; preds = %peek.exit.i
  %i.n = add nuw i64 %i.g, 1                      ; 11 uses
  store i64 %i.n, ptr %i.f, align 8, !tbaa !23
  switch i8 %i.m, label %next.exit.thread [
    i8 67, label %bb.c
    i8 78, label %bb.p
    i8 77, label %bb.av
    i8 88, label %bb.av
    i8 89, label %.thread
    i8 73, label %bb.bh
    i8 66, label %bb.bz
  ]

bb.c:                                             ; preds = %next.exit
  %i.o = icmp ult i64 %i.n, %i.i
  br i1 %i.o, label %peek.exit.i.i.i, label %parse_disambiguator.exit

peek.exit.i.i.i:                                  ; preds = %bb.c
  %i.p = getelementptr inbounds nuw i8, ptr %i.k, i64 %i.n
  %i.q = load i8, ptr %i.p, align 1, !tbaa !30
  %i.r = icmp eq i8 %i.q, 115
  br i1 %i.r, label %bb.d, label %parse_disambiguator.exit

bb.d:                                             ; preds = %peek.exit.i.i.i
  %i.s = add nuw i64 %i.g, 2                      ; 4 uses
  store i64 %i.s, ptr %i.f, align 8, !tbaa !23
  %i.t = icmp ult i64 %i.s, %i.i
  br i1 %i.t, label %peek.exit.i.i.i.i, label %eat.exit.i.i.i.preheader

eat.exit.i.i.i.preheader:                         ; preds = %peek.exit.i.i.i.i, %bb.d
  br label %eat.exit.i.i.i

peek.exit.i.i.i.i:                                ; preds = %bb.d
  %i.u = getelementptr inbounds nuw i8, ptr %i.k, i64 %i.s
  %i.v = load i8, ptr %i.u, align 1, !tbaa !30
  %i.w = icmp eq i8 %i.v, 95
  br i1 %i.w, label %eat.exit.thread.i.i.i, label %eat.exit.i.i.i.preheader

eat.exit.thread.i.i.i:                            ; preds = %peek.exit.i.i.i.i
  %i.x = add nuw i64 %i.g, 3
  store i64 %i.x, ptr %i.f, align 8, !tbaa !23
  br label %parse_disambiguator.exit

eat.exit.i.i.i:                                   ; preds = %eat.exit.i.i.i.preheader, %bb.h
  %i.y = phi i64 [ %i.af, %bb.h ], [ %i.s, %eat.exit.i.i.i.preheader ] ; 6 uses
  %.027.i.i.i = phi i64 [ %.1.i.i.i, %bb.h ], [ 0, %eat.exit.i.i.i.preheader ] ; 2 uses
  %i.z = icmp ult i64 %i.y, %i.i
  br i1 %i.z, label %peek.exit.i33.i.i.i, label %bb.e

peek.exit.i33.i.i.i:                              ; preds = %eat.exit.i.i.i
  %i.aa = getelementptr inbounds nuw i8, ptr %i.k, i64 %i.y
  %i.ab = load i8, ptr %i.aa, align 1, !tbaa !30
  %i.ac = icmp eq i8 %i.ab, 95
  br i1 %i.ac, label %bb.i, label %bb.e

bb.e:                                             ; preds = %peek.exit.i33.i.i.i, %eat.exit.i.i.i
  %exitcond.not.i.i.i = icmp eq i64 %i.y, %i.i
  br i1 %exitcond.not.i.i.i, label %.critedge.i.i.i, label %peek.exit.i35.i.i.i

peek.exit.i35.i.i.i:                              ; preds = %bb.e
  %i.ad = getelementptr inbounds nuw i8, ptr %i.k, i64 %i.y
  %i.ae = load i8, ptr %i.ad, align 1, !tbaa !30  ; 5 uses
  %.not.i.i.i.i = icmp eq i8 %i.ae, 0
  br i1 %.not.i.i.i.i, label %.critedge.i.i.i, label %next.exit.i.i.i

next.exit.i.i.i:                                  ; preds = %peek.exit.i35.i.i.i
  %i.af = add i64 %i.y, 1                         ; 2 uses
  store i64 %i.af, ptr %i.f, align 8, !tbaa !23
  %i.ag = mul i64 %.027.i.i.i, 62
  %i.ah = zext nneg i8 %i.ae to i64
  %i.ai = add i8 %i.ae, -48
  %or.cond.i.i.i = icmp ult i8 %i.ai, 10
  br i1 %or.cond.i.i.i, label %bb.h, label %bb.f

bb.f:                                             ; preds = %next.exit.i.i.i
  %i.aj = add i8 %i.ae, -97
  %or.cond5.i.i.i = icmp ult i8 %i.aj, 26
  br i1 %or.cond5.i.i.i, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ak = add i8 %i.ae, -65
  %or.cond8.i.i.i = icmp ult i8 %i.ak, 26
  br i1 %or.cond8.i.i.i, label %bb.h, label %.critedge.i.i.i

.critedge.i.i.i:                                  ; preds = %bb.g, %peek.exit.i35.i.i.i, %bb.e
  store i8 1, ptr %i.c, align 8, !tbaa !24
  br label %parse_disambiguator.exit

bb.h:                                             ; preds = %bb.g, %bb.f, %next.exit.i.i.i
  %.sink.i.i.i = phi i64 [ -48, %next.exit.i.i.i ], [ -87, %bb.f ], [ -29, %bb.g ]
  %.pn.i.i.i = add i64 %i.ag, %i.ah
  %.1.i.i.i = add i64 %.pn.i.i.i, %.sink.i.i.i
  br label %eat.exit.i.i.i, !llvm.loop !1

bb.i:                                             ; preds = %peek.exit.i33.i.i.i
  %i.al = add nuw i64 %i.y, 1
  store i64 %i.al, ptr %i.f, align 8, !tbaa !23
  %i.am = add i64 %.027.i.i.i, 2
  br label %parse_disambiguator.exit

parse_disambiguator.exit:                         ; preds = %bb.c, %peek.exit.i.i.i, %eat.exit.thread.i.i.i, %.critedge.i.i.i, %bb.i
  %.0.i.i = phi i64 [ 0, %bb.c ], [ 0, %peek.exit.i.i.i ], [ 1, %eat.exit.thread.i.i.i ], [ 1, %.critedge.i.i.i ], [ %i.am, %bb.i ]
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #12
  call fastcc void @parse_ident(ptr dead_on_unwind noalias writable align 8 %2, ptr noundef %0)
  tail call fastcc void @print_ident(ptr noundef %0, ptr noundef nonnull byval(%struct.rust_mangled_ident) align 8 %2)
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 42
  %i.ao = load i8, ptr %i.an, align 2, !tbaa !26, !range !32, !noundef !33
  %i.ap = trunc nuw i8 %i.ao to i1
  br i1 %i.ap, label %bb.j, label %print_str.exit84

bb.j:                                             ; preds = %parse_disambiguator.exit
  %i.aq = load i8, ptr %i.c, align 8, !tbaa !24, !range !32, !noundef !33
  %i.ar = trunc nuw i8 %i.aq to i1
  br i1 %i.ar, label %print_str.exit, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 41
  %i.at = load i8, ptr %i.as, align 1, !tbaa !25, !range !32, !noundef !33
  %i.au = trunc nuw i8 %i.at to i1
  br i1 %i.au, label %print_str.exit, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.aw = load ptr, ptr %i.av, align 8, !tbaa !22
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.ay = load ptr, ptr %i.ax, align 8, !tbaa !21
  tail call void %i.aw(ptr noundef nonnull @.str.28, i64 noundef 1, ptr noundef %i.ay) #12, !inline_history !0
  br label %print_str.exit

print_str.exit:                                   ; preds = %bb.j, %bb.k, %bb.l
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #12
  %i.az = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %i.a, ptr noundef nonnull dereferenceable(1) @.str.37, i64 noundef %.0.i.i) #12 ; 0 uses
  %i.ba = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.a) #13
  %i.bb = load i8, ptr %i.c, align 8, !tbaa !24, !range !32, !noundef !33
  %i.bc = trunc nuw i8 %i.bb to i1
  br i1 %i.bc, label %print_uint64_hex.exit.thread, label %bb.m

print_uint64_hex.exit.thread:                     ; preds = %print_str.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #12
  br label %print_str.exit84

bb.m:                                             ; preds = %print_str.exit
  %i.bd = getelementptr inbounds nuw i8, ptr %0, i64 41
  %i.be = load i8, ptr %i.bd, align 1, !tbaa !25, !range !32, !noundef !33
  %i.bf = trunc nuw i8 %i.be to i1
  br i1 %i.bf, label %print_uint64_hex.exit.thread238, label %print_uint64_hex.exit

print_uint64_hex.exit.thread238:                  ; preds = %bb.m
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #12
  br label %bb.n

print_uint64_hex.exit:                            ; preds = %bb.m
  %i.bg = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.bh = load ptr, ptr %i.bg, align 8, !tbaa !22
  %i.bi = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.bj = load ptr, ptr %i.bi, align 8, !tbaa !21
  call void %i.bh(ptr noundef nonnull %i.a, i64 noundef %i.ba, ptr noundef %i.bj) #12, !inline_history !53
  %.pre208 = load i8, ptr %i.c, align 8, !tbaa !24, !range !32
  %i.bk = trunc nuw i8 %.pre208 to i1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #12
  br i1 %i.bk, label %print_str.exit84, label %bb.n

bb.n:                                             ; preds = %print_uint64_hex.exit.thread238, %print_uint64_hex.exit
  %i.bl = getelementptr inbounds nuw i8, ptr %0, i64 41
  %i.bm = load i8, ptr %i.bl, align 1, !tbaa !25, !range !32, !noundef !33
  %i.bn = trunc nuw i8 %i.bm to i1
  br i1 %i.bn, label %print_str.exit84, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.bo = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.bp = load ptr, ptr %i.bo, align 8, !tbaa !22
  %i.bq = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.br = load ptr, ptr %i.bq, align 8, !tbaa !21
  call void %i.bp(ptr noundef nonnull @.str.29, i64 noundef 1, ptr noundef %i.br) #12, !inline_history !0
  br label %print_str.exit84

print_str.exit84:                                 ; preds = %print_uint64_hex.exit.thread, %bb.o, %bb.n, %print_uint64_hex.exit, %parse_disambiguator.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #12
  br label %common.ret304

bb.p:                                             ; preds = %next.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #12
  %i.bs = icmp ult i64 %i.n, %i.i
  br i1 %i.bs, label %peek.exit.i87, label %next.exit89.thread
end_hunk_0
begin_hunk_1_@demangle_path:bb.a
  %i.jm = icmp ult i64 %i.jl, %i.jk
  br i1 %i.jm, label %peek.exit.i168, label %bb.by

peek.exit.i168:                                   ; preds = %print_str.exit144
  %i.jn = load ptr, ptr %0, align 8, !tbaa !28    ; 4 uses
  %i.jo = getelementptr inbounds nuw i8, ptr %i.jn, i64 %i.jl
  %i.jp = load i8, ptr %i.jo, align 1, !tbaa !30
  %i.jq = icmp eq i8 %i.jp, 76
  br i1 %i.jq, label %bb.br, label %peek.exit.i146

bb.br:                                            ; preds = %peek.exit.i168
  %i.jr = add nuw i64 %i.jl, 1                    ; 4 uses
  store i64 %i.jr, ptr %i.f, align 8, !tbaa !23
  %i.js = icmp ult i64 %i.jr, %i.jk
  br i1 %i.js, label %peek.exit.i.i164, label %eat.exit.i148.preheader

eat.exit.i148.preheader:                          ; preds = %peek.exit.i.i164, %bb.br
  br label %eat.exit.i148

peek.exit.i.i164:                                 ; preds = %bb.br
  %i.jt = getelementptr inbounds nuw i8, ptr %i.jn, i64 %i.jr
  %i.ju = load i8, ptr %i.jt, align 1, !tbaa !30
  %i.jv = icmp eq i8 %i.ju, 95
  br i1 %i.jv, label %eat.exit.thread.i165, label %eat.exit.i148.preheader

eat.exit.thread.i165:                             ; preds = %peek.exit.i.i164
  %i.jw = add nuw i64 %i.jl, 2
  store i64 %i.jw, ptr %i.f, align 8, !tbaa !23
  br label %parse_integer_62.exit166

eat.exit.i148:                                    ; preds = %eat.exit.i148.preheader, %bb.bv
  %i.jx = phi i64 [ %i.ke, %bb.bv ], [ %i.jr, %eat.exit.i148.preheader ] ; 6 uses
  %.027.i150 = phi i64 [ %.1.i162, %bb.bv ], [ 0, %eat.exit.i148.preheader ] ; 2 uses
  %i.jy = icmp ult i64 %i.jx, %i.jk
  br i1 %i.jy, label %peek.exit.i33.i163, label %bb.bs

peek.exit.i33.i163:                               ; preds = %eat.exit.i148
  %i.jz = getelementptr inbounds nuw i8, ptr %i.jn, i64 %i.jx
  %i.ka = load i8, ptr %i.jz, align 1, !tbaa !30
  %i.kb = icmp eq i8 %i.ka, 95
  br i1 %i.kb, label %bb.bw, label %bb.bs

bb.bs:                                            ; preds = %peek.exit.i33.i163, %eat.exit.i148
  %exitcond.not.i151 = icmp eq i64 %i.jx, %i.jk
  br i1 %exitcond.not.i151, label %.critedge.i158, label %peek.exit.i35.i152

peek.exit.i35.i152:                               ; preds = %bb.bs
  %i.kc = getelementptr inbounds nuw i8, ptr %i.jn, i64 %i.jx
  %i.kd = load i8, ptr %i.kc, align 1, !tbaa !30  ; 5 uses
  %.not.i.i153 = icmp eq i8 %i.kd, 0
  br i1 %.not.i.i153, label %.critedge.i158, label %next.exit.i154

next.exit.i154:                                   ; preds = %peek.exit.i35.i152
  %i.ke = add i64 %i.jx, 1                        ; 2 uses
  store i64 %i.ke, ptr %i.f, align 8, !tbaa !23
  %i.kf = mul i64 %.027.i150, 62
  %i.kg = zext nneg i8 %i.kd to i64
  %i.kh = add i8 %i.kd, -48
  %or.cond.i155 = icmp ult i8 %i.kh, 10
  br i1 %or.cond.i155, label %bb.bv, label %bb.bt

bb.bt:                                            ; preds = %next.exit.i154
  %i.ki = add i8 %i.kd, -97
  %or.cond5.i156 = icmp ult i8 %i.ki, 26
  br i1 %or.cond5.i156, label %bb.bv, label %bb.bu

bb.bu:                                            ; preds = %bb.bt
  %i.kj = add i8 %i.kd, -65
  %or.cond8.i157 = icmp ult i8 %i.kj, 26
  br i1 %or.cond8.i157, label %bb.bv, label %.critedge.i158

.critedge.i158:                                   ; preds = %bb.bu, %peek.exit.i35.i152, %bb.bs
  store i8 1, ptr %i.c, align 8, !tbaa !24
  br label %parse_integer_62.exit166

bb.bv:                                            ; preds = %bb.bu, %bb.bt, %next.exit.i154
  %.sink.i160 = phi i64 [ -48, %next.exit.i154 ], [ -87, %bb.bt ], [ -29, %bb.bu ]
  %.pn.i161 = add i64 %i.kf, %i.kg
  %.1.i162 = add i64 %.pn.i161, %.sink.i160
  br label %eat.exit.i148, !llvm.loop !1

bb.bw:                                            ; preds = %peek.exit.i33.i163
  %i.kk = add nuw i64 %i.jx, 1
  store i64 %i.kk, ptr %i.f, align 8, !tbaa !23
  %i.kl = add i64 %.027.i150, 1
  br label %parse_integer_62.exit166

parse_integer_62.exit166:                         ; preds = %eat.exit.thread.i165, %.critedge.i158, %bb.bw
  %.3.i159 = phi i64 [ 0, %eat.exit.thread.i165 ], [ 0, %.critedge.i158 ], [ %i.kl, %bb.bw ]
  tail call fastcc void @print_lifetime_from_index(ptr noundef nonnull %0, i64 noundef %.3.i159), !inline_history !2
  br label %demangle_generic_arg.exit

peek.exit.i146:                                   ; preds = %peek.exit.i168
  %i.km = load ptr, ptr %0, align 8, !tbaa !28
  %i.kn = getelementptr inbounds nuw i8, ptr %i.km, i64 %i.jl
  %i.ko = load i8, ptr %i.kn, align 1, !tbaa !30
  %i.kp = icmp eq i8 %i.ko, 75
  br i1 %i.kp, label %bb.bx, label %bb.by

bb.bx:                                            ; preds = %peek.exit.i146
  %i.kq = add nuw i64 %i.jl, 1
  store i64 %i.kq, ptr %i.f, align 8, !tbaa !23
  tail call fastcc void @demangle_const(ptr noundef nonnull %0, i1 noundef zeroext false), !inline_history !2
  br label %demangle_generic_arg.exit

bb.by:                                            ; preds = %print_str.exit144, %peek.exit.i146
  tail call fastcc void @demangle_type(ptr noundef nonnull %0), !inline_history !2
  br label %demangle_generic_arg.exit

demangle_generic_arg.exit:                        ; preds = %parse_integer_62.exit166, %bb.bx, %bb.by
  %i.kr = add i64 %.0185, 1
  %i.ks = load i8, ptr %i.c, align 8, !tbaa !24, !range !32, !noundef !33
  %i.kt = trunc nuw i8 %i.ks to i1
  br i1 %i.kt, label %common.ret304, label %bb.bl, !llvm.loop !54

bb.bz:                                            ; preds = %next.exit
  %i.ku = icmp ult i64 %i.n, %i.i
  br i1 %i.ku, label %peek.exit.i.i, label %eat.exit.i

peek.exit.i.i:                                    ; preds = %bb.bz
  %i.kv = getelementptr inbounds nuw i8, ptr %i.k, i64 %i.n
  %i.kw = load i8, ptr %i.kv, align 1, !tbaa !30
  %i.kx = icmp eq i8 %i.kw, 95
  br i1 %i.kx, label %eat.exit.thread.i, label %eat.exit.i

eat.exit.thread.i:                                ; preds = %peek.exit.i.i
  %i.ky = add nuw i64 %i.g, 2                     ; 2 uses
  store i64 %i.ky, ptr %i.f, align 8, !tbaa !23
  br label %parse_integer_62.exit

eat.exit.i:                                       ; preds = %peek.exit.i.i, %bb.bz
  %umax.i = tail call i64 @llvm.umax.i64(i64 %i.i, i64 %i.n) ; 2 uses
  br label %bb.ca

bb.ca:                                            ; preds = %bb.ce, %eat.exit.i
  %i.kz = phi i64 [ %i.lg, %bb.ce ], [ %i.n, %eat.exit.i ] ; 7 uses
  %.027.i = phi i64 [ %.1.i, %bb.ce ], [ 0, %eat.exit.i ] ; 2 uses
  %i.la = icmp ult i64 %i.kz, %i.i
  br i1 %i.la, label %peek.exit.i33.i, label %bb.cb

peek.exit.i33.i:                                  ; preds = %bb.ca
  %i.lb = getelementptr inbounds nuw i8, ptr %i.k, i64 %i.kz
  %i.lc = load i8, ptr %i.lb, align 1, !tbaa !30
  %i.ld = icmp eq i8 %i.lc, 95
  br i1 %i.ld, label %bb.cf, label %bb.cb

bb.cb:                                            ; preds = %peek.exit.i33.i, %bb.ca
  %exitcond.not.i = icmp eq i64 %i.kz, %umax.i
  br i1 %exitcond.not.i, label %.critedge.i, label %peek.exit.i35.i

peek.exit.i35.i:                                  ; preds = %bb.cb
  %i.le = getelementptr inbounds nuw i8, ptr %i.k, i64 %i.kz
  %i.lf = load i8, ptr %i.le, align 1, !tbaa !30  ; 5 uses
  %.not.i.i = icmp eq i8 %i.lf, 0
  br i1 %.not.i.i, label %.critedge.i, label %next.exit.i

next.exit.i:                                      ; preds = %peek.exit.i35.i
  %i.lg = add i64 %i.kz, 1                        ; 3 uses
  store i64 %i.lg, ptr %i.f, align 8, !tbaa !23
  %i.lh = mul i64 %.027.i, 62
  %i.li = zext nneg i8 %i.lf to i64
  %i.lj = add i8 %i.lf, -48
  %or.cond.i = icmp ult i8 %i.lj, 10
  br i1 %or.cond.i, label %bb.ce, label %bb.cc

bb.cc:                                            ; preds = %next.exit.i
  %i.lk = add i8 %i.lf, -97
  %or.cond5.i = icmp ult i8 %i.lk, 26
  br i1 %or.cond5.i, label %bb.ce, label %bb.cd

bb.cd:                                            ; preds = %bb.cc
  %i.ll = add i8 %i.lf, -65
  %or.cond8.i = icmp ult i8 %i.ll, 26
  br i1 %or.cond8.i, label %bb.ce, label %.critedge.i

.critedge.i:                                      ; preds = %bb.cd, %peek.exit.i35.i, %bb.cb
  %i.lm = phi i64 [ %i.lg, %bb.cd ], [ %i.kz, %peek.exit.i35.i ], [ %umax.i, %bb.cb ]
  store i8 1, ptr %i.c, align 8, !tbaa !24
  br label %parse_integer_62.exit

bb.ce:                                            ; preds = %bb.cd, %bb.cc, %next.exit.i
  %.sink.i = phi i64 [ -48, %next.exit.i ], [ -87, %bb.cc ], [ -29, %bb.cd ]
  %.pn.i = add i64 %i.lh, %i.li
  %.1.i = add i64 %.pn.i, %.sink.i
  br label %bb.ca, !llvm.loop !1

bb.cf:                                            ; preds = %peek.exit.i33.i
  %i.ln = add nuw i64 %i.kz, 1                    ; 2 uses
  store i64 %i.ln, ptr %i.f, align 8, !tbaa !23
  %i.lo = add i64 %.027.i, 1
  br label %parse_integer_62.exit

parse_integer_62.exit:                            ; preds = %eat.exit.thread.i, %.critedge.i, %bb.cf
  %i.lp = phi i64 [ %i.ky, %eat.exit.thread.i ], [ %i.lm, %.critedge.i ], [ %i.ln, %bb.cf ]
  %.3.i = phi i64 [ 0, %eat.exit.thread.i ], [ 0, %.critedge.i ], [ %i.lo, %bb.cf ]
  %i.lq = getelementptr inbounds nuw i8, ptr %0, i64 41
  %i.lr = load i8, ptr %i.lq, align 1, !tbaa !25, !range !32, !noundef !33
  %i.ls = trunc nuw i8 %i.lr to i1
  br i1 %i.ls, label %common.ret304, label %bb.cg

common.ret304:                                    ; preds = %bb.bn, %bb.bm, %bb.bg, %bb.bf, %bb.be, %next.exit.thread, %next.exit89.thread, %parse_integer_62.exit, %.critedge83, %print_str.exit84, %4, %print_str.exit140, %print_str.exit139, %bb.bi, %demangle_generic_arg.exit, %bb.cg
  ret void

bb.cg:                                            ; preds = %parse_integer_62.exit
  store i64 %.3.i, ptr %i.f, align 8, !tbaa !23
  tail call fastcc void @demangle_path(ptr noundef %0, i1 noundef zeroext %1)
  store i64 %i.lp, ptr %i.f, align 8, !tbaa !23
  br label %common.ret304

next.exit.thread:                                 ; preds = %peek.exit.i, %bb.b, %next.exit
  store i8 1, ptr %i.c, align 8, !tbaa !24
  br label %common.ret304
}

; Function Attrs: nounwind
define dso_local ptr @rust_demangle(ptr noundef %0, i32 noundef %1) local_unnamed_addr #0 {
bb.a:
  %2 = alloca %struct.str_buf, align 8            ; 14 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #12
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 24 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(25) %2, i8 0, i64 25, i1 false)
  %i.d = call zeroext i1 @rust_demangle_with_callback(ptr noundef %0, i32 noundef %1, ptr noundef nonnull @str_buf_demangle_callback, ptr noundef nonnull %2)
  br i1 %i.d, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = load ptr, ptr %2, align 8, !tbaa !37
  call void @free(ptr noundef %i.e) #12
  br label %bb.k

bb.c:                                             ; preds = %bb.a
  %i.f = load i8, ptr %i.c, align 8, !tbaa !38, !range !32, !noundef !33
  %i.g = trunc nuw i8 %i.f to i1
  br i1 %i.g, label %str_buf_append.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.h = load i64, ptr %i.b, align 8, !tbaa !39   ; 6 uses
  %i.i = load i64, ptr %i.a, align 8, !tbaa !40   ; 2 uses
  %.not.i.i = icmp eq i64 %i.h, %i.i
  br i1 %.not.i.i, label %bb.e, label %.str_buf_reserve.exit.thread15.i_crit_edge

.str_buf_reserve.exit.thread15.i_crit_edge:       ; preds = %bb.d
  %.pre = load ptr, ptr %2, align 8, !tbaa !37
  br label %str_buf_reserve.exit.thread15.i

bb.e:                                             ; preds = %bb.d
  %i.j = icmp eq i64 %i.h, -1
  br i1 %i.j, label %str_buf_append.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.k = icmp eq i64 %i.h, 0
  %spec.store.select.i.i = select i1 %i.k, i64 4, i64 %i.h
  br label %bb.g

bb.g:                                             ; preds = %bb.h, %bb.f
  %.0.i.i = phi i64 [ %spec.store.select.i.i, %bb.f ], [ %i.l, %bb.h ] ; 3 uses
  %.not = icmp ugt i64 %.0.i.i, %i.h
  br i1 %.not, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.l = shl i64 %.0.i.i, 1                       ; 2 uses
  %i.m = icmp ult i64 %i.l, %i.h
  br i1 %i.m, label %str_buf_append.exit, label %bb.g, !llvm.loop !3

bb.i:                                             ; preds = %bb.g
  %i.n = load ptr, ptr %2, align 8, !tbaa !37
  %i.o = call ptr @realloc(ptr noundef %i.n, i64 noundef %.0.i.i) #14 ; 3 uses
  %i.p = icmp eq ptr %i.o, null
  br i1 %i.p, label %bb.j, label %str_buf_reserve.exit.i

bb.j:                                             ; preds = %bb.i
  %i.q = load ptr, ptr %2, align 8, !tbaa !37
  call void @free(ptr noundef %i.q) #12
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %2, i8 0, i64 24, i1 false)
  br label %str_buf_append.exit

str_buf_reserve.exit.i:                           ; preds = %bb.i
  store ptr %i.o, ptr %2, align 8, !tbaa !37
  %.pre.i = load i8, ptr %i.c, align 8, !tbaa !38, !range !32
  %i.r = trunc nuw i8 %.pre.i to i1
  br i1 %i.r, label %str_buf_append.exit, label %str_buf_reserve.exit.i.str_buf_reserve.exit.thread15.i_crit_edge

str_buf_reserve.exit.i.str_buf_reserve.exit.thread15.i_crit_edge: ; preds = %str_buf_reserve.exit.i
  %.pre5 = load i64, ptr %i.a, align 8, !tbaa !40
  br label %str_buf_reserve.exit.thread15.i

str_buf_reserve.exit.thread15.i:                  ; preds = %str_buf_reserve.exit.i.str_buf_reserve.exit.thread15.i_crit_edge, %.str_buf_reserve.exit.thread15.i_crit_edge
  %i.s = phi i64 [ %i.i, %.str_buf_reserve.exit.thread15.i_crit_edge ], [ %.pre5, %str_buf_reserve.exit.i.str_buf_reserve.exit.thread15.i_crit_edge ]
  %i.t = phi ptr [ %.pre, %.str_buf_reserve.exit.thread15.i_crit_edge ], [ %i.o, %str_buf_reserve.exit.i.str_buf_reserve.exit.thread15.i_crit_edge ]
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 %i.s
  store i8 0, ptr %i.u, align 1
  br label %str_buf_append.exit

str_buf_append.exit:                              ; preds = %bb.h, %bb.e, %bb.c, %bb.j, %str_buf_reserve.exit.i, %str_buf_reserve.exit.thread15.i
  %i.v = load ptr, ptr %2, align 8, !tbaa !37
  br label %bb.k

bb.k:                                             ; preds = %str_buf_append.exit, %bb.b
  %.0 = phi ptr [ %i.v, %str_buf_append.exit ], [ null, %bb.b ]
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #12
  ret ptr %.0
}

; Function Attrs: nounwind memory(readwrite, target_mem: none)
define internal void @str_buf_demangle_callback(ptr nofree noundef readonly captures(none) %0, i64 noundef %1, ptr nofree noundef captures(none) %2) #3 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 24 ; 5 uses
  %i.b = load i8, ptr %i.a, align 8, !tbaa !38, !range !32, !noundef !33
  %i.c = trunc nuw i8 %i.b to i1
  br i1 %i.c, label %str_buf_append.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.e = load i64, ptr %i.d, align 8, !tbaa !39   ; 6 uses
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 4 uses
  %i.g = load i64, ptr %i.f, align 8, !tbaa !40   ; 2 uses
  %i.h = sub i64 %i.e, %i.g                       ; 2 uses
  %.not.i.i = icmp ugt i64 %1, %i.h
  br i1 %.not.i.i, label %bb.c, label %.str_buf_reserve.exit.thread15.i_crit_edge

.str_buf_reserve.exit.thread15.i_crit_edge:       ; preds = %bb.b
  %.pre = load ptr, ptr %2, align 8, !tbaa !37
  br label %str_buf_reserve.exit.thread15.i

bb.c:                                             ; preds = %bb.b
  %i.i = sub nuw i64 %1, %i.h
  %i.j = add i64 %i.i, %i.e                       ; 2 uses
  %i.k = icmp ult i64 %i.j, %i.e
  br i1 %i.k, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  store i8 1, ptr %i.a, align 8, !tbaa !38
  br label %str_buf_append.exit

bb.e:                                             ; preds = %bb.c
  %i.l = icmp eq i64 %i.e, 0
  %spec.store.select.i.i = select i1 %i.l, i64 4, i64 %i.e
  br label %bb.f

bb.f:                                             ; preds = %bb.g, %bb.e
  %.0.i.i = phi i64 [ %spec.store.select.i.i, %bb.e ], [ %i.n, %bb.g ] ; 4 uses
  %i.m = icmp ult i64 %.0.i.i, %i.j
  br i1 %i.m, label %bb.g, label %bb.i

bb.g:                                             ; preds = %bb.f
  %i.n = shl i64 %.0.i.i, 1                       ; 2 uses
  %i.o = icmp ult i64 %i.n, %i.e
  br i1 %i.o, label %bb.h, label %bb.f, !llvm.loop !3

bb.h:                                             ; preds = %bb.g
  store i8 1, ptr %i.a, align 8, !tbaa !38
  br label %str_buf_append.exit

bb.i:                                             ; preds = %bb.f
  %i.p = load ptr, ptr %2, align 8, !tbaa !37
  %i.q = tail call ptr @realloc(ptr noundef %i.p, i64 noundef %.0.i.i) #14 ; 3 uses
  %i.r = icmp eq ptr %i.q, null
  br i1 %i.r, label %bb.j, label %str_buf_reserve.exit.i

bb.j:                                             ; preds = %bb.i
  %i.s = load ptr, ptr %2, align 8, !tbaa !37
  tail call void @free(ptr noundef %i.s) #12
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %2, i8 0, i64 24, i1 false)
  store i8 1, ptr %i.a, align 8, !tbaa !38
  br label %str_buf_append.exit

str_buf_reserve.exit.i:                           ; preds = %bb.i
  store ptr %i.q, ptr %2, align 8, !tbaa !37
  store i64 %.0.i.i, ptr %i.d, align 8, !tbaa !39
  %.pre.i = load i8, ptr %i.a, align 8, !tbaa !38, !range !32
  %i.t = trunc nuw i8 %.pre.i to i1
  br i1 %i.t, label %str_buf_append.exit, label %str_buf_reserve.exit.i.str_buf_reserve.exit.thread15.i_crit_edge

str_buf_reserve.exit.i.str_buf_reserve.exit.thread15.i_crit_edge: ; preds = %str_buf_reserve.exit.i
  %.pre4 = load i64, ptr %i.f, align 8, !tbaa !40
  br label %str_buf_reserve.exit.thread15.i

str_buf_reserve.exit.thread15.i:                  ; preds = %str_buf_reserve.exit.i.str_buf_reserve.exit.thread15.i_crit_edge, %.str_buf_reserve.exit.thread15.i_crit_edge
  %i.u = phi i64 [ %i.g, %.str_buf_reserve.exit.thread15.i_crit_edge ], [ %.pre4, %str_buf_reserve.exit.i.str_buf_reserve.exit.thread15.i_crit_edge ]
  %i.v = phi ptr [ %.pre, %.str_buf_reserve.exit.thread15.i_crit_edge ], [ %i.q, %str_buf_reserve.exit.i.str_buf_reserve.exit.thread15.i_crit_edge ]
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 %i.u
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.w, ptr readonly align 1 %0, i64 %1, i1 false)
  %i.x = load i64, ptr %i.f, align 8, !tbaa !40
  %i.y = add i64 %i.x, %1
  store i64 %i.y, ptr %i.f, align 8, !tbaa !40
  br label %str_buf_append.exit

str_buf_append.exit:                              ; preds = %bb.a, %bb.d, %bb.h, %bb.j, %str_buf_reserve.exit.i, %str_buf_reserve.exit.thread15.i
  ret void
}

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr noundef captures(none)) local_unnamed_addr #4

; Function Attrs: nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none)
define internal fastcc void @parse_ident(ptr dead_on_unwind noalias nofree nonnull writable writeonly align 8 captures(none) initializes((0, 32)) %0, ptr nofree noundef nonnull captures(none) %1) unnamed_addr #5 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
end_hunk_1
begin_hunk_2_@print_ident:bb.a
  %i.dy = urem i64 %i.du, %i.dt                   ; 3 uses
  %i.dz = icmp ult i64 %.1163220, %i.dt
  br i1 %i.dz, label %bb.bv, label %bb.bz

bb.bv:                                            ; preds = %bb.bu
  %i.ea = icmp ult i64 %.1163220, 2305843009213693952
  br i1 %i.ea, label %bb.bx, label %bb.bw

bb.bw:                                            ; preds = %bb.bv
  store i8 1, ptr %i.a, align 8, !tbaa !24
  br label %print_str.exit182

bb.bx:                                            ; preds = %bb.bv
  %i.eb = shl nuw nsw i64 %.1163220, 1            ; 2 uses
  %.not179 = icmp ult i64 %i.eb, %i.dt
  br i1 %.not179, label %bb.by, label %bb.bz

bb.by:                                            ; preds = %bb.bx
  store i8 1, ptr %i.a, align 8, !tbaa !24
  br label %print_str.exit182

bb.bz:                                            ; preds = %bb.bx, %bb.bu
  %.2164 = phi i64 [ %i.eb, %bb.bx ], [ %.1163220, %bb.bu ] ; 2 uses
  %i.ec = shl nuw i64 %.2164, 2
  %i.ed = tail call ptr @realloc(ptr noundef nonnull %.0156221, i64 noundef %i.ec) #14 ; 5 uses
  %.not180 = icmp eq ptr %i.ed, null
  br i1 %.not180, label %bb.ca, label %bb.cb

bb.ca:                                            ; preds = %bb.bz
  store i8 1, ptr %i.a, align 8, !tbaa !24
  br label %print_str.exit182

bb.cb:                                            ; preds = %bb.bz
  %i.ee = shl i64 %i.dy, 2
  %i.ef = getelementptr inbounds nuw i8, ptr %i.ed, i64 %i.ee ; 6 uses
  %i.eg = getelementptr inbounds nuw i8, ptr %i.ef, i64 4
  %i.eh = sub i64 %.1153222, %i.dy
  %i.ei = shl i64 %i.eh, 2
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.eg, ptr nonnull align 1 %i.ef, i64 %i.ei, i1 false)
  %i.ej = icmp ugt i32 %i.dx, 65535
  %i.ek = lshr i32 %i.dx, 18
  %i.el = trunc i32 %i.ek to i8
  %i.em = or i8 %i.el, -16
  %i.en = select i1 %i.ej, i8 %i.em, i8 0
  store i8 %i.en, ptr %i.ef, align 1, !tbaa !30
  %i.eo = icmp ugt i32 %i.dx, 2047
  br i1 %i.eo, label %bb.cc, label %bb.cd

bb.cc:                                            ; preds = %bb.cb
  %i.ep = icmp ult i32 %i.dx, 65536
  %i.eq = select i1 %i.ep, i32 224, i32 128
  %i.er = lshr i32 %i.dx, 12
  %i.es = and i32 %i.er, 63
  %i.et = or i32 %i.eq, %i.es
  %i.eu = trunc nuw i32 %i.et to i8
  br label %bb.cd

bb.cd:                                            ; preds = %bb.cb, %bb.cc
  %i.ev = phi i8 [ %i.eu, %bb.cc ], [ 0, %bb.cb ]
  %i.ew = getelementptr inbounds nuw i8, ptr %i.ef, i64 1
  store i8 %i.ev, ptr %i.ew, align 1, !tbaa !30
  %i.ex = icmp ult i32 %i.dx, 2048
  %i.ey = select i1 %i.ex, i32 192, i32 128
  %i.ez = lshr i32 %i.dx, 6
  %i.fa = and i32 %i.ez, 63
  %i.fb = or disjoint i32 %i.ey, %i.fa
  %i.fc = trunc nuw i32 %i.fb to i8
  %i.fd = getelementptr inbounds nuw i8, ptr %i.ef, i64 2
  store i8 %i.fc, ptr %i.fd, align 1, !tbaa !30
  %i.fe = trunc i32 %i.dx to i8
  %i.ff = and i8 %i.fe, 63
  %i.fg = or disjoint i8 %i.ff, -128
  %i.fh = getelementptr inbounds nuw i8, ptr %i.ef, i64 3
  store i8 %i.fg, ptr %i.fh, align 1, !tbaa !30
  %i.fi = icmp eq i64 %i.dk, %i.cl
  br i1 %i.fi, label %.thread192, label %bb.ce

bb.ce:                                            ; preds = %bb.cd
  %i.fj = add nuw i64 %i.dy, 1
  %i.fk = udiv i64 %i.ds, %.0149223               ; 2 uses
  %i.fl = udiv i64 %i.fk, %i.dt
  %i.fm = add nuw i64 %i.fl, %i.fk                ; 3 uses
  %i.fn = icmp ugt i64 %i.fm, 455
  br i1 %i.fn, label %.lr.ph217, label %._crit_edge

.lr.ph217:                                        ; preds = %bb.ce, %.lr.ph217
  %.1135216 = phi i64 [ %i.fp, %.lr.ph217 ], [ 0, %bb.ce ]
  %.1138215 = phi i64 [ %i.fo, %.lr.ph217 ], [ %i.fm, %bb.ce ] ; 2 uses
  %i.fo = udiv i64 %.1138215, 35                  ; 2 uses
  %i.fp = add i64 %.1135216, 36                   ; 2 uses
  %i.fq = icmp ugt i64 %.1138215, 15959
  br i1 %i.fq, label %.lr.ph217, label %._crit_edge, !llvm.loop !59

._crit_edge:                                      ; preds = %.lr.ph217, %bb.ce
  %.1138.lcssa = phi i64 [ %i.fm, %bb.ce ], [ %i.fo, %.lr.ph217 ]
  %.1135.lcssa = phi i64 [ 0, %bb.ce ], [ %i.fp, %.lr.ph217 ]
  %i.fr = trunc nuw i64 %.1138.lcssa to i16       ; 2 uses
  %.lhs.trunc = mul nuw i16 %i.fr, 36
  %.rhs.trunc = add nuw nsw i16 %i.fr, 38
  %i.fs = udiv i16 %.lhs.trunc, %.rhs.trunc
  %.zext = zext nneg i16 %i.fs to i64
  %i.ft = add i64 %.1135.lcssa, %.zext
  %i.fu = icmp ult i64 %i.dk, %i.cl
  br i1 %i.fu, label %.preheader, label %.thread192

.thread192:                                       ; preds = %._crit_edge, %bb.cd, %.preheader202
  %.3159 = phi ptr [ %i.ca, %.preheader202 ], [ %i.ed, %bb.cd ], [ %i.ed, %._crit_edge ] ; 6 uses
  %.3155 = phi i64 [ %i.j, %.preheader202 ], [ %i.dt, %bb.cd ], [ %i.dt, %._crit_edge ]
  %i.fv = shl i64 %.3155, 2                       ; 2 uses
  %.not240 = icmp eq i64 %i.fv, 0
  br i1 %.not240, label %._crit_edge236, label %.lr.ph235

.lr.ph235:                                        ; preds = %.thread192, %bb.ch
  %.0234 = phi i64 [ %.1.1, %bb.ch ], [ 0, %.thread192 ] ; 3 uses
  %.3233 = phi i64 [ %i.gf, %bb.ch ], [ 0, %.thread192 ] ; 3 uses
  %i.fw = getelementptr inbounds nuw i8, ptr %.3159, i64 %.3233
  %i.fx = load i8, ptr %i.fw, align 1, !tbaa !30  ; 2 uses
  %.not181 = icmp eq i8 %i.fx, 0
  br i1 %.not181, label %.lr.ph235.1, label %bb.cf

bb.cf:                                            ; preds = %.lr.ph235
  %i.fy = add i64 %.0234, 1
  %i.fz = getelementptr inbounds nuw i8, ptr %.3159, i64 %.0234
  store i8 %i.fx, ptr %i.fz, align 1, !tbaa !30
  br label %.lr.ph235.1

.lr.ph235.1:                                      ; preds = %.lr.ph235, %bb.cf
  %.1 = phi i64 [ %i.fy, %bb.cf ], [ %.0234, %.lr.ph235 ] ; 3 uses
  %i.ga = getelementptr inbounds nuw i8, ptr %.3159, i64 %.3233
  %i.gb = getelementptr inbounds nuw i8, ptr %i.ga, i64 1
  %i.gc = load i8, ptr %i.gb, align 1, !tbaa !30  ; 2 uses
  %.not181.1 = icmp eq i8 %i.gc, 0
  br i1 %.not181.1, label %bb.ch, label %bb.cg

bb.cg:                                            ; preds = %.lr.ph235.1
  %i.gd = add i64 %.1, 1
  %i.ge = getelementptr inbounds nuw i8, ptr %.3159, i64 %.1
  store i8 %i.gc, ptr %i.ge, align 1, !tbaa !30
  br label %bb.ch

bb.ch:                                            ; preds = %bb.cg, %.lr.ph235.1
  %.1.1 = phi i64 [ %i.gd, %bb.cg ], [ %.1, %.lr.ph235.1 ] ; 2 uses
  %i.gf = add nuw i64 %.3233, 2                   ; 2 uses
  %exitcond258.not.1 = icmp eq i64 %i.gf, %i.fv
  br i1 %exitcond258.not.1, label %._crit_edge236, label %.lr.ph235, !llvm.loop !60

._crit_edge236:                                   ; preds = %bb.ch, %.thread192
  %.0.lcssa = phi i64 [ 0, %.thread192 ], [ %.1.1, %bb.ch ]
  %i.gg = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.gh = load ptr, ptr %i.gg, align 8, !tbaa !22
  %i.gi = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.gj = load ptr, ptr %i.gi, align 8, !tbaa !21
  tail call void %i.gh(ptr noundef nonnull %.3159, i64 noundef %.0.lcssa, ptr noundef %i.gj) #12, !inline_history !0
  br label %print_str.exit182

print_str.exit182:                                ; preds = %bb.ca, %bb.bs, %bb.bw, %bb.by, %.preheader._crit_edge, %._crit_edge236
  %.4 = phi ptr [ %.3159, %._crit_edge236 ], [ %.0156221, %bb.ca ], [ %.0156221, %bb.bs ], [ %.0156221, %.preheader._crit_edge ], [ %.0156221, %bb.by ], [ %.0156221, %bb.bw ]
  tail call void @free(ptr noundef %.4) #12
  br label %bb.ci

bb.ci:                                            ; preds = %bb.bk, %print_str.exit182, %bb.bm, %bb.a, %bb.b, %print_str.exit
  ret void
}

; Function Attrs: nounwind
define internal fastcc void @print_uint64(ptr nofree noundef nonnull readonly captures(none) %0, i64 noundef %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca [21 x i8], align 16               ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #12
  %i.b = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %i.a, ptr noundef nonnull dereferenceable(1) @.str.38, i64 noundef %1) #12 ; 0 uses
  %i.c = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.a) #13
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.e = load i8, ptr %i.d, align 8, !tbaa !24, !range !32, !noundef !33
  %i.f = trunc nuw i8 %i.e to i1
  br i1 %i.f, label %print_str.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 41
  %i.h = load i8, ptr %i.g, align 1, !tbaa !25, !range !32, !noundef !33
  %i.i = trunc nuw i8 %i.h to i1
  br i1 %i.i, label %print_str.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !22
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !21
  call void %i.k(ptr noundef nonnull %i.a, i64 noundef %i.c, ptr noundef %i.m) #12, !inline_history !0
  br label %print_str.exit

print_str.exit:                                   ; preds = %bb.a, %bb.b, %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #12
  ret void
}

; Function Attrs: nounwind
define internal fastcc void @demangle_type(ptr noundef nonnull %0) unnamed_addr #0 {
bb.a:
  %1 = alloca %struct.rust_mangled_ident, align 8 ; 8 uses
  %2 = alloca %struct.rust_mangled_ident, align 8 ; 6 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 35 uses
  %i.b = load i8, ptr %i.a, align 8, !tbaa !24, !range !32, !noundef !33
  %i.c = trunc nuw i8 %i.b to i1
  br i1 %i.c, label %tailrecurse._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 31 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 12 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 41 ; 34 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 33 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 33 uses
  br label %bb.b

tailrecurse._crit_edge:                           ; preds = %tailrecurse.backedge, %bb.a
  store i8 1, ptr %i.a, align 8, !tbaa !24
  br label %common.ret

bb.b:                                             ; preds = %.lr.ph, %tailrecurse.backedge
  %i.i = load i64, ptr %i.d, align 8, !tbaa !23   ; 5 uses
  %i.j = load i64, ptr %i.e, align 8, !tbaa !20   ; 2 uses
  %i.k = icmp ult i64 %i.i, %i.j
  br i1 %i.k, label %peek.exit.i, label %basic_type.exit.thread194

peek.exit.i:                                      ; preds = %bb.b
  %i.l = load ptr, ptr %0, align 8, !tbaa !28
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 %i.i
  %i.n = load i8, ptr %i.m, align 1, !tbaa !30    ; 6 uses
  %.not.i = icmp eq i8 %i.n, 0
  br i1 %.not.i, label %basic_type.exit.thread194, label %next.exit

basic_type.exit.thread194:                        ; preds = %peek.exit.i, %bb.b
  store i8 1, ptr %i.a, align 8, !tbaa !24
  %i.o = add i64 %i.i, -1
  br label %.loopexit

next.exit:                                        ; preds = %peek.exit.i
  %i.p = add nuw i64 %i.i, 1                      ; 2 uses
  store i64 %i.p, ptr %i.d, align 8, !tbaa !23
  switch i8 %i.n, label %.loopexit [
    i8 98, label %.loopexit198
    i8 99, label %.loopexit330
    i8 101, label %.loopexit404
    i8 117, label %.loopexit472
    i8 97, label %.loopexit540
    i8 115, label %.loopexit640
    i8 108, label %.loopexit708
    i8 120, label %.loopexit782
    i8 110, label %bb.o
    i8 105, label %bb.c
    i8 104, label %bb.d
    i8 116, label %bb.e
    i8 109, label %bb.f
    i8 121, label %bb.g
    i8 111, label %bb.h
    i8 106, label %bb.i
    i8 102, label %bb.j
    i8 100, label %bb.k
    i8 122, label %bb.l
    i8 112, label %bb.m
    i8 118, label %bb.n
    i8 82, label %bb.q
    i8 81, label %bb.q
    i8 80, label %bb.ae
    i8 79, label %bb.ae
    i8 65, label %bb.aj
    i8 83, label %bb.aj
    i8 84, label %bb.ar
    i8 70, label %bb.ax
    i8 68, label %bb.bw
    i8 66, label %bb.cv
  ]

bb.c:                                             ; preds = %next.exit
  br label %bb.o

bb.d:                                             ; preds = %next.exit
  br label %bb.o

bb.e:                                             ; preds = %next.exit
  br label %bb.o

bb.f:                                             ; preds = %next.exit
  br label %bb.o

bb.g:                                             ; preds = %next.exit
  br label %bb.o

bb.h:                                             ; preds = %next.exit
  br label %bb.o

bb.i:                                             ; preds = %next.exit
  br label %bb.o

bb.j:                                             ; preds = %next.exit
  br label %bb.o

bb.k:                                             ; preds = %next.exit
  br label %bb.o

bb.l:                                             ; preds = %next.exit
  br label %bb.o

bb.m:                                             ; preds = %next.exit
  br label %bb.o

bb.n:                                             ; preds = %next.exit
  br label %bb.o

.loopexit198:                                     ; preds = %next.exit
  br label %bb.o

.loopexit330:                                     ; preds = %next.exit
  br label %bb.o

.loopexit404:                                     ; preds = %next.exit
  br label %bb.o

.loopexit472:                                     ; preds = %next.exit
  br label %bb.o

.loopexit540:                                     ; preds = %next.exit
  br label %bb.o

.loopexit640:                                     ; preds = %next.exit
  br label %bb.o

.loopexit708:                                     ; preds = %next.exit
  br label %bb.o

.loopexit782:                                     ; preds = %next.exit
  br label %bb.o

bb.o:                                             ; preds = %next.exit, %.loopexit782, %.loopexit708, %.loopexit640, %.loopexit540, %.loopexit472, %.loopexit404, %bb.m, %bb.l, %bb.k, %bb.j, %bb.i, %bb.h, %bb.g, %bb.f, %bb.e, %bb.d, %bb.c, %bb.n, %.loopexit198, %.loopexit330
  %.0.i126.ph = phi ptr [ @.str.70, %bb.m ], [ @.str.69, %bb.l ], [ @.str.68, %bb.k ], [ @.str.67, %bb.j ], [ @.str.66, %bb.i ], [ @.str.65, %bb.h ], [ @.str.64, %bb.g ], [ @.str.63, %bb.f ], [ @.str.62, %bb.e ], [ @.str.61, %bb.d ], [ @.str.60, %bb.c ], [ @.str.58, %.loopexit782 ], [ @.str.57, %.loopexit708 ], [ @.str.56, %.loopexit640 ], [ @.str.55, %.loopexit540 ], [ @.str.54, %.loopexit472 ], [ @.str.53, %.loopexit404 ], [ @.str.52, %.loopexit330 ], [ @.str.51, %.loopexit198 ], [ @.str.71, %bb.n ], [ @.str.59, %next.exit ] ; 2 uses
  %i.q = load i8, ptr %i.f, align 1, !tbaa !25, !range !32, !noundef !33
  %i.r = trunc nuw i8 %i.q to i1
  br i1 %i.r, label %common.ret, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.s = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %.0.i126.ph) #13
  %i.t = load ptr, ptr %i.g, align 8, !tbaa !22
  %i.u = load ptr, ptr %i.h, align 8, !tbaa !21
  tail call void %i.t(ptr noundef nonnull %.0.i126.ph, i64 noundef %i.s, ptr noundef %i.u) #12, !inline_history !0
  br label %common.ret

bb.q:                                             ; preds = %next.exit, %next.exit
  %i.v = load i8, ptr %i.f, align 1, !tbaa !25, !range !32, !noundef !33
  %i.w = trunc nuw i8 %i.v to i1
  br i1 %i.w, label %print_str.exit127, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.x = load ptr, ptr %i.g, align 8, !tbaa !22
  %i.y = load ptr, ptr %i.h, align 8, !tbaa !21
  tail call void %i.x(ptr noundef nonnull @.str.14, i64 noundef 1, ptr noundef %i.y) #12, !inline_history !0
  %.pre375 = load i64, ptr %i.d, align 8, !tbaa !23
  %.pre376 = load i64, ptr %i.e, align 8, !tbaa !20
  br label %print_str.exit127

print_str.exit127:                                ; preds = %bb.q, %bb.r
  %i.z = phi i64 [ %.pre376, %bb.r ], [ %i.j, %bb.q ] ; 4 uses
  %i.aa = phi i64 [ %.pre375, %bb.r ], [ %i.p, %bb.q ] ; 4 uses
  %i.ab = icmp ult i64 %i.aa, %i.z
  br i1 %i.ab, label %peek.exit.i129, label %print_str.exit130

peek.exit.i129:                                   ; preds = %print_str.exit127
  %i.ac = load ptr, ptr %0, align 8, !tbaa !28    ; 4 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 %i.aa
  %i.ae = load i8, ptr %i.ad, align 1, !tbaa !30
  %i.af = icmp eq i8 %i.ae, 76
  br i1 %i.af, label %bb.s, label %print_str.exit130

bb.s:                                             ; preds = %peek.exit.i129
  %i.ag = add nuw i64 %i.aa, 1                    ; 5 uses
  store i64 %i.ag, ptr %i.d, align 8, !tbaa !23
  %i.ah = icmp ult i64 %i.ag, %i.z
  br i1 %i.ah, label %peek.exit.i.i, label %eat.exit.i

peek.exit.i.i:                                    ; preds = %bb.s
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ac, i64 %i.ag
  %i.aj = load i8, ptr %i.ai, align 1, !tbaa !30
  %i.ak = icmp eq i8 %i.aj, 95
  br i1 %i.ak, label %eat.exit.thread.i, label %eat.exit.i

eat.exit.thread.i:                                ; preds = %peek.exit.i.i
  %i.al = add nuw i64 %i.aa, 2
  store i64 %i.al, ptr %i.d, align 8, !tbaa !23
  br label %print_str.exit130

eat.exit.i:                                       ; preds = %peek.exit.i.i, %bb.s
  %umax.i = tail call i64 @llvm.umax.i64(i64 %i.z, i64 %i.ag)
  br label %bb.t

bb.t:                                             ; preds = %bb.x, %eat.exit.i
  %i.am = phi i64 [ %i.at, %bb.x ], [ %i.ag, %eat.exit.i ] ; 6 uses
  %.027.i = phi i64 [ %.1.i, %bb.x ], [ 0, %eat.exit.i ] ; 2 uses
  %i.an = icmp ult i64 %i.am, %i.z
  br i1 %i.an, label %peek.exit.i33.i, label %bb.u

peek.exit.i33.i:                                  ; preds = %bb.t
  %i.ao = getelementptr inbounds nuw i8, ptr %i.ac, i64 %i.am
  %i.ap = load i8, ptr %i.ao, align 1, !tbaa !30
end_hunk_2
begin_hunk_3_@demangle_type:bb.a
  tail call void %i.gc(ptr noundef nonnull @.str.45, i64 noundef 1, ptr noundef %i.gd) #12, !inline_history !0
  br label %print_str.exit159

print_str.exit159:                                ; preds = %bb.bj, %bb.bi, %print_str.exit158, %print_str.exit158.thread401, %bb.bk
  %i.ge = add nuw i64 %.0114321, 1                ; 2 uses
  %i.gf = getelementptr inbounds nuw i8, ptr %.sroa.0.1320, i64 %i.ge
  %i.gg = sub nuw i64 %.sroa.10.1319, %i.ge
  br label %bb.bl

bb.bl:                                            ; preds = %.lr.ph322, %print_str.exit159
  %.sroa.10.2 = phi i64 [ %i.gg, %print_str.exit159 ], [ %.sroa.10.1319, %.lr.ph322 ] ; 3 uses
  %.sroa.0.2 = phi ptr [ %i.gf, %print_str.exit159 ], [ %.sroa.0.1320, %.lr.ph322 ] ; 2 uses
  %.1 = phi i64 [ 0, %print_str.exit159 ], [ %.0114321, %.lr.ph322 ]
  %i.gh = add nuw i64 %.1, 1                      ; 2 uses
  %i.gi = icmp ult i64 %i.gh, %.sroa.10.2
  br i1 %i.gi, label %.lr.ph322, label %._crit_edge323, !llvm.loop !62

print_str.exit157:                                ; preds = %bb.bc
  store i8 1, ptr %i.a, align 8, !tbaa !24
  br label %bb.bv

eat.exit151.thread:                               ; preds = %bb.bg, %._crit_edge323, %bb.bh, %print_str.exit156.thread400, %print_str.exit156, %print_str.exit148, %peek.exit.i150
  %i.gj = load i8, ptr %i.a, align 8, !tbaa !24, !range !32, !noundef !33
  %i.gk = trunc nuw i8 %i.gj to i1
  br i1 %i.gk, label %print_str.exit164, label %bb.bm

bb.bm:                                            ; preds = %eat.exit151.thread
  %i.gl = load i8, ptr %i.f, align 1, !tbaa !25, !range !32, !noundef !33
  %i.gm = trunc nuw i8 %i.gl to i1
  br i1 %i.gm, label %.lr.ph327.preheader, label %print_str.exit160

print_str.exit160:                                ; preds = %bb.bm
  %i.gn = load ptr, ptr %i.g, align 8, !tbaa !22
  %i.go = load ptr, ptr %i.h, align 8, !tbaa !21
  tail call void %i.gn(ptr noundef nonnull @.str.47, i64 noundef 3, ptr noundef %i.go) #12, !inline_history !0
  %.pre372 = load i8, ptr %i.a, align 8, !tbaa !24, !range !32
  %i.gp = trunc nuw i8 %.pre372 to i1
  br i1 %i.gp, label %print_str.exit164, label %.lr.ph327.preheader

.lr.ph327.preheader:                              ; preds = %bb.bm, %print_str.exit160
  br label %.lr.ph327

.lr.ph327:                                        ; preds = %.lr.ph327.preheader, %print_str.exit168
  %.0113326 = phi i64 [ %i.ho, %print_str.exit168 ], [ 0, %.lr.ph327.preheader ] ; 2 uses
  %i.gq = load i64, ptr %i.d, align 8, !tbaa !23  ; 3 uses
  %i.gr = load i64, ptr %i.e, align 8, !tbaa !20
  %i.gs = icmp ult i64 %i.gq, %i.gr
  br i1 %i.gs, label %peek.exit.i162, label %bb.bp

peek.exit.i162:                                   ; preds = %.lr.ph327
  %i.gt = load ptr, ptr %0, align 8, !tbaa !28
  %i.gu = getelementptr inbounds nuw i8, ptr %i.gt, i64 %i.gq
  %i.gv = load i8, ptr %i.gu, align 1, !tbaa !30
  %i.gw = icmp eq i8 %i.gv, 69
  br i1 %i.gw, label %bb.bn, label %bb.bp

bb.bn:                                            ; preds = %peek.exit.i162
  %i.gx = add nuw i64 %i.gq, 1
  store i64 %i.gx, ptr %i.d, align 8, !tbaa !23
  %i.gy = load i8, ptr %i.f, align 1, !tbaa !25, !range !32, !noundef !33
  %i.gz = trunc nuw i8 %i.gy to i1
  br i1 %i.gz, label %print_str.exit164, label %bb.bo

bb.bo:                                            ; preds = %bb.bn
  %i.ha = load ptr, ptr %i.g, align 8, !tbaa !22
  %i.hb = load ptr, ptr %i.h, align 8, !tbaa !21
  tail call void %i.ha(ptr noundef nonnull @.str.22, i64 noundef 1, ptr noundef %i.hb) #12, !inline_history !0
  br label %print_str.exit164

print_str.exit164:                                ; preds = %print_str.exit168, %eat.exit151.thread, %print_str.exit160, %bb.bn, %bb.bo
  %i.hc = load i64, ptr %i.d, align 8, !tbaa !23  ; 3 uses
  %i.hd = load i64, ptr %i.e, align 8, !tbaa !20
  %i.he = icmp ult i64 %i.hc, %i.hd
  br i1 %i.he, label %peek.exit.i166, label %bb.bs

peek.exit.i166:                                   ; preds = %print_str.exit164
  %i.hf = load ptr, ptr %0, align 8, !tbaa !28
  %i.hg = getelementptr inbounds nuw i8, ptr %i.hf, i64 %i.hc
  %i.hh = load i8, ptr %i.hg, align 1, !tbaa !30
  %i.hi = icmp eq i8 %i.hh, 117
  br i1 %i.hi, label %eat.exit167, label %bb.bs

eat.exit167:                                      ; preds = %peek.exit.i166
  %i.hj = add nuw i64 %i.hc, 1
  store i64 %i.hj, ptr %i.d, align 8, !tbaa !23
  br label %bb.bv

bb.bp:                                            ; preds = %peek.exit.i162, %.lr.ph327
  %.not121 = icmp eq i64 %.0113326, 0
  br i1 %.not121, label %print_str.exit168, label %bb.bq

bb.bq:                                            ; preds = %bb.bp
  %i.hk = load i8, ptr %i.f, align 1, !tbaa !25, !range !32, !noundef !33
  %i.hl = trunc nuw i8 %i.hk to i1
  br i1 %i.hl, label %print_str.exit168, label %bb.br

bb.br:                                            ; preds = %bb.bq
  %i.hm = load ptr, ptr %i.g, align 8, !tbaa !22
  %i.hn = load ptr, ptr %i.h, align 8, !tbaa !21
  tail call void %i.hm(ptr noundef nonnull @.str.36, i64 noundef 2, ptr noundef %i.hn) #12, !inline_history !0
  br label %print_str.exit168

print_str.exit168:                                ; preds = %bb.br, %bb.bq, %bb.bp
  tail call fastcc void @demangle_type(ptr noundef %0)
  %i.ho = add i64 %.0113326, 1
  %i.hp = load i8, ptr %i.a, align 8, !tbaa !24, !range !32, !noundef !33
  %i.hq = trunc nuw i8 %i.hp to i1
  br i1 %i.hq, label %print_str.exit164, label %.lr.ph327, !llvm.loop !63

bb.bs:                                            ; preds = %peek.exit.i166, %print_str.exit164
  %i.hr = load i8, ptr %i.a, align 8, !tbaa !24, !range !32, !noundef !33
  %i.hs = trunc nuw i8 %i.hr to i1
  br i1 %i.hs, label %print_str.exit169, label %bb.bt

bb.bt:                                            ; preds = %bb.bs
  %i.ht = load i8, ptr %i.f, align 1, !tbaa !25, !range !32, !noundef !33
  %i.hu = trunc nuw i8 %i.ht to i1
  br i1 %i.hu, label %print_str.exit169, label %bb.bu

bb.bu:                                            ; preds = %bb.bt
  %i.hv = load ptr, ptr %i.g, align 8, !tbaa !22
  %i.hw = load ptr, ptr %i.h, align 8, !tbaa !21
  tail call void %i.hv(ptr noundef nonnull @.str.48, i64 noundef 4, ptr noundef %i.hw) #12, !inline_history !0
  br label %print_str.exit169

print_str.exit169:                                ; preds = %bb.bs, %bb.bt, %bb.bu
  tail call fastcc void @demangle_type(ptr noundef %0)
  br label %bb.bv

bb.bv:                                            ; preds = %eat.exit167, %print_str.exit157, %print_str.exit169
  store i64 %i.dx, ptr %i.dw, align 8, !tbaa !27
  br label %common.ret

bb.bw:                                            ; preds = %next.exit
  %i.hx = load i8, ptr %i.f, align 1, !tbaa !25, !range !32, !noundef !33
  %i.hy = trunc nuw i8 %i.hx to i1
  br i1 %i.hy, label %print_str.exit170, label %bb.bx

bb.bx:                                            ; preds = %bb.bw
  %i.hz = load ptr, ptr %i.g, align 8, !tbaa !22
  %i.ia = load ptr, ptr %i.h, align 8, !tbaa !21
  tail call void %i.hz(ptr noundef nonnull @.str.49, i64 noundef 4, ptr noundef %i.ia) #12, !inline_history !0
  br label %print_str.exit170

print_str.exit170:                                ; preds = %bb.bw, %bb.bx
  %i.ib = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.ic = load i64, ptr %i.ib, align 8, !tbaa !27
  tail call fastcc void @demangle_binder(ptr noundef %0)
  %i.id = load i8, ptr %i.a, align 8, !tbaa !24, !range !32, !noundef !33
  %i.ie = trunc nuw i8 %i.id to i1
  br i1 %i.ie, label %.critedge6, label %.lr.ph318

.lr.ph318:                                        ; preds = %print_str.exit170, %demangle_dyn_trait.exit
  %.0317 = phi i64 [ %i.lc, %demangle_dyn_trait.exit ], [ 0, %print_str.exit170 ] ; 2 uses
  %i.if = load i64, ptr %i.d, align 8, !tbaa !23  ; 3 uses
  %i.ig = load i64, ptr %i.e, align 8, !tbaa !20
  %i.ih = icmp ult i64 %i.if, %i.ig
  br i1 %i.ih, label %peek.exit.i172, label %bb.by

peek.exit.i172:                                   ; preds = %.lr.ph318
  %i.ii = load ptr, ptr %0, align 8, !tbaa !28
  %i.ij = getelementptr inbounds nuw i8, ptr %i.ii, i64 %i.if
  %i.ik = load i8, ptr %i.ij, align 1, !tbaa !30
  %i.il = icmp eq i8 %i.ik, 69
  br i1 %i.il, label %eat.exit173, label %bb.by

eat.exit173:                                      ; preds = %peek.exit.i172
  %i.im = add nuw i64 %i.if, 1
  store i64 %i.im, ptr %i.d, align 8, !tbaa !23
  br label %.critedge6

.critedge6:                                       ; preds = %demangle_dyn_trait.exit, %print_str.exit170, %eat.exit173
  store i64 %i.ic, ptr %i.ib, align 8, !tbaa !27
  %i.in = load i64, ptr %i.d, align 8, !tbaa !23  ; 3 uses
  %i.io = load i64, ptr %i.e, align 8, !tbaa !20
  %i.ip = icmp ult i64 %i.in, %i.io
  br i1 %i.ip, label %peek.exit.i175, label %bb.cq

peek.exit.i175:                                   ; preds = %.critedge6
  %i.iq = load ptr, ptr %0, align 8, !tbaa !28
  %i.ir = getelementptr inbounds nuw i8, ptr %i.iq, i64 %i.in
  %i.is = load i8, ptr %i.ir, align 1, !tbaa !30
  %i.it = icmp eq i8 %i.is, 76
  br i1 %i.it, label %bb.cr, label %bb.cq

bb.by:                                            ; preds = %peek.exit.i172, %.lr.ph318
  %.not119 = icmp eq i64 %.0317, 0
  br i1 %.not119, label %print_str.exit177.thread, label %bb.bz

bb.bz:                                            ; preds = %bb.by
  %i.iu = load i8, ptr %i.f, align 1, !tbaa !25, !range !32, !noundef !33
  %i.iv = trunc nuw i8 %i.iu to i1
  br i1 %i.iv, label %print_str.exit177.thread, label %print_str.exit177

print_str.exit177:                                ; preds = %bb.bz
  %i.iw = load ptr, ptr %i.g, align 8, !tbaa !22
  %i.ix = load ptr, ptr %i.h, align 8, !tbaa !21
  tail call void %i.iw(ptr noundef nonnull @.str.50, i64 noundef 3, ptr noundef %i.ix) #12, !inline_history !0
  %.pre = load i8, ptr %i.a, align 8, !tbaa !24, !range !32
  %i.iy = trunc nuw i8 %.pre to i1
  br i1 %i.iy, label %3, label %print_str.exit177.thread

3:                                                ; preds = %print_str.exit177
  store i8 1, ptr %i.a, align 8, !tbaa !24
  br label %demangle_dyn_trait.exit

print_str.exit177.thread:                         ; preds = %bb.by, %bb.bz, %print_str.exit177
  %i.iz = tail call fastcc zeroext i1 @demangle_path_maybe_open_generics(ptr noundef nonnull %0), !inline_history !64 ; 2 uses
  %i.ja = load i64, ptr %i.d, align 8, !tbaa !23  ; 3 uses
  %i.jb = load i64, ptr %i.e, align 8, !tbaa !20
  %i.jc = icmp ult i64 %i.ja, %i.jb
  br i1 %i.jc, label %peek.exit.i185.preheader, label %peek.exit.i185._crit_edge

peek.exit.i185.preheader:                         ; preds = %print_str.exit177.thread
  %i.jd = load ptr, ptr %0, align 8, !tbaa !28
  %i.je = getelementptr inbounds nuw i8, ptr %i.jd, i64 %i.ja
  %i.jf = load i8, ptr %i.je, align 1, !tbaa !30
  %i.jg = icmp eq i8 %i.jf, 112
  br i1 %i.jg, label %bb.ca, label %peek.exit.i185._crit_edge

bb.ca:                                            ; preds = %peek.exit.i185.preheader
  %i.jh = add nuw i64 %i.ja, 1
  store i64 %i.jh, ptr %i.d, align 8, !tbaa !23
  %i.ji = load i8, ptr %i.a, align 8, !tbaa !24, !range !32, !noundef !33
  %i.jj = trunc nuw i8 %i.ji to i1                ; 2 uses
  br i1 %i.iz, label %bb.ce, label %bb.cb

bb.cb:                                            ; preds = %bb.ca
  br i1 %i.jj, label %print_str.exit183.peel, label %bb.cc

bb.cc:                                            ; preds = %bb.cb
  %i.jk = load i8, ptr %i.f, align 1, !tbaa !25, !range !32, !noundef !33
  %i.jl = trunc nuw i8 %i.jk to i1
  br i1 %i.jl, label %print_str.exit183.peel, label %bb.cd

bb.cd:                                            ; preds = %bb.cc
  %i.jm = load ptr, ptr %i.g, align 8, !tbaa !22
  %i.jn = load ptr, ptr %i.h, align 8, !tbaa !21
  tail call void %i.jm(ptr noundef nonnull @.str.16, i64 noundef 1, ptr noundef %i.jn) #12, !inline_history !65
  br label %print_str.exit183.peel

bb.ce:                                            ; preds = %bb.ca
  br i1 %i.jj, label %print_str.exit183.peel, label %bb.cf

bb.cf:                                            ; preds = %bb.ce
  %i.jo = load i8, ptr %i.f, align 1, !tbaa !25, !range !32, !noundef !33
  %i.jp = trunc nuw i8 %i.jo to i1
  br i1 %i.jp, label %print_str.exit183.peel, label %bb.cg

bb.cg:                                            ; preds = %bb.cf
  %i.jq = load ptr, ptr %i.g, align 8, !tbaa !22
  %i.jr = load ptr, ptr %i.h, align 8, !tbaa !21
  tail call void %i.jq(ptr noundef nonnull @.str.36, i64 noundef 2, ptr noundef %i.jr) #12, !inline_history !65
  br label %print_str.exit183.peel

print_str.exit183.peel:                           ; preds = %bb.cg, %bb.cf, %bb.ce, %bb.cd, %bb.cc, %bb.cb
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #12
  call fastcc void @parse_ident(ptr dead_on_unwind noalias writable align 8 %1, ptr noundef nonnull %0), !inline_history !64
  tail call fastcc void @print_ident(ptr noundef nonnull %0, ptr noundef nonnull byval(%struct.rust_mangled_ident) align 8 %1), !inline_history !64
  %i.js = load i8, ptr %i.a, align 8, !tbaa !24, !range !32, !noundef !33
  %i.jt = trunc nuw i8 %i.js to i1
  br i1 %i.jt, label %print_str.exit181.peel, label %bb.ch

bb.ch:                                            ; preds = %print_str.exit183.peel
  %i.ju = load i8, ptr %i.f, align 1, !tbaa !25, !range !32, !noundef !33
  %i.jv = trunc nuw i8 %i.ju to i1
  br i1 %i.jv, label %print_str.exit181.peel, label %bb.ci

bb.ci:                                            ; preds = %bb.ch
  %i.jw = load ptr, ptr %i.g, align 8, !tbaa !22
  %i.jx = load ptr, ptr %i.h, align 8, !tbaa !21
  tail call void %i.jw(ptr noundef nonnull @.str.90, i64 noundef 3, ptr noundef %i.jx) #12, !inline_history !65
  br label %print_str.exit181.peel

print_str.exit181.peel:                           ; preds = %bb.ci, %bb.ch, %print_str.exit183.peel
  tail call fastcc void @demangle_type(ptr noundef nonnull %0), !inline_history !64
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #12
  %i.jy = load i64, ptr %i.d, align 8, !tbaa !23  ; 2 uses
  %i.jz = load i64, ptr %i.e, align 8, !tbaa !20
  %i.ka = icmp ult i64 %i.jy, %i.jz
  br i1 %i.ka, label %peek.exit.i185, label %.critedge

peek.exit.i185:                                   ; preds = %print_str.exit181.peel, %print_str.exit181
  %i.kb = phi i64 [ %i.kt, %print_str.exit181 ], [ %i.jy, %print_str.exit181.peel ] ; 2 uses
  %i.kc = load ptr, ptr %0, align 8, !tbaa !28
  %i.kd = getelementptr inbounds nuw i8, ptr %i.kc, i64 %i.kb
  %i.ke = load i8, ptr %i.kd, align 1, !tbaa !30
  %i.kf = icmp eq i8 %i.ke, 112
  br i1 %i.kf, label %bb.cj, label %.critedge

bb.cj:                                            ; preds = %peek.exit.i185
  %i.kg = add nuw i64 %i.kb, 1
  store i64 %i.kg, ptr %i.d, align 8, !tbaa !23
  %i.kh = load i8, ptr %i.a, align 8, !tbaa !24, !range !32, !noundef !33
  %i.ki = trunc nuw i8 %i.kh to i1
  br i1 %i.ki, label %print_str.exit183, label %bb.ck

bb.ck:                                            ; preds = %bb.cj
  %i.kj = load i8, ptr %i.f, align 1, !tbaa !25, !range !32, !noundef !33
  %i.kk = trunc nuw i8 %i.kj to i1
  br i1 %i.kk, label %print_str.exit183, label %bb.cl

bb.cl:                                            ; preds = %bb.ck
  %i.kl = load ptr, ptr %i.g, align 8, !tbaa !22
  %i.km = load ptr, ptr %i.h, align 8, !tbaa !21
  tail call void %i.kl(ptr noundef nonnull @.str.36, i64 noundef 2, ptr noundef %i.km) #12, !inline_history !65
  br label %print_str.exit183

print_str.exit183:                                ; preds = %bb.cl, %bb.ck, %bb.cj
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #12
  call fastcc void @parse_ident(ptr dead_on_unwind noalias writable align 8 %1, ptr noundef nonnull %0), !inline_history !64
  tail call fastcc void @print_ident(ptr noundef nonnull %0, ptr noundef nonnull byval(%struct.rust_mangled_ident) align 8 %1), !inline_history !64
  %i.kn = load i8, ptr %i.a, align 8, !tbaa !24, !range !32, !noundef !33
  %i.ko = trunc nuw i8 %i.kn to i1
  br i1 %i.ko, label %print_str.exit181, label %bb.cm

bb.cm:                                            ; preds = %print_str.exit183
  %i.kp = load i8, ptr %i.f, align 1, !tbaa !25, !range !32, !noundef !33
  %i.kq = trunc nuw i8 %i.kp to i1
  br i1 %i.kq, label %print_str.exit181, label %bb.cn

bb.cn:                                            ; preds = %bb.cm
  %i.kr = load ptr, ptr %i.g, align 8, !tbaa !22
  %i.ks = load ptr, ptr %i.h, align 8, !tbaa !21
  tail call void %i.kr(ptr noundef nonnull @.str.90, i64 noundef 3, ptr noundef %i.ks) #12, !inline_history !65
  br label %print_str.exit181

print_str.exit181:                                ; preds = %print_str.exit183, %bb.cm, %bb.cn
  tail call fastcc void @demangle_type(ptr noundef nonnull %0), !inline_history !64
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #12
  %i.kt = load i64, ptr %i.d, align 8, !tbaa !23  ; 2 uses
  %i.ku = load i64, ptr %i.e, align 8, !tbaa !20
  %i.kv = icmp ult i64 %i.kt, %i.ku
  br i1 %i.kv, label %peek.exit.i185, label %.critedge, !llvm.loop !66

peek.exit.i185._crit_edge:                        ; preds = %peek.exit.i185.preheader, %print_str.exit177.thread
  br i1 %i.iz, label %.critedge, label %demangle_dyn_trait.exit

.critedge:                                        ; preds = %peek.exit.i185, %print_str.exit181, %print_str.exit181.peel, %peek.exit.i185._crit_edge
  %i.kw = load i8, ptr %i.a, align 8, !tbaa !24, !range !32, !noundef !33
  %i.kx = trunc nuw i8 %i.kw to i1
  br i1 %i.kx, label %demangle_dyn_trait.exit, label %bb.co

bb.co:                                            ; preds = %.critedge
  %i.ky = load i8, ptr %i.f, align 1, !tbaa !25, !range !32, !noundef !33
  %i.kz = trunc nuw i8 %i.ky to i1
  br i1 %i.kz, label %demangle_dyn_trait.exit, label %bb.cp

bb.cp:                                            ; preds = %bb.co
  %i.la = load ptr, ptr %i.g, align 8, !tbaa !22
  %i.lb = load ptr, ptr %i.h, align 8, !tbaa !21
  tail call void %i.la(ptr noundef nonnull @.str.18, i64 noundef 1, ptr noundef %i.lb) #12, !inline_history !65
  br label %demangle_dyn_trait.exit

demangle_dyn_trait.exit:                          ; preds = %bb.cp, %bb.co, %.critedge, %3, %peek.exit.i185._crit_edge
  %i.lc = add i64 %.0317, 1
  %i.ld = load i8, ptr %i.a, align 8, !tbaa !24, !range !32, !noundef !33
  %i.le = trunc nuw i8 %i.ld to i1
  br i1 %i.le, label %.critedge6, label %.lr.ph318, !llvm.loop !67

bb.cq:                                            ; preds = %peek.exit.i175, %.critedge6
  store i8 1, ptr %i.a, align 8, !tbaa !24
  br label %common.ret

bb.cr:                                            ; preds = %peek.exit.i175
  %i.lf = add nuw i64 %i.in, 1
  store i64 %i.lf, ptr %i.d, align 8, !tbaa !23
  %i.lg = tail call fastcc i64 @parse_integer_62(ptr noundef %0) ; 2 uses
  %.not120 = icmp eq i64 %i.lg, 0
  br i1 %.not120, label %common.ret, label %bb.cs

bb.cs:                                            ; preds = %bb.cr
  %i.lh = load i8, ptr %i.a, align 8, !tbaa !24, !range !32, !noundef !33
  %i.li = trunc nuw i8 %i.lh to i1
  br i1 %i.li, label %print_str.exit179, label %bb.ct

bb.ct:                                            ; preds = %bb.cs
  %i.lj = load i8, ptr %i.f, align 1, !tbaa !25, !range !32, !noundef !33
  %i.lk = trunc nuw i8 %i.lj to i1
  br i1 %i.lk, label %print_str.exit179, label %bb.cu

bb.cu:                                            ; preds = %bb.ct
  %i.ll = load ptr, ptr %i.g, align 8, !tbaa !22
  %i.lm = load ptr, ptr %i.h, align 8, !tbaa !21
  tail call void %i.ll(ptr noundef nonnull @.str.50, i64 noundef 3, ptr noundef %i.lm) #12, !inline_history !0
  br label %print_str.exit179

print_str.exit179:                                ; preds = %bb.cs, %bb.ct, %bb.cu
  tail call fastcc void @print_lifetime_from_index(ptr noundef %0, i64 noundef %i.lg)
  br label %common.ret

bb.cv:                                            ; preds = %next.exit
  %i.ln = tail call fastcc i64 @parse_integer_62(ptr noundef %0)
  %i.lo = load i8, ptr %i.f, align 1, !tbaa !25, !range !32, !noundef !33
  %i.lp = trunc nuw i8 %i.lo to i1
  br i1 %i.lp, label %common.ret, label %bb.cw

common.ret:                                       ; preds = %print_str.exit138, %tailrecurse._crit_edge, %bb.bv, %.loopexit, %print_str.exit179, %bb.cr, %bb.cv, %bb.cq, %bb.o, %bb.p, %bb.ao, %bb.ap, %bb.aq, %print_str.exit143, %print_str.exit143.thread399, %bb.aw, %bb.av, %print_str.exit142, %bb.cw
  ret void

bb.cw:                                            ; preds = %bb.cv
  %i.lq = load i64, ptr %i.d, align 8, !tbaa !23
  store i64 %i.ln, ptr %i.d, align 8, !tbaa !23
  tail call fastcc void @demangle_type(ptr noundef %0)
  store i64 %i.lq, ptr %i.d, align 8, !tbaa !23
  br label %common.ret

.loopexit:                                        ; preds = %next.exit, %basic_type.exit.thread194
  %i.lr = phi i64 [ %i.o, %basic_type.exit.thread194 ], [ %i.i, %next.exit ]
  store i64 %i.lr, ptr %i.d, align 8, !tbaa !23
  tail call fastcc void @demangle_path(ptr noundef %0, i1 noundef zeroext false)
  br label %common.ret
}

; Function Attrs: nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none)
define internal fastcc i64 @parse_integer_62(ptr nofree noundef nonnull captures(none) %0) unnamed_addr #5 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 4 uses
  %i.b = load i64, ptr %i.a, align 8, !tbaa !23   ; 5 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.d = load i64, ptr %i.c, align 8, !tbaa !20   ; 3 uses
  %i.e = icmp ult i64 %i.b, %i.d
  br i1 %i.e, label %peek.exit.i, label %eat.exit

peek.exit.i:                                      ; preds = %bb.a
  %i.f = load ptr, ptr %0, align 8, !tbaa !28
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 %i.b
  %i.h = load i8, ptr %i.g, align 1, !tbaa !30
  %i.i = icmp eq i8 %i.h, 95
  br i1 %i.i, label %eat.exit.thread, label %eat.exit

eat.exit.thread:                                  ; preds = %peek.exit.i
  %i.j = add nuw i64 %i.b, 1
  store i64 %i.j, ptr %i.a, align 8, !tbaa !23
  br label %bb.h

eat.exit:                                         ; preds = %bb.a, %peek.exit.i
  %umax = tail call i64 @llvm.umax.i64(i64 %i.d, i64 %i.b)
  br label %bb.b

bb.b:                                             ; preds = %eat.exit, %bb.f
  %i.k = phi i64 [ %i.t, %bb.f ], [ %i.b, %eat.exit ] ; 6 uses
  %.027 = phi i64 [ %.1, %bb.f ], [ 0, %eat.exit ] ; 2 uses
  %i.l = icmp ult i64 %i.k, %i.d
  br i1 %i.l, label %peek.exit.i33, label %bb.c

peek.exit.i33:                                    ; preds = %bb.b
  %i.m = load ptr, ptr %0, align 8, !tbaa !28
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 %i.k
  %i.o = load i8, ptr %i.n, align 1, !tbaa !30
  %i.p = icmp eq i8 %i.o, 95
  br i1 %i.p, label %bb.g, label %bb.c

bb.c:                                             ; preds = %peek.exit.i33, %bb.b
  %exitcond.not = icmp eq i64 %i.k, %umax
  br i1 %exitcond.not, label %.critedge, label %peek.exit.i35

peek.exit.i35:                                    ; preds = %bb.c
  %i.q = load ptr, ptr %0, align 8, !tbaa !28
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 %i.k
  %i.s = load i8, ptr %i.r, align 1, !tbaa !30    ; 5 uses
  %.not.i = icmp eq i8 %i.s, 0
  br i1 %.not.i, label %.critedge, label %next.exit

next.exit:                                        ; preds = %peek.exit.i35
  %i.t = add i64 %i.k, 1                          ; 2 uses
  store i64 %i.t, ptr %i.a, align 8, !tbaa !23
  %i.u = mul i64 %.027, 62
  %i.v = sext i8 %i.s to i64
  %i.w = add i8 %i.s, -48
  %or.cond = icmp ult i8 %i.w, 10
  br i1 %or.cond, label %bb.f, label %bb.d

bb.d:                                             ; preds = %next.exit
  %i.x = add i8 %i.s, -97
  %or.cond5 = icmp ult i8 %i.x, 26
  br i1 %or.cond5, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.y = add i8 %i.s, -65
  %or.cond8 = icmp ult i8 %i.y, 26
  br i1 %or.cond8, label %bb.f, label %.critedge

.critedge:                                        ; preds = %bb.e, %peek.exit.i35, %bb.c
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i8 1, ptr %i.z, align 8, !tbaa !24
  br label %bb.h

bb.f:                                             ; preds = %bb.e, %bb.d, %next.exit
  %.sink = phi i64 [ -48, %next.exit ], [ -87, %bb.d ], [ -29, %bb.e ]
  %.pn = add nsw i64 %.sink, %i.v
  %.1 = add i64 %i.u, %.pn
  br label %bb.b, !llvm.loop !1

bb.g:                                             ; preds = %peek.exit.i33
  %i.aa = add nuw i64 %i.k, 1
  store i64 %i.aa, ptr %i.a, align 8, !tbaa !23
  %i.ab = add i64 %.027, 1
  br label %bb.h

bb.h:                                             ; preds = %eat.exit.thread, %bb.g, %.critedge
  %.3 = phi i64 [ 0, %eat.exit.thread ], [ 0, %.critedge ], [ %i.ab, %bb.g ]
  ret i64 %.3
}

; Function Attrs: mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite, errnomem: write)
declare noalias noundef ptr @malloc(i64 noundef) local_unnamed_addr #8

; Function Attrs: mustprogress nounwind willreturn allockind("realloc") allocsize(1) memory(argmem: readwrite, inaccessiblemem: readwrite, errnomem: write)
declare noalias noundef ptr @realloc(ptr allocptr noundef captures(none), i64 noundef) local_unnamed_addr #9

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memmove.p0.p0.i64(ptr writeonly captures(none), ptr readonly captures(none), i64, i1 immarg) #1

; Function Attrs: nounwind
define internal fastcc void @print_lifetime_from_index(ptr nofree noundef nonnull readonly captures(none) %0, i64 noundef %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca [21 x i8], align 16               ; 5 uses
  %i.b = alloca i8, align 1                       ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 5 uses
  %i.d = load i8, ptr %i.c, align 8, !tbaa !24, !range !32, !noundef !33
  %i.e = trunc nuw i8 %i.d to i1
  br i1 %i.e, label %print_str.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 41
  %i.g = load i8, ptr %i.f, align 1, !tbaa !25, !range !32, !noundef !33
  %i.h = trunc nuw i8 %i.g to i1
  br i1 %i.h, label %print_str.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !22
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !21
  tail call void %i.j(ptr noundef nonnull @.str.72, i64 noundef 1, ptr noundef %i.l) #12, !inline_history !0
  br label %print_str.exit

print_str.exit:                                   ; preds = %bb.a, %bb.b, %bb.c
  %i.m = icmp eq i64 %1, 0
  br i1 %i.m, label %bb.d, label %bb.g

bb.d:                                             ; preds = %print_str.exit
  %i.n = load i8, ptr %i.c, align 8, !tbaa !24, !range !32, !noundef !33
  %i.o = trunc nuw i8 %i.n to i1
  br i1 %i.o, label %print_str.exit11, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 41
  %i.q = load i8, ptr %i.p, align 1, !tbaa !25, !range !32, !noundef !33
  %i.r = trunc nuw i8 %i.q to i1
  br i1 %i.r, label %print_str.exit11, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !22
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !21
  tail call void %i.t(ptr noundef nonnull @.str.70, i64 noundef 1, ptr noundef %i.v) #12, !inline_history !0
  br label %print_str.exit11

bb.g:                                             ; preds = %print_str.exit
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.x = load i64, ptr %i.w, align 8, !tbaa !27
  %i.y = sub i64 %i.x, %1                         ; 3 uses
  %i.z = icmp ult i64 %i.y, 26
  br i1 %i.z, label %bb.h, label %bb.k

bb.h:                                             ; preds = %bb.g
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #12
  %i.aa = trunc nuw nsw i64 %i.y to i8
  %i.ab = add nuw nsw i8 %i.aa, 97
  store i8 %i.ab, ptr %i.b, align 1, !tbaa !30
  %i.ac = load i8, ptr %i.c, align 8, !tbaa !24, !range !32, !noundef !33
  %i.ad = trunc nuw i8 %i.ac to i1
  br i1 %i.ad, label %print_str.exit12, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 41
  %i.af = load i8, ptr %i.ae, align 1, !tbaa !25, !range !32, !noundef !33
  %i.ag = trunc nuw i8 %i.af to i1
  br i1 %i.ag, label %print_str.exit12, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !22
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !21
  call void %i.ai(ptr noundef nonnull %i.b, i64 noundef 1, ptr noundef %i.ak) #12, !inline_history !0
  br label %print_str.exit12

print_str.exit12:                                 ; preds = %bb.h, %bb.i, %bb.j
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #12
  br label %print_str.exit11

bb.k:                                             ; preds = %bb.g
  %i.al = load i8, ptr %i.c, align 8, !tbaa !24, !range !32, !noundef !33
  %i.am = trunc nuw i8 %i.al to i1
  br i1 %i.am, label %print_str.exit13, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 41
  %i.ao = load i8, ptr %i.an, align 1, !tbaa !25, !range !32, !noundef !33
  %i.ap = trunc nuw i8 %i.ao to i1
  br i1 %i.ap, label %print_str.exit13, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.ar = load ptr, ptr %i.aq, align 8, !tbaa !22
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.at = load ptr, ptr %i.as, align 8, !tbaa !21
  tail call void %i.ar(ptr noundef nonnull @.str.70, i64 noundef 1, ptr noundef %i.at) #12, !inline_history !0
  br label %print_str.exit13

print_str.exit13:                                 ; preds = %bb.k, %bb.l, %bb.m
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #12
  %i.au = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %i.a, ptr noundef nonnull dereferenceable(1) @.str.38, i64 noundef %i.y) #12 ; 0 uses
  %i.av = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.a) #13
  %i.aw = load i8, ptr %i.c, align 8, !tbaa !24, !range !32, !noundef !33
  %i.ax = trunc nuw i8 %i.aw to i1
  br i1 %i.ax, label %print_uint64.exit, label %bb.n

bb.n:                                             ; preds = %print_str.exit13
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 41
  %i.az = load i8, ptr %i.ay, align 1, !tbaa !25, !range !32, !noundef !33
  %i.ba = trunc nuw i8 %i.az to i1
  br i1 %i.ba, label %print_uint64.exit, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.bb = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.bc = load ptr, ptr %i.bb, align 8, !tbaa !22
  %i.bd = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.be = load ptr, ptr %i.bd, align 8, !tbaa !21
  call void %i.bc(ptr noundef nonnull %i.a, i64 noundef %i.av, ptr noundef %i.be) #12, !inline_history !4
  br label %print_uint64.exit

print_uint64.exit:                                ; preds = %print_str.exit13, %bb.n, %bb.o
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #12
  br label %print_str.exit11

print_str.exit11:                                 ; preds = %bb.f, %bb.e, %bb.d, %print_str.exit12, %print_uint64.exit
  ret void
}

; Function Attrs: nounwind
define internal fastcc void @demangle_const(ptr noundef nonnull %0, i1 noundef zeroext %1) unnamed_addr #0 {
bb.a:
  %2 = alloca %struct.rust_mangled_ident, align 8 ; 4 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 34 uses
  %i.b = load i8, ptr %i.a, align 8, !tbaa !24, !range !32, !noundef !33
  %i.c = trunc nuw i8 %i.b to i1
  br i1 %i.c, label %3, label %bb.b

3:                                                ; preds = %bb.a
  store i8 1, ptr %i.a, align 8, !tbaa !24
  br label %common.ret418

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 28 uses
  %i.e = load i64, ptr %i.d, align 8, !tbaa !23   ; 6 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 7 uses
  %i.g = load i64, ptr %i.f, align 8, !tbaa !20   ; 8 uses
  %i.h = icmp ult i64 %i.e, %i.g
  br i1 %i.h, label %peek.exit.i, label %next.exit.thread

peek.exit.i:                                      ; preds = %bb.b
  %i.i = load ptr, ptr %0, align 8, !tbaa !28     ; 10 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 %i.e
  %i.k = load i8, ptr %i.j, align 1, !tbaa !30    ; 5 uses
  %.not.i = icmp eq i8 %i.k, 0
  br i1 %.not.i, label %next.exit.thread, label %next.exit

next.exit:                                        ; preds = %peek.exit.i
  %i.l = add nuw i64 %i.e, 1                      ; 13 uses
  store i64 %i.l, ptr %i.d, align 8, !tbaa !23
  switch i8 %i.k, label %next.exit.thread [
    i8 112, label %bb.c
    i8 104, label %bb.e
    i8 116, label %bb.e
    i8 109, label %bb.e
    i8 121, label %bb.e
    i8 111, label %bb.e
    i8 106, label %bb.e
    i8 97, label %bb.f
    i8 115, label %bb.f
    i8 108, label %bb.f
    i8 120, label %bb.f
    i8 110, label %bb.f
    i8 105, label %bb.f
    i8 98, label %.preheader351
    i8 99, label %.preheader352
    i8 101, label %bb.v
    i8 66, label %bb.ch
    i8 86, label %bb.bd
    i8 65, label %bb.af
    i8 84, label %bb.aq
    i8 82, label %bb.y
    i8 81, label %eat.exit188.thread
  ]

bb.c:                                             ; preds = %next.exit
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 41
  %i.n = load i8, ptr %i.m, align 1, !tbaa !25, !range !32, !noundef !33
  %i.o = trunc nuw i8 %i.n to i1
  br i1 %i.o, label %common.ret418, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !22
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !21
  tail call void %i.q(ptr noundef nonnull @.str.70, i64 noundef 1, ptr noundef %i.s) #12, !inline_history !0
  br label %common.ret418

bb.e:                                             ; preds = %next.exit, %next.exit, %next.exit, %next.exit, %next.exit, %next.exit
  tail call fastcc void @demangle_const_uint(ptr noundef %0, i8 noundef signext %i.k)
  br label %common.ret418

bb.f:                                             ; preds = %next.exit, %next.exit, %next.exit, %next.exit, %next.exit, %next.exit
  %i.t = icmp ult i64 %i.l, %i.g
  br i1 %i.t, label %peek.exit.i151, label %print_str.exit152

peek.exit.i151:                                   ; preds = %bb.f
  %i.u = getelementptr inbounds nuw i8, ptr %i.i, i64 %i.l
  %i.v = load i8, ptr %i.u, align 1, !tbaa !30
  %i.w = icmp eq i8 %i.v, 110
  br i1 %i.w, label %bb.g, label %print_str.exit152

bb.g:                                             ; preds = %peek.exit.i151
  %i.x = add nuw i64 %i.e, 2
  store i64 %i.x, ptr %i.d, align 8, !tbaa !23
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 41
  %i.z = load i8, ptr %i.y, align 1, !tbaa !25, !range !32, !noundef !33
  %i.aa = trunc nuw i8 %i.z to i1
  br i1 %i.aa, label %print_str.exit152, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !22
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !21
  tail call void %i.ac(ptr noundef nonnull @.str.45, i64 noundef 1, ptr noundef %i.ae) #12, !inline_history !0
  br label %print_str.exit152

print_str.exit152:                                ; preds = %bb.f, %peek.exit.i151, %bb.h, %bb.g
  tail call fastcc void @demangle_const_uint(ptr noundef %0, i8 noundef signext %i.k)
  br label %common.ret418

.preheader351:                                    ; preds = %next.exit, %bb.j
  %.pre.i = phi i8 [ %.pre.i295, %bb.j ], [ 0, %next.exit ] ; 2 uses
  %i.af = phi i64 [ %i.ak, %bb.j ], [ %i.l, %next.exit ] ; 5 uses
  %.017.i.i = phi i64 [ %i.an, %bb.j ], [ 0, %next.exit ] ; 4 uses
  %i.ag = icmp ult i64 %i.af, %i.g
  br i1 %i.ag, label %peek.exit.i.i.i, label %peek.exit.thread.i.i.i

peek.exit.i.i.i:                                  ; preds = %.preheader351
  %i.ah = getelementptr inbounds nuw i8, ptr %i.i, i64 %i.af
  %i.ai = load i8, ptr %i.ah, align 1, !tbaa !30  ; 2 uses
  switch i8 %i.ai, label %bb.i [
    i8 95, label %parse_hex_nibbles.exit.i
    i8 0, label %peek.exit.thread.i.i.i
  ]

peek.exit.thread.i.i.i:                           ; preds = %peek.exit.i.i.i, %.preheader351
  store i8 1, ptr %i.a, align 8, !tbaa !24
  br label %next.exit.i.i

bb.i:                                             ; preds = %peek.exit.i.i.i
  %i.aj = add nuw i64 %i.af, 1                    ; 2 uses
  store i64 %i.aj, ptr %i.d, align 8, !tbaa !23
  br label %next.exit.i.i

next.exit.i.i:                                    ; preds = %bb.i, %peek.exit.thread.i.i.i
  %.pre.i295 = phi i8 [ %.pre.i, %bb.i ], [ 1, %peek.exit.thread.i.i.i ]
  %i.ak = phi i64 [ %i.aj, %bb.i ], [ %i.af, %peek.exit.thread.i.i.i ]
  %.0.i.i.i = phi i8 [ %i.ai, %bb.i ], [ 0, %peek.exit.thread.i.i.i ] ; 2 uses
  %i.al = add i8 %.0.i.i.i, -48
  %or.cond.i.i = icmp ult i8 %i.al, 10
  %i.am = add i8 %.0.i.i.i, -97
  %or.cond5.i.i = icmp ult i8 %i.am, 6
  %or.cond18.i.i = or i1 %or.cond.i.i, %or.cond5.i.i
  br i1 %or.cond18.i.i, label %bb.j, label %.critedge

bb.j:                                             ; preds = %next.exit.i.i
  %i.an = add i64 %.017.i.i, 1
  br label %.preheader351, !llvm.loop !5

parse_hex_nibbles.exit.i:                         ; preds = %peek.exit.i.i.i
  %i.ao = add nuw i64 %i.af, 1
  store i64 %i.ao, ptr %i.d, align 8, !tbaa !23
  %i.ap = getelementptr inbounds nuw i8, ptr %i.i, i64 %i.l ; 3 uses
  %i.aq = trunc nuw i8 %.pre.i to i1
  br i1 %i.aq, label %.critedge, label %.preheader.i

.preheader.i:                                     ; preds = %parse_hex_nibbles.exit.i
  %.not9.i = icmp eq i64 %.017.i.i, 0
  br i1 %.not9.i, label %parse_hex_nibbles_for_const_uint.exit, label %.lr.ph.preheader.i

.lr.ph.preheader.i:                               ; preds = %.preheader.i
  %scevgep.i = getelementptr i8, ptr %i.ap, i64 %.017.i.i
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.k, %.lr.ph.preheader.i
  %.sroa.5.011.i = phi i64 [ %i.au, %bb.k ], [ %.017.i.i, %.lr.ph.preheader.i ] ; 2 uses
  %.sroa.0.010.i = phi ptr [ %i.at, %bb.k ], [ %i.ap, %.lr.ph.preheader.i ] ; 3 uses
  %i.ar = load i8, ptr %.sroa.0.010.i, align 1, !tbaa !30
  %i.as = icmp eq i8 %i.ar, 48
  br i1 %i.as, label %bb.k, label %parse_hex_nibbles_for_const_uint.exit

bb.k:                                             ; preds = %.lr.ph.i
  %i.at = getelementptr inbounds nuw i8, ptr %.sroa.0.010.i, i64 1
  %i.au = add i64 %.sroa.5.011.i, -1              ; 2 uses
  %.not.i153 = icmp eq i64 %i.au, 0
  br i1 %.not.i153, label %parse_hex_nibbles_for_const_uint.exit, label %.lr.ph.i, !llvm.loop !6

parse_hex_nibbles_for_const_uint.exit:            ; preds = %.lr.ph.i, %bb.k, %.preheader.i
  %.sroa.0.1.i = phi ptr [ %i.ap, %.preheader.i ], [ %scevgep.i, %bb.k ], [ %.sroa.0.010.i, %.lr.ph.i ]
  %.sroa.5.1.i = phi i64 [ 0, %.preheader.i ], [ 0, %bb.k ], [ %.sroa.5.011.i, %.lr.ph.i ] ; 2 uses
  %i.av = icmp ugt i64 %.sroa.5.1.i, 1
  br i1 %i.av, label %.critedge, label %bb.l

.critedge:                                        ; preds = %next.exit.i.i, %parse_hex_nibbles.exit.i, %parse_hex_nibbles_for_const_uint.exit
  store i8 1, ptr %i.a, align 8, !tbaa !24
  br label %common.ret418

bb.l:                                             ; preds = %parse_hex_nibbles_for_const_uint.exit
  %.not = icmp eq i64 %.sroa.5.1.i, 0
  br i1 %.not, label %.thread, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.aw = load i8, ptr %.sroa.0.1.i, align 1, !tbaa !30 ; 2 uses
  %i.ax = icmp sgt i8 %i.aw, 96
  %.v.i = select i1 %i.ax, i8 -87, i8 -48
  %i.ay = add i8 %.v.i, %i.aw                     ; 2 uses
  %i.az = zext nneg i8 %i.ay to i32
  %i.ba = icmp ult i8 %i.ay, 2
  br i1 %i.ba, label %.thread, label %bb.n

bb.n:                                             ; preds = %bb.m
  store i8 1, ptr %i.a, align 8, !tbaa !24
  br label %common.ret418

.thread:                                          ; preds = %bb.l, %bb.m
  %i.bb = phi i32 [ %i.az, %bb.m ], [ 0, %bb.l ]
  %i.bc = getelementptr inbounds nuw i8, ptr %0, i64 41
  %i.bd = load i8, ptr %i.bc, align 1, !tbaa !25, !range !32, !noundef !33
  %i.be = trunc nuw i8 %i.bd to i1
  br i1 %i.be, label %common.ret418, label %bb.o

bb.o:                                             ; preds = %.thread
  %i.bf = icmp eq i32 %i.bb, 1                    ; 2 uses
  %i.bg = select i1 %i.bf, i64 4, i64 5
  %i.bh = select i1 %i.bf, ptr @.str.73, ptr @.str.74
  %i.bi = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.bj = load ptr, ptr %i.bi, align 8, !tbaa !22
  %i.bk = getelementptr inbounds nuw i8, ptr %0, i64 16
end_hunk_3
begin_hunk_4_@demangle_const:bb.a

bb.bz:                                            ; preds = %peek.exit.i.i.i224
  %i.mc = add nuw i64 %i.lw, 1                    ; 4 uses
  store i64 %i.mc, ptr %i.d, align 8, !tbaa !23
  %i.md = icmp ult i64 %i.mc, %i.lv
  br i1 %i.md, label %peek.exit.i.i.i.i, label %eat.exit.i.i.i.preheader

eat.exit.i.i.i.preheader:                         ; preds = %peek.exit.i.i.i.i, %bb.bz
  br label %eat.exit.i.i.i

peek.exit.i.i.i.i:                                ; preds = %bb.bz
  %i.me = getelementptr inbounds nuw i8, ptr %i.ly, i64 %i.mc
  %i.mf = load i8, ptr %i.me, align 1, !tbaa !30
  %i.mg = icmp eq i8 %i.mf, 95
  br i1 %i.mg, label %eat.exit.thread.i.i.i, label %eat.exit.i.i.i.preheader

eat.exit.thread.i.i.i:                            ; preds = %peek.exit.i.i.i.i
  %i.mh = add nuw i64 %i.lw, 2
  store i64 %i.mh, ptr %i.d, align 8, !tbaa !23
  br label %parse_disambiguator.exit

eat.exit.i.i.i:                                   ; preds = %eat.exit.i.i.i.preheader, %next.exit.i.i.i
  %i.mi = phi i64 [ %i.mp, %next.exit.i.i.i ], [ %i.mc, %eat.exit.i.i.i.preheader ] ; 6 uses
  %i.mj = icmp ult i64 %i.mi, %i.lv
  br i1 %i.mj, label %peek.exit.i33.i.i.i, label %bb.ca

peek.exit.i33.i.i.i:                              ; preds = %eat.exit.i.i.i
  %i.mk = getelementptr inbounds nuw i8, ptr %i.ly, i64 %i.mi
  %i.ml = load i8, ptr %i.mk, align 1, !tbaa !30
  %i.mm = icmp eq i8 %i.ml, 95
  br i1 %i.mm, label %bb.cb, label %bb.ca

bb.ca:                                            ; preds = %peek.exit.i33.i.i.i, %eat.exit.i.i.i
  %exitcond.not.i.i.i = icmp eq i64 %i.mi, %i.lv
  br i1 %exitcond.not.i.i.i, label %.critedge.i.i.i, label %peek.exit.i35.i.i.i

peek.exit.i35.i.i.i:                              ; preds = %bb.ca
  %i.mn = getelementptr inbounds nuw i8, ptr %i.ly, i64 %i.mi
  %i.mo = load i8, ptr %i.mn, align 1, !tbaa !30  ; 3 uses
  %.not.i.i.i.i = icmp eq i8 %i.mo, 0
  br i1 %.not.i.i.i.i, label %.critedge.i.i.i, label %next.exit.i.i.i

next.exit.i.i.i:                                  ; preds = %peek.exit.i35.i.i.i
  %i.mp = add i64 %i.mi, 1                        ; 2 uses
  store i64 %i.mp, ptr %i.d, align 8, !tbaa !23
  %i.mq = add i8 %i.mo, -48
  %or.cond.i.i.i = icmp ult i8 %i.mq, 10
  %i.mr = and i8 %i.mo, -33
  %i.ms = add i8 %i.mr, -65
  %i.mt = icmp ult i8 %i.ms, 26
  %or.cond350 = or i1 %or.cond.i.i.i, %i.mt
  br i1 %or.cond350, label %eat.exit.i.i.i, label %.critedge.i.i.i, !llvm.loop !1

.critedge.i.i.i:                                  ; preds = %next.exit.i.i.i, %peek.exit.i35.i.i.i, %bb.ca
  store i8 1, ptr %i.a, align 8, !tbaa !24
  br label %parse_disambiguator.exit

bb.cb:                                            ; preds = %peek.exit.i33.i.i.i
  %i.mu = add nuw i64 %i.mi, 1
  store i64 %i.mu, ptr %i.d, align 8, !tbaa !23
  br label %parse_disambiguator.exit

parse_disambiguator.exit:                         ; preds = %print_str.exit223, %peek.exit.i.i.i224, %eat.exit.thread.i.i.i, %.critedge.i.i.i, %bb.cb
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #12
  call fastcc void @parse_ident(ptr dead_on_unwind noalias writable align 8 %2, ptr noundef %0)
  tail call fastcc void @print_ident(ptr noundef %0, ptr noundef nonnull byval(%struct.rust_mangled_ident) align 8 %2)
  %i.mv = load i8, ptr %i.a, align 8, !tbaa !24, !range !32, !noundef !33
  %i.mw = trunc nuw i8 %i.mv to i1
  br i1 %i.mw, label %print_str.exit225, label %bb.cc

bb.cc:                                            ; preds = %parse_disambiguator.exit
  %i.mx = load i8, ptr %i.lf, align 1, !tbaa !25, !range !32, !noundef !33
  %i.my = trunc nuw i8 %i.mx to i1
  br i1 %i.my, label %print_str.exit225, label %bb.cd

bb.cd:                                            ; preds = %bb.cc
  %i.mz = load ptr, ptr %i.lg, align 8, !tbaa !22
  %i.na = load ptr, ptr %i.lh, align 8, !tbaa !21
  tail call void %i.mz(ptr noundef nonnull @.str.77, i64 noundef 2, ptr noundef %i.na) #12, !inline_history !0
  br label %print_str.exit225

print_str.exit225:                                ; preds = %parse_disambiguator.exit, %bb.cc, %bb.cd
  tail call fastcc void @demangle_const(ptr noundef %0, i1 noundef zeroext true)
  %i.nb = add i64 %.0126, 1
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #12
  br label %bb.bu, !llvm.loop !73

bb.ce:                                            ; preds = %peek.exit.i221
  %i.nc = add nuw i64 %i.li, 1
  store i64 %i.nc, ptr %i.d, align 8, !tbaa !23
  %i.nd = trunc nuw i8 %.pre285 to i1
  br i1 %i.nd, label %print_str.exit226.thread, label %bb.cf

bb.cf:                                            ; preds = %bb.ce
  %i.ne = load i8, ptr %i.lf, align 1, !tbaa !25, !range !32, !noundef !33
  %i.nf = trunc nuw i8 %i.ne to i1
  br i1 %i.nf, label %print_str.exit226.thread, label %bb.cg

bb.cg:                                            ; preds = %bb.cf
  %i.ng = load ptr, ptr %i.lg, align 8, !tbaa !22
  %i.nh = load ptr, ptr %i.lh, align 8, !tbaa !21
  tail call void %i.ng(ptr noundef nonnull @.str.78, i64 noundef 2, ptr noundef %i.nh) #12, !inline_history !0
  br label %print_str.exit226.thread

print_str.exit226.thread:                         ; preds = %bb.ce, %bb.cf, %bb.cg
  br i1 %1, label %common.ret418, label %bb.cq

print_str.exit226:                                ; preds = %bb.bv
  store i8 1, ptr %i.a, align 8, !tbaa !24
  br label %common.ret418

next.exit212.thread:                              ; preds = %peek.exit.i210, %print_str.exit207, %next.exit212
  store i8 1, ptr %i.a, align 8, !tbaa !24
  br label %common.ret418

bb.ch:                                            ; preds = %next.exit
  %i.ni = icmp ult i64 %i.l, %i.g
  br i1 %i.ni, label %peek.exit.i.i, label %eat.exit.i

peek.exit.i.i:                                    ; preds = %bb.ch
  %i.nj = getelementptr inbounds nuw i8, ptr %i.i, i64 %i.l
  %i.nk = load i8, ptr %i.nj, align 1, !tbaa !30
  %i.nl = icmp eq i8 %i.nk, 95
  br i1 %i.nl, label %eat.exit.thread.i, label %eat.exit.i

eat.exit.thread.i:                                ; preds = %peek.exit.i.i
  %i.nm = add nuw i64 %i.e, 2                     ; 2 uses
  store i64 %i.nm, ptr %i.d, align 8, !tbaa !23
  br label %parse_integer_62.exit

eat.exit.i:                                       ; preds = %peek.exit.i.i, %bb.ch
  %umax.i = tail call i64 @llvm.umax.i64(i64 %i.g, i64 %i.l) ; 2 uses
  br label %bb.ci

bb.ci:                                            ; preds = %bb.cm, %eat.exit.i
  %i.nn = phi i64 [ %i.nu, %bb.cm ], [ %i.l, %eat.exit.i ] ; 7 uses
  %.027.i = phi i64 [ %.1.i, %bb.cm ], [ 0, %eat.exit.i ] ; 2 uses
  %i.no = icmp ult i64 %i.nn, %i.g
  br i1 %i.no, label %peek.exit.i33.i, label %bb.cj

peek.exit.i33.i:                                  ; preds = %bb.ci
  %i.np = getelementptr inbounds nuw i8, ptr %i.i, i64 %i.nn
  %i.nq = load i8, ptr %i.np, align 1, !tbaa !30
  %i.nr = icmp eq i8 %i.nq, 95
  br i1 %i.nr, label %bb.cn, label %bb.cj

bb.cj:                                            ; preds = %peek.exit.i33.i, %bb.ci
  %exitcond.not.i = icmp eq i64 %i.nn, %umax.i
  br i1 %exitcond.not.i, label %.critedge.i, label %peek.exit.i35.i

peek.exit.i35.i:                                  ; preds = %bb.cj
  %i.ns = getelementptr inbounds nuw i8, ptr %i.i, i64 %i.nn
  %i.nt = load i8, ptr %i.ns, align 1, !tbaa !30  ; 5 uses
  %.not.i.i = icmp eq i8 %i.nt, 0
  br i1 %.not.i.i, label %.critedge.i, label %next.exit.i

next.exit.i:                                      ; preds = %peek.exit.i35.i
  %i.nu = add i64 %i.nn, 1                        ; 3 uses
  store i64 %i.nu, ptr %i.d, align 8, !tbaa !23
  %i.nv = mul i64 %.027.i, 62
  %i.nw = zext nneg i8 %i.nt to i64
  %i.nx = add i8 %i.nt, -48
  %or.cond.i = icmp ult i8 %i.nx, 10
  br i1 %or.cond.i, label %bb.cm, label %bb.ck

bb.ck:                                            ; preds = %next.exit.i
  %i.ny = add i8 %i.nt, -97
  %or.cond5.i = icmp ult i8 %i.ny, 26
  br i1 %or.cond5.i, label %bb.cm, label %bb.cl

bb.cl:                                            ; preds = %bb.ck
  %i.nz = add i8 %i.nt, -65
  %or.cond8.i = icmp ult i8 %i.nz, 26
  br i1 %or.cond8.i, label %bb.cm, label %.critedge.i

.critedge.i:                                      ; preds = %bb.cl, %peek.exit.i35.i, %bb.cj
  %i.oa = phi i64 [ %i.nu, %bb.cl ], [ %i.nn, %peek.exit.i35.i ], [ %umax.i, %bb.cj ]
  store i8 1, ptr %i.a, align 8, !tbaa !24
  br label %parse_integer_62.exit

bb.cm:                                            ; preds = %bb.cl, %bb.ck, %next.exit.i
  %.sink.i = phi i64 [ -48, %next.exit.i ], [ -87, %bb.ck ], [ -29, %bb.cl ]
  %.pn.i = add i64 %i.nv, %i.nw
  %.1.i = add i64 %.pn.i, %.sink.i
  br label %bb.ci, !llvm.loop !1

bb.cn:                                            ; preds = %peek.exit.i33.i
  %i.ob = add nuw i64 %i.nn, 1                    ; 2 uses
  store i64 %i.ob, ptr %i.d, align 8, !tbaa !23
  %i.oc = add i64 %.027.i, 1
  br label %parse_integer_62.exit

parse_integer_62.exit:                            ; preds = %eat.exit.thread.i, %.critedge.i, %bb.cn
  %i.od = phi i64 [ %i.nm, %eat.exit.thread.i ], [ %i.oa, %.critedge.i ], [ %i.ob, %bb.cn ]
  %.3.i = phi i64 [ 0, %eat.exit.thread.i ], [ 0, %.critedge.i ], [ %i.oc, %bb.cn ]
  %i.oe = getelementptr inbounds nuw i8, ptr %0, i64 41
  %i.of = load i8, ptr %i.oe, align 1, !tbaa !25, !range !32, !noundef !33
  %i.og = trunc nuw i8 %i.of to i1
  br i1 %i.og, label %common.ret418, label %bb.co

common.ret418:                                    ; preds = %bb.cs, %bb.cr, %bb.cq, %print_str.exit206.thread, %print_str.exit198.thread, %print_str.exit218.thread, %print_str.exit185, %print_str.exit226.thread, %print_str.exit191, %print_str.exit226, %print_str.exit218, %print_str.exit206, %print_str.exit198, %bb.u, %bb.t, %print_str.exit181, %bb.o, %.thread, %bb.d, %bb.c, %parse_hex_nibbles_for_const_uint.exit180.thread, %bb.n, %next.exit212.thread, %next.exit.thread, %.critedge, %bb.e, %print_str.exit152, %bb.z, %parse_integer_62.exit, %bb.cp, %3, %bb.co
  ret void

bb.co:                                            ; preds = %parse_integer_62.exit
  store i64 %.3.i, ptr %i.d, align 8, !tbaa !23
  tail call fastcc void @demangle_const(ptr noundef %0, i1 noundef zeroext %1)
  store i64 %i.od, ptr %i.d, align 8, !tbaa !23
  br label %common.ret418

next.exit.thread:                                 ; preds = %peek.exit.i, %bb.b, %next.exit
  store i8 1, ptr %i.a, align 8, !tbaa !24
  br label %common.ret418

bb.cp:                                            ; preds = %next.exit212
  br i1 %1, label %common.ret418, label %bb.cq

bb.cq:                                            ; preds = %print_str.exit185.thread, %print_str.exit206.thread, %print_str.exit198.thread, %print_str.exit218.thread, %print_str.exit185, %print_str.exit226.thread, %print_str.exit191, %bb.cp
  %i.oh = load i8, ptr %i.a, align 8, !tbaa !24, !range !32, !noundef !33
  %i.oi = trunc nuw i8 %i.oh to i1
  br i1 %i.oi, label %common.ret418, label %bb.cr

bb.cr:                                            ; preds = %bb.cq
  %i.oj = getelementptr inbounds nuw i8, ptr %0, i64 41
  %i.ok = load i8, ptr %i.oj, align 1, !tbaa !25, !range !32, !noundef !33
  %i.ol = trunc nuw i8 %i.ok to i1
  br i1 %i.ol, label %common.ret418, label %bb.cs

bb.cs:                                            ; preds = %bb.cr
  %i.om = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.on = load ptr, ptr %i.om, align 8, !tbaa !22
  %i.oo = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.op = load ptr, ptr %i.oo, align 8, !tbaa !21
  tail call void %i.on(ptr noundef nonnull @.str.27, i64 noundef 1, ptr noundef %i.op) #12, !inline_history !0
  br label %common.ret418
}

; Function Attrs: nounwind
define internal fastcc void @demangle_binder(ptr nofree noundef nonnull captures(none) %0) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 5 uses
  %i.b = load i8, ptr %i.a, align 8, !tbaa !24, !range !32, !noundef !33
  %i.c = trunc nuw i8 %i.b to i1
  br i1 %i.c, label %1, label %bb.b

1:                                                ; preds = %bb.a
  store i8 1, ptr %i.a, align 8, !tbaa !24
  br label %print_str.exit14

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 5 uses
  %i.e = load i64, ptr %i.d, align 8, !tbaa !23   ; 4 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.g = load i64, ptr %i.f, align 8, !tbaa !20   ; 4 uses
  %i.h = icmp ult i64 %i.e, %i.g
  br i1 %i.h, label %peek.exit.i.i, label %print_str.exit14

peek.exit.i.i:                                    ; preds = %bb.b
  %i.i = load ptr, ptr %0, align 8, !tbaa !28     ; 4 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 %i.e
  %i.k = load i8, ptr %i.j, align 1, !tbaa !30
  %i.l = icmp eq i8 %i.k, 71
  br i1 %i.l, label %bb.c, label %print_str.exit14

bb.c:                                             ; preds = %peek.exit.i.i
  %i.m = add nuw i64 %i.e, 1                      ; 4 uses
  store i64 %i.m, ptr %i.d, align 8, !tbaa !23
  %i.n = icmp ult i64 %i.m, %i.g
  br i1 %i.n, label %peek.exit.i.i.i, label %eat.exit.i.i.preheader

eat.exit.i.i.preheader:                           ; preds = %peek.exit.i.i.i, %bb.c
  br label %eat.exit.i.i

peek.exit.i.i.i:                                  ; preds = %bb.c
  %i.o = getelementptr inbounds nuw i8, ptr %i.i, i64 %i.m
  %i.p = load i8, ptr %i.o, align 1, !tbaa !30
  %i.q = icmp eq i8 %i.p, 95
  br i1 %i.q, label %eat.exit.thread.i.i, label %eat.exit.i.i.preheader

eat.exit.thread.i.i:                              ; preds = %peek.exit.i.i.i
  %i.r = add nuw i64 %i.e, 2
  store i64 %i.r, ptr %i.d, align 8, !tbaa !23
  br label %bb.h

eat.exit.i.i:                                     ; preds = %eat.exit.i.i.preheader, %bb.g
  %i.s = phi i64 [ %i.z, %bb.g ], [ %i.m, %eat.exit.i.i.preheader ] ; 6 uses
  %.027.i.i = phi i64 [ %.1.i.i, %bb.g ], [ 0, %eat.exit.i.i.preheader ] ; 2 uses
  %i.t = icmp ult i64 %i.s, %i.g
  br i1 %i.t, label %peek.exit.i33.i.i, label %bb.d

peek.exit.i33.i.i:                                ; preds = %eat.exit.i.i
  %i.u = getelementptr inbounds nuw i8, ptr %i.i, i64 %i.s
  %i.v = load i8, ptr %i.u, align 1, !tbaa !30
  %i.w = icmp eq i8 %i.v, 95
  br i1 %i.w, label %parse_opt_integer_62.exit, label %bb.d

bb.d:                                             ; preds = %peek.exit.i33.i.i, %eat.exit.i.i
  %exitcond.not.i.i = icmp eq i64 %i.s, %i.g
  br i1 %exitcond.not.i.i, label %parse_opt_integer_62.exit.thread19, label %peek.exit.i35.i.i

peek.exit.i35.i.i:                                ; preds = %bb.d
  %i.x = getelementptr inbounds nuw i8, ptr %i.i, i64 %i.s
  %i.y = load i8, ptr %i.x, align 1, !tbaa !30    ; 5 uses
  %.not.i.i.i = icmp eq i8 %i.y, 0
  br i1 %.not.i.i.i, label %parse_opt_integer_62.exit.thread19, label %next.exit.i.i

next.exit.i.i:                                    ; preds = %peek.exit.i35.i.i
  %i.z = add i64 %i.s, 1                          ; 2 uses
  store i64 %i.z, ptr %i.d, align 8, !tbaa !23
  %i.aa = mul i64 %.027.i.i, 62
  %i.ab = zext nneg i8 %i.y to i64
  %i.ac = add i8 %i.y, -48
  %or.cond.i.i = icmp ult i8 %i.ac, 10
  br i1 %or.cond.i.i, label %bb.g, label %bb.e

bb.e:                                             ; preds = %next.exit.i.i
  %i.ad = add i8 %i.y, -97
  %or.cond5.i.i = icmp ult i8 %i.ad, 26
  br i1 %or.cond5.i.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.ae = add i8 %i.y, -65
  %or.cond8.i.i = icmp ult i8 %i.ae, 26
  br i1 %or.cond8.i.i, label %bb.g, label %parse_opt_integer_62.exit.thread19

bb.g:                                             ; preds = %bb.f, %bb.e, %next.exit.i.i
  %.sink.i.i = phi i64 [ -48, %next.exit.i.i ], [ -87, %bb.e ], [ -29, %bb.f ]
  %.pn.i.i = add i64 %i.aa, %i.ab
  %.1.i.i = add i64 %.pn.i.i, %.sink.i.i
  br label %eat.exit.i.i, !llvm.loop !1

parse_opt_integer_62.exit:                        ; preds = %peek.exit.i33.i.i
  %i.af = add nuw i64 %i.s, 1
  store i64 %i.af, ptr %i.d, align 8, !tbaa !23
  %i.ag = add i64 %.027.i.i, 2                    ; 2 uses
  %.not = icmp eq i64 %i.ag, 0
  br i1 %.not, label %print_str.exit14, label %bb.h

parse_opt_integer_62.exit.thread19:               ; preds = %bb.d, %peek.exit.i35.i.i, %bb.f
  store i8 1, ptr %i.a, align 8, !tbaa !24
  br label %print_str.exit15.peel

bb.h:                                             ; preds = %parse_opt_integer_62.exit, %eat.exit.thread.i.i
  %.0.i22.ph = phi i64 [ 1, %eat.exit.thread.i.i ], [ %i.ag, %parse_opt_integer_62.exit ] ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 41
  %i.ai = load i8, ptr %i.ah, align 1, !tbaa !25, !range !32, !noundef !33
  %i.aj = trunc nuw i8 %i.ai to i1
  br i1 %i.aj, label %print_str.exit15.peel, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !22
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !21
  tail call void %i.al(ptr noundef nonnull @.str.88, i64 noundef 4, ptr noundef %i.an) #12, !inline_history !0
  br label %print_str.exit15.peel

print_str.exit15.peel:                            ; preds = %bb.i, %bb.h, %parse_opt_integer_62.exit.thread19
  %.0.i2238 = phi i64 [ 1, %parse_opt_integer_62.exit.thread19 ], [ %.0.i22.ph, %bb.h ], [ %.0.i22.ph, %bb.i ] ; 2 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 41 ; 2 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 4 uses
  %i.as = load i64, ptr %i.ar, align 8, !tbaa !27
  %i.at = add i64 %i.as, 1
  store i64 %i.at, ptr %i.ar, align 8, !tbaa !27
  tail call fastcc void @print_lifetime_from_index(ptr noundef %0, i64 noundef 1)
  %exitcond.peel.not = icmp eq i64 %.0.i2238, 1
  br i1 %exitcond.peel.not, label %.loopexit, label %.peel.next

.loopexit:                                        ; preds = %print_str.exit15, %print_str.exit15.peel
  %i.au = load i8, ptr %i.a, align 8, !tbaa !24, !range !32, !noundef !33
  %i.av = trunc nuw i8 %i.au to i1
  br i1 %i.av, label %print_str.exit14, label %bb.j

bb.j:                                             ; preds = %.loopexit
  %i.aw = load i8, ptr %i.ao, align 1, !tbaa !25, !range !32, !noundef !33
  %i.ax = trunc nuw i8 %i.aw to i1
  br i1 %i.ax, label %print_str.exit14, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ay = load ptr, ptr %i.ap, align 8, !tbaa !22
  %i.az = load ptr, ptr %i.aq, align 8, !tbaa !21
  tail call void %i.ay(ptr noundef nonnull @.str.89, i64 noundef 2, ptr noundef %i.az) #12, !inline_history !0
  br label %print_str.exit14

.peel.next:                                       ; preds = %print_str.exit15.peel, %print_str.exit15
  %.025 = phi i64 [ %i.bi, %print_str.exit15 ], [ 1, %print_str.exit15.peel ]
  %i.ba = load i8, ptr %i.a, align 8, !tbaa !24, !range !32, !noundef !33
  %i.bb = trunc nuw i8 %i.ba to i1
  br i1 %i.bb, label %print_str.exit15, label %bb.l

bb.l:                                             ; preds = %.peel.next
  %i.bc = load i8, ptr %i.ao, align 1, !tbaa !25, !range !32, !noundef !33
  %i.bd = trunc nuw i8 %i.bc to i1
  br i1 %i.bd, label %print_str.exit15, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.be = load ptr, ptr %i.ap, align 8, !tbaa !22
  %i.bf = load ptr, ptr %i.aq, align 8, !tbaa !21
  tail call void %i.be(ptr noundef nonnull @.str.36, i64 noundef 2, ptr noundef %i.bf) #12, !inline_history !0
  br label %print_str.exit15

print_str.exit15:                                 ; preds = %bb.m, %bb.l, %.peel.next
  %i.bg = load i64, ptr %i.ar, align 8, !tbaa !27
  %i.bh = add i64 %i.bg, 1
  store i64 %i.bh, ptr %i.ar, align 8, !tbaa !27
  tail call fastcc void @print_lifetime_from_index(ptr noundef %0, i64 noundef 1)
  %i.bi = add nuw i64 %.025, 1                    ; 2 uses
  %exitcond.not = icmp eq i64 %i.bi, %.0.i2238
  br i1 %exitcond.not, label %.loopexit, label %.peel.next, !llvm.loop !74

print_str.exit14:                                 ; preds = %peek.exit.i.i, %bb.b, %bb.k, %bb.j, %.loopexit, %parse_opt_integer_62.exit, %1
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #1

; Function Attrs: nounwind
define internal fastcc void @demangle_const_uint(ptr nofree noundef nonnull captures(none) %0, i8 noundef signext %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca [21 x i8], align 16               ; 5 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 7 uses
  %i.c = load i8, ptr %i.b, align 8, !tbaa !24, !range !32, !noundef !33
  %i.d = trunc nuw i8 %i.c to i1
  br i1 %i.d, label %2, label %bb.b

2:                                                ; preds = %bb.a
  store i8 1, ptr %i.b, align 8, !tbaa !24
  br label %print_str.exit24

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 3 uses
  %i.f = load i64, ptr %i.e, align 8, !tbaa !23   ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.h = load i64, ptr %i.g, align 8, !tbaa !20
  br label %bb.c

bb.c:                                             ; preds = %bb.e, %bb.b
  %.pre.i = phi i8 [ 0, %bb.b ], [ %.pre.i97, %bb.e ] ; 2 uses
  %i.i = phi i64 [ %i.f, %bb.b ], [ %i.o, %bb.e ] ; 5 uses
  %.017.i.i = phi i64 [ 0, %bb.b ], [ %i.r, %bb.e ] ; 4 uses
  %i.j = icmp ult i64 %i.i, %i.h
  br i1 %i.j, label %peek.exit.i.i.i, label %peek.exit.thread.i.i.i

peek.exit.i.i.i:                                  ; preds = %bb.c
  %i.k = load ptr, ptr %0, align 8, !tbaa !28     ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 %i.i
  %i.m = load i8, ptr %i.l, align 1, !tbaa !30    ; 2 uses
  switch i8 %i.m, label %bb.d [
    i8 95, label %parse_hex_nibbles.exit.i
    i8 0, label %peek.exit.thread.i.i.i
  ]

peek.exit.thread.i.i.i:                           ; preds = %peek.exit.i.i.i, %bb.c
  store i8 1, ptr %i.b, align 8, !tbaa !24
  br label %next.exit.i.i

bb.d:                                             ; preds = %peek.exit.i.i.i
  %i.n = add nuw i64 %i.i, 1                      ; 2 uses
  store i64 %i.n, ptr %i.e, align 8, !tbaa !23
  br label %next.exit.i.i

next.exit.i.i:                                    ; preds = %bb.d, %peek.exit.thread.i.i.i
  %.pre.i97 = phi i8 [ %.pre.i, %bb.d ], [ 1, %peek.exit.thread.i.i.i ]
  %i.o = phi i64 [ %i.n, %bb.d ], [ %i.i, %peek.exit.thread.i.i.i ]
  %.0.i.i.i = phi i8 [ %i.m, %bb.d ], [ 0, %peek.exit.thread.i.i.i ] ; 2 uses
  %i.p = add i8 %.0.i.i.i, -48
  %or.cond.i.i = icmp ult i8 %i.p, 10
  %i.q = add i8 %.0.i.i.i, -97
  %or.cond5.i.i = icmp ult i8 %i.q, 6
  %or.cond18.i.i = or i1 %or.cond.i.i, %or.cond5.i.i
  br i1 %or.cond18.i.i, label %bb.e, label %.loopexit

bb.e:                                             ; preds = %next.exit.i.i
  %i.r = add i64 %.017.i.i, 1
  br label %bb.c, !llvm.loop !5

parse_hex_nibbles.exit.i:                         ; preds = %peek.exit.i.i.i
  %i.s = add nuw i64 %i.i, 1
  store i64 %i.s, ptr %i.e, align 8, !tbaa !23
  %i.t = trunc nuw i8 %.pre.i to i1
  br i1 %i.t, label %.loopexit, label %.preheader.i

.preheader.i:                                     ; preds = %parse_hex_nibbles.exit.i
  %.not9.i = icmp eq i64 %.017.i.i, 0
  br i1 %.not9.i, label %._crit_edge, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %.preheader.i
  %i.u = getelementptr inbounds nuw i8, ptr %i.k, i64 %i.f
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.preheader, %bb.f
  %indvar = phi i64 [ 0, %.lr.ph.i.preheader ], [ %indvar.next, %bb.f ] ; 2 uses
  %.sroa.5.011.i = phi i64 [ %.017.i.i, %.lr.ph.i.preheader ], [ %i.y, %bb.f ] ; 6 uses
  %.sroa.0.010.i = phi ptr [ %i.u, %.lr.ph.i.preheader ], [ %i.x, %bb.f ] ; 6 uses
  %i.v = load i8, ptr %.sroa.0.010.i, align 1, !tbaa !30
  %i.w = icmp eq i8 %i.v, 48
  br i1 %i.w, label %bb.f, label %bb.g

bb.f:                                             ; preds = %.lr.ph.i
  %i.x = getelementptr inbounds nuw i8, ptr %.sroa.0.010.i, i64 1
  %i.y = add i64 %.sroa.5.011.i, -1               ; 2 uses
  %.not.i = icmp eq i64 %i.y, 0
  %indvar.next = add i64 %indvar, 1
  br i1 %.not.i, label %._crit_edge, label %.lr.ph.i, !llvm.loop !6

.loopexit:                                        ; preds = %next.exit.i.i, %parse_hex_nibbles.exit.i
  store i8 1, ptr %i.b, align 8, !tbaa !24
  br label %print_str.exit24

bb.g:                                             ; preds = %.lr.ph.i
  %i.z = icmp ugt i64 %.sroa.5.011.i, 16
  br i1 %i.z, label %bb.h, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.g
  %.neg = add i64 %indvar, 1
  %xtraiter = and i64 %.sroa.5.011.i, 1
  %i.aa = icmp eq i64 %.017.i.i, %.neg
  br i1 %i.aa, label %.lr.ph.epil.preheader, label %.lr.ph.preheader.new

.lr.ph.preheader.new:                             ; preds = %.lr.ph.preheader
  %unroll_iter = and i64 %.sroa.5.011.i, 30
  br label %.lr.ph

bb.h:                                             ; preds = %bb.g
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 41 ; 2 uses
  %i.ac = load i8, ptr %i.ab, align 1, !tbaa !25, !range !32, !noundef !33
  %i.ad = trunc nuw i8 %i.ac to i1
  br i1 %i.ad, label %print_str.exit.thread, label %print_str.exit

print_str.exit:                                   ; preds = %bb.h
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !22
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !21
  tail call void %i.af(ptr noundef nonnull @.str.79, i64 noundef 2, ptr noundef %i.ah) #12, !inline_history !0
  %.pre = load i8, ptr %i.b, align 8, !tbaa !24, !range !32
  %i.ai = trunc nuw i8 %.pre to i1
  br i1 %i.ai, label %print_str.exit21, label %print_str.exit.thread

print_str.exit.thread:                            ; preds = %bb.h, %print_str.exit
  %i.aj = load i8, ptr %i.ab, align 1, !tbaa !25, !range !32, !noundef !33
  %i.ak = trunc nuw i8 %i.aj to i1
  br i1 %i.ak, label %print_str.exit21, label %bb.i

bb.i:                                             ; preds = %print_str.exit.thread
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !22
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.ao = load ptr, ptr %i.an, align 8, !tbaa !21
  tail call void %i.am(ptr noundef nonnull %.sroa.0.010.i, i64 noundef %.sroa.5.011.i, ptr noundef %i.ao) #12, !inline_history !0
  br label %print_str.exit21

._crit_edge.loopexit.unr-lcssa:                   ; preds = %.lr.ph
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge, label %.lr.ph.epil.preheader

.lr.ph.epil.preheader:                            ; preds = %._crit_edge.loopexit.unr-lcssa, %.lr.ph.preheader
  %.091.epil.init = phi i64 [ 0, %.lr.ph.preheader ], [ %i.bw, %._crit_edge.loopexit.unr-lcssa ]
  %.01990.epil.init = phi i64 [ 0, %.lr.ph.preheader ], [ %i.bv, %._crit_edge.loopexit.unr-lcssa ]
  %lcmp.mod136 = trunc i64 %.sroa.5.011.i to i1
  tail call void @llvm.assume(i1 %lcmp.mod136)
  %i.ap = shl i64 %.01990.epil.init, 4
  %i.aq = getelementptr inbounds nuw i8, ptr %.sroa.0.010.i, i64 %.091.epil.init
  %i.ar = load i8, ptr %i.aq, align 1, !tbaa !30  ; 2 uses
  %i.as = icmp sgt i8 %i.ar, 96
  %.v.i.epil = select i1 %i.as, i8 -87, i8 -48
  %i.at = add i8 %.v.i.epil, %i.ar
  %i.au = zext i8 %i.at to i64
  %i.av = or i64 %i.ap, %i.au
  br label %._crit_edge

._crit_edge:                                      ; preds = %bb.f, %.lr.ph.epil.preheader, %._crit_edge.loopexit.unr-lcssa, %.preheader.i
  %.019.lcssa = phi i64 [ %i.av, %.lr.ph.epil.preheader ], [ 0, %.preheader.i ], [ %i.bv, %._crit_edge.loopexit.unr-lcssa ], [ 0, %bb.f ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #12
  %i.aw = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %i.a, ptr noundef nonnull dereferenceable(1) @.str.38, i64 noundef %.019.lcssa) #12 ; 0 uses
  %i.ax = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.a) #13
  %i.ay = load i8, ptr %i.b, align 8, !tbaa !24, !range !32, !noundef !33
  %i.az = trunc nuw i8 %i.ay to i1
  br i1 %i.az, label %print_uint64.exit, label %bb.j

bb.j:                                             ; preds = %._crit_edge
  %i.ba = getelementptr inbounds nuw i8, ptr %0, i64 41
  %i.bb = load i8, ptr %i.ba, align 1, !tbaa !25, !range !32, !noundef !33
  %i.bc = trunc nuw i8 %i.bb to i1
  br i1 %i.bc, label %print_uint64.exit, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.bd = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.be = load ptr, ptr %i.bd, align 8, !tbaa !22
  %i.bf = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.bg = load ptr, ptr %i.bf, align 8, !tbaa !21
  call void %i.be(ptr noundef nonnull %i.a, i64 noundef %i.ax, ptr noundef %i.bg) #12, !inline_history !4
  br label %print_uint64.exit

print_uint64.exit:                                ; preds = %._crit_edge, %bb.j, %bb.k
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #12
  br label %print_str.exit21

.lr.ph:                                           ; preds = %.lr.ph, %.lr.ph.preheader.new
  %.091 = phi i64 [ 0, %.lr.ph.preheader.new ], [ %i.bw, %.lr.ph ] ; 3 uses
  %.01990 = phi i64 [ 0, %.lr.ph.preheader.new ], [ %i.bv, %.lr.ph ]
  %niter = phi i64 [ 0, %.lr.ph.preheader.new ], [ %niter.next.1, %.lr.ph ]
  %i.bh = getelementptr inbounds nuw i8, ptr %.sroa.0.010.i, i64 %.091
  %i.bi = load i8, ptr %i.bh, align 1, !tbaa !30  ; 2 uses
  %i.bj = icmp sgt i8 %i.bi, 96
  %.v.i = select i1 %i.bj, i8 -87, i8 -48
  %i.bk = add i8 %.v.i, %i.bi
  %i.bl = zext i8 %i.bk to i64
  %i.bm = shl i64 %.01990, 8
  %i.bn = shl nuw nsw i64 %i.bl, 4
  %i.bo = or i64 %i.bm, %i.bn
  %i.bp = getelementptr inbounds nuw i8, ptr %.sroa.0.010.i, i64 %.091
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bp, i64 1
  %i.br = load i8, ptr %i.bq, align 1, !tbaa !30  ; 2 uses
  %i.bs = icmp sgt i8 %i.br, 96
  %.v.i.1 = select i1 %i.bs, i8 -87, i8 -48
  %i.bt = add i8 %.v.i.1, %i.br
  %i.bu = zext i8 %i.bt to i64
  %i.bv = or i64 %i.bo, %i.bu                     ; 3 uses
  %i.bw = add nuw nsw i64 %.091, 2                ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge.loopexit.unr-lcssa, label %.lr.ph, !llvm.loop !75

print_str.exit21:                                 ; preds = %bb.i, %print_str.exit.thread, %print_str.exit, %print_uint64.exit
  %i.bx = getelementptr inbounds nuw i8, ptr %0, i64 42
  %i.by = load i8, ptr %i.bx, align 2, !tbaa !26, !range !32, !noundef !33
  %i.bz = trunc nuw i8 %i.by to i1
  br i1 %i.bz, label %switch.lookup, label %print_str.exit24

switch.lookup:                                    ; preds = %print_str.exit21
  %i.ca = sext i8 %1 to i64
  %i.cb = getelementptr [8 x i8], ptr @switch.table.demangle_const_uint, i64 %i.ca
  %switch.gep = getelementptr i8, ptr %i.cb, i64 -776
  %switch.load = load ptr, ptr %switch.gep, align 8 ; 2 uses
  %i.cc = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %switch.load) #13
  %i.cd = load i8, ptr %i.b, align 8, !tbaa !24, !range !32, !noundef !33
  %i.ce = trunc nuw i8 %i.cd to i1
  br i1 %i.ce, label %print_str.exit24, label %bb.l

bb.l:                                             ; preds = %switch.lookup
  %i.cf = getelementptr inbounds nuw i8, ptr %0, i64 41
  %i.cg = load i8, ptr %i.cf, align 1, !tbaa !25, !range !32, !noundef !33
  %i.ch = trunc nuw i8 %i.cg to i1
  br i1 %i.ch, label %print_str.exit24, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.ci = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.cj = load ptr, ptr %i.ci, align 8, !tbaa !22
  %i.ck = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.cl = load ptr, ptr %i.ck, align 8, !tbaa !21
  call void %i.cj(ptr noundef nonnull %switch.load, i64 noundef %i.cc, ptr noundef %i.cl) #12, !inline_history !0
  br label %print_str.exit24

print_str.exit24:                                 ; preds = %bb.m, %bb.l, %switch.lookup, %.loopexit, %print_str.exit21, %2
  ret void
}

; Function Attrs: nounwind
define internal fastcc void @print_quoted_escaped_char(ptr nofree noundef nonnull captures(none) %0, i8 noundef signext range(i8 34, 40) %1, i32 noundef %2) unnamed_addr #0 {
bb.a:
  %i.a = alloca i8, align 1                       ; 4 uses
  %i.b = alloca [9 x i8], align 1                 ; 6 uses
  %i.c = icmp ult i32 %2, 55296
  %i.d = add i32 %2, -57344
  %or.cond = icmp ult i32 %i.d, 1056767
  %or.cond26 = or i1 %i.c, %or.cond
  br i1 %or.cond26, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i8 1, ptr %i.e, align 8, !tbaa !24
  br label %print_str.exit

bb.c:                                             ; preds = %bb.a
  switch i32 %2, label %bb.ag [
    i32 0, label %bb.d
    i32 9, label %bb.g
    i32 13, label %bb.j
    i32 10, label %bb.m
    i32 92, label %bb.p
    i32 34, label %bb.s
    i32 39, label %bb.z
  ]

bb.d:                                             ; preds = %bb.c
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.g = load i8, ptr %i.f, align 8, !tbaa !24, !range !32, !noundef !33
  %i.h = trunc nuw i8 %i.g to i1
  br i1 %i.h, label %print_str.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 41
  %i.j = load i8, ptr %i.i, align 1, !tbaa !25, !range !32, !noundef !33
  %i.k = trunc nuw i8 %i.j to i1
  br i1 %i.k, label %print_str.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !22
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !21
  tail call void %i.m(ptr noundef nonnull @.str.80, i64 noundef 2, ptr noundef %i.o) #12, !inline_history !0
  br label %print_str.exit

bb.g:                                             ; preds = %bb.c
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.q = load i8, ptr %i.p, align 8, !tbaa !24, !range !32, !noundef !33
  %i.r = trunc nuw i8 %i.q to i1
  br i1 %i.r, label %print_str.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 41
  %i.t = load i8, ptr %i.s, align 1, !tbaa !25, !range !32, !noundef !33
  %i.u = trunc nuw i8 %i.t to i1
  br i1 %i.u, label %print_str.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !22
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !21
  tail call void %i.w(ptr noundef nonnull @.str.81, i64 noundef 2, ptr noundef %i.y) #12, !inline_history !0
  br label %print_str.exit

bb.j:                                             ; preds = %bb.c
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.aa = load i8, ptr %i.z, align 8, !tbaa !24, !range !32, !noundef !33
  %i.ab = trunc nuw i8 %i.aa to i1
  br i1 %i.ab, label %print_str.exit, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 41
  %i.ad = load i8, ptr %i.ac, align 1, !tbaa !25, !range !32, !noundef !33
  %i.ae = trunc nuw i8 %i.ad to i1
  br i1 %i.ae, label %print_str.exit, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !22
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !21
  tail call void %i.ag(ptr noundef nonnull @.str.82, i64 noundef 2, ptr noundef %i.ai) #12, !inline_history !0
  br label %print_str.exit

bb.m:                                             ; preds = %bb.c
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.ak = load i8, ptr %i.aj, align 8, !tbaa !24, !range !32, !noundef !33
  %i.al = trunc nuw i8 %i.ak to i1
  br i1 %i.al, label %print_str.exit, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 41
  %i.an = load i8, ptr %i.am, align 1, !tbaa !25, !range !32, !noundef !33
  %i.ao = trunc nuw i8 %i.an to i1
  br i1 %i.ao, label %print_str.exit, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.aq = load ptr, ptr %i.ap, align 8, !tbaa !22
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.as = load ptr, ptr %i.ar, align 8, !tbaa !21
  tail call void %i.aq(ptr noundef nonnull @.str.83, i64 noundef 2, ptr noundef %i.as) #12, !inline_history !0
  br label %print_str.exit

bb.p:                                             ; preds = %bb.c
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.au = load i8, ptr %i.at, align 8, !tbaa !24, !range !32, !noundef !33
  %i.av = trunc nuw i8 %i.au to i1
  br i1 %i.av, label %print_str.exit, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 41
  %i.ax = load i8, ptr %i.aw, align 1, !tbaa !25, !range !32, !noundef !33
  %i.ay = trunc nuw i8 %i.ax to i1
  br i1 %i.ay, label %print_str.exit, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.ba = load ptr, ptr %i.az, align 8, !tbaa !22
  %i.bb = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.bc = load ptr, ptr %i.bb, align 8, !tbaa !21
  tail call void %i.ba(ptr noundef nonnull @.str.84, i64 noundef 2, ptr noundef %i.bc) #12, !inline_history !0
  br label %print_str.exit

bb.s:                                             ; preds = %bb.c
  %i.bd = icmp eq i8 %1, 34
  %i.be = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.bf = load i8, ptr %i.be, align 8, !tbaa !24, !range !32, !noundef !33
  %i.bg = trunc nuw i8 %i.bf to i1                ; 2 uses
  br i1 %i.bd, label %bb.t, label %bb.w

bb.t:                                             ; preds = %bb.s
  br i1 %i.bg, label %print_str.exit, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.bh = getelementptr inbounds nuw i8, ptr %0, i64 41
  %i.bi = load i8, ptr %i.bh, align 1, !tbaa !25, !range !32, !noundef !33
  %i.bj = trunc nuw i8 %i.bi to i1
  br i1 %i.bj, label %print_str.exit, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.bk = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.bl = load ptr, ptr %i.bk, align 8, !tbaa !22
  %i.bm = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.bn = load ptr, ptr %i.bm, align 8, !tbaa !21
  tail call void %i.bl(ptr noundef nonnull @.str.85, i64 noundef 2, ptr noundef %i.bn) #12, !inline_history !0
  br label %print_str.exit

bb.w:                                             ; preds = %bb.s
  br i1 %i.bg, label %print_str.exit, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.bo = getelementptr inbounds nuw i8, ptr %0, i64 41
  %i.bp = load i8, ptr %i.bo, align 1, !tbaa !25, !range !32, !noundef !33
  %i.bq = trunc nuw i8 %i.bp to i1
  br i1 %i.bq, label %print_str.exit, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.br = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.bs = load ptr, ptr %i.br, align 8, !tbaa !22
  %i.bt = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.bu = load ptr, ptr %i.bt, align 8, !tbaa !21
  tail call void %i.bs(ptr noundef nonnull @.str.86, i64 noundef 1, ptr noundef %i.bu) #12, !inline_history !0
  br label %print_str.exit

bb.z:                                             ; preds = %bb.c
  %i.bv = icmp eq i8 %1, 39
  %i.bw = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.bx = load i8, ptr %i.bw, align 8, !tbaa !24, !range !32, !noundef !33
  %i.by = trunc nuw i8 %i.bx to i1                ; 2 uses
  br i1 %i.bv, label %bb.aa, label %bb.ad

bb.aa:                                            ; preds = %bb.z
  br i1 %i.by, label %print_str.exit, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.bz = getelementptr inbounds nuw i8, ptr %0, i64 41
  %i.ca = load i8, ptr %i.bz, align 1, !tbaa !25, !range !32, !noundef !33
  %i.cb = trunc nuw i8 %i.ca to i1
  br i1 %i.cb, label %print_str.exit, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.cc = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.cd = load ptr, ptr %i.cc, align 8, !tbaa !22
  %i.ce = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.cf = load ptr, ptr %i.ce, align 8, !tbaa !21
  tail call void %i.cd(ptr noundef nonnull @.str.87, i64 noundef 2, ptr noundef %i.cf) #12, !inline_history !0
  br label %print_str.exit

bb.ad:                                            ; preds = %bb.z
  br i1 %i.by, label %print_str.exit, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.cg = getelementptr inbounds nuw i8, ptr %0, i64 41
  %i.ch = load i8, ptr %i.cg, align 1, !tbaa !25, !range !32, !noundef !33
  %i.ci = trunc nuw i8 %i.ch to i1
  br i1 %i.ci, label %print_str.exit, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.cj = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.ck = load ptr, ptr %i.cj, align 8, !tbaa !22
  %i.cl = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.cm = load ptr, ptr %i.cl, align 8, !tbaa !21
  tail call void %i.ck(ptr noundef nonnull @.str.72, i64 noundef 1, ptr noundef %i.cm) #12, !inline_history !0
  br label %print_str.exit

bb.ag:                                            ; preds = %bb.c
  %i.cn = add nsw i32 %2, -32
  %or.cond3 = icmp ult i32 %i.cn, 95
  br i1 %or.cond3, label %bb.ah, label %bb.ak

bb.ah:                                            ; preds = %bb.ag
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #12
  %i.co = trunc nuw nsw i32 %2 to i8
  store i8 %i.co, ptr %i.a, align 1, !tbaa !30
  %i.cp = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.cq = load i8, ptr %i.cp, align 8, !tbaa !24, !range !32, !noundef !33
  %i.cr = trunc nuw i8 %i.cq to i1
  br i1 %i.cr, label %print_str.exit35, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  %i.cs = getelementptr inbounds nuw i8, ptr %0, i64 41
  %i.ct = load i8, ptr %i.cs, align 1, !tbaa !25, !range !32, !noundef !33
  %i.cu = trunc nuw i8 %i.ct to i1
  br i1 %i.cu, label %print_str.exit35, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  %i.cv = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.cw = load ptr, ptr %i.cv, align 8, !tbaa !22
  %i.cx = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.cy = load ptr, ptr %i.cx, align 8, !tbaa !21
  call void %i.cw(ptr noundef nonnull %i.a, i64 noundef 1, ptr noundef %i.cy) #12, !inline_history !0
  br label %print_str.exit35

print_str.exit35:                                 ; preds = %bb.ah, %bb.ai, %bb.aj
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #12
  br label %print_str.exit

bb.ak:                                            ; preds = %bb.ag
  %i.cz = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 3 uses
  %i.da = load i8, ptr %i.cz, align 8, !tbaa !24, !range !32, !noundef !33
  %i.db = trunc nuw i8 %i.da to i1
  br i1 %i.db, label %print_str.exit36, label %bb.al

bb.al:                                            ; preds = %bb.ak
  %i.dc = getelementptr inbounds nuw i8, ptr %0, i64 41
  %i.dd = load i8, ptr %i.dc, align 1, !tbaa !25, !range !32, !noundef !33
  %i.de = trunc nuw i8 %i.dd to i1
  br i1 %i.de, label %print_str.exit36, label %bb.am

bb.am:                                            ; preds = %bb.al
  %i.df = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.dg = load ptr, ptr %i.df, align 8, !tbaa !22
  %i.dh = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.di = load ptr, ptr %i.dh, align 8, !tbaa !21
  tail call void %i.dg(ptr noundef nonnull @.str.25, i64 noundef 3, ptr noundef %i.di) #12, !inline_history !0
  br label %print_str.exit36

print_str.exit36:                                 ; preds = %bb.ak, %bb.al, %bb.am
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #12
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(9) %i.b, i8 0, i64 9, i1 false)
  %i.dj = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %i.b, ptr noundef nonnull dereferenceable(1) @.str.26, i32 noundef %2) #12 ; 0 uses
  %i.dk = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.b) #13
  %i.dl = load i8, ptr %i.cz, align 8, !tbaa !24, !range !32, !noundef !33
  %i.dm = trunc nuw i8 %i.dl to i1
  br i1 %i.dm, label %print_str.exit38, label %bb.an

bb.an:                                            ; preds = %print_str.exit36
  %i.dn = getelementptr inbounds nuw i8, ptr %0, i64 41
  %i.do = load i8, ptr %i.dn, align 1, !tbaa !25, !range !32, !noundef !33
  %i.dp = trunc nuw i8 %i.do to i1
  br i1 %i.dp, label %print_str.exit37.thread39, label %print_str.exit37

print_str.exit37:                                 ; preds = %bb.an
  %i.dq = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.dr = load ptr, ptr %i.dq, align 8, !tbaa !22
  %i.ds = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.dt = load ptr, ptr %i.ds, align 8, !tbaa !21
  call void %i.dr(ptr noundef nonnull %i.b, i64 noundef %i.dk, ptr noundef %i.dt) #12, !inline_history !0
  %.pre = load i8, ptr %i.cz, align 8, !tbaa !24, !range !32
  %i.du = trunc nuw i8 %.pre to i1
  br i1 %i.du, label %print_str.exit38, label %print_str.exit37.thread39

print_str.exit37.thread39:                        ; preds = %bb.an, %print_str.exit37
  %i.dv = getelementptr inbounds nuw i8, ptr %0, i64 41
  %i.dw = load i8, ptr %i.dv, align 1, !tbaa !25, !range !32, !noundef !33
  %i.dx = trunc nuw i8 %i.dw to i1
  br i1 %i.dx, label %print_str.exit38, label %bb.ao

bb.ao:                                            ; preds = %print_str.exit37.thread39
  %i.dy = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.dz = load ptr, ptr %i.dy, align 8, !tbaa !22
  %i.ea = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.eb = load ptr, ptr %i.ea, align 8, !tbaa !21
  call void %i.dz(ptr noundef nonnull @.str.27, i64 noundef 1, ptr noundef %i.eb) #12, !inline_history !0
  br label %print_str.exit38

print_str.exit38:                                 ; preds = %print_str.exit36, %print_str.exit37, %print_str.exit37.thread39, %bb.ao
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #12
  br label %print_str.exit

print_str.exit:                                   ; preds = %bb.af, %bb.ae, %bb.ad, %bb.ac, %bb.ab, %bb.aa, %bb.y, %bb.x, %bb.w, %bb.v, %bb.u, %bb.t, %bb.r, %bb.q, %bb.p, %bb.o, %bb.n, %bb.m, %bb.l, %bb.k, %bb.j, %bb.i, %bb.h, %bb.g, %bb.f, %bb.e, %bb.d, %print_str.exit35, %print_str.exit38, %bb.b
  ret void
}

; Function Attrs: nounwind
define internal fastcc void @demangle_const_str_literal(ptr nofree noundef nonnull captures(none) %0) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 6 uses
  %i.b = load i8, ptr %i.a, align 8, !tbaa !24, !range !32, !noundef !33
  %i.c = trunc nuw i8 %i.b to i1
  br i1 %i.c, label %1, label %bb.b

1:                                                ; preds = %bb.a
  store i8 1, ptr %i.a, align 8, !tbaa !24
  br label %print_str.exit54

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 3 uses
  %i.e = load i64, ptr %i.d, align 8, !tbaa !23   ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.g = load i64, ptr %i.f, align 8, !tbaa !20
  br label %bb.c

bb.c:                                             ; preds = %bb.e, %bb.b
  %.pre.i = phi i8 [ 0, %bb.b ], [ %.pre.i97, %bb.e ] ; 2 uses
  %i.h = phi i64 [ %i.e, %bb.b ], [ %i.n, %bb.e ] ; 5 uses
  %.017.i.i = phi i64 [ 0, %bb.b ], [ %i.q, %bb.e ] ; 4 uses
  %i.i = icmp ult i64 %i.h, %i.g
  br i1 %i.i, label %peek.exit.i.i.i, label %peek.exit.thread.i.i.i

peek.exit.i.i.i:                                  ; preds = %bb.c
  %i.j = load ptr, ptr %0, align 8, !tbaa !28     ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 %i.h
  %i.l = load i8, ptr %i.k, align 1, !tbaa !30    ; 2 uses
  switch i8 %i.l, label %bb.d [
    i8 95, label %parse_hex_nibbles.exit.i
    i8 0, label %peek.exit.thread.i.i.i
  ]

peek.exit.thread.i.i.i:                           ; preds = %peek.exit.i.i.i, %bb.c
  store i8 1, ptr %i.a, align 8, !tbaa !24
  br label %next.exit.i.i

bb.d:                                             ; preds = %peek.exit.i.i.i
  %i.m = add nuw i64 %i.h, 1                      ; 2 uses
  store i64 %i.m, ptr %i.d, align 8, !tbaa !23
  br label %next.exit.i.i

next.exit.i.i:                                    ; preds = %bb.d, %peek.exit.thread.i.i.i
  %.pre.i97 = phi i8 [ %.pre.i, %bb.d ], [ 1, %peek.exit.thread.i.i.i ]
  %i.n = phi i64 [ %i.m, %bb.d ], [ %i.h, %peek.exit.thread.i.i.i ]
  %.0.i.i.i = phi i8 [ %i.l, %bb.d ], [ 0, %peek.exit.thread.i.i.i ] ; 2 uses
  %i.o = add i8 %.0.i.i.i, -48
  %or.cond.i.i = icmp ult i8 %i.o, 10
  %i.p = add i8 %.0.i.i.i, -97
  %or.cond5.i.i = icmp ult i8 %i.p, 6
  %or.cond18.i.i = or i1 %or.cond.i.i, %or.cond5.i.i
  br i1 %or.cond18.i.i, label %bb.e, label %.loopexit

bb.e:                                             ; preds = %next.exit.i.i
  %i.q = add i64 %.017.i.i, 1
  br label %bb.c, !llvm.loop !5

parse_hex_nibbles.exit.i:                         ; preds = %peek.exit.i.i.i
  %i.r = add nuw i64 %i.h, 1
  store i64 %i.r, ptr %i.d, align 8, !tbaa !23
  %i.s = getelementptr inbounds nuw i8, ptr %i.j, i64 %i.e ; 7 uses
  %i.t = trunc nuw i8 %.pre.i to i1
  %i.u = trunc i64 %.017.i.i to i1
  %or.cond.not.i = select i1 %i.t, i1 true, i1 %i.u
  br i1 %or.cond.not.i, label %.loopexit, label %parse_hex_nibbles_for_const_bytes.exit

.loopexit:                                        ; preds = %next.exit.i.i, %parse_hex_nibbles.exit.i
  store i8 1, ptr %i.a, align 8, !tbaa !24
  br label %print_str.exit54

parse_hex_nibbles_for_const_bytes.exit:           ; preds = %parse_hex_nibbles.exit.i
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 41 ; 2 uses
  %i.w = load i8, ptr %i.v, align 1, !tbaa !25, !range !32, !noundef !33
  %i.x = trunc nuw i8 %i.w to i1
  br i1 %i.x, label %print_str.exit, label %bb.f

bb.f:                                             ; preds = %parse_hex_nibbles_for_const_bytes.exit
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !22
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !21
  tail call void %i.z(ptr noundef nonnull @.str.86, i64 noundef 1, ptr noundef %i.ab) #12, !inline_history !0
  br label %print_str.exit

print_str.exit:                                   ; preds = %parse_hex_nibbles_for_const_bytes.exit, %bb.f
  %.not3887.not = icmp eq i64 %.017.i.i, 0
  br i1 %.not3887.not, label %.critedge40, label %.lr.ph89

.lr.ph89:                                         ; preds = %print_str.exit, %.thread69
  %.03188 = phi i64 [ %i.cx, %.thread69 ], [ 0, %print_str.exit ] ; 7 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %i.s, i64 %.03188 ; 2 uses
  %i.ad = load i8, ptr %i.ac, align 1, !tbaa !30  ; 2 uses
  %i.ae = icmp sgt i8 %i.ad, 96
  %.v.i = select i1 %i.ae, i8 9, i8 96
  %i.af = add i8 %.v.i, %i.ad
  %i.ag = shl i8 %i.af, 4
  %i.ah = getelementptr i8, ptr %i.ac, i64 1
  %i.ai = load i8, ptr %i.ah, align 1, !tbaa !30  ; 2 uses
  %i.aj = icmp sgt i8 %i.ai, 96
  %.v.i41 = select i1 %i.aj, i8 -87, i8 -48
  %i.ak = add i8 %.v.i41, %i.ai                   ; 4 uses
  %i.al = or i8 %i.ag, %i.ak                      ; 6 uses
  %i.am = icmp sgt i8 %i.al, -1
  br i1 %i.am, label %utf8_decode.exit, label %thread-pre-split.i

thread-pre-split.i:                               ; preds = %.lr.ph89
  %i.an = and i8 %i.al, 64
  %i.ao = icmp eq i8 %i.an, 0
  br i1 %i.ao, label %.critedge, label %thread-pre-split.1.i

thread-pre-split.1.i:                             ; preds = %thread-pre-split.i
  %i.ap = and i8 %i.al, 31
  %i.aq = and i8 %i.al, 32
  %i.ar = icmp eq i8 %i.aq, 0                     ; 2 uses
  br i1 %i.ar, label %.lr.ph.preheader, label %thread-pre-split.2.i

thread-pre-split.2.i:                             ; preds = %thread-pre-split.1.i
  %i.as = and i8 %i.ak, 15
  %i.at = and i8 %i.al, 16
  %i.au = icmp eq i8 %i.at, 0
  br i1 %i.au, label %.lr.ph.preheader, label %thread-pre-split.3.i

thread-pre-split.3.i:                             ; preds = %thread-pre-split.2.i
  %i.av = and i8 %i.ak, 7
  %i.aw = and i8 %i.ak, 8
  %i.ax = icmp eq i8 %i.aw, 0
  br i1 %i.ax, label %.lr.ph.preheader, label %.critedge

utf8_decode.exit:                                 ; preds = %.lr.ph89
  %i.ay = zext nneg i8 %i.al to i32
  br label %.thread69

.lr.ph.preheader:                                 ; preds = %thread-pre-split.3.i, %thread-pre-split.2.i, %thread-pre-split.1.i
  %.not37.1 = phi i1 [ true, %thread-pre-split.2.i ], [ false, %thread-pre-split.1.i ], [ false, %thread-pre-split.3.i ]
  %.sroa.056.0.ph = phi i64 [ 4, %thread-pre-split.2.i ], [ 2, %thread-pre-split.1.i ], [ 6, %thread-pre-split.3.i ]
  %.lcssa9.i.ph = phi i8 [ %i.as, %thread-pre-split.2.i ], [ %i.ap, %thread-pre-split.1.i ], [ %i.av, %thread-pre-split.3.i ]
  %i.az = zext nneg i8 %.lcssa9.i.ph to i32
  %i.ba = add i64 %.03188, %.sroa.056.0.ph        ; 3 uses
  %i.bb = add i64 %.03188, 2                      ; 2 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %i.s, i64 %i.bb
  %i.bd = load i8, ptr %i.bc, align 1, !tbaa !30  ; 2 uses
  %i.be = icmp sgt i8 %i.bd, 96
  %.v.i42 = select i1 %i.be, i8 9, i8 96
  %i.bf = add i8 %.v.i42, %i.bd
  %i.bg = shl i8 %i.bf, 4
  %i.bh = getelementptr i8, ptr %i.s, i64 %.03188
  %i.bi = getelementptr i8, ptr %i.bh, i64 3
  %i.bj = load i8, ptr %i.bi, align 1, !tbaa !30  ; 2 uses
  %i.bk = icmp sgt i8 %i.bj, 96
  %.v.i43 = select i1 %i.bk, i8 -87, i8 -48
  %i.bl = add i8 %.v.i43, %i.bj
  %i.bm = or i8 %i.bg, %i.bl                      ; 2 uses
  %or.cond = icmp slt i8 %i.bm, -64
  br i1 %or.cond, label %bb.g, label %.critedge

bb.g:                                             ; preds = %.lr.ph.preheader
  %i.bn = and i8 %i.bm, 63
  %i.bo = shl nuw nsw i32 %i.az, 6
  %i.bp = zext nneg i8 %i.bn to i32
  %i.bq = or disjoint i32 %i.bo, %i.bp            ; 2 uses
  br i1 %i.ar, label %.thread69, label %.lr.ph.1

.lr.ph.1:                                         ; preds = %bb.g
  %i.br = add i64 %.03188, 4                      ; 2 uses
  %i.bs = getelementptr inbounds nuw i8, ptr %i.s, i64 %i.br
  %i.bt = load i8, ptr %i.bs, align 1, !tbaa !30  ; 2 uses
  %i.bu = icmp sgt i8 %i.bt, 96
  %.v.i42.1 = select i1 %i.bu, i8 9, i8 96
  %i.bv = add i8 %.v.i42.1, %i.bt
  %i.bw = shl i8 %i.bv, 4
  %i.bx = getelementptr i8, ptr %i.s, i64 %i.bb
  %i.by = getelementptr i8, ptr %i.bx, i64 3
  %i.bz = load i8, ptr %i.by, align 1, !tbaa !30  ; 2 uses
  %i.ca = icmp sgt i8 %i.bz, 96
  %.v.i43.1 = select i1 %i.ca, i8 -87, i8 -48
  %i.cb = add i8 %.v.i43.1, %i.bz
  %i.cc = or i8 %i.bw, %i.cb                      ; 2 uses
  %or.cond.1 = icmp slt i8 %i.cc, -64
  br i1 %or.cond.1, label %bb.h, label %.critedge

bb.h:                                             ; preds = %.lr.ph.1
  %i.cd = and i8 %i.cc, 63
  %i.ce = shl nuw nsw i32 %i.bq, 6
  %i.cf = zext nneg i8 %i.cd to i32
  %i.cg = or disjoint i32 %i.ce, %i.cf            ; 2 uses
  br i1 %.not37.1, label %.thread69, label %.lr.ph.2

.lr.ph.2:                                         ; preds = %bb.h
  %i.ch = getelementptr i8, ptr %i.s, i64 %.03188
  %i.ci = getelementptr i8, ptr %i.ch, i64 6
  %i.cj = load i8, ptr %i.ci, align 1, !tbaa !30  ; 2 uses
  %i.ck = icmp sgt i8 %i.cj, 96
  %.v.i42.2 = select i1 %i.ck, i8 9, i8 96
  %i.cl = add i8 %.v.i42.2, %i.cj
  %i.cm = shl i8 %i.cl, 4
  %i.cn = getelementptr i8, ptr %i.s, i64 %i.br
  %i.co = getelementptr i8, ptr %i.cn, i64 3
  %i.cp = load i8, ptr %i.co, align 1, !tbaa !30  ; 2 uses
  %i.cq = icmp sgt i8 %i.cp, 96
  %.v.i43.2 = select i1 %i.cq, i8 -87, i8 -48
  %i.cr = add i8 %.v.i43.2, %i.cp
  %i.cs = or i8 %i.cm, %i.cr                      ; 2 uses
  %or.cond.2 = icmp slt i8 %i.cs, -64
  br i1 %or.cond.2, label %bb.i, label %.critedge

bb.i:                                             ; preds = %.lr.ph.2
  %i.ct = and i8 %i.cs, 63
  %i.cu = shl nuw nsw i32 %i.cg, 6
  %i.cv = zext nneg i8 %i.ct to i32
  %i.cw = or disjoint i32 %i.cu, %i.cv
  br label %.thread69

.thread69:                                        ; preds = %bb.g, %bb.h, %bb.i, %utf8_decode.exit
  %.3 = phi i64 [ %.03188, %utf8_decode.exit ], [ %i.ba, %bb.i ], [ %i.ba, %bb.h ], [ %i.ba, %bb.g ]
  %.1 = phi i32 [ %i.ay, %utf8_decode.exit ], [ %i.bq, %bb.g ], [ %i.cg, %bb.h ], [ %i.cw, %bb.i ]
  tail call fastcc void @print_quoted_escaped_char(ptr noundef %0, i8 noundef signext 34, i32 noundef %.1)
  %i.cx = add i64 %.3, 2                          ; 2 uses
  %.not38 = icmp ult i64 %i.cx, %.017.i.i
  br i1 %.not38, label %.lr.ph89, label %.critedge40, !llvm.loop !76

.critedge:                                        ; preds = %thread-pre-split.i, %thread-pre-split.3.i, %.lr.ph.preheader, %.lr.ph.1, %.lr.ph.2
  store i8 1, ptr %i.a, align 8, !tbaa !24
  br label %print_str.exit54

.critedge40:                                      ; preds = %.thread69, %print_str.exit
  %i.cy = load i8, ptr %i.a, align 8, !tbaa !24, !range !32, !noundef !33
  %i.cz = trunc nuw i8 %i.cy to i1
  br i1 %i.cz, label %print_str.exit54, label %bb.j

bb.j:                                             ; preds = %.critedge40
  %i.da = load i8, ptr %i.v, align 1, !tbaa !25, !range !32, !noundef !33
  %i.db = trunc nuw i8 %i.da to i1
  br i1 %i.db, label %print_str.exit54, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.dc = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.dd = load ptr, ptr %i.dc, align 8, !tbaa !22
  %i.de = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.df = load ptr, ptr %i.de, align 8, !tbaa !21
  tail call void %i.dd(ptr noundef nonnull @.str.86, i64 noundef 1, ptr noundef %i.df) #12, !inline_history !0
  br label %print_str.exit54

print_str.exit54:                                 ; preds = %bb.k, %bb.j, %.critedge40, %.critedge, %.loopexit, %1
  ret void
}

; Function Attrs: nounwind
define internal fastcc zeroext i1 @demangle_path_maybe_open_generics(ptr noundef nonnull %0) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 7 uses
  %i.b = load i8, ptr %i.a, align 8, !tbaa !24, !range !32, !noundef !33
  %i.c = trunc nuw i8 %i.b to i1
  br i1 %i.c, label %1, label %bb.b

1:                                                ; preds = %bb.a
  store i8 1, ptr %i.a, align 8, !tbaa !24
  br label %common.ret112

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 16 uses
  %i.e = load i64, ptr %i.d, align 8, !tbaa !23   ; 6 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.g = load i64, ptr %i.f, align 8, !tbaa !20   ; 5 uses
  %i.h = icmp ult i64 %i.e, %i.g
  br i1 %i.h, label %peek.exit.i, label %bb.x

peek.exit.i:                                      ; preds = %bb.b
  %i.i = load ptr, ptr %0, align 8, !tbaa !28     ; 4 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 %i.e
  %i.k = load i8, ptr %i.j, align 1, !tbaa !30
  %i.l = icmp eq i8 %i.k, 66
  br i1 %i.l, label %bb.c, label %peek.exit.i25

bb.c:                                             ; preds = %peek.exit.i
  %i.m = add nuw i64 %i.e, 1                      ; 4 uses
  store i64 %i.m, ptr %i.d, align 8, !tbaa !23
  %i.n = icmp ult i64 %i.m, %i.g
  br i1 %i.n, label %peek.exit.i.i, label %eat.exit.i.preheader

eat.exit.i.preheader:                             ; preds = %peek.exit.i.i, %bb.c
  br label %eat.exit.i

peek.exit.i.i:                                    ; preds = %bb.c
  %i.o = getelementptr inbounds nuw i8, ptr %i.i, i64 %i.m
  %i.p = load i8, ptr %i.o, align 1, !tbaa !30
  %i.q = icmp eq i8 %i.p, 95
  br i1 %i.q, label %eat.exit.thread.i, label %eat.exit.i.preheader

eat.exit.thread.i:                                ; preds = %peek.exit.i.i
  %i.r = add nuw i64 %i.e, 2                      ; 2 uses
  store i64 %i.r, ptr %i.d, align 8, !tbaa !23
  br label %parse_integer_62.exit

eat.exit.i:                                       ; preds = %eat.exit.i.preheader, %bb.g
  %i.s = phi i64 [ %i.z, %bb.g ], [ %i.m, %eat.exit.i.preheader ] ; 7 uses
  %.027.i = phi i64 [ %.1.i, %bb.g ], [ 0, %eat.exit.i.preheader ] ; 2 uses
  %i.t = icmp ult i64 %i.s, %i.g
  br i1 %i.t, label %peek.exit.i33.i, label %bb.d

peek.exit.i33.i:                                  ; preds = %eat.exit.i
  %i.u = getelementptr inbounds nuw i8, ptr %i.i, i64 %i.s
  %i.v = load i8, ptr %i.u, align 1, !tbaa !30
  %i.w = icmp eq i8 %i.v, 95
  br i1 %i.w, label %bb.h, label %bb.d

bb.d:                                             ; preds = %peek.exit.i33.i, %eat.exit.i
  %exitcond.not.i = icmp eq i64 %i.s, %i.g
  br i1 %exitcond.not.i, label %.critedge.i, label %peek.exit.i35.i

peek.exit.i35.i:                                  ; preds = %bb.d
  %i.x = getelementptr inbounds nuw i8, ptr %i.i, i64 %i.s
  %i.y = load i8, ptr %i.x, align 1, !tbaa !30    ; 5 uses
  %.not.i.i = icmp eq i8 %i.y, 0
  br i1 %.not.i.i, label %.critedge.i, label %next.exit.i

next.exit.i:                                      ; preds = %peek.exit.i35.i
  %i.z = add i64 %i.s, 1                          ; 3 uses
  store i64 %i.z, ptr %i.d, align 8, !tbaa !23
  %i.aa = mul i64 %.027.i, 62
  %i.ab = zext nneg i8 %i.y to i64
  %i.ac = add i8 %i.y, -48
  %or.cond.i = icmp ult i8 %i.ac, 10
  br i1 %or.cond.i, label %bb.g, label %bb.e

bb.e:                                             ; preds = %next.exit.i
  %i.ad = add i8 %i.y, -97
  %or.cond5.i = icmp ult i8 %i.ad, 26
  br i1 %or.cond5.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.ae = add i8 %i.y, -65
  %or.cond8.i = icmp ult i8 %i.ae, 26
  br i1 %or.cond8.i, label %bb.g, label %.critedge.i

.critedge.i:                                      ; preds = %bb.f, %peek.exit.i35.i, %bb.d
  %i.af = phi i64 [ %i.z, %bb.f ], [ %i.s, %peek.exit.i35.i ], [ %i.g, %bb.d ]
  store i8 1, ptr %i.a, align 8, !tbaa !24
  br label %parse_integer_62.exit

bb.g:                                             ; preds = %bb.f, %bb.e, %next.exit.i
  %.sink.i = phi i64 [ -48, %next.exit.i ], [ -87, %bb.e ], [ -29, %bb.f ]
  %.pn.i = add i64 %i.aa, %i.ab
  %.1.i = add i64 %.pn.i, %.sink.i
  br label %eat.exit.i, !llvm.loop !1

bb.h:                                             ; preds = %peek.exit.i33.i
  %i.ag = add nuw i64 %i.s, 1                     ; 2 uses
  store i64 %i.ag, ptr %i.d, align 8, !tbaa !23
  %i.ah = add i64 %.027.i, 1
  br label %parse_integer_62.exit

parse_integer_62.exit:                            ; preds = %eat.exit.thread.i, %.critedge.i, %bb.h
  %i.ai = phi i64 [ %i.r, %eat.exit.thread.i ], [ %i.af, %.critedge.i ], [ %i.ag, %bb.h ]
  %.3.i = phi i64 [ 0, %eat.exit.thread.i ], [ 0, %.critedge.i ], [ %i.ah, %bb.h ]
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 41
  %i.ak = load i8, ptr %i.aj, align 1, !tbaa !25, !range !32, !noundef !33
  %i.al = trunc nuw i8 %i.ak to i1
  br i1 %i.al, label %common.ret112, label %bb.i

common.ret112:                                    ; preds = %eat.exit28, %bb.x, %parse_integer_62.exit, %1, %print_str.exit, %bb.j, %demangle_generic_arg.exit, %bb.i
  %common.ret112.op = phi i1 [ %i.am, %bb.i ], [ true, %bb.j ], [ false, %1 ], [ false, %bb.x ], [ true, %eat.exit28 ], [ false, %parse_integer_62.exit ], [ true, %print_str.exit ], [ true, %demangle_generic_arg.exit ]
  ret i1 %common.ret112.op

bb.i:                                             ; preds = %parse_integer_62.exit
  store i64 %.3.i, ptr %i.d, align 8, !tbaa !23
  %i.am = tail call fastcc zeroext i1 @demangle_path_maybe_open_generics(ptr noundef %0)
  store i64 %i.ai, ptr %i.d, align 8, !tbaa !23
  br label %common.ret112

peek.exit.i25:                                    ; preds = %peek.exit.i
  %i.an = load ptr, ptr %0, align 8, !tbaa !28
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 %i.e
  %i.ap = load i8, ptr %i.ao, align 1, !tbaa !30
  %i.aq = icmp eq i8 %i.ap, 73
  br i1 %i.aq, label %bb.j, label %bb.x

bb.j:                                             ; preds = %peek.exit.i25
  %i.ar = add nuw i64 %i.e, 1
  store i64 %i.ar, ptr %i.d, align 8, !tbaa !23
  tail call fastcc void @demangle_path(ptr noundef %0, i1 noundef zeroext false)
  %i.as = load i8, ptr %i.a, align 8, !tbaa !24, !range !32, !noundef !33
  %i.at = trunc nuw i8 %i.as to i1
  br i1 %i.at, label %common.ret112, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 41
  %i.av = load i8, ptr %i.au, align 1, !tbaa !25, !range !32, !noundef !33
  %i.aw = trunc nuw i8 %i.av to i1
  br i1 %i.aw, label %.lr.ph, label %print_str.exit

print_str.exit:                                   ; preds = %bb.k
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.ay = load ptr, ptr %i.ax, align 8, !tbaa !22
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.ba = load ptr, ptr %i.az, align 8, !tbaa !21
  tail call void %i.ay(ptr noundef nonnull @.str.16, i64 noundef 1, ptr noundef %i.ba) #12, !inline_history !0
  %.pre = load i8, ptr %i.a, align 8, !tbaa !24, !range !32
  %i.bb = trunc nuw i8 %.pre to i1
  br i1 %i.bb, label %common.ret112, label %.lr.ph

.lr.ph:                                           ; preds = %bb.k, %print_str.exit
  %i.bc = getelementptr inbounds nuw i8, ptr %0, i64 41
  %i.bd = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.be = getelementptr inbounds nuw i8, ptr %0, i64 16
  br label %bb.l

bb.l:                                             ; preds = %.lr.ph, %demangle_generic_arg.exit
  %.059 = phi i64 [ 0, %.lr.ph ], [ %i.cy, %demangle_generic_arg.exit ] ; 2 uses
  %i.bf = load i64, ptr %i.d, align 8, !tbaa !23  ; 5 uses
  %i.bg = load i64, ptr %i.f, align 8, !tbaa !20  ; 3 uses
  %i.bh = icmp ult i64 %i.bf, %i.bg
  br i1 %i.bh, label %peek.exit.i27, label %bb.m

peek.exit.i27:                                    ; preds = %bb.l
  %i.bi = load ptr, ptr %0, align 8, !tbaa !28
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bi, i64 %i.bf
  %i.bk = load i8, ptr %i.bj, align 1, !tbaa !30
  %i.bl = icmp eq i8 %i.bk, 69
  br i1 %i.bl, label %eat.exit28, label %bb.m

eat.exit28:                                       ; preds = %peek.exit.i27
  %i.bm = add nuw i64 %i.bf, 1
  store i64 %i.bm, ptr %i.d, align 8, !tbaa !23
  br label %common.ret112

bb.m:                                             ; preds = %peek.exit.i27, %bb.l
  %.not = icmp eq i64 %.059, 0
  br i1 %.not, label %print_str.exit29, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.bn = load i8, ptr %i.bc, align 1, !tbaa !25, !range !32, !noundef !33
  %i.bo = trunc nuw i8 %i.bn to i1
  br i1 %i.bo, label %print_str.exit29, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.bp = load ptr, ptr %i.bd, align 8, !tbaa !22
  %i.bq = load ptr, ptr %i.be, align 8, !tbaa !21
  tail call void %i.bp(ptr noundef nonnull @.str.36, i64 noundef 2, ptr noundef %i.bq) #12, !inline_history !0
  %.pre67 = load i64, ptr %i.d, align 8, !tbaa !23
  %.pre68 = load i64, ptr %i.f, align 8, !tbaa !20
  br label %print_str.exit29

print_str.exit29:                                 ; preds = %bb.o, %bb.n, %bb.m
  %i.br = phi i64 [ %.pre68, %bb.o ], [ %i.bg, %bb.n ], [ %i.bg, %bb.m ] ; 4 uses
  %i.bs = phi i64 [ %.pre67, %bb.o ], [ %i.bf, %bb.n ], [ %i.bf, %bb.m ] ; 6 uses
  %i.bt = icmp ult i64 %i.bs, %i.br
  br i1 %i.bt, label %peek.exit.i51, label %bb.w

peek.exit.i51:                                    ; preds = %print_str.exit29
  %i.bu = load ptr, ptr %0, align 8, !tbaa !28    ; 4 uses
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bu, i64 %i.bs
  %i.bw = load i8, ptr %i.bv, align 1, !tbaa !30
  %i.bx = icmp eq i8 %i.bw, 76
  br i1 %i.bx, label %bb.p, label %peek.exit.i30

bb.p:                                             ; preds = %peek.exit.i51
  %i.by = add nuw i64 %i.bs, 1                    ; 4 uses
  store i64 %i.by, ptr %i.d, align 8, !tbaa !23
  %i.bz = icmp ult i64 %i.by, %i.br
  br i1 %i.bz, label %peek.exit.i.i48, label %eat.exit.i32.preheader

eat.exit.i32.preheader:                           ; preds = %peek.exit.i.i48, %bb.p
  br label %eat.exit.i32

peek.exit.i.i48:                                  ; preds = %bb.p
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bu, i64 %i.by
  %i.cb = load i8, ptr %i.ca, align 1, !tbaa !30
  %i.cc = icmp eq i8 %i.cb, 95
  br i1 %i.cc, label %eat.exit.thread.i49, label %eat.exit.i32.preheader

eat.exit.thread.i49:                              ; preds = %peek.exit.i.i48
  %i.cd = add nuw i64 %i.bs, 2
  store i64 %i.cd, ptr %i.d, align 8, !tbaa !23
  br label %parse_integer_62.exit50

eat.exit.i32:                                     ; preds = %eat.exit.i32.preheader, %bb.t
  %i.ce = phi i64 [ %i.cl, %bb.t ], [ %i.by, %eat.exit.i32.preheader ] ; 6 uses
  %.027.i34 = phi i64 [ %.1.i46, %bb.t ], [ 0, %eat.exit.i32.preheader ] ; 2 uses
  %i.cf = icmp ult i64 %i.ce, %i.br
  br i1 %i.cf, label %peek.exit.i33.i47, label %bb.q

peek.exit.i33.i47:                                ; preds = %eat.exit.i32
  %i.cg = getelementptr inbounds nuw i8, ptr %i.bu, i64 %i.ce
  %i.ch = load i8, ptr %i.cg, align 1, !tbaa !30
  %i.ci = icmp eq i8 %i.ch, 95
  br i1 %i.ci, label %bb.u, label %bb.q

bb.q:                                             ; preds = %peek.exit.i33.i47, %eat.exit.i32
  %exitcond.not.i35 = icmp eq i64 %i.ce, %i.br
  br i1 %exitcond.not.i35, label %.critedge.i42, label %peek.exit.i35.i36

peek.exit.i35.i36:                                ; preds = %bb.q
  %i.cj = getelementptr inbounds nuw i8, ptr %i.bu, i64 %i.ce
  %i.ck = load i8, ptr %i.cj, align 1, !tbaa !30  ; 5 uses
  %.not.i.i37 = icmp eq i8 %i.ck, 0
  br i1 %.not.i.i37, label %.critedge.i42, label %next.exit.i38

next.exit.i38:                                    ; preds = %peek.exit.i35.i36
  %i.cl = add i64 %i.ce, 1                        ; 2 uses
  store i64 %i.cl, ptr %i.d, align 8, !tbaa !23
  %i.cm = mul i64 %.027.i34, 62
  %i.cn = zext nneg i8 %i.ck to i64
  %i.co = add i8 %i.ck, -48
  %or.cond.i39 = icmp ult i8 %i.co, 10
  br i1 %or.cond.i39, label %bb.t, label %bb.r

bb.r:                                             ; preds = %next.exit.i38
  %i.cp = add i8 %i.ck, -97
  %or.cond5.i40 = icmp ult i8 %i.cp, 26
  br i1 %or.cond5.i40, label %bb.t, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.cq = add i8 %i.ck, -65
  %or.cond8.i41 = icmp ult i8 %i.cq, 26
  br i1 %or.cond8.i41, label %bb.t, label %.critedge.i42

.critedge.i42:                                    ; preds = %bb.s, %peek.exit.i35.i36, %bb.q
  store i8 1, ptr %i.a, align 8, !tbaa !24
  br label %parse_integer_62.exit50

bb.t:                                             ; preds = %bb.s, %bb.r, %next.exit.i38
  %.sink.i44 = phi i64 [ -48, %next.exit.i38 ], [ -87, %bb.r ], [ -29, %bb.s ]
  %.pn.i45 = add i64 %i.cm, %i.cn
  %.1.i46 = add i64 %.pn.i45, %.sink.i44
  br label %eat.exit.i32, !llvm.loop !1

bb.u:                                             ; preds = %peek.exit.i33.i47
  %i.cr = add nuw i64 %i.ce, 1
  store i64 %i.cr, ptr %i.d, align 8, !tbaa !23
  %i.cs = add i64 %.027.i34, 1
  br label %parse_integer_62.exit50

parse_integer_62.exit50:                          ; preds = %eat.exit.thread.i49, %.critedge.i42, %bb.u
  %.3.i43 = phi i64 [ 0, %eat.exit.thread.i49 ], [ 0, %.critedge.i42 ], [ %i.cs, %bb.u ]
  tail call fastcc void @print_lifetime_from_index(ptr noundef nonnull %0, i64 noundef %.3.i43), !inline_history !2
  br label %demangle_generic_arg.exit

peek.exit.i30:                                    ; preds = %peek.exit.i51
  %i.ct = load ptr, ptr %0, align 8, !tbaa !28
  %i.cu = getelementptr inbounds nuw i8, ptr %i.ct, i64 %i.bs
  %i.cv = load i8, ptr %i.cu, align 1, !tbaa !30
  %i.cw = icmp eq i8 %i.cv, 75
  br i1 %i.cw, label %bb.v, label %bb.w

bb.v:                                             ; preds = %peek.exit.i30
  %i.cx = add nuw i64 %i.bs, 1
  store i64 %i.cx, ptr %i.d, align 8, !tbaa !23
  tail call fastcc void @demangle_const(ptr noundef nonnull %0, i1 noundef zeroext false), !inline_history !2
  br label %demangle_generic_arg.exit

bb.w:                                             ; preds = %print_str.exit29, %peek.exit.i30
  tail call fastcc void @demangle_type(ptr noundef nonnull %0), !inline_history !2
  br label %demangle_generic_arg.exit

demangle_generic_arg.exit:                        ; preds = %parse_integer_62.exit50, %bb.v, %bb.w
  %i.cy = add i64 %.059, 1
  %i.cz = load i8, ptr %i.a, align 8, !tbaa !24, !range !32, !noundef !33
  %i.da = trunc nuw i8 %i.cz to i1
  br i1 %i.da, label %common.ret112, label %bb.l, !llvm.loop !77

bb.x:                                             ; preds = %bb.b, %peek.exit.i25
end_hunk_4

Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/abc/original/giaRrr?download=true
inline.NumInlined: 27716
inline.NumDeleted: 6990
loop-unroll.NumCompletelyUnrolled: 15
loop-unroll.NumRuntimeUnrolled: 40
loop-unroll.NumUnrolled: 76
begin_hunk_0_@_ZN3rrr6NewBdd3Man6ResizeEv:bb.a
  %i.bj = getelementptr inbounds nuw i8, ptr %0, i64 160 ; 2 uses
  %i.bk = load ptr, ptr %i.bj, align 8, !tbaa !223 ; 2 uses
  %i.bl = load ptr, ptr %i.bh, align 8, !tbaa !224 ; 2 uses
  %i.bm = ptrtoint ptr %i.bk to i64
  %i.bn = ptrtoint ptr %i.bl to i64
  %i.bo = sub i64 %i.bm, %i.bn
  %i.bp = ashr exact i64 %i.bo, 2                 ; 3 uses
  %i.bq = icmp ult i64 %i.bp, %i.bi
  br i1 %i.bq, label %bb.p, label %bb.q

bb.p:                                             ; preds = %_ZNSt6vectorIjSaIjEE6resizeEm.exit
  %i.br = sub nuw nsw i64 %i.bi, %i.bp
  tail call void @_ZNSt6vectorIiSaIiEE17_M_default_appendEm(ptr noundef nonnull align 8 dereferenceable(24) %i.bh, i64 noundef %i.br)
  %.pre14 = load i32, ptr %i.a, align 8, !tbaa !933 ; 2 uses
  %.pre15 = sext i32 %.pre14 to i64
  br label %_ZNSt6vectorIiSaIiEE6resizeEm.exit

bb.q:                                             ; preds = %_ZNSt6vectorIjSaIjEE6resizeEm.exit
  %i.bs = icmp ugt i64 %i.bp, %i.bi
  br i1 %i.bs, label %bb.r, label %_ZNSt6vectorIiSaIiEE6resizeEm.exit

bb.r:                                             ; preds = %bb.q
  %i.bt = getelementptr inbounds nuw [4 x i8], ptr %i.bl, i64 %i.bi ; 2 uses
  %.not.i.i6 = icmp eq ptr %i.bk, %i.bt
  br i1 %.not.i.i6, label %_ZNSt6vectorIiSaIiEE6resizeEm.exit, label %bb.s

bb.s:                                             ; preds = %bb.r
  store ptr %i.bt, ptr %i.bj, align 8, !tbaa !223
  br label %_ZNSt6vectorIiSaIiEE6resizeEm.exit

_ZNSt6vectorIiSaIiEE6resizeEm.exit:               ; preds = %bb.p, %bb.q, %bb.r, %bb.s
  %.pre-phi = phi i64 [ %.pre15, %bb.p ], [ %i.bi, %bb.q ], [ %i.bi, %bb.r ], [ %i.bi, %bb.s ] ; 3 uses
  %i.bu = phi i32 [ %.pre14, %bb.p ], [ %i.bg, %bb.q ], [ %i.bg, %bb.r ], [ %i.bg, %bb.s ] ; 2 uses
  %i.bv = getelementptr inbounds nuw i8, ptr %0, i64 176 ; 2 uses
  %i.bw = getelementptr inbounds nuw i8, ptr %0, i64 192 ; 2 uses
  %i.bx = load ptr, ptr %i.bw, align 8, !tbaa !333 ; 2 uses
  %i.by = getelementptr inbounds nuw i8, ptr %0, i64 200 ; 2 uses
  %i.bz = load i32, ptr %i.by, align 8, !tbaa !486 ; 2 uses
  %i.ca = load ptr, ptr %i.bv, align 8, !tbaa !333 ; 2 uses
  %i.cb = ptrtoint ptr %i.bx to i64
  %i.cc = ptrtoint ptr %i.ca to i64
  %i.cd = sub i64 %i.cb, %i.cc
  %i.ce = shl nsw i64 %i.cd, 3
  %i.cf = zext i32 %i.bz to i64
  %i.cg = add nsw i64 %i.ce, %i.cf                ; 2 uses
  %i.ch = icmp ugt i64 %i.cg, %.pre-phi
  br i1 %i.ch, label %bb.t, label %bb.u

bb.t:                                             ; preds = %_ZNSt6vectorIiSaIiEE6resizeEm.exit
  %i.ci = sdiv i32 %i.bu, 64
  %.sext = sext i32 %i.ci to i64
  %i.cj = getelementptr inbounds [8 x i8], ptr %i.ca, i64 %.sext
  %i.ck = and i64 %.pre-phi, -9223372036854775745
  %i.cl = icmp ugt i64 %i.ck, -9223372036854775808
  %storemerge.idx.i.i.i.i = select i1 %i.cl, i64 -8, i64 0
  %storemerge.i.i.i.i = getelementptr inbounds i8, ptr %i.cj, i64 %storemerge.idx.i.i.i.i
  %i.cm = and i32 %i.bu, 63
  store ptr %storemerge.i.i.i.i, ptr %i.bw, align 8
  store i32 %i.cm, ptr %i.by, align 8
  br label %_ZNSt6vectorIbSaIbEE6resizeEmb.exit

bb.u:                                             ; preds = %_ZNSt6vectorIiSaIiEE6resizeEm.exit
  %i.cn = sub nuw i64 %.pre-phi, %i.cg
  tail call void @_ZNSt6vectorIbSaIbEE14_M_fill_insertESt13_Bit_iteratormb(ptr noundef nonnull align 8 dereferenceable(40) %i.bv, ptr %i.bx, i32 %i.bz, i64 noundef %i.cn, i1 noundef zeroext false)
  br label %_ZNSt6vectorIbSaIbEE6resizeEmb.exit

_ZNSt6vectorIbSaIbEE6resizeEmb.exit:              ; preds = %bb.t, %bb.u
  %i.co = getelementptr inbounds nuw i8, ptr %0, i64 216 ; 2 uses
  %i.cp = load ptr, ptr %i.co, align 8, !tbaa !926 ; 3 uses
  %i.cq = getelementptr inbounds nuw i8, ptr %0, i64 224 ; 2 uses
  %i.cr = load ptr, ptr %i.cq, align 8, !tbaa !926 ; 3 uses
  %i.cs = icmp eq ptr %i.cp, %i.cr
  br i1 %i.cs, label %_ZNSt6vectorItSaItEE6resizeEm.exit8, label %bb.v

bb.v:                                             ; preds = %_ZNSt6vectorIbSaIbEE6resizeEmb.exit
  %i.ct = load i32, ptr %i.a, align 8, !tbaa !933
  %i.cu = sext i32 %i.ct to i64                   ; 4 uses
  %i.cv = ptrtoint ptr %i.cr to i64
  %i.cw = ptrtoint ptr %i.cp to i64
  %i.cx = sub i64 %i.cv, %i.cw
  %i.cy = ashr exact i64 %i.cx, 1                 ; 3 uses
  %i.cz = icmp ult i64 %i.cy, %i.cu
  br i1 %i.cz, label %bb.w, label %bb.x

bb.w:                                             ; preds = %bb.v
  %i.da = sub nuw nsw i64 %i.cu, %i.cy
  tail call void @_ZNSt6vectorItSaItEE17_M_default_appendEm(ptr noundef nonnull align 8 dereferenceable(24) %i.co, i64 noundef %i.da)
  br label %_ZNSt6vectorItSaItEE6resizeEm.exit8

bb.x:                                             ; preds = %bb.v
  %i.db = icmp ugt i64 %i.cy, %i.cu
  br i1 %i.db, label %bb.y, label %_ZNSt6vectorItSaItEE6resizeEm.exit8

bb.y:                                             ; preds = %bb.x
  %i.dc = getelementptr inbounds nuw [2 x i8], ptr %i.cp, i64 %i.cu ; 2 uses
  %.not.i.i7 = icmp eq ptr %i.cr, %i.dc
  br i1 %.not.i.i7, label %_ZNSt6vectorItSaItEE6resizeEm.exit8, label %bb.z

bb.z:                                             ; preds = %bb.y
  store ptr %i.dc, ptr %i.cq, align 8, !tbaa !936
  br label %_ZNSt6vectorItSaItEE6resizeEm.exit8

_ZNSt6vectorItSaItEE6resizeEm.exit8:              ; preds = %bb.z, %bb.y, %bb.x, %bb.w, %_ZNSt6vectorIbSaIbEE6resizeEmb.exit
  %i.dd = getelementptr inbounds nuw i8, ptr %0, i64 240 ; 2 uses
  %i.de = load ptr, ptr %i.dd, align 8, !tbaa !219 ; 3 uses
  %i.df = getelementptr inbounds nuw i8, ptr %0, i64 248 ; 2 uses
  %i.dg = load ptr, ptr %i.df, align 8, !tbaa !219 ; 3 uses
  %i.dh = icmp eq ptr %i.de, %i.dg
  br i1 %i.dh, label %_ZNSt6vectorIjSaIjEE6resizeEm.exit10, label %bb.aa

bb.aa:                                            ; preds = %_ZNSt6vectorItSaItEE6resizeEm.exit8
  %i.di = load i32, ptr %i.a, align 8, !tbaa !933
  %i.dj = sext i32 %i.di to i64                   ; 4 uses
  %i.dk = ptrtoint ptr %i.dg to i64
  %i.dl = ptrtoint ptr %i.de to i64
  %i.dm = sub i64 %i.dk, %i.dl
  %i.dn = ashr exact i64 %i.dm, 2                 ; 3 uses
  %i.do = icmp ult i64 %i.dn, %i.dj
  br i1 %i.do, label %bb.ab, label %bb.ac

bb.ab:                                            ; preds = %bb.aa
  %i.dp = sub nuw nsw i64 %i.dj, %i.dn
  tail call void @_ZNSt6vectorIjSaIjEE17_M_default_appendEm(ptr noundef nonnull align 8 dereferenceable(24) %i.dd, i64 noundef %i.dp)
  br label %_ZNSt6vectorIjSaIjEE6resizeEm.exit10

bb.ac:                                            ; preds = %bb.aa
  %i.dq = icmp ugt i64 %i.dn, %i.dj
  br i1 %i.dq, label %bb.ad, label %_ZNSt6vectorIjSaIjEE6resizeEm.exit10

bb.ad:                                            ; preds = %bb.ac
  %i.dr = getelementptr inbounds nuw [4 x i8], ptr %i.de, i64 %i.dj ; 2 uses
  %.not.i.i9 = icmp eq ptr %i.dg, %i.dr
  br i1 %.not.i.i9, label %_ZNSt6vectorIjSaIjEE6resizeEm.exit10, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  store ptr %i.dr, ptr %i.df, align 8, !tbaa !296
  br label %_ZNSt6vectorIjSaIjEE6resizeEm.exit10

_ZNSt6vectorIjSaIjEE6resizeEm.exit10:             ; preds = %bb.ae, %bb.ad, %bb.ac, %bb.ab, %_ZNSt6vectorItSaItEE6resizeEm.exit8
  %i.ds = getelementptr inbounds nuw i8, ptr %0, i64 264 ; 2 uses
  %i.dt = load ptr, ptr %i.ds, align 8, !tbaa !535 ; 3 uses
  %i.du = getelementptr inbounds nuw i8, ptr %0, i64 272 ; 2 uses
  %i.dv = load ptr, ptr %i.du, align 8, !tbaa !535 ; 3 uses
  %i.dw = icmp eq ptr %i.dt, %i.dv
  br i1 %i.dw, label %_ZNSt6vectorIdSaIdEE6resizeEm.exit, label %bb.af

bb.af:                                            ; preds = %_ZNSt6vectorIjSaIjEE6resizeEm.exit10
  %i.dx = load i32, ptr %i.a, align 8, !tbaa !933
  %i.dy = sext i32 %i.dx to i64                   ; 4 uses
  %i.dz = ptrtoint ptr %i.dv to i64
  %i.ea = ptrtoint ptr %i.dt to i64
  %i.eb = sub i64 %i.dz, %i.ea
  %i.ec = ashr exact i64 %i.eb, 3                 ; 3 uses
  %i.ed = icmp ult i64 %i.ec, %i.dy
  br i1 %i.ed, label %bb.ag, label %bb.ah

bb.ag:                                            ; preds = %bb.af
  %i.ee = sub nuw nsw i64 %i.dy, %i.ec
  tail call void @_ZNSt6vectorIdSaIdEE17_M_default_appendEm(ptr noundef nonnull align 8 dereferenceable(24) %i.ds, i64 noundef %i.ee)
  br label %_ZNSt6vectorIdSaIdEE6resizeEm.exit

bb.ah:                                            ; preds = %bb.af
  %i.ef = icmp ugt i64 %i.ec, %i.dy
  br i1 %i.ef, label %bb.ai, label %_ZNSt6vectorIdSaIdEE6resizeEm.exit

bb.ai:                                            ; preds = %bb.ah
  %i.eg = getelementptr inbounds nuw [8 x i8], ptr %i.dt, i64 %i.dy ; 2 uses
  %.not.i.i11 = icmp eq ptr %i.dv, %i.eg
  br i1 %.not.i.i11, label %_ZNSt6vectorIdSaIdEE6resizeEm.exit, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  store ptr %i.eg, ptr %i.du, align 8, !tbaa !900
  br label %_ZNSt6vectorIdSaIdEE6resizeEm.exit

_ZNSt6vectorIdSaIdEE6resizeEm.exit:               ; preds = %bb.aj, %bb.ai, %bb.ah, %bb.ag, %_ZNSt6vectorIjSaIjEE6resizeEm.exit10, %bb.a
  ret i1 %i.e
}

; Function Attrs: cold inlinehint mustprogress noreturn nounwind uwtable
define internal fastcc void @_ZN3rrr6NewBddL11fatal_errorEPKc(ptr noundef %0) unnamed_addr #14 {
bb.a:
  %i.a = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cerr, ptr noundef %0)
  %i.b = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_(ptr noundef nonnull align 8 dereferenceable(8) %i.a) #26, !inline_history !1886 ; 0 uses
  tail call void @abort() #27
  unreachable
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZN3rrr6NewBdd3Man12ResizeUniqueEt(ptr noundef nonnull align 8 dereferenceable(392) %0, i16 noundef zeroext %1) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 360 ; 3 uses
  %i.b = zext i16 %1 to i64                       ; 8 uses
  %i.c = load ptr, ptr %i.a, align 8, !tbaa !228  ; 2 uses
  %i.d = getelementptr inbounds nuw [24 x i8], ptr %i.c, i64 %i.b ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !223  ; 2 uses
  %i.g = load ptr, ptr %i.d, align 8, !tbaa !224  ; 2 uses
  %i.h = ptrtoint ptr %i.f to i64
  %i.i = ptrtoint ptr %i.g to i64
  %i.j = sub i64 %i.h, %i.i
  %i.k = ashr exact i64 %i.j, 2                   ; 3 uses
  %i.l = trunc i64 %i.k to i32                    ; 2 uses
  %i.m = shl i32 %i.l, 1                          ; 4 uses
  %.not = icmp eq i32 %i.m, 0
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 336
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !224
  %i.p = getelementptr inbounds nuw [4 x i8], ptr %i.o, i64 %i.b
  store i32 2147483647, ptr %i.p, align 4, !tbaa !220
  br label %bb.q

bb.c:                                             ; preds = %bb.a
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 52
  %i.r = load i32, ptr %i.q, align 4, !tbaa !932
  %i.s = icmp sgt i32 %i.r, 1
  br i1 %i.s, label %bb.d, label %._crit_edge62

._crit_edge62:                                    ; preds = %bb.c
  %.pre63 = zext i32 %i.m to i64
  br label %bb.h

bb.d:                                             ; preds = %bb.c
  %i.t = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, ptr noundef nonnull @.str.87, i64 noundef 13) #26 ; 0 uses
  %i.u = zext i32 %i.m to i64                     ; 2 uses
  %i.v = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertImEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, i64 noundef %i.u) #26 ; 2 uses
  %i.w = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.v, ptr noundef nonnull @.str.88, i64 noundef 30) #26 ; 0 uses
  %i.x = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertImEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %i.v, i64 noundef %i.b) #26 ; 3 uses
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !340
  %i.z = getelementptr i8, ptr %i.y, i64 -24
  %i.aa = load i64, ptr %i.z, align 8
  %i.ab = getelementptr inbounds i8, ptr %i.x, i64 %i.aa
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 240
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !355 ; 6 uses
  %.not.i.i.i = icmp eq ptr %i.ad, null
  br i1 %.not.i.i.i, label %bb.e, label %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i

bb.e:                                             ; preds = %bb.d
  tail call void @_ZSt16__throw_bad_castv() #27
  unreachable

_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i: ; preds = %bb.d
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 56
  %i.af = load i8, ptr %i.ae, align 8, !tbaa !360
  %.not.i1.i.i = icmp eq i8 %i.af, 0
  br i1 %.not.i1.i.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i
  %i.ag = getelementptr inbounds nuw i8, ptr %i.ad, i64 67
  %i.ah = load i8, ptr %i.ag, align 1, !tbaa !206
  br label %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit

bb.g:                                             ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i
  tail call void @_ZNKSt5ctypeIcE13_M_widen_initEv(ptr noundef nonnull align 8 dereferenceable(570) %i.ad) #26
  %i.ai = load ptr, ptr %i.ad, align 8, !tbaa !340
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 48
  %i.ak = load ptr, ptr %i.aj, align 8
  %i.al = tail call noundef signext i8 %i.ak(ptr noundef nonnull align 8 dereferenceable(570) %i.ad, i8 noundef signext 10) #26, !inline_history !23
  br label %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit

_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit: ; preds = %bb.f, %bb.g
  %.0.i.i.i = phi i8 [ %i.ah, %bb.f ], [ %i.al, %bb.g ]
  %i.am = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %i.x, i8 noundef signext %.0.i.i.i) #26
  %i.an = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8) %i.am) #26 ; 0 uses
  %.pre = load ptr, ptr %i.a, align 8, !tbaa !228 ; 2 uses
  %.phi.trans.insert = getelementptr inbounds nuw [24 x i8], ptr %.pre, i64 %i.b ; 2 uses
  %.phi.trans.insert52 = getelementptr inbounds nuw i8, ptr %.phi.trans.insert, i64 8
  %.pre53 = load ptr, ptr %.phi.trans.insert52, align 8, !tbaa !223 ; 2 uses
  %.pre54 = load ptr, ptr %.phi.trans.insert, align 8, !tbaa !224 ; 2 uses
  %.pre55 = ptrtoint ptr %.pre53 to i64
  %.pre56 = ptrtoint ptr %.pre54 to i64
  %.pre58 = sub i64 %.pre55, %.pre56
  %.pre60 = ashr exact i64 %.pre58, 2
  br label %bb.h

bb.h:                                             ; preds = %._crit_edge62, %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit
  %.pre-phi64 = phi i64 [ %.pre63, %._crit_edge62 ], [ %i.u, %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit ] ; 4 uses
  %.pre-phi61 = phi i64 [ %i.k, %._crit_edge62 ], [ %.pre60, %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit ] ; 3 uses
  %i.ao = phi ptr [ %i.g, %._crit_edge62 ], [ %.pre54, %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit ]
  %i.ap = phi ptr [ %i.f, %._crit_edge62 ], [ %.pre53, %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit ]
  %i.aq = phi ptr [ %i.c, %._crit_edge62 ], [ %.pre, %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit ]
  %i.ar = getelementptr inbounds nuw [24 x i8], ptr %i.aq, i64 %i.b ; 2 uses
  %i.as = getelementptr inbounds nuw i8, ptr %i.ar, i64 8
  %i.at = icmp ult i64 %.pre-phi61, %.pre-phi64
  br i1 %i.at, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.au = sub nuw nsw i64 %.pre-phi64, %.pre-phi61
  tail call void @_ZNSt6vectorIiSaIiEE17_M_default_appendEm(ptr noundef nonnull align 8 dereferenceable(24) %i.ar, i64 noundef %i.au)
  br label %.lr.ph48

bb.j:                                             ; preds = %bb.h
  %i.av = icmp ugt i64 %.pre-phi61, %.pre-phi64
  br i1 %i.av, label %bb.k, label %.lr.ph48

bb.k:                                             ; preds = %bb.j
  %i.aw = getelementptr inbounds nuw [4 x i8], ptr %i.ao, i64 %.pre-phi64 ; 2 uses
  %.not.i.i = icmp eq ptr %i.ap, %i.aw
  br i1 %.not.i.i, label %.lr.ph48, label %bb.l

bb.l:                                             ; preds = %bb.k
  store ptr %i.aw, ptr %i.as, align 8, !tbaa !223
  br label %.lr.ph48

.lr.ph48:                                         ; preds = %bb.l, %bb.k, %bb.j, %bb.i
  %2 = add i32 %i.m, -1
  %3 = getelementptr inbounds nuw i8, ptr %0, i64 288
  %4 = load ptr, ptr %3, align 8, !tbaa !237
  %5 = getelementptr inbounds nuw [4 x i8], ptr %4, i64 %i.b ; 2 uses
  store i32 %2, ptr %5, align 4, !tbaa !220
  %i.ax = load ptr, ptr %i.a, align 8, !tbaa !228
  %i.ay = getelementptr inbounds nuw [24 x i8], ptr %i.ax, i64 %i.b
  %i.az = load ptr, ptr %i.ay, align 8, !tbaa !219
  %i.ba = and i64 %i.k, 4294967295
  %i.bb = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.bc = getelementptr inbounds nuw i8, ptr %0, i64 152
  %umax = tail call i32 @llvm.umax.i32(i32 %i.l, i32 1)
  %wide.trip.count = zext i32 %umax to i64
  br label %bb.m

._crit_edge49:                                    ; preds = %._crit_edge
  %i.bd = getelementptr inbounds nuw i8, ptr %0, i64 336
  %i.be = load ptr, ptr %i.bd, align 8, !tbaa !224
  %i.bf = getelementptr inbounds nuw [4 x i8], ptr %i.be, i64 %i.b ; 2 uses
  %i.bg = load i32, ptr %i.bf, align 4, !tbaa !220
  %i.bh = shl i32 %i.bg, 1
  %spec.store.select = tail call i32 @llvm.umin.i32(i32 %i.bh, i32 2147483647)
  store i32 %spec.store.select, ptr %i.bf, align 4
  br label %bb.q

bb.m:                                             ; preds = %.lr.ph48, %._crit_edge
  %indvars.iv = phi i64 [ 0, %.lr.ph48 ], [ %indvars.iv.next, %._crit_edge ] ; 3 uses
  %i.bi = getelementptr inbounds nuw [4 x i8], ptr %i.az, i64 %indvars.iv ; 4 uses
  %i.bj = load i32, ptr %i.bi, align 4, !tbaa !220 ; 2 uses
  %.not2643 = icmp eq i32 %i.bj, 0
  br i1 %.not2643, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.m
  %i.bk = getelementptr inbounds nuw [4 x i8], ptr %i.bi, i64 %i.ba
  %i.bl = load ptr, ptr %i.bb, align 8, !tbaa !237 ; 2 uses
  %i.bm = load ptr, ptr %i.bc, align 8, !tbaa !219
  br label %bb.n

bb.n:                                             ; preds = %.lr.ph, %bb.p
  %i.bn = phi i32 [ %i.bj, %.lr.ph ], [ %i.cg, %bb.p ] ; 2 uses
  %.sroa.034.046 = phi ptr [ %i.bi, %.lr.ph ], [ %i.ce, %bb.p ] ; 2 uses
  %.sroa.028.045 = phi ptr [ %i.bk, %.lr.ph ], [ %.sroa.028.0., %bb.p ] ; 2 uses
  %.sroa.029.044 = phi ptr [ %i.bi, %.lr.ph ], [ %..sroa.029.0, %bb.p ] ; 3 uses
  %i.bo = shl i32 %i.bn, 1                        ; 2 uses
  %i.bp = zext i32 %i.bo to i64
  %i.bq = getelementptr inbounds nuw [4 x i8], ptr %i.bl, i64 %i.bp
  %i.br = load i32, ptr %i.bq, align 4, !tbaa !220
  %i.bs = or disjoint i32 %i.bo, 1
  %i.bt = zext i32 %i.bs to i64
  %i.bu = getelementptr inbounds nuw [4 x i8], ptr %i.bl, i64 %i.bt
  %i.bv = load i32, ptr %i.bu, align 4, !tbaa !220
  %i.bw = mul i32 %i.bv, 4256249
  %i.bx = add i32 %i.bw, %i.br
  %i.by = load i32, ptr %5, align 4, !tbaa !220
  %i.bz = and i32 %i.bx, %i.by
  %i.ca = zext i32 %i.bz to i64
  %i.cb = icmp eq i64 %indvars.iv, %i.ca
  %storemerge.sroa.speculated.v = select i1 %i.cb, ptr %.sroa.029.044, ptr %.sroa.028.045 ; 4 uses
  %.not42 = icmp eq ptr %storemerge.sroa.speculated.v, %.sroa.034.046
  br i1 %.not42, label %bb.p, label %bb.o

bb.o:                                             ; preds = %bb.n
  store i32 %i.bn, ptr %storemerge.sroa.speculated.v, align 4, !tbaa !220
  store i32 0, ptr %.sroa.034.046, align 4, !tbaa !220
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.n
  %i.cc = load i32, ptr %storemerge.sroa.speculated.v, align 4, !tbaa !220
  %i.cd = sext i32 %i.cc to i64
  %i.ce = getelementptr inbounds [4 x i8], ptr %i.bm, i64 %i.cd ; 4 uses
  %i.cf = icmp eq ptr %storemerge.sroa.speculated.v, %.sroa.029.044 ; 2 uses
  %..sroa.029.0 = select i1 %i.cf, ptr %i.ce, ptr %.sroa.029.044
  %.sroa.028.0. = select i1 %i.cf, ptr %.sroa.028.045, ptr %i.ce
  %i.cg = load i32, ptr %i.ce, align 4, !tbaa !220 ; 2 uses
  %.not26 = icmp eq i32 %i.cg, 0
  br i1 %.not26, label %._crit_edge, label %bb.n, !llvm.loop !1887

._crit_edge:                                      ; preds = %bb.p, %bb.m
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge49, label %bb.m, !llvm.loop !1888

bb.q:                                             ; preds = %._crit_edge49, %bb.b
  ret void
}

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertIdEERSoT_(ptr noundef nonnull align 8 dereferenceable(8), double noundef) local_unnamed_addr #6

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZN3rrr6NewBdd3Man11SetMark_recEj(ptr noundef nonnull align 8 dereferenceable(392) %0, i32 noundef %1) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 176
  %i.b = icmp ult i32 %1, 2
  br i1 %i.b, label %tailrecurse._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 128 ; 2 uses
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %tailrecurse
  %.tr67 = phi i32 [ %1, %.lr.ph ], [ %i.z, %tailrecurse ] ; 5 uses
  %i.d = lshr i32 %.tr67, 1
  %i.e = load ptr, ptr %i.a, align 8, !tbaa !333
  %i.f = lshr i32 %.tr67, 7
  %.zext.i = zext nneg i32 %i.f to i64
  %i.g = getelementptr inbounds nuw [8 x i8], ptr %i.e, i64 %.zext.i ; 2 uses
  %i.h = and i32 %i.d, 63
  %i.i = zext nneg i32 %i.h to i64
  %i.j = shl nuw i64 1, %i.i                      ; 2 uses
  %i.k = load i64, ptr %i.g, align 8, !tbaa !334  ; 2 uses
  %i.l = and i64 %i.k, %i.j
  %.not = icmp eq i64 %i.l, 0
  br i1 %.not, label %tailrecurse, label %tailrecurse._crit_edge

tailrecurse:                                      ; preds = %bb.b
  %i.m = or i64 %i.k, %i.j
  store i64 %i.m, ptr %i.g, align 8, !tbaa !334
  %i.n = and i32 %.tr67, -2
  %i.o = zext i32 %i.n to i64
  %i.p = load ptr, ptr %i.c, align 8, !tbaa !237
  %i.q = getelementptr inbounds nuw [4 x i8], ptr %i.p, i64 %i.o
  %i.r = load i32, ptr %i.q, align 4, !tbaa !220
  %i.s = and i32 %.tr67, 1                        ; 2 uses
  %i.t = xor i32 %i.r, %i.s
  tail call void @_ZN3rrr6NewBdd3Man11SetMark_recEj(ptr noundef nonnull align 8 dereferenceable(392) %0, i32 noundef %i.t)
  %i.u = or i32 %.tr67, 1
  %i.v = zext i32 %i.u to i64
  %i.w = load ptr, ptr %i.c, align 8, !tbaa !237
  %i.x = getelementptr inbounds nuw [4 x i8], ptr %i.w, i64 %i.v
  %i.y = load i32, ptr %i.x, align 4, !tbaa !220  ; 2 uses
  %i.z = xor i32 %i.y, %i.s
  %i.aa = icmp ult i32 %i.y, 2
  br i1 %i.aa, label %tailrecurse._crit_edge, label %bb.b

tailrecurse._crit_edge:                           ; preds = %bb.b, %tailrecurse, %bb.a
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZNSt6vectorItSaItEE17_M_default_appendEm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %1) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %.not = icmp eq i64 %1, 0
  br i1 %.not, label %bb.h, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !936  ; 3 uses
  %i.c = load ptr, ptr %0, align 8, !tbaa !937    ; 4 uses
  %i.d = ptrtoint ptr %i.b to i64                 ; 2 uses
  %i.e = ptrtoint ptr %i.c to i64                 ; 2 uses
  %i.f = sub i64 %i.d, %i.e                       ; 4 uses
  %i.g = ashr exact i64 %i.f, 1                   ; 4 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !939
  %i.j = ptrtoint ptr %i.i to i64
  %i.k = sub i64 %i.j, %i.d
  %i.l = ashr exact i64 %i.k, 1                   ; 2 uses
  %i.m = icmp ult i64 %i.g, 4611686018427387904
  tail call void @llvm.assume(i1 %i.m)
  %i.n = xor i64 %i.g, 4611686018427387903        ; 2 uses
  %i.o = icmp ule i64 %i.l, %i.n
  tail call void @llvm.assume(i1 %i.o)
  %.not23 = icmp ult i64 %i.l, %1
  br i1 %.not23, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  store i16 0, ptr %i.b, align 2, !tbaa !927
  %i.p = getelementptr i8, ptr %i.b, i64 2        ; 3 uses
  %i.q = add nsw i64 %1, -1                       ; 2 uses
  %i.r = icmp eq i64 %i.q, 0
  br i1 %i.r, label %_ZSt27__uninitialized_default_n_aIPtmtET_S1_T0_RSaIT1_E.exit, label %_ZSt6fill_nIPtmtET_S1_T0_RKT1_.exit.loopexit.i.i.i

_ZSt6fill_nIPtmtET_S1_T0_RKT1_.exit.loopexit.i.i.i: ; preds = %bb.c
  %.idx.i.i.i.i.i = shl nuw nsw i64 %i.q, 1       ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr align 2 %i.p, i8 0, i64 %.idx.i.i.i.i.i, i1 false), !tbaa !927
  %i.s = getelementptr inbounds nuw i8, ptr %i.p, i64 %.idx.i.i.i.i.i
  br label %_ZSt27__uninitialized_default_n_aIPtmtET_S1_T0_RSaIT1_E.exit

_ZSt27__uninitialized_default_n_aIPtmtET_S1_T0_RSaIT1_E.exit: ; preds = %bb.c, %_ZSt6fill_nIPtmtET_S1_T0_RKT1_.exit.loopexit.i.i.i
  %.0.i.i.i = phi ptr [ %i.s, %_ZSt6fill_nIPtmtET_S1_T0_RKT1_.exit.loopexit.i.i.i ], [ %i.p, %bb.c ]
  store ptr %.0.i.i.i, ptr %i.a, align 8, !tbaa !936
  br label %bb.h

bb.d:                                             ; preds = %bb.b
  %i.t = icmp ult i64 %i.n, %1
  br i1 %i.t, label %bb.e, label %_ZNKSt6vectorItSaItEE12_M_check_lenEmPKc.exit

bb.e:                                             ; preds = %bb.d
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.4) #27
  unreachable

_ZNKSt6vectorItSaItEE12_M_check_lenEmPKc.exit:    ; preds = %bb.d
  %.sroa.speculated.i = tail call i64 @llvm.umax.i64(i64 %i.g, i64 %1)
  %i.u = add nuw nsw i64 %.sroa.speculated.i, %i.g
  %i.v = tail call i64 @llvm.umin.i64(i64 %i.u, i64 4611686018427387903) ; 2 uses
  %i.w = shl nuw nsw i64 %i.v, 1
  %i.x = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.w) #29 ; 4 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 %i.f ; 3 uses
  store i16 0, ptr %i.y, align 2, !tbaa !927
  %i.z = add nsw i64 %1, -1                       ; 2 uses
  %i.aa = icmp eq i64 %i.z, 0
  br i1 %i.aa, label %_ZSt27__uninitialized_default_n_aIPtmtET_S1_T0_RSaIT1_E.exit28, label %_ZSt6fill_nIPtmtET_S1_T0_RKT1_.exit.loopexit.i.i.i25

_ZSt6fill_nIPtmtET_S1_T0_RKT1_.exit.loopexit.i.i.i25: ; preds = %_ZNKSt6vectorItSaItEE12_M_check_lenEmPKc.exit
  %i.ab = getelementptr i8, ptr %i.y, i64 2
  %.idx.i.i.i.i.i26 = shl nuw nsw i64 %i.z, 1
  tail call void @llvm.memset.p0.i64(ptr align 2 %i.ab, i8 0, i64 %.idx.i.i.i.i.i26, i1 false), !tbaa !927
  br label %_ZSt27__uninitialized_default_n_aIPtmtET_S1_T0_RSaIT1_E.exit28

_ZSt27__uninitialized_default_n_aIPtmtET_S1_T0_RSaIT1_E.exit28: ; preds = %_ZNKSt6vectorItSaItEE12_M_check_lenEmPKc.exit, %_ZSt6fill_nIPtmtET_S1_T0_RKT1_.exit.loopexit.i.i.i25
  %i.ac = icmp sgt i64 %i.f, 0
  br i1 %i.ac, label %bb.f, label %_ZNSt6vectorItSaItEE11_S_relocateEPtS2_S2_RS0_.exit

bb.f:                                             ; preds = %_ZSt27__uninitialized_default_n_aIPtmtET_S1_T0_RSaIT1_E.exit28
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 2 %i.x, ptr align 2 %i.c, i64 %i.f, i1 false)
  br label %_ZNSt6vectorItSaItEE11_S_relocateEPtS2_S2_RS0_.exit
end_hunk_0
begin_hunk_1_@_ZZZN3rrr9CreateGiaINS_10AndNetworkEEEP10Gia_Man_t_PT_bENKUliE0_clEiENKUlibE_clEib:bb.a
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.l
  %i.en = getelementptr inbounds nuw i8, ptr %i.r, i64 1008
  %i.eo = load ptr, ptr %i.en, align 8, !tbaa !4337
  %.not71.i = icmp eq ptr %i.eo, null
  br i1 %.not71.i, label %_ZL16Gia_ManAppendAndP10Gia_Man_t_ii.exit, label %bb.o

bb.o:                                             ; preds = %bb.n
  tail call void @Gia_ManQuantSetSuppAnd(ptr noundef nonnull %i.r, ptr noundef nonnull %i.ac) #26
  br label %_ZL16Gia_ManAppendAndP10Gia_Man_t_ii.exit

_ZL16Gia_ManAppendAndP10Gia_Man_t_ii.exit:        ; preds = %bb.n, %bb.o
  %.val.i = load ptr, ptr %i.ae, align 8, !tbaa !406
  %i.ep = ptrtoint ptr %.val.i to i64
  %i.eq = sub i64 %i.af, %i.ep
  %i.er = sdiv exact i64 %i.eq, 12
  %i.es = trunc i64 %i.er to i32
  %i.et = shl i32 %i.es, 1
  %i.eu = load ptr, ptr %0, align 8, !tbaa !4331, !nonnull !317, !align !415
  store i32 %i.et, ptr %i.eu, align 4, !tbaa !220
  br label %bb.p

bb.p:                                             ; preds = %bb.d, %_ZL16Gia_ManAppendAndP10Gia_Man_t_ii.exit, %bb.b
  ret void
}

declare i32 @Gia_ManHashAnd(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #6

declare void @Gia_ObjAddFanout(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #6

declare void @Gia_ManBuiltInSimPerform(ptr noundef, i32 noundef) local_unnamed_addr #6

declare void @Gia_ManQuantSetSuppAnd(ptr noundef, ptr noundef) local_unnamed_addr #6

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr void @_ZZN3rrr9CreateGiaINS_10AndNetworkEEEP10Gia_Man_t_PT_bENKUlibE_clEib(ptr noundef nonnull align 8 dereferenceable(16) %0, i32 noundef %1, i1 noundef zeroext %2) local_unnamed_addr #2 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !4339, !nonnull !317, !align !412
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !407  ; 5 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !4340, !nonnull !317, !align !412
  %i.e = sext i32 %1 to i64
  %i.f = load ptr, ptr %i.d, align 8, !tbaa !224
  %i.g = getelementptr inbounds nuw [4 x i8], ptr %i.f, i64 %i.e
  %i.h = load i32, ptr %i.g, align 4, !tbaa !220  ; 2 uses
  %i.i = zext i1 %2 to i32
  %i.j = xor i32 %i.h, %i.i
  %i.k = tail call fastcc noundef ptr @_ZL16Gia_ManAppendObjP10Gia_Man_t_(ptr noundef %i.b) ; 8 uses
  %i.l = load i64, ptr %i.k, align 4
  %i.m = or i64 %i.l, 2147483648                  ; 2 uses
  store i64 %i.m, ptr %i.k, align 4
  %i.n = getelementptr i8, ptr %i.b, i64 32       ; 2 uses
  %.val20.i = load ptr, ptr %i.n, align 8, !tbaa !406
  %i.o = ptrtoint ptr %i.k to i64                 ; 2 uses
  %i.p = ptrtoint ptr %.val20.i to i64
  %i.q = sub i64 %i.o, %i.p
  %i.r = sdiv exact i64 %i.q, 12
  %i.s = trunc i64 %i.r to i32
  %i.t = lshr i32 %i.h, 1
  %i.u = sub i32 %i.s, %i.t
  %i.v = and i32 %i.u, 536870911
  %i.w = zext nneg i32 %i.v to i64
  %i.x = and i64 %i.m, -1073741824
  %i.y = shl i32 %i.j, 29
  %i.z = and i32 %i.y, 536870912
  %i.aa = zext nneg i32 %i.z to i64
  %i.ab = or disjoint i64 %i.x, %i.aa
  %i.ac = or disjoint i64 %i.ab, %i.w             ; 2 uses
  store i64 %i.ac, ptr %i.k, align 4
  %i.ad = getelementptr inbounds nuw i8, ptr %i.b, i64 72 ; 2 uses
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !4341
  %i.af = getelementptr i8, ptr %i.ae, i64 4
  %.val.i = load i32, ptr %i.af, align 4, !tbaa !1342
  %i.ag = and i32 %.val.i, 536870911
  %i.ah = zext nneg i32 %i.ag to i64
  %i.ai = shl nuw nsw i64 %i.ah, 32
  %i.aj = and i64 %i.ac, -2305843004918726657
  %i.ak = or disjoint i64 %i.aj, %i.ai
  store i64 %i.ak, ptr %i.k, align 4
  %i.al = load ptr, ptr %i.ad, align 8, !tbaa !4341 ; 6 uses
  %.val19.i = load ptr, ptr %i.n, align 8, !tbaa !406
  %i.am = ptrtoint ptr %.val19.i to i64
  %i.an = sub i64 %i.o, %i.am
  %i.ao = sdiv exact i64 %i.an, 12
  %i.ap = trunc i64 %i.ao to i32
  %i.aq = getelementptr inbounds nuw i8, ptr %i.al, i64 4 ; 3 uses
  %i.ar = load i32, ptr %i.aq, align 4, !tbaa !1342 ; 7 uses
  %i.as = load i32, ptr %i.al, align 8, !tbaa !1343
  %i.at = icmp eq i32 %i.ar, %i.as
  br i1 %i.at, label %bb.b, label %_ZL11Vec_IntPushP10Vec_Int_t_i.exit.i

bb.b:                                             ; preds = %bb.a
  %i.au = icmp slt i32 %i.ar, 16
  br i1 %i.au, label %bb.c, label %bb.f

bb.c:                                             ; preds = %bb.b
  %i.av = getelementptr inbounds nuw i8, ptr %i.al, i64 8 ; 2 uses
  %i.aw = load ptr, ptr %i.av, align 8, !tbaa !1344 ; 2 uses
  %.not9.i.i.i = icmp eq ptr %i.aw, null
  br i1 %.not9.i.i.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.ax = tail call dereferenceable_or_null(64) ptr @realloc(ptr noundef nonnull %i.aw, i64 noundef 64) #31
  br label %_ZL11Vec_IntGrowP10Vec_Int_t_i.exit.i.i

bb.e:                                             ; preds = %bb.c
  %i.ay = tail call noalias dereferenceable_or_null(64) ptr @malloc(i64 noundef 64) #32
  br label %_ZL11Vec_IntGrowP10Vec_Int_t_i.exit.i.i

_ZL11Vec_IntGrowP10Vec_Int_t_i.exit.i.i:          ; preds = %bb.e, %bb.d
  %i.az = phi ptr [ %i.ax, %bb.d ], [ %i.ay, %bb.e ]
  store ptr %i.az, ptr %i.av, align 8, !tbaa !1344
  br label %_ZL11Vec_IntGrowP10Vec_Int_t_i.exit11.sink.split.i.i

bb.f:                                             ; preds = %bb.b
  %i.ba = icmp samesign ult i32 %i.ar, 1073741823
  %i.bb = shl nuw nsw i32 %i.ar, 1
  %spec.select.i.i = select i1 %i.ba, i32 %i.bb, i32 2147483647 ; 3 uses
  %.not.i9.i.i = icmp samesign ult i32 %i.ar, %spec.select.i.i
  br i1 %.not.i9.i.i, label %bb.g, label %_ZL11Vec_IntPushP10Vec_Int_t_i.exit.i

bb.g:                                             ; preds = %bb.f
  %i.bc = getelementptr inbounds nuw i8, ptr %i.al, i64 8 ; 2 uses
  %i.bd = load ptr, ptr %i.bc, align 8, !tbaa !1344 ; 2 uses
  %.not9.i10.i.i = icmp eq ptr %i.bd, null
  %i.be = zext nneg i32 %spec.select.i.i to i64
  %i.bf = shl nuw nsw i64 %i.be, 2                ; 2 uses
  br i1 %.not9.i10.i.i, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.bg = tail call ptr @realloc(ptr noundef nonnull %i.bd, i64 noundef %i.bf) #31
  br label %bb.j

bb.i:                                             ; preds = %bb.g
  %i.bh = tail call noalias ptr @malloc(i64 noundef %i.bf) #32
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  %i.bi = phi ptr [ %i.bg, %bb.h ], [ %i.bh, %bb.i ]
  store ptr %i.bi, ptr %i.bc, align 8, !tbaa !1344
  br label %_ZL11Vec_IntGrowP10Vec_Int_t_i.exit11.sink.split.i.i

_ZL11Vec_IntGrowP10Vec_Int_t_i.exit11.sink.split.i.i: ; preds = %bb.j, %_ZL11Vec_IntGrowP10Vec_Int_t_i.exit.i.i
  %spec.select.sink.i.i = phi i32 [ %spec.select.i.i, %bb.j ], [ 16, %_ZL11Vec_IntGrowP10Vec_Int_t_i.exit.i.i ]
  store i32 %spec.select.sink.i.i, ptr %i.al, align 8, !tbaa !1343
  %.pre.i = load i32, ptr %i.aq, align 4, !tbaa !1342
  br label %_ZL11Vec_IntPushP10Vec_Int_t_i.exit.i

_ZL11Vec_IntPushP10Vec_Int_t_i.exit.i:            ; preds = %_ZL11Vec_IntGrowP10Vec_Int_t_i.exit11.sink.split.i.i, %bb.f, %bb.a
  %i.bj = phi i32 [ %i.ar, %bb.a ], [ %i.ar, %bb.f ], [ %.pre.i, %_ZL11Vec_IntGrowP10Vec_Int_t_i.exit11.sink.split.i.i ] ; 2 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %i.al, i64 8
  %i.bl = load ptr, ptr %i.bk, align 8, !tbaa !1344
  %i.bm = add nsw i32 %i.bj, 1
  store i32 %i.bm, ptr %i.aq, align 4, !tbaa !1342
  %i.bn = sext i32 %i.bj to i64
  %i.bo = getelementptr inbounds [4 x i8], ptr %i.bl, i64 %i.bn
  store i32 %i.ap, ptr %i.bo, align 4, !tbaa !220
  %i.bp = getelementptr inbounds nuw i8, ptr %i.b, i64 232
  %i.bq = load ptr, ptr %i.bp, align 8, !tbaa !1345
  %.not.i = icmp eq ptr %i.bq, null
  br i1 %.not.i, label %_ZL15Gia_ManAppendCoP10Gia_Man_t_i.exit, label %bb.k

bb.k:                                             ; preds = %_ZL11Vec_IntPushP10Vec_Int_t_i.exit.i
  %i.br = load i64, ptr %i.k, align 4
  %i.bs = and i64 %i.br, 536870911
  %i.bt = sub nsw i64 0, %i.bs
  %i.bu = getelementptr inbounds [12 x i8], ptr %i.k, i64 %i.bt
  tail call void @Gia_ObjAddFanout(ptr noundef nonnull %i.b, ptr noundef nonnull %i.bu, ptr noundef nonnull %i.k) #26
  br label %_ZL15Gia_ManAppendCoP10Gia_Man_t_i.exit

_ZL15Gia_ManAppendCoP10Gia_Man_t_i.exit:          ; preds = %_ZL11Vec_IntPushP10Vec_Int_t_i.exit.i, %bb.k
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #21

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #16

; Function Attrs: nofree nounwind
declare noundef i32 @puts(ptr noundef readonly captures(none)) local_unnamed_addr #22

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #16

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #23

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #16

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(errnomem: write)
declare double @ldexp(double, i32) local_unnamed_addr #24

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umin.i32(i32, i32) #16

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umax.i32(i32, i32) #16

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #16

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i32 @bcmp(ptr captures(none), ptr captures(none), i64) local_unnamed_addr #25

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare x86_fp80 @llvm.log.f80(x86_fp80) #16

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smax.i64(i64, i64) #16

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smin.i64(i64, i64) #16

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.vector.reduce.add.v4i32(<4 x i32>) #16

attributes #0 = { mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { inlinehint mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nobuiltin allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nobuiltin nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #9 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { cold nofree noreturn nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { mustprogress nofree nounwind willreturn memory(read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { mustprogress nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { cold inlinehint mustprogress noreturn nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #15 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #16 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #17 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #18 = { nofree noreturn nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #19 = { mustprogress nounwind willreturn allockind("realloc") allocsize(1) memory(argmem: readwrite, inaccessiblemem: readwrite, errnomem: write) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #20 = { mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite, errnomem: write) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #21 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #22 = { nofree nounwind }
attributes #23 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #24 = { nocallback nofree nosync nounwind willreturn memory(errnomem: write) }
attributes #25 = { nocallback nofree nosync nounwind willreturn memory(argmem: read) }
attributes #26 = { nounwind }
attributes #27 = { noreturn nounwind }
attributes #28 = { builtin nounwind }
attributes #29 = { builtin nounwind allocsize(0) }
attributes #30 = { nounwind willreturn memory(read) }
attributes #31 = { nounwind allocsize(1) }
attributes #32 = { nounwind allocsize(0) }
attributes #33 = { cold noreturn nounwind }

!llvm.module.flags = !{!191, !192}
!llvm.ident = !{!193}
!llvm.errno.tbaa = !{!198}

!0 = distinct !{null}
!1 = distinct !{null}
!2 = distinct !{!2, !225}
!3 = distinct !{null}
!4 = distinct !{!4, !225}
!5 = distinct !{!5, !225}
!6 = distinct !{!6, !225}
!7 = distinct !{!7, !225}
!8 = distinct !{!8, !225}
!9 = distinct !{!9, !225}
!10 = distinct !{!10, !225}
!11 = distinct !{null, null}
!12 = distinct !{!12, !225}
!13 = distinct !{!13, !225}
!14 = distinct !{null, null}
!15 = distinct !{null, null}
!16 = distinct !{!16, !225}
!17 = distinct !{!17, !225}
!18 = distinct !{!18, !225}
!19 = distinct !{!19, !225}
!20 = distinct !{!20, !225}
!21 = distinct !{!21, !225}
!22 = distinct !{!22, !225}
!23 = distinct !{ptr @_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_, null, null, null}
!24 = distinct !{null}
!25 = distinct !{null, null}
!26 = distinct !{!26, !225}
!27 = distinct !{!27, !225}
!28 = distinct !{null}
!29 = distinct !{null}
!30 = distinct !{null, ptr @_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_, null, null, null}
!31 = distinct !{!31, !225}
!32 = distinct !{!32, !225}
!33 = distinct !{null, null, null}
!34 = distinct !{!34, !225}
!35 = distinct !{!35, !225}
!36 = distinct !{!36, !225}
!37 = distinct !{null, null, null}
!38 = distinct !{null}
!39 = distinct !{!39, !225}
!40 = distinct !{!40, !225}
!41 = distinct !{null, null, null}
!42 = distinct !{!42, !225}
!43 = distinct !{!43, !225}
!44 = distinct !{!44, !225}
!45 = distinct !{!45, !225}
!46 = distinct !{null, null, null}
!47 = distinct !{null, null}
!48 = distinct !{!48, !225}
!49 = distinct !{null}
!50 = distinct !{!50, !225}
!51 = distinct !{!51, !225}
!52 = distinct !{!52, !225}
!53 = distinct !{!53, !225}
!54 = distinct !{!54, !225}
!55 = distinct !{!55, !225}
!56 = distinct !{!56, !225}
!57 = distinct !{!57, !225}
!58 = distinct !{!58, !225}
!59 = distinct !{!59, !225}
!60 = distinct !{!60, !225}
!61 = distinct !{!61, !225}
!62 = distinct !{!62, !225}
!63 = distinct !{!63, !225}
!64 = distinct !{!64, !225}
!65 = distinct !{!65, !225}
!66 = distinct !{!66, !225}
!67 = distinct !{!67, !225}
!68 = distinct !{!68, !225}
!69 = distinct !{!69, !225}
!70 = distinct !{!70, !225}
!71 = distinct !{!71, !225}
!72 = distinct !{!72, !225}
!73 = distinct !{!73, !225}
!74 = distinct !{!74, !225}
!75 = distinct !{!75, !225}
!76 = distinct !{!76, !225}
!77 = distinct !{!77, !225}
!78 = distinct !{!78, !225}
!79 = distinct !{!79, !225}
!80 = distinct !{!80, !225}
!81 = distinct !{!81, !225}
!82 = distinct !{!82, !225}
!83 = distinct !{!83, !225}
!84 = distinct !{!84, !225}
!85 = distinct !{!85, !225}
!86 = distinct !{!86, !225}
!87 = distinct !{!87, !225}
!88 = distinct !{!88, !225}
!89 = distinct !{!89, !225}
!90 = distinct !{null, null}
!91 = distinct !{null, null}
!92 = distinct !{!92, !225}
!93 = distinct !{ptr @_ZN3rrr6NewBdd3Man7ReorderEv, ptr @_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_, null, null, null}
!94 = distinct !{null, null}
!95 = distinct !{ptr @_ZN3rrr10AndNetwork11RemoveFaninEii, null, null}
!96 = distinct !{!96, !225}
!97 = distinct !{!97, !225}
!98 = distinct !{!98, !225}
!99 = distinct !{!99, !225}
!100 = distinct !{!100, !225}
!101 = distinct !{!101, !225}
!102 = distinct !{!102, !225}
!103 = distinct !{!103, !225}
!104 = distinct !{!104, !225}
!105 = distinct !{!105, !225}
!106 = distinct !{!106, !225}
!107 = distinct !{null, null, null}
!108 = distinct !{!108, !225}
!109 = distinct !{!109, !225}
!110 = distinct !{!110, !225}
!111 = distinct !{null, null, null}
!112 = distinct !{null, null, null}
!113 = distinct !{null, null}
!114 = distinct !{!114, !225}
!115 = distinct !{!115, !225}
!116 = distinct !{!116, !225}
!117 = distinct !{!117, !225}
!118 = distinct !{!118, !225}
!119 = distinct !{!119, !225}
!120 = distinct !{!120, !225}
!121 = distinct !{!121, !225}
!122 = distinct !{!122, !225}
!123 = distinct !{!123, !225}
!124 = distinct !{!124, !225}
!125 = distinct !{!125, !225}
!126 = distinct !{!126, !225}
!127 = distinct !{!127, !225}
!128 = distinct !{!128, !225}
!129 = distinct !{!129, !225}
!130 = distinct !{!130, !225}
!131 = distinct !{!131, !225}
!132 = distinct !{!132, !225}
!133 = distinct !{!133, !225}
!134 = distinct !{!134, !225}
!135 = distinct !{!135, !225}
!136 = distinct !{!136, !225}
!137 = distinct !{!137, !225}
!138 = distinct !{!138, !225}
!139 = distinct !{!139, !225}
!140 = distinct !{!140, !225}
!141 = distinct !{!141, !225}
!142 = distinct !{!142, !225}
!143 = distinct !{!143, !225}
!144 = distinct !{!144, !225}
end_hunk_1

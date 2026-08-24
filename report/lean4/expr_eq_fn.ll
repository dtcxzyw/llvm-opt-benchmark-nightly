Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/lean4/original/expr_eq_fn?download=true
inline.NumInlined: 565
inline.NumDeleted: 255
begin_hunk_0_@_ZN4lean10expr_eq_fnILb0EE5applyERKNS_4exprES4_jb:bb.a

bb.q:                                             ; preds = %bb.p
  %i.bi = load ptr, ptr %.tr98166, align 8, !tbaa !36
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bi, i64 8
  %i.bk = load ptr, ptr %.tr99167, align 8, !tbaa !36
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bk, i64 8
  %i.bm = tail call noundef zeroext i1 @_ZN4leaneqERKNS_8list_refINS_8pair_refINS_4nameENS_10data_valueEEEEES7_(ptr noundef nonnull align 8 dereferenceable(8) %i.bj, ptr noundef nonnull align 8 dereferenceable(8) %i.bl)
  br label %_ZN4leaneqERKNS_3natES2_.exit

bb.r:                                             ; preds = %bb.n
  %i.bn = getelementptr inbounds nuw i8, ptr %i.ax, i64 24
  %i.bo = load ptr, ptr %.tr99167, align 8, !tbaa !36
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bo, i64 24
  %i.bq = tail call noundef zeroext i1 @_ZN4lean10expr_eq_fnILb0EE5applyERKNS_4exprES4_jb(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(8) %i.bn, ptr noundef nonnull align 8 dereferenceable(8) %i.bp, i32 noundef %i.aw, i1 noundef zeroext false)
  br i1 %i.bq, label %bb.s, label %_ZN4leaneqERKNS_3natES2_.exit

bb.s:                                             ; preds = %bb.r
  %i.br = load ptr, ptr %.tr98166, align 8, !tbaa !36
  %i.bs = getelementptr inbounds nuw i8, ptr %i.br, i64 8
  %i.bt = load ptr, ptr %.tr99167, align 8, !tbaa !36
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bt, i64 8
  %i.bv = load ptr, ptr %i.bs, align 8, !tbaa !36
  %i.bw = load ptr, ptr %i.bu, align 8, !tbaa !36
  %i.bx = tail call zeroext i8 @lean_name_eq(ptr noundef %i.bv, ptr noundef %i.bw)
  %.not97 = icmp eq i8 %i.bx, 0
  br i1 %.not97, label %_ZN4leaneqERKNS_3natES2_.exit, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.by = load ptr, ptr %.tr98166, align 8, !tbaa !36
  %i.bz = getelementptr inbounds nuw i8, ptr %i.by, i64 16
  %i.ca = load ptr, ptr %.tr99167, align 8, !tbaa !36
  %i.cb = getelementptr inbounds nuw i8, ptr %i.ca, i64 16
  %i.cc = load ptr, ptr %i.bz, align 8, !tbaa !36 ; 3 uses
  %i.cd = load ptr, ptr %i.cb, align 8, !tbaa !36 ; 3 uses
  %i.ce = ptrtoint ptr %i.cc to i64
  %i.cf = ptrtoint ptr %i.cd to i64
  %i.cg = and i64 %i.ce, 1
  %i.ch = and i64 %i.cg, %i.cf
  %or.cond.not.i.i87 = icmp eq i64 %i.ch, 0
  br i1 %or.cond.not.i.i87, label %.critedge.i.i.i89, label %bb.u, !prof !39

bb.u:                                             ; preds = %bb.t
  %i.ci = icmp eq ptr %i.cc, %i.cd
  br label %_ZN4leaneqERKNS_3natES2_.exit

.critedge.i.i.i89:                                ; preds = %bb.t
  %i.cj = tail call zeroext i1 @lean_nat_big_eq(ptr noundef %i.cc, ptr noundef %i.cd)
  br label %_ZN4leaneqERKNS_3natES2_.exit

bb.v:                                             ; preds = %bb.n
  %i.ck = getelementptr inbounds nuw i8, ptr %i.ax, i64 8
  %i.cl = load ptr, ptr %.tr99167, align 8, !tbaa !36
  %i.cm = getelementptr inbounds nuw i8, ptr %i.cl, i64 8
  %i.cn = load ptr, ptr %i.ck, align 8, !tbaa !36
  %i.co = load ptr, ptr %i.cm, align 8, !tbaa !36
  %i.cp = tail call zeroext i8 @lean_name_eq(ptr noundef %i.cn, ptr noundef %i.co)
  %.not96 = icmp eq i8 %i.cp, 0
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #12
  br i1 %.not96, label %bb.x, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.cq = load ptr, ptr %.tr98166, align 8, !tbaa !36
  %i.cr = getelementptr inbounds nuw i8, ptr %i.cq, i64 16
  %i.cs = load ptr, ptr %.tr99167, align 8, !tbaa !36
  %i.ct = getelementptr inbounds nuw i8, ptr %i.cs, i64 16
  %i.cu = call noundef zeroext i1 @_ZN4lean7compareINS_5levelEZNS_10expr_eq_fnILb0EE5applyERKNS_4exprES6_jbEUlRKS1_S8_E_EEbRKNS_8list_refIT_EESE_OT0_(ptr noundef nonnull align 8 dereferenceable(8) %i.cr, ptr noundef nonnull align 8 dereferenceable(8) %i.ct, ptr noundef nonnull align 1 dereferenceable(1) %5)
  br label %bb.x

bb.x:                                             ; preds = %bb.w, %bb.v
  %i.cv = phi i1 [ false, %bb.v ], [ %i.cu, %bb.w ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #12
  br label %_ZN4leaneqERKNS_3natES2_.exit

bb.y:                                             ; preds = %bb.n
  tail call void @_ZN4lean10expr_eq_fnILb0EE12check_systemEj(ptr noundef nonnull align 8 dereferenceable(24) %0, i32 noundef %i.aw)
  %i.cw = load ptr, ptr %.tr98166, align 8, !tbaa !36
  %i.cx = getelementptr inbounds nuw i8, ptr %i.cw, i64 16
  %i.cy = load ptr, ptr %.tr99167, align 8, !tbaa !36
  %i.cz = getelementptr inbounds nuw i8, ptr %i.cy, i64 16
  %i.da = tail call noundef zeroext i1 @_ZN4lean10expr_eq_fnILb0EE5applyERKNS_4exprES4_jb(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(8) %i.cx, ptr noundef nonnull align 8 dereferenceable(8) %i.cz, i32 noundef %i.aw, i1 noundef zeroext false)
  br i1 %i.da, label %.preheader, label %_ZN4leaneqERKNS_3natES2_.exit

.preheader:                                       ; preds = %bb.y, %bb.aa
  %.pn.in = phi ptr [ %.077, %bb.aa ], [ %.tr98166, %bb.y ]
  %.pn95.in = phi ptr [ %.0, %bb.aa ], [ %.tr99167, %bb.y ]
  %.pn95 = load ptr, ptr %.pn95.in, align 8, !tbaa !36
  %.0 = getelementptr inbounds nuw i8, ptr %.pn95, i64 8 ; 3 uses
  %.pn = load ptr, ptr %.pn.in, align 8, !tbaa !36
  %.077 = getelementptr inbounds nuw i8, ptr %.pn, i64 8 ; 3 uses
  %i.db = load ptr, ptr %.077, align 8, !tbaa !36 ; 3 uses
  %i.dc = getelementptr i8, ptr %i.db, i64 4
  %.val.i.i.i.i = load i32, ptr %i.dc, align 4
  %.mask.i = and i32 %.val.i.i.i.i, -16777216
  %i.dd = icmp eq i32 %.mask.i, 83886080
  br i1 %i.dd, label %bb.z, label %tailrecurse.backedge

bb.z:                                             ; preds = %.preheader
  %i.de = load ptr, ptr %.0, align 8, !tbaa !36   ; 2 uses
  %i.df = getelementptr i8, ptr %i.de, i64 4
  %.val.i.i.i.i91 = load i32, ptr %i.df, align 4
  %.mask.i92 = and i32 %.val.i.i.i.i91, -16777216
  %i.dg = icmp eq i32 %.mask.i92, 83886080
  br i1 %i.dg, label %bb.aa, label %_ZN4leaneqERKNS_3natES2_.exit

bb.aa:                                            ; preds = %bb.z
  %i.dh = getelementptr inbounds nuw i8, ptr %i.db, i64 16
  %i.di = getelementptr inbounds nuw i8, ptr %i.de, i64 16
  %i.dj = tail call noundef zeroext i1 @_ZN4lean10expr_eq_fnILb0EE5applyERKNS_4exprES4_jb(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(8) %i.dh, ptr noundef nonnull align 8 dereferenceable(8) %i.di, i32 noundef %i.aw, i1 noundef zeroext false)
  br i1 %i.dj, label %.preheader, label %_ZN4leaneqERKNS_3natES2_.exit, !llvm.loop !49

bb.ab:                                            ; preds = %bb.n, %bb.n
  tail call void @_ZN4lean10expr_eq_fnILb0EE12check_systemEj(ptr noundef nonnull align 8 dereferenceable(24) %0, i32 noundef %i.aw)
  %i.dk = load ptr, ptr %.tr98166, align 8, !tbaa !36
  %i.dl = getelementptr inbounds nuw i8, ptr %i.dk, i64 16
  %i.dm = load ptr, ptr %.tr99167, align 8, !tbaa !36
  %i.dn = getelementptr inbounds nuw i8, ptr %i.dm, i64 16
  %i.do = tail call noundef zeroext i1 @_ZN4lean10expr_eq_fnILb0EE5applyERKNS_4exprES4_jb(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(8) %i.dl, ptr noundef nonnull align 8 dereferenceable(8) %i.dn, i32 noundef %i.aw, i1 noundef zeroext false)
  br i1 %i.do, label %bb.ac, label %_ZN4leaneqERKNS_3natES2_.exit

bb.ac:                                            ; preds = %bb.ab
  %i.dp = load ptr, ptr %.tr98166, align 8, !tbaa !36
  %i.dq = getelementptr inbounds nuw i8, ptr %i.dp, i64 24 ; 2 uses
  %i.dr = load ptr, ptr %.tr99167, align 8, !tbaa !36
  %i.ds = getelementptr inbounds nuw i8, ptr %i.dr, i64 24
  %.pre = load ptr, ptr %i.dq, align 8, !tbaa !36
  br label %tailrecurse.backedge

tailrecurse.backedge:                             ; preds = %.preheader, %bb.ac
  %i.dt = phi ptr [ %.pre, %bb.ac ], [ %i.db, %.preheader ] ; 2 uses
  %.tr98.be = phi ptr [ %i.dq, %bb.ac ], [ %.077, %.preheader ]
  %.tr99.be = phi ptr [ %i.ds, %bb.ac ], [ %.0, %.preheader ] ; 2 uses
  %i.du = load ptr, ptr %.tr99.be, align 8, !tbaa !36 ; 2 uses
  %i.dv = icmp eq ptr %i.dt, %i.du
  br i1 %i.dv, label %_ZN4leaneqERKNS_3natES2_.exit, label %bb.b

bb.ad:                                            ; preds = %bb.n
  tail call void @_ZN4lean10expr_eq_fnILb0EE12check_systemEj(ptr noundef nonnull align 8 dereferenceable(24) %0, i32 noundef %i.aw)
  %i.dw = load ptr, ptr %.tr98166, align 8, !tbaa !36
  %i.dx = getelementptr inbounds nuw i8, ptr %i.dw, i64 16
  %i.dy = load ptr, ptr %.tr99167, align 8, !tbaa !36
  %i.dz = getelementptr inbounds nuw i8, ptr %i.dy, i64 16
  %i.ea = tail call noundef zeroext i1 @_ZN4lean10expr_eq_fnILb0EE5applyERKNS_4exprES4_jb(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(8) %i.dx, ptr noundef nonnull align 8 dereferenceable(8) %i.dz, i32 noundef %i.aw, i1 noundef zeroext false)
  br i1 %i.ea, label %bb.ae, label %_ZN4leaneqERKNS_3natES2_.exit

bb.ae:                                            ; preds = %bb.ad
  %i.eb = load ptr, ptr %.tr98166, align 8, !tbaa !36
  %i.ec = getelementptr inbounds nuw i8, ptr %i.eb, i64 24
  %i.ed = load ptr, ptr %.tr99167, align 8, !tbaa !36
  %i.ee = getelementptr inbounds nuw i8, ptr %i.ed, i64 24
  %i.ef = tail call noundef zeroext i1 @_ZN4lean10expr_eq_fnILb0EE5applyERKNS_4exprES4_jb(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(8) %i.ec, ptr noundef nonnull align 8 dereferenceable(8) %i.ee, i32 noundef %i.aw, i1 noundef zeroext false)
  br i1 %i.ef, label %bb.af, label %_ZN4leaneqERKNS_3natES2_.exit

bb.af:                                            ; preds = %bb.ae
  %i.eg = load ptr, ptr %.tr98166, align 8, !tbaa !36
  %i.eh = getelementptr inbounds nuw i8, ptr %i.eg, i64 32
  %i.ei = load ptr, ptr %.tr99167, align 8, !tbaa !36
  %i.ej = getelementptr inbounds nuw i8, ptr %i.ei, i64 32
  %i.ek = tail call noundef zeroext i1 @_ZN4lean10expr_eq_fnILb0EE5applyERKNS_4exprES4_jb(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(8) %i.eh, ptr noundef nonnull align 8 dereferenceable(8) %i.ej, i32 noundef %i.aw, i1 noundef zeroext false)
  br i1 %i.ek, label %bb.ag, label %_ZN4leaneqERKNS_3natES2_.exit

bb.ag:                                            ; preds = %bb.af
  %i.el = load ptr, ptr %.tr98166, align 8, !tbaa !36
  %i.em = getelementptr i8, ptr %i.el, i64 48
  %.val.i = load i8, ptr %i.em, align 1, !tbaa !46
  %i.en = icmp ne i8 %.val.i, 0
  %i.eo = load ptr, ptr %.tr99167, align 8, !tbaa !36
  %i.ep = getelementptr i8, ptr %i.eo, i64 48
  %.val.i93 = load i8, ptr %i.ep, align 1, !tbaa !46
  %i.eq = icmp eq i8 %.val.i93, 0
  %i.er = xor i1 %i.en, %i.eq
  br label %_ZN4leaneqERKNS_3natES2_.exit

bb.ah:                                            ; preds = %bb.n
  %i.es = tail call ptr @__cxa_allocate_exception(i64 40) #12 ; 5 uses
  %i.et = getelementptr inbounds nuw i8, ptr %i.es, i64 8
  %i.eu = getelementptr inbounds nuw i8, ptr %i.es, i64 24 ; 2 uses
  store ptr %i.eu, ptr %i.et, align 8, !tbaa !41
  %i.ev = getelementptr inbounds nuw i8, ptr %i.es, i64 16
  store i64 0, ptr %i.ev, align 8, !tbaa !44
  store i8 0, ptr %i.eu, align 8, !tbaa !46
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN4lean19unreachable_reachedE, i64 16), ptr %i.es, align 8, !tbaa !47
  tail call void @__cxa_throw(ptr nonnull %i.es, ptr nonnull @_ZTIN4lean19unreachable_reachedE, ptr nonnull @_ZN4lean9throwableD2Ev) #15
  unreachable

_ZN4leaneqERKNS_3natES2_.exit:                    ; preds = %tailrecurse.backedge, %bb.b, %bb.c, %bb.m, %bb.y, %bb.ab, %bb.z, %bb.aa, %bb.a, %.critedge.i.i.i89, %bb.u, %.critedge.i.i.i, %bb.f, %bb.ad, %bb.ae, %bb.af, %bb.ag, %bb.r, %bb.s, %bb.p, %bb.q, %bb.x, %bb.j, %bb.i, %bb.h, %bb.g
  %.1 = phi i1 [ %i.aq, %bb.j ], [ %i.af, %bb.f ], [ %i.cj, %.critedge.i.i.i89 ], [ %i.ci, %bb.u ], [ %i.bm, %bb.q ], [ %i.cv, %bb.x ], [ %i.er, %bb.ag ], [ %i.ag, %.critedge.i.i.i ], [ false, %bb.ae ], [ false, %bb.af ], [ true, %bb.a ], [ false, %bb.ad ], [ %i.ah, %bb.g ], [ %i.al, %bb.h ], [ %i.ap, %bb.i ], [ false, %bb.p ], [ false, %bb.s ], [ false, %bb.r ], [ false, %bb.z ], [ false, %bb.aa ], [ false, %bb.y ], [ true, %bb.m ], [ false, %bb.c ], [ true, %tailrecurse.backedge ], [ false, %bb.ab ], [ false, %bb.b ]
  ret i1 %.1
}

declare noundef zeroext i1 @_ZN4leaneqERKNS_7literalES2_(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #4

declare noundef zeroext i1 @_ZN4leaneqERKNS_5levelES2_(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #4

declare noundef i64 @_ZN4lean24get_available_stack_sizeEv() local_unnamed_addr #4

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZN4lean10expr_eq_fnILb0EE11check_cacheERKNS_4exprES4_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(8) %2) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %3 = alloca %"struct.std::__detail::_AllocNode", align 8 ; 4 uses
  %4 = alloca %"struct.std::pair", align 8        ; 6 uses
  %i.a = load ptr, ptr %1, align 8, !tbaa !36     ; 2 uses
  %.val.i.i = load i32, ptr %i.a, align 4, !tbaa !50
  %.not10 = icmp eq i32 %.val.i.i, 1
  br i1 %.not10, label %bb.m, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = load ptr, ptr %2, align 8, !tbaa !36     ; 2 uses
  %.val.i.i6 = load i32, ptr %i.b, align 4, !tbaa !50
  %.not11 = icmp eq i32 %.val.i.i6, 1
  br i1 %.not11, label %bb.m, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.c = load ptr, ptr %0, align 8, !tbaa !8      ; 2 uses
  %.not = icmp eq ptr %i.c, null
  br i1 %.not, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.d = tail call noalias noundef nonnull dereferenceable(56) ptr @_Znwm(i64 noundef 56) #16 ; 9 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 32
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.e, i8 0, i64 16, i1 false)
  %i.f = getelementptr inbounds nuw i8, ptr %i.d, i64 48
  store ptr %i.f, ptr %i.d, align 16, !tbaa !24
  %i.g = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store i64 1, ptr %i.g, align 8, !tbaa !25
  %i.h = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 32
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.h, i8 0, i64 16, i1 false)
  store float 1.000000e+00, ptr %i.i, align 16, !tbaa !52
  %i.j = getelementptr inbounds nuw i8, ptr %i.d, i64 40
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.j, i8 0, i64 16, i1 false)
  store ptr %i.d, ptr %0, align 8, !tbaa !8
  %.pre = load ptr, ptr %1, align 8, !tbaa !36
  %.pre16 = load ptr, ptr %2, align 8, !tbaa !36
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.k = phi ptr [ %i.d, %bb.d ], [ %i.c, %bb.c ] ; 6 uses
  %5 = phi ptr [ %.pre16, %bb.d ], [ %i.b, %bb.c ] ; 4 uses
  %6 = phi ptr [ %.pre, %bb.d ], [ %i.a, %bb.c ]  ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #12
  store ptr %6, ptr %4, align 8, !tbaa !53
  %i.l = getelementptr inbounds nuw i8, ptr %4, i64 8
  store ptr %5, ptr %i.l, align 8, !tbaa !55
  %i.m = getelementptr inbounds nuw i8, ptr %i.k, i64 24
  %i.n = load i64, ptr %i.m, align 8, !tbaa !56
  %.not.not.i.i = icmp eq i64 %i.n, 0
  br i1 %.not.not.i.i, label %bb.f, label %bb.i

bb.f:                                             ; preds = %bb.e
  %i.o = getelementptr inbounds nuw i8, ptr %i.k, i64 16
  br label %bb.g

bb.g:                                             ; preds = %bb.h, %bb.f
  %.sroa.06.0.in.i.i = phi ptr [ %i.o, %bb.f ], [ %.sroa.06.0.i.i, %bb.h ]
  %.sroa.06.0.i.i = load ptr, ptr %.sroa.06.0.in.i.i, align 8, !tbaa !21 ; 4 uses
  %i.p = icmp eq ptr %.sroa.06.0.i.i, null
  br i1 %i.p, label %.loopexit, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.q = getelementptr inbounds nuw i8, ptr %.sroa.06.0.i.i, i64 8
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !53
  %i.s = icmp eq ptr %6, %i.r
  %i.t = getelementptr inbounds nuw i8, ptr %.sroa.06.0.i.i, i64 16
  %i.u = load ptr, ptr %i.t, align 8
  %i.v = icmp eq ptr %5, %i.u
  %i.w = select i1 %i.s, i1 %i.v, i1 false
  br i1 %i.w, label %_ZNSt13unordered_setISt4pairIP11lean_objectS2_EN4lean10expr_eq_fnILb0EE10key_hasherESt8equal_toIS3_E16mi_stl_allocatorIS3_EE4findERKS3_.exit, label %bb.g, !llvm.loop !57

bb.i:                                             ; preds = %bb.e
  %i.x = ptrtoint ptr %6 to i64
  %i.y = lshr i64 %i.x, 3
  %i.z = ptrtoint ptr %5 to i64
  %i.aa = lshr i64 %i.z, 3
  %i.ab = mul i64 %i.aa, -4132994306676758123     ; 2 uses
  %i.ac = lshr i64 %i.ab, 47
  %i.ad = xor i64 %i.y, %i.ac
  %i.ae = xor i64 %i.ad, %i.ab
  %i.af = xor i64 %i.ae, -4132994306676758123
  %i.ag = mul i64 %i.af, -4132994306676758123     ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  %i.ai = load i64, ptr %i.ah, align 8, !tbaa !25 ; 2 uses
  %i.aj = urem i64 %i.ag, %i.ai                   ; 2 uses
  %i.ak = load ptr, ptr %i.k, align 8, !tbaa !24
  %i.al = getelementptr inbounds nuw [8 x i8], ptr %i.ak, i64 %i.aj
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !58 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.am, null
  br i1 %.not.i.i.i.i, label %.loopexit, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !21 ; 2 uses
  %.phi.trans.insert.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.an, i64 24
  %.pre.i.i.i.i = load i64, ptr %.phi.trans.insert.i.i.i.i, align 8, !tbaa !59
  br label %bb.k

bb.k:                                             ; preds = %bb.l, %bb.j
  %i.ao = phi i64 [ %.pre.i.i.i.i, %bb.j ], [ %i.ba, %bb.l ]
  %i.ap = phi ptr [ %i.an, %bb.j ], [ %i.ay, %bb.l ] ; 3 uses
  %i.aq = icmp eq i64 %i.ag, %i.ao
  br i1 %i.aq, label %_ZNKSt8__detail15_Hashtable_baseISt4pairIP11lean_objectS3_ES4_NS_9_IdentityESt8equal_toIS4_EN4lean10expr_eq_fnILb0EE10key_hasherENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb1ELb1EEEE9_M_equalsERKS4_mRKNS_16_Hash_node_valueIS4_Lb1EEE.exit.i.i.i.i, label %_ZNKSt8__detail15_Hashtable_baseISt4pairIP11lean_objectS3_ES4_NS_9_IdentityESt8equal_toIS4_EN4lean10expr_eq_fnILb0EE10key_hasherENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb1ELb1EEEE9_M_equalsERKS4_mRKNS_16_Hash_node_valueIS4_Lb1EEE.exit.thread.i.i.i.i

_ZNKSt8__detail15_Hashtable_baseISt4pairIP11lean_objectS3_ES4_NS_9_IdentityESt8equal_toIS4_EN4lean10expr_eq_fnILb0EE10key_hasherENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb1ELb1EEEE9_M_equalsERKS4_mRKNS_16_Hash_node_valueIS4_Lb1EEE.exit.i.i.i.i: ; preds = %bb.k
  %i.ar = getelementptr inbounds nuw i8, ptr %i.ap, i64 8
  %i.as = load ptr, ptr %i.ar, align 8, !tbaa !53
  %i.at = icmp eq ptr %6, %i.as
  %i.au = getelementptr inbounds nuw i8, ptr %i.ap, i64 16
  %i.av = load ptr, ptr %i.au, align 8
  %i.aw = icmp eq ptr %5, %i.av
  %i.ax = select i1 %i.at, i1 %i.aw, i1 false
  br i1 %i.ax, label %_ZNSt13unordered_setISt4pairIP11lean_objectS2_EN4lean10expr_eq_fnILb0EE10key_hasherESt8equal_toIS3_E16mi_stl_allocatorIS3_EE4findERKS3_.exit, label %_ZNKSt8__detail15_Hashtable_baseISt4pairIP11lean_objectS3_ES4_NS_9_IdentityESt8equal_toIS4_EN4lean10expr_eq_fnILb0EE10key_hasherENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb1ELb1EEEE9_M_equalsERKS4_mRKNS_16_Hash_node_valueIS4_Lb1EEE.exit.thread.i.i.i.i

_ZNKSt8__detail15_Hashtable_baseISt4pairIP11lean_objectS3_ES4_NS_9_IdentityESt8equal_toIS4_EN4lean10expr_eq_fnILb0EE10key_hasherENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb1ELb1EEEE9_M_equalsERKS4_mRKNS_16_Hash_node_valueIS4_Lb1EEE.exit.thread.i.i.i.i: ; preds = %_ZNKSt8__detail15_Hashtable_baseISt4pairIP11lean_objectS3_ES4_NS_9_IdentityESt8equal_toIS4_EN4lean10expr_eq_fnILb0EE10key_hasherENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb1ELb1EEEE9_M_equalsERKS4_mRKNS_16_Hash_node_valueIS4_Lb1EEE.exit.i.i.i.i, %bb.k
  %i.ay = load ptr, ptr %i.ap, align 8, !tbaa !21 ; 3 uses
  %.not18.i.i.i.i = icmp eq ptr %i.ay, null
  br i1 %.not18.i.i.i.i, label %.loopexit, label %bb.l

bb.l:                                             ; preds = %_ZNKSt8__detail15_Hashtable_baseISt4pairIP11lean_objectS3_ES4_NS_9_IdentityESt8equal_toIS4_EN4lean10expr_eq_fnILb0EE10key_hasherENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb1ELb1EEEE9_M_equalsERKS4_mRKNS_16_Hash_node_valueIS4_Lb1EEE.exit.thread.i.i.i.i
  %i.az = getelementptr inbounds nuw i8, ptr %i.ay, i64 24
  %i.ba = load i64, ptr %i.az, align 8, !tbaa !59 ; 2 uses
  %i.bb = urem i64 %i.ba, %i.ai
  %.not19.i.i.i.i = icmp eq i64 %i.bb, %i.aj
  br i1 %.not19.i.i.i.i, label %bb.k, label %.loopexit, !llvm.loop !61

.loopexit:                                        ; preds = %_ZNKSt8__detail15_Hashtable_baseISt4pairIP11lean_objectS3_ES4_NS_9_IdentityESt8equal_toIS4_EN4lean10expr_eq_fnILb0EE10key_hasherENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb1ELb1EEEE9_M_equalsERKS4_mRKNS_16_Hash_node_valueIS4_Lb1EEE.exit.thread.i.i.i.i, %bb.l, %bb.g, %bb.i
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #12
  store ptr %i.k, ptr %3, align 8, !tbaa !62
  %i.bc = call { ptr, i8 } @_ZNSt10_HashtableISt4pairIP11lean_objectS2_ES3_16mi_stl_allocatorIS3_ENSt8__detail9_IdentityESt8equal_toIS3_EN4lean10expr_eq_fnILb0EE10key_hasherENS6_18_Mod_range_hashingENS6_20_Default_ranged_hashENS6_20_Prime_rehash_policyENS6_17_Hashtable_traitsILb1ELb1ELb1EEEE16_M_insert_uniqueIRKS3_SM_NS6_10_AllocNodeIS4_INS6_10_Hash_nodeIS3_Lb1EEEEEEEES0_INS6_14_Node_iteratorIS3_Lb1ELb1EEEbEOT_OT0_RKT1_(ptr noundef nonnull align 8 dereferenceable(56) %i.k, ptr noundef nonnull align 8 dereferenceable(16) %4, ptr noundef nonnull align 8 dereferenceable(16) %4, ptr noundef nonnull align 8 dereferenceable(8) %3) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #12
  br label %_ZNSt13unordered_setISt4pairIP11lean_objectS2_EN4lean10expr_eq_fnILb0EE10key_hasherESt8equal_toIS3_E16mi_stl_allocatorIS3_EE4findERKS3_.exit

_ZNSt13unordered_setISt4pairIP11lean_objectS2_EN4lean10expr_eq_fnILb0EE10key_hasherESt8equal_toIS3_E16mi_stl_allocatorIS3_EE4findERKS3_.exit: ; preds = %_ZNKSt8__detail15_Hashtable_baseISt4pairIP11lean_objectS3_ES4_NS_9_IdentityESt8equal_toIS4_EN4lean10expr_eq_fnILb0EE10key_hasherENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb1ELb1EEEE9_M_equalsERKS4_mRKNS_16_Hash_node_valueIS4_Lb1EEE.exit.i.i.i.i, %bb.h, %.loopexit
  %.0 = phi i1 [ false, %.loopexit ], [ true, %bb.h ], [ true, %_ZNKSt8__detail15_Hashtable_baseISt4pairIP11lean_objectS3_ES4_NS_9_IdentityESt8equal_toIS4_EN4lean10expr_eq_fnILb0EE10key_hasherENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb1ELb1EEEE9_M_equalsERKS4_mRKNS_16_Hash_node_valueIS4_Lb1EEE.exit.i.i.i.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #12
  br label %bb.m

bb.m:                                             ; preds = %bb.a, %bb.b, %_ZNSt13unordered_setISt4pairIP11lean_objectS2_EN4lean10expr_eq_fnILb0EE10key_hasherESt8equal_toIS3_E16mi_stl_allocatorIS3_EE4findERKS3_.exit
  %.1 = phi i1 [ %.0, %_ZNSt13unordered_setISt4pairIP11lean_objectS2_EN4lean10expr_eq_fnILb0EE10key_hasherESt8equal_toIS3_E16mi_stl_allocatorIS3_EE4findERKS3_.exit ], [ false, %bb.b ], [ false, %bb.a ]
  ret i1 %.1
}

declare ptr @__cxa_allocate_exception(i64) local_unnamed_addr

declare void @__cxa_free_exception(ptr) local_unnamed_addr

; Function Attrs: nounwind
declare void @_ZN4lean9throwableD2Ev(ptr noundef nonnull align 8 dead_on_return(40) dereferenceable(40)) unnamed_addr #8

; Function Attrs: cold noreturn
declare void @__cxa_throw(ptr, ptr, ptr) local_unnamed_addr #9

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZN4leaneqERKNS_8list_refINS_8pair_refINS_4nameENS_10data_valueEEEEES7_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) local_unnamed_addr #0 comdat {
bb.a:
  %.01523 = load ptr, ptr %1, align 8, !tbaa !35  ; 2 uses
  %.01624 = load ptr, ptr %0, align 8, !tbaa !35  ; 2 uses
  %i.a = ptrtoint ptr %.01624 to i64
  %i.b = trunc i64 %i.a to i1
  br i1 %i.b, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %bb.d
  %.01626 = phi ptr [ %.016, %bb.d ], [ %.01624, %bb.a ] ; 3 uses
  %.01525 = phi ptr [ %.015, %bb.d ], [ %.01523, %bb.a ] ; 4 uses
  %i.c = ptrtoint ptr %.01525 to i64
  %i.d = trunc i64 %i.c to i1
  br i1 %i.d, label %.critedge21, label %bb.b

bb.b:                                             ; preds = %.lr.ph
  %i.e = icmp eq ptr %.01626, %.01525
  br i1 %i.e, label %.critedge21, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = getelementptr inbounds nuw i8, ptr %.01626, i64 8 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %.01525, i64 8 ; 2 uses
  %i.h = load ptr, ptr %i.f, align 8, !tbaa !36
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  %i.j = load ptr, ptr %i.g, align 8, !tbaa !36
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  %i.l = load ptr, ptr %i.i, align 8, !tbaa !36
  %i.m = load ptr, ptr %i.k, align 8, !tbaa !36
  %i.n = tail call zeroext i8 @lean_name_eq(ptr noundef %i.l, ptr noundef %i.m)
  %.not.i.i = icmp eq i8 %i.n, 0
  br i1 %.not.i.i, label %.critedge21, label %_ZN4leanneINS_4nameENS_10data_valueEEEbRKNS_8pair_refIT_T0_EES8_.exit

_ZN4leanneINS_4nameENS_10data_valueEEEbRKNS_8pair_refIT_T0_EES8_.exit: ; preds = %bb.c
  %i.o = load ptr, ptr %i.f, align 8, !tbaa !36
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 16
  %i.q = load ptr, ptr %i.g, align 8, !tbaa !36
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 16
  %i.s = tail call noundef zeroext i1 @_ZN4leaneqERKNS_10data_valueES2_(ptr noundef nonnull align 8 dereferenceable(8) %i.p, ptr noundef nonnull align 8 dereferenceable(8) %i.r)
  br i1 %i.s, label %bb.d, label %.critedge21

bb.d:                                             ; preds = %_ZN4leanneINS_4nameENS_10data_valueEEEbRKNS_8pair_refIT_T0_EES8_.exit
  %i.t = getelementptr inbounds nuw i8, ptr %.01626, i64 16
  %i.u = getelementptr inbounds nuw i8, ptr %.01525, i64 16
  %.015 = load ptr, ptr %i.u, align 8, !tbaa !35  ; 2 uses
  %.016 = load ptr, ptr %i.t, align 8, !tbaa !35  ; 2 uses
  %i.v = ptrtoint ptr %.016 to i64
  %i.w = trunc i64 %i.v to i1
  br i1 %i.w, label %._crit_edge, label %.lr.ph, !llvm.loop !64

._crit_edge:                                      ; preds = %bb.d, %bb.a
  %.015.lcssa = phi ptr [ %.01523, %bb.a ], [ %.015, %bb.d ]
  %i.x = ptrtoint ptr %.015.lcssa to i64
  %i.y = trunc i64 %i.x to i1
  br label %.critedge21

.critedge21:                                      ; preds = %bb.c, %.lr.ph, %_ZN4leanneINS_4nameENS_10data_valueEEEbRKNS_8pair_refIT_T0_EES8_.exit, %bb.b, %._crit_edge
  %.2 = phi i1 [ %i.y, %._crit_edge ], [ false, %bb.c ], [ false, %.lr.ph ], [ true, %bb.b ], [ false, %_ZN4leanneINS_4nameENS_10data_valueEEEbRKNS_8pair_refIT_T0_EES8_.exit ]
  ret i1 %.2
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZN4lean7compareINS_5levelEZNS_10expr_eq_fnILb0EE5applyERKNS_4exprES6_jbEUlRKS1_S8_E_EEbRKNS_8list_refIT_EESE_OT0_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 1 dereferenceable(1) %2) local_unnamed_addr #0 comdat {
bb.a:
  %.sroa.09.019 = load ptr, ptr %1, align 8, !tbaa !35 ; 2 uses
  %.sroa.013.020 = load ptr, ptr %0, align 8, !tbaa !35 ; 2 uses
  %.not21 = icmp eq ptr %.sroa.013.020, inttoptr (i64 1 to ptr)
  br i1 %.not21, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %bb.c
  %.sroa.013.023 = phi ptr [ %.sroa.013.0, %bb.c ], [ %.sroa.013.020, %bb.a ] ; 2 uses
  %.sroa.09.022 = phi ptr [ %.sroa.09.0, %bb.c ], [ %.sroa.09.019, %bb.a ] ; 3 uses
  %.not17 = icmp eq ptr %.sroa.09.022, inttoptr (i64 1 to ptr)
  br i1 %.not17, label %.critedge, label %bb.b

bb.b:                                             ; preds = %.lr.ph
  %i.a = getelementptr inbounds nuw i8, ptr %.sroa.013.023, i64 8
  %i.b = getelementptr inbounds nuw i8, ptr %.sroa.09.022, i64 8
  %i.c = tail call noundef zeroext i1 @_ZN4leaneqERKNS_5levelES2_(ptr noundef nonnull align 8 dereferenceable(8) %i.a, ptr noundef nonnull align 8 dereferenceable(8) %i.b)
  br i1 %i.c, label %bb.c, label %.critedge

bb.c:                                             ; preds = %bb.b
  %i.d = getelementptr inbounds nuw i8, ptr %.sroa.013.023, i64 16
  %i.e = getelementptr inbounds nuw i8, ptr %.sroa.09.022, i64 16
  %.sroa.09.0 = load ptr, ptr %i.e, align 8, !tbaa !35 ; 2 uses
  %.sroa.013.0 = load ptr, ptr %i.d, align 8, !tbaa !35 ; 2 uses
  %.not = icmp eq ptr %.sroa.013.0, inttoptr (i64 1 to ptr)
  br i1 %.not, label %._crit_edge, label %.lr.ph, !llvm.loop !65

._crit_edge:                                      ; preds = %bb.c, %bb.a
  %.sroa.09.0.lcssa = phi ptr [ %.sroa.09.019, %bb.a ], [ %.sroa.09.0, %bb.c ]
  %i.f = icmp eq ptr %.sroa.09.0.lcssa, inttoptr (i64 1 to ptr)
  br label %.critedge

.critedge:                                        ; preds = %.lr.ph, %bb.b, %._crit_edge
  %.0 = phi i1 [ %i.f, %._crit_edge ], [ false, %bb.b ], [ false, %.lr.ph ]
  ret i1 %.0
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN4lean10expr_eq_fnILb0EE12check_systemEj(ptr noundef nonnull align 8 dereferenceable(24) %0, i32 noundef %1) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = zext i32 %1 to i64
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load i64, ptr %i.b, align 8, !tbaa !40   ; 2 uses
  %i.d = icmp uge i64 %i.c, %i.a
  %.not = icmp eq i64 %i.c, 0
  %or.cond = or i1 %i.d, %.not
  br i1 %or.cond, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = tail call ptr @__cxa_allocate_exception(i64 72) #12 ; 3 uses
  invoke void @_ZN4lean21stack_space_exceptionC1EPKc(ptr noundef nonnull align 8 dereferenceable(72) %i.e, ptr noundef nonnull @.str.1)
          to label %bb.c unwind label %bb.d

bb.c:                                             ; preds = %bb.b
  tail call void @__cxa_throw(ptr nonnull %i.e, ptr nonnull @_ZTIN4lean21stack_space_exceptionE, ptr nonnull @_ZN4lean21stack_space_exceptionD2Ev) #15
  unreachable

bb.d:                                             ; preds = %bb.b
  %i.f = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr nonnull %i.e) #12
  resume { ptr, i32 } %i.f

bb.e:                                             ; preds = %bb.a
  ret void
}

declare zeroext i1 @lean_nat_big_eq(ptr noundef, ptr noundef) local_unnamed_addr #4

declare zeroext i8 @lean_name_eq(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: nobuiltin allocsize(0)
declare noundef nonnull ptr @_Znwm(i64 noundef) local_unnamed_addr #10

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #1

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden { ptr, i8 } @_ZNSt10_HashtableISt4pairIP11lean_objectS2_ES3_16mi_stl_allocatorIS3_ENSt8__detail9_IdentityESt8equal_toIS3_EN4lean10expr_eq_fnILb0EE10key_hasherENS6_18_Mod_range_hashingENS6_20_Default_ranged_hashENS6_20_Prime_rehash_policyENS6_17_Hashtable_traitsILb1ELb1ELb1EEEE16_M_insert_uniqueIRKS3_SM_NS6_10_AllocNodeIS4_INS6_10_Hash_nodeIS3_Lb1EEEEEEEES0_INS6_14_Node_iteratorIS3_Lb1ELb1EEEbEOT_OT0_RKT1_(ptr noundef nonnull align 8 dereferenceable(56) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef nonnull align 8 dereferenceable(8) %3) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 4 uses
  %i.c = load i64, ptr %i.b, align 8, !tbaa !56
  %.not.not = icmp eq i64 %i.c, 0                 ; 2 uses
  %.pre = load ptr, ptr %1, align 8               ; 3 uses
  br i1 %.not.not, label %bb.b, label %..thread_crit_edge

..thread_crit_edge:                               ; preds = %bb.a
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.pre46 = load ptr, ptr %.phi.trans.insert, align 8, !tbaa !55
  br label %.thread

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.f = load ptr, ptr %i.e, align 8              ; 2 uses
end_hunk_0
begin_hunk_1_@_ZN4lean10expr_eq_fnILb1EE5applyERKNS_4exprES4_jb:bb.a
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bo, i64 24
  %i.bq = tail call noundef zeroext i1 @_ZN4lean10expr_eq_fnILb1EE5applyERKNS_4exprES4_jb(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(8) %i.bn, ptr noundef nonnull align 8 dereferenceable(8) %i.bp, i32 noundef %i.aw, i1 noundef zeroext false)
  br i1 %i.bq, label %bb.s, label %_ZN4leaneqERKNS_3natES2_.exit

bb.s:                                             ; preds = %bb.r
  %i.br = load ptr, ptr %.tr104178, align 8, !tbaa !36
  %i.bs = getelementptr inbounds nuw i8, ptr %i.br, i64 8
  %i.bt = load ptr, ptr %.tr105179, align 8, !tbaa !36
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bt, i64 8
  %i.bv = load ptr, ptr %i.bs, align 8, !tbaa !36
  %i.bw = load ptr, ptr %i.bu, align 8, !tbaa !36
  %i.bx = tail call zeroext i8 @lean_name_eq(ptr noundef %i.bv, ptr noundef %i.bw)
  %.not103 = icmp eq i8 %i.bx, 0
  br i1 %.not103, label %_ZN4leaneqERKNS_3natES2_.exit, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.by = load ptr, ptr %.tr104178, align 8, !tbaa !36
  %i.bz = getelementptr inbounds nuw i8, ptr %i.by, i64 16
  %i.ca = load ptr, ptr %.tr105179, align 8, !tbaa !36
  %i.cb = getelementptr inbounds nuw i8, ptr %i.ca, i64 16
  %i.cc = load ptr, ptr %i.bz, align 8, !tbaa !36 ; 3 uses
  %i.cd = load ptr, ptr %i.cb, align 8, !tbaa !36 ; 3 uses
  %i.ce = ptrtoint ptr %i.cc to i64
  %i.cf = ptrtoint ptr %i.cd to i64
  %i.cg = and i64 %i.ce, 1
  %i.ch = and i64 %i.cg, %i.cf
  %or.cond.not.i.i92 = icmp eq i64 %i.ch, 0
  br i1 %or.cond.not.i.i92, label %.critedge.i.i.i94, label %bb.u, !prof !39

bb.u:                                             ; preds = %bb.t
  %i.ci = icmp eq ptr %i.cc, %i.cd
  br label %_ZN4leaneqERKNS_3natES2_.exit

.critedge.i.i.i94:                                ; preds = %bb.t
  %i.cj = tail call zeroext i1 @lean_nat_big_eq(ptr noundef %i.cc, ptr noundef %i.cd)
  br label %_ZN4leaneqERKNS_3natES2_.exit

bb.v:                                             ; preds = %bb.n
  %i.ck = getelementptr inbounds nuw i8, ptr %i.ax, i64 8
  %i.cl = load ptr, ptr %.tr105179, align 8, !tbaa !36
  %i.cm = getelementptr inbounds nuw i8, ptr %i.cl, i64 8
  %i.cn = load ptr, ptr %i.ck, align 8, !tbaa !36
  %i.co = load ptr, ptr %i.cm, align 8, !tbaa !36
  %i.cp = tail call zeroext i8 @lean_name_eq(ptr noundef %i.cn, ptr noundef %i.co)
  %.not102 = icmp eq i8 %i.cp, 0
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #12
  br i1 %.not102, label %bb.x, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.cq = load ptr, ptr %.tr104178, align 8, !tbaa !36
  %i.cr = getelementptr inbounds nuw i8, ptr %i.cq, i64 16
  %i.cs = load ptr, ptr %.tr105179, align 8, !tbaa !36
  %i.ct = getelementptr inbounds nuw i8, ptr %i.cs, i64 16
  %i.cu = call noundef zeroext i1 @_ZN4lean7compareINS_5levelEZNS_10expr_eq_fnILb1EE5applyERKNS_4exprES6_jbEUlRKS1_S8_E_EEbRKNS_8list_refIT_EESE_OT0_(ptr noundef nonnull align 8 dereferenceable(8) %i.cr, ptr noundef nonnull align 8 dereferenceable(8) %i.ct, ptr noundef nonnull align 1 dereferenceable(1) %5)
  br label %bb.x

bb.x:                                             ; preds = %bb.w, %bb.v
  %i.cv = phi i1 [ false, %bb.v ], [ %i.cu, %bb.w ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #12
  br label %_ZN4leaneqERKNS_3natES2_.exit

bb.y:                                             ; preds = %bb.n
  tail call void @_ZN4lean10expr_eq_fnILb1EE12check_systemEj(ptr noundef nonnull align 8 dereferenceable(24) %0, i32 noundef %i.aw)
  %i.cw = load ptr, ptr %.tr104178, align 8, !tbaa !36
  %i.cx = getelementptr inbounds nuw i8, ptr %i.cw, i64 16
  %i.cy = load ptr, ptr %.tr105179, align 8, !tbaa !36
  %i.cz = getelementptr inbounds nuw i8, ptr %i.cy, i64 16
  %i.da = tail call noundef zeroext i1 @_ZN4lean10expr_eq_fnILb1EE5applyERKNS_4exprES4_jb(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(8) %i.cx, ptr noundef nonnull align 8 dereferenceable(8) %i.cz, i32 noundef %i.aw, i1 noundef zeroext false)
  br i1 %i.da, label %.preheader, label %_ZN4leaneqERKNS_3natES2_.exit

.preheader:                                       ; preds = %bb.y, %bb.aa
  %.pn.in = phi ptr [ %.082, %bb.aa ], [ %.tr104178, %bb.y ]
  %.pn101.in = phi ptr [ %.0, %bb.aa ], [ %.tr105179, %bb.y ]
  %.pn101 = load ptr, ptr %.pn101.in, align 8, !tbaa !36
  %.0 = getelementptr inbounds nuw i8, ptr %.pn101, i64 8 ; 3 uses
  %.pn = load ptr, ptr %.pn.in, align 8, !tbaa !36
  %.082 = getelementptr inbounds nuw i8, ptr %.pn, i64 8 ; 3 uses
  %i.db = load ptr, ptr %.082, align 8, !tbaa !36 ; 4 uses
  %i.dc = getelementptr i8, ptr %i.db, i64 4
  %.val.i.i.i.i = load i32, ptr %i.dc, align 4    ; 2 uses
  %.mask.i = and i32 %.val.i.i.i.i, -16777216
  %i.dd = icmp eq i32 %.mask.i, 83886080
  %i.de = load ptr, ptr %.0, align 8, !tbaa !36   ; 4 uses
  br i1 %i.dd, label %bb.z, label %tailrecurse.loopexit

bb.z:                                             ; preds = %.preheader
  %i.df = getelementptr i8, ptr %i.de, i64 4
  %.val.i.i.i.i96 = load i32, ptr %i.df, align 4
  %.mask.i97 = and i32 %.val.i.i.i.i96, -16777216
  %i.dg = icmp eq i32 %.mask.i97, 83886080
  br i1 %i.dg, label %bb.aa, label %_ZN4leaneqERKNS_3natES2_.exit

bb.aa:                                            ; preds = %bb.z
  %i.dh = getelementptr inbounds nuw i8, ptr %i.db, i64 16
  %i.di = getelementptr inbounds nuw i8, ptr %i.de, i64 16
  %i.dj = tail call noundef zeroext i1 @_ZN4lean10expr_eq_fnILb1EE5applyERKNS_4exprES4_jb(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(8) %i.dh, ptr noundef nonnull align 8 dereferenceable(8) %i.di, i32 noundef %i.aw, i1 noundef zeroext false)
  br i1 %i.dj, label %.preheader, label %_ZN4leaneqERKNS_3natES2_.exit, !llvm.loop !75

bb.ab:                                            ; preds = %bb.n, %bb.n
  tail call void @_ZN4lean10expr_eq_fnILb1EE12check_systemEj(ptr noundef nonnull align 8 dereferenceable(24) %0, i32 noundef %i.aw)
  %i.dk = load ptr, ptr %.tr104178, align 8, !tbaa !36
  %i.dl = getelementptr inbounds nuw i8, ptr %i.dk, i64 16
  %i.dm = load ptr, ptr %.tr105179, align 8, !tbaa !36
  %i.dn = getelementptr inbounds nuw i8, ptr %i.dm, i64 16
  %i.do = tail call noundef zeroext i1 @_ZN4lean10expr_eq_fnILb1EE5applyERKNS_4exprES4_jb(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(8) %i.dl, ptr noundef nonnull align 8 dereferenceable(8) %i.dn, i32 noundef %i.aw, i1 noundef zeroext false)
  br i1 %i.do, label %bb.ac, label %_ZN4leaneqERKNS_3natES2_.exit

bb.ac:                                            ; preds = %bb.ab
  %i.dp = load ptr, ptr %.tr104178, align 8, !tbaa !36
  %i.dq = getelementptr inbounds nuw i8, ptr %i.dp, i64 24
  %i.dr = load ptr, ptr %.tr105179, align 8, !tbaa !36
  %i.ds = getelementptr inbounds nuw i8, ptr %i.dr, i64 24
  %i.dt = tail call noundef zeroext i1 @_ZN4lean10expr_eq_fnILb1EE5applyERKNS_4exprES4_jb(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(8) %i.dq, ptr noundef nonnull align 8 dereferenceable(8) %i.ds, i32 noundef %i.aw, i1 noundef zeroext false)
  br i1 %i.dt, label %bb.ad, label %_ZN4leaneqERKNS_3natES2_.exit

bb.ad:                                            ; preds = %bb.ac
  %i.du = load ptr, ptr %.tr104178, align 8, !tbaa !36
  %i.dv = getelementptr inbounds nuw i8, ptr %i.du, i64 8
  %i.dw = load ptr, ptr %.tr105179, align 8, !tbaa !36
  %i.dx = getelementptr inbounds nuw i8, ptr %i.dw, i64 8
  %i.dy = load ptr, ptr %i.dv, align 8, !tbaa !36
  %i.dz = load ptr, ptr %i.dx, align 8, !tbaa !36
  %i.ea = tail call zeroext i8 @lean_name_eq(ptr noundef %i.dy, ptr noundef %i.dz)
  %.not100 = icmp eq i8 %i.ea, 0
  br i1 %.not100, label %_ZN4leaneqERKNS_3natES2_.exit, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.eb = tail call noundef i32 @_ZN4lean12binding_infoERKNS_4exprE(ptr noundef nonnull align 8 dereferenceable(8) %.tr104178)
  %i.ec = tail call noundef i32 @_ZN4lean12binding_infoERKNS_4exprE(ptr noundef nonnull align 8 dereferenceable(8) %.tr105179)
  %i.ed = icmp eq i32 %i.eb, %i.ec
  br label %_ZN4leaneqERKNS_3natES2_.exit

bb.af:                                            ; preds = %bb.n
  tail call void @_ZN4lean10expr_eq_fnILb1EE12check_systemEj(ptr noundef nonnull align 8 dereferenceable(24) %0, i32 noundef %i.aw)
  %i.ee = load ptr, ptr %.tr104178, align 8, !tbaa !36
  %i.ef = getelementptr inbounds nuw i8, ptr %i.ee, i64 16
  %i.eg = load ptr, ptr %.tr105179, align 8, !tbaa !36
  %i.eh = getelementptr inbounds nuw i8, ptr %i.eg, i64 16
  %i.ei = tail call noundef zeroext i1 @_ZN4lean10expr_eq_fnILb1EE5applyERKNS_4exprES4_jb(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(8) %i.ef, ptr noundef nonnull align 8 dereferenceable(8) %i.eh, i32 noundef %i.aw, i1 noundef zeroext false)
  br i1 %i.ei, label %bb.ag, label %_ZN4leaneqERKNS_3natES2_.exit

bb.ag:                                            ; preds = %bb.af
  %i.ej = load ptr, ptr %.tr104178, align 8, !tbaa !36
  %i.ek = getelementptr inbounds nuw i8, ptr %i.ej, i64 24
  %i.el = load ptr, ptr %.tr105179, align 8, !tbaa !36
  %i.em = getelementptr inbounds nuw i8, ptr %i.el, i64 24
  %i.en = tail call noundef zeroext i1 @_ZN4lean10expr_eq_fnILb1EE5applyERKNS_4exprES4_jb(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(8) %i.ek, ptr noundef nonnull align 8 dereferenceable(8) %i.em, i32 noundef %i.aw, i1 noundef zeroext false)
  br i1 %i.en, label %bb.ah, label %_ZN4leaneqERKNS_3natES2_.exit

bb.ah:                                            ; preds = %bb.ag
  %i.eo = load ptr, ptr %.tr104178, align 8, !tbaa !36
  %i.ep = getelementptr inbounds nuw i8, ptr %i.eo, i64 32
  %i.eq = load ptr, ptr %.tr105179, align 8, !tbaa !36
  %i.er = getelementptr inbounds nuw i8, ptr %i.eq, i64 32
  %i.es = tail call noundef zeroext i1 @_ZN4lean10expr_eq_fnILb1EE5applyERKNS_4exprES4_jb(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(8) %i.ep, ptr noundef nonnull align 8 dereferenceable(8) %i.er, i32 noundef %i.aw, i1 noundef zeroext false)
  br i1 %i.es, label %bb.ai, label %_ZN4leaneqERKNS_3natES2_.exit

bb.ai:                                            ; preds = %bb.ah
  %i.et = load ptr, ptr %.tr104178, align 8, !tbaa !36 ; 2 uses
  %i.eu = getelementptr i8, ptr %i.et, i64 48
  %.val.i = load i8, ptr %i.eu, align 1, !tbaa !46
  %i.ev = icmp ne i8 %.val.i, 0
  %i.ew = load ptr, ptr %.tr105179, align 8, !tbaa !36 ; 2 uses
  %i.ex = getelementptr i8, ptr %i.ew, i64 48
  %.val.i98 = load i8, ptr %i.ex, align 1, !tbaa !46
  %i.ey = icmp ne i8 %.val.i98, 0
  %i.ez = xor i1 %i.ev, %i.ey
  br i1 %i.ez, label %_ZN4leaneqERKNS_3natES2_.exit, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  %i.fa = getelementptr inbounds nuw i8, ptr %i.et, i64 8
  %i.fb = getelementptr inbounds nuw i8, ptr %i.ew, i64 8
  %i.fc = load ptr, ptr %i.fa, align 8, !tbaa !36
  %i.fd = load ptr, ptr %i.fb, align 8, !tbaa !36
  %i.fe = tail call zeroext i8 @lean_name_eq(ptr noundef %i.fc, ptr noundef %i.fd)
  %i.ff = icmp ne i8 %i.fe, 0
  br label %_ZN4leaneqERKNS_3natES2_.exit

bb.ak:                                            ; preds = %bb.n
  %i.fg = tail call ptr @__cxa_allocate_exception(i64 40) #12 ; 5 uses
  %i.fh = getelementptr inbounds nuw i8, ptr %i.fg, i64 8
  %i.fi = getelementptr inbounds nuw i8, ptr %i.fg, i64 24 ; 2 uses
  store ptr %i.fi, ptr %i.fh, align 8, !tbaa !41
  %i.fj = getelementptr inbounds nuw i8, ptr %i.fg, i64 16
  store i64 0, ptr %i.fj, align 8, !tbaa !44
  store i8 0, ptr %i.fi, align 8, !tbaa !46
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN4lean19unreachable_reachedE, i64 16), ptr %i.fg, align 8, !tbaa !47
  tail call void @__cxa_throw(ptr nonnull %i.fg, ptr nonnull @_ZTIN4lean19unreachable_reachedE, ptr nonnull @_ZN4lean9throwableD2Ev) #15
  unreachable

_ZN4leaneqERKNS_3natES2_.exit:                    ; preds = %tailrecurse.loopexit, %bb.b, %bb.c, %bb.m, %bb.y, %bb.z, %bb.aa, %bb.a, %.critedge.i.i.i94, %bb.u, %.critedge.i.i.i, %bb.f, %bb.af, %bb.ag, %bb.ah, %bb.ai, %bb.aj, %bb.ab, %bb.ac, %bb.ad, %bb.ae, %bb.r, %bb.s, %bb.p, %bb.q, %bb.x, %bb.j, %bb.i, %bb.h, %bb.g
  %.1 = phi i1 [ %i.aq, %bb.j ], [ false, %bb.ai ], [ false, %bb.ah ], [ false, %bb.ag ], [ %i.bm, %bb.q ], [ %i.cv, %bb.x ], [ false, %bb.af ], [ %i.ag, %.critedge.i.i.i ], [ %i.af, %bb.f ], [ %i.ed, %bb.ae ], [ true, %bb.a ], [ %i.ff, %bb.aj ], [ %i.ah, %bb.g ], [ %i.al, %bb.h ], [ %i.ap, %bb.i ], [ false, %bb.p ], [ false, %bb.s ], [ false, %bb.r ], [ %i.ci, %bb.u ], [ %i.cj, %.critedge.i.i.i94 ], [ false, %bb.ad ], [ false, %bb.ac ], [ false, %bb.ab ], [ false, %bb.z ], [ false, %bb.aa ], [ true, %bb.m ], [ false, %bb.c ], [ true, %tailrecurse.loopexit ], [ false, %bb.y ], [ false, %bb.b ]
  ret i1 %.1
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZN4lean10expr_eq_fnILb1EE11check_cacheERKNS_4exprES4_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(8) %2) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %3 = alloca %"struct.std::__detail::_AllocNode", align 8 ; 4 uses
  %4 = alloca %"struct.std::pair", align 8        ; 6 uses
  %i.a = load ptr, ptr %1, align 8, !tbaa !36     ; 2 uses
  %.val.i.i = load i32, ptr %i.a, align 4, !tbaa !50
  %.not10 = icmp eq i32 %.val.i.i, 1
  br i1 %.not10, label %bb.m, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = load ptr, ptr %2, align 8, !tbaa !36     ; 2 uses
  %.val.i.i6 = load i32, ptr %i.b, align 4, !tbaa !50
  %.not11 = icmp eq i32 %.val.i.i6, 1
  br i1 %.not11, label %bb.m, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.c = load ptr, ptr %0, align 8, !tbaa !27     ; 2 uses
  %.not = icmp eq ptr %i.c, null
  br i1 %.not, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.d = tail call noalias noundef nonnull dereferenceable(56) ptr @_Znwm(i64 noundef 56) #16 ; 9 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 32
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.e, i8 0, i64 16, i1 false)
  %i.f = getelementptr inbounds nuw i8, ptr %i.d, i64 48
  store ptr %i.f, ptr %i.d, align 16, !tbaa !32
  %i.g = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store i64 1, ptr %i.g, align 8, !tbaa !33
  %i.h = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 32
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.h, i8 0, i64 16, i1 false)
  store float 1.000000e+00, ptr %i.i, align 16, !tbaa !52
  %i.j = getelementptr inbounds nuw i8, ptr %i.d, i64 40
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.j, i8 0, i64 16, i1 false)
  store ptr %i.d, ptr %0, align 8, !tbaa !27
  %.pre = load ptr, ptr %1, align 8, !tbaa !36
  %.pre16 = load ptr, ptr %2, align 8, !tbaa !36
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.k = phi ptr [ %i.d, %bb.d ], [ %i.c, %bb.c ] ; 6 uses
  %5 = phi ptr [ %.pre16, %bb.d ], [ %i.b, %bb.c ] ; 4 uses
  %6 = phi ptr [ %.pre, %bb.d ], [ %i.a, %bb.c ]  ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #12
  store ptr %6, ptr %4, align 8, !tbaa !53
  %i.l = getelementptr inbounds nuw i8, ptr %4, i64 8
  store ptr %5, ptr %i.l, align 8, !tbaa !55
  %i.m = getelementptr inbounds nuw i8, ptr %i.k, i64 24
  %i.n = load i64, ptr %i.m, align 8, !tbaa !76
  %.not.not.i.i = icmp eq i64 %i.n, 0
  br i1 %.not.not.i.i, label %bb.f, label %bb.i

bb.f:                                             ; preds = %bb.e
  %i.o = getelementptr inbounds nuw i8, ptr %i.k, i64 16
  br label %bb.g

bb.g:                                             ; preds = %bb.h, %bb.f
  %.sroa.06.0.in.i.i = phi ptr [ %i.o, %bb.f ], [ %.sroa.06.0.i.i, %bb.h ]
  %.sroa.06.0.i.i = load ptr, ptr %.sroa.06.0.in.i.i, align 8, !tbaa !21 ; 4 uses
  %i.p = icmp eq ptr %.sroa.06.0.i.i, null
  br i1 %i.p, label %.loopexit, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.q = getelementptr inbounds nuw i8, ptr %.sroa.06.0.i.i, i64 8
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !53
  %i.s = icmp eq ptr %6, %i.r
  %i.t = getelementptr inbounds nuw i8, ptr %.sroa.06.0.i.i, i64 16
  %i.u = load ptr, ptr %i.t, align 8
  %i.v = icmp eq ptr %5, %i.u
  %i.w = select i1 %i.s, i1 %i.v, i1 false
  br i1 %i.w, label %_ZNSt13unordered_setISt4pairIP11lean_objectS2_EN4lean10expr_eq_fnILb1EE10key_hasherESt8equal_toIS3_E16mi_stl_allocatorIS3_EE4findERKS3_.exit, label %bb.g, !llvm.loop !77

bb.i:                                             ; preds = %bb.e
  %i.x = ptrtoint ptr %6 to i64
  %i.y = lshr i64 %i.x, 3
  %i.z = ptrtoint ptr %5 to i64
  %i.aa = lshr i64 %i.z, 3
  %i.ab = mul i64 %i.aa, -4132994306676758123     ; 2 uses
  %i.ac = lshr i64 %i.ab, 47
  %i.ad = xor i64 %i.y, %i.ac
  %i.ae = xor i64 %i.ad, %i.ab
  %i.af = xor i64 %i.ae, -4132994306676758123
  %i.ag = mul i64 %i.af, -4132994306676758123     ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  %i.ai = load i64, ptr %i.ah, align 8, !tbaa !33 ; 2 uses
  %i.aj = urem i64 %i.ag, %i.ai                   ; 2 uses
  %i.ak = load ptr, ptr %i.k, align 8, !tbaa !32
  %i.al = getelementptr inbounds nuw [8 x i8], ptr %i.ak, i64 %i.aj
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !58 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.am, null
  br i1 %.not.i.i.i.i, label %.loopexit, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !21 ; 2 uses
  %.phi.trans.insert.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.an, i64 24
  %.pre.i.i.i.i = load i64, ptr %.phi.trans.insert.i.i.i.i, align 8, !tbaa !59
  br label %bb.k

bb.k:                                             ; preds = %bb.l, %bb.j
  %i.ao = phi i64 [ %.pre.i.i.i.i, %bb.j ], [ %i.ba, %bb.l ]
  %i.ap = phi ptr [ %i.an, %bb.j ], [ %i.ay, %bb.l ] ; 3 uses
  %i.aq = icmp eq i64 %i.ag, %i.ao
  br i1 %i.aq, label %_ZNKSt8__detail15_Hashtable_baseISt4pairIP11lean_objectS3_ES4_NS_9_IdentityESt8equal_toIS4_EN4lean10expr_eq_fnILb1EE10key_hasherENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb1ELb1EEEE9_M_equalsERKS4_mRKNS_16_Hash_node_valueIS4_Lb1EEE.exit.i.i.i.i, label %_ZNKSt8__detail15_Hashtable_baseISt4pairIP11lean_objectS3_ES4_NS_9_IdentityESt8equal_toIS4_EN4lean10expr_eq_fnILb1EE10key_hasherENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb1ELb1EEEE9_M_equalsERKS4_mRKNS_16_Hash_node_valueIS4_Lb1EEE.exit.thread.i.i.i.i

_ZNKSt8__detail15_Hashtable_baseISt4pairIP11lean_objectS3_ES4_NS_9_IdentityESt8equal_toIS4_EN4lean10expr_eq_fnILb1EE10key_hasherENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb1ELb1EEEE9_M_equalsERKS4_mRKNS_16_Hash_node_valueIS4_Lb1EEE.exit.i.i.i.i: ; preds = %bb.k
  %i.ar = getelementptr inbounds nuw i8, ptr %i.ap, i64 8
  %i.as = load ptr, ptr %i.ar, align 8, !tbaa !53
  %i.at = icmp eq ptr %6, %i.as
  %i.au = getelementptr inbounds nuw i8, ptr %i.ap, i64 16
  %i.av = load ptr, ptr %i.au, align 8
  %i.aw = icmp eq ptr %5, %i.av
  %i.ax = select i1 %i.at, i1 %i.aw, i1 false
  br i1 %i.ax, label %_ZNSt13unordered_setISt4pairIP11lean_objectS2_EN4lean10expr_eq_fnILb1EE10key_hasherESt8equal_toIS3_E16mi_stl_allocatorIS3_EE4findERKS3_.exit, label %_ZNKSt8__detail15_Hashtable_baseISt4pairIP11lean_objectS3_ES4_NS_9_IdentityESt8equal_toIS4_EN4lean10expr_eq_fnILb1EE10key_hasherENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb1ELb1EEEE9_M_equalsERKS4_mRKNS_16_Hash_node_valueIS4_Lb1EEE.exit.thread.i.i.i.i

_ZNKSt8__detail15_Hashtable_baseISt4pairIP11lean_objectS3_ES4_NS_9_IdentityESt8equal_toIS4_EN4lean10expr_eq_fnILb1EE10key_hasherENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb1ELb1EEEE9_M_equalsERKS4_mRKNS_16_Hash_node_valueIS4_Lb1EEE.exit.thread.i.i.i.i: ; preds = %_ZNKSt8__detail15_Hashtable_baseISt4pairIP11lean_objectS3_ES4_NS_9_IdentityESt8equal_toIS4_EN4lean10expr_eq_fnILb1EE10key_hasherENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb1ELb1EEEE9_M_equalsERKS4_mRKNS_16_Hash_node_valueIS4_Lb1EEE.exit.i.i.i.i, %bb.k
  %i.ay = load ptr, ptr %i.ap, align 8, !tbaa !21 ; 3 uses
  %.not18.i.i.i.i = icmp eq ptr %i.ay, null
  br i1 %.not18.i.i.i.i, label %.loopexit, label %bb.l

bb.l:                                             ; preds = %_ZNKSt8__detail15_Hashtable_baseISt4pairIP11lean_objectS3_ES4_NS_9_IdentityESt8equal_toIS4_EN4lean10expr_eq_fnILb1EE10key_hasherENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb1ELb1EEEE9_M_equalsERKS4_mRKNS_16_Hash_node_valueIS4_Lb1EEE.exit.thread.i.i.i.i
  %i.az = getelementptr inbounds nuw i8, ptr %i.ay, i64 24
  %i.ba = load i64, ptr %i.az, align 8, !tbaa !59 ; 2 uses
  %i.bb = urem i64 %i.ba, %i.ai
  %.not19.i.i.i.i = icmp eq i64 %i.bb, %i.aj
  br i1 %.not19.i.i.i.i, label %bb.k, label %.loopexit, !llvm.loop !78

.loopexit:                                        ; preds = %_ZNKSt8__detail15_Hashtable_baseISt4pairIP11lean_objectS3_ES4_NS_9_IdentityESt8equal_toIS4_EN4lean10expr_eq_fnILb1EE10key_hasherENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb1ELb1EEEE9_M_equalsERKS4_mRKNS_16_Hash_node_valueIS4_Lb1EEE.exit.thread.i.i.i.i, %bb.l, %bb.g, %bb.i
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #12
  store ptr %i.k, ptr %3, align 8, !tbaa !62
  %i.bc = call { ptr, i8 } @_ZNSt10_HashtableISt4pairIP11lean_objectS2_ES3_16mi_stl_allocatorIS3_ENSt8__detail9_IdentityESt8equal_toIS3_EN4lean10expr_eq_fnILb1EE10key_hasherENS6_18_Mod_range_hashingENS6_20_Default_ranged_hashENS6_20_Prime_rehash_policyENS6_17_Hashtable_traitsILb1ELb1ELb1EEEE16_M_insert_uniqueIRKS3_SM_NS6_10_AllocNodeIS4_INS6_10_Hash_nodeIS3_Lb1EEEEEEEES0_INS6_14_Node_iteratorIS3_Lb1ELb1EEEbEOT_OT0_RKT1_(ptr noundef nonnull align 8 dereferenceable(56) %i.k, ptr noundef nonnull align 8 dereferenceable(16) %4, ptr noundef nonnull align 8 dereferenceable(16) %4, ptr noundef nonnull align 8 dereferenceable(8) %3) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #12
  br label %_ZNSt13unordered_setISt4pairIP11lean_objectS2_EN4lean10expr_eq_fnILb1EE10key_hasherESt8equal_toIS3_E16mi_stl_allocatorIS3_EE4findERKS3_.exit

_ZNSt13unordered_setISt4pairIP11lean_objectS2_EN4lean10expr_eq_fnILb1EE10key_hasherESt8equal_toIS3_E16mi_stl_allocatorIS3_EE4findERKS3_.exit: ; preds = %_ZNKSt8__detail15_Hashtable_baseISt4pairIP11lean_objectS3_ES4_NS_9_IdentityESt8equal_toIS4_EN4lean10expr_eq_fnILb1EE10key_hasherENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb1ELb1EEEE9_M_equalsERKS4_mRKNS_16_Hash_node_valueIS4_Lb1EEE.exit.i.i.i.i, %bb.h, %.loopexit
  %.0 = phi i1 [ false, %.loopexit ], [ true, %bb.h ], [ true, %_ZNKSt8__detail15_Hashtable_baseISt4pairIP11lean_objectS3_ES4_NS_9_IdentityESt8equal_toIS4_EN4lean10expr_eq_fnILb1EE10key_hasherENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb1ELb1EEEE9_M_equalsERKS4_mRKNS_16_Hash_node_valueIS4_Lb1EEE.exit.i.i.i.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #12
  br label %bb.m

bb.m:                                             ; preds = %bb.a, %bb.b, %_ZNSt13unordered_setISt4pairIP11lean_objectS2_EN4lean10expr_eq_fnILb1EE10key_hasherESt8equal_toIS3_E16mi_stl_allocatorIS3_EE4findERKS3_.exit
  %.1 = phi i1 [ %.0, %_ZNSt13unordered_setISt4pairIP11lean_objectS2_EN4lean10expr_eq_fnILb1EE10key_hasherESt8equal_toIS3_E16mi_stl_allocatorIS3_EE4findERKS3_.exit ], [ false, %bb.b ], [ false, %bb.a ]
  ret i1 %.1
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZN4lean7compareINS_5levelEZNS_10expr_eq_fnILb1EE5applyERKNS_4exprES6_jbEUlRKS1_S8_E_EEbRKNS_8list_refIT_EESE_OT0_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 1 dereferenceable(1) %2) local_unnamed_addr #0 comdat {
bb.a:
  %.sroa.09.019 = load ptr, ptr %1, align 8, !tbaa !35 ; 2 uses
  %.sroa.013.020 = load ptr, ptr %0, align 8, !tbaa !35 ; 2 uses
  %.not21 = icmp eq ptr %.sroa.013.020, inttoptr (i64 1 to ptr)
  br i1 %.not21, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %bb.c
  %.sroa.013.023 = phi ptr [ %.sroa.013.0, %bb.c ], [ %.sroa.013.020, %bb.a ] ; 2 uses
  %.sroa.09.022 = phi ptr [ %.sroa.09.0, %bb.c ], [ %.sroa.09.019, %bb.a ] ; 3 uses
  %.not17 = icmp eq ptr %.sroa.09.022, inttoptr (i64 1 to ptr)
  br i1 %.not17, label %.critedge, label %bb.b

bb.b:                                             ; preds = %.lr.ph
  %i.a = getelementptr inbounds nuw i8, ptr %.sroa.013.023, i64 8
  %i.b = getelementptr inbounds nuw i8, ptr %.sroa.09.022, i64 8
  %i.c = tail call noundef zeroext i1 @_ZN4leaneqERKNS_5levelES2_(ptr noundef nonnull align 8 dereferenceable(8) %i.a, ptr noundef nonnull align 8 dereferenceable(8) %i.b)
  br i1 %i.c, label %bb.c, label %.critedge

bb.c:                                             ; preds = %bb.b
  %i.d = getelementptr inbounds nuw i8, ptr %.sroa.013.023, i64 16
  %i.e = getelementptr inbounds nuw i8, ptr %.sroa.09.022, i64 16
  %.sroa.09.0 = load ptr, ptr %i.e, align 8, !tbaa !35 ; 2 uses
  %.sroa.013.0 = load ptr, ptr %i.d, align 8, !tbaa !35 ; 2 uses
  %.not = icmp eq ptr %.sroa.013.0, inttoptr (i64 1 to ptr)
  br i1 %.not, label %._crit_edge, label %.lr.ph, !llvm.loop !79

._crit_edge:                                      ; preds = %bb.c, %bb.a
  %.sroa.09.0.lcssa = phi ptr [ %.sroa.09.019, %bb.a ], [ %.sroa.09.0, %bb.c ]
  %i.f = icmp eq ptr %.sroa.09.0.lcssa, inttoptr (i64 1 to ptr)
  br label %.critedge

.critedge:                                        ; preds = %.lr.ph, %bb.b, %._crit_edge
  %.0 = phi i1 [ %i.f, %._crit_edge ], [ false, %bb.b ], [ false, %.lr.ph ]
  ret i1 %.0
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN4lean10expr_eq_fnILb1EE12check_systemEj(ptr noundef nonnull align 8 dereferenceable(24) %0, i32 noundef %1) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = zext i32 %1 to i64
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load i64, ptr %i.b, align 8, !tbaa !74   ; 2 uses
  %i.d = icmp uge i64 %i.c, %i.a
  %.not = icmp eq i64 %i.c, 0
  %or.cond = or i1 %i.d, %.not
  br i1 %or.cond, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = tail call ptr @__cxa_allocate_exception(i64 72) #12 ; 3 uses
  invoke void @_ZN4lean21stack_space_exceptionC1EPKc(ptr noundef nonnull align 8 dereferenceable(72) %i.e, ptr noundef nonnull @.str.1)
          to label %bb.c unwind label %bb.d

bb.c:                                             ; preds = %bb.b
  tail call void @__cxa_throw(ptr nonnull %i.e, ptr nonnull @_ZTIN4lean21stack_space_exceptionE, ptr nonnull @_ZN4lean21stack_space_exceptionD2Ev) #15
  unreachable

bb.d:                                             ; preds = %bb.b
  %i.f = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr nonnull %i.e) #12
  resume { ptr, i32 } %i.f

bb.e:                                             ; preds = %bb.a
  ret void
}

declare noundef i32 @_ZN4lean12binding_infoERKNS_4exprE(ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #4

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden { ptr, i8 } @_ZNSt10_HashtableISt4pairIP11lean_objectS2_ES3_16mi_stl_allocatorIS3_ENSt8__detail9_IdentityESt8equal_toIS3_EN4lean10expr_eq_fnILb1EE10key_hasherENS6_18_Mod_range_hashingENS6_20_Default_ranged_hashENS6_20_Prime_rehash_policyENS6_17_Hashtable_traitsILb1ELb1ELb1EEEE16_M_insert_uniqueIRKS3_SM_NS6_10_AllocNodeIS4_INS6_10_Hash_nodeIS3_Lb1EEEEEEEES0_INS6_14_Node_iteratorIS3_Lb1ELb1EEEbEOT_OT0_RKT1_(ptr noundef nonnull align 8 dereferenceable(56) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef nonnull align 8 dereferenceable(8) %3) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 4 uses
  %i.c = load i64, ptr %i.b, align 8, !tbaa !76
  %.not.not = icmp eq i64 %i.c, 0                 ; 2 uses
  %.pre = load ptr, ptr %1, align 8               ; 3 uses
  br i1 %.not.not, label %bb.b, label %..thread_crit_edge

..thread_crit_edge:                               ; preds = %bb.a
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.pre46 = load ptr, ptr %.phi.trans.insert, align 8, !tbaa !55
  br label %.thread

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.f = load ptr, ptr %i.e, align 8              ; 2 uses
  br label %bb.c

bb.c:                                             ; preds = %bb.d, %bb.b
  %.sroa.031.0.in = phi ptr [ %i.d, %bb.b ], [ %.sroa.031.0, %bb.d ]
  %.sroa.031.0 = load ptr, ptr %.sroa.031.0.in, align 8, !tbaa !21 ; 5 uses
  %i.g = icmp eq ptr %.sroa.031.0, null
  br i1 %i.g, label %.thread, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.h = getelementptr inbounds nuw i8, ptr %.sroa.031.0, i64 8
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !53
  %i.j = icmp eq ptr %.pre, %i.i
  %i.k = getelementptr inbounds nuw i8, ptr %.sroa.031.0, i64 16
  %i.l = load ptr, ptr %i.k, align 8
  %i.m = icmp eq ptr %i.f, %i.l
  %i.n = select i1 %i.j, i1 %i.m, i1 false
  br i1 %i.n, label %_ZNKSt10_HashtableISt4pairIP11lean_objectS2_ES3_16mi_stl_allocatorIS3_ENSt8__detail9_IdentityESt8equal_toIS3_EN4lean10expr_eq_fnILb1EE10key_hasherENS6_18_Mod_range_hashingENS6_20_Default_ranged_hashENS6_20_Prime_rehash_policyENS6_17_Hashtable_traitsILb1ELb1ELb1EEEE15_M_find_node_trIS3_EEPNS6_10_Hash_nodeIS3_Lb1EEEmRKT_m.exit, label %bb.c, !llvm.loop !80

.thread:                                          ; preds = %bb.c, %..thread_crit_edge
  %i.o = phi ptr [ %.pre46, %..thread_crit_edge ], [ %i.f, %bb.c ] ; 2 uses
  %i.p = ptrtoint ptr %.pre to i64
  %i.q = lshr i64 %i.p, 3
  %i.r = ptrtoint ptr %i.o to i64
  %i.s = lshr i64 %i.r, 3
  %i.t = mul i64 %i.s, -4132994306676758123       ; 2 uses
  %i.u = lshr i64 %i.t, 47
  %i.v = xor i64 %i.q, %i.u
  %i.w = xor i64 %i.v, %i.t
  %i.x = xor i64 %i.w, -4132994306676758123
  %i.y = mul i64 %i.x, -4132994306676758123       ; 4 uses
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.aa = load i64, ptr %i.z, align 8, !tbaa !33  ; 2 uses
  %i.ab = urem i64 %i.y, %i.aa                    ; 3 uses
  br i1 %.not.not, label %.critedge, label %bb.e

bb.e:                                             ; preds = %.thread
  %i.ac = load ptr, ptr %0, align 8, !tbaa !32
  %i.ad = getelementptr inbounds nuw [8 x i8], ptr %i.ac, i64 %i.ab
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !58 ; 2 uses
  %.not.i.i = icmp eq ptr %i.ae, null
  br i1 %.not.i.i, label %.critedge, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !21 ; 2 uses
  %.phi.trans.insert.i.i = getelementptr inbounds nuw i8, ptr %i.af, i64 24
  %.pre.i.i = load i64, ptr %.phi.trans.insert.i.i, align 8, !tbaa !59
  br label %bb.g

bb.g:                                             ; preds = %bb.h, %bb.f
  %i.ag = phi i64 [ %.pre.i.i, %bb.f ], [ %i.as, %bb.h ]
  %i.ah = phi ptr [ %i.af, %bb.f ], [ %i.aq, %bb.h ] ; 4 uses
  %i.ai = icmp eq i64 %i.y, %i.ag
  br i1 %i.ai, label %_ZNKSt8__detail15_Hashtable_baseISt4pairIP11lean_objectS3_ES4_NS_9_IdentityESt8equal_toIS4_EN4lean10expr_eq_fnILb1EE10key_hasherENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb1ELb1EEEE12_M_equals_trIS4_EEbRKT_mRKNS_16_Hash_node_valueIS4_Lb1EEE.exit.i.i, label %_ZNKSt8__detail15_Hashtable_baseISt4pairIP11lean_objectS3_ES4_NS_9_IdentityESt8equal_toIS4_EN4lean10expr_eq_fnILb1EE10key_hasherENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb1ELb1EEEE12_M_equals_trIS4_EEbRKT_mRKNS_16_Hash_node_valueIS4_Lb1EEE.exit.thread.i.i

_ZNKSt8__detail15_Hashtable_baseISt4pairIP11lean_objectS3_ES4_NS_9_IdentityESt8equal_toIS4_EN4lean10expr_eq_fnILb1EE10key_hasherENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb1ELb1EEEE12_M_equals_trIS4_EEbRKT_mRKNS_16_Hash_node_valueIS4_Lb1EEE.exit.i.i: ; preds = %bb.g
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ah, i64 8
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !53
  %i.al = icmp eq ptr %.pre, %i.ak
  %i.am = getelementptr inbounds nuw i8, ptr %i.ah, i64 16
  %i.an = load ptr, ptr %i.am, align 8
  %i.ao = icmp eq ptr %i.o, %i.an
  %i.ap = select i1 %i.al, i1 %i.ao, i1 false
  br i1 %i.ap, label %_ZNKSt10_HashtableISt4pairIP11lean_objectS2_ES3_16mi_stl_allocatorIS3_ENSt8__detail9_IdentityESt8equal_toIS3_EN4lean10expr_eq_fnILb1EE10key_hasherENS6_18_Mod_range_hashingENS6_20_Default_ranged_hashENS6_20_Prime_rehash_policyENS6_17_Hashtable_traitsILb1ELb1ELb1EEEE15_M_find_node_trIS3_EEPNS6_10_Hash_nodeIS3_Lb1EEEmRKT_m.exit, label %_ZNKSt8__detail15_Hashtable_baseISt4pairIP11lean_objectS3_ES4_NS_9_IdentityESt8equal_toIS4_EN4lean10expr_eq_fnILb1EE10key_hasherENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb1ELb1EEEE12_M_equals_trIS4_EEbRKT_mRKNS_16_Hash_node_valueIS4_Lb1EEE.exit.thread.i.i

_ZNKSt8__detail15_Hashtable_baseISt4pairIP11lean_objectS3_ES4_NS_9_IdentityESt8equal_toIS4_EN4lean10expr_eq_fnILb1EE10key_hasherENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb1ELb1EEEE12_M_equals_trIS4_EEbRKT_mRKNS_16_Hash_node_valueIS4_Lb1EEE.exit.thread.i.i: ; preds = %_ZNKSt8__detail15_Hashtable_baseISt4pairIP11lean_objectS3_ES4_NS_9_IdentityESt8equal_toIS4_EN4lean10expr_eq_fnILb1EE10key_hasherENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb1ELb1EEEE12_M_equals_trIS4_EEbRKT_mRKNS_16_Hash_node_valueIS4_Lb1EEE.exit.i.i, %bb.g
  %i.aq = load ptr, ptr %i.ah, align 8, !tbaa !21 ; 3 uses
  %.not18.i.i = icmp eq ptr %i.aq, null
  br i1 %.not18.i.i, label %.critedge, label %bb.h

bb.h:                                             ; preds = %_ZNKSt8__detail15_Hashtable_baseISt4pairIP11lean_objectS3_ES4_NS_9_IdentityESt8equal_toIS4_EN4lean10expr_eq_fnILb1EE10key_hasherENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb1ELb1EEEE12_M_equals_trIS4_EEbRKT_mRKNS_16_Hash_node_valueIS4_Lb1EEE.exit.thread.i.i
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 24
  %i.as = load i64, ptr %i.ar, align 8, !tbaa !59 ; 2 uses
  %i.at = urem i64 %i.as, %i.aa
  %.not19.i.i = icmp eq i64 %i.at, %i.ab
  br i1 %.not19.i.i, label %bb.g, label %.critedge, !llvm.loop !81

.critedge:                                        ; preds = %bb.h, %_ZNKSt8__detail15_Hashtable_baseISt4pairIP11lean_objectS3_ES4_NS_9_IdentityESt8equal_toIS4_EN4lean10expr_eq_fnILb1EE10key_hasherENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb1ELb1EEEE12_M_equals_trIS4_EEbRKT_mRKNS_16_Hash_node_valueIS4_Lb1EEE.exit.thread.i.i, %bb.e, %.thread
  %i.au = tail call noalias noundef ptr @mi_new_n(i64 noundef 1, i64 noundef 32) ; 10 uses
  store ptr null, ptr %i.au, align 8, !tbaa !21
end_hunk_1

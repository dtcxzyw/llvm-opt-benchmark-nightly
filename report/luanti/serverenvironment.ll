inline.NumInlined: 4733
inline.NumDeleted: 2070
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumUnrolled: 2
begin_hunk_0_@_ZN17ServerEnvironment18addActiveObjectRawESt10unique_ptrI18ServerActiveObjectSt14default_deleteIS1_EEPK12StaticObjectj:bb.a
  %i.cl = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8) %i.ck) ; 0 uses
  br label %_ZN11StreamProxylsEPFRSoS0_E.exit

_ZN11StreamProxylsEPFRSoS0_E.exit:                ; preds = %_ZTW13warningstream.exit, %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit
  store i8 0, ptr %i.ae, align 4, !tbaa !607
  br label %bb.r

bb.r:                                             ; preds = %_ZN11StreamProxylsEPFRSoS0_E.exit, %_ZN16StaticObjectList9setActiveEtRK12StaticObject.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #32
  br label %bb.az

bb.s:                                             ; preds = %bb.d
  %i.cm = load ptr, ptr %i.j, align 8, !tbaa !140
  %i.cn = getelementptr inbounds nuw i8, ptr %i.cm, i64 184
  %i.co = load ptr, ptr %i.cn, align 8
  %i.cp = call noundef zeroext i1 %i.co(ptr noundef nonnull align 8 dereferenceable(324) %i.j)
  br i1 %i.cp, label %bb.t, label %bb.az

bb.t:                                             ; preds = %bb.s
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #32
  %i.cq = getelementptr inbounds nuw i8, ptr %i.j, i64 312
  %.sroa.01.0.copyload.i = load <2 x float>, ptr %i.cq, align 8
  %.sroa.22.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.j, i64 320
  %.sroa.22.0.copyload.i = load float, ptr %.sroa.22.0..sroa_idx.i, align 8, !tbaa !33
  store <2 x float> %.sroa.01.0.copyload.i, ptr %10, align 8
  %.sroa.214.0..sroa_idx = getelementptr inbounds nuw i8, ptr %10, i64 8 ; 3 uses
  store float %.sroa.22.0.copyload.i, ptr %.sroa.214.0..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #32
  call void @_ZN12StaticObjectC1EPK18ServerActiveObjectRKN4core8vector3dIfEE(ptr noundef nonnull align 8 dereferenceable(48) %11, ptr noundef nonnull %i.j, ptr noundef nonnull align 4 dereferenceable(12) %10)
  %.sroa.09.0.copyload = load <2 x float>, ptr %10, align 8 ; 2 uses
  %.sroa.210.0.copyload = load float, ptr %.sroa.214.0..sroa_idx, align 8, !tbaa !33
  %.sroa.09.4.vec.extract.i = extractelement <2 x float> %.sroa.09.0.copyload, i64 1 ; 2 uses
  %i.cr = fcmp nsz ogt float %.sroa.09.4.vec.extract.i, 0.000000e+00
  %i.cs = select nsz i1 %i.cr, float 5.000000e+00, float -5.000000e+00
  %i.ct = fadd nsz float %.sroa.09.4.vec.extract.i, %i.cs
  %i.cu = fdiv nsz float %i.ct, 1.000000e+01
  %i.cv = insertelement <2 x float> %.sroa.09.0.copyload, float %.sroa.210.0.copyload, i64 1 ; 2 uses
  %i.cw = fcmp nsz ogt <2 x float> %i.cv, zeroinitializer
  %i.cx = select <2 x i1> %i.cw, <2 x float> splat (float 5.000000e+00), <2 x float> splat (float -5.000000e+00)
  %i.cy = fadd nsz <2 x float> %i.cv, %i.cx
  %i.cz = fdiv nsz <2 x float> %i.cy, splat (float 1.000000e+01) ; 2 uses
  %i.da = extractelement <2 x float> %i.cz, i64 0
  %i.db = fptosi float %i.da to i16               ; 2 uses
  %i.dc = sext i16 %i.db to i32                   ; 2 uses
  %i.dd = add nsw i32 %i.dc, -15
  %i.de = icmp slt i16 %i.db, 0
  %i.df = select i1 %i.de, i32 %i.dd, i32 %i.dc
  %i.dg = sdiv i32 %i.df, 16
  %i.dh = insertelement <2 x float> %i.cz, float %i.cu, i64 0
  %i.di = fptosi <2 x float> %i.dh to <2 x i16>   ; 2 uses
  %i.dj = sext <2 x i16> %i.di to <2 x i32>       ; 2 uses
  %i.dk = add nsw <2 x i32> %i.dj, splat (i32 -15)
  %i.dl = icmp slt <2 x i16> %i.di, zeroinitializer
  %i.dm = select <2 x i1> %i.dl, <2 x i32> %i.dk, <2 x i32> %i.dj
  %i.dn = sdiv <2 x i32> %i.dm, splat (i32 16)    ; 2 uses
  %i.do = extractelement <2 x i32> %i.dn, i64 1
  %.mask.i.i = and i32 %i.do, 65535
  %.sroa.3.0.insert.ext.i.i = zext nneg i32 %.mask.i.i to i48
  %.sroa.3.0.insert.shift.i.i = shl nuw i48 %.sroa.3.0.insert.ext.i.i, 32
  %i.dp = extractelement <2 x i32> %i.dn, i64 0
  %i.dq = shl nsw i32 %i.dp, 16
  %.sroa.2.0.insert.shift.i.i = zext i32 %i.dq to i48
  %.sroa.2.0.insert.insert.i.i = or disjoint i48 %.sroa.3.0.insert.shift.i.i, %.sroa.2.0.insert.shift.i.i
  %.mask5.i.i = and i32 %i.dg, 65535
  %.sroa.0.0.insert.ext.i.i = zext nneg i32 %.mask5.i.i to i48
  %.sroa.0.0.insert.insert.i.i = or disjoint i48 %.sroa.2.0.insert.insert.i.i, %.sroa.0.0.insert.ext.i.i ; 2 uses
  %i.dr = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.ds = load ptr, ptr %i.dr, align 8, !tbaa !142 ; 2 uses
  %i.dt = load ptr, ptr %i.ds, align 8, !tbaa !140
  %i.du = getelementptr inbounds nuw i8, ptr %i.dt, i64 24
  %i.dv = load ptr, ptr %i.du, align 8
  %i.dw = invoke noundef ptr %i.dv(ptr noundef nonnull align 8 dereferenceable(608) %i.ds, i48 %.sroa.0.0.insert.insert.i.i, i1 noundef zeroext true)
          to label %bb.u unwind label %bb.ac      ; 11 uses

bb.u:                                             ; preds = %bb.t
  %.not.not = icmp eq ptr %i.dw, null             ; 2 uses
  br i1 %.not.not, label %bb.ad, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.dx = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  %i.dy = load i16, ptr %i.dx, align 8, !tbaa !748 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  store i16 %i.dy, ptr %i.e, align 2, !tbaa !41
  %i.dz = getelementptr inbounds nuw i8, ptr %i.dw, i64 168
  %i.ea = getelementptr inbounds nuw i8, ptr %i.dw, i64 184
  %i.eb = load ptr, ptr %i.ea, align 8, !tbaa !16 ; 2 uses
  %i.ec = getelementptr inbounds nuw i8, ptr %i.dw, i64 176 ; 3 uses
  %.not10.i.i.i.i.i64 = icmp eq ptr %i.eb, null
  br i1 %.not10.i.i.i.i.i64, label %.critedge.i.i75, label %.lr.ph.i.i.i.i.i65

.lr.ph.i.i.i.i.i65:                               ; preds = %bb.v, %.lr.ph.i.i.i.i.i65
  %.012.i.i.i.i.i66 = phi ptr [ %.1.i.i.i.i.i71, %.lr.ph.i.i.i.i.i65 ], [ %i.eb, %bb.v ] ; 3 uses
  %.0811.i.i.i.i.i67 = phi ptr [ %.19.i.i.i.i.i68, %.lr.ph.i.i.i.i.i65 ], [ %i.ec, %bb.v ]
  %i.ed = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i66, i64 32
  %i.ee = load i16, ptr %i.ed, align 2, !tbaa !41
  %i.ef = icmp ult i16 %i.ee, %i.dy               ; 2 uses
  %.19.i.i.i.i.i68 = select i1 %i.ef, ptr %.0811.i.i.i.i.i67, ptr %.012.i.i.i.i.i66 ; 6 uses
  %.1.in.v.i.i.i.i.i69 = select i1 %i.ef, i64 24, i64 16
  %.1.in.i.i.i.i.i70 = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i66, i64 %.1.in.v.i.i.i.i.i69
  %.1.i.i.i.i.i71 = load ptr, ptr %.1.in.i.i.i.i.i70, align 8, !tbaa !25 ; 2 uses
  %.not.i.i.i.i.i72 = icmp eq ptr %.1.i.i.i.i.i71, null
  br i1 %.not.i.i.i.i.i72, label %_ZNSt3mapIt12StaticObjectSt4lessItESaISt4pairIKtS0_EEE11lower_boundERS4_.exit.i.i73, label %.lr.ph.i.i.i.i.i65, !llvm.loop !749

_ZNSt3mapIt12StaticObjectSt4lessItESaISt4pairIKtS0_EEE11lower_boundERS4_.exit.i.i73: ; preds = %.lr.ph.i.i.i.i.i65
  %i.eg = icmp eq ptr %.19.i.i.i.i.i68, %i.ec
  br i1 %i.eg, label %.critedge.i.i75, label %bb.w

bb.w:                                             ; preds = %_ZNSt3mapIt12StaticObjectSt4lessItESaISt4pairIKtS0_EEE11lower_boundERS4_.exit.i.i73
  %i.eh = getelementptr inbounds nuw i8, ptr %.19.i.i.i.i.i68, i64 32
  %i.ei = load i16, ptr %i.eh, align 2, !tbaa !41
  %i.ej = icmp ult i16 %i.dy, %i.ei
  br i1 %i.ej, label %.critedge.i.i75, label %_ZNSt3mapIt12StaticObjectSt4lessItESaISt4pairIKtS0_EEEixERS4_.exit.i

.critedge.i.i75:                                  ; preds = %bb.w, %_ZNSt3mapIt12StaticObjectSt4lessItESaISt4pairIKtS0_EEE11lower_boundERS4_.exit.i.i73, %bb.v
  %.08.lcssa.i.i.i11.i.i76 = phi ptr [ %.19.i.i.i.i.i68, %bb.w ], [ %.19.i.i.i.i.i68, %_ZNSt3mapIt12StaticObjectSt4lessItESaISt4pairIKtS0_EEE11lower_boundERS4_.exit.i.i73 ], [ %i.ec, %bb.v ]
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #32
  store ptr %i.e, ptr %4, align 8, !tbaa !750
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #32
  %i.ek = invoke ptr @_ZNSt8_Rb_treeItSt4pairIKt12StaticObjectESt10_Select1stIS3_ESt4lessItESaIS3_EE22_M_emplace_hint_uniqueIJRKSt21piecewise_construct_tSt5tupleIJRS1_EESE_IJEEEEESt17_Rb_tree_iteratorIS3_ESt23_Rb_tree_const_iteratorIS3_EDpOT_(ptr noundef nonnull align 8 dereferenceable(48) %i.dz, ptr %.08.lcssa.i.i.i11.i.i76, ptr noundef nonnull align 1 dereferenceable(1) @_ZSt19piecewise_construct, ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef nonnull align 1 dereferenceable(1) %5)
          to label %.noexc unwind label %bb.ac

.noexc:                                           ; preds = %.critedge.i.i75
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #32
  br label %_ZNSt3mapIt12StaticObjectSt4lessItESaISt4pairIKtS0_EEEixERS4_.exit.i

_ZNSt3mapIt12StaticObjectSt4lessItESaISt4pairIKtS0_EEEixERS4_.exit.i: ; preds = %.noexc, %bb.w
  %.sroa.06.0.i.i74 = phi ptr [ %i.ek, %.noexc ], [ %.19.i.i.i.i.i68, %bb.w ] ; 2 uses
  %i.el = getelementptr inbounds nuw i8, ptr %.sroa.06.0.i.i74, i64 40
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.el, ptr noundef nonnull align 8 dereferenceable(48) %11, i64 16, i1 false)
  %i.em = getelementptr inbounds nuw i8, ptr %.sroa.06.0.i.i74, i64 56
  %i.en = getelementptr inbounds nuw i8, ptr %11, i64 16
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %i.em, ptr noundef nonnull align 8 dereferenceable(32) %i.en)
          to label %bb.x unwind label %bb.ac

bb.x:                                             ; preds = %_ZNSt3mapIt12StaticObjectSt4lessItESaISt4pairIKtS0_EEEixERS4_.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  store i8 1, ptr %i.ae, align 4, !tbaa !607
  %i.eo = getelementptr inbounds nuw i8, ptr %i.j, i64 14
  store i48 %.sroa.0.0.insert.insert.i.i, ptr %i.eo, align 2
  %i.ep = getelementptr inbounds nuw i8, ptr %i.dw, i64 66 ; 2 uses
  %i.eq = load i16, ptr %i.ep, align 2, !tbaa !694 ; 2 uses
  %i.er = icmp ult i16 %i.eq, 4
  br i1 %i.er, label %bb.y, label %bb.z

bb.y:                                             ; preds = %bb.x
  store i16 4, ptr %i.ep, align 2, !tbaa !694
  %i.es = getelementptr inbounds nuw i8, ptr %i.dw, i64 68
  store i32 512, ptr %i.es, align 4, !tbaa !695
  %i.et = getelementptr inbounds nuw i8, ptr %i.dw, i64 72
  %i.eu = load i32, ptr %i.et, align 8, !tbaa !589
  %i.ev = getelementptr inbounds nuw i8, ptr %i.dw, i64 76
  store i32 %i.eu, ptr %i.ev, align 4, !tbaa !696
  br label %bb.ab

bb.z:                                             ; preds = %bb.x
  %i.ew = icmp eq i16 %i.eq, 4
  br i1 %i.ew, label %bb.aa, label %bb.ab

bb.aa:                                            ; preds = %bb.z
  %i.ex = getelementptr inbounds nuw i8, ptr %i.dw, i64 68 ; 2 uses
  %i.ey = load i32, ptr %i.ex, align 4, !tbaa !695
  %i.ez = or i32 %i.ey, 512
  store i32 %i.ez, ptr %i.ex, align 4, !tbaa !695
  br label %bb.ab

bb.ab:                                            ; preds = %bb.aa, %bb.z, %bb.y
  %i.fa = getelementptr inbounds nuw i8, ptr %i.dw, i64 40
  %i.fb = load ptr, ptr %i.fa, align 8, !tbaa !751 ; 2 uses
  %i.fc = getelementptr inbounds nuw i8, ptr %i.dw, i64 48 ; 2 uses
  %i.fd = load ptr, ptr %i.fc, align 8, !tbaa !752
  %.not.i.i.i = icmp eq ptr %i.fd, %i.fb
  br i1 %.not.i.i.i, label %_ZN8MapBlock13raiseModifiedEjj.exit, label %_ZSt8_DestroyIPttEvT_S1_RSaIT0_E.exit.i.i.i

_ZSt8_DestroyIPttEvT_S1_RSaIT0_E.exit.i.i.i:      ; preds = %bb.ab
  store ptr %i.fb, ptr %i.fc, align 8, !tbaa !752
  br label %_ZN8MapBlock13raiseModifiedEjj.exit

bb.ac:                                            ; preds = %_ZNSt3mapIt12StaticObjectSt4lessItESaISt4pairIKtS0_EEEixERS4_.exit.i, %.critedge.i.i75, %bb.t
  %i.fe = landingpad { ptr, i32 }
          cleanup
  br label %bb.ay

bb.ad:                                            ; preds = %bb.u
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #32
  %.sroa.01.0.copyload = load <2 x float>, ptr %10, align 8 ; 2 uses
  %.sroa.22.0.copyload = load float, ptr %.sroa.214.0..sroa_idx, align 8, !tbaa !33
  %.sroa.09.0.vec.extract.i79 = extractelement <2 x float> %.sroa.01.0.copyload, i64 0 ; 2 uses
  %i.ff = fcmp nsz ogt float %.sroa.09.0.vec.extract.i79, 0.000000e+00
  %i.fg = select nsz i1 %i.ff, float 5.000000e+00, float -5.000000e+00
  %i.fh = fadd nsz float %.sroa.09.0.vec.extract.i79, %i.fg
  %i.fi = fdiv nsz float %i.fh, 1.000000e+01
  %i.fj = fptosi float %i.fi to i16
  %i.fk = insertelement <2 x float> %.sroa.01.0.copyload, float %.sroa.22.0.copyload, i64 0 ; 2 uses
  %i.fl = fcmp nsz ogt <2 x float> %i.fk, zeroinitializer
  %i.fm = select <2 x i1> %i.fl, <2 x float> splat (float 5.000000e+00), <2 x float> splat (float -5.000000e+00)
  %i.fn = fadd nsz <2 x float> %i.fk, %i.fm
  %i.fo = fdiv nsz <2 x float> %i.fn, splat (float 1.000000e+01)
  %i.fp = fptosi <2 x float> %i.fo to <2 x i16>
  %i.fq = zext <2 x i16> %i.fp to <2 x i48>
  %i.fr = shl nuw <2 x i48> %i.fq, <i48 32, i48 16>
  %.sroa.2.0.insert.insert.i85 = call i48 @llvm.vector.reduce.or.v2i48(<2 x i48> %i.fr)
  %.sroa.0.0.insert.ext.i86 = zext i16 %i.fj to i48
  %.sroa.0.0.insert.insert.i87 = or disjoint i48 %.sroa.2.0.insert.insert.i85, %.sroa.0.0.insert.ext.i86
  store i48 %.sroa.0.0.insert.insert.i87, ptr %12, align 8
  %.not.i88 = icmp eq ptr @_ZTH11errorstream, null
  br i1 %.not.i88, label %_ZTW11errorstream.exit, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  call void @_ZTH11errorstream()
  br label %_ZTW11errorstream.exit

_ZTW11errorstream.exit:                           ; preds = %bb.ad, %bb.ae
  %i.fs = call noundef align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @errorstream) ; 2 uses
  %i.ft = load ptr, ptr %i.fs, align 8, !tbaa !292, !nonnull !129, !align !305 ; 2 uses
  %i.fu = load ptr, ptr %i.ft, align 8, !tbaa !140
  %i.fv = load ptr, ptr %i.fu, align 8
  %i.fw = invoke noundef zeroext i1 %i.fv(ptr noundef nonnull align 8 dereferenceable(8) %i.ft)
          to label %.noexc90 unwind label %bb.av, !inline_history !330

.noexc90:                                         ; preds = %_ZTW11errorstream.exit
  %.v.i89 = select i1 %i.fw, i64 976, i64 984
  %i.fx = getelementptr inbounds nuw i8, ptr %i.fs, i64 %.v.i89 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  store ptr @.str.93, ptr %i.d, align 8, !tbaa !307
  %i.fy = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN11StreamProxy20emit_with_null_checkIPKcEERS_OT_(ptr noundef nonnull align 8 dereferenceable(8) %i.fx, ptr noundef nonnull align 8 dereferenceable(8) %i.d)
          to label %bb.af unwind label %bb.av     ; 0 uses

bb.af:                                            ; preds = %.noexc90
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  store ptr @.str.96, ptr %i.c, align 8, !tbaa !307
  %i.fz = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN11StreamProxy20emit_with_null_checkIPKcEERS_OT_(ptr noundef nonnull align 8 dereferenceable(8) %i.fx, ptr noundef nonnull align 8 dereferenceable(8) %i.c)
          to label %bb.ag unwind label %bb.av

bb.ag:                                            ; preds = %bb.af
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  %i.ga = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN11StreamProxylsIRN4core8vector3dIsEEEERS_OT_(ptr noundef nonnull align 8 dereferenceable(8) %i.fz, ptr noundef nonnull align 2 dereferenceable(6) %12)
          to label %bb.ah unwind label %bb.av

bb.ah:                                            ; preds = %bb.ag
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store ptr @.str.97, ptr %i.b, align 8, !tbaa !307
  %i.gb = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN11StreamProxy20emit_with_null_checkIPKcEERS_OT_(ptr noundef nonnull align 8 dereferenceable(8) %i.ga, ptr noundef nonnull align 8 dereferenceable(8) %i.b)
          to label %bb.ai unwind label %bb.av     ; 3 uses

bb.ai:                                            ; preds = %bb.ah
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %i.gc = getelementptr inbounds nuw i8, ptr %i.j, i64 8 ; 2 uses
  %i.gd = load i16, ptr %i.gc, align 8, !tbaa !748
  %i.ge = load ptr, ptr %i.gb, align 8, !tbaa !308 ; 5 uses
  %.not.i95 = icmp eq ptr %i.ge, null
  br i1 %.not.i95, label %_ZN11StreamProxylsItEERS_OT_.exit, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  %i.gf = load ptr, ptr %i.ge, align 8, !tbaa !140
  %i.gg = getelementptr i8, ptr %i.gf, i64 -24
  %i.gh = load i64, ptr %i.gg, align 8
  %i.gi = getelementptr inbounds i8, ptr %i.ge, i64 %i.gh
  %i.gj = getelementptr inbounds nuw i8, ptr %i.gi, i64 32
  %i.gk = load i32, ptr %i.gj, align 8, !tbaa !309
  %i.gl = icmp eq i32 %i.gk, 0
  br i1 %i.gl, label %bb.al, label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  invoke void @_ZN11StreamProxy16fix_stream_stateERSo(ptr noundef nonnull align 8 dereferenceable(8) %i.ge)
          to label %.noexc97 unwind label %bb.aw

.noexc97:                                         ; preds = %bb.ak
  %.pre.i96 = load ptr, ptr %i.gb, align 8, !tbaa !308
  br label %bb.al

bb.al:                                            ; preds = %.noexc97, %bb.aj
  %i.gm = phi ptr [ %.pre.i96, %.noexc97 ], [ %i.ge, %bb.aj ]
  %i.gn = zext i16 %i.gd to i64
  %i.go = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertImEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %i.gm, i64 noundef %i.gn)
          to label %_ZN11StreamProxylsItEERS_OT_.exit unwind label %bb.aw ; 0 uses

_ZN11StreamProxylsItEERS_OT_.exit:                ; preds = %bb.ai, %bb.al
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr @.str.98, ptr %i.a, align 8, !tbaa !307
  %i.gp = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN11StreamProxy20emit_with_null_checkIPKcEERS_OT_(ptr noundef nonnull align 8 dereferenceable(8) %i.gb, ptr noundef nonnull align 8 dereferenceable(8) %i.a)
          to label %bb.am unwind label %bb.aw     ; 2 uses

bb.am:                                            ; preds = %_ZN11StreamProxylsItEERS_OT_.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.gq = load ptr, ptr %i.gp, align 8, !tbaa !308 ; 5 uses
  %.not.i101 = icmp eq ptr %i.gq, null
  br i1 %.not.i101, label %_ZN11StreamProxylsEPFRSoS0_E.exit105, label %bb.an

bb.an:                                            ; preds = %bb.am
  %i.gr = load ptr, ptr %i.gq, align 8, !tbaa !140
  %i.gs = getelementptr i8, ptr %i.gr, i64 -24
  %i.gt = load i64, ptr %i.gs, align 8            ; 2 uses
  %i.gu = getelementptr inbounds i8, ptr %i.gq, i64 %i.gt
  %i.gv = getelementptr inbounds nuw i8, ptr %i.gu, i64 32
  %i.gw = load i32, ptr %i.gv, align 8, !tbaa !309
  %i.gx = icmp eq i32 %i.gw, 0
  br i1 %i.gx, label %bb.ap, label %bb.ao

bb.ao:                                            ; preds = %bb.an
  invoke void @_ZN11StreamProxy16fix_stream_stateERSo(ptr noundef nonnull align 8 dereferenceable(8) %i.gq)
          to label %.noexc103 unwind label %bb.aw

.noexc103:                                        ; preds = %bb.ao
  %.pre.i102 = load ptr, ptr %i.gp, align 8, !tbaa !308 ; 2 uses
  %.pre = load ptr, ptr %.pre.i102, align 8, !tbaa !140
  %.phi.trans.insert = getelementptr i8, ptr %.pre, i64 -24
  %.pre124 = load i64, ptr %.phi.trans.insert, align 8
  br label %bb.ap

bb.ap:                                            ; preds = %.noexc103, %bb.an
  %i.gy = phi i64 [ %.pre124, %.noexc103 ], [ %i.gt, %bb.an ]
  %i.gz = phi ptr [ %.pre.i102, %.noexc103 ], [ %i.gq, %bb.an ] ; 2 uses
  %i.ha = getelementptr inbounds i8, ptr %i.gz, i64 %i.gy
  %i.hb = getelementptr inbounds nuw i8, ptr %i.ha, i64 240
  %i.hc = load ptr, ptr %i.hb, align 8, !tbaa !316 ; 6 uses
  %.not.i.i.i112 = icmp eq ptr %i.hc, null
  br i1 %.not.i.i.i112, label %bb.aq, label %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i113

bb.aq:                                            ; preds = %bb.ap
  invoke void @_ZSt16__throw_bad_castv() #36
          to label %.noexc116 unwind label %bb.aw

.noexc116:                                        ; preds = %bb.aq
  unreachable

_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i113: ; preds = %bb.ap
  %i.hd = getelementptr inbounds nuw i8, ptr %i.hc, i64 56
  %i.he = load i8, ptr %i.hd, align 8, !tbaa !322
  %.not.i1.i.i114 = icmp eq i8 %i.he, 0
  br i1 %.not.i1.i.i114, label %bb.as, label %bb.ar

bb.ar:                                            ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i113
  %i.hf = getelementptr inbounds nuw i8, ptr %i.hc, i64 67
  %i.hg = load i8, ptr %i.hf, align 1, !tbaa !246
  br label %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i

bb.as:                                            ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i113
  invoke void @_ZNKSt5ctypeIcE13_M_widen_initEv(ptr noundef nonnull align 8 dereferenceable(570) %i.hc)
          to label %.noexc117 unwind label %bb.aw

.noexc117:                                        ; preds = %bb.as
  %i.hh = load ptr, ptr %i.hc, align 8, !tbaa !140
  %i.hi = getelementptr inbounds nuw i8, ptr %i.hh, i64 48
  %i.hj = load ptr, ptr %i.hi, align 8
  %i.hk = invoke noundef signext i8 %i.hj(ptr noundef nonnull align 8 dereferenceable(570) %i.hc, i8 noundef signext 10)
          to label %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i unwind label %bb.aw, !inline_history !328

_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i: ; preds = %.noexc117, %bb.ar
  %.0.i.i.i115 = phi i8 [ %i.hg, %bb.ar ], [ %i.hk, %.noexc117 ]
  %i.hl = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %i.gz, i8 noundef signext %.0.i.i.i115)
          to label %.noexc119 unwind label %bb.aw

.noexc119:                                        ; preds = %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i
  %i.hm = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8) %i.hl)
          to label %_ZN11StreamProxylsEPFRSoS0_E.exit105 unwind label %bb.aw ; 0 uses

_ZN11StreamProxylsEPFRSoS0_E.exit105:             ; preds = %bb.am, %.noexc119
  invoke void @_ZN18ServerActiveObject14markForRemovalEv(ptr noundef nonnull align 8 dereferenceable(324) %i.j)
          to label %bb.at unwind label %bb.av

bb.at:                                            ; preds = %_ZN11StreamProxylsEPFRSoS0_E.exit105
  %i.hn = load ptr, ptr %i.j, align 8, !tbaa !140
  %i.ho = getelementptr inbounds nuw i8, ptr %i.hn, i64 112
  %i.hp = load ptr, ptr %i.ho, align 8
  invoke void %i.hp(ptr noundef nonnull align 8 dereferenceable(324) %i.j)
          to label %.noexc106 unwind label %bb.av, !inline_history !753

.noexc106:                                        ; preds = %bb.at
  %i.hq = load ptr, ptr %i.v, align 8, !tbaa !146 ; 2 uses
  %i.hr = load ptr, ptr %i.hq, align 8, !tbaa !140
  %i.hs = getelementptr i8, ptr %i.hr, i64 -24
  %i.ht = load i64, ptr %i.hs, align 8
  %i.hu = getelementptr inbounds i8, ptr %i.hq, i64 %i.ht
  invoke void @_ZN13ScriptApiBase21removeObjectReferenceEP18ServerActiveObject(ptr noundef nonnull align 8 dereferenceable(129) %i.hu, ptr noundef nonnull %i.j)
          to label %_ZN17ServerEnvironment25processActiveObjectRemoveEP18ServerActiveObject.exit unwind label %bb.av

_ZN17ServerEnvironment25processActiveObjectRemoveEP18ServerActiveObject.exit: ; preds = %.noexc106
  %i.hv = load i16, ptr %i.gc, align 8, !tbaa !748
  invoke void @_ZN6server15ActiveObjectMgr12removeObjectEt(ptr noundef nonnull align 8 dereferenceable(216) %i.k, i16 noundef zeroext %i.hv)
          to label %bb.au unwind label %bb.av

bb.au:                                            ; preds = %_ZN17ServerEnvironment25processActiveObjectRemoveEP18ServerActiveObject.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #32
  br label %_ZN8MapBlock13raiseModifiedEjj.exit

bb.av:                                            ; preds = %.noexc106, %bb.at, %bb.ah, %bb.af, %.noexc90, %_ZTW11errorstream.exit, %_ZN17ServerEnvironment25processActiveObjectRemoveEP18ServerActiveObject.exit, %_ZN11StreamProxylsEPFRSoS0_E.exit105, %bb.ag
  %i.hw = landingpad { ptr, i32 }
          cleanup
  br label %bb.ax

bb.aw:                                            ; preds = %.noexc119, %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i, %.noexc117, %bb.as, %bb.aq, %bb.ao, %_ZN11StreamProxylsItEERS_OT_.exit, %bb.al, %bb.ak
  %i.hx = landingpad { ptr, i32 }
          cleanup
  br label %bb.ax

bb.ax:                                            ; preds = %bb.aw, %bb.av
  %.pn = phi { ptr, i32 } [ %i.hw, %bb.av ], [ %i.hx, %bb.aw ]
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #32
  br label %bb.ay

end_hunk_0
begin_hunk_1_@_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE17_M_realloc_insertIJRA6_KcEEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_:bb.a
bb.e:                                             ; preds = %bb.d, %bb.c, %._crit_edge.i.i
  %i.z = load i64, ptr %i.a, align 8, !tbaa !244  ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %i.r, i64 8
  store i64 %i.z, ptr %i.aa, align 8, !tbaa !247
  %i.ab = load ptr, ptr %i.r, align 8, !tbaa !245
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 %i.z
  store i8 0, ptr %i.ac, align 1, !tbaa !246
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #32
  %.not10.i.i.i = icmp eq ptr %i.d, %1
  br i1 %.not10.i.i.i, label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.e, %_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i
  %.012.i.i.i = phi ptr [ %i.aq, %_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i ], [ %i.q, %bb.e ] ; 5 uses
  %.0911.i.i.i = phi ptr [ %i.ap, %_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i ], [ %i.d, %bb.e ] ; 7 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !1124)
  call void @llvm.experimental.noalias.scope.decl(metadata !1127)
  %i.ad = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 16 ; 3 uses
  store ptr %i.ad, ptr %.012.i.i.i, align 8, !tbaa !243, !alias.scope !1124, !noalias !1127
  %i.ae = load ptr, ptr %.0911.i.i.i, align 8, !tbaa !245, !alias.scope !1127, !noalias !1124 ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 16 ; 5 uses
  %i.ag = icmp eq ptr %i.ae, %i.af
  br i1 %i.ag, label %bb.f, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i

bb.f:                                             ; preds = %.lr.ph.i.i.i
  %i.ah = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 8
  %i.ai = load i64, ptr %i.ah, align 8, !tbaa !247, !alias.scope !1127, !noalias !1124 ; 3 uses
  %i.aj = icmp ult i64 %i.ai, 16
  call void @llvm.assume(i1 %i.aj)
  %i.ak = add nuw nsw i64 %i.ai, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.ad, ptr noundef nonnull align 8 dereferenceable(1) %i.af, i64 %i.ak, i1 false), !alias.scope !1129
  br label %_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i: ; preds = %.lr.ph.i.i.i
  store ptr %i.ae, ptr %.012.i.i.i, align 8, !tbaa !245, !alias.scope !1124, !noalias !1127
  %i.al = load i64, ptr %i.af, align 8, !tbaa !246, !alias.scope !1127, !noalias !1124
  store i64 %i.al, ptr %i.ad, align 8, !tbaa !246, !alias.scope !1124, !noalias !1127
  %.phi.trans.insert.i.i.i.i = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 8
  %.pre.i.i.i.i = load i64, ptr %.phi.trans.insert.i.i.i.i, align 8, !tbaa !247, !alias.scope !1127, !noalias !1124
  br label %_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i

_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i, %bb.f
  %i.am = phi i64 [ %i.ai, %bb.f ], [ %.pre.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i ]
  %i.an = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 8
  %i.ao = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 8
  store i64 %i.am, ptr %i.ao, align 8, !tbaa !247, !alias.scope !1124, !noalias !1127
  store ptr %i.af, ptr %.0911.i.i.i, align 8, !tbaa !245, !alias.scope !1127, !noalias !1124
  store i64 0, ptr %i.an, align 8, !tbaa !247, !alias.scope !1127, !noalias !1124
  store i8 0, ptr %i.af, align 8, !tbaa !246, !alias.scope !1127, !noalias !1124
  %i.ap = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 32 ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 32 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.ap, %1
  br i1 %.not.i.i.i, label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit, label %.lr.ph.i.i.i, !llvm.loop !1117

_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit: ; preds = %_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i, %bb.e
  %.0.lcssa.i.i.i = phi ptr [ %i.q, %bb.e ], [ %i.aq, %_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i ]
  %i.ar = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i, i64 32 ; 2 uses
  %.not10.i.i.i26 = icmp eq ptr %1, %i.c
  br i1 %.not10.i.i.i26, label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit36, label %.lr.ph.i.i.i27

.lr.ph.i.i.i27:                                   ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit, %_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i33
  %.012.i.i.i28 = phi ptr [ %i.bf, %_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i33 ], [ %i.ar, %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit ] ; 5 uses
  %.0911.i.i.i29 = phi ptr [ %i.be, %_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i33 ], [ %1, %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit ] ; 7 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !1130)
  call void @llvm.experimental.noalias.scope.decl(metadata !1133)
  %i.as = getelementptr inbounds nuw i8, ptr %.012.i.i.i28, i64 16 ; 3 uses
  store ptr %i.as, ptr %.012.i.i.i28, align 8, !tbaa !243, !alias.scope !1130, !noalias !1133
  %i.at = load ptr, ptr %.0911.i.i.i29, align 8, !tbaa !245, !alias.scope !1133, !noalias !1130 ; 2 uses
  %i.au = getelementptr inbounds nuw i8, ptr %.0911.i.i.i29, i64 16 ; 5 uses
  %i.av = icmp eq ptr %i.at, %i.au
  br i1 %i.av, label %bb.g, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i30

bb.g:                                             ; preds = %.lr.ph.i.i.i27
  %i.aw = getelementptr inbounds nuw i8, ptr %.0911.i.i.i29, i64 8
  %i.ax = load i64, ptr %i.aw, align 8, !tbaa !247, !alias.scope !1133, !noalias !1130 ; 3 uses
  %i.ay = icmp ult i64 %i.ax, 16
  call void @llvm.assume(i1 %i.ay)
  %i.az = add nuw nsw i64 %i.ax, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.as, ptr noundef nonnull align 8 dereferenceable(1) %i.au, i64 %i.az, i1 false), !alias.scope !1135
  br label %_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i33

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i30: ; preds = %.lr.ph.i.i.i27
  store ptr %i.at, ptr %.012.i.i.i28, align 8, !tbaa !245, !alias.scope !1130, !noalias !1133
  %i.ba = load i64, ptr %i.au, align 8, !tbaa !246, !alias.scope !1133, !noalias !1130
  store i64 %i.ba, ptr %i.as, align 8, !tbaa !246, !alias.scope !1130, !noalias !1133
  %.phi.trans.insert.i.i.i.i31 = getelementptr inbounds nuw i8, ptr %.0911.i.i.i29, i64 8
  %.pre.i.i.i.i32 = load i64, ptr %.phi.trans.insert.i.i.i.i31, align 8, !tbaa !247, !alias.scope !1133, !noalias !1130
  br label %_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i33

_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i33: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i30, %bb.g
  %i.bb = phi i64 [ %i.ax, %bb.g ], [ %.pre.i.i.i.i32, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i30 ]
  %i.bc = getelementptr inbounds nuw i8, ptr %.0911.i.i.i29, i64 8
  %i.bd = getelementptr inbounds nuw i8, ptr %.012.i.i.i28, i64 8
  store i64 %i.bb, ptr %i.bd, align 8, !tbaa !247, !alias.scope !1130, !noalias !1133
  store ptr %i.au, ptr %.0911.i.i.i29, align 8, !tbaa !245, !alias.scope !1133, !noalias !1130
  store i64 0, ptr %i.bc, align 8, !tbaa !247, !alias.scope !1133, !noalias !1130
  store i8 0, ptr %i.au, align 8, !tbaa !246, !alias.scope !1133, !noalias !1130
  %i.be = getelementptr inbounds nuw i8, ptr %.0911.i.i.i29, i64 32 ; 2 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %.012.i.i.i28, i64 32 ; 2 uses
  %.not.i.i.i34 = icmp eq ptr %i.be, %i.c
  br i1 %.not.i.i.i34, label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit36, label %.lr.ph.i.i.i27, !llvm.loop !1117

_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit36: ; preds = %_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i33, %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit
  %.0.lcssa.i.i.i35 = phi ptr [ %i.ar, %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit ], [ %i.bf, %_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i33 ]
  %i.bg = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %.not.i37 = icmp eq ptr %i.d, null
  br i1 %.not.i37, label %_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE13_M_deallocateEPS5_m.exit, label %bb.h

bb.h:                                             ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit36
  %i.bh = load ptr, ptr %i.bg, align 8, !tbaa !827
  %i.bi = ptrtoint ptr %i.bh to i64
  %i.bj = sub i64 %i.bi, %i.f
  call void @_ZdlPvm(ptr noundef nonnull %i.d, i64 noundef %i.bj) #37
  br label %_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE13_M_deallocateEPS5_m.exit

_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE13_M_deallocateEPS5_m.exit: ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit36, %bb.h
  store ptr %i.q, ptr %0, align 8, !tbaa !828
  store ptr %.0.lcssa.i.i.i35, ptr %i.b, align 8, !tbaa !826
  %i.bk = getelementptr inbounds nuw [32 x i8], ptr %i.q, i64 %i.m
  store ptr %i.bk, ptr %i.bg, align 8, !tbaa !827
  ret void

bb.i:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.bl = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %bb.j unwind label %bb.k

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %.noexc.i
  %i.bm = landingpad { ptr, i32 }
          catch ptr null
  %i.bn = extractvalue { ptr, i32 } %i.bm, 0
  %i.bo = call ptr @__cxa_begin_catch(ptr %i.bn) #32 ; 0 uses
  call void @_ZdlPvm(ptr noundef nonnull %i.q, i64 noundef %i.p) #37
  invoke void @__cxa_rethrow() #36
          to label %bb.l unwind label %bb.i

bb.j:                                             ; preds = %bb.i
  resume { ptr, i32 } %i.bl

bb.k:                                             ; preds = %bb.i
  %i.bp = landingpad { ptr, i32 }
          catch ptr null
  %i.bq = extractvalue { ptr, i32 } %i.bp, 0
  call void @__clang_call_terminate(ptr %i.bq) #35
  unreachable

bb.l:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  unreachable
}

declare extern_weak void @_ZTH11errorstream() #4

declare extern_weak void @_ZTH13warningstream() #4

declare extern_weak void @_ZTH10infostream() #4

declare extern_weak void @_ZTH12actionstream() #4

declare extern_weak void @_ZTH13verbosestream() #4

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #29

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare { double, double } @llvm.sincos.f64(double) #17

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umax.i32(i32, i32) #22

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.fshl.i64(i64, i64, i64) #22

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #30

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i16 @llvm.smin.i16(i16, i16) #22

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #22

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #22

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i32 @bcmp(ptr captures(none), ptr captures(none), i64) local_unnamed_addr #31

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.usub.sat.i32(i32, i32) #22

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare { <2 x double>, <2 x double> } @llvm.sincos.v2f64(<2 x double>) #17

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x double> @llvm.fmuladd.v2f64(<2 x double>, <2 x double>, <2 x double>) #22

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x float> @llvm.fabs.v2f32(<2 x float>) #22

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i48 @llvm.vector.reduce.or.v2i48(<2 x i48>) #22

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x float> @llvm.fmuladd.v2f32(<2 x float>, <2 x float>, <2 x float>) #22

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x float> @llvm.sqrt.v2f32(<2 x float>) #22

attributes #0 = { mustprogress uwtable "min-legal-vector-width"="64" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { inlinehint mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nounwind "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { uwtable "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { cold noreturn }
attributes #9 = { inlinehint mustprogress uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { nobuiltin nounwind "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { noreturn "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { nounwind memory(none) }
attributes #15 = { noinline noreturn nounwind uwtable "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #16 = { cold nofree noreturn }
attributes #17 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #18 = { nobuiltin allocsize(0) "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #19 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #20 = { nofree nounwind uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #21 = { nofree nounwind }
attributes #22 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #23 = { mustprogress nofree nounwind willreturn memory(read) "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #24 = { cold noreturn nounwind memory(inaccessiblemem: write) }
attributes #25 = { mustprogress noinline nounwind uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #26 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read) "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #27 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #28 = { mustprogress nofree nounwind willreturn memory(read) }
attributes #29 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #30 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #31 = { nocallback nofree nosync nounwind willreturn memory(argmem: read) }
attributes #32 = { nounwind }
attributes #33 = { nounwind willreturn memory(read) }
attributes #34 = { builtin allocsize(0) }
attributes #35 = { noreturn nounwind }
attributes #36 = { noreturn }
attributes #37 = { builtin nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}
!llvm.errno.tbaa = !{!4}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"PIE Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 2}
!3 = !{!"Ubuntu clang version 24.0.0 (++20260802081851+e18c3ea02484-1~exp1~20260802082001.1761)"}
!4 = !{!5, !6, i64 0}
!5 = !{!"__libc_errno", !6, i64 0}
!6 = !{!"int", !7, i64 0}
!7 = !{!"omnipotent char", !8, i64 0}
!8 = !{!"Simple C++ TBAA"}
!9 = !{!10, !12, i64 0}
!10 = !{!"_ZTSSt15_Rb_tree_header", !11, i64 0, !15, i64 32}
!11 = !{!"_ZTSSt18_Rb_tree_node_base", !12, i64 0, !13, i64 8, !13, i64 16, !13, i64 24}
!12 = !{!"_ZTSSt14_Rb_tree_color", !7, i64 0}
!13 = !{!"p1 _ZTSSt18_Rb_tree_node_base", !14, i64 0}
!14 = !{!"any pointer", !7, i64 0}
!15 = !{!"long", !7, i64 0}
!16 = !{!10, !13, i64 8}
!17 = !{!10, !13, i64 16}
!18 = !{!10, !13, i64 24}
!19 = !{!10, !15, i64 32}
!20 = !{!21, !21, i64 0}
!21 = !{!"p1 _ZTSSt8_Rb_treeIN4core8vector3dIsEES2_St9_IdentityIS2_ESt4lessIS2_ESaIS2_EE", !14, i64 0}
!22 = !{!11, !13, i64 16}
!23 = distinct !{!23, !24}
!24 = !{!"llvm.loop.mustprogress"}
!25 = !{!13, !13, i64 0}
!26 = !{!11, !13, i64 24}
!27 = distinct !{!27, !24}
!28 = !{!29, !29, i64 0}
!29 = !{!"p2 _ZTS9PlayerSAO", !30, i64 0}
!30 = !{!"any p2 pointer", !14, i64 0}
!31 = !{!32, !32, i64 0}
!32 = !{!"p1 _ZTS9PlayerSAO", !14, i64 0}
!33 = !{!34, !34, i64 0}
!34 = !{!"float", !7, i64 0}
!35 = !{!36, !37, i64 0}
!36 = !{!"_ZTSN4core8vector3dIsEE", !37, i64 0, !37, i64 2, !37, i64 4}
!37 = !{!"short", !7, i64 0}
!38 = !{!36, !37, i64 2}
!39 = !{!36, !37, i64 4}
!40 = distinct !{!40, !24}
!41 = !{!37, !37, i64 0}
!42 = distinct !{!42, !24}
!43 = distinct !{!43, !24}
!44 = distinct !{!44, !24}
!45 = !{!46, !37, i64 1148}
!46 = !{!"_ZTS9PlayerSAO", !47, i64 0, !113, i64 960, !92, i64 968, !37, i64 1000, !114, i64 1004, !114, i64 1012, !76, i64 1020, !34, i64 1032, !34, i64 1036, !36, i64 1040, !34, i64 1048, !34, i64 1052, !76, i64 1056, !115, i64 1068, !115, i64 1072, !115, i64 1076, !50, i64 1080, !116, i64 1088, !50, i64 1136, !50, i64 1137, !37, i64 1138, !34, i64 1140, !34, i64 1144, !37, i64 1148, !50, i64 1150, !121, i64 1152, !124, i64 1224, !50, i64 1225}
!47 = !{!"_ZTS7UnitSAO", !48, i64 0, !37, i64 324, !76, i64 328, !34, i64 340, !77, i64 344, !50, i64 400, !79, i64 408, !108, i64 760, !37, i64 816, !7, i64 818, !50, i64 819, !110, i64 820, !34, i64 828, !34, i64 832, !50, i64 836, !50, i64 837, !50, i64 838, !50, i64 839, !111, i64 840, !92, i64 896, !76, i64 928, !76, i64 940, !50, i64 952, !50, i64 953}
!48 = !{!"_ZTS18ServerActiveObject", !49, i64 0, !37, i64 10, !50, i64 12, !36, i64 14, !51, i64 24, !56, i64 88, !61, i64 160, !62, i64 168, !50, i64 224, !50, i64 225, !68, i64 232, !76, i64 312}
!49 = !{!"_ZTS12ActiveObject", !37, i64 8}
!50 = !{!"bool", !7, i64 0}
!51 = !{!"_ZTSSt8optionalISt13unordered_setINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4hashIS6_ESt8equal_toIS6_ESaIS6_EEE", !52, i64 0}
!52 = !{!"_ZTSSt14_Optional_baseISt13unordered_setINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4hashIS6_ESt8equal_toIS6_ESaIS6_EELb0ELb0EE", !53, i64 0}
!53 = !{!"_ZTSSt17_Optional_payloadISt13unordered_setINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4hashIS6_ESt8equal_toIS6_ESaIS6_EELb0ELb0ELb0EE", !54, i64 0}
!54 = !{!"_ZTSSt17_Optional_payloadISt13unordered_setINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4hashIS6_ESt8equal_toIS6_ESaIS6_EELb1ELb0ELb0EE", !55, i64 0}
!55 = !{!"_ZTSSt22_Optional_payload_baseISt13unordered_setINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4hashIS6_ESt8equal_toIS6_ESaIS6_EEE", !7, i64 0, !50, i64 56}
!56 = !{!"_ZTSSt8optionalIS_ISt13unordered_setINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4hashIS6_ESt8equal_toIS6_ESaIS6_EEEE", !57, i64 0}
!57 = !{!"_ZTSSt14_Optional_baseISt8optionalISt13unordered_setINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4hashIS7_ESt8equal_toIS7_ESaIS7_EEELb0ELb0EE", !58, i64 0}
!58 = !{!"_ZTSSt17_Optional_payloadISt8optionalISt13unordered_setINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4hashIS7_ESt8equal_toIS7_ESaIS7_EEELb0ELb0ELb0EE", !59, i64 0}
!59 = !{!"_ZTSSt17_Optional_payloadISt8optionalISt13unordered_setINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4hashIS7_ESt8equal_toIS7_ESaIS7_EEELb1ELb0ELb0EE", !60, i64 0}
!60 = !{!"_ZTSSt22_Optional_payload_baseISt8optionalISt13unordered_setINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4hashIS7_ESt8equal_toIS7_ESaIS7_EEEE", !7, i64 0, !50, i64 64}
!61 = !{!"p1 _ZTS17ServerEnvironment", !14, i64 0}
!62 = !{!"_ZTSSt13unordered_setIjSt4hashIjESt8equal_toIjESaIjEE", !63, i64 0}
!63 = !{!"_ZTSSt10_HashtableIjjSaIjENSt8__detail9_IdentityESt8equal_toIjESt4hashIjENS1_18_Mod_range_hashingENS1_20_Default_ranged_hashENS1_20_Prime_rehash_policyENS1_17_Hashtable_traitsILb0ELb1ELb1EEEE", !64, i64 0, !15, i64 8, !65, i64 16, !15, i64 24, !67, i64 32, !66, i64 48}
!64 = !{!"p2 _ZTSNSt8__detail15_Hash_node_baseE", !30, i64 0}
!65 = !{!"_ZTSNSt8__detail15_Hash_node_baseE", !66, i64 0}
!66 = !{!"p1 _ZTSNSt8__detail15_Hash_node_baseE", !14, i64 0}
!67 = !{!"_ZTSNSt8__detail20_Prime_rehash_policyE", !34, i64 0, !15, i64 8}
!68 = !{!"_ZTSSt5queueI19ActiveObjectMessageSt5dequeIS0_SaIS0_EEE", !69, i64 0}
!69 = !{!"_ZTSSt5dequeI19ActiveObjectMessageSaIS0_EE", !70, i64 0}
!70 = !{!"_ZTSSt11_Deque_baseI19ActiveObjectMessageSaIS0_EE", !71, i64 0}
!71 = !{!"_ZTSNSt11_Deque_baseI19ActiveObjectMessageSaIS0_EE11_Deque_implE", !72, i64 0}
!72 = !{!"_ZTSNSt11_Deque_baseI19ActiveObjectMessageSaIS0_EE16_Deque_impl_dataE", !73, i64 0, !15, i64 8, !74, i64 16, !74, i64 48}
!73 = !{!"p2 _ZTS19ActiveObjectMessage", !30, i64 0}
!74 = !{!"_ZTSSt15_Deque_iteratorI19ActiveObjectMessageRS0_PS0_E", !75, i64 0, !75, i64 8, !75, i64 16, !73, i64 24}
!75 = !{!"p1 _ZTS19ActiveObjectMessage", !14, i64 0}
!76 = !{!"_ZTSN4core8vector3dIfEE", !34, i64 0, !34, i64 4, !34, i64 8}
!77 = !{!"_ZTSSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiSt4hashIS5_ESt8equal_toIS5_ESaISt4pairIKS5_iEEE", !78, i64 0}
!78 = !{!"_ZTSSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_iESaIS8_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb1ELb0ELb1EEEE", !64, i64 0, !15, i64 8, !65, i64 16, !15, i64 24, !67, i64 32, !66, i64 48}
!79 = !{!"_ZTS16ObjectProperties", !80, i64 0, !85, i64 24, !90, i64 48, !90, i64 72, !91, i64 96, !92, i64 104, !92, i64 136, !92, i64 168, !92, i64 200, !92, i64 232, !76, i64 264, !95, i64 276, !96, i64 280, !100, i64 288, !100, i64 292, !34, i64 296, !34, i64 300, !34, i64 304, !34, i64 308, !34, i64 312, !34, i64 316, !101, i64 320, !105, i64 328, !37, i64 332, !37, i64 334, !7, i64 336, !106, i64 337, !50, i64 338, !50, i64 339, !50, i64 340, !50, i64 341, !50, i64 342, !50, i64 343, !50, i64 344, !50, i64 345, !50, i64 346, !50, i64 347, !50, i64 348, !50, i64 349, !107, i64 350}
!80 = !{!"_ZTSSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE", !81, i64 0}
!81 = !{!"_ZTSSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE", !82, i64 0}
!82 = !{!"_ZTSNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12_Vector_implE", !83, i64 0}
!83 = !{!"_ZTSNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE17_Vector_impl_dataE", !84, i64 0, !84, i64 8, !84, i64 16}
!84 = !{!"p1 _ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE", !14, i64 0}
!85 = !{!"_ZTSSt6vectorIN5video6SColorESaIS1_EE", !86, i64 0}
!86 = !{!"_ZTSSt12_Vector_baseIN5video6SColorESaIS1_EE", !87, i64 0}
!87 = !{!"_ZTSNSt12_Vector_baseIN5video6SColorESaIS1_EE12_Vector_implE", !88, i64 0}
!88 = !{!"_ZTSNSt12_Vector_baseIN5video6SColorESaIS1_EE17_Vector_impl_dataE", !89, i64 0, !89, i64 8, !89, i64 16}
!89 = !{!"p1 _ZTSN5video6SColorE", !14, i64 0}
!90 = !{!"_ZTSN4core8aabbox3dIfEE", !76, i64 0, !76, i64 12}
!91 = !{!"_ZTS12ObjectVisual", !7, i64 0}
!92 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE", !93, i64 0, !15, i64 8, !7, i64 16}
!93 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_Alloc_hiderE", !94, i64 0}
!94 = !{!"p1 omnipotent char", !14, i64 0}
!95 = !{!"_ZTSN5video6SColorE", !6, i64 0}
!96 = !{!"_ZTSSt8optionalIN5video6SColorEE", !97, i64 0}
!97 = !{!"_ZTSSt14_Optional_baseIN5video6SColorELb1ELb1EE", !98, i64 0}
!98 = !{!"_ZTSSt17_Optional_payloadIN5video6SColorELb1ELb1ELb1EE", !99, i64 0}
!99 = !{!"_ZTSSt22_Optional_payload_baseIN5video6SColorEE", !7, i64 0, !50, i64 4}
!100 = !{!"_ZTSN4core8vector2dIsEE", !37, i64 0, !37, i64 2}
!101 = !{!"_ZTSSt8optionalIjE", !102, i64 0}
!102 = !{!"_ZTSSt14_Optional_baseIjLb1ELb1EE", !103, i64 0}
!103 = !{!"_ZTSSt17_Optional_payloadIjLb1ELb1ELb1EE", !104, i64 0}
!104 = !{!"_ZTSSt22_Optional_payload_baseIjE", !7, i64 0, !50, i64 4}
!105 = !{!"_ZTS7MapNode", !37, i64 0, !7, i64 2, !7, i64 3}
!106 = !{!"_ZTS16PointabilityType", !7, i64 0}
!107 = !{!"_ZTS10StepUpMode", !7, i64 0}
!108 = !{!"_ZTSSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE12BoneOverrideSt4hashIS5_ESt8equal_toIS5_ESaISt4pairIKS5_S6_EEE", !109, i64 0}
!109 = !{!"_ZTSSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_12BoneOverrideESaIS9_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSB_18_Mod_range_hashingENSB_20_Default_ranged_hashENSB_20_Prime_rehash_policyENSB_17_Hashtable_traitsILb1ELb0ELb1EEEE", !64, i64 0, !15, i64 8, !65, i64 16, !15, i64 24, !67, i64 32, !66, i64 48}
!110 = !{!"_ZTSN4core8vector2dIfEE", !34, i64 0, !34, i64 4}
!111 = !{!"_ZTSSt13unordered_setItSt4hashItESt8equal_toItESaItEE", !112, i64 0}
!112 = !{!"_ZTSSt10_HashtableIttSaItENSt8__detail9_IdentityESt8equal_toItESt4hashItENS1_18_Mod_range_hashingENS1_20_Default_ranged_hashENS1_20_Prime_rehash_policyENS1_17_Hashtable_traitsILb0ELb1ELb1EEEE", !64, i64 0, !15, i64 8, !65, i64 16, !15, i64 24, !67, i64 32, !66, i64 48}
!113 = !{!"p1 _ZTS12RemotePlayer", !14, i64 0}
!114 = !{!"_ZTS7LagPool", !34, i64 0, !34, i64 4}
!115 = !{!"_ZTS15IntervalLimiter", !34, i64 0}
!116 = !{!"_ZTSSt3setINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4lessIS5_ESaIS5_EE", !117, i64 0}
!117 = !{!"_ZTSSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_St9_IdentityIS5_ESt4lessIS5_ESaIS5_EE", !118, i64 0}
!118 = !{!"_ZTSNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_St9_IdentityIS5_ESt4lessIS5_ESaIS5_EE13_Rb_tree_implIS9_Lb1EEE", !119, i64 0, !10, i64 8}
!119 = !{!"_ZTSSt20_Rb_tree_key_compareISt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEE", !120, i64 0}
!120 = !{!"_ZTSSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE"}
!121 = !{!"_ZTS14SimpleMetadata", !50, i64 8, !122, i64 16}
!122 = !{!"_ZTSSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_St4hashIS5_ESt8equal_toIS5_ESaISt4pairIKS5_S5_EEE", !123, i64 0}
!123 = !{!"_ZTSSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESaIS8_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb1ELb0ELb1EEEE", !64, i64 0, !15, i64 8, !65, i64 16, !15, i64 24, !67, i64 32, !66, i64 48}
!124 = !{!"_ZTSN9PlayerSAOUt_E", !50, i64 0, !50, i64 0, !50, i64 0}
!125 = !{!46, !34, i64 1140}
!126 = !{!76, !34, i64 4}
!127 = !{!46, !50, i64 1150}
!128 = !{i8 0, i8 2}
!129 = !{}
!130 = !{!46, !34, i64 1144}
!131 = distinct !{!131, !24}
!132 = distinct !{!132, !24}
!133 = distinct !{!133, !24}
!134 = !{i64 0, i64 2, !41, i64 2, i64 2, !41, i64 4, i64 2, !41}
!135 = !{!11, !13, i64 8}
!136 = !{!137, !137, i64 0}
!137 = !{!"p1 _ZTSN4core8vector3dIsEE", !14, i64 0}
!138 = !{!139, !139, i64 0}
!139 = !{!"p1 _ZTSNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeIN4core8vector3dIsEELb1EEEEEE", !14, i64 0}
!140 = !{!141, !141, i64 0}
!141 = !{!"vtable pointer", !8, i64 0}
!142 = !{!143, !143, i64 0}
!143 = !{!"p1 _ZTS9ServerMap", !14, i64 0}
!144 = !{!145, !145, i64 0}
!145 = !{!"p1 _ZTS15ServerScripting", !14, i64 0}
!146 = !{!147, !145, i64 96}
!147 = !{!"_ZTS17ServerEnvironment", !148, i64 0, !155, i64 88, !145, i64 96, !161, i64 104, !162, i64 112, !178, i64 328, !182, i64 400, !68, i64 2920, !34, i64 3000, !115, i64 3004, !186, i64 3008, !6, i64 3152, !115, i64 3156, !115, i64 3160, !115, i64 3164, !50, i64 3168, !50, i64 3169, !6, i64 3172, !34, i64 3176, !6, i64 3180, !192, i64 3184, !197, i64 3208, !34, i64 3320, !34, i64 3324, !34, i64 3328, !34, i64 3332, !34, i64 3336, !34, i64 3340, !205, i64 3344, !210, i64 3368, !211, i64 3376, !115, i64 3384, !212, i64 3392, !6, i64 3448, !214, i64 3456, !216, i64 3512, !221, i64 3528, !221, i64 3544}
!148 = !{!"_ZTS11Environment", !6, i64 8, !149, i64 12, !6, i64 16, !34, i64 20, !34, i64 24, !50, i64 28, !6, i64 32, !150, i64 36, !152, i64 40, !153, i64 48}
!149 = !{!"_ZTSSt6atomicIfE", !34, i64 0}
!150 = !{!"_ZTSSt6atomicIjE", !151, i64 0}
!151 = !{!"_ZTSSt13__atomic_baseIjE", !6, i64 0}
end_hunk_1

Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/luanti/original/map?download=true
inline.NumInlined: 1940
inline.NumDeleted: 1002
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@_ZN8MMVManip13initialEmergeEN4core8vector3dIsEES2_b:._crit_edge.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store ptr @.str.24, ptr %i.b, align 8, !tbaa !148
  %i.bu = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN11StreamProxy20emit_with_null_checkIPKcEERS_OT_(ptr noundef nonnull align 8 dereferenceable(8) %i.bt, ptr noundef nonnull align 8 dereferenceable(8) %i.b)
          to label %bb.i unwind label %bb.t       ; 0 uses

bb.i:                                             ; preds = %.noexc92
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %i.bv = load ptr, ptr %i.bt, align 8, !tbaa !153 ; 5 uses
  %.not.i94 = icmp eq ptr %i.bv, null
  br i1 %.not.i94, label %_ZN11StreamProxylsIRjEERS_OT_.exit, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.bw = load ptr, ptr %i.bv, align 8, !tbaa !9
  %i.bx = getelementptr i8, ptr %i.bw, i64 -24
  %i.by = load i64, ptr %i.bx, align 8
  %i.bz = getelementptr inbounds i8, ptr %i.bv, i64 %i.by
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bz, i64 32
  %i.cb = load i32, ptr %i.ca, align 8, !tbaa !154
  %i.cc = icmp eq i32 %i.cb, 0
  br i1 %i.cc, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  invoke void @_ZN11StreamProxy16fix_stream_stateERSo(ptr noundef nonnull align 8 dereferenceable(8) %i.bv)
          to label %.noexc95 unwind label %bb.t

.noexc95:                                         ; preds = %bb.k
  %.pre.i = load ptr, ptr %i.bt, align 8, !tbaa !153
  br label %bb.l

bb.l:                                             ; preds = %.noexc95, %bb.j
  %i.cd = phi ptr [ %.pre.i, %.noexc95 ], [ %i.bv, %bb.j ]
  %i.ce = zext nneg i32 %i.bb to i64
  %i.cf = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertImEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %i.cd, i64 noundef %i.ce)
          to label %_ZN11StreamProxylsIRjEERS_OT_.exit unwind label %bb.t ; 0 uses

_ZN11StreamProxylsIRjEERS_OT_.exit:               ; preds = %bb.i, %bb.l
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr @.str.25, ptr %i.a, align 8, !tbaa !148
  %i.cg = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN11StreamProxy20emit_with_null_checkIPKcEERS_OT_(ptr noundef nonnull align 8 dereferenceable(8) %i.bt, ptr noundef nonnull align 8 dereferenceable(8) %i.a)
          to label %bb.m unwind label %bb.t       ; 2 uses

bb.m:                                             ; preds = %_ZN11StreamProxylsIRjEERS_OT_.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.ch = load ptr, ptr %i.cg, align 8, !tbaa !153 ; 5 uses
  %.not.i98 = icmp eq ptr %i.ch, null
  br i1 %.not.i98, label %_ZN11StreamProxylsEPFRSoS0_E.exit, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.ci = load ptr, ptr %i.ch, align 8, !tbaa !9
  %i.cj = getelementptr i8, ptr %i.ci, i64 -24
  %i.ck = load i64, ptr %i.cj, align 8            ; 2 uses
  %i.cl = getelementptr inbounds i8, ptr %i.ch, i64 %i.ck
  %i.cm = getelementptr inbounds nuw i8, ptr %i.cl, i64 32
  %i.cn = load i32, ptr %i.cm, align 8, !tbaa !154
  %i.co = icmp eq i32 %i.cn, 0
  br i1 %i.co, label %bb.p, label %bb.o

bb.o:                                             ; preds = %bb.n
  invoke void @_ZN11StreamProxy16fix_stream_stateERSo(ptr noundef nonnull align 8 dereferenceable(8) %i.ch)
          to label %.noexc100 unwind label %bb.t

.noexc100:                                        ; preds = %bb.o
  %.pre.i99 = load ptr, ptr %i.cg, align 8, !tbaa !153 ; 2 uses
  %.pre = load ptr, ptr %.pre.i99, align 8, !tbaa !9
  %.phi.trans.insert = getelementptr i8, ptr %.pre, i64 -24
  %.pre268 = load i64, ptr %.phi.trans.insert, align 8
  br label %bb.p

bb.p:                                             ; preds = %.noexc100, %bb.n
  %i.cp = phi i64 [ %.pre268, %.noexc100 ], [ %i.ck, %bb.n ]
  %i.cq = phi ptr [ %.pre.i99, %.noexc100 ], [ %i.ch, %bb.n ] ; 2 uses
  %i.cr = getelementptr inbounds i8, ptr %i.cq, i64 %i.cp
  %i.cs = getelementptr inbounds nuw i8, ptr %i.cr, i64 240
  %i.ct = load ptr, ptr %i.cs, align 8, !tbaa !71 ; 6 uses
  %.not.i.i.i155 = icmp eq ptr %i.ct, null
  br i1 %.not.i.i.i155, label %bb.q, label %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i

bb.q:                                             ; preds = %bb.p
  invoke void @_ZSt16__throw_bad_castv() #30
          to label %.noexc156 unwind label %bb.t

.noexc156:                                        ; preds = %bb.q
  unreachable

_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i: ; preds = %bb.p
  %i.cu = getelementptr inbounds nuw i8, ptr %i.ct, i64 56
  %i.cv = load i8, ptr %i.cu, align 8, !tbaa !84
  %.not.i1.i.i = icmp eq i8 %i.cv, 0
  br i1 %.not.i1.i.i, label %bb.s, label %bb.r

bb.r:                                             ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i
  %i.cw = getelementptr inbounds nuw i8, ptr %i.ct, i64 67
  %i.cx = load i8, ptr %i.cw, align 1, !tbaa !90
  br label %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i

bb.s:                                             ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i
  invoke void @_ZNKSt5ctypeIcE13_M_widen_initEv(ptr noundef nonnull align 8 dereferenceable(570) %i.ct)
          to label %.noexc157 unwind label %bb.t

.noexc157:                                        ; preds = %bb.s
  %i.cy = load ptr, ptr %i.ct, align 8, !tbaa !9
  %i.cz = getelementptr inbounds nuw i8, ptr %i.cy, i64 48
  %i.da = load ptr, ptr %i.cz, align 8
  %i.db = invoke noundef signext i8 %i.da(ptr noundef nonnull align 8 dereferenceable(570) %i.ct, i8 noundef signext 10)
          to label %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i unwind label %bb.t, !inline_history !294

_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i: ; preds = %.noexc157, %bb.r
  %.0.i.i.i = phi i8 [ %i.cx, %bb.r ], [ %i.db, %.noexc157 ]
  %i.dc = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %i.cq, i8 noundef signext %.0.i.i.i)
          to label %.noexc159 unwind label %bb.t

.noexc159:                                        ; preds = %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i
  %i.dd = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8) %i.dc)
          to label %_ZN11StreamProxylsEPFRSoS0_E.exit unwind label %bb.t ; 0 uses

.body:                                            ; preds = %bb.a, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  %i.de = load ptr, ptr %5, align 8, !tbaa !106   ; 2 uses
  %i.df = icmp eq ptr %i.de, %i.d
  br i1 %i.df, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit104, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i102

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i102: ; preds = %.body
  %i.dg = load i64, ptr %i.d, align 8, !tbaa !90
  %i.dh = add i64 %i.dg, 1
  call void @_ZdlPvm(ptr noundef %i.de, i64 noundef %i.dh) #28
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit104

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit104: ; preds = %.body, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i102
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #27
  br label %_ZN9TimeTakerD2Ev.exit154

bb.t:                                             ; preds = %.noexc159, %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i, %.noexc157, %bb.s, %bb.q, %bb.o, %_ZN11StreamProxylsIRjEERS_OT_.exit, %bb.l, %bb.k, %.noexc92, %_ZTW10infostream.exit90, %_ZTW10infostream.exit86, %.noexc83, %_ZTW10infostream.exit, %bb.f
  %i.di = landingpad { ptr, i32 }
          cleanup
  br label %bb.bn

_ZN11StreamProxylsEPFRSoS0_E.exit:                ; preds = %bb.m, %.noexc159, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #27
  %i.dj = getelementptr inbounds nuw i8, ptr %7, i64 8 ; 9 uses
  store i32 0, ptr %i.dj, align 8, !tbaa !37
  %i.dk = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 7 uses
  store ptr null, ptr %i.dk, align 8, !tbaa !38
  %i.dl = getelementptr inbounds nuw i8, ptr %7, i64 24 ; 3 uses
  store ptr %i.dj, ptr %i.dl, align 8, !tbaa !39
  %i.dm = getelementptr inbounds nuw i8, ptr %7, i64 32 ; 2 uses
  store ptr %i.dj, ptr %i.dm, align 8, !tbaa !40
  %i.dn = getelementptr inbounds nuw i8, ptr %7, i64 40 ; 3 uses
  store i64 0, ptr %i.dn, align 8, !tbaa !41
  %i.do = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.dp = load i16, ptr %i.af, align 2, !tbaa !353, !noalias !354 ; 2 uses
  %i.dq = load i16, ptr %i.do, align 8, !tbaa !357, !noalias !354 ; 2 uses
  %i.dr = icmp slt i16 %i.dp, %i.dq
  br i1 %i.dr, label %_ZNK9VoxelArea14hasEmptyExtentEv.exit.thread, label %bb.u

bb.u:                                             ; preds = %_ZN11StreamProxylsEPFRSoS0_E.exit
  %i.ds = load i16, ptr %6, align 8, !tbaa !357, !noalias !354 ; 2 uses
  %i.dt = getelementptr inbounds nuw i8, ptr %0, i64 14
  %i.du = load i16, ptr %i.dt, align 2, !tbaa !353, !noalias !354 ; 2 uses
  %i.dv = icmp sgt i16 %i.ds, %i.du
  br i1 %i.dv, label %_ZNK9VoxelArea14hasEmptyExtentEv.exit.thread, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.dw = load i16, ptr %i.an, align 8, !tbaa !358, !noalias !354 ; 2 uses
  %i.dx = getelementptr inbounds nuw i8, ptr %0, i64 10
  %i.dy = load i16, ptr %i.dx, align 2, !tbaa !359, !noalias !354 ; 2 uses
  %i.dz = icmp slt i16 %i.dw, %i.dy
  br i1 %i.dz, label %_ZNK9VoxelArea14hasEmptyExtentEv.exit.thread, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.ea = load i16, ptr %i.ao, align 2, !tbaa !359, !noalias !354 ; 2 uses
  %i.eb = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.ec = load i16, ptr %i.eb, align 8, !tbaa !358, !noalias !354 ; 2 uses
  %i.ed = icmp sgt i16 %i.ea, %i.ec
  br i1 %i.ed, label %_ZNK9VoxelArea14hasEmptyExtentEv.exit.thread, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.ee = load i16, ptr %i.at, align 2, !tbaa !360, !noalias !354 ; 2 uses
  %i.ef = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.eg = load i16, ptr %i.ef, align 4, !tbaa !361, !noalias !354 ; 2 uses
  %i.eh = icmp slt i16 %i.ee, %i.eg
  br i1 %i.eh, label %_ZNK9VoxelArea14hasEmptyExtentEv.exit.thread, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.ei = load i16, ptr %i.au, align 4, !tbaa !361, !noalias !354 ; 2 uses
  %i.ej = getelementptr inbounds nuw i8, ptr %0, i64 18
  %i.ek = load i16, ptr %i.ej, align 2, !tbaa !360, !noalias !354 ; 2 uses
  %i.el = icmp sgt i16 %i.ei, %i.ek
  br i1 %i.el, label %_ZNK9VoxelArea14hasEmptyExtentEv.exit.thread, label %_ZNK9VoxelArea9intersectERKS_.exit

_ZNK9VoxelArea9intersectERKS_.exit:               ; preds = %bb.y
  %i.em = call i16 @llvm.smax.i16(i16 %i.ds, i16 %i.dq)
  %i.en = call i16 @llvm.smin.i16(i16 %i.du, i16 %i.dp)
  %i.eo = call i16 @llvm.smax.i16(i16 %i.ea, i16 %i.dy)
  %i.ep = call i16 @llvm.smin.i16(i16 %i.ec, i16 %i.dw)
  %i.eq = call i16 @llvm.smax.i16(i16 %i.ei, i16 %i.eg)
  %i.er = call i16 @llvm.smin.i16(i16 %i.ek, i16 %i.ee)
  %i.es = sext i16 %i.en to i32
  %i.et = sext i16 %i.em to i32
  %reass.sub.i = sub nsw i32 %i.es, %i.et
  %i.eu = sext i16 %i.ep to i32
  %i.ev = sext i16 %i.eo to i32
  %10 = add nsw i32 %i.eu, 1
  %i.ew = sext i16 %i.er to i32
  %i.ex = sext i16 %i.eq to i32
  %reass.sub24.i = sub nsw i32 %i.ew, %i.ex
  %.not.i105 = icmp eq i32 %reass.sub.i, -1
  %.not1.i = icmp eq i32 %10, %i.ev
  %or.cond.i = select i1 %.not.i105, i1 true, i1 %.not1.i
  %.not2.i = icmp eq i32 %reass.sub24.i, -1
  %or.cond = select i1 %or.cond.i, i1 true, i1 %.not2.i
  br i1 %or.cond, label %_ZNK9VoxelArea14hasEmptyExtentEv.exit.thread, label %bb.z

bb.z:                                             ; preds = %_ZNK9VoxelArea9intersectERKS_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #27
  invoke void @_ZNK8MMVManip16getCoveredBlocksEv(ptr dead_on_unwind nonnull writable sret(%"class.std::map.218") align 8 %8, ptr noundef nonnull align 8 dereferenceable(88) %0)
          to label %bb.aa unwind label %bb.ae

bb.aa:                                            ; preds = %bb.z
  %i.ey = load ptr, ptr %i.dk, align 8, !tbaa !38
  invoke void @_ZNSt8_Rb_treeIN4core8vector3dIsEESt4pairIKS2_bESt10_Select1stIS5_ESt4lessIS2_ESaIS5_EE8_M_eraseEPSt13_Rb_tree_nodeIS5_E(ptr noundef nonnull align 8 dereferenceable(48) %7, ptr noundef %i.ey)
          to label %_ZNSt8_Rb_treeIN4core8vector3dIsEESt4pairIKS2_bESt10_Select1stIS5_ESt4lessIS2_ESaIS5_EE5clearEv.exit.i.i.i unwind label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.ez = landingpad { ptr, i32 }
          catch ptr null
  %i.fa = extractvalue { ptr, i32 } %i.ez, 0
  call void @__clang_call_terminate(ptr %i.fa) #29
  unreachable

_ZNSt8_Rb_treeIN4core8vector3dIsEESt4pairIKS2_bESt10_Select1stIS5_ESt4lessIS2_ESaIS5_EE5clearEv.exit.i.i.i: ; preds = %bb.aa
  store ptr null, ptr %i.dk, align 8, !tbaa !38
  store ptr %i.dj, ptr %i.dl, align 8, !tbaa !39
  store ptr %i.dj, ptr %i.dm, align 8, !tbaa !40
  store i64 0, ptr %i.dn, align 8, !tbaa !41
  %i.fb = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 2 uses
  %i.fc = load ptr, ptr %i.fb, align 8, !tbaa !92 ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.fc, null
  br i1 %.not.i.i.i, label %_ZNSt3mapIN4core8vector3dIsEEbSt4lessIS2_ESaISt4pairIKS2_bEEEaSEOS9_.exit, label %bb.ac

bb.ac:                                            ; preds = %_ZNSt8_Rb_treeIN4core8vector3dIsEESt4pairIKS2_bESt10_Select1stIS5_ESt4lessIS2_ESaIS5_EE5clearEv.exit.i.i.i
  %i.fd = getelementptr inbounds nuw i8, ptr %8, i64 8 ; 3 uses
  %i.fe = load i32, ptr %i.fd, align 8, !tbaa !37
  store i32 %i.fe, ptr %i.dj, align 8, !tbaa !37
  store ptr %i.fc, ptr %i.dk, align 8, !tbaa !38
  %i.ff = getelementptr inbounds nuw i8, ptr %8, i64 24 ; 2 uses
  %i.fg = getelementptr inbounds nuw i8, ptr %8, i64 32
  %i.fh = load <2 x ptr>, ptr %i.ff, align 8, !tbaa !92
  store <2 x ptr> %i.fh, ptr %i.dl, align 8, !tbaa !92
  %i.fi = getelementptr inbounds nuw i8, ptr %i.fc, i64 8
  store ptr %i.dj, ptr %i.fi, align 8, !tbaa !362
  %i.fj = getelementptr inbounds nuw i8, ptr %8, i64 40 ; 2 uses
  %i.fk = load i64, ptr %i.fj, align 8, !tbaa !41
  store i64 %i.fk, ptr %i.dn, align 8, !tbaa !41
  store ptr null, ptr %i.fb, align 8, !tbaa !38
  store ptr %i.fd, ptr %i.ff, align 8, !tbaa !39
  store ptr %i.fd, ptr %i.fg, align 8, !tbaa !40
  store i64 0, ptr %i.fj, align 8, !tbaa !41
  br label %_ZNSt3mapIN4core8vector3dIsEEbSt4lessIS2_ESaISt4pairIKS2_bEEEaSEOS9_.exit

_ZNSt3mapIN4core8vector3dIsEEbSt4lessIS2_ESaISt4pairIKS2_bEEEaSEOS9_.exit: ; preds = %_ZNSt8_Rb_treeIN4core8vector3dIsEESt4pairIKS2_bESt10_Select1stIS5_ESt4lessIS2_ESaIS5_EE5clearEv.exit.i.i.i, %bb.ac
  invoke void @_ZNSt8_Rb_treeIN4core8vector3dIsEESt4pairIKS2_bESt10_Select1stIS5_ESt4lessIS2_ESaIS5_EE8_M_eraseEPSt13_Rb_tree_nodeIS5_E(ptr noundef nonnull align 8 dereferenceable(48) %8, ptr noundef null)
          to label %_ZNSt3mapIN4core8vector3dIsEEbSt4lessIS2_ESaISt4pairIKS2_bEEED2Ev.exit unwind label %bb.ad

bb.ad:                                            ; preds = %_ZNSt3mapIN4core8vector3dIsEEbSt4lessIS2_ESaISt4pairIKS2_bEEEaSEOS9_.exit
  %i.fl = landingpad { ptr, i32 }
          catch ptr null
  %i.fm = extractvalue { ptr, i32 } %i.fl, 0
  call void @__clang_call_terminate(ptr %i.fm) #29
  unreachable

_ZNSt3mapIN4core8vector3dIsEEbSt4lessIS2_ESaISt4pairIKS2_bEEED2Ev.exit: ; preds = %_ZNSt3mapIN4core8vector3dIsEEbSt4lessIS2_ESaISt4pairIKS2_bEEEaSEOS9_.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #27
  br label %_ZNK9VoxelArea14hasEmptyExtentEv.exit.thread

bb.ae:                                            ; preds = %bb.z
  %i.fn = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #27
  br label %bb.bl

_ZNK9VoxelArea14hasEmptyExtentEv.exit.thread:     ; preds = %bb.x, %bb.y, %bb.w, %bb.u, %bb.v, %_ZN11StreamProxylsEPFRSoS0_E.exit, %_ZNK9VoxelArea9intersectERKS_.exit, %_ZNSt3mapIN4core8vector3dIsEEbSt4lessIS2_ESaISt4pairIKS2_bEEED2Ev.exit
  %i.fo = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.fp = load i32, ptr %i.fo, align 4, !tbaa !363
  %.not.i106 = icmp eq i32 %i.fp, 0
  %i.fq = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.fr = load i32, ptr %i.fq, align 8
  %.not1.i107 = icmp eq i32 %i.fr, 0
  %or.cond.i108 = select i1 %.not.i106, i1 true, i1 %.not1.i107
  br i1 %or.cond.i108, label %_ZNK9VoxelArea14hasEmptyExtentEv.exit110, label %bb.af

bb.af:                                            ; preds = %_ZNK9VoxelArea14hasEmptyExtentEv.exit.thread
  %i.fs = getelementptr inbounds nuw i8, ptr %0, i64 28
  %i.ft = load i32, ptr %i.fs, align 4, !tbaa !364
  %.not2.i109 = icmp eq i32 %i.ft, 0
  br label %_ZNK9VoxelArea14hasEmptyExtentEv.exit110

_ZNK9VoxelArea14hasEmptyExtentEv.exit110:         ; preds = %_ZNK9VoxelArea14hasEmptyExtentEv.exit.thread, %bb.af
  %i.fu = phi i1 [ %.not2.i109, %bb.af ], [ true, %_ZNK9VoxelArea14hasEmptyExtentEv.exit.thread ]
  invoke void @_ZN16VoxelManipulator7addAreaERK9VoxelArea(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 4 dereferenceable(24) %6)
          to label %bb.ag unwind label %bb.ah

bb.ag:                                            ; preds = %_ZNK9VoxelArea14hasEmptyExtentEv.exit110
  %.not254 = icmp sgt i16 %.sroa.5223.0.extract.trunc, %.sroa.5217.0.extract.trunc
  br i1 %.not254, label %._crit_edge258.split, label %.lr.ph257

.lr.ph257:                                        ; preds = %bb.ag
  %i.fv = sext i16 %.sroa.3221.0.extract.trunc to i32
  %.not44249 = icmp sgt i16 %.sroa.3221.0.extract.trunc, %.sroa.3.0.extract.trunc
  %i.fw = sext i16 %.sroa.0219.0.extract.trunc to i32
  %.not45247 = icmp sgt i16 %.sroa.0219.0.extract.trunc, %.sroa.0214.0.extract.trunc
  %i.fx = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.fy = getelementptr inbounds nuw i8, ptr %9, i64 6
  %i.fz = getelementptr inbounds nuw i8, ptr %9, i64 12
  %i.ga = getelementptr inbounds nuw i8, ptr %9, i64 16
  %i.gb = getelementptr inbounds nuw i8, ptr %9, i64 20
  %brmerge = select i1 %.not44249, i1 true, i1 %.not45247
  br i1 %brmerge, label %._crit_edge258.split, label %.lr.ph252.preheader

.lr.ph252.preheader:                              ; preds = %.lr.ph257
  %i.gc = sext i16 %.sroa.0214.0.extract.trunc to i32
  %i.gd = sext i16 %.sroa.3.0.extract.trunc to i32
  %i.ge = sext i16 %.sroa.5223.0.extract.trunc to i32
  %i.gf = call i16 @llvm.smax.i16(i16 %.sroa.5223.0.extract.trunc, i16 %.sroa.5217.0.extract.trunc)
  %smax266 = sext i16 %i.gf to i32
  br label %.lr.ph252

._crit_edge258.split:                             ; preds = %._crit_edge253, %.lr.ph257, %bb.ag
  br i1 %i.fu, label %bb.bg, label %bb.bh

bb.ah:                                            ; preds = %_ZNK9VoxelArea14hasEmptyExtentEv.exit110
  %i.gg = landingpad { ptr, i32 }
          cleanup
  br label %bb.bl

.lr.ph252:                                        ; preds = %.lr.ph252.preheader, %._crit_edge253
  %.035255 = phi i32 [ %i.gt, %._crit_edge253 ], [ %i.ge, %.lr.ph252.preheader ] ; 4 uses
  %i.gh = trunc i32 %.035255 to i16               ; 7 uses
  %.mask = and i32 %.035255, 65535
  %.sroa.14.0.insert.ext194 = zext nneg i32 %.mask to i48
  %.sroa.14.0.insert.shift195 = shl nuw i48 %.sroa.14.0.insert.ext194, 32 ; 2 uses
  %i.gi = sext i16 %i.gh to i64
  %i.gj = ashr exact i48 %.sroa.14.0.insert.shift195, 32
  %i.gk = trunc nsw i48 %i.gj to i32
  %i.gl = add nsw i32 %i.gk, -1938
  %i.gm = icmp ult i32 %i.gl, -3875
  %i.gn = shl i16 %i.gh, 4                        ; 4 uses
  %.sroa.3.0.insert.ext.i118 = zext i16 %i.gn to i48
  %.sroa.3.0.insert.shift.i119 = shl nuw i48 %.sroa.3.0.insert.ext.i118, 32
  %i.go = or disjoint i16 %i.gn, 15
  %.sroa.3.0.insert.ext.i139 = zext i16 %i.go to i48
  %.sroa.3.0.insert.shift.i140 = shl nuw i48 %.sroa.3.0.insert.ext.i139, 32
  %i.gp = sext i16 %i.gn to i32
  %i.gq = sext i16 %i.gn to i32
  %i.gr = add nsw i32 %i.gq, 16
  %i.gs = sub nsw i32 %i.gr, %i.gp
  br label %.lr.ph

._crit_edge253:                                   ; preds = %._crit_edge
  %i.gt = add nsw i32 %.035255, 1
  %exitcond267.not = icmp eq i32 %.035255, %smax266
  br i1 %exitcond267.not, label %._crit_edge258.split, label %.lr.ph252, !llvm.loop !365

.lr.ph:                                           ; preds = %.lr.ph252, %._crit_edge
  %.037250 = phi i32 [ %i.fv, %.lr.ph252 ], [ %i.he, %._crit_edge ] ; 4 uses
  %i.gu = trunc nsw i32 %.037250 to i16           ; 5 uses
  %i.gv = shl i32 %.037250, 16
  %.sroa.10.0.insert.shift185 = zext i32 %i.gv to i48
  %.sroa.10.0.insert.insert187 = or disjoint i48 %.sroa.14.0.insert.shift195, %.sroa.10.0.insert.shift185 ; 2 uses
  %sh.diff.i = lshr exact i48 %.sroa.10.0.insert.insert187, 16 ; 2 uses
  %tr.sh.diff.i = trunc nuw i48 %sh.diff.i to i32
  %.sroa.4.0.insert.shift.i = and i32 %tr.sh.diff.i, -65536
  %.sroa.2.0.extract.trunc.i = trunc i48 %sh.diff.i to i16 ; 2 uses
  %i.gw = add i16 %.sroa.2.0.extract.trunc.i, -1938
  %i.gx = icmp ult i16 %i.gw, -3875
  %i.gy = shl i16 %i.gu, 4                        ; 4 uses
  %.sroa.2.0.insert.ext.i120 = zext i16 %i.gy to i48
  %.sroa.2.0.insert.shift.i121 = shl nuw nsw i48 %.sroa.2.0.insert.ext.i120, 16
  %i.gz = or disjoint i16 %i.gy, 15
  %.sroa.2.0.insert.ext.i141 = zext i16 %i.gz to i48
  %.sroa.2.0.insert.shift.i142 = shl nuw nsw i48 %.sroa.2.0.insert.ext.i141, 16
  %invariant.op = or disjoint i48 %.sroa.3.0.insert.shift.i119, %.sroa.2.0.insert.shift.i121
  %invariant.op313 = or disjoint i48 %.sroa.3.0.insert.shift.i140, %.sroa.2.0.insert.shift.i142
  %i.ha = sext i16 %i.gy to i32
  %i.hb = sext i16 %i.gy to i32
  %i.hc = add nsw i32 %i.hb, 16
  %i.hd = sub nsw i32 %i.hc, %i.ha
  br label %bb.ai

._crit_edge:                                      ; preds = %bb.bf
  %i.he = add nsw i32 %.037250, 1
  %exitcond265.not = icmp eq i32 %.037250, %i.gd
  br i1 %exitcond265.not, label %._crit_edge253, label %.lr.ph, !llvm.loop !366

bb.ai:                                            ; preds = %.lr.ph, %bb.bf
  %.038248 = phi i32 [ %i.fw, %.lr.ph ], [ %i.ku, %bb.bf ] ; 4 uses
  %i.hf = trunc i32 %.038248 to i16               ; 10 uses
  %i.hg = load ptr, ptr %i.dk, align 8, !tbaa !38 ; 2 uses
  %.not12.i.i.i = icmp eq ptr %i.hg, null
  br i1 %.not12.i.i.i, label %.critedge61, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.ai, %_ZNKSt4lessIN4core8vector3dIsEEEclERKS2_S5_.exit.thread11.i.i.i
  %.014.i.i.i = phi ptr [ %.1.i.i.i, %_ZNKSt4lessIN4core8vector3dIsEEEclERKS2_S5_.exit.thread11.i.i.i ], [ %i.hg, %bb.ai ] ; 7 uses
  %.0813.i.i.i = phi ptr [ %.19.i.i.i, %_ZNKSt4lessIN4core8vector3dIsEEEclERKS2_S5_.exit.thread11.i.i.i ], [ %i.dj, %bb.ai ]
  %i.hh = getelementptr inbounds nuw i8, ptr %.014.i.i.i, i64 32
  %i.hi = load i16, ptr %i.hh, align 2, !tbaa !162 ; 2 uses
  %i.hj = icmp slt i16 %i.hi, %i.hf
  br i1 %i.hj, label %_ZNKSt4lessIN4core8vector3dIsEEEclERKS2_S5_.exit.thread.i.i.i, label %bb.aj
end_hunk_0

inline.NumInlined: 3741
inline.NumDeleted: 859
begin_hunk_0_@_ZN6Assimp15ColladaExporter9WriteNodeEPK6aiNode:bb.a
  %i.bv = icmp ult i64 %i.bu, 5
  br i1 %i.bv, label %.invoke.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i: ; preds = %bb.n
  %i.bw = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %6, ptr noundef nonnull @.str.318, i64 noundef 5)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit.i.i unwind label %bb.o ; 0 uses

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i
  %i.bx = load i64, ptr %i.br, align 8, !alias.scope !317
  %i.by = sub i64 4611686018427387903, %i.bx
  %i.bz = icmp ult i64 %i.by, %i.bp
  br i1 %i.bz, label %.invoke.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i10.i.i

.invoke.i.i:                                      ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit.i.i, %bb.n
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.355) #26
          to label %.cont.i.i unwind label %bb.o

.cont.i.i:                                        ; preds = %.invoke.i.i
  unreachable

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i10.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit.i.i
  %i.ca = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %6, ptr noundef %i.bo, i64 noundef %i.bp)
          to label %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_RKS8_.exit unwind label %bb.o ; 0 uses

bb.o:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i10.i.i, %.invoke.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i, %bb.m
  %i.cb = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.cc = load ptr, ptr %6, align 8, !alias.scope !317 ; 2 uses
  %i.cd = icmp eq ptr %i.cc, %i.bq
  br i1 %i.cd, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i: ; preds = %bb.o
  %i.ce = load i64, ptr %i.bq, align 8, !alias.scope !317
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i.sink.split

_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_RKS8_.exit: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i10.i.i
  call void @llvm.experimental.noalias.scope.decl(metadata !320)
  %i.cf = load i64, ptr %i.br, align 8, !noalias !320
  %i.cg = and i64 %i.cf, -2
  %i.ch = icmp eq i64 %i.cg, 4611686018427387902
  br i1 %i.ch, label %bb.p, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i

bb.p:                                             ; preds = %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_RKS8_.exit
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.355) #26
          to label %.noexc unwind label %.critedge126.thread

.noexc:                                           ; preds = %bb.p
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i: ; preds = %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_RKS8_.exit
  %i.ci = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %6, ptr noundef nonnull @.str.255, i64 noundef 2)
          to label %.noexc146 unwind label %.critedge126.thread ; 6 uses

.noexc146:                                        ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i
  %i.cj = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 3 uses
  store ptr %i.cj, ptr %5, align 8, !alias.scope !320
  %i.ck = load ptr, ptr %i.ci, align 8            ; 2 uses
  %i.cl = getelementptr inbounds nuw i8, ptr %i.ci, i64 16 ; 5 uses
  %i.cm = icmp eq ptr %i.ck, %i.cl
  br i1 %i.cm, label %bb.q, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

bb.q:                                             ; preds = %.noexc146
  %i.cn = getelementptr inbounds nuw i8, ptr %i.ci, i64 8
  %i.co = load i64, ptr %i.cn, align 8            ; 3 uses
  %i.cp = icmp ult i64 %i.co, 16
  call void @llvm.assume(i1 %i.cp)
  %i.cq = add nuw nsw i64 %i.co, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.cj, ptr noundef nonnull align 8 dereferenceable(1) %i.cl, i64 %i.cq, i1 false)
  br label %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_PKS5_.exit

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %.noexc146
  store ptr %i.ck, ptr %5, align 8, !alias.scope !320
  %i.cr = load i64, ptr %i.cl, align 8
  store i64 %i.cr, ptr %i.cj, align 8, !alias.scope !320
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %i.ci, i64 8
  %.pre.i = load i64, ptr %.phi.trans.insert.i, align 8
  br label %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_PKS5_.exit

_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_PKS5_.exit: ; preds = %bb.q, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  %i.cs = phi i64 [ %i.co, %bb.q ], [ %.pre.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ]
  %i.ct = getelementptr inbounds nuw i8, ptr %i.ci, i64 8
  %i.cu = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 2 uses
  store i64 %i.cs, ptr %i.cu, align 8, !alias.scope !320
  store ptr %i.cl, ptr %i.ci, align 8
  store i64 0, ptr %i.ct, align 8
  store i8 0, ptr %i.cl, align 8
  %.pre = load ptr, ptr %5, align 8
  %.pre619 = load i64, ptr %i.cu, align 8
  br label %bb.r

._crit_edge.i.i:                                  ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit145
  %i.cv = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 3 uses
  store ptr %i.cv, ptr %5, align 8
  %i.cw = getelementptr inbounds nuw i8, ptr %5, i64 8
  store i64 0, ptr %i.cw, align 8
  store i8 0, ptr %i.cv, align 8
  br label %bb.r

bb.r:                                             ; preds = %._crit_edge.i.i, %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_PKS5_.exit
  %i.cx = phi i64 [ 0, %._crit_edge.i.i ], [ %.pre619, %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_PKS5_.exit ]
  %i.cy = phi ptr [ %i.cv, %._crit_edge.i.i ], [ %.pre, %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_PKS5_.exit ]
  %i.cz = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.bm, ptr noundef %i.cy, i64 noundef %i.cx)
          to label %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit149 unwind label %bb.t ; 0 uses

_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit149: ; preds = %bb.r
  %i.da = load ptr, ptr %5, align 8               ; 2 uses
  %i.db = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  %i.dc = icmp eq ptr %i.da, %i.db
  br i1 %i.dc, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i150

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i150: ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit149
  %i.dd = load i64, ptr %i.db, align 8
  %i.de = add i64 %i.dd, 1
  call void @_ZdlPvm(ptr noundef %i.da, i64 noundef %i.de) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit149, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i150
  br i1 %.064, label %.critedge127, label %.critedge124

.critedge127:                                     ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.df = load ptr, ptr %6, align 8               ; 2 uses
  %i.dg = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 2 uses
  %i.dh = icmp eq ptr %i.df, %i.dg
  br i1 %i.dh, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit153, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i151

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i151: ; preds = %.critedge127
  %i.di = load i64, ptr %i.dg, align 8
  %i.dj = add i64 %i.di, 1
  call void @_ZdlPvm(ptr noundef %i.df, i64 noundef %i.dj) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit153

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit153: ; preds = %.critedge127, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i151
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #25
  br label %.critedge124

.critedge124:                                     ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit153
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #25
  %i.dk = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.ay, ptr noundef nonnull @.str.319, i64 noundef 6)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit155 unwind label %bb.l ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit155: ; preds = %.critedge124
  %i.dl = load ptr, ptr %4, align 8
  %i.dm = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.dn = load i64, ptr %i.dm, align 8
  %i.do = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.ay, ptr noundef %i.dl, i64 noundef %i.dn)
          to label %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit157 unwind label %bb.l ; 4 uses

_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit157: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit155
  %i.dp = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.do, ptr noundef nonnull @.str.320, i64 noundef 8)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit159 unwind label %bb.l ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit159: ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit157
  %i.dq = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %.063) #25
  %i.dr = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.do, ptr noundef nonnull %.063, i64 noundef %i.dq)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit162 unwind label %bb.l ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit162: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit159
  %i.ds = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.do, ptr noundef nonnull @.str.116, i64 noundef 2)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit164 unwind label %bb.l ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit164: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit162
  %i.dt = getelementptr inbounds nuw i8, ptr %0, i64 1168 ; 23 uses
  %i.du = load ptr, ptr %i.dt, align 8
  %i.dv = getelementptr inbounds nuw i8, ptr %0, i64 1176 ; 23 uses
  %i.dw = load i64, ptr %i.dv, align 8
  %i.dx = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.do, ptr noundef %i.du, i64 noundef %i.dw)
          to label %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit166 unwind label %bb.l ; 0 uses

_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit166: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit164
  %i.dy = load i64, ptr %i.bb, align 8
  %i.dz = and i64 %i.dy, -2
  %i.ea = icmp eq i64 %i.dz, 4611686018427387902
  br i1 %i.ea, label %bb.s, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i167

bb.s:                                             ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit166
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.355) #26
          to label %.noexc168 unwind label %bb.l

.noexc168:                                        ; preds = %bb.s
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i167: ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit166
  %i.eb = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %i.az, ptr noundef nonnull @.str.349, i64 noundef 2)
          to label %_ZN6Assimp15ColladaExporter7PushTagEv.exit unwind label %bb.l ; 0 uses

_ZN6Assimp15ColladaExporter7PushTagEv.exit:       ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i167
  %i.ec = getelementptr inbounds nuw i8, ptr %1, i64 1028
  %i.ed = load <16 x float>, ptr %i.ec, align 4   ; 5 uses
  %i.ee = shufflevector <16 x float> %i.ed, <16 x float> poison, <16 x i32> <i32 0, i32 4, i32 8, i32 12, i32 1, i32 5, i32 9, i32 13, i32 2, i32 6, i32 10, i32 14, i32 3, i32 7, i32 11, i32 15> ; 2 uses
  %i.ef = getelementptr inbounds nuw i8, ptr %0, i64 1088 ; 5 uses
  %i.eg = load ptr, ptr %i.ef, align 8            ; 2 uses
  %i.eh = getelementptr inbounds nuw i8, ptr %i.eg, i64 96
  %i.ei = load i32, ptr %i.eh, align 8            ; 2 uses
  %i.ej = zext i32 %i.ei to i64
  %.not580 = icmp eq i32 %i.ei, 0
  br i1 %.not580, label %.loopexit530, label %.lr.ph

.lr.ph:                                           ; preds = %_ZN6Assimp15ColladaExporter7PushTagEv.exit
  %i.ek = getelementptr inbounds nuw i8, ptr %i.eg, i64 104
  %i.el = load ptr, ptr %i.ek, align 8            ; 2 uses
  %i.em = load i32, ptr %1, align 8               ; 2 uses
  %i.en = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.eo = zext i32 %i.em to i64
  br label %bb.v

.critedge126.thread:                              ; preds = %bb.p, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i
  %i.ep = landingpad { ptr, i32 }
          cleanup
  br label %bb.u

bb.t:                                             ; preds = %bb.r
  %i.eq = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.er = load ptr, ptr %5, align 8               ; 2 uses
  %i.es = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  %i.et = icmp eq ptr %i.er, %i.es
  br i1 %i.et, label %.critedge126, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i170

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i170: ; preds = %bb.t
  %i.eu = load i64, ptr %i.es, align 8
  %i.ev = add i64 %i.eu, 1
  call void @_ZdlPvm(ptr noundef %i.er, i64 noundef %i.ev) #27
  br label %.critedge126

.critedge126:                                     ; preds = %bb.t, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i170
  br i1 %.064, label %bb.u, label %.body

bb.u:                                             ; preds = %.critedge126.thread, %.critedge126
  %.pn.pn513 = phi { ptr, i32 } [ %i.ep, %.critedge126.thread ], [ %i.eq, %.critedge126 ] ; 2 uses
  %i.ew = load ptr, ptr %6, align 8               ; 2 uses
  %i.ex = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 2 uses
  %i.ey = icmp eq ptr %i.ew, %i.ex
  br i1 %i.ey, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i173

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i173: ; preds = %bb.u
  %i.ez = load i64, ptr %i.ex, align 8
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i.sink.split

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i.sink.split: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i173, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i
  %.sink759 = phi i64 [ %i.ce, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i ], [ %i.ez, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i173 ]
  %.sink = phi ptr [ %i.cc, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i ], [ %i.ew, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i173 ]
  %.pn.pn.pn.ph.ph = phi { ptr, i32 } [ %i.cb, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i ], [ %.pn.pn513, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i173 ]
  %i.fa = add i64 %.sink759, 1
  call void @_ZdlPvm(ptr noundef %.sink, i64 noundef %i.fa) #27
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i.sink.split, %bb.u, %bb.o
  %.pn.pn.pn.ph = phi { ptr, i32 } [ %.pn.pn513, %bb.u ], [ %i.cb, %bb.o ], [ %.pn.pn.pn.ph.ph, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i.sink.split ]
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #25
  br label %.body

.body:                                            ; preds = %.critedge126, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i
  %.pn.pn.pn519 = phi { ptr, i32 } [ %.pn.pn.pn.ph, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i ], [ %i.eq, %.critedge126 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #25
  br label %bb.cq

bb.v:                                             ; preds = %.lr.ph, %_ZNK8aiStringeqERKS_.exit.thread
  %.068570 = phi i64 [ 0, %.lr.ph ], [ %i.ja, %_ZNK8aiStringeqERKS_.exit.thread ] ; 3 uses
  %i.fb = getelementptr inbounds nuw [8 x i8], ptr %i.el, i64 %.068570
  %i.fc = load ptr, ptr %i.fb, align 8            ; 2 uses
  %i.fd = load i32, ptr %i.fc, align 4
  %i.fe = icmp eq i32 %i.fd, %i.em
  br i1 %i.fe, label %_ZNK8aiStringeqERKS_.exit, label %_ZNK8aiStringeqERKS_.exit.thread

_ZNK8aiStringeqERKS_.exit:                        ; preds = %bb.v
  %i.ff = getelementptr inbounds nuw i8, ptr %i.fc, i64 4
  %bcmp.i = call i32 @bcmp(ptr nonnull %i.ff, ptr nonnull %i.en, i64 %i.eo)
  %i.fg = icmp eq i32 %bcmp.i, 0
  br i1 %i.fg, label %bb.w, label %_ZNK8aiStringeqERKS_.exit.thread

bb.w:                                             ; preds = %_ZNK8aiStringeqERKS_.exit
  %i.fh = getelementptr inbounds nuw [8 x i8], ptr %i.el, i64 %.068570
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #25
  store float 1.000000e+00, ptr %7, align 4
  %i.fi = getelementptr inbounds nuw i8, ptr %7, i64 4 ; 2 uses
  %i.fj = getelementptr inbounds nuw i8, ptr %7, i64 20 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.fi, i8 0, i64 16, i1 false)
  store float 1.000000e+00, ptr %i.fj, align 4
  %i.fk = getelementptr inbounds nuw i8, ptr %7, i64 24 ; 2 uses
  %i.fl = getelementptr inbounds nuw i8, ptr %7, i64 40 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.fk, i8 0, i64 16, i1 false)
  store float 1.000000e+00, ptr %i.fl, align 4
  %i.fm = getelementptr inbounds nuw i8, ptr %7, i64 44 ; 2 uses
  %i.fn = getelementptr inbounds nuw i8, ptr %7, i64 60 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.fm, i8 0, i64 16, i1 false)
  store float 1.000000e+00, ptr %i.fn, align 4
  %i.fo = load ptr, ptr %i.fh, align 8
  invoke void @_ZNK8aiCamera15GetCameraMatrixER12aiMatrix4x4tIfE(ptr noundef nonnull align 4 dereferenceable(1084) %i.fo, ptr noundef nonnull align 4 dereferenceable(64) %7)
          to label %bb.x unwind label %bb.y

bb.x:                                             ; preds = %bb.w
  %.sroa.0.0.copyload = load float, ptr %7, align 4 ; 3 uses
  %.sroa.7.0.copyload = load float, ptr %i.fi, align 4 ; 2 uses
  %.sroa.10.0..sroa_idx = getelementptr inbounds nuw i8, ptr %7, i64 8
  %.sroa.10.0.copyload = load float, ptr %.sroa.10.0..sroa_idx, align 4 ; 3 uses
  %.sroa.13.0..sroa_idx = getelementptr inbounds nuw i8, ptr %7, i64 12
  %.sroa.13.0.copyload = load float, ptr %.sroa.13.0..sroa_idx, align 4 ; 3 uses
  %.sroa.16.0..sroa_idx = getelementptr inbounds nuw i8, ptr %7, i64 16
  %.sroa.16.0.copyload = load float, ptr %.sroa.16.0..sroa_idx, align 4 ; 3 uses
  %.sroa.19.0.copyload = load float, ptr %i.fj, align 4 ; 2 uses
  %.sroa.22.0.copyload = load float, ptr %i.fk, align 4 ; 3 uses
  %.sroa.25.0..sroa_idx = getelementptr inbounds nuw i8, ptr %7, i64 28
  %.sroa.25.0.copyload = load float, ptr %.sroa.25.0..sroa_idx, align 4 ; 3 uses
  %.sroa.28.0..sroa_idx = getelementptr inbounds nuw i8, ptr %7, i64 32
  %.sroa.28.0.copyload = load float, ptr %.sroa.28.0..sroa_idx, align 4 ; 3 uses
  %.sroa.31.0..sroa_idx = getelementptr inbounds nuw i8, ptr %7, i64 36
  %.sroa.31.0.copyload = load float, ptr %.sroa.31.0..sroa_idx, align 4 ; 2 uses
  %.sroa.34.0.copyload = load float, ptr %i.fl, align 4 ; 3 uses
  %.sroa.37.0.copyload = load float, ptr %i.fm, align 4 ; 3 uses
  %.sroa.40.0..sroa_idx = getelementptr inbounds nuw i8, ptr %7, i64 48
  %.sroa.40.0.copyload = load float, ptr %.sroa.40.0..sroa_idx, align 4 ; 3 uses
  %.sroa.43.0..sroa_idx = getelementptr inbounds nuw i8, ptr %7, i64 52
  %.sroa.43.0.copyload = load float, ptr %.sroa.43.0..sroa_idx, align 4 ; 2 uses
  %.sroa.46.0..sroa_idx = getelementptr inbounds nuw i8, ptr %7, i64 56
  %.sroa.46.0.copyload = load float, ptr %.sroa.46.0..sroa_idx, align 4 ; 3 uses
  %.sroa.49.0.copyload = load float, ptr %i.fn, align 4 ; 3 uses
  %i.fp = fmul float %.sroa.7.0.copyload, 0.000000e+00 ; 2 uses
  %i.fq = fsub float %i.fp, %.sroa.0.0.copyload
  %i.fr = call float @llvm.fmuladd.f32(float %.sroa.0.0.copyload, float 0.000000e+00, float %.sroa.7.0.copyload)
  %i.fs = call float @llvm.fmuladd.f32(float %.sroa.0.0.copyload, float 0.000000e+00, float %i.fp) ; 2 uses
  %i.ft = fsub float %i.fs, %.sroa.10.0.copyload
  %i.fu = call float @llvm.fmuladd.f32(float %.sroa.13.0.copyload, float 0.000000e+00, float %i.ft)
  %i.fv = call float @llvm.fmuladd.f32(float %.sroa.10.0.copyload, float 0.000000e+00, float %i.fs)
  %i.fw = fadd float %.sroa.13.0.copyload, %i.fv
  %i.fx = fmul float %.sroa.19.0.copyload, 0.000000e+00 ; 2 uses
  %i.fy = fsub float %i.fx, %.sroa.16.0.copyload
  %i.fz = call float @llvm.fmuladd.f32(float %.sroa.16.0.copyload, float 0.000000e+00, float %.sroa.19.0.copyload)
  %i.ga = call float @llvm.fmuladd.f32(float %.sroa.16.0.copyload, float 0.000000e+00, float %i.fx) ; 2 uses
  %i.gb = fsub float %i.ga, %.sroa.22.0.copyload
  %i.gc = call float @llvm.fmuladd.f32(float %.sroa.25.0.copyload, float 0.000000e+00, float %i.gb)
  %i.gd = call float @llvm.fmuladd.f32(float %.sroa.22.0.copyload, float 0.000000e+00, float %i.ga)
  %i.ge = fadd float %.sroa.25.0.copyload, %i.gd
  %i.gf = fmul float %.sroa.31.0.copyload, 0.000000e+00 ; 2 uses
  %i.gg = fsub float %i.gf, %.sroa.28.0.copyload
  %i.gh = call float @llvm.fmuladd.f32(float %.sroa.28.0.copyload, float 0.000000e+00, float %.sroa.31.0.copyload)
  %i.gi = call float @llvm.fmuladd.f32(float %.sroa.28.0.copyload, float 0.000000e+00, float %i.gf) ; 2 uses
  %i.gj = fsub float %i.gi, %.sroa.34.0.copyload
  %i.gk = call float @llvm.fmuladd.f32(float %.sroa.37.0.copyload, float 0.000000e+00, float %i.gj)
  %i.gl = call float @llvm.fmuladd.f32(float %.sroa.34.0.copyload, float 0.000000e+00, float %i.gi)
  %i.gm = fadd float %.sroa.37.0.copyload, %i.gl
  %i.gn = fmul float %.sroa.43.0.copyload, 0.000000e+00 ; 2 uses
  %i.go = fsub float %i.gn, %.sroa.40.0.copyload
  %i.gp = call float @llvm.fmuladd.f32(float %.sroa.40.0.copyload, float 0.000000e+00, float %.sroa.43.0.copyload)
  %i.gq = call float @llvm.fmuladd.f32(float %.sroa.40.0.copyload, float 0.000000e+00, float %i.gn) ; 2 uses
  %i.gr = fsub float %i.gq, %.sroa.46.0.copyload
  %i.gs = call float @llvm.fmuladd.f32(float %.sroa.49.0.copyload, float 0.000000e+00, float %i.gr)
  %i.gt = call float @llvm.fmuladd.f32(float %.sroa.46.0.copyload, float 0.000000e+00, float %i.gq)
  %i.gu = fadd float %.sroa.49.0.copyload, %i.gt
  %i.gv = insertelement <2 x float> poison, float %.sroa.10.0.copyload, i64 0
  %i.gw = shufflevector <2 x float> %i.gv, <2 x float> poison, <2 x i32> zeroinitializer
  %i.gx = insertelement <2 x float> poison, float %i.fq, i64 0
  %i.gy = insertelement <2 x float> %i.gx, float %i.fr, i64 1
  %i.gz = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.gw, <2 x float> zeroinitializer, <2 x float> %i.gy)
  %i.ha = insertelement <2 x float> poison, float %.sroa.13.0.copyload, i64 0
  %i.hb = shufflevector <2 x float> %i.ha, <2 x float> poison, <2 x i32> zeroinitializer
  %i.hc = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.hb, <2 x float> zeroinitializer, <2 x float> %i.gz)
  %i.hd = insertelement <2 x float> poison, float %.sroa.22.0.copyload, i64 0
  %i.he = shufflevector <2 x float> %i.hd, <2 x float> poison, <2 x i32> zeroinitializer
  %i.hf = insertelement <2 x float> poison, float %i.fy, i64 0
  %i.hg = insertelement <2 x float> %i.hf, float %i.fz, i64 1
  %i.hh = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.he, <2 x float> zeroinitializer, <2 x float> %i.hg)
  %i.hi = insertelement <2 x float> poison, float %.sroa.25.0.copyload, i64 0
  %i.hj = shufflevector <2 x float> %i.hi, <2 x float> poison, <2 x i32> zeroinitializer
  %i.hk = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.hj, <2 x float> zeroinitializer, <2 x float> %i.hh)
  %i.hl = insertelement <2 x float> poison, float %.sroa.34.0.copyload, i64 0
  %i.hm = shufflevector <2 x float> %i.hl, <2 x float> poison, <2 x i32> zeroinitializer
  %i.hn = insertelement <2 x float> poison, float %i.gg, i64 0
  %i.ho = insertelement <2 x float> %i.hn, float %i.gh, i64 1
  %i.hp = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.hm, <2 x float> zeroinitializer, <2 x float> %i.ho)
  %i.hq = insertelement <2 x float> poison, float %.sroa.37.0.copyload, i64 0
  %i.hr = shufflevector <2 x float> %i.hq, <2 x float> poison, <2 x i32> zeroinitializer
  %i.hs = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.hr, <2 x float> zeroinitializer, <2 x float> %i.hp)
  %i.ht = insertelement <2 x float> poison, float %.sroa.46.0.copyload, i64 0
  %i.hu = shufflevector <2 x float> %i.ht, <2 x float> poison, <2 x i32> zeroinitializer
  %i.hv = insertelement <2 x float> poison, float %i.go, i64 0
  %i.hw = insertelement <2 x float> %i.hv, float %i.gp, i64 1
  %i.hx = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.hu, <2 x float> zeroinitializer, <2 x float> %i.hw)
  %i.hy = insertelement <2 x float> poison, float %.sroa.49.0.copyload, i64 0
  %i.hz = shufflevector <2 x float> %i.hy, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ia = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.hz, <2 x float> zeroinitializer, <2 x float> %i.hx)
  %i.ib = shufflevector <16 x float> %i.ed, <16 x float> poison, <16 x i32> <i32 1, i32 5, i32 9, i32 13, i32 1, i32 5, i32 9, i32 13, i32 1, i32 5, i32 9, i32 13, i32 1, i32 5, i32 9, i32 13>
  %i.ic = insertelement <16 x float> poison, float %i.gc, i64 2
  %i.id = insertelement <16 x float> %i.ic, float %i.ge, i64 3
  %i.ie = shufflevector <2 x float> %i.hk, <2 x float> poison, <16 x i32> <i32 0, i32 1, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.if = shufflevector <16 x float> %i.ie, <16 x float> %i.id, <16 x i32> <i32 0, i32 0, i32 0, i32 0, i32 1, i32 1, i32 1, i32 1, i32 18, i32 18, i32 18, i32 18, i32 19, i32 19, i32 19, i32 19>
  %i.ig = fmul <16 x float> %i.ib, %i.if
  %i.ih = insertelement <16 x float> poison, float %i.fu, i64 2
  %i.ii = insertelement <16 x float> %i.ih, float %i.fw, i64 3
  %i.ij = shufflevector <2 x float> %i.hc, <2 x float> poison, <16 x i32> <i32 0, i32 1, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.ik = shufflevector <16 x float> %i.ij, <16 x float> %i.ii, <16 x i32> <i32 0, i32 0, i32 0, i32 0, i32 1, i32 1, i32 1, i32 1, i32 18, i32 18, i32 18, i32 18, i32 19, i32 19, i32 19, i32 19>
  %i.il = shufflevector <16 x float> %i.ed, <16 x float> poison, <16 x i32> <i32 0, i32 4, i32 8, i32 12, i32 0, i32 4, i32 8, i32 12, i32 0, i32 4, i32 8, i32 12, i32 0, i32 4, i32 8, i32 12>
  %i.im = call <16 x float> @llvm.fmuladd.v16f32(<16 x float> %i.ik, <16 x float> %i.il, <16 x float> %i.ig)
  %i.in = insertelement <16 x float> poison, float %i.gk, i64 2
  %i.io = insertelement <16 x float> %i.in, float %i.gm, i64 3
  %i.ip = shufflevector <2 x float> %i.hs, <2 x float> poison, <16 x i32> <i32 0, i32 1, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.iq = shufflevector <16 x float> %i.ip, <16 x float> %i.io, <16 x i32> <i32 0, i32 0, i32 0, i32 0, i32 1, i32 1, i32 1, i32 1, i32 18, i32 18, i32 18, i32 18, i32 19, i32 19, i32 19, i32 19>
  %i.ir = shufflevector <16 x float> %i.ed, <16 x float> poison, <16 x i32> <i32 2, i32 6, i32 10, i32 14, i32 2, i32 6, i32 10, i32 14, i32 2, i32 6, i32 10, i32 14, i32 2, i32 6, i32 10, i32 14>
  %i.is = call <16 x float> @llvm.fmuladd.v16f32(<16 x float> %i.iq, <16 x float> %i.ir, <16 x float> %i.im)
  %i.it = insertelement <16 x float> poison, float %i.gs, i64 2
  %i.iu = insertelement <16 x float> %i.it, float %i.gu, i64 3
  %i.iv = shufflevector <2 x float> %i.ia, <2 x float> poison, <16 x i32> <i32 0, i32 1, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
end_hunk_0
begin_hunk_1_@_ZN6Assimp15ColladaExporter9WriteNodeEPK6aiNode:bb.a
  %i.jh = fpext float %i.jg to double
  %i.ji = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertIdEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %i.ay, double noundef %i.jh)
          to label %_ZNSolsEf.exit unwind label %bb.z ; 2 uses

_ZNSolsEf.exit:                                   ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit180
  %i.jj = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.ji, ptr noundef nonnull @.str.95, i64 noundef 1)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit183 unwind label %bb.z ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit183: ; preds = %_ZNSolsEf.exit
  %i.jk = extractelement <16 x float> %i.jb, i64 4
  %i.jl = fpext float %i.jk to double
  %i.jm = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertIdEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %i.ji, double noundef %i.jl)
          to label %_ZNSolsEf.exit185 unwind label %bb.z ; 2 uses

_ZNSolsEf.exit185:                                ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit183
  %i.jn = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.jm, ptr noundef nonnull @.str.95, i64 noundef 1)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit187 unwind label %bb.z ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit187: ; preds = %_ZNSolsEf.exit185
  %i.jo = extractelement <16 x float> %i.jb, i64 8
  %i.jp = fpext float %i.jo to double
  %i.jq = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertIdEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %i.jm, double noundef %i.jp)
          to label %_ZNSolsEf.exit189 unwind label %bb.z ; 2 uses

_ZNSolsEf.exit189:                                ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit187
  %i.jr = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.jq, ptr noundef nonnull @.str.95, i64 noundef 1)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit191 unwind label %bb.z ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit191: ; preds = %_ZNSolsEf.exit189
  %i.js = extractelement <16 x float> %i.jb, i64 12
  %i.jt = fpext float %i.js to double
  %i.ju = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertIdEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %i.jq, double noundef %i.jt)
          to label %_ZNSolsEf.exit193 unwind label %bb.z

_ZNSolsEf.exit193:                                ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit191
  %i.jv = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.ju, ptr noundef nonnull @.str.95, i64 noundef 1)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit195 unwind label %bb.z ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit195: ; preds = %_ZNSolsEf.exit193
  %i.jw = extractelement <16 x float> %i.jb, i64 1
  %i.jx = fpext float %i.jw to double
  %i.jy = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertIdEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %i.ay, double noundef %i.jx)
          to label %_ZNSolsEf.exit197 unwind label %bb.z ; 2 uses

_ZNSolsEf.exit197:                                ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit195
  %i.jz = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.jy, ptr noundef nonnull @.str.95, i64 noundef 1)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit199 unwind label %bb.z ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit199: ; preds = %_ZNSolsEf.exit197
  %i.ka = extractelement <16 x float> %i.jb, i64 5
  %i.kb = fpext float %i.ka to double
  %i.kc = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertIdEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %i.jy, double noundef %i.kb)
          to label %_ZNSolsEf.exit201 unwind label %bb.z ; 2 uses

_ZNSolsEf.exit201:                                ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit199
  %i.kd = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.kc, ptr noundef nonnull @.str.95, i64 noundef 1)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit203 unwind label %bb.z ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit203: ; preds = %_ZNSolsEf.exit201
  %i.ke = extractelement <16 x float> %i.jb, i64 9
  %i.kf = fpext float %i.ke to double
  %i.kg = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertIdEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %i.kc, double noundef %i.kf)
          to label %_ZNSolsEf.exit205 unwind label %bb.z ; 2 uses

_ZNSolsEf.exit205:                                ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit203
  %i.kh = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.kg, ptr noundef nonnull @.str.95, i64 noundef 1)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit207 unwind label %bb.z ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit207: ; preds = %_ZNSolsEf.exit205
  %i.ki = extractelement <16 x float> %i.jb, i64 13
  %i.kj = fpext float %i.ki to double
  %i.kk = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertIdEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %i.kg, double noundef %i.kj)
          to label %_ZNSolsEf.exit209 unwind label %bb.z

_ZNSolsEf.exit209:                                ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit207
  %i.kl = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.kk, ptr noundef nonnull @.str.95, i64 noundef 1)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit211 unwind label %bb.z ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit211: ; preds = %_ZNSolsEf.exit209
  %i.km = extractelement <16 x float> %i.jb, i64 2
  %i.kn = fpext float %i.km to double
  %i.ko = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertIdEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %i.ay, double noundef %i.kn)
          to label %_ZNSolsEf.exit213 unwind label %bb.z ; 2 uses

_ZNSolsEf.exit213:                                ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit211
  %i.kp = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.ko, ptr noundef nonnull @.str.95, i64 noundef 1)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit215 unwind label %bb.z ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit215: ; preds = %_ZNSolsEf.exit213
  %i.kq = extractelement <16 x float> %i.jb, i64 6
  %i.kr = fpext float %i.kq to double
  %i.ks = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertIdEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %i.ko, double noundef %i.kr)
          to label %_ZNSolsEf.exit217 unwind label %bb.z ; 2 uses

_ZNSolsEf.exit217:                                ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit215
  %i.kt = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.ks, ptr noundef nonnull @.str.95, i64 noundef 1)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit219 unwind label %bb.z ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit219: ; preds = %_ZNSolsEf.exit217
  %i.ku = extractelement <16 x float> %i.jb, i64 10
  %i.kv = fpext float %i.ku to double
  %i.kw = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertIdEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %i.ks, double noundef %i.kv)
          to label %_ZNSolsEf.exit221 unwind label %bb.z ; 2 uses

_ZNSolsEf.exit221:                                ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit219
  %i.kx = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.kw, ptr noundef nonnull @.str.95, i64 noundef 1)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit223 unwind label %bb.z ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit223: ; preds = %_ZNSolsEf.exit221
  %i.ky = extractelement <16 x float> %i.jb, i64 14
  %i.kz = fpext float %i.ky to double
  %i.la = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertIdEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %i.kw, double noundef %i.kz)
          to label %_ZNSolsEf.exit225 unwind label %bb.z

_ZNSolsEf.exit225:                                ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit223
  %i.lb = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.la, ptr noundef nonnull @.str.95, i64 noundef 1)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit227 unwind label %bb.z ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit227: ; preds = %_ZNSolsEf.exit225
  %i.lc = extractelement <16 x float> %i.jb, i64 3
  %i.ld = fpext float %i.lc to double
  %i.le = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertIdEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %i.ay, double noundef %i.ld)
          to label %_ZNSolsEf.exit229 unwind label %bb.z ; 2 uses

_ZNSolsEf.exit229:                                ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit227
  %i.lf = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.le, ptr noundef nonnull @.str.95, i64 noundef 1)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit231 unwind label %bb.z ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit231: ; preds = %_ZNSolsEf.exit229
  %i.lg = extractelement <16 x float> %i.jb, i64 7
  %i.lh = fpext float %i.lg to double
  %i.li = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertIdEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %i.le, double noundef %i.lh)
          to label %_ZNSolsEf.exit233 unwind label %bb.z ; 2 uses

_ZNSolsEf.exit233:                                ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit231
  %i.lj = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.li, ptr noundef nonnull @.str.95, i64 noundef 1)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit235 unwind label %bb.z ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit235: ; preds = %_ZNSolsEf.exit233
  %i.lk = extractelement <16 x float> %i.jb, i64 11
  %i.ll = fpext float %i.lk to double
  %i.lm = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertIdEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %i.li, double noundef %i.ll)
          to label %_ZNSolsEf.exit237 unwind label %bb.z ; 2 uses

_ZNSolsEf.exit237:                                ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit235
  %i.ln = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.lm, ptr noundef nonnull @.str.95, i64 noundef 1)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit239 unwind label %bb.z ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit239: ; preds = %_ZNSolsEf.exit237
  %i.lo = extractelement <16 x float> %i.jb, i64 15
  %i.lp = fpext float %i.lo to double
  %i.lq = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertIdEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %i.lm, double noundef %i.lp)
          to label %_ZNSolsEf.exit241 unwind label %bb.z ; 0 uses

_ZNSolsEf.exit241:                                ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit239
  %i.lr = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.ay, ptr noundef nonnull @.str.322, i64 noundef 9)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit243 unwind label %bb.z ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit243: ; preds = %_ZNSolsEf.exit241
  %i.ls = load ptr, ptr %i.dt, align 8
  %i.lt = load i64, ptr %i.dv, align 8
  %i.lu = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.ay, ptr noundef %i.ls, i64 noundef %i.lt)
          to label %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit245 unwind label %bb.z ; 0 uses

_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit245: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit243
  %i.lv = getelementptr inbounds nuw i8, ptr %1, i64 1120 ; 2 uses
  %i.lw = load i32, ptr %i.lv, align 8            ; 2 uses
  %i.lx = icmp eq i32 %i.lw, 0
  br i1 %i.lx, label %.preheader, label %.lr.ph573

.lr.ph573:                                        ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit245
  %i.ly = getelementptr inbounds nuw i8, ptr %1, i64 1128
  %i.lz = getelementptr inbounds nuw i8, ptr %10, i64 8 ; 2 uses
  %i.ma = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 8 uses
  %i.mb = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 3 uses
  %i.mc = getelementptr inbounds nuw i8, ptr %2, i64 24 ; 3 uses
  %i.md = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.me = getelementptr inbounds nuw i8, ptr %2, i64 40 ; 4 uses
  %i.mf = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 6 uses
  %i.mg = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.mh = getelementptr inbounds nuw i8, ptr %11, i64 16 ; 6 uses
  %i.mi = getelementptr inbounds nuw i8, ptr %11, i64 8 ; 5 uses
  %i.mj = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 4 uses
  %.not21.i = icmp eq ptr %11, %i.mf
  %i.mk = getelementptr inbounds nuw i8, ptr %12, i64 8
  %i.ml = getelementptr inbounds nuw i8, ptr %12, i64 16 ; 4 uses
  %i.mm = getelementptr inbounds nuw i8, ptr %10, i64 16 ; 4 uses
  br label %bb.am

.preheader:                                       ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit245
  %i.mn = load ptr, ptr %i.ef, align 8            ; 4 uses
  %i.mo = getelementptr inbounds nuw i8, ptr %i.mn, i64 96
  %i.mp = load i32, ptr %i.mo, align 8            ; 2 uses
  %i.mq = zext i32 %i.mp to i64
  %.not582 = icmp eq i32 %i.mp, 0
  br i1 %.not582, label %.loopexit525, label %.lr.ph575

.lr.ph575:                                        ; preds = %.preheader
  %i.mr = getelementptr inbounds nuw i8, ptr %i.mn, i64 104
  %i.ms = load ptr, ptr %i.mr, align 8
  %i.mt = load i32, ptr %1, align 8               ; 2 uses
  %i.mu = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.mv = zext i32 %i.mt to i64
  br label %bb.aa

bb.z:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit437, %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit435, %bb.cp, %bb.cl, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit243, %_ZNSolsEf.exit241, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit239, %_ZNSolsEf.exit237, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit235, %_ZNSolsEf.exit233, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit231, %_ZNSolsEf.exit229, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit227, %_ZNSolsEf.exit225, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit223, %_ZNSolsEf.exit221, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit219, %_ZNSolsEf.exit217, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit215, %_ZNSolsEf.exit213, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit211, %_ZNSolsEf.exit209, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit207, %_ZNSolsEf.exit205, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit203, %_ZNSolsEf.exit201, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit199, %_ZNSolsEf.exit197, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit195, %_ZNSolsEf.exit193, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit191, %_ZNSolsEf.exit189, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit187, %_ZNSolsEf.exit185, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit183, %_ZNSolsEf.exit, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit180, %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit178, %.loopexit530
  %i.mw = landingpad { ptr, i32 }
          cleanup
  br label %bb.cq

bb.aa:                                            ; preds = %.lr.ph575, %_ZNK8aiStringeqERKS_.exit248.thread
  %.067574 = phi i64 [ 0, %.lr.ph575 ], [ %i.oc, %_ZNK8aiStringeqERKS_.exit248.thread ] ; 3 uses
  %i.mx = getelementptr inbounds nuw [8 x i8], ptr %i.ms, i64 %.067574
  %i.my = load ptr, ptr %i.mx, align 8            ; 2 uses
  %i.mz = load i32, ptr %i.my, align 4
  %i.na = icmp eq i32 %i.mz, %i.mt
  br i1 %i.na, label %_ZNK8aiStringeqERKS_.exit248, label %_ZNK8aiStringeqERKS_.exit248.thread

_ZNK8aiStringeqERKS_.exit248:                     ; preds = %bb.aa
  %i.nb = getelementptr inbounds nuw i8, ptr %i.my, i64 4
  %bcmp.i247 = call i32 @bcmp(ptr nonnull %i.nb, ptr nonnull %i.mu, i64 %i.mv)
  %i.nc = icmp eq i32 %bcmp.i247, 0
  br i1 %i.nc, label %bb.ab, label %_ZNK8aiStringeqERKS_.exit248.thread

bb.ab:                                            ; preds = %_ZNK8aiStringeqERKS_.exit248
  %i.nd = load ptr, ptr %i.az, align 8
  %i.ne = load i64, ptr %i.bb, align 8
  %i.nf = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.ay, ptr noundef %i.nd, i64 noundef %i.ne)
          to label %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit250 unwind label %bb.ad ; 2 uses

_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit250: ; preds = %bb.ab
  %i.ng = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.nf, ptr noundef nonnull @.str.323, i64 noundef 23)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit252 unwind label %bb.ad ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit252: ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit250
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #25
  invoke void @_ZN6Assimp15ColladaExporter17GetObjectUniqueIdB5cxx11ENS0_12AiObjectTypeEm(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %8, ptr noundef nonnull align 8 dereferenceable(1248) %0, i32 noundef 4, i64 noundef %.067574)
          to label %bb.ac unwind label %bb.ae

bb.ac:                                            ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit252
  %i.nh = load ptr, ptr %8, align 8
  %i.ni = getelementptr inbounds nuw i8, ptr %8, i64 8
  %i.nj = load i64, ptr %i.ni, align 8
  %i.nk = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.nf, ptr noundef %i.nh, i64 noundef %i.nj)
          to label %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit254 unwind label %bb.af ; 2 uses

_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit254: ; preds = %bb.ac
  %i.nl = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.nk, ptr noundef nonnull @.str.304, i64 noundef 3)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit256 unwind label %bb.af ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit256: ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit254
  %i.nm = load ptr, ptr %i.dt, align 8
  %i.nn = load i64, ptr %i.dv, align 8
  %i.no = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.nk, ptr noundef %i.nm, i64 noundef %i.nn)
          to label %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit258 unwind label %bb.af ; 0 uses

_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit258: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit256
  %i.np = load ptr, ptr %8, align 8               ; 2 uses
  %i.nq = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 2 uses
  %i.nr = icmp eq ptr %i.np, %i.nq
  br i1 %i.nr, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit261, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i259

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i259: ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit258
  %i.ns = load i64, ptr %i.nq, align 8
  %i.nt = add i64 %i.ns, 1
  call void @_ZdlPvm(ptr noundef %i.np, i64 noundef %i.nt) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit261

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit261: ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit258, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i259
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #25
  %.pre628 = load ptr, ptr %i.ef, align 8
  br label %.loopexit525

bb.ad:                                            ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit250, %bb.ab
  %i.nu = landingpad { ptr, i32 }
          cleanup
  br label %bb.cq

bb.ae:                                            ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit252
  %i.nv = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit264

bb.af:                                            ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit256, %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit254, %bb.ac
  %i.nw = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.nx = load ptr, ptr %8, align 8               ; 2 uses
  %i.ny = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 2 uses
  %i.nz = icmp eq ptr %i.nx, %i.ny
  br i1 %i.nz, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit264, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i262

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i262: ; preds = %bb.af
  %i.oa = load i64, ptr %i.ny, align 8
  %i.ob = add i64 %i.oa, 1
  call void @_ZdlPvm(ptr noundef %i.nx, i64 noundef %i.ob) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit264

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit264: ; preds = %bb.af, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i262, %bb.ae
  %.pn112 = phi { ptr, i32 } [ %i.nv, %bb.ae ], [ %i.nw, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i262 ], [ %i.nw, %bb.af ]
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #25
  br label %bb.cq

_ZNK8aiStringeqERKS_.exit248.thread:              ; preds = %bb.aa, %_ZNK8aiStringeqERKS_.exit248
  %i.oc = add nuw nsw i64 %.067574, 1             ; 2 uses
  %exitcond617.not = icmp eq i64 %i.oc, %i.mq
  br i1 %exitcond617.not, label %.loopexit525, label %bb.aa, !llvm.loop !324

.loopexit525:                                     ; preds = %_ZNK8aiStringeqERKS_.exit248.thread, %.preheader, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit261
  %i.od = phi ptr [ %.pre628, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit261 ], [ %i.mn, %.preheader ], [ %i.mn, %_ZNK8aiStringeqERKS_.exit248.thread ] ; 2 uses
  %i.oe = getelementptr inbounds nuw i8, ptr %i.od, i64 80
  %i.of = load i32, ptr %i.oe, align 8            ; 2 uses
  %i.og = zext i32 %i.of to i64
  %.not583 = icmp eq i32 %i.of, 0
  br i1 %.not583, label %.loopexit, label %.lr.ph577

.lr.ph577:                                        ; preds = %.loopexit525
  %i.oh = getelementptr inbounds nuw i8, ptr %i.od, i64 88
  %i.oi = load ptr, ptr %i.oh, align 8
  %i.oj = load i32, ptr %1, align 8               ; 2 uses
  %i.ok = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.ol = zext i32 %i.oj to i64
  br label %bb.ag

bb.ag:                                            ; preds = %.lr.ph577, %_ZNK8aiStringeqERKS_.exit267.thread
  %.066576 = phi i64 [ 0, %.lr.ph577 ], [ %i.pr, %_ZNK8aiStringeqERKS_.exit267.thread ] ; 3 uses
  %i.om = getelementptr inbounds nuw [8 x i8], ptr %i.oi, i64 %.066576
  %i.on = load ptr, ptr %i.om, align 8            ; 2 uses
  %i.oo = load i32, ptr %i.on, align 4
  %i.op = icmp eq i32 %i.oo, %i.oj
  br i1 %i.op, label %_ZNK8aiStringeqERKS_.exit267, label %_ZNK8aiStringeqERKS_.exit267.thread

_ZNK8aiStringeqERKS_.exit267:                     ; preds = %bb.ag
  %i.oq = getelementptr inbounds nuw i8, ptr %i.on, i64 4
  %bcmp.i266 = call i32 @bcmp(ptr nonnull %i.oq, ptr nonnull %i.ok, i64 %i.ol)
  %i.or = icmp eq i32 %bcmp.i266, 0
  br i1 %i.or, label %bb.ah, label %_ZNK8aiStringeqERKS_.exit267.thread

bb.ah:                                            ; preds = %_ZNK8aiStringeqERKS_.exit267
  %i.os = load ptr, ptr %i.az, align 8
  %i.ot = load i64, ptr %i.bb, align 8
  %i.ou = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.ay, ptr noundef %i.os, i64 noundef %i.ot)
          to label %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit269 unwind label %bb.aj ; 2 uses

_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit269: ; preds = %bb.ah
  %i.ov = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.ou, ptr noundef nonnull @.str.324, i64 noundef 22)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit271 unwind label %bb.aj ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit271: ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit269
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #25
  invoke void @_ZN6Assimp15ColladaExporter17GetObjectUniqueIdB5cxx11ENS0_12AiObjectTypeEm(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %9, ptr noundef nonnull align 8 dereferenceable(1248) %0, i32 noundef 3, i64 noundef %.066576)
          to label %bb.ai unwind label %bb.ak

bb.ai:                                            ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit271
  %i.ow = load ptr, ptr %9, align 8
  %i.ox = getelementptr inbounds nuw i8, ptr %9, i64 8
  %i.oy = load i64, ptr %i.ox, align 8
  %i.oz = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.ou, ptr noundef %i.ow, i64 noundef %i.oy)
          to label %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit273 unwind label %bb.al ; 2 uses

_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit273: ; preds = %bb.ai
  %i.pa = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.oz, ptr noundef nonnull @.str.304, i64 noundef 3)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit275 unwind label %bb.al ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit275: ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit273
  %i.pb = load ptr, ptr %i.dt, align 8
  %i.pc = load i64, ptr %i.dv, align 8
  %i.pd = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.oz, ptr noundef %i.pb, i64 noundef %i.pc)
          to label %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit277 unwind label %bb.al ; 0 uses

_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit277: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit275
  %i.pe = load ptr, ptr %9, align 8               ; 2 uses
  %i.pf = getelementptr inbounds nuw i8, ptr %9, i64 16 ; 2 uses
  %i.pg = icmp eq ptr %i.pe, %i.pf
  br i1 %i.pg, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit280, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i278

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i278: ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit277
  %i.ph = load i64, ptr %i.pf, align 8
  %i.pi = add i64 %i.ph, 1
  call void @_ZdlPvm(ptr noundef %i.pe, i64 noundef %i.pi) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit280

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit280: ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit277, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i278
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #25
  br label %.loopexit

bb.aj:                                            ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit269, %bb.ah
  %i.pj = landingpad { ptr, i32 }
          cleanup
  br label %bb.cq

bb.ak:                                            ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit271
  %i.pk = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit283

bb.al:                                            ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit275, %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit273, %bb.ai
  %i.pl = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.pm = load ptr, ptr %9, align 8               ; 2 uses
  %i.pn = getelementptr inbounds nuw i8, ptr %9, i64 16 ; 2 uses
  %i.po = icmp eq ptr %i.pm, %i.pn
  br i1 %i.po, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit283, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i281

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i281: ; preds = %bb.al
  %i.pp = load i64, ptr %i.pn, align 8
  %i.pq = add i64 %i.pp, 1
  call void @_ZdlPvm(ptr noundef %i.pm, i64 noundef %i.pq) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit283

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit283: ; preds = %bb.al, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i281, %bb.ak
  %.pn115 = phi { ptr, i32 } [ %i.pk, %bb.ak ], [ %i.pl, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i281 ], [ %i.pl, %bb.al ]
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #25
  br label %bb.cq

_ZNK8aiStringeqERKS_.exit267.thread:              ; preds = %bb.ag, %_ZNK8aiStringeqERKS_.exit267
  %i.pr = add nuw nsw i64 %.066576, 1             ; 2 uses
  %exitcond618.not = icmp eq i64 %i.pr, %i.og
  br i1 %exitcond618.not, label %.loopexit, label %bb.ag, !llvm.loop !325

bb.am:                                            ; preds = %.lr.ph573, %bb.ck
  %i.ps = phi i32 [ %i.lw, %.lr.ph573 ], [ %i.aes, %bb.ck ] ; 2 uses
  %.065572 = phi i64 [ 0, %.lr.ph573 ], [ %i.aet, %bb.ck ] ; 2 uses
  %i.pt = load ptr, ptr %i.ef, align 8
  %i.pu = getelementptr inbounds nuw i8, ptr %i.pt, i64 24
  %i.pv = load ptr, ptr %i.pu, align 8
  %i.pw = load ptr, ptr %i.ly, align 8
  %i.px = getelementptr inbounds nuw [4 x i8], ptr %i.pw, i64 %.065572
  %i.py = load i32, ptr %i.px, align 4
  %i.pz = zext i32 %i.py to i64                   ; 2 uses
  %i.qa = getelementptr inbounds nuw [8 x i8], ptr %i.pv, i64 %i.pz
  %i.qb = load ptr, ptr %i.qa, align 8            ; 13 uses
  %i.qc = getelementptr inbounds nuw i8, ptr %i.qb, i64 8
  %i.qd = load i32, ptr %i.qc, align 8
  %i.qe = icmp eq i32 %i.qd, 0
  br i1 %i.qe, label %bb.ck, label %bb.an

bb.an:                                            ; preds = %bb.am
  %i.qf = getelementptr inbounds nuw i8, ptr %i.qb, i64 4 ; 9 uses
  %i.qg = load i32, ptr %i.qf, align 4
  %i.qh = icmp eq i32 %i.qg, 0
  br i1 %i.qh, label %bb.ck, label %bb.ao

bb.ao:                                            ; preds = %bb.an
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #25
  invoke void @_ZN6Assimp15ColladaExporter17GetObjectUniqueIdB5cxx11ENS0_12AiObjectTypeEm(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %10, ptr noundef nonnull align 8 dereferenceable(1248) %0, i32 noundef 0, i64 noundef %i.pz)
          to label %bb.ap unwind label %bb.ar

bb.ap:                                            ; preds = %bb.ao
  %i.qi = getelementptr inbounds nuw i8, ptr %i.qb, i64 216 ; 4 uses
  %i.qj = load i32, ptr %i.qi, align 8
  %i.qk = icmp eq i32 %i.qj, 0
  %i.ql = load ptr, ptr %i.az, align 8            ; 2 uses
  %i.qm = load i64, ptr %i.bb, align 8            ; 2 uses
  br i1 %i.qk, label %bb.aq, label %bb.as

bb.aq:                                            ; preds = %bb.ap
  %i.qn = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.ay, ptr noundef %i.ql, i64 noundef %i.qm)
          to label %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit285 unwind label %.loopexit529 ; 2 uses

_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit285: ; preds = %bb.aq
  %i.qo = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.qn, ptr noundef nonnull @.str.325, i64 noundef 25)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit287 unwind label %.loopexit529 ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit287: ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit285
  %i.qp = load ptr, ptr %10, align 8
  %i.qq = load i64, ptr %i.lz, align 8
  %i.qr = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.qn, ptr noundef %i.qp, i64 noundef %i.qq)
          to label %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit289 unwind label %.loopexit529 ; 2 uses

_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit289: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit287
  %i.qs = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.qr, ptr noundef nonnull @.str.116, i64 noundef 2)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit291 unwind label %.loopexit529 ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit291: ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit289
  %i.qt = load ptr, ptr %i.dt, align 8
  %i.qu = load i64, ptr %i.dv, align 8
  %i.qv = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.qr, ptr noundef %i.qt, i64 noundef %i.qu)
          to label %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit293 unwind label %.loopexit529 ; 0 uses

_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit293: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit291
  %i.qw = load i64, ptr %i.bb, align 8
  %i.qx = and i64 %i.qw, -2
  %i.qy = icmp eq i64 %i.qx, 4611686018427387902
  br i1 %i.qy, label %.invoke, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i294

.invoke:                                          ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit293, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit366, %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit349, %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit339, %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit307
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.355) #26
          to label %.cont unwind label %.loopexit.split-lp

.cont:                                            ; preds = %.invoke
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i294: ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit293
  %i.qz = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %i.az, ptr noundef nonnull @.str.349, i64 noundef 2)
          to label %_ZN6Assimp15ColladaExporter7PushTagEv.exit297 unwind label %.loopexit529 ; 0 uses

bb.ar:                                            ; preds = %bb.ao
  %i.ra = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit431

.loopexit529:                                     ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit417.invoke, %bb.aq, %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit285, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit287, %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit289, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit291, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i294, %bb.as, %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit299, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit301, %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit303, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit305, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i308, %_ZN6Assimp15ColladaExporter7PushTagEv.exit297, %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit335, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit337, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i340, %_ZN6Assimp15ColladaExporter7PushTagEv.exit343, %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit345, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit347, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i350, %_ZN6Assimp15ColladaExporter7PushTagEv.exit353, %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit355, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i367, %bb.ce, %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit391, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit393, %bb.cf, %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit399, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit401, %bb.cg, %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit407, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit409, %bb.ci, %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit415, %bb.cj, %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit421
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %.body316

.loopexit.split-lp:                               ; preds = %.invoke745, %.invoke
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %.body316

bb.as:                                            ; preds = %bb.ap
  %i.rb = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.ay, ptr noundef %i.ql, i64 noundef %i.qm)
          to label %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit299 unwind label %.loopexit529 ; 2 uses

_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit299: ; preds = %bb.as
  %i.rc = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.rb, ptr noundef nonnull @.str.326, i64 noundef 27)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit301 unwind label %.loopexit529 ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit301: ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit299
  %i.rd = load ptr, ptr %10, align 8
  %i.re = load i64, ptr %i.lz, align 8
  %i.rf = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.rb, ptr noundef %i.rd, i64 noundef %i.re)
          to label %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit303 unwind label %.loopexit529 ; 2 uses

_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit303: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit301
  %i.rg = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.rf, ptr noundef nonnull @.str.327, i64 noundef 7)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit305 unwind label %.loopexit529 ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit305: ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit303
  %i.rh = load ptr, ptr %i.dt, align 8
  %i.ri = load i64, ptr %i.dv, align 8
  %i.rj = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.rf, ptr noundef %i.rh, i64 noundef %i.ri)
          to label %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit307 unwind label %.loopexit529 ; 0 uses

_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit307: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit305
  %i.rk = load i64, ptr %i.bb, align 8
  %i.rl = and i64 %i.rk, -2
  %i.rm = icmp eq i64 %i.rl, 4611686018427387902
  br i1 %i.rm, label %.invoke, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i308

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i308: ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit307
  %i.rn = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %i.az, ptr noundef nonnull @.str.349, i64 noundef 2)
          to label %bb.at unwind label %.loopexit529 ; 0 uses

bb.at:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i308
  %i.ro = load ptr, ptr %i.ef, align 8            ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #25
  store i32 0, ptr %i.ma, align 8
  store ptr null, ptr %i.mb, align 8
  store ptr %i.ma, ptr %i.mc, align 8
  store ptr %i.ma, ptr %i.md, align 8
  store i64 0, ptr %i.me, align 8
  %i.rp = load i32, ptr %i.qi, align 8
  %.not27.i = icmp eq i32 %i.rp, 0
  br i1 %.not27.i, label %.thread.i, label %.lr.ph50.i

.lr.ph50.i:                                       ; preds = %bb.at
  %i.rq = getelementptr inbounds nuw i8, ptr %i.qb, i64 224
  %i.rr = getelementptr inbounds nuw i8, ptr %i.ro, i64 8
  %i.rs = getelementptr inbounds nuw i8, ptr %i.ro, i64 16
  %i.rt = getelementptr inbounds nuw i8, ptr %i.ro, i64 24
  br label %bb.au

bb.au:                                            ; preds = %_ZNSt3setIPK6aiNodeSt4lessIS2_ESaIS2_EE6insertERKS2_.exit.i, %.lr.ph50.i
  %indvars.iv.i = phi i64 [ 0, %.lr.ph50.i ], [ %indvars.iv.next.i, %_ZNSt3setIPK6aiNodeSt4lessIS2_ESaIS2_EE6insertERKS2_.exit.i ] ; 2 uses
  %i.ru = load ptr, ptr %i.rq, align 8
  %i.rv = getelementptr inbounds nuw [8 x i8], ptr %i.ru, i64 %indvars.iv.i
  %i.rw = load ptr, ptr %i.rv, align 8
  %i.rx = load ptr, ptr %i.rr, align 8
  %i.ry = invoke noundef ptr @_ZNK6aiNode12findBoneNodeEPK6aiBone(ptr noundef nonnull align 8 dereferenceable(1144) %i.rx, ptr noundef %i.rw)
          to label %bb.av unwind label %bb.az     ; 5 uses

bb.av:                                            ; preds = %bb.au
  %.not29.i = icmp eq ptr %i.ry, null
  br i1 %.not29.i, label %_ZNSt3setIPK6aiNodeSt4lessIS2_ESaIS2_EE6insertERKS2_.exit.i, label %_ZNK7aiScene8findBoneERK8aiString.exit.preheader.i

_ZNK7aiScene8findBoneERK8aiString.exit.preheader.i: ; preds = %bb.av
  %i.rz = getelementptr inbounds nuw i8, ptr %i.ry, i64 1096
  %i.sa = load ptr, ptr %i.rz, align 8            ; 2 uses
  %.not3046.i = icmp eq ptr %i.sa, null
  br i1 %.not3046.i, label %.critedge.i, label %.lr.ph.i313

.lr.ph.i313:                                      ; preds = %_ZNK7aiScene8findBoneERK8aiString.exit.preheader.i
  %i.sb = load i32, ptr %i.rs, align 8            ; 2 uses
  %i.sc = zext i32 %i.sb to i64
  %.not.i.i = icmp eq i32 %i.sb, 0
  br i1 %.not.i.i, label %.critedge.i, label %.lr.ph.split.i

.lr.ph.split.i:                                   ; preds = %.lr.ph.i313
  %i.sd = load ptr, ptr %i.rt, align 8
  br label %.lr.ph59.i.i

_ZNK7aiScene8findBoneERK8aiString.exit.loopexit.i: ; preds = %_ZNK8aiStringeqERKS_.exit.i.i
  %i.se = getelementptr inbounds nuw i8, ptr %i.sg, i64 1096
  %i.sf = load ptr, ptr %i.se, align 8            ; 2 uses
  %.not30.i = icmp eq ptr %i.sf, null
  br i1 %.not30.i, label %.critedge.i, label %.lr.ph59.i.i, !llvm.loop !326

.lr.ph59.i.i:                                     ; preds = %_ZNK7aiScene8findBoneERK8aiString.exit.loopexit.i, %.lr.ph.split.i
  %i.sg = phi ptr [ %i.sa, %.lr.ph.split.i ], [ %i.sf, %_ZNK7aiScene8findBoneERK8aiString.exit.loopexit.i ] ; 5 uses
  %.03847.i = phi ptr [ %i.ry, %.lr.ph.split.i ], [ %i.sg, %_ZNK7aiScene8findBoneERK8aiString.exit.loopexit.i ]
  %i.sh = load i32, ptr %i.sg, align 4            ; 2 uses
  %i.si = getelementptr inbounds nuw i8, ptr %i.sg, i64 4
  %i.sj = zext i32 %i.sh to i64
  br label %bb.aw

bb.aw:                                            ; preds = %.loopexit.i.i, %.lr.ph59.i.i
  %.01958.i.i = phi i64 [ 0, %.lr.ph59.i.i ], [ %i.ta, %.loopexit.i.i ] ; 2 uses
  %i.sk = getelementptr inbounds nuw [8 x i8], ptr %i.sd, i64 %.01958.i.i
  %i.sl = load ptr, ptr %i.sk, align 8            ; 3 uses
  %i.sm = icmp eq ptr %i.sl, null
  br i1 %i.sm, label %.loopexit.i.i, label %.preheader.i.i

.preheader.i.i:                                   ; preds = %bb.aw
  %i.sn = getelementptr inbounds nuw i8, ptr %i.sl, i64 216
  %i.so = load i32, ptr %i.sn, align 8            ; 2 uses
  %i.sp = zext i32 %i.so to i64
  %.not60.i.i = icmp eq i32 %i.so, 0
  br i1 %.not60.i.i, label %.loopexit.i.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.preheader.i.i
  %i.sq = getelementptr inbounds nuw i8, ptr %i.sl, i64 224
  %i.sr = load ptr, ptr %i.sq, align 8
  br label %bb.ax

bb.ax:                                            ; preds = %.thread33.i.i, %.lr.ph.i.i
  %.01857.i.i = phi i64 [ 0, %.lr.ph.i.i ], [ %i.sz, %.thread33.i.i ] ; 2 uses
  %i.ss = getelementptr inbounds nuw [8 x i8], ptr %i.sr, i64 %.01857.i.i
  %i.st = load ptr, ptr %i.ss, align 8            ; 3 uses
  %i.su = icmp eq ptr %i.st, null
  br i1 %i.su, label %.thread33.i.i, label %bb.ay

bb.ay:                                            ; preds = %bb.ax
  %i.sv = load i32, ptr %i.st, align 4
  %i.sw = icmp eq i32 %i.sh, %i.sv
  br i1 %i.sw, label %_ZNK8aiStringeqERKS_.exit.i.i, label %.thread33.i.i

_ZNK8aiStringeqERKS_.exit.i.i:                    ; preds = %bb.ay
  %i.sx = getelementptr inbounds nuw i8, ptr %i.st, i64 4
  %bcmp.i.i.i = call i32 @bcmp(ptr nonnull %i.si, ptr nonnull %i.sx, i64 %i.sj)
  %bcmp.i.fr.i.i = freeze i32 %bcmp.i.i.i
  %i.sy = icmp eq i32 %bcmp.i.fr.i.i, 0
  br i1 %i.sy, label %_ZNK7aiScene8findBoneERK8aiString.exit.loopexit.i, label %.thread33.i.i

.thread33.i.i:                                    ; preds = %_ZNK8aiStringeqERKS_.exit.i.i, %bb.ay, %bb.ax
  %i.sz = add nuw nsw i64 %.01857.i.i, 1          ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %i.sz, %i.sp
  br i1 %exitcond.not.i.i, label %.loopexit.i.i, label %bb.ax, !llvm.loop !312

.loopexit.i.i:                                    ; preds = %.thread33.i.i, %.preheader.i.i, %bb.aw
  %i.ta = add nuw nsw i64 %.01958.i.i, 1          ; 2 uses
  %exitcond63.not.i.i = icmp eq i64 %i.ta, %i.sc
  br i1 %exitcond63.not.i.i, label %.critedge.i, label %bb.aw, !llvm.loop !313

bb.az:                                            ; preds = %_ZNSt8_Rb_treeIPK6aiNodeS2_St9_IdentityIS2_ESt4lessIS2_ESaIS2_EE10_M_insert_IRKS2_NS8_11_Alloc_nodeEEESt17_Rb_tree_iteratorIS2_EPSt18_Rb_tree_node_baseSG_OT_RT0_.exit.i.i.i, %bb.au
  %i.tb = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt3setIPK6aiNodeSt4lessIS2_ESaIS2_EED2Ev(ptr noundef nonnull align 8 dead_on_return(48) dereferenceable(48) %2) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #25
  br label %.body316

.critedge.i:                                      ; preds = %_ZNK7aiScene8findBoneERK8aiString.exit.loopexit.i, %.loopexit.i.i, %.lr.ph.i313, %_ZNK7aiScene8findBoneERK8aiString.exit.preheader.i
  %.03844.i = phi ptr [ %.03847.i, %.loopexit.i.i ], [ %i.ry, %.lr.ph.i313 ], [ %i.ry, %_ZNK7aiScene8findBoneERK8aiString.exit.preheader.i ], [ %i.sg, %_ZNK7aiScene8findBoneERK8aiString.exit.loopexit.i ] ; 4 uses
  %.02022.i.i.i.i = load ptr, ptr %i.mb, align 8  ; 2 uses
  %.not23.i.i.i.i = icmp eq ptr %.02022.i.i.i.i, null
  br i1 %.not23.i.i.i.i, label %._crit_edge.thread.i.i.i.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %.critedge.i, %.lr.ph.i.i.i.i
  %.02024.i.i.i.i = phi ptr [ %.020.i.i.i.i, %.lr.ph.i.i.i.i ], [ %.02022.i.i.i.i, %.critedge.i ] ; 4 uses
  %i.tc = getelementptr inbounds nuw i8, ptr %.02024.i.i.i.i, i64 32
  %i.td = load ptr, ptr %i.tc, align 8            ; 2 uses
  %i.te = icmp ult ptr %.03844.i, %i.td           ; 2 uses
  %.in.v.i.i.i.i = select i1 %i.te, i64 16, i64 24
  %.in.i.i.i.i = getelementptr inbounds nuw i8, ptr %.02024.i.i.i.i, i64 %.in.v.i.i.i.i
  %.020.i.i.i.i = load ptr, ptr %.in.i.i.i.i, align 8 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %.020.i.i.i.i, null
  br i1 %.not.i.i.i.i, label %._crit_edge.i.i.i.i, label %.lr.ph.i.i.i.i, !llvm.loop !327

._crit_edge.i.i.i.i:                              ; preds = %.lr.ph.i.i.i.i
  br i1 %i.te, label %._crit_edge.thread.i.i.i.i, label %bb.bb

._crit_edge.thread.i.i.i.i:                       ; preds = %._crit_edge.i.i.i.i, %.critedge.i
  %.019.lcssa29.i.i.i.i = phi ptr [ %.02024.i.i.i.i, %._crit_edge.i.i.i.i ], [ %i.ma, %.critedge.i ] ; 4 uses
  %i.tf = load ptr, ptr %i.mc, align 8
  %i.tg = icmp eq ptr %.019.lcssa29.i.i.i.i, %i.tf
  br i1 %i.tg, label %select.unfold.i.i.i, label %bb.ba

bb.ba:                                            ; preds = %._crit_edge.thread.i.i.i.i
  %i.th = call noundef ptr @_ZSt18_Rb_tree_decrementPSt18_Rb_tree_node_base(ptr noundef nonnull %.019.lcssa29.i.i.i.i) #29
  %.phi.trans.insert.i.i.i = getelementptr inbounds nuw i8, ptr %i.th, i64 32
  %.pre.i.i.i = load ptr, ptr %.phi.trans.insert.i.i.i, align 8
  br label %bb.bb

bb.bb:                                            ; preds = %bb.ba, %._crit_edge.i.i.i.i
  %i.ti = phi ptr [ %.pre.i.i.i, %bb.ba ], [ %i.td, %._crit_edge.i.i.i.i ]
  %.019.lcssa28.i.i.i.i = phi ptr [ %.019.lcssa29.i.i.i.i, %bb.ba ], [ %.02024.i.i.i.i, %._crit_edge.i.i.i.i ]
  %.fr.i = freeze ptr %i.ti
  %i.tj = icmp ult ptr %.fr.i, %.03844.i
  br i1 %i.tj, label %select.unfold.i.i.i, label %_ZNSt3setIPK6aiNodeSt4lessIS2_ESaIS2_EE6insertERKS2_.exit.i

select.unfold.i.i.i:                              ; preds = %bb.bb, %._crit_edge.thread.i.i.i.i
  %.sroa.4.0.i.ph.i.i.i = phi ptr [ %.019.lcssa29.i.i.i.i, %._crit_edge.thread.i.i.i.i ], [ %.019.lcssa28.i.i.i.i, %bb.bb ] ; 3 uses
  %i.tk = icmp eq ptr %.sroa.4.0.i.ph.i.i.i, %i.ma
  br i1 %i.tk, label %_ZNSt8_Rb_treeIPK6aiNodeS2_St9_IdentityIS2_ESt4lessIS2_ESaIS2_EE10_M_insert_IRKS2_NS8_11_Alloc_nodeEEESt17_Rb_tree_iteratorIS2_EPSt18_Rb_tree_node_baseSG_OT_RT0_.exit.i.i.i, label %bb.bc

bb.bc:                                            ; preds = %select.unfold.i.i.i
  %i.tl = getelementptr inbounds nuw i8, ptr %.sroa.4.0.i.ph.i.i.i, i64 32
  %i.tm = load ptr, ptr %i.tl, align 8
  %i.tn = icmp ult ptr %.03844.i, %i.tm
  br label %_ZNSt8_Rb_treeIPK6aiNodeS2_St9_IdentityIS2_ESt4lessIS2_ESaIS2_EE10_M_insert_IRKS2_NS8_11_Alloc_nodeEEESt17_Rb_tree_iteratorIS2_EPSt18_Rb_tree_node_baseSG_OT_RT0_.exit.i.i.i

_ZNSt8_Rb_treeIPK6aiNodeS2_St9_IdentityIS2_ESt4lessIS2_ESaIS2_EE10_M_insert_IRKS2_NS8_11_Alloc_nodeEEESt17_Rb_tree_iteratorIS2_EPSt18_Rb_tree_node_baseSG_OT_RT0_.exit.i.i.i: ; preds = %bb.bc, %select.unfold.i.i.i
  %i.to = phi i1 [ %i.tn, %bb.bc ], [ true, %select.unfold.i.i.i ]
  %i.tp = invoke noalias noundef nonnull dereferenceable(40) ptr @_Znwm(i64 noundef 40) #30
          to label %.noexc.i315 unwind label %bb.az ; 2 uses

.noexc.i315:                                      ; preds = %_ZNSt8_Rb_treeIPK6aiNodeS2_St9_IdentityIS2_ESt4lessIS2_ESaIS2_EE10_M_insert_IRKS2_NS8_11_Alloc_nodeEEESt17_Rb_tree_iteratorIS2_EPSt18_Rb_tree_node_baseSG_OT_RT0_.exit.i.i.i
  %i.tq = getelementptr inbounds nuw i8, ptr %i.tp, i64 32
  store ptr %.03844.i, ptr %i.tq, align 8
  call void @_ZSt29_Rb_tree_insert_and_rebalancebPSt18_Rb_tree_node_baseS0_RS_(i1 noundef zeroext %i.to, ptr noundef nonnull %i.tp, ptr noundef nonnull %.sroa.4.0.i.ph.i.i.i, ptr noundef nonnull align 8 dereferenceable(32) %i.ma) #25
  %i.tr = load i64, ptr %i.me, align 8
  %i.ts = add i64 %i.tr, 1
  store i64 %i.ts, ptr %i.me, align 8
  br label %_ZNSt3setIPK6aiNodeSt4lessIS2_ESaIS2_EE6insertERKS2_.exit.i

_ZNSt3setIPK6aiNodeSt4lessIS2_ESaIS2_EE6insertERKS2_.exit.i: ; preds = %.noexc.i315, %bb.bb, %bb.av
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %i.tt = load i32, ptr %i.qi, align 8
  %i.tu = zext i32 %i.tt to i64
  %i.tv = icmp samesign ult i64 %indvars.iv.next.i, %i.tu
  br i1 %i.tv, label %bb.au, label %.loopexit.i314, !llvm.loop !328

.loopexit.i314:                                   ; preds = %_ZNSt3setIPK6aiNodeSt4lessIS2_ESaIS2_EE6insertERKS2_.exit.i
  %.pr.pre.i = load i64, ptr %i.me, align 8       ; 2 uses
  %i.tw = icmp eq i64 %.pr.pre.i, 0
  br i1 %i.tw, label %.thread.i, label %bb.bd

bb.bd:                                            ; preds = %.loopexit.i314
  %i.tx = load ptr, ptr %i.mc, align 8            ; 3 uses
  %i.ty = getelementptr inbounds nuw i8, ptr %i.tx, i64 32
  %i.tz = load ptr, ptr %i.ty, align 8            ; 2 uses
  %i.ua = icmp eq i64 %.pr.pre.i, 1
  %.not4051.i = icmp eq ptr %i.tx, %i.ma
  %or.cond.i = or i1 %i.ua, %.not4051.i
  br i1 %or.cond.i, label %.thread.i, label %.lr.ph53.i

.lr.ph53.i:                                       ; preds = %bb.bd, %bb.be
  %.sroa.032.052.i = phi ptr [ %i.uf, %bb.be ], [ %i.tx, %bb.bd ] ; 2 uses
  %i.ub = getelementptr inbounds nuw i8, ptr %.sroa.032.052.i, i64 32
  %i.uc = load ptr, ptr %i.ub, align 8
  %i.ud = getelementptr inbounds nuw i8, ptr %i.uc, i64 1096
  %i.ue = load ptr, ptr %i.ud, align 8            ; 2 uses
  %.not28.i = icmp eq ptr %i.ue, null
  br i1 %.not28.i, label %bb.be, label %.thread.i

bb.be:                                            ; preds = %.lr.ph53.i
  %i.uf = call noundef ptr @_ZSt18_Rb_tree_incrementPKSt18_Rb_tree_node_base(ptr noundef nonnull %.sroa.032.052.i) #29 ; 2 uses
  %.not40.i = icmp eq ptr %i.uf, %i.ma
  br i1 %.not40.i, label %.thread.i, label %.lr.ph53.i

.thread.i:                                        ; preds = %bb.be, %.lr.ph53.i, %bb.bd, %.loopexit.i314, %bb.at
  %.4.i = phi ptr [ null, %.loopexit.i314 ], [ null, %bb.at ], [ %i.tz, %bb.bd ], [ %i.tz, %bb.be ], [ %i.ue, %.lr.ph53.i ] ; 2 uses
  %i.ug = load ptr, ptr %i.mb, align 8
  invoke void @_ZNSt8_Rb_treeIPK6aiNodeS2_St9_IdentityIS2_ESt4lessIS2_ESaIS2_EE8_M_eraseEPSt13_Rb_tree_nodeIS2_E(ptr noundef nonnull align 8 dereferenceable(48) %2, ptr noundef %i.ug)
          to label %bb.bg unwind label %bb.bf

bb.bf:                                            ; preds = %.thread.i
  %i.uh = landingpad { ptr, i32 }
          catch ptr null
  %i.ui = extractvalue { ptr, i32 } %i.uh, 0
  call void @__clang_call_terminate(ptr %i.ui) #28
  unreachable

bb.bg:                                            ; preds = %.thread.i
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #25
  %.not104 = icmp eq ptr %.4.i, null
  br i1 %.not104, label %bb.br, label %bb.bh

bb.bh:                                            ; preds = %bb.bg
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #25
  invoke void @_ZN6Assimp15ColladaExporter15GetNodeUniqueIdB5cxx11EPK6aiNode(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %11, ptr noundef nonnull align 8 dereferenceable(1248) %0, ptr noundef nonnull %.4.i)
          to label %bb.bi unwind label %bb.bq

bb.bi:                                            ; preds = %bb.bh
  %i.uj = load ptr, ptr %i.mf, align 8            ; 6 uses
  %i.uk = icmp eq ptr %i.uj, %i.mg
  %i.ul = load ptr, ptr %11, align 8              ; 6 uses
  %i.um = icmp eq ptr %i.ul, %i.mh                ; 2 uses
  br i1 %i.uk, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i: ; preds = %bb.bi
  br i1 %i.um, label %bb.bj, label %.thread.i320

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i: ; preds = %bb.bi
  br i1 %i.um, label %bb.bj, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i

bb.bj:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i
  %i.un = load i64, ptr %i.mi, align 8            ; 3 uses
  %i.uo = icmp ult i64 %i.un, 16
  call void @llvm.assume(i1 %i.uo)
  br i1 %.not21.i, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit, label %bb.bk, !prof !68

bb.bk:                                            ; preds = %bb.bj
  switch i64 %i.un, label %bb.bm [
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i
    i64 1, label %bb.bl
  ]

bb.bl:                                            ; preds = %bb.bk
  %i.up = load i8, ptr %i.ul, align 1
  store i8 %i.up, ptr %i.uj, align 1
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i

bb.bm:                                            ; preds = %bb.bk
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.uj, ptr align 1 %i.ul, i64 %i.un, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i: ; preds = %bb.bm, %bb.bl, %bb.bk
  %i.uq = load i64, ptr %i.mi, align 8            ; 2 uses
  store i64 %i.uq, ptr %i.mj, align 8
  %i.ur = load ptr, ptr %i.mf, align 8
  %i.us = getelementptr inbounds nuw i8, ptr %i.ur, i64 %i.uq
  store i8 0, ptr %i.us, align 1
  %.pre.i319 = load ptr, ptr %11, align 8
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit

.thread.i320:                                     ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i
  store ptr %i.ul, ptr %i.mf, align 8
  %i.ut = load <2 x i64>, ptr %i.mi, align 8
  store <2 x i64> %i.ut, ptr %i.mj, align 8
  br label %bb.bo

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i
  %i.uu = load i64, ptr %i.mg, align 8
  store ptr %i.ul, ptr %i.mf, align 8
  %i.uv = load <2 x i64>, ptr %i.mi, align 8
  store <2 x i64> %i.uv, ptr %i.mj, align 8
  %.not.i318 = icmp eq ptr %i.uj, null
  br i1 %.not.i318, label %bb.bo, label %bb.bn

bb.bn:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i
  store ptr %i.uj, ptr %11, align 8
  store i64 %i.uu, ptr %i.mh, align 8
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit

bb.bo:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i, %.thread.i320
  store ptr %i.mh, ptr %11, align 8
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit: ; preds = %bb.bj, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i, %bb.bn, %bb.bo
  %i.uw = phi ptr [ %.pre.i319, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i ], [ %i.uj, %bb.bn ], [ %i.mh, %bb.bo ], [ %i.ul, %bb.bj ]
  store i64 0, ptr %i.mi, align 8
  store i8 0, ptr %i.uw, align 1
  %i.ux = load ptr, ptr %11, align 8              ; 2 uses
  %i.uy = icmp eq ptr %i.ux, %i.mh
  br i1 %i.uy, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit323, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i321

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i321: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit
  %i.uz = load i64, ptr %i.mh, align 8
  %i.va = add i64 %i.uz, 1
  call void @_ZdlPvm(ptr noundef %i.ux, i64 noundef %i.va) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit323

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit323: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i321
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #25
  br label %bb.br

bb.bp:                                            ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit331, %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit329, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit327, %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit325, %bb.br
  %i.vb = landingpad { ptr, i32 }
          cleanup
  br label %.body316

bb.bq:                                            ; preds = %bb.bh
  %i.vc = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #25
  br label %.body316

bb.br:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit323, %bb.bg
  %i.vd = load ptr, ptr %i.az, align 8
  %i.ve = load i64, ptr %i.bb, align 8
  %i.vf = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.ay, ptr noundef %i.vd, i64 noundef %i.ve)
          to label %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit325 unwind label %bb.bp ; 2 uses

_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit325: ; preds = %bb.br
  %i.vg = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.vf, ptr noundef nonnull @.str.328, i64 noundef 11)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit327 unwind label %bb.bp ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit327: ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit325
  %i.vh = load ptr, ptr %i.mf, align 8
  %i.vi = load i64, ptr %i.mj, align 8
  %i.vj = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.vf, ptr noundef %i.vh, i64 noundef %i.vi)
          to label %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit329 unwind label %bb.bp ; 2 uses

_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit329: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit327
  %i.vk = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.vj, ptr noundef nonnull @.str.329, i64 noundef 11)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit331 unwind label %bb.bp ; 0 uses

end_hunk_1
begin_hunk_2_@_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEED2Ev:bb.a
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEEE, i64 16), ptr %i.f, align 8
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.h = load ptr, ptr %i.g, align 8              ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 2 uses
  %i.j = icmp eq ptr %i.h, %i.i
  br i1 %i.j, label %_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i: ; preds = %bb.a
  %i.k = load i64, ptr %i.i, align 8
  %i.l = add i64 %i.k, 1
  tail call void @_ZdlPvm(ptr noundef %i.h, i64 noundef %i.l) #27
  br label %_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev.exit

_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev.exit: ; preds = %bb.a, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVSt15basic_streambufIcSt11char_traitsIcEE, i64 16), ptr %i.f, align 8
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 64
  tail call void @_ZNSt6localeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.m) #25
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 112
  tail call void @_ZNSt8ios_baseD2Ev(ptr noundef nonnull align 8 dereferenceable(264) %i.n) #25
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr void @_ZN17DeadlyExportErrorD0Ev(ptr noundef nonnull align 8 dereferenceable(16) %0) unnamed_addr #7 comdat align 2 {
bb.a:
  tail call void @_ZNSt13runtime_errorD2Ev(ptr noundef nonnull align 8 dereferenceable(16) %0) #25
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 16) #27
  ret void
}

; Function Attrs: nounwind
declare noundef ptr @_ZNKSt13runtime_error4whatEv(ptr noundef nonnull align 8 dereferenceable(16)) unnamed_addr #4

; Function Attrs: mustprogress uwtable
declare void @_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEC1Ev(ptr noundef nonnull align 8 dereferenceable(112)) unnamed_addr #0 align 2

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEEC2EOS5_(ptr noundef nonnull align 8 dereferenceable(376) %0, ptr noundef nonnull align 8 dereferenceable(376) %1) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  tail call void @_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEC1Ev(ptr noundef nonnull align 8 dereferenceable(112) %0)
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #25
  tail call void @llvm.experimental.noalias.scope.decl(metadata !391)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !394)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !397)
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 7 uses
  store ptr %i.a, ptr %2, align 8, !alias.scope !400
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  store i64 0, ptr %i.b, align 8, !alias.scope !400
  store i8 0, ptr %i.a, align 8, !alias.scope !400
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.d = load ptr, ptr %i.c, align 8, !noalias !400 ; 3 uses
  %.not.i.not.i.i.i = icmp eq ptr %i.d, null
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.f = load ptr, ptr %i.e, align 8, !noalias !400 ; 2 uses
  %i.g = icmp ugt ptr %i.d, %i.f
  %.08.i.i.i.i = select i1 %i.g, ptr %i.d, ptr %i.f ; 2 uses
  %.not5.i.i.i = icmp eq ptr %.08.i.i.i.i, null
  %.not.i.i.i = select i1 %.not.i.not.i.i.i, i1 true, i1 %.not5.i.i.i
  br i1 %.not.i.i.i, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.i = load ptr, ptr %i.h, align 8, !noalias !400 ; 2 uses
  %i.j = ptrtoint ptr %.08.i.i.i.i to i64
  %i.k = ptrtoint ptr %i.i to i64
  %i.l = sub i64 %i.j, %i.k
  %i.m = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %2, i64 noundef 0, i64 noundef 0, ptr noundef %i.i, i64 noundef %i.l)
          to label %_ZNK6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEEcvNSt7__cxx1112basic_stringIcS3_S4_EEEv.exit unwind label %bb.c ; 0 uses

bb.c:                                             ; preds = %bb.d, %bb.b
  %i.n = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.o = load ptr, ptr %2, align 8, !alias.scope !400 ; 2 uses
  %i.p = icmp eq ptr %i.o, %i.a
  br i1 %i.p, label %.body, label %.body.sink.split

bb.d:                                             ; preds = %bb.a
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 80
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull align 8 dereferenceable(32) %i.q)
          to label %_ZNK6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEEcvNSt7__cxx1112basic_stringIcS3_S4_EEEv.exit unwind label %bb.c

_ZNK6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEEcvNSt7__cxx1112basic_stringIcS3_S4_EEEv.exit: ; preds = %bb.d, %bb.b
  %i.r = load ptr, ptr %2, align 8
  %i.s = load i64, ptr %i.b, align 8
  %i.t = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef %i.r, i64 noundef %i.s)
          to label %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit unwind label %bb.e ; 0 uses

_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit: ; preds = %_ZNK6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEEcvNSt7__cxx1112basic_stringIcS3_S4_EEEv.exit
  %i.u = load ptr, ptr %2, align 8                ; 2 uses
  %i.v = icmp eq ptr %i.u, %i.a
  br i1 %i.v, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit
  %i.w = load i64, ptr %i.a, align 8
  %i.x = add i64 %i.w, 1
  call void @_ZdlPvm(ptr noundef %i.u, i64 noundef %i.x) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #25
  ret void

bb.e:                                             ; preds = %_ZNK6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEEcvNSt7__cxx1112basic_stringIcS3_S4_EEEv.exit
  %i.y = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.z = load ptr, ptr %2, align 8                ; 2 uses
  %i.aa = icmp eq ptr %i.z, %i.a
  br i1 %i.aa, label %.body, label %.body.sink.split

.body.sink.split:                                 ; preds = %bb.e, %bb.c
  %.sink = phi ptr [ %i.o, %bb.c ], [ %i.z, %bb.e ]
  %.pn.ph = phi { ptr, i32 } [ %i.n, %bb.c ], [ %i.y, %bb.e ]
  %i.ab = load i64, ptr %i.a, align 8
  %i.ac = add i64 %i.ab, 1
  call void @_ZdlPvm(ptr noundef %.sink, i64 noundef %i.ac) #27
  br label %.body

.body:                                            ; preds = %.body.sink.split, %bb.e, %bb.c
  %.pn = phi { ptr, i32 } [ %i.n, %bb.c ], [ %i.y, %bb.e ], [ %.pn.ph, %.body.sink.split ]
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #25
  call void @_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev(ptr noundef nonnull align 8 dereferenceable(112) %0) #25
  resume { ptr, i32 } %.pn
}

declare void @_ZN15DeadlyErrorBaseC2EN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef) unnamed_addr #2

; Function Attrs: mustprogress nounwind uwtable
declare void @_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev(ptr noundef nonnull align 8 dereferenceable(112)) unnamed_addr #6 align 2

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8), i8 noundef signext) local_unnamed_addr #2

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertImEERSoT_(ptr noundef nonnull align 8 dereferenceable(8), i64 noundef) local_unnamed_addr #2

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertIdEERSoT_(ptr noundef nonnull align 8 dereferenceable(8), double noundef) local_unnamed_addr #2

; Function Attrs: mustprogress uwtable
define linkonce_odr ptr @_ZNSt8_Rb_treeIjSt4pairIKjNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEESt10_Select1stIS8_ESt4lessIjESaIS8_EE22_M_emplace_hint_uniqueIJS0_IjS7_EEEESt17_Rb_tree_iteratorIS8_ESt23_Rb_tree_const_iteratorIS8_EDpOT_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr %1, ptr noundef nonnull align 8 dereferenceable(40) %2) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"struct.std::_Rb_tree<unsigned int, std::pair<const unsigned int, std::__cxx11::basic_string<char>>, std::_Select1st<std::pair<const unsigned int, std::__cxx11::basic_string<char>>>, std::less<unsigned int>>::_Auto_node", align 8 ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #25
  store ptr %0, ptr %3, align 8
  %i.a = tail call noalias noundef nonnull dereferenceable(72) ptr @_Znwm(i64 noundef 72) #30 ; 8 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 32 ; 3 uses
  %i.c = load i32, ptr %2, align 8
  store i32 %i.c, ptr %i.b, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 40 ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 56 ; 5 uses
  store ptr %i.f, ptr %i.d, align 8
  %i.g = load ptr, ptr %i.e, align 8              ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %2, i64 24 ; 5 uses
  %i.i = icmp eq ptr %i.g, %i.h
  br i1 %i.i, label %bb.b, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i

bb.b:                                             ; preds = %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.k = load i64, ptr %i.j, align 8              ; 3 uses
  %i.l = icmp ult i64 %i.k, 16
  tail call void @llvm.assume(i1 %i.l)
  %i.m = add nuw nsw i64 %i.k, 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.f, ptr noundef nonnull align 8 dereferenceable(1) %i.h, i64 %i.m, i1 false)
  br label %bb.c

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i: ; preds = %bb.a
  store ptr %i.g, ptr %i.d, align 8
  %i.n = load i64, ptr %i.h, align 8
  store i64 %i.n, ptr %i.f, align 8
  %.phi.trans.insert.i.i = getelementptr inbounds nuw i8, ptr %2, i64 16
  %.pre.i.i = load i64, ptr %.phi.trans.insert.i.i, align 8
  br label %bb.c

bb.c:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i, %bb.b
  %i.o = phi i64 [ %i.k, %bb.b ], [ %.pre.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i ]
  %i.p = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.q = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.r = getelementptr inbounds nuw i8, ptr %i.a, i64 48
  store i64 %i.o, ptr %i.r, align 8
  store ptr %i.h, ptr %i.e, align 8
  store i64 0, ptr %i.q, align 8
  store i8 0, ptr %i.h, align 8
  store ptr %i.a, ptr %i.p, align 8
  %i.s = invoke { ptr, ptr } @_ZNSt8_Rb_treeIjSt4pairIKjNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEESt10_Select1stIS8_ESt4lessIjESaIS8_EE29_M_get_insert_hint_unique_posESt23_Rb_tree_const_iteratorIS8_ERS1_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr %1, ptr noundef nonnull align 4 dereferenceable(4) %i.b)
          to label %bb.d unwind label %bb.g       ; 2 uses

bb.d:                                             ; preds = %bb.c
  %i.t = extractvalue { ptr, ptr } %i.s, 0        ; 2 uses
  %i.u = extractvalue { ptr, ptr } %i.s, 1        ; 4 uses
  %.not = icmp eq ptr %i.u, null
  br i1 %.not, label %bb.h, label %bb.e

bb.e:                                             ; preds = %bb.d
  %.not.i.i = icmp ne ptr %i.t, null
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.w = icmp eq ptr %i.u, %i.v
  %or.cond.i.i = select i1 %.not.i.i, i1 true, i1 %i.w
  br i1 %or.cond.i.i, label %.thread, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.x = getelementptr inbounds nuw i8, ptr %i.u, i64 32
  %i.y = load i32, ptr %i.b, align 8
  %i.z = load i32, ptr %i.x, align 4
  %i.aa = icmp ult i32 %i.y, %i.z
  br label %.thread

.thread:                                          ; preds = %bb.e, %bb.f
  %i.ab = phi i1 [ %i.aa, %bb.f ], [ true, %bb.e ]
  tail call void @_ZSt29_Rb_tree_insert_and_rebalancebPSt18_Rb_tree_node_baseS0_RS_(i1 noundef zeroext %i.ab, ptr noundef nonnull %i.a, ptr noundef nonnull %i.u, ptr noundef nonnull align 8 dereferenceable(32) %i.v) #25
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.ad = load i64, ptr %i.ac, align 8
  %i.ae = add i64 %i.ad, 1
  store i64 %i.ae, ptr %i.ac, align 8
  br label %_ZNSt8_Rb_treeIjSt4pairIKjNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEESt10_Select1stIS8_ESt4lessIjESaIS8_EE10_Auto_nodeD2Ev.exit

bb.g:                                             ; preds = %bb.c
  %i.af = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt8_Rb_treeIjSt4pairIKjNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEESt10_Select1stIS8_ESt4lessIjESaIS8_EE10_Auto_nodeD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %3) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #25
  resume { ptr, i32 } %i.af

bb.h:                                             ; preds = %bb.d
  %i.ag = load ptr, ptr %i.d, align 8             ; 2 uses
  %i.ah = icmp eq ptr %i.ag, %i.f
  br i1 %i.ah, label %_ZNSt8_Rb_treeIjSt4pairIKjNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEESt10_Select1stIS8_ESt4lessIjESaIS8_EE12_M_drop_nodeEPSt13_Rb_tree_nodeIS8_E.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i: ; preds = %bb.h
  %i.ai = load i64, ptr %i.f, align 8
  %i.aj = add i64 %i.ai, 1
  tail call void @_ZdlPvm(ptr noundef %i.ag, i64 noundef %i.aj) #27
  br label %_ZNSt8_Rb_treeIjSt4pairIKjNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEESt10_Select1stIS8_ESt4lessIjESaIS8_EE12_M_drop_nodeEPSt13_Rb_tree_nodeIS8_E.exit.i

_ZNSt8_Rb_treeIjSt4pairIKjNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEESt10_Select1stIS8_ESt4lessIjESaIS8_EE12_M_drop_nodeEPSt13_Rb_tree_nodeIS8_E.exit.i: ; preds = %bb.h, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i
  tail call void @_ZdlPvm(ptr noundef nonnull %i.a, i64 noundef 72) #27
  br label %_ZNSt8_Rb_treeIjSt4pairIKjNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEESt10_Select1stIS8_ESt4lessIjESaIS8_EE10_Auto_nodeD2Ev.exit

_ZNSt8_Rb_treeIjSt4pairIKjNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEESt10_Select1stIS8_ESt4lessIjESaIS8_EE10_Auto_nodeD2Ev.exit: ; preds = %.thread, %_ZNSt8_Rb_treeIjSt4pairIKjNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEESt10_Select1stIS8_ESt4lessIjESaIS8_EE12_M_drop_nodeEPSt13_Rb_tree_nodeIS8_E.exit.i
  %.sroa.0.08 = phi ptr [ %i.a, %.thread ], [ %i.t, %_ZNSt8_Rb_treeIjSt4pairIKjNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEESt10_Select1stIS8_ESt4lessIjESaIS8_EE12_M_drop_nodeEPSt13_Rb_tree_nodeIS8_E.exit.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #25
  ret ptr %.sroa.0.08
}

; Function Attrs: mustprogress uwtable
define linkonce_odr { ptr, ptr } @_ZNSt8_Rb_treeIjSt4pairIKjNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEESt10_Select1stIS8_ESt4lessIjESaIS8_EE29_M_get_insert_hint_unique_posESt23_Rb_tree_const_iteratorIS8_ERS1_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr %1, ptr noundef nonnull align 4 dereferenceable(4) %2) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.b = icmp eq ptr %1, %i.a
  br i1 %i.b, label %bb.b, label %bb.h

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.d = load i64, ptr %i.c, align 8
  %.not = icmp eq i64 %i.d, 0
  br i1 %.not, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.f = load ptr, ptr %i.e, align 8              ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 32
  %i.h = load i32, ptr %i.g, align 4
  %i.i = load i32, ptr %2, align 4
  %i.j = icmp ult i32 %i.h, %i.i
  br i1 %i.j, label %_ZNSt8_Rb_treeIjSt4pairIKjNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEESt10_Select1stIS8_ESt4lessIjESaIS8_EE24_M_get_insert_unique_posERS1_.exit, label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.02022.i = load ptr, ptr %i.k, align 8         ; 2 uses
  %.not23.i = icmp eq ptr %.02022.i, null
  br i1 %.not23.i, label %._crit_edge.thread.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.d
  %i.l = load i32, ptr %2, align 4                ; 2 uses
  br label %bb.e

bb.e:                                             ; preds = %bb.e, %.lr.ph.i
  %.02024.i = phi ptr [ %.02022.i, %.lr.ph.i ], [ %.020.i, %bb.e ] ; 5 uses
  %i.m = getelementptr inbounds nuw i8, ptr %.02024.i, i64 32
  %i.n = load i32, ptr %i.m, align 4              ; 2 uses
  %i.o = icmp ult i32 %i.l, %i.n                  ; 2 uses
  %.in.v.i = select i1 %i.o, i64 16, i64 24
  %.in.i = getelementptr inbounds nuw i8, ptr %.02024.i, i64 %.in.v.i
  %.020.i = load ptr, ptr %.in.i, align 8         ; 2 uses
  %.not.i = icmp eq ptr %.020.i, null
  br i1 %.not.i, label %._crit_edge.i, label %bb.e, !llvm.loop !401

._crit_edge.i:                                    ; preds = %bb.e
  br i1 %i.o, label %._crit_edge.thread.i, label %bb.g

._crit_edge.thread.i:                             ; preds = %._crit_edge.i, %bb.d
  %.019.lcssa29.i = phi ptr [ %.02024.i, %._crit_edge.i ], [ %i.a, %bb.d ] ; 4 uses
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.q = load ptr, ptr %i.p, align 8
  %i.r = icmp eq ptr %.019.lcssa29.i, %i.q
  br i1 %i.r, label %_ZNSt8_Rb_treeIjSt4pairIKjNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEESt10_Select1stIS8_ESt4lessIjESaIS8_EE24_M_get_insert_unique_posERS1_.exit, label %bb.f

bb.f:                                             ; preds = %._crit_edge.thread.i
  %i.s = tail call noundef ptr @_ZSt18_Rb_tree_decrementPSt18_Rb_tree_node_base(ptr noundef nonnull %.019.lcssa29.i) #29 ; 2 uses
  %.phi.trans.insert80 = getelementptr inbounds nuw i8, ptr %i.s, i64 32
  %.pre81 = load i32, ptr %.phi.trans.insert80, align 4
  %.pre82 = load i32, ptr %2, align 4
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %._crit_edge.i
  %i.t = phi i32 [ %.pre82, %bb.f ], [ %i.l, %._crit_edge.i ]
  %i.u = phi i32 [ %.pre81, %bb.f ], [ %i.n, %._crit_edge.i ]
  %.019.lcssa28.i = phi ptr [ %.019.lcssa29.i, %bb.f ], [ %.02024.i, %._crit_edge.i ]
  %.sroa.05.0.i = phi ptr [ %i.s, %bb.f ], [ %.02024.i, %._crit_edge.i ]
  %i.v = icmp ult i32 %i.u, %i.t                  ; 2 uses
  %spec.select.i = select i1 %i.v, ptr null, ptr %.sroa.05.0.i
  %spec.select21.i = select i1 %i.v, ptr %.019.lcssa28.i, ptr null
  br label %_ZNSt8_Rb_treeIjSt4pairIKjNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEESt10_Select1stIS8_ESt4lessIjESaIS8_EE24_M_get_insert_unique_posERS1_.exit

bb.h:                                             ; preds = %bb.a
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.x = load i32, ptr %2, align 4                ; 8 uses
  %i.y = load i32, ptr %i.w, align 4              ; 2 uses
  %i.z = icmp ult i32 %i.x, %i.y
  br i1 %i.z, label %bb.i, label %bb.o

bb.i:                                             ; preds = %bb.h
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.ab = load ptr, ptr %i.aa, align 8            ; 4 uses
  %i.ac = icmp eq ptr %i.ab, %1
  br i1 %i.ac, label %_ZNSt8_Rb_treeIjSt4pairIKjNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEESt10_Select1stIS8_ESt4lessIjESaIS8_EE24_M_get_insert_unique_posERS1_.exit, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ad = tail call noundef ptr @_ZSt18_Rb_tree_decrementPSt18_Rb_tree_node_base(ptr noundef nonnull %1) #29 ; 3 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 32
  %i.af = load i32, ptr %i.ae, align 4
  %i.ag = icmp ult i32 %i.af, %i.x
  br i1 %i.ag, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ad, i64 24
  %i.ai = load ptr, ptr %i.ah, align 8
  %i.aj = icmp eq ptr %i.ai, null                 ; 2 uses
  %spec.select = select i1 %i.aj, ptr null, ptr %1
  %spec.select71 = select i1 %i.aj, ptr %i.ad, ptr %1
  br label %_ZNSt8_Rb_treeIjSt4pairIKjNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEESt10_Select1stIS8_ESt4lessIjESaIS8_EE24_M_get_insert_unique_posERS1_.exit

bb.l:                                             ; preds = %bb.j
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.02022.i10 = load ptr, ptr %i.ak, align 8      ; 2 uses
  %.not23.i11 = icmp eq ptr %.02022.i10, null
  br i1 %.not23.i11, label %._crit_edge.thread.i27, label %.lr.ph.i12

.lr.ph.i12:                                       ; preds = %bb.l, %.lr.ph.i12
  %.02024.i13 = phi ptr [ %.020.i16, %.lr.ph.i12 ], [ %.02022.i10, %bb.l ] ; 5 uses
  %i.al = getelementptr inbounds nuw i8, ptr %.02024.i13, i64 32
  %i.am = load i32, ptr %i.al, align 4            ; 2 uses
  %i.an = icmp ult i32 %i.x, %i.am                ; 2 uses
  %.in.v.i14 = select i1 %i.an, i64 16, i64 24
  %.in.i15 = getelementptr inbounds nuw i8, ptr %.02024.i13, i64 %.in.v.i14
  %.020.i16 = load ptr, ptr %.in.i15, align 8     ; 2 uses
  %.not.i17 = icmp eq ptr %.020.i16, null
  br i1 %.not.i17, label %._crit_edge.i18, label %.lr.ph.i12, !llvm.loop !401

._crit_edge.i18:                                  ; preds = %.lr.ph.i12
  br i1 %i.an, label %._crit_edge.thread.i27, label %bb.n

._crit_edge.thread.i27:                           ; preds = %._crit_edge.i18, %bb.l
  %.019.lcssa29.i28 = phi ptr [ %.02024.i13, %._crit_edge.i18 ], [ %i.a, %bb.l ] ; 4 uses
  %i.ao = icmp eq ptr %.019.lcssa29.i28, %i.ab
  br i1 %i.ao, label %_ZNSt8_Rb_treeIjSt4pairIKjNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEESt10_Select1stIS8_ESt4lessIjESaIS8_EE24_M_get_insert_unique_posERS1_.exit, label %bb.m

bb.m:                                             ; preds = %._crit_edge.thread.i27
  %i.ap = tail call noundef ptr @_ZSt18_Rb_tree_decrementPSt18_Rb_tree_node_base(ptr noundef nonnull %.019.lcssa29.i28) #29 ; 2 uses
  %.phi.trans.insert78 = getelementptr inbounds nuw i8, ptr %i.ap, i64 32
  %.pre79 = load i32, ptr %.phi.trans.insert78, align 4
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %._crit_edge.i18
  %i.aq = phi i32 [ %.pre79, %bb.m ], [ %i.am, %._crit_edge.i18 ]
  %.019.lcssa28.i19 = phi ptr [ %.019.lcssa29.i28, %bb.m ], [ %.02024.i13, %._crit_edge.i18 ]
  %.sroa.05.0.i20 = phi ptr [ %i.ap, %bb.m ], [ %.02024.i13, %._crit_edge.i18 ]
  %i.ar = icmp ult i32 %i.aq, %i.x                ; 2 uses
  %spec.select.i21 = select i1 %i.ar, ptr null, ptr %.sroa.05.0.i20
  %spec.select21.i22 = select i1 %i.ar, ptr %.019.lcssa28.i19, ptr null
  br label %_ZNSt8_Rb_treeIjSt4pairIKjNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEESt10_Select1stIS8_ESt4lessIjESaIS8_EE24_M_get_insert_unique_posERS1_.exit

bb.o:                                             ; preds = %bb.h
  %i.as = icmp ult i32 %i.y, %i.x
  br i1 %i.as, label %bb.p, label %_ZNSt8_Rb_treeIjSt4pairIKjNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEESt10_Select1stIS8_ESt4lessIjESaIS8_EE24_M_get_insert_unique_posERS1_.exit

bb.p:                                             ; preds = %bb.o
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.au = load ptr, ptr %i.at, align 8            ; 2 uses
  %i.av = icmp eq ptr %i.au, %1
  br i1 %i.av, label %_ZNSt8_Rb_treeIjSt4pairIKjNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEESt10_Select1stIS8_ESt4lessIjESaIS8_EE24_M_get_insert_unique_posERS1_.exit, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.aw = tail call noundef ptr @_ZSt18_Rb_tree_incrementPSt18_Rb_tree_node_base(ptr noundef nonnull %1) #29 ; 3 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %i.aw, i64 32
  %i.ay = load i32, ptr %i.ax, align 4
  %i.az = icmp ult i32 %i.x, %i.ay
  br i1 %i.az, label %bb.r, label %bb.s

bb.r:                                             ; preds = %bb.q
  %i.ba = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.bb = load ptr, ptr %i.ba, align 8
  %i.bc = icmp eq ptr %i.bb, null                 ; 2 uses
end_hunk_2

Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/xgboost/original/comm?download=true
inline.NumInlined: 2764
inline.NumDeleted: 1016
loop-unroll.NumCompletelyUnrolled: 4
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 6
begin_hunk_0_@_ZN7xgboost10collective14ConnectWorkersERKNS0_4CommEPNS0_9TCPSocketEiNS0_5proto8PeerInfoENSt6chrono8durationIlSt5ratioILl1ELl1EEEEiPSt6vectorISt10shared_ptrIS4_ESaISF_EE:bb.a
bb.r:                                             ; preds = %bb.q
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.32) #34
          to label %.noexc211 unwind label %bb.x

.noexc211:                                        ; preds = %bb.r
  unreachable

_ZNSt6vectorIaSaIaEE17_S_check_init_lenEmRKS0_.exit.i: ; preds = %bb.q
  %.not.i.i.i.i210 = icmp eq i32 %i.cc, 0
  br i1 %.not.i.i.i.i210, label %_ZN7xgboost6common4SpanIaLm18446744073709551615EEC2EPam.exit, label %bb.s

bb.s:                                             ; preds = %_ZNSt6vectorIaSaIaEE17_S_check_init_lenEmRKS0_.exit.i
  %i.cf = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.cd) #30
          to label %_ZN7xgboost6common4SpanIaLm18446744073709551615EEC2EPam.exit.thread unwind label %bb.x ; 7 uses

_ZN7xgboost6common4SpanIaLm18446744073709551615EEC2EPam.exit: ; preds = %_ZNSt6vectorIaSaIaEE17_S_check_init_lenEmRKS0_.exit.i
  %i.cg = getelementptr inbounds nuw i8, ptr %1, i64 28
  %i.ch = load i32, ptr %i.cg, align 4, !tbaa !37
  %.not.i213.not = icmp eq i32 %i.ch, -1
  br i1 %.not.i213.not, label %bb.u, label %bb.t, !prof !226

_ZN7xgboost6common4SpanIaLm18446744073709551615EEC2EPam.exit.thread: ; preds = %bb.s
  %i.ci = ptrtoaddr ptr %i.cf to i64
  call void @llvm.memset.p0.i64(ptr nonnull align 1 %i.cf, i8 0, i64 %i.cd, i1 false)
  %i.cj = getelementptr inbounds nuw i8, ptr %1, i64 28 ; 8 uses
  %i.ck = load i32, ptr %i.cj, align 4, !tbaa !37
  %i.cl = shl nsw i32 %i.ck, 6
  %i.cm = sext i32 %i.cl to i64                   ; 3 uses
  %i.cn = add nsw i64 %i.cm, 64
  %.not.i213625 = icmp ugt i64 %i.cn, %i.cd
  br i1 %.not.i213625, label %bb.t, label %.thread, !prof !51

bb.t:                                             ; preds = %_ZN7xgboost6common4SpanIaLm18446744073709551615EEC2EPam.exit.thread, %_ZN7xgboost6common4SpanIaLm18446744073709551615EEC2EPam.exit
  call void @_ZSt9terminatev() #33
  unreachable

bb.u:                                             ; preds = %_ZN7xgboost6common4SpanIaLm18446744073709551615EEC2EPam.exit
  call void @_ZSt9terminatev() #33
  unreachable

.thread:                                          ; preds = %_ZN7xgboost6common4SpanIaLm18446744073709551615EEC2EPam.exit.thread
  %i.co = getelementptr inbounds nuw i8, ptr %i.cf, i64 %i.cm ; 7 uses
  %i.cp = load i64, ptr %i.w, align 8, !tbaa !42  ; 6 uses
  %i.cq = icmp ugt i64 %i.cp, 64
  br i1 %i.cq, label %.noexc.i, label %bb.aa

.noexc.i:                                         ; preds = %.thread
  %i.cr = getelementptr inbounds nuw i8, ptr %27, i64 16 ; 6 uses
  store ptr %i.cr, ptr %27, align 8, !tbaa !40
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #12
  store i64 25, ptr %i.e, align 8, !tbaa !38
  %i.cs = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %27, ptr noundef nonnull align 8 dereferenceable(8) %i.e, i64 noundef 0)
          to label %.noexc214 unwind label %bb.y  ; 2 uses

.noexc214:                                        ; preds = %.noexc.i
  store ptr %i.cs, ptr %27, align 8, !tbaa !41
  %i.ct = load i64, ptr %i.e, align 8, !tbaa !38  ; 3 uses
  store i64 %i.ct, ptr %i.cr, align 8, !tbaa !43
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(25) %i.cs, ptr noundef nonnull align 1 dereferenceable(25) @.str.5, i64 25, i1 false)
  %i.cu = getelementptr inbounds nuw i8, ptr %27, i64 8
  store i64 %i.ct, ptr %i.cu, align 8, !tbaa !42
  %i.cv = load ptr, ptr %27, align 8, !tbaa !41
  %i.cw = getelementptr inbounds nuw i8, ptr %i.cv, i64 %i.ct
  store i8 0, ptr %i.cw, align 1, !tbaa !43
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #12
  call void @llvm.experimental.noalias.scope.decl(metadata !227)
  call void @llvm.lifetime.start.p0(ptr nonnull %15)
  invoke void @_ZN7xgboost10collective6detail7MakeMsgEONSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKci(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %15, ptr noundef nonnull align 8 dereferenceable(32) %27, ptr noundef nonnull @.str, i32 noundef 148)
          to label %.noexc217 unwind label %bb.z

.noexc217:                                        ; preds = %.noexc214
  call void @llvm.experimental.noalias.scope.decl(metadata !230)
  %i.cx = invoke noalias noundef nonnull dereferenceable(56) ptr @_Znwm(i64 noundef 56) #30
          to label %.noexc.i215 unwind label %bb.v, !noalias !227 ; 7 uses

.noexc.i215:                                      ; preds = %.noexc217
  %i.cy = load ptr, ptr %15, align 8, !tbaa !41, !noalias !233 ; 2 uses
  %i.cz = getelementptr inbounds nuw i8, ptr %15, i64 16 ; 3 uses
  %i.da = icmp eq ptr %i.cy, %i.cz
  %i.db = getelementptr inbounds nuw i8, ptr %i.cx, i64 16 ; 3 uses
  br i1 %i.da, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.thread.i.i.i, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.thread.i.i.i: ; preds = %.noexc.i215
  %i.dc = getelementptr inbounds nuw i8, ptr %15, i64 8
  %i.dd = load i64, ptr %i.dc, align 8, !tbaa !42, !noalias !233 ; 3 uses
  %i.de = add nuw nsw i64 %i.dd, 1
  %i.df = icmp ult i64 %i.dd, 16
  call void @llvm.assume(i1 %i.df)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.db, ptr noundef nonnull align 8 dereferenceable(1) %i.cz, i64 %i.de, i1 false), !noalias !227
  br label %bb.w

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i.i.i: ; preds = %.noexc.i215
  %i.dg = load i64, ptr %i.cz, align 8, !tbaa !43, !noalias !233
  %.phi.trans.insert.i.i.i = getelementptr inbounds nuw i8, ptr %15, i64 8
  %.pre.i.i.i = load i64, ptr %.phi.trans.insert.i.i.i, align 8, !tbaa !42, !noalias !233
  store i64 %i.dg, ptr %i.db, align 8, !tbaa !43, !noalias !233
  br label %bb.w

bb.v:                                             ; preds = %.noexc217
  %i.dh = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.di = load ptr, ptr %15, align 8, !tbaa !41, !noalias !227 ; 2 uses
  %i.dj = getelementptr inbounds nuw i8, ptr %15, i64 16 ; 2 uses
  %i.dk = icmp eq ptr %i.di, %i.dj
  br i1 %i.dk, label %.body218, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i3.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i3.i: ; preds = %bb.v
  %i.dl = load i64, ptr %i.dj, align 8, !tbaa !43, !noalias !227
  %i.dm = add i64 %i.dl, 1
  call void @_ZdlPvm(ptr noundef %i.di, i64 noundef %i.dm) #31, !noalias !227
  br label %.body218

bb.w:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.thread.i.i.i
  %.sink.i.i216 = phi ptr [ %i.db, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.thread.i.i.i ], [ %i.cy, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i.i.i ]
  %i.dn = phi i64 [ %i.dd, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.thread.i.i.i ], [ %.pre.i.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i.i.i ]
  store ptr %.sink.i.i216, ptr %i.cx, align 8, !tbaa !40, !noalias !233
  %i.do = getelementptr inbounds nuw i8, ptr %i.cx, i64 8
  store i64 %i.dn, ptr %i.do, align 8, !tbaa !42, !noalias !233
  %i.dp = getelementptr inbounds nuw i8, ptr %i.cx, i64 32
  store i32 0, ptr %i.dp, align 8, !tbaa !72, !noalias !233
  %i.dq = getelementptr inbounds nuw i8, ptr %i.cx, i64 40
  %i.dr = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt3_V215system_categoryEv() #32
  store ptr %i.dr, ptr %i.dq, align 8, !tbaa !75, !noalias !233
  %i.ds = getelementptr inbounds nuw i8, ptr %i.cx, i64 48
  store ptr null, ptr %i.ds, align 8, !tbaa !57, !noalias !233
  store ptr %i.cx, ptr %0, align 8, !tbaa !71, !alias.scope !233
  call void @llvm.lifetime.end.p0(ptr nonnull %15)
  %i.dt = load ptr, ptr %27, align 8, !tbaa !41   ; 2 uses
  %i.du = icmp eq ptr %i.dt, %i.cr
  br i1 %i.du, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.w
  %i.dv = load i64, ptr %i.cr, align 8, !tbaa !43
  %i.dw = add i64 %i.dv, 1
  call void @_ZdlPvm(ptr noundef %i.dt, i64 noundef %i.dw) #31
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i

bb.x:                                             ; preds = %bb.s, %bb.r
  %i.dx = landingpad { ptr, i32 }
          cleanup
  br label %bb.hl

bb.y:                                             ; preds = %.noexc.i
  %i.dy = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIaSaIaEED2Ev.exit490

bb.z:                                             ; preds = %.noexc214
  %i.dz = landingpad { ptr, i32 }
          cleanup
  br label %.body218

.body218:                                         ; preds = %bb.v, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i3.i, %bb.z
  %eh.lpad-body219 = phi { ptr, i32 } [ %i.dz, %bb.z ], [ %i.dh, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i3.i ], [ %i.dh, %bb.v ] ; 2 uses
  %i.ea = load ptr, ptr %27, align 8, !tbaa !41   ; 2 uses
  %i.eb = icmp eq ptr %i.ea, %i.cr
  br i1 %i.eb, label %_ZNSt6vectorIaSaIaEED2Ev.exit490, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i220

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i220: ; preds = %.body218
  %i.ec = load i64, ptr %i.cr, align 8, !tbaa !43
  %i.ed = add i64 %i.ec, 1
  call void @_ZdlPvm(ptr noundef %i.ea, i64 noundef %i.ed) #31
  br label %_ZNSt6vectorIaSaIaEED2Ev.exit490

bb.aa:                                            ; preds = %.thread
  %.not678 = icmp eq i64 %i.cp, 0
  br i1 %.not678, label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEN7xgboost6common6detail12SpanIteratorINSC_4SpanIaLm18446744073709551615EEELb0EEEET0_T_SJ_SI_.exit, label %_ZN7xgboost6common6detail12SpanIteratorINS0_4SpanIaLm18446744073709551615EEELb0EEppEv.exit.i.i.i.i.i.peel

_ZN7xgboost6common6detail12SpanIteratorINS0_4SpanIaLm18446744073709551615EEELb0EEppEv.exit.i.i.i.i.i.peel: ; preds = %bb.aa
  %i.ee = load ptr, ptr %4, align 8, !tbaa !41    ; 6 uses
  %i.ef = ptrtoaddr ptr %i.ee to i64
  %i.eg = load i8, ptr %i.ee, align 1, !tbaa !43
  store i8 %i.eg, ptr %i.co, align 1, !tbaa !43
  %exitcond.peel.not = icmp eq i64 %i.cp, 1
  br i1 %exitcond.peel.not, label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEN7xgboost6common6detail12SpanIteratorINSC_4SpanIaLm18446744073709551615EEELb0EEEET0_T_SJ_SI_.exit, label %.lr.ph.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.preheader:                       ; preds = %_ZN7xgboost6common6detail12SpanIteratorINS0_4SpanIaLm18446744073709551615EEELb0EEppEv.exit.i.i.i.i.i.peel
  %i.eh = add nsw i64 %i.cp, -2                   ; 2 uses
  %i.ei = call i64 @llvm.umin.i64(i64 %i.eh, i64 63)
  %i.ej = add nuw nsw i64 %i.ei, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %i.eh, 16
  br i1 %min.iters.check, label %.lr.ph.i.i.i.i.i.preheader922, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i.i.i.i.i.preheader
  %i.ek = add i64 %i.ci, %i.cm
  %i.el = sub i64 %i.ef, %i.ek
  %diff.check = icmp ugt i64 %i.el, -16
  br i1 %diff.check, label %.lr.ph.i.i.i.i.i.preheader922, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %i.em = and i64 %i.ej, 15                       ; 2 uses
  %i.en = icmp eq i64 %i.em, 0
  %i.eo = select i1 %i.en, i64 16, i64 %i.em
  %n.vec = sub nsw i64 %i.ej, %i.eo               ; 3 uses
  %i.ep = getelementptr i8, ptr %i.ee, i64 %n.vec
  %i.eq = add nsw i64 %n.vec, 1
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %next.gep = getelementptr i8, ptr %i.ee, i64 %index ; 2 uses
  %next.gep.a = getelementptr inbounds nuw i8, ptr %next.gep, i64 1
  %i.er = getelementptr inbounds nuw i8, ptr %next.gep, i64 9
  %wide.load = load <8 x i8>, ptr %next.gep.a, align 1, !tbaa !43
  %wide.load916 = load <8 x i8>, ptr %i.er, align 1, !tbaa !43
  %52 = getelementptr inbounds nuw i8, ptr %i.co, i64 %index ; 2 uses
  %i.es = getelementptr inbounds nuw i8, ptr %52, i64 1
  %i.et = getelementptr inbounds nuw i8, ptr %52, i64 9
  store <8 x i8> %wide.load, ptr %i.es, align 1, !tbaa !43
  store <8 x i8> %wide.load916, ptr %i.et, align 1, !tbaa !43
  %index.next = add nuw i64 %index, 16            ; 2 uses
  %i.eu = icmp eq i64 %index.next, %n.vec
  br i1 %i.eu, label %.lr.ph.i.i.i.i.i.preheader922, label %vector.body, !llvm.loop !234

.lr.ph.i.i.i.i.i.preheader922:                    ; preds = %vector.body, %vector.memcheck, %.lr.ph.i.i.i.i.i.preheader
  %.0512.i.i.i.i.i.pn.ph = phi ptr [ %i.ee, %vector.memcheck ], [ %i.ee, %.lr.ph.i.i.i.i.i.preheader ], [ %i.ep, %vector.body ] ; 2 uses
  %.sroa.4.011.i.i.i.i.i.ph = phi i64 [ 1, %vector.memcheck ], [ 1, %.lr.ph.i.i.i.i.i.preheader ], [ %i.eq, %vector.body ] ; 3 uses
  %i.ev = sub nsw i64 %i.cp, %.sroa.4.011.i.i.i.i.i.ph
  %i.ew = freeze i64 %i.ev                        ; 2 uses
  %i.ex = add i64 %i.ew, -1
  %xtraiter = and i64 %i.ew, 3                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.i.prol

.lr.ph.i.i.i.i.i.prol:                            ; preds = %.lr.ph.i.i.i.i.i.preheader922, %_ZN7xgboost6common6detail12SpanIteratorINS0_4SpanIaLm18446744073709551615EEELb0EEppEv.exit.i.i.i.i.i.prol
  %.0512.i.i.i.i.i.pn.prol = phi ptr [ %.0512.i.i.i.i.i.prol, %_ZN7xgboost6common6detail12SpanIteratorINS0_4SpanIaLm18446744073709551615EEELb0EEppEv.exit.i.i.i.i.i.prol ], [ %.0512.i.i.i.i.i.pn.ph, %.lr.ph.i.i.i.i.i.preheader922 ]
  %.sroa.4.011.i.i.i.i.i.prol = phi i64 [ %i.fb, %_ZN7xgboost6common6detail12SpanIteratorINS0_4SpanIaLm18446744073709551615EEELb0EEppEv.exit.i.i.i.i.i.prol ], [ %.sroa.4.011.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.preheader922 ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %_ZN7xgboost6common6detail12SpanIteratorINS0_4SpanIaLm18446744073709551615EEELb0EEppEv.exit.i.i.i.i.i.prol ], [ 0, %.lr.ph.i.i.i.i.i.preheader922 ]
  %i.ey = icmp samesign ult i64 %.sroa.4.011.i.i.i.i.i.prol, 64
  br i1 %i.ey, label %_ZN7xgboost6common6detail12SpanIteratorINS0_4SpanIaLm18446744073709551615EEELb0EEppEv.exit.i.i.i.i.i.prol, label %.loopexit725, !prof !226

_ZN7xgboost6common6detail12SpanIteratorINS0_4SpanIaLm18446744073709551615EEELb0EEppEv.exit.i.i.i.i.i.prol: ; preds = %.lr.ph.i.i.i.i.i.prol
  %.0512.i.i.i.i.i.prol = getelementptr inbounds nuw i8, ptr %.0512.i.i.i.i.i.pn.prol, i64 1 ; 3 uses
  %i.ez = load i8, ptr %.0512.i.i.i.i.i.prol, align 1, !tbaa !43
  %i.fa = getelementptr inbounds nuw i8, ptr %i.co, i64 %.sroa.4.011.i.i.i.i.i.prol
  store i8 %i.ez, ptr %i.fa, align 1, !tbaa !43
  %i.fb = add nuw nsw i64 %.sroa.4.011.i.i.i.i.i.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.i.prol, !llvm.loop !238

.lr.ph.i.i.i.i.i.prol.loopexit:                   ; preds = %_ZN7xgboost6common6detail12SpanIteratorINS0_4SpanIaLm18446744073709551615EEELb0EEppEv.exit.i.i.i.i.i.prol, %.lr.ph.i.i.i.i.i.preheader922
  %.0512.i.i.i.i.i.pn.unr = phi ptr [ %.0512.i.i.i.i.i.pn.ph, %.lr.ph.i.i.i.i.i.preheader922 ], [ %.0512.i.i.i.i.i.prol, %_ZN7xgboost6common6detail12SpanIteratorINS0_4SpanIaLm18446744073709551615EEELb0EEppEv.exit.i.i.i.i.i.prol ]
  %.sroa.4.011.i.i.i.i.i.unr = phi i64 [ %.sroa.4.011.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.preheader922 ], [ %i.fb, %_ZN7xgboost6common6detail12SpanIteratorINS0_4SpanIaLm18446744073709551615EEELb0EEppEv.exit.i.i.i.i.i.prol ]
  %i.fc = icmp ult i64 %i.ex, 3
  br i1 %i.fc, label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEN7xgboost6common6detail12SpanIteratorINSC_4SpanIaLm18446744073709551615EEELb0EEEET0_T_SJ_SI_.exit, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %.lr.ph.i.i.i.i.i.prol.loopexit, %_ZN7xgboost6common6detail12SpanIteratorINS0_4SpanIaLm18446744073709551615EEELb0EEppEv.exit.i.i.i.i.i.3
  %.0512.i.i.i.i.i.pn = phi ptr [ %.0512.i.i.i.i.i.3, %_ZN7xgboost6common6detail12SpanIteratorINS0_4SpanIaLm18446744073709551615EEELb0EEppEv.exit.i.i.i.i.i.3 ], [ %.0512.i.i.i.i.i.pn.unr, %.lr.ph.i.i.i.i.i.prol.loopexit ] ; 4 uses
  %.sroa.4.011.i.i.i.i.i = phi i64 [ %i.fq, %_ZN7xgboost6common6detail12SpanIteratorINS0_4SpanIaLm18446744073709551615EEELb0EEppEv.exit.i.i.i.i.i.3 ], [ %.sroa.4.011.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i.prol.loopexit ] ; 9 uses
  %i.fd = icmp samesign ult i64 %.sroa.4.011.i.i.i.i.i, 64
  br i1 %i.fd, label %_ZN7xgboost6common6detail12SpanIteratorINS0_4SpanIaLm18446744073709551615EEELb0EEppEv.exit.i.i.i.i.i, label %.loopexit725, !prof !226

.loopexit725:                                     ; preds = %.lr.ph.i.i.i.i.i.prol, %.lr.ph.i.i.i.i.i, %_ZN7xgboost6common6detail12SpanIteratorINS0_4SpanIaLm18446744073709551615EEELb0EEppEv.exit.i.i.i.i.i, %_ZN7xgboost6common6detail12SpanIteratorINS0_4SpanIaLm18446744073709551615EEELb0EEppEv.exit.i.i.i.i.i.1, %_ZN7xgboost6common6detail12SpanIteratorINS0_4SpanIaLm18446744073709551615EEELb0EEppEv.exit.i.i.i.i.i.2
  call void @_ZSt9terminatev() #33
  unreachable

_ZN7xgboost6common6detail12SpanIteratorINS0_4SpanIaLm18446744073709551615EEELb0EEppEv.exit.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i
  %.0512.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %.0512.i.i.i.i.i.pn, i64 1
  %i.fe = load i8, ptr %.0512.i.i.i.i.i, align 1, !tbaa !43
  %i.ff = getelementptr inbounds nuw i8, ptr %i.co, i64 %.sroa.4.011.i.i.i.i.i
  store i8 %i.fe, ptr %i.ff, align 1, !tbaa !43
  %.not = icmp eq i64 %.sroa.4.011.i.i.i.i.i, 63
  br i1 %.not, label %.loopexit725, label %_ZN7xgboost6common6detail12SpanIteratorINS0_4SpanIaLm18446744073709551615EEELb0EEppEv.exit.i.i.i.i.i.1, !prof !51

_ZN7xgboost6common6detail12SpanIteratorINS0_4SpanIaLm18446744073709551615EEELb0EEppEv.exit.i.i.i.i.i.1: ; preds = %_ZN7xgboost6common6detail12SpanIteratorINS0_4SpanIaLm18446744073709551615EEELb0EEppEv.exit.i.i.i.i.i
  %.0512.i.i.i.i.i.1 = getelementptr inbounds nuw i8, ptr %.0512.i.i.i.i.i.pn, i64 2
  %i.fg = load i8, ptr %.0512.i.i.i.i.i.1, align 1, !tbaa !43
  %i.fh = getelementptr inbounds nuw i8, ptr %i.co, i64 %.sroa.4.011.i.i.i.i.i
  %i.fi = getelementptr inbounds nuw i8, ptr %i.fh, i64 1
  store i8 %i.fg, ptr %i.fi, align 1, !tbaa !43
  %i.fj = icmp ult i64 %.sroa.4.011.i.i.i.i.i, 62
  br i1 %i.fj, label %_ZN7xgboost6common6detail12SpanIteratorINS0_4SpanIaLm18446744073709551615EEELb0EEppEv.exit.i.i.i.i.i.2, label %.loopexit725, !prof !226

_ZN7xgboost6common6detail12SpanIteratorINS0_4SpanIaLm18446744073709551615EEELb0EEppEv.exit.i.i.i.i.i.2: ; preds = %_ZN7xgboost6common6detail12SpanIteratorINS0_4SpanIaLm18446744073709551615EEELb0EEppEv.exit.i.i.i.i.i.1
  %.0512.i.i.i.i.i.2 = getelementptr inbounds nuw i8, ptr %.0512.i.i.i.i.i.pn, i64 3
  %i.fk = load i8, ptr %.0512.i.i.i.i.i.2, align 1, !tbaa !43
  %i.fl = getelementptr inbounds nuw i8, ptr %i.co, i64 %.sroa.4.011.i.i.i.i.i
  %i.fm = getelementptr inbounds nuw i8, ptr %i.fl, i64 2
  store i8 %i.fk, ptr %i.fm, align 1, !tbaa !43
  %.not927 = icmp eq i64 %.sroa.4.011.i.i.i.i.i, 61
  br i1 %.not927, label %.loopexit725, label %_ZN7xgboost6common6detail12SpanIteratorINS0_4SpanIaLm18446744073709551615EEELb0EEppEv.exit.i.i.i.i.i.3, !prof !51

_ZN7xgboost6common6detail12SpanIteratorINS0_4SpanIaLm18446744073709551615EEELb0EEppEv.exit.i.i.i.i.i.3: ; preds = %_ZN7xgboost6common6detail12SpanIteratorINS0_4SpanIaLm18446744073709551615EEELb0EEppEv.exit.i.i.i.i.i.2
  %.0512.i.i.i.i.i.3 = getelementptr inbounds nuw i8, ptr %.0512.i.i.i.i.i.pn, i64 4 ; 2 uses
  %i.fn = load i8, ptr %.0512.i.i.i.i.i.3, align 1, !tbaa !43
  %i.fo = getelementptr inbounds nuw i8, ptr %i.co, i64 %.sroa.4.011.i.i.i.i.i
  %i.fp = getelementptr inbounds nuw i8, ptr %i.fo, i64 3
  store i8 %i.fn, ptr %i.fp, align 1, !tbaa !43
  %i.fq = add nuw nsw i64 %.sroa.4.011.i.i.i.i.i, 4 ; 2 uses
  %exitcond.not.3 = icmp eq i64 %i.fq, %i.cp
  br i1 %exitcond.not.3, label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEN7xgboost6common6detail12SpanIteratorINSC_4SpanIaLm18446744073709551615EEELb0EEEET0_T_SJ_SI_.exit, label %.lr.ph.i.i.i.i.i, !llvm.loop !240

_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEN7xgboost6common6detail12SpanIteratorINSC_4SpanIaLm18446744073709551615EEELb0EEEET0_T_SJ_SI_.exit: ; preds = %.lr.ph.i.i.i.i.i.prol.loopexit, %_ZN7xgboost6common6detail12SpanIteratorINS0_4SpanIaLm18446744073709551615EEELb0EEppEv.exit.i.i.i.i.i.3, %_ZN7xgboost6common6detail12SpanIteratorINS0_4SpanIaLm18446744073709551615EEELb0EEppEv.exit.i.i.i.i.i.peel, %bb.aa
  call void @llvm.lifetime.start.p0(ptr nonnull %28) #12
  call void @llvm.experimental.noalias.scope.decl(metadata !241)
  %i.fr = invoke noalias noundef nonnull dereferenceable(56) ptr @_Znwm(i64 noundef 56) #30
          to label %.noexc225 unwind label %bb.bh ; 8 uses

.noexc225:                                        ; preds = %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEN7xgboost6common6detail12SpanIteratorINSC_4SpanIaLm18446744073709551615EEELb0EEEET0_T_SJ_SI_.exit
  %i.fs = getelementptr inbounds nuw i8, ptr %i.fr, i64 8
  store i32 1, ptr %i.fs, align 8, !tbaa !104, !noalias !241
  %i.ft = getelementptr inbounds nuw i8, ptr %i.fr, i64 12
  store i32 1, ptr %i.ft, align 4, !tbaa !106, !noalias !241
  store ptr getelementptr inbounds nuw inrange(-16, 40) (i8, ptr @_ZTVSt23_Sp_counted_ptr_inplaceIN7xgboost10collective7ChannelESaIvELN9__gnu_cxx12_Lock_policyE2EE, i64 16), ptr %i.fr, align 8, !tbaa !8, !noalias !241
  %i.fu = load ptr, ptr %i.q, align 8, !tbaa !107, !noalias !241 ; 2 uses
  %i.fv = load <2 x ptr>, ptr %21, align 16, !tbaa !145, !noalias !241
  %.not.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.fu, null
  br i1 %.not.i.i.i.i.i.i.i.i.i, label %bb.ae, label %bb.ab

bb.ab:                                            ; preds = %.noexc225
  %i.fw = getelementptr inbounds nuw i8, ptr %i.fu, i64 8 ; 3 uses
  %i.fx = load i8, ptr @__libc_single_threaded, align 1, !tbaa !43, !noalias !241
  %.not.i.i.i.i.i.i.i.i.i.i = icmp eq i8 %i.fx, 0
  br i1 %.not.i.i.i.i.i.i.i.i.i.i, label %bb.ad, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.fy = load i32, ptr %i.fw, align 4, !tbaa !49, !noalias !241
  %i.fz = add nsw i32 %i.fy, 1
  store i32 %i.fz, ptr %i.fw, align 4, !tbaa !49, !noalias !241
  br label %bb.ae

bb.ad:                                            ; preds = %bb.ab
  %i.ga = atomicrmw volatile add ptr %i.fw, i32 1 acq_rel, align 4, !noalias !241 ; 0 uses
  br label %bb.ae

bb.ae:                                            ; preds = %bb.ad, %bb.ac, %.noexc225
  %i.gb = getelementptr inbounds nuw i8, ptr %28, i64 8 ; 4 uses
  %i.gc = getelementptr inbounds nuw i8, ptr %i.fr, i64 16 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 40) (i8, ptr @_ZTVN7xgboost10collective7ChannelE, i64 16), ptr %i.gc, align 8, !tbaa !8, !noalias !241
  %i.gd = getelementptr inbounds nuw i8, ptr %i.fr, i64 24
  store <2 x ptr> %i.fv, ptr %i.gd, align 8, !tbaa !145, !noalias !241
  %i.ge = getelementptr inbounds nuw i8, ptr %i.fr, i64 40
  store ptr null, ptr %i.ge, align 8, !tbaa !57, !noalias !241
  %i.gf = getelementptr inbounds nuw i8, ptr %i.fr, i64 48
  store ptr %1, ptr %i.gf, align 8, !tbaa !244, !noalias !241
  store ptr %i.fr, ptr %i.gb, align 8, !tbaa !107, !alias.scope !241
  store ptr %i.gc, ptr %28, align 16, !tbaa !245, !alias.scope !241
  call void @llvm.lifetime.start.p0(ptr nonnull %29) #12
  call void @llvm.experimental.noalias.scope.decl(metadata !247)
  %i.gg = invoke noalias noundef nonnull dereferenceable(56) ptr @_Znwm(i64 noundef 56) #30
          to label %.noexc228 unwind label %bb.bi ; 10 uses

.noexc228:                                        ; preds = %bb.ae
  %i.gh = getelementptr inbounds nuw i8, ptr %i.gg, i64 8
  store i32 1, ptr %i.gh, align 8, !tbaa !104, !noalias !247
  %i.gi = getelementptr inbounds nuw i8, ptr %i.gg, i64 12
  store i32 1, ptr %i.gi, align 4, !tbaa !106, !noalias !247
  store ptr getelementptr inbounds nuw inrange(-16, 40) (i8, ptr @_ZTVSt23_Sp_counted_ptr_inplaceIN7xgboost10collective7ChannelESaIvELN9__gnu_cxx12_Lock_policyE2EE, i64 16), ptr %i.gg, align 8, !tbaa !8, !noalias !247
  %i.gj = load ptr, ptr %i.l, align 8, !tbaa !107, !noalias !247 ; 2 uses
  %i.gk = load <2 x ptr>, ptr %20, align 16, !tbaa !145, !noalias !247
  %.not.i.i.i.i.i.i.i.i.i226 = icmp eq ptr %i.gj, null
  br i1 %.not.i.i.i.i.i.i.i.i.i226, label %bb.ai, label %bb.af

bb.af:                                            ; preds = %.noexc228
  %i.gl = getelementptr inbounds nuw i8, ptr %i.gj, i64 8 ; 3 uses
  %i.gm = load i8, ptr @__libc_single_threaded, align 1, !tbaa !43, !noalias !247
  %.not.i.i.i.i.i.i.i.i.i.i227 = icmp eq i8 %i.gm, 0
  br i1 %.not.i.i.i.i.i.i.i.i.i.i227, label %bb.ah, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  %i.gn = load i32, ptr %i.gl, align 4, !tbaa !49, !noalias !247
  %i.go = add nsw i32 %i.gn, 1
  store i32 %i.go, ptr %i.gl, align 4, !tbaa !49, !noalias !247
  br label %bb.ai

bb.ah:                                            ; preds = %bb.af
  %i.gp = atomicrmw volatile add ptr %i.gl, i32 1 acq_rel, align 4, !noalias !247 ; 0 uses
  br label %bb.ai

bb.ai:                                            ; preds = %bb.ah, %bb.ag, %.noexc228
  %i.gq = getelementptr inbounds nuw i8, ptr %29, i64 8 ; 4 uses
  %i.gr = getelementptr inbounds nuw i8, ptr %i.gg, i64 16 ; 3 uses
  store ptr getelementptr inbounds nuw inrange(-16, 40) (i8, ptr @_ZTVN7xgboost10collective7ChannelE, i64 16), ptr %i.gr, align 8, !tbaa !8, !noalias !247
  %i.gs = getelementptr inbounds nuw i8, ptr %i.gg, i64 24
  store <2 x ptr> %i.gk, ptr %i.gs, align 8, !tbaa !145, !noalias !247
  %i.gt = getelementptr inbounds nuw i8, ptr %i.gg, i64 40
  store ptr null, ptr %i.gt, align 8, !tbaa !57, !noalias !247
  %i.gu = getelementptr inbounds nuw i8, ptr %i.gg, i64 48
  store ptr %1, ptr %i.gu, align 8, !tbaa !244, !noalias !247
  store ptr %i.gg, ptr %i.gq, align 8, !tbaa !107, !alias.scope !247
  store ptr %i.gr, ptr %29, align 16, !tbaa !245, !alias.scope !247
  call void @llvm.lifetime.start.p0(ptr nonnull %30) #12
  store ptr %28, ptr %30, align 8, !tbaa !250
  %i.gv = getelementptr inbounds nuw i8, ptr %30, i64 8
  store ptr %29, ptr %i.gv, align 8, !tbaa !250
  call void @llvm.lifetime.start.p0(ptr nonnull %31) #12
  call void @llvm.lifetime.start.p0(ptr nonnull %32) #12
  %i.gw = load ptr, ptr %22, align 8, !noalias !251 ; 2 uses
  %.not.i.i230 = icmp eq ptr %i.gw, null
  br i1 %.not.i.i230, label %bb.aj, label %"_ZN7xgboost10collectivelsIZNS0_14ConnectWorkersERKNS0_4CommEPNS0_9TCPSocketEiNS0_5proto8PeerInfoENSt6chrono8durationIlSt5ratioILl1ELl1EEEEiPSt6vectorISt10shared_ptrIS5_ESaISG_EEE3$_4EENSt9enable_ifIXsr3stdE14is_invocable_vIT_EENS0_6ResultEE4typeEOSN_OSM_.exit.thread"

"_ZN7xgboost10collectivelsIZNS0_14ConnectWorkersERKNS0_4CommEPNS0_9TCPSocketEiNS0_5proto8PeerInfoENSt6chrono8durationIlSt5ratioILl1ELl1EEEEiPSt6vectorISt10shared_ptrIS5_ESaISG_EEE3$_4EENSt9enable_ifIXsr3stdE14is_invocable_vIT_EENS0_6ResultEE4typeEOSN_OSM_.exit.thread": ; preds = %bb.ai
  store ptr null, ptr %22, align 8, !tbaa !71, !noalias !251
  br label %bb.bd

bb.aj:                                            ; preds = %bb.ai
  call void @llvm.lifetime.start.p0(ptr nonnull %13), !noalias !251
  call void @llvm.lifetime.start.p0(ptr nonnull %14), !noalias !251
  %i.gx = getelementptr inbounds nuw i8, ptr %13, i64 8
  %i.gy = load ptr, ptr %i.gb, align 8, !tbaa !107, !noalias !254 ; 2 uses
  %i.gz = load <2 x ptr>, ptr %28, align 16, !tbaa !145, !noalias !254
  store <2 x ptr> %i.gz, ptr %13, align 16, !tbaa !145, !noalias !254
  %.not.i.i.i.i.i = icmp eq ptr %i.gy, null
  br i1 %.not.i.i.i.i.i, label %_ZNSt10shared_ptrIN7xgboost10collective7ChannelEEC2ERKS3_.exit.i.i.thread, label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  %i.ha = getelementptr inbounds nuw i8, ptr %i.gy, i64 8 ; 3 uses
  %i.hb = load i8, ptr @__libc_single_threaded, align 1, !tbaa !43, !noalias !254
  %.not.i.i.i.i.i.i232 = icmp eq i8 %i.hb, 0
end_hunk_0

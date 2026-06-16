inline.NumInlined: 8841
inline.NumDeleted: 3439
begin_hunk_0_@_ZN6google8protobuf8compiler20CommandLineInterface17InterpretArgumentERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESA_:bb.a
  %i.ad = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %i.n, i8 noundef signext %.0.i.i.i)
  %i.ae = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8) %i.ad) ; 0 uses
  br label %bb.hz

bb.g:                                             ; preds = %bb.b
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 296 ; 3 uses
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !133 ; 8 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 304
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !139
  %.not.i = icmp eq ptr %i.ag, %i.ai
  br i1 %.not.i, label %bb.k, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ag, i64 16 ; 4 uses
  store ptr %i.aj, ptr %i.ag, align 8, !tbaa !132
  %i.ak = load ptr, ptr %2, align 8, !tbaa !105   ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #37
  store i64 %i.h, ptr %i.d, align 8, !tbaa !30
  %i.al = icmp ugt i64 %i.h, 15
  br i1 %i.al, label %._crit_edge.i.i.i.thread, label %._crit_edge.i.i.i

._crit_edge.i.i.i.thread:                         ; preds = %bb.h
  %i.am = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %i.ag, ptr noundef nonnull align 8 dereferenceable(8) %i.d, i64 noundef 0) ; 2 uses
  store ptr %i.am, ptr %i.ag, align 8, !tbaa !105
  %i.an = load i64, ptr %i.d, align 8, !tbaa !30
  store i64 %i.an, ptr %i.aj, align 8, !tbaa !34
  br label %bb.j

._crit_edge.i.i.i:                                ; preds = %bb.h
  %cond = icmp eq i64 %i.h, 1
  br i1 %cond, label %bb.i, label %bb.j

bb.i:                                             ; preds = %._crit_edge.i.i.i
  %i.ao = load i8, ptr %i.ak, align 1, !tbaa !34
  store i8 %i.ao, ptr %i.aj, align 8, !tbaa !34
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i

bb.j:                                             ; preds = %._crit_edge.i.i.i.thread, %._crit_edge.i.i.i
  %i.ap = phi ptr [ %i.am, %._crit_edge.i.i.i.thread ], [ %i.aj, %._crit_edge.i.i.i ]
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.ap, ptr align 1 %i.ak, i64 %i.h, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i: ; preds = %bb.j, %bb.i
  %i.aq = load i64, ptr %i.d, align 8, !tbaa !30  ; 2 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %i.ag, i64 8
  store i64 %i.aq, ptr %i.ar, align 8, !tbaa !101
  %i.as = load ptr, ptr %i.ag, align 8, !tbaa !105
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 %i.aq
  store i8 0, ptr %i.at, align 1, !tbaa !34
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #37
  %i.au = load ptr, ptr %i.af, align 8, !tbaa !133
  %i.av = getelementptr inbounds nuw i8, ptr %i.au, i64 32
  store ptr %i.av, ptr %i.af, align 8, !tbaa !133
  br label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backERKS5_.exit

bb.k:                                             ; preds = %bb.g
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 288
  tail call void @_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE17_M_realloc_insertIJRKS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %i.aw, ptr %i.ag, ptr noundef nonnull align 8 dereferenceable(32) %2)
  br label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backERKS5_.exit

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit: ; preds = %bb.a
  %i.ax = load ptr, ptr %1, align 8, !tbaa !105
  %i.ay = load i16, ptr %i.ax, align 1
  %i.az = icmp ne i16 %i.ay, 18733
  %i.ba = zext i1 %i.az to i32
  %i.bb = icmp eq i32 %i.ba, 0
  br i1 %i.bb, label %bb.l, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit295.thread

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit222: ; preds = %bb.a
  %.pre = load ptr, ptr %1, align 8, !tbaa !105
  %bcmp.i221 = tail call i32 @bcmp(ptr %.pre, ptr nonnull @.str.84, i64 %i.f)
  %i.bc = icmp eq i32 %bcmp.i221, 0
  br i1 %i.bc, label %bb.l, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit295.thread

bb.l:                                             ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit222, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit
  %i.bd = load ptr, ptr %2, align 8, !tbaa !105
  %i.be = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.bf = load i64, ptr %i.be, align 8, !tbaa !101
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #37
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #37
  call void @_ZN4absl12lts_202505129ByAnyCharC1ESt17basic_string_viewIcSt11char_traitsIcEE(ptr noundef nonnull align 8 dereferenceable(32) %10, i64 1, ptr nonnull @.str.24)
  invoke void @_ZN4absl12lts_202505128StrSplitINS0_9ByAnyCharENS0_9SkipEmptyEEENS0_16strings_internal8SplitterINS4_15SelectDelimiterIT_E4typeET0_St17basic_string_viewIcSt11char_traitsIcEEEENS4_23ConvertibleToStringViewES7_SA_(ptr dead_on_unwind nonnull writable sret(%"class.absl::lts_20250512::strings_internal::Splitter") align 8 %9, i64 %i.bf, ptr %i.bd, ptr noundef nonnull %10)
          to label %bb.m unwind label %bb.p

bb.m:                                             ; preds = %bb.l
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #37, !noalias !742
  invoke void @_ZNK4absl12lts_2025051216strings_internal8SplitterINS0_9ByAnyCharENS0_9SkipEmptyESt17basic_string_viewIcSt11char_traitsIcEEE18ConvertToContainerISt6vectorINSt7__cxx1112basic_stringIcS7_SaIcEEESaISF_EESF_Lb0EEclERKS9_(ptr dead_on_unwind nonnull writable sret(%"class.std::vector.23") align 8 %8, ptr noundef nonnull align 1 dereferenceable(1) %7, ptr noundef nonnull align 8 dereferenceable(49) %9)
          to label %bb.n unwind label %bb.q

bb.n:                                             ; preds = %bb.m
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #37, !noalias !742
  %i.bg = getelementptr inbounds nuw i8, ptr %9, i64 16
  %i.bh = load ptr, ptr %i.bg, align 8, !tbaa !105 ; 2 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %9, i64 32 ; 2 uses
  %i.bj = icmp eq ptr %i.bh, %i.bi
  br i1 %i.bj, label %_ZN4absl12lts_2025051216strings_internal8SplitterINS0_9ByAnyCharENS0_9SkipEmptyESt17basic_string_viewIcSt11char_traitsIcEEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i: ; preds = %bb.n
  %i.bk = load i64, ptr %i.bi, align 8, !tbaa !34
  %i.bl = add i64 %i.bk, 1
  call void @_ZdlPvm(ptr noundef %i.bh, i64 noundef %i.bl) #42
  br label %_ZN4absl12lts_2025051216strings_internal8SplitterINS0_9ByAnyCharENS0_9SkipEmptyESt17basic_string_viewIcSt11char_traitsIcEEED2Ev.exit

_ZN4absl12lts_2025051216strings_internal8SplitterINS0_9ByAnyCharENS0_9SkipEmptyESt17basic_string_viewIcSt11char_traitsIcEEED2Ev.exit: ; preds = %bb.n, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i
  %i.bm = load ptr, ptr %10, align 8, !tbaa !105  ; 2 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %10, i64 16 ; 2 uses
  %i.bo = icmp eq ptr %i.bm, %i.bn
  br i1 %i.bo, label %_ZN4absl12lts_202505129ByAnyCharD2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %_ZN4absl12lts_2025051216strings_internal8SplitterINS0_9ByAnyCharENS0_9SkipEmptyESt17basic_string_viewIcSt11char_traitsIcEEED2Ev.exit
  %i.bp = load i64, ptr %i.bn, align 8, !tbaa !34
  %i.bq = add i64 %i.bp, 1
  call void @_ZdlPvm(ptr noundef %i.bm, i64 noundef %i.bq) #42
  br label %_ZN4absl12lts_202505129ByAnyCharD2Ev.exit

_ZN4absl12lts_202505129ByAnyCharD2Ev.exit:        ; preds = %_ZN4absl12lts_2025051216strings_internal8SplitterINS0_9ByAnyCharENS0_9SkipEmptyESt17basic_string_viewIcSt11char_traitsIcEEED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #37
  %i.br = getelementptr inbounds nuw i8, ptr %8, i64 8 ; 2 uses
  %i.bs = load ptr, ptr %i.br, align 8, !tbaa !133 ; 2 uses
  %i.bt = load ptr, ptr %8, align 8, !tbaa !135   ; 3 uses
  %.not219.not525.not = icmp eq ptr %i.bs, %i.bt
  br i1 %.not219.not525.not, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %_ZN4absl12lts_202505129ByAnyCharD2Ev.exit
  %i.bu = getelementptr inbounds nuw i8, ptr %11, i64 16 ; 8 uses
  %i.bv = getelementptr inbounds nuw i8, ptr %11, i64 8 ; 6 uses
  %i.bw = getelementptr inbounds nuw i8, ptr %12, i64 16 ; 8 uses
  %i.bx = getelementptr inbounds nuw i8, ptr %12, i64 8 ; 6 uses
  %i.by = getelementptr inbounds nuw i8, ptr %13, i64 16 ; 9 uses
  %i.bz = getelementptr inbounds nuw i8, ptr %13, i64 8 ; 6 uses
  %i.ca = getelementptr inbounds nuw i8, ptr %14, i64 16 ; 9 uses
  %i.cb = getelementptr inbounds nuw i8, ptr %14, i64 8 ; 6 uses
  %i.cc = getelementptr inbounds nuw i8, ptr %0, i64 272 ; 3 uses
  %i.cd = getelementptr inbounds nuw i8, ptr %0, i64 280
  %i.ce = getelementptr inbounds nuw i8, ptr %15, i64 16 ; 7 uses
  %i.cf = getelementptr inbounds nuw i8, ptr %15, i64 8 ; 3 uses
  %i.cg = getelementptr inbounds nuw i8, ptr %15, i64 32 ; 3 uses
  %i.ch = getelementptr inbounds nuw i8, ptr %15, i64 48 ; 7 uses
  %i.ci = getelementptr inbounds nuw i8, ptr %15, i64 40 ; 3 uses
  %i.cj = getelementptr inbounds nuw i8, ptr %0, i64 264
  br label %bb.r

bb.o:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit268
  %i.ck = add nuw i64 %.0184526, 1                ; 2 uses
  %i.cl = ptrtoint ptr %.pre541.pre to i64
  %i.cm = ptrtoint ptr %.pre540.pre.a to i64
  %i.cn = sub i64 %i.cl, %i.cm
  %i.co = ashr exact i64 %i.cn, 5
  %.not219.not = icmp ult i64 %i.ck, %i.co
  br i1 %.not219.not, label %bb.r, label %._crit_edge, !llvm.loop !745

bb.p:                                             ; preds = %bb.l
  %i.cp = landingpad { ptr, i32 }
          cleanup
  br label %_ZN4absl12lts_2025051216strings_internal8SplitterINS0_9ByAnyCharENS0_9SkipEmptyESt17basic_string_viewIcSt11char_traitsIcEEED2Ev.exit225

bb.q:                                             ; preds = %bb.m
  %i.cq = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.cr = getelementptr inbounds nuw i8, ptr %9, i64 16
  %i.cs = load ptr, ptr %i.cr, align 8, !tbaa !105 ; 2 uses
  %i.ct = getelementptr inbounds nuw i8, ptr %9, i64 32 ; 2 uses
  %i.cu = icmp eq ptr %i.cs, %i.ct
  br i1 %i.cu, label %_ZN4absl12lts_2025051216strings_internal8SplitterINS0_9ByAnyCharENS0_9SkipEmptyESt17basic_string_viewIcSt11char_traitsIcEEED2Ev.exit225, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i223

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i223: ; preds = %bb.q
  %i.cv = load i64, ptr %i.ct, align 8, !tbaa !34
  %i.cw = add i64 %i.cv, 1
  call void @_ZdlPvm(ptr noundef %i.cs, i64 noundef %i.cw) #42
  br label %_ZN4absl12lts_2025051216strings_internal8SplitterINS0_9ByAnyCharENS0_9SkipEmptyESt17basic_string_viewIcSt11char_traitsIcEEED2Ev.exit225

_ZN4absl12lts_2025051216strings_internal8SplitterINS0_9ByAnyCharENS0_9SkipEmptyESt17basic_string_viewIcSt11char_traitsIcEEED2Ev.exit225: ; preds = %bb.q, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i223, %bb.p
  %.pn211 = phi { ptr, i32 } [ %i.cp, %bb.p ], [ %i.cq, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i223 ], [ %i.cq, %bb.q ]
  %i.cx = load ptr, ptr %10, align 8, !tbaa !105  ; 2 uses
  %i.cy = getelementptr inbounds nuw i8, ptr %10, i64 16 ; 2 uses
  %i.cz = icmp eq ptr %i.cx, %i.cy
  br i1 %i.cz, label %_ZN4absl12lts_202505129ByAnyCharD2Ev.exit228, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i226

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i226: ; preds = %_ZN4absl12lts_2025051216strings_internal8SplitterINS0_9ByAnyCharENS0_9SkipEmptyESt17basic_string_viewIcSt11char_traitsIcEEED2Ev.exit225
  %i.da = load i64, ptr %i.cy, align 8, !tbaa !34
  %i.db = add i64 %i.da, 1
  call void @_ZdlPvm(ptr noundef %i.cx, i64 noundef %i.db) #42
  br label %_ZN4absl12lts_202505129ByAnyCharD2Ev.exit228

_ZN4absl12lts_202505129ByAnyCharD2Ev.exit228:     ; preds = %_ZN4absl12lts_2025051216strings_internal8SplitterINS0_9ByAnyCharENS0_9SkipEmptyESt17basic_string_viewIcSt11char_traitsIcEEED2Ev.exit225, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i226
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #37
  br label %bb.bg

bb.r:                                             ; preds = %.lr.ph, %bb.o
  %i.dc = phi ptr [ %i.bt, %.lr.ph ], [ %.pre540.pre.a, %bb.o ]
  %.0184526 = phi i64 [ 0, %.lr.ph ], [ %i.ck, %bb.o ] ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #37
  store ptr %i.bu, ptr %11, align 8, !tbaa !132
  store i64 0, ptr %i.bv, align 8, !tbaa !101
  store i8 0, ptr %i.bu, align 8, !tbaa !34
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #37
  store ptr %i.bw, ptr %12, align 8, !tbaa !132
  store i64 0, ptr %i.bx, align 8, !tbaa !101
  store i8 0, ptr %i.bw, align 8, !tbaa !34
  %i.dd = getelementptr inbounds nuw [32 x i8], ptr %i.dc, i64 %.0184526
  %i.de = call noundef i64 @_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE4findEcm(ptr noundef nonnull align 8 dereferenceable(32) %i.dd, i8 noundef signext 61, i64 noundef 0) #37 ; 3 uses
  %i.df = icmp eq i64 %i.de, -1
  br i1 %i.df, label %bb.s, label %bb.t

bb.s:                                             ; preds = %bb.r
  %i.dg = load i64, ptr %i.bv, align 8, !tbaa !101
  %i.dh = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %11, i64 noundef 0, i64 noundef %i.dg, ptr noundef nonnull @.str.10, i64 noundef 0)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEPKc.exit unwind label %.loopexit468 ; 0 uses

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEPKc.exit: ; preds = %bb.s
  %i.di = load ptr, ptr %8, align 8, !tbaa !135
  %i.dj = getelementptr inbounds nuw [32 x i8], ptr %i.di, i64 %.0184526
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %12, ptr noundef nonnull align 8 dereferenceable(32) %i.dj)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_.exit unwind label %.loopexit468

.loopexit468:                                     ; preds = %bb.s, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEPKc.exit, %bb.an, %bb.as, %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit, %bb.av, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEPKc.exit256, %bb.ap, %.noexc410, %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i, %.noexc412, %bb.au, %.noexc421, %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i418, %.noexc423
  %lpad.loopexit470 = landingpad { ptr, i32 }
          cleanup
  br label %bb.be

.loopexit.split-lp469:                            ; preds = %.invoke
  %lpad.loopexit.split-lp471 = landingpad { ptr, i32 }
          cleanup
  br label %bb.be

bb.t:                                             ; preds = %bb.r
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #37
  %i.dk = load ptr, ptr %8, align 8, !tbaa !135
  %i.dl = getelementptr inbounds nuw [32 x i8], ptr %i.dk, i64 %.0184526 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !746)
  %i.dm = getelementptr inbounds nuw i8, ptr %i.dl, i64 8
  %i.dn = load i64, ptr %i.dm, align 8, !tbaa !101, !noalias !746
  store ptr %i.by, ptr %13, align 8, !tbaa !132, !alias.scope !746
  %i.do = load ptr, ptr %i.dl, align 8, !tbaa !105, !noalias !746 ; 2 uses
  %spec.select.i.i.i = call noundef i64 @llvm.umin.i64(i64 %i.de, i64 %i.dn) ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #37, !noalias !746
  store i64 %spec.select.i.i.i, ptr %i.c, align 8, !tbaa !30, !noalias !746
  %i.dp = icmp ugt i64 %spec.select.i.i.i, 15
  br i1 %i.dp, label %.noexc10.i.i, label %._crit_edge.i.i.i229

.noexc10.i.i:                                     ; preds = %bb.t
  %i.dq = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %13, ptr noundef nonnull align 8 dereferenceable(8) %i.c, i64 noundef 0)
          to label %.noexc unwind label %bb.al    ; 2 uses

.noexc:                                           ; preds = %.noexc10.i.i
  store ptr %i.dq, ptr %13, align 8, !tbaa !105, !alias.scope !746
  %i.dr = load i64, ptr %i.c, align 8, !tbaa !30, !noalias !746
  store i64 %i.dr, ptr %i.by, align 8, !tbaa !34, !alias.scope !746
  br label %._crit_edge.i.i.i229

._crit_edge.i.i.i229:                             ; preds = %.noexc, %bb.t
  %i.ds = phi ptr [ %i.dq, %.noexc ], [ %i.by, %bb.t ] ; 2 uses
  switch i64 %spec.select.i.i.i, label %bb.v [
    i64 1, label %bb.u
    i64 0, label %bb.w
  ]

bb.u:                                             ; preds = %._crit_edge.i.i.i229
  %i.dt = load i8, ptr %i.do, align 1, !tbaa !34
  store i8 %i.dt, ptr %i.ds, align 1, !tbaa !34
  br label %bb.w

bb.v:                                             ; preds = %._crit_edge.i.i.i229
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.ds, ptr align 1 %i.do, i64 %spec.select.i.i.i, i1 false)
  br label %bb.w

bb.w:                                             ; preds = %bb.v, %bb.u, %._crit_edge.i.i.i229
  %i.du = load i64, ptr %i.c, align 8, !tbaa !30, !noalias !746 ; 2 uses
  store i64 %i.du, ptr %i.bz, align 8, !tbaa !101, !alias.scope !746
  %i.dv = load ptr, ptr %13, align 8, !tbaa !105, !alias.scope !746
  %i.dw = getelementptr inbounds nuw i8, ptr %i.dv, i64 %i.du
  store i8 0, ptr %i.dw, align 1, !tbaa !34
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #37, !noalias !746
  %i.dx = load ptr, ptr %11, align 8, !tbaa !105  ; 6 uses
  %i.dy = icmp eq ptr %i.dx, %i.bu
  %i.dz = load ptr, ptr %13, align 8, !tbaa !105  ; 5 uses
  %i.ea = icmp eq ptr %i.dz, %i.by                ; 2 uses
  br i1 %i.dy, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i: ; preds = %bb.w
  br i1 %i.ea, label %bb.x, label %.thread.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i: ; preds = %bb.w
  br i1 %i.ea, label %bb.x, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i

bb.x:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i
  %i.eb = load i64, ptr %i.bz, align 8, !tbaa !101 ; 3 uses
  %i.ec = icmp ult i64 %i.eb, 16
  call void @llvm.assume(i1 %i.ec)
  switch i64 %i.eb, label %bb.z [
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i
    i64 1, label %bb.y
  ]

bb.y:                                             ; preds = %bb.x
  %i.ed = load i8, ptr %i.dz, align 1, !tbaa !34
  store i8 %i.ed, ptr %i.dx, align 1, !tbaa !34
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i

bb.z:                                             ; preds = %bb.x
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.dx, ptr align 1 %i.dz, i64 %i.eb, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i: ; preds = %bb.z, %bb.y, %bb.x
  %i.ee = load i64, ptr %i.bz, align 8, !tbaa !101 ; 2 uses
  store i64 %i.ee, ptr %i.bv, align 8, !tbaa !101
  %i.ef = load ptr, ptr %11, align 8, !tbaa !105
  %i.eg = getelementptr inbounds nuw i8, ptr %i.ef, i64 %i.ee
  store i8 0, ptr %i.eg, align 1, !tbaa !34
  %.pre.i = load ptr, ptr %13, align 8, !tbaa !105
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit

.thread.i:                                        ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i
  store ptr %i.dz, ptr %11, align 8, !tbaa !105
  %i.eh = load <2 x i64>, ptr %i.bz, align 8, !tbaa !34
  store <2 x i64> %i.eh, ptr %i.bv, align 8, !tbaa !34
  br label %bb.ab

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i
  %i.ei = load i64, ptr %i.bu, align 8, !tbaa !34
  store ptr %i.dz, ptr %11, align 8, !tbaa !105
  %i.ej = load <2 x i64>, ptr %i.bz, align 8, !tbaa !34
  store <2 x i64> %i.ej, ptr %i.bv, align 8, !tbaa !34
  %.not.i230 = icmp eq ptr %i.dx, null
  br i1 %.not.i230, label %bb.ab, label %bb.aa

bb.aa:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i
  store ptr %i.dx, ptr %13, align 8, !tbaa !105
  store i64 %i.ei, ptr %i.by, align 8, !tbaa !34
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit

bb.ab:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i, %.thread.i
  store ptr %i.by, ptr %13, align 8, !tbaa !105
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i, %bb.aa, %bb.ab
  %i.ek = phi ptr [ %i.dx, %bb.aa ], [ %i.by, %bb.ab ], [ %.pre.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i ]
  store i64 0, ptr %i.bz, align 8, !tbaa !101
  store i8 0, ptr %i.ek, align 1, !tbaa !34
  %i.el = load ptr, ptr %13, align 8, !tbaa !105  ; 2 uses
  %i.em = icmp eq ptr %i.el, %i.by
  br i1 %i.em, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit
  %i.en = load i64, ptr %i.by, align 8, !tbaa !34
  %i.eo = add i64 %i.en, 1
  call void @_ZdlPvm(ptr noundef %i.el, i64 noundef %i.eo) #42
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #37
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #37
  %i.ep = load ptr, ptr %8, align 8, !tbaa !135
  %i.eq = getelementptr inbounds nuw [32 x i8], ptr %i.ep, i64 %.0184526 ; 2 uses
  %i.er = add nuw i64 %i.de, 1                    ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !749)
  %i.es = getelementptr inbounds nuw i8, ptr %i.eq, i64 8
  %i.et = load i64, ptr %i.es, align 8, !tbaa !101, !noalias !749 ; 3 uses
  %39 = icmp ugt i64 %i.er, %i.et
  br i1 %39, label %bb.ac, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8_M_checkEmPKc.exit.i.i

bb.ac:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  invoke void (ptr, ...) @_ZSt24__throw_out_of_range_fmtPKcz(ptr noundef nonnull @.str.202, ptr noundef nonnull @.str.203, i64 noundef %i.er, i64 noundef %i.et) #41
          to label %.noexc234 unwind label %.loopexit.split-lp

.noexc234:                                        ; preds = %bb.ac
  unreachable

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8_M_checkEmPKc.exit.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  store ptr %i.ca, ptr %14, align 8, !tbaa !132, !alias.scope !749
  %i.eu = load ptr, ptr %i.eq, align 8, !tbaa !105, !noalias !749
  %i.ev = getelementptr inbounds nuw i8, ptr %i.eu, i64 %i.er ; 2 uses
  %i.ew = sub nuw i64 %i.et, %i.er                ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #37, !noalias !749
  store i64 %i.ew, ptr %i.b, align 8, !tbaa !30, !noalias !749
  %i.ex = icmp ugt i64 %i.ew, 15
  br i1 %i.ex, label %.noexc10.i.i233, label %._crit_edge.i.i.i232

.noexc10.i.i233:                                  ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8_M_checkEmPKc.exit.i.i
  %i.ey = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %14, ptr noundef nonnull align 8 dereferenceable(8) %i.b, i64 noundef 0)
          to label %.noexc235 unwind label %.loopexit ; 2 uses

.noexc235:                                        ; preds = %.noexc10.i.i233
  store ptr %i.ey, ptr %14, align 8, !tbaa !105, !alias.scope !749
  %i.ez = load i64, ptr %i.b, align 8, !tbaa !30, !noalias !749
  store i64 %i.ez, ptr %i.ca, align 8, !tbaa !34, !alias.scope !749
  br label %._crit_edge.i.i.i232

._crit_edge.i.i.i232:                             ; preds = %.noexc235, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8_M_checkEmPKc.exit.i.i
  %i.fa = phi ptr [ %i.ey, %.noexc235 ], [ %i.ca, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8_M_checkEmPKc.exit.i.i ] ; 2 uses
  switch i64 %i.ew, label %bb.ae [
    i64 1, label %bb.ad
    i64 0, label %bb.af
  ]

bb.ad:                                            ; preds = %._crit_edge.i.i.i232
  %i.fb = load i8, ptr %i.ev, align 1, !tbaa !34
  store i8 %i.fb, ptr %i.fa, align 1, !tbaa !34
  br label %bb.af

bb.ae:                                            ; preds = %._crit_edge.i.i.i232
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.fa, ptr nonnull align 1 %i.ev, i64 %i.ew, i1 false)
  br label %bb.af

bb.af:                                            ; preds = %bb.ae, %bb.ad, %._crit_edge.i.i.i232
  %i.fc = load i64, ptr %i.b, align 8, !tbaa !30, !noalias !749 ; 2 uses
  store i64 %i.fc, ptr %i.cb, align 8, !tbaa !101, !alias.scope !749
  %i.fd = load ptr, ptr %14, align 8, !tbaa !105, !alias.scope !749
  %i.fe = getelementptr inbounds nuw i8, ptr %i.fd, i64 %i.fc
  store i8 0, ptr %i.fe, align 1, !tbaa !34
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #37, !noalias !749
  %i.ff = load ptr, ptr %12, align 8, !tbaa !105  ; 6 uses
  %i.fg = icmp eq ptr %i.ff, %i.bw
  %i.fh = load ptr, ptr %14, align 8, !tbaa !105  ; 5 uses
  %i.fi = icmp eq ptr %i.fh, %i.ca                ; 2 uses
  br i1 %i.fg, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i242, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i237

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i242: ; preds = %bb.af
  br i1 %i.fi, label %bb.ag, label %.thread.i243

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i237: ; preds = %bb.af
  br i1 %i.fi, label %bb.ag, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i238

bb.ag:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i237, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i242
  %i.fj = load i64, ptr %i.cb, align 8, !tbaa !101 ; 3 uses
  %i.fk = icmp ult i64 %i.fj, 16
  call void @llvm.assume(i1 %i.fk)
  switch i64 %i.fj, label %bb.ai [
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i240
    i64 1, label %bb.ah
  ]

bb.ah:                                            ; preds = %bb.ag
  %i.fl = load i8, ptr %i.fh, align 1, !tbaa !34
  store i8 %i.fl, ptr %i.ff, align 1, !tbaa !34
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i240

bb.ai:                                            ; preds = %bb.ag
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.ff, ptr align 1 %i.fh, i64 %i.fj, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i240

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i240: ; preds = %bb.ai, %bb.ah, %bb.ag
  %i.fm = load i64, ptr %i.cb, align 8, !tbaa !101 ; 2 uses
  store i64 %i.fm, ptr %i.bx, align 8, !tbaa !101
  %i.fn = load ptr, ptr %12, align 8, !tbaa !105
  %i.fo = getelementptr inbounds nuw i8, ptr %i.fn, i64 %i.fm
  store i8 0, ptr %i.fo, align 1, !tbaa !34
  %.pre.i241 = load ptr, ptr %14, align 8, !tbaa !105
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit244

.thread.i243:                                     ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i242
  store ptr %i.fh, ptr %12, align 8, !tbaa !105
  %i.fp = load <2 x i64>, ptr %i.cb, align 8, !tbaa !34
  store <2 x i64> %i.fp, ptr %i.bx, align 8, !tbaa !34
  br label %bb.ak

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i238: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i237
  %i.fq = load i64, ptr %i.bw, align 8, !tbaa !34
  store ptr %i.fh, ptr %12, align 8, !tbaa !105
  %i.fr = load <2 x i64>, ptr %i.cb, align 8, !tbaa !34
  store <2 x i64> %i.fr, ptr %i.bx, align 8, !tbaa !34
  %.not.i239 = icmp eq ptr %i.ff, null
  br i1 %.not.i239, label %bb.ak, label %bb.aj

bb.aj:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i238
  store ptr %i.ff, ptr %14, align 8, !tbaa !105
  store i64 %i.fq, ptr %i.ca, align 8, !tbaa !34
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit244

bb.ak:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i238, %.thread.i243
  store ptr %i.ca, ptr %14, align 8, !tbaa !105
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit244

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit244: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i240, %bb.aj, %bb.ak
  %i.fs = phi ptr [ %i.ff, %bb.aj ], [ %i.ca, %bb.ak ], [ %.pre.i241, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i240 ]
  store i64 0, ptr %i.cb, align 8, !tbaa !101
  store i8 0, ptr %i.fs, align 1, !tbaa !34
  %i.ft = load ptr, ptr %14, align 8, !tbaa !105  ; 2 uses
  %i.fu = icmp eq ptr %i.ft, %i.ca
  br i1 %i.fu, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit247, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i245

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i245: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit244
  %i.fv = load i64, ptr %i.ca, align 8, !tbaa !34
  %i.fw = add i64 %i.fv, 1
  call void @_ZdlPvm(ptr noundef %i.ft, i64 noundef %i.fw) #42
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit247

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit247: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit244, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i245
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #37
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_.exit

bb.al:                                            ; preds = %.noexc10.i.i
  %i.fx = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #37
  br label %bb.be

.loopexit:                                        ; preds = %.noexc10.i.i233
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %bb.am

.loopexit.split-lp:                               ; preds = %bb.ac
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.am

bb.am:                                            ; preds = %.loopexit.split-lp, %.loopexit
  %lpad.phi = phi { ptr, i32 } [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ]
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #37
  br label %bb.be

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEPKc.exit, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit247
  %i.fy = load i64, ptr %i.bx, align 8, !tbaa !101
  %i.fz = icmp eq i64 %i.fy, 0                    ; 4 uses
  br i1 %i.fz, label %bb.an, label %bb.aq

bb.an:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_.exit
  %i.ga = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cerr, ptr noundef nonnull @.str.86, i64 noundef 75)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit unwind label %.loopexit468 ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit: ; preds = %bb.an
  %i.gb = load ptr, ptr @_ZSt4cerr, align 8, !tbaa !82
  %i.gc = getelementptr i8, ptr %i.gb, i64 -24
  %i.gd = load i64, ptr %i.gc, align 8
  %i.ge = getelementptr inbounds i8, ptr @_ZSt4cerr, i64 %i.gd
  %i.gf = getelementptr inbounds nuw i8, ptr %i.ge, i64 240
  %i.gg = load ptr, ptr %i.gf, align 8, !tbaa !115 ; 6 uses
  %.not.i.i.i405 = icmp eq ptr %i.gg, null
  br i1 %.not.i.i.i405, label %.invoke, label %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i406

.invoke:                                          ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit252, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit
  invoke void @_ZSt16__throw_bad_castv() #41
          to label %.cont unwind label %.loopexit.split-lp469

.cont:                                            ; preds = %.invoke
  unreachable

_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i406: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit
  %i.gh = getelementptr inbounds nuw i8, ptr %i.gg, i64 56
  %i.gi = load i8, ptr %i.gh, align 8, !tbaa !122
  %.not.i1.i.i407 = icmp eq i8 %i.gi, 0
  br i1 %.not.i1.i.i407, label %bb.ap, label %bb.ao

bb.ao:                                            ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i406
  %i.gj = getelementptr inbounds nuw i8, ptr %i.gg, i64 67
  %i.gk = load i8, ptr %i.gj, align 1, !tbaa !34
  br label %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i

bb.ap:                                            ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i406
  invoke void @_ZNKSt5ctypeIcE13_M_widen_initEv(ptr noundef nonnull align 8 dereferenceable(570) %i.gg)
          to label %.noexc410 unwind label %.loopexit468

.noexc410:                                        ; preds = %bb.ap
  %i.gl = load ptr, ptr %i.gg, align 8, !tbaa !82
  %i.gm = getelementptr inbounds nuw i8, ptr %i.gl, i64 48
  %i.gn = load ptr, ptr %i.gm, align 8
  %i.go = invoke noundef signext i8 %i.gn(ptr noundef nonnull align 8 dereferenceable(570) %i.gg, i8 noundef signext 10)
          to label %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i unwind label %.loopexit468, !inline_history !136

end_hunk_0
begin_hunk_1_@_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10map_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES9_St4lessIS9_ESaISt4pairIKS9_S9_EELi256ELb0EEEE13emplace_valueIJRKSt21piecewise_construct_tSt5tupleIJOS9_EESM_IJRA1_KcEEEEEvhPSF_DpOT_:bb.a
  %i.q = icmp eq ptr %i.o, %i.p
  br i1 %i.q, label %bb.b, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i

bb.b:                                             ; preds = %.lr.ph.i
  %i.r = getelementptr inbounds i8, ptr %.01416.i, i64 -56
  %i.s = load i64, ptr %i.r, align 8, !tbaa !101  ; 2 uses
  %i.t = icmp ult i64 %i.s, 16
  tail call void @llvm.assume(i1 %i.t)
  %i.u = add nuw nsw i64 %i.s, 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.n, ptr noundef nonnull align 8 dereferenceable(1) %i.p, i64 %i.u, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i: ; preds = %.lr.ph.i
  store ptr %i.o, ptr %i.l, align 8, !tbaa !105
  %i.v = load i64, ptr %i.p, align 8, !tbaa !34
  store i64 %i.v, ptr %i.n, align 8, !tbaa !34
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i.i.i.i.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i.i.i.i.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i, %bb.b
  %i.w = getelementptr inbounds i8, ptr %.01416.i, i64 -56 ; 2 uses
  %i.x = load i64, ptr %i.w, align 8, !tbaa !101
  %i.y = getelementptr inbounds i8, ptr %.017.i, i64 -56
  store i64 %i.x, ptr %i.y, align 8, !tbaa !101
  store ptr %i.p, ptr %i.m, align 8, !tbaa !105
  store i64 0, ptr %i.w, align 8, !tbaa !101
  store i8 0, ptr %i.p, align 8, !tbaa !34
  %i.z = getelementptr inbounds i8, ptr %.017.i, i64 -32 ; 2 uses
  %i.aa = getelementptr inbounds i8, ptr %.01416.i, i64 -32 ; 2 uses
  %i.ab = getelementptr inbounds i8, ptr %.017.i, i64 -16 ; 3 uses
  store ptr %i.ab, ptr %i.z, align 8, !tbaa !132
  %i.ac = load ptr, ptr %i.aa, align 8, !tbaa !105 ; 2 uses
  %i.ad = getelementptr inbounds i8, ptr %.01416.i, i64 -16 ; 5 uses
  %i.ae = icmp eq ptr %i.ac, %i.ad
  br i1 %i.ae, label %bb.c, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i3.i.i.i.i.i.i

bb.c:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i.i.i.i.i.i
  %i.af = getelementptr inbounds i8, ptr %.01416.i, i64 -24
  %i.ag = load i64, ptr %i.af, align 8, !tbaa !101 ; 2 uses
  %i.ah = icmp ult i64 %i.ag, 16
  tail call void @llvm.assume(i1 %i.ah)
  %i.ai = add nuw nsw i64 %i.ag, 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.ab, ptr noundef nonnull align 8 dereferenceable(1) %i.ad, i64 %i.ai, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i3.i.i.i.i.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i.i.i.i.i.i
  store ptr %i.ac, ptr %i.z, align 8, !tbaa !105
  %i.aj = load i64, ptr %i.ad, align 8, !tbaa !34
  store i64 %i.aj, ptr %i.ab, align 8, !tbaa !34
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i3.i.i.i.i.i.i, %bb.c
  %i.ak = getelementptr inbounds i8, ptr %.01416.i, i64 -24 ; 2 uses
  %i.al = load i64, ptr %i.ak, align 8, !tbaa !101
  %i.am = getelementptr inbounds i8, ptr %.017.i, i64 -24
  store i64 %i.al, ptr %i.am, align 8, !tbaa !101
  store ptr %i.ad, ptr %i.aa, align 8, !tbaa !105
  store i64 0, ptr %i.ak, align 8, !tbaa !101
  store i8 0, ptr %i.ad, align 8, !tbaa !34
  %i.an = load ptr, ptr %i.m, align 8, !tbaa !105 ; 2 uses
  %i.ao = icmp eq ptr %i.an, %i.p
  br i1 %i.ao, label %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10map_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES9_St4lessIS9_ESaISt4pairIKS9_S9_EELi256ELb0EEEE8transferEPNS1_13map_slot_typeIS9_S9_EESK_PSF_.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i.i.i.i.i.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i.i.i
  %i.ap = load i64, ptr %i.p, align 8, !tbaa !34
  %i.aq = add i64 %i.ap, 1
  tail call void @_ZdlPvm(ptr noundef %i.an, i64 noundef %i.aq) #42
  br label %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10map_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES9_St4lessIS9_ESaISt4pairIKS9_S9_EELi256ELb0EEEE8transferEPNS1_13map_slot_typeIS9_S9_EESK_PSF_.exit.i

_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10map_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES9_St4lessIS9_ESaISt4pairIKS9_S9_EELi256ELb0EEEE8transferEPNS1_13map_slot_typeIS9_S9_EESK_PSF_.exit.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i.i.i.i.i.i.i
  %.not.i = icmp eq ptr %i.m, %i.g
  br i1 %.not.i, label %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10map_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES9_St4lessIS9_ESaISt4pairIKS9_S9_EELi256ELb0EEEE19transfer_n_backwardEmmmPSH_PSF_.exit, label %.lr.ph.i, !llvm.loop !958

_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10map_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES9_St4lessIS9_ESaISt4pairIKS9_S9_EELi256ELb0EEEE19transfer_n_backwardEmmmPSH_PSF_.exit: ; preds = %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10map_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES9_St4lessIS9_ESaISt4pairIKS9_S9_EELi256ELb0EEEE8transferEPNS1_13map_slot_typeIS9_S9_EESK_PSF_.exit.i, %bb.a
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.as = getelementptr inbounds nuw [64 x i8], ptr %i.ar, i64 %i.e
  tail call void @_ZN4absl12lts_2025051218container_internal15map_slot_policyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES8_E9constructISaISt4pairIKS8_S8_EEJRKSt21piecewise_construct_tSt5tupleIJOS8_EESI_IJRA1_KcEEEEEvPT_PNS1_13map_slot_typeIS8_S8_EEDpOT0_(ptr noundef %2, ptr noundef nonnull %i.as, ptr noundef nonnull align 1 dereferenceable(1) %3, ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef nonnull align 8 dereferenceable(8) %5)
  %i.at = load i8, ptr %i.b, align 1, !tbaa !34
  %i.au = add i8 %i.at, 1                         ; 3 uses
  store i8 %i.au, ptr %i.b, align 1, !tbaa !34
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 11
  %i.aw = load i8, ptr %i.av, align 1, !tbaa !34
  %.not.i20 = icmp eq i8 %i.aw, 0
  br i1 %.not.i20, label %bb.d, label %.loopexit

bb.d:                                             ; preds = %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10map_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES9_St4lessIS9_ESaISt4pairIKS9_S9_EELi256ELb0EEEE19transfer_n_backwardEmmmPSH_PSF_.exit
  %i.ax = zext i8 %i.au to i32
  %i.ay = add nuw nsw i32 %i.a, 1                 ; 2 uses
  %i.az = icmp samesign ult i32 %i.ay, %i.ax
  br i1 %i.az, label %.lr.ph, label %.loopexit

.lr.ph:                                           ; preds = %bb.d
  %i.ba = getelementptr inbounds nuw i8, ptr %0, i64 272 ; 2 uses
  br label %bb.e

bb.e:                                             ; preds = %.lr.ph, %bb.e
  %.021 = phi i8 [ %i.au, %.lr.ph ], [ %i.bb, %bb.e ] ; 3 uses
  %i.bb = add i8 %.021, -1                        ; 3 uses
  %i.bc = zext i8 %i.bb to i64
  %i.bd = getelementptr inbounds nuw [8 x i8], ptr %i.ba, i64 %i.bc
  %i.be = load ptr, ptr %i.bd, align 8, !tbaa !128 ; 2 uses
  %i.bf = zext i8 %.021 to i64
  %i.bg = getelementptr inbounds nuw [8 x i8], ptr %i.ba, i64 %i.bf
  store ptr %i.be, ptr %i.bg, align 8, !tbaa !128
  %i.bh = getelementptr inbounds nuw i8, ptr %i.be, i64 8
  store i8 %.021, ptr %i.bh, align 1, !tbaa !34
  %i.bi = zext i8 %i.bb to i32
  %i.bj = icmp samesign ult i32 %i.ay, %i.bi
  br i1 %i.bj, label %bb.e, label %.loopexit, !llvm.loop !959

.loopexit:                                        ; preds = %bb.e, %bb.d, %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10map_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES9_St4lessIS9_ESaISt4pairIKS9_S9_EELi256ELb0EEEE19transfer_n_backwardEmmmPSH_PSF_.exit
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10map_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES9_St4lessIS9_ESaISt4pairIKS9_S9_EELi256ELb0EEEE16clear_and_deleteEPSH_PSF_(ptr noundef %0, ptr noundef %1) local_unnamed_addr #7 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 11 ; 2 uses
  %i.b = load i8, ptr %i.a, align 1, !tbaa !34    ; 2 uses
  %.not82 = icmp eq i8 %i.b, 0
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 10
  %i.d = load i8, ptr %i.c, align 1, !tbaa !34    ; 3 uses
  br i1 %.not82, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.f = zext i8 %i.d to i64
  %i.g = shl nuw nsw i64 %i.f, 6
  %i.h = getelementptr inbounds nuw i8, ptr %i.e, i64 %i.g
  %.not9.i = icmp eq i8 %i.d, 0
  br i1 %.not9.i, label %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10map_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES9_St4lessIS9_ESaISt4pairIKS9_S9_EELi256ELb0EEEE15value_destroy_nEhhPSF_.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.b, %_ZN4absl12lts_2025051218container_internal20common_policy_traitsINS1_15map_slot_policyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES9_EEvE7destroyISaISt4pairIKS9_S9_EEEEDaPT_PNS1_13map_slot_typeIS9_S9_EE.exit.i
  %.010.i = phi ptr [ %i.t, %_ZN4absl12lts_2025051218container_internal20common_policy_traitsINS1_15map_slot_policyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES9_EEvE7destroyISaISt4pairIKS9_S9_EEEEDaPT_PNS1_13map_slot_typeIS9_S9_EE.exit.i ], [ %i.e, %bb.b ] ; 5 uses
  %i.i = getelementptr inbounds nuw i8, ptr %.010.i, i64 32
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !105  ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %.010.i, i64 48 ; 2 uses
  %i.l = icmp eq ptr %i.j, %i.k
  br i1 %i.l, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i: ; preds = %.lr.ph.i
  %i.m = load i64, ptr %i.k, align 8, !tbaa !34
  %i.n = add i64 %i.m, 1
  tail call void @_ZdlPvm(ptr noundef %i.j, i64 noundef %i.n) #42
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i: ; preds = %.lr.ph.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i
  %i.o = load ptr, ptr %.010.i, align 8, !tbaa !105 ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %.010.i, i64 16 ; 2 uses
  %i.q = icmp eq ptr %i.o, %i.p
  br i1 %i.q, label %_ZN4absl12lts_2025051218container_internal20common_policy_traitsINS1_15map_slot_policyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES9_EEvE7destroyISaISt4pairIKS9_S9_EEEEDaPT_PNS1_13map_slot_typeIS9_S9_EE.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i.i.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i
  %i.r = load i64, ptr %i.p, align 8, !tbaa !34
  %i.s = add i64 %i.r, 1
  tail call void @_ZdlPvm(ptr noundef %i.o, i64 noundef %i.s) #42
  br label %_ZN4absl12lts_2025051218container_internal20common_policy_traitsINS1_15map_slot_policyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES9_EEvE7destroyISaISt4pairIKS9_S9_EEEEDaPT_PNS1_13map_slot_typeIS9_S9_EE.exit.i

_ZN4absl12lts_2025051218container_internal20common_policy_traitsINS1_15map_slot_policyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES9_EEvE7destroyISaISt4pairIKS9_S9_EEEEDaPT_PNS1_13map_slot_typeIS9_S9_EE.exit.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i.i.i.i
  %i.t = getelementptr inbounds nuw i8, ptr %.010.i, i64 64 ; 2 uses
  %.not.i = icmp eq ptr %i.t, %i.h
  br i1 %.not.i, label %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10map_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES9_St4lessIS9_ESaISt4pairIKS9_S9_EELi256ELb0EEEE15value_destroy_nEhhPSF_.exit.loopexit, label %.lr.ph.i, !llvm.loop !960

_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10map_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES9_St4lessIS9_ESaISt4pairIKS9_S9_EELi256ELb0EEEE15value_destroy_nEhhPSF_.exit.loopexit: ; preds = %_ZN4absl12lts_2025051218container_internal20common_policy_traitsINS1_15map_slot_policyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES9_EEvE7destroyISaISt4pairIKS9_S9_EEEEDaPT_PNS1_13map_slot_typeIS9_S9_EE.exit.i
  %.pre = load i8, ptr %i.a, align 1, !tbaa !34
  br label %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10map_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES9_St4lessIS9_ESaISt4pairIKS9_S9_EELi256ELb0EEEE15value_destroy_nEhhPSF_.exit

_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10map_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES9_St4lessIS9_ESaISt4pairIKS9_S9_EELi256ELb0EEEE15value_destroy_nEhhPSF_.exit: ; preds = %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10map_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES9_St4lessIS9_ESaISt4pairIKS9_S9_EELi256ELb0EEEE15value_destroy_nEhhPSF_.exit.loopexit, %bb.b
  %i.u = phi i8 [ %.pre, %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10map_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES9_St4lessIS9_ESaISt4pairIKS9_S9_EELi256ELb0EEEE15value_destroy_nEhhPSF_.exit.loopexit ], [ %i.b, %bb.b ] ; 2 uses
  %i.v = icmp eq i8 %i.u, 0
  %i.w = select i1 %i.v, i8 4, i8 %i.u
  %i.x = zext i8 %i.w to i64
  %i.y = shl nuw nsw i64 %i.x, 6
  %i.z = or disjoint i64 %i.y, 16
  br label %.loopexit.sink.split

bb.c:                                             ; preds = %bb.a
  %i.aa = icmp eq i8 %i.d, 0
  br i1 %i.aa, label %.loopexit.sink.split, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.c
  %i.ab = load ptr, ptr %0, align 8, !tbaa !128
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %.lr.ph
  %.04988 = phi ptr [ %i.ad, %.lr.ph ], [ %0, %.lr.ph.preheader ]
  %i.ac = getelementptr inbounds nuw i8, ptr %.04988, i64 272
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !128 ; 4 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 11
  %i.af = load i8, ptr %i.ae, align 1, !tbaa !34
  %.not.i55 = icmp eq i8 %i.af, 0
  br i1 %.not.i55, label %.lr.ph, label %._crit_edge, !llvm.loop !961

._crit_edge:                                      ; preds = %.lr.ph
  %i.ag = getelementptr inbounds nuw i8, ptr %i.ad, i64 8
  %i.ah = load i8, ptr %i.ag, align 1, !tbaa !34
  %i.ai = zext i8 %i.ah to i64
  %i.aj = load ptr, ptr %i.ad, align 8, !tbaa !128
  br label %bb.d

bb.d:                                             ; preds = %.backedge, %._crit_edge
  %.147 = phi i64 [ %i.ai, %._crit_edge ], [ %.147.be.in, %.backedge ] ; 2 uses
  %.1 = phi ptr [ %i.aj, %._crit_edge ], [ %.1.be, %.backedge ] ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %.1, i64 272
  %i.al = getelementptr inbounds nuw [8 x i8], ptr %i.ak, i64 %.147
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !128 ; 3 uses
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 11
  %i.ao = load i8, ptr %i.an, align 1, !tbaa !34
  %.not.i56 = icmp eq i8 %i.ao, 0
  br i1 %.not.i56, label %.lr.ph91, label %bb.e

.lr.ph91:                                         ; preds = %bb.d, %.lr.ph91
  %.15090 = phi ptr [ %i.aq, %.lr.ph91 ], [ %i.am, %bb.d ]
  %i.ap = getelementptr inbounds nuw i8, ptr %.15090, i64 272
  %i.aq = load ptr, ptr %i.ap, align 8, !tbaa !128 ; 5 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 11
  %i.as = load i8, ptr %i.ar, align 1, !tbaa !34
  %.not.i57 = icmp eq i8 %i.as, 0
  br i1 %.not.i57, label %.lr.ph91, label %._crit_edge92, !llvm.loop !962

._crit_edge92:                                    ; preds = %.lr.ph91
  %i.at = getelementptr inbounds nuw i8, ptr %i.aq, i64 8
  %i.au = load i8, ptr %i.at, align 1, !tbaa !34
  %i.av = zext i8 %i.au to i64
  %i.aw = load ptr, ptr %i.aq, align 8, !tbaa !128
  br label %bb.e

bb.e:                                             ; preds = %._crit_edge92, %bb.d
  %.251 = phi ptr [ %i.aq, %._crit_edge92 ], [ %i.am, %bb.d ] ; 4 uses
  %.248 = phi i64 [ %i.av, %._crit_edge92 ], [ %.147, %bb.d ]
  %.2 = phi ptr [ %i.aw, %._crit_edge92 ], [ %.1, %bb.d ] ; 3 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %.251, i64 10
  %i.ay = load i8, ptr %i.ax, align 1, !tbaa !34  ; 2 uses
  %i.az = getelementptr inbounds nuw i8, ptr %.251, i64 16 ; 2 uses
  %i.ba = zext i8 %i.ay to i64
  %i.bb = shl nuw nsw i64 %i.ba, 6
  %i.bc = getelementptr inbounds nuw i8, ptr %i.az, i64 %i.bb
  %.not9.i58 = icmp eq i8 %i.ay, 0
  br i1 %.not9.i58, label %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10map_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES9_St4lessIS9_ESaISt4pairIKS9_S9_EELi256ELb0EEEE15value_destroy_nEhhPSF_.exit69, label %.lr.ph.i60

.lr.ph.i60:                                       ; preds = %bb.e, %_ZN4absl12lts_2025051218container_internal20common_policy_traitsINS1_15map_slot_policyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES9_EEvE7destroyISaISt4pairIKS9_S9_EEEEDaPT_PNS1_13map_slot_typeIS9_S9_EE.exit.i65
  %.010.i61 = phi ptr [ %i.bo, %_ZN4absl12lts_2025051218container_internal20common_policy_traitsINS1_15map_slot_policyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES9_EEvE7destroyISaISt4pairIKS9_S9_EEEEDaPT_PNS1_13map_slot_typeIS9_S9_EE.exit.i65 ], [ %i.az, %bb.e ] ; 5 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %.010.i61, i64 32
  %i.be = load ptr, ptr %i.bd, align 8, !tbaa !105 ; 2 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %.010.i61, i64 48 ; 2 uses
  %i.bg = icmp eq ptr %i.be, %i.bf
  br i1 %i.bg, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i63, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i62

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i62: ; preds = %.lr.ph.i60
  %i.bh = load i64, ptr %i.bf, align 8, !tbaa !34
  %i.bi = add i64 %i.bh, 1
  tail call void @_ZdlPvm(ptr noundef %i.be, i64 noundef %i.bi) #42
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i63

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i63: ; preds = %.lr.ph.i60, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i62
  %i.bj = load ptr, ptr %.010.i61, align 8, !tbaa !105 ; 2 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %.010.i61, i64 16 ; 2 uses
  %i.bl = icmp eq ptr %i.bj, %i.bk
  br i1 %i.bl, label %_ZN4absl12lts_2025051218container_internal20common_policy_traitsINS1_15map_slot_policyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES9_EEvE7destroyISaISt4pairIKS9_S9_EEEEDaPT_PNS1_13map_slot_typeIS9_S9_EE.exit.i65, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i.i.i.i64

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i.i.i.i64: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i63
  %i.bm = load i64, ptr %i.bk, align 8, !tbaa !34
  %i.bn = add i64 %i.bm, 1
  tail call void @_ZdlPvm(ptr noundef %i.bj, i64 noundef %i.bn) #42
  br label %_ZN4absl12lts_2025051218container_internal20common_policy_traitsINS1_15map_slot_policyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES9_EEvE7destroyISaISt4pairIKS9_S9_EEEEDaPT_PNS1_13map_slot_typeIS9_S9_EE.exit.i65

_ZN4absl12lts_2025051218container_internal20common_policy_traitsINS1_15map_slot_policyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES9_EEvE7destroyISaISt4pairIKS9_S9_EEEEDaPT_PNS1_13map_slot_typeIS9_S9_EE.exit.i65: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i63, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i.i.i.i64
  %i.bo = getelementptr inbounds nuw i8, ptr %.010.i61, i64 64 ; 2 uses
  %.not.i66 = icmp eq ptr %i.bo, %i.bc
  br i1 %.not.i66, label %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10map_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES9_St4lessIS9_ESaISt4pairIKS9_S9_EELi256ELb0EEEE15value_destroy_nEhhPSF_.exit69, label %.lr.ph.i60, !llvm.loop !960

_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10map_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES9_St4lessIS9_ESaISt4pairIKS9_S9_EELi256ELb0EEEE15value_destroy_nEhhPSF_.exit69: ; preds = %_ZN4absl12lts_2025051218container_internal20common_policy_traitsINS1_15map_slot_policyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES9_EEvE7destroyISaISt4pairIKS9_S9_EEEEDaPT_PNS1_13map_slot_typeIS9_S9_EE.exit.i65, %bb.e
  %i.bp = getelementptr inbounds nuw i8, ptr %.251, i64 11
  %i.bq = load i8, ptr %i.bp, align 1, !tbaa !34  ; 2 uses
  %i.br = icmp eq i8 %i.bq, 0
  %i.bs = select i1 %i.br, i8 4, i8 %i.bq
  %i.bt = zext i8 %i.bs to i64
  %i.bu = shl nuw nsw i64 %i.bt, 6
  %i.bv = or disjoint i64 %i.bu, 16
  tail call void @_ZdlPvm(ptr noundef nonnull %.251, i64 noundef %i.bv) #42
  %2 = add nuw nsw i64 %.248, 1                   ; 2 uses
  %i.bw = getelementptr inbounds nuw i8, ptr %.2, i64 10
  %i.bx = load i8, ptr %i.bw, align 1, !tbaa !34  ; 2 uses
  %i.by = zext i8 %i.bx to i64
  %.not = icmp ugt i64 %2, %i.by
  br i1 %.not, label %.preheader83, label %.backedge

.backedge:                                        ; preds = %bb.f, %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10map_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES9_St4lessIS9_ESaISt4pairIKS9_S9_EELi256ELb0EEEE15value_destroy_nEhhPSF_.exit69
  %.147.be.in = phi i64 [ %2, %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10map_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES9_St4lessIS9_ESaISt4pairIKS9_S9_EELi256ELb0EEEE15value_destroy_nEhhPSF_.exit69 ], [ %4, %bb.f ]
  %.1.be = phi ptr [ %.2, %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10map_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES9_St4lessIS9_ESaISt4pairIKS9_S9_EELi256ELb0EEEE15value_destroy_nEhhPSF_.exit69 ], [ %i.cc, %bb.f ]
  br label %bb.d, !llvm.loop !963

.preheader83:                                     ; preds = %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10map_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES9_St4lessIS9_ESaISt4pairIKS9_S9_EELi256ELb0EEEE15value_destroy_nEhhPSF_.exit69, %bb.f
  %i.bz = phi i8 [ %i.cv, %bb.f ], [ %i.bx, %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10map_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES9_St4lessIS9_ESaISt4pairIKS9_S9_EELi256ELb0EEEE15value_destroy_nEhhPSF_.exit69 ] ; 2 uses
  %.3 = phi ptr [ %i.cc, %bb.f ], [ %.2, %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10map_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES9_St4lessIS9_ESaISt4pairIKS9_S9_EELi256ELb0EEEE15value_destroy_nEhhPSF_.exit69 ] ; 4 uses
  %i.ca = getelementptr inbounds nuw i8, ptr %.3, i64 8
  %i.cb = load i8, ptr %i.ca, align 1, !tbaa !34
  %i.cc = load ptr, ptr %.3, align 8, !tbaa !128  ; 4 uses
  %i.cd = getelementptr inbounds nuw i8, ptr %.3, i64 16 ; 2 uses
  %i.ce = zext i8 %i.bz to i64
  %i.cf = shl nuw nsw i64 %i.ce, 6
  %i.cg = getelementptr inbounds nuw i8, ptr %i.cd, i64 %i.cf
  %.not9.i70 = icmp eq i8 %i.bz, 0
  br i1 %.not9.i70, label %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10map_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES9_St4lessIS9_ESaISt4pairIKS9_S9_EELi256ELb0EEEE15value_destroy_nEhhPSF_.exit81, label %.lr.ph.i72

.lr.ph.i72:                                       ; preds = %.preheader83, %_ZN4absl12lts_2025051218container_internal20common_policy_traitsINS1_15map_slot_policyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES9_EEvE7destroyISaISt4pairIKS9_S9_EEEEDaPT_PNS1_13map_slot_typeIS9_S9_EE.exit.i77
  %.010.i73 = phi ptr [ %i.cs, %_ZN4absl12lts_2025051218container_internal20common_policy_traitsINS1_15map_slot_policyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES9_EEvE7destroyISaISt4pairIKS9_S9_EEEEDaPT_PNS1_13map_slot_typeIS9_S9_EE.exit.i77 ], [ %i.cd, %.preheader83 ] ; 5 uses
  %i.ch = getelementptr inbounds nuw i8, ptr %.010.i73, i64 32
  %i.ci = load ptr, ptr %i.ch, align 8, !tbaa !105 ; 2 uses
  %i.cj = getelementptr inbounds nuw i8, ptr %.010.i73, i64 48 ; 2 uses
  %i.ck = icmp eq ptr %i.ci, %i.cj
  br i1 %i.ck, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i75, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i74

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i74: ; preds = %.lr.ph.i72
  %i.cl = load i64, ptr %i.cj, align 8, !tbaa !34
  %i.cm = add i64 %i.cl, 1
  tail call void @_ZdlPvm(ptr noundef %i.ci, i64 noundef %i.cm) #42
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i75

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i75: ; preds = %.lr.ph.i72, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i74
  %i.cn = load ptr, ptr %.010.i73, align 8, !tbaa !105 ; 2 uses
  %i.co = getelementptr inbounds nuw i8, ptr %.010.i73, i64 16 ; 2 uses
  %i.cp = icmp eq ptr %i.cn, %i.co
  br i1 %i.cp, label %_ZN4absl12lts_2025051218container_internal20common_policy_traitsINS1_15map_slot_policyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES9_EEvE7destroyISaISt4pairIKS9_S9_EEEEDaPT_PNS1_13map_slot_typeIS9_S9_EE.exit.i77, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i.i.i.i76

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i.i.i.i76: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i75
  %i.cq = load i64, ptr %i.co, align 8, !tbaa !34
  %i.cr = add i64 %i.cq, 1
  tail call void @_ZdlPvm(ptr noundef %i.cn, i64 noundef %i.cr) #42
  br label %_ZN4absl12lts_2025051218container_internal20common_policy_traitsINS1_15map_slot_policyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES9_EEvE7destroyISaISt4pairIKS9_S9_EEEEDaPT_PNS1_13map_slot_typeIS9_S9_EE.exit.i77

_ZN4absl12lts_2025051218container_internal20common_policy_traitsINS1_15map_slot_policyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES9_EEvE7destroyISaISt4pairIKS9_S9_EEEEDaPT_PNS1_13map_slot_typeIS9_S9_EE.exit.i77: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i75, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i.i.i.i76
  %i.cs = getelementptr inbounds nuw i8, ptr %.010.i73, i64 64 ; 2 uses
  %.not.i78 = icmp eq ptr %i.cs, %i.cg
  br i1 %.not.i78, label %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10map_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES9_St4lessIS9_ESaISt4pairIKS9_S9_EELi256ELb0EEEE15value_destroy_nEhhPSF_.exit81, label %.lr.ph.i72, !llvm.loop !960

_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10map_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES9_St4lessIS9_ESaISt4pairIKS9_S9_EELi256ELb0EEEE15value_destroy_nEhhPSF_.exit81: ; preds = %_ZN4absl12lts_2025051218container_internal20common_policy_traitsINS1_15map_slot_policyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES9_EEvE7destroyISaISt4pairIKS9_S9_EEEEDaPT_PNS1_13map_slot_typeIS9_S9_EE.exit.i77, %.preheader83
  tail call void @_ZdlPvm(ptr noundef nonnull %.3, i64 noundef 312) #42
  %i.ct = icmp eq ptr %i.cc, %i.ab
  br i1 %i.ct, label %.loopexit, label %bb.f

bb.f:                                             ; preds = %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10map_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES9_St4lessIS9_ESaISt4pairIKS9_S9_EELi256ELb0EEEE15value_destroy_nEhhPSF_.exit81
  %3 = zext i8 %i.cb to i64
  %4 = add nuw nsw i64 %3, 1                      ; 2 uses
  %i.cu = getelementptr inbounds nuw i8, ptr %i.cc, i64 10
  %i.cv = load i8, ptr %i.cu, align 1, !tbaa !34  ; 2 uses
  %5 = zext i8 %i.cv to i64
  %6 = icmp samesign ugt i64 %4, %5
  br i1 %6, label %.preheader83, label %.backedge, !llvm.loop !964

.loopexit.sink.split:                             ; preds = %bb.c, %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10map_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES9_St4lessIS9_ESaISt4pairIKS9_S9_EELi256ELb0EEEE15value_destroy_nEhhPSF_.exit
  %.sink = phi i64 [ %i.z, %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10map_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES9_St4lessIS9_ESaISt4pairIKS9_S9_EELi256ELb0EEEE15value_destroy_nEhhPSF_.exit ], [ 312, %bb.c ]
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef %.sink) #42
  br label %.loopexit

.loopexit:                                        ; preds = %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10map_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES9_St4lessIS9_ESaISt4pairIKS9_S9_EELi256ELb0EEEE15value_destroy_nEhhPSF_.exit81, %.loopexit.sink.split
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10map_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES9_St4lessIS9_ESaISt4pairIKS9_S9_EELi256ELb0EEEE23rebalance_right_to_leftEhPSH_PSF_(ptr noundef nonnull align 1 dereferenceable(1) %0, i8 noundef zeroext %1, ptr noundef %2, ptr noundef %3) local_unnamed_addr #7 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 10 ; 7 uses
  %i.b = load i8, ptr %i.a, align 1, !tbaa !34
  %i.c = zext i8 %i.b to i64
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.e = load i8, ptr %i.d, align 1, !tbaa !34
  %i.f = zext i8 %i.e to i64
  %i.g = load ptr, ptr %0, align 8, !tbaa !128
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.i = getelementptr inbounds nuw [64 x i8], ptr %i.h, i64 %i.c ; 7 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  %i.k = getelementptr inbounds nuw [64 x i8], ptr %i.j, i64 %i.f ; 10 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.i, i64 16 ; 3 uses
  store ptr %i.l, ptr %i.i, align 8, !tbaa !132
  %i.m = load ptr, ptr %i.k, align 8, !tbaa !105  ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.k, i64 16 ; 7 uses
  %i.o = icmp eq ptr %i.m, %i.n
  br i1 %i.o, label %bb.b, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i

bb.b:                                             ; preds = %bb.a
  %i.p = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  %i.q = load i64, ptr %i.p, align 8, !tbaa !101  ; 2 uses
  %i.r = icmp ult i64 %i.q, 16
  tail call void @llvm.assume(i1 %i.r)
  %i.s = add nuw nsw i64 %i.q, 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.l, ptr noundef nonnull align 8 dereferenceable(1) %i.n, i64 %i.s, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i: ; preds = %bb.a
  store ptr %i.m, ptr %i.i, align 8, !tbaa !105
  %i.t = load i64, ptr %i.n, align 8, !tbaa !34
  store i64 %i.t, ptr %i.l, align 8, !tbaa !34
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i.i.i.i.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i.i.i.i.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i, %bb.b
  %i.u = getelementptr inbounds nuw i8, ptr %i.k, i64 8 ; 2 uses
  %i.v = load i64, ptr %i.u, align 8, !tbaa !101
  %i.w = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  store i64 %i.v, ptr %i.w, align 8, !tbaa !101
  store ptr %i.n, ptr %i.k, align 8, !tbaa !105
  store i64 0, ptr %i.u, align 8, !tbaa !101
  store i8 0, ptr %i.n, align 8, !tbaa !34
  %i.x = getelementptr inbounds nuw i8, ptr %i.i, i64 32 ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.k, i64 32 ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %i.i, i64 48 ; 3 uses
  store ptr %i.z, ptr %i.x, align 8, !tbaa !132
  %i.aa = load ptr, ptr %i.y, align 8, !tbaa !105 ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %i.k, i64 48 ; 5 uses
  %i.ac = icmp eq ptr %i.aa, %i.ab
  br i1 %i.ac, label %bb.c, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i3.i.i.i.i.i.i

bb.c:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i.i.i.i.i.i
  %i.ad = getelementptr inbounds nuw i8, ptr %i.k, i64 40
  %i.ae = load i64, ptr %i.ad, align 8, !tbaa !101 ; 2 uses
  %i.af = icmp ult i64 %i.ae, 16
  tail call void @llvm.assume(i1 %i.af)
  %i.ag = add nuw nsw i64 %i.ae, 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.z, ptr noundef nonnull align 8 dereferenceable(1) %i.ab, i64 %i.ag, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i3.i.i.i.i.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i.i.i.i.i.i
  store ptr %i.aa, ptr %i.x, align 8, !tbaa !105
  %i.ah = load i64, ptr %i.ab, align 8, !tbaa !34
  store i64 %i.ah, ptr %i.z, align 8, !tbaa !34
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i3.i.i.i.i.i.i, %bb.c
  %i.ai = getelementptr inbounds nuw i8, ptr %i.k, i64 40 ; 2 uses
  %i.aj = load i64, ptr %i.ai, align 8, !tbaa !101
  %i.ak = getelementptr inbounds nuw i8, ptr %i.i, i64 40
  store i64 %i.aj, ptr %i.ak, align 8, !tbaa !101
  store ptr %i.ab, ptr %i.y, align 8, !tbaa !105
  store i64 0, ptr %i.ai, align 8, !tbaa !101
  store i8 0, ptr %i.ab, align 8, !tbaa !34
  %i.al = load ptr, ptr %i.k, align 8, !tbaa !105 ; 2 uses
  %i.am = icmp eq ptr %i.al, %i.n
  br i1 %i.am, label %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10map_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES9_St4lessIS9_ESaISt4pairIKS9_S9_EELi256ELb0EEEE8transferEmmPSH_PSF_.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i.i.i.i.i.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i.i.i
  %i.an = load i64, ptr %i.n, align 8, !tbaa !34
  %i.ao = add i64 %i.an, 1
  tail call void @_ZdlPvm(ptr noundef %i.al, i64 noundef %i.ao) #42
  br label %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10map_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES9_St4lessIS9_ESaISt4pairIKS9_S9_EELi256ELb0EEEE8transferEmmPSH_PSF_.exit

_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10map_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES9_St4lessIS9_ESaISt4pairIKS9_S9_EELi256ELb0EEEE8transferEmmPSH_PSF_.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i.i.i.i.i.i.i
  %i.ap = zext i8 %1 to i32                       ; 3 uses
  %i.aq = add nsw i32 %i.ap, -1                   ; 3 uses
  %i.ar = sext i32 %i.aq to i64                   ; 2 uses
  %i.as = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 5 uses
  %.idx.i = shl nuw nsw i64 %i.ar, 6
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 %.idx.i
  %.not13.i = icmp eq i32 %i.aq, 0
  br i1 %.not13.i, label %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10map_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES9_St4lessIS9_ESaISt4pairIKS9_S9_EELi256ELb0EEEE10transfer_nEmmmPSH_PSF_.exit, label %.lr.ph.preheader.i

.lr.ph.preheader.i:                               ; preds = %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10map_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES9_St4lessIS9_ESaISt4pairIKS9_S9_EELi256ELb0EEEE8transferEmmPSH_PSF_.exit
  %i.au = load i8, ptr %i.a, align 2, !tbaa !34
  %i.av = zext i8 %i.au to i64
  %i.aw = getelementptr inbounds nuw [64 x i8], ptr %i.h, i64 %i.av
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10map_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES9_St4lessIS9_ESaISt4pairIKS9_S9_EELi256ELb0EEEE8transferEPNS1_13map_slot_typeIS9_S9_EESK_PSF_.exit.i, %.lr.ph.preheader.i
  %.015.i.pn = phi ptr [ %.015.i, %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10map_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES9_St4lessIS9_ESaISt4pairIKS9_S9_EELi256ELb0EEEE8transferEPNS1_13map_slot_typeIS9_S9_EESK_PSF_.exit.i ], [ %i.aw, %.lr.ph.preheader.i ] ; 6 uses
  %.01214.i = phi ptr [ %i.cb, %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10map_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES9_St4lessIS9_ESaISt4pairIKS9_S9_EELi256ELb0EEEE8transferEPNS1_13map_slot_typeIS9_S9_EESK_PSF_.exit.i ], [ %i.as, %.lr.ph.preheader.i ] ; 11 uses
  %.015.i = getelementptr inbounds nuw i8, ptr %.015.i.pn, i64 64 ; 3 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %.015.i.pn, i64 80 ; 3 uses
  store ptr %i.ax, ptr %.015.i, align 8, !tbaa !132
  %i.ay = load ptr, ptr %.01214.i, align 8, !tbaa !105 ; 2 uses
  %i.az = getelementptr inbounds nuw i8, ptr %.01214.i, i64 16 ; 7 uses
  %i.ba = icmp eq ptr %i.ay, %i.az
  br i1 %i.ba, label %bb.d, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i44

bb.d:                                             ; preds = %.lr.ph.i
  %i.bb = getelementptr inbounds nuw i8, ptr %.01214.i, i64 8
  %i.bc = load i64, ptr %i.bb, align 8, !tbaa !101 ; 2 uses
  %i.bd = icmp ult i64 %i.bc, 16
  tail call void @llvm.assume(i1 %i.bd)
  %i.be = add nuw nsw i64 %i.bc, 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.ax, ptr noundef nonnull align 8 dereferenceable(1) %i.az, i64 %i.be, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i.i.i.i.i.i45

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i44: ; preds = %.lr.ph.i
  store ptr %i.ay, ptr %.015.i, align 8, !tbaa !105
  %i.bf = load i64, ptr %i.az, align 8, !tbaa !34
  store i64 %i.bf, ptr %i.ax, align 8, !tbaa !34
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i.i.i.i.i.i45

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i.i.i.i.i.i45: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i44, %bb.d
  %i.bg = getelementptr inbounds nuw i8, ptr %.01214.i, i64 8 ; 2 uses
  %i.bh = load i64, ptr %i.bg, align 8, !tbaa !101
  %i.bi = getelementptr inbounds nuw i8, ptr %.015.i.pn, i64 72
  store i64 %i.bh, ptr %i.bi, align 8, !tbaa !101
  store ptr %i.az, ptr %.01214.i, align 8, !tbaa !105
  store i64 0, ptr %i.bg, align 8, !tbaa !101
  store i8 0, ptr %i.az, align 8, !tbaa !34
  %i.bj = getelementptr inbounds nuw i8, ptr %.015.i.pn, i64 96 ; 2 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %.01214.i, i64 32 ; 2 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %.015.i.pn, i64 112 ; 3 uses
  store ptr %i.bl, ptr %i.bj, align 8, !tbaa !132
  %i.bm = load ptr, ptr %i.bk, align 8, !tbaa !105 ; 2 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %.01214.i, i64 48 ; 5 uses
  %i.bo = icmp eq ptr %i.bm, %i.bn
  br i1 %i.bo, label %bb.e, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i3.i.i.i.i.i.i46

bb.e:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i.i.i.i.i.i45
  %i.bp = getelementptr inbounds nuw i8, ptr %.01214.i, i64 40
  %i.bq = load i64, ptr %i.bp, align 8, !tbaa !101 ; 2 uses
  %i.br = icmp ult i64 %i.bq, 16
  tail call void @llvm.assume(i1 %i.br)
  %i.bs = add nuw nsw i64 %i.bq, 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.bl, ptr noundef nonnull align 8 dereferenceable(1) %i.bn, i64 %i.bs, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i.i.i47

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i3.i.i.i.i.i.i46: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i.i.i.i.i.i45
  store ptr %i.bm, ptr %i.bj, align 8, !tbaa !105
  %i.bt = load i64, ptr %i.bn, align 8, !tbaa !34
  store i64 %i.bt, ptr %i.bl, align 8, !tbaa !34
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i.i.i47

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i.i.i47: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i3.i.i.i.i.i.i46, %bb.e
  %i.bu = getelementptr inbounds nuw i8, ptr %.01214.i, i64 40 ; 2 uses
  %i.bv = load i64, ptr %i.bu, align 8, !tbaa !101
  %i.bw = getelementptr inbounds nuw i8, ptr %.015.i.pn, i64 104
  store i64 %i.bv, ptr %i.bw, align 8, !tbaa !101
  store ptr %i.bn, ptr %i.bk, align 8, !tbaa !105
  store i64 0, ptr %i.bu, align 8, !tbaa !101
  store i8 0, ptr %i.bn, align 8, !tbaa !34
  %i.bx = load ptr, ptr %.01214.i, align 8, !tbaa !105 ; 2 uses
  %i.by = icmp eq ptr %i.bx, %i.az
  br i1 %i.by, label %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10map_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES9_St4lessIS9_ESaISt4pairIKS9_S9_EELi256ELb0EEEE8transferEPNS1_13map_slot_typeIS9_S9_EESK_PSF_.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i.i.i.i.i.i.i48

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i.i.i.i.i.i.i48: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i.i.i47
  %i.bz = load i64, ptr %i.az, align 8, !tbaa !34
  %i.ca = add i64 %i.bz, 1
  tail call void @_ZdlPvm(ptr noundef %i.bx, i64 noundef %i.ca) #42
  br label %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10map_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES9_St4lessIS9_ESaISt4pairIKS9_S9_EELi256ELb0EEEE8transferEPNS1_13map_slot_typeIS9_S9_EESK_PSF_.exit.i

_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10map_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES9_St4lessIS9_ESaISt4pairIKS9_S9_EELi256ELb0EEEE8transferEPNS1_13map_slot_typeIS9_S9_EESK_PSF_.exit.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i.i.i47, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i.i.i.i.i.i.i48
  %i.cb = getelementptr inbounds nuw i8, ptr %.01214.i, i64 64 ; 2 uses
  %.not.i = icmp eq ptr %i.cb, %i.at
  br i1 %.not.i, label %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10map_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES9_St4lessIS9_ESaISt4pairIKS9_S9_EELi256ELb0EEEE10transfer_nEmmmPSH_PSF_.exit, label %.lr.ph.i, !llvm.loop !957

_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10map_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES9_St4lessIS9_ESaISt4pairIKS9_S9_EELi256ELb0EEEE10transfer_nEmmmPSH_PSF_.exit: ; preds = %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10map_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES9_St4lessIS9_ESaISt4pairIKS9_S9_EELi256ELb0EEEE8transferEPNS1_13map_slot_typeIS9_S9_EESK_PSF_.exit.i, %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10map_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES9_St4lessIS9_ESaISt4pairIKS9_S9_EELi256ELb0EEEE8transferEmmPSH_PSF_.exit
  %i.cc = load ptr, ptr %0, align 8, !tbaa !128
  %i.cd = load i8, ptr %i.d, align 8, !tbaa !34
  %i.ce = zext i8 %i.cd to i64
  %i.cf = getelementptr inbounds nuw i8, ptr %i.cc, i64 16
  %i.cg = getelementptr inbounds nuw [64 x i8], ptr %i.cf, i64 %i.ce ; 7 uses
  %i.ch = getelementptr inbounds nuw [64 x i8], ptr %i.as, i64 %i.ar ; 10 uses
end_hunk_1
begin_hunk_2_@_ZN4absl12lts_2025051219functional_internal12InvokeObjectIZNS0_18container_internal12raw_hash_setINS3_17FlatHashMapPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESB_EENS3_10StringHashENS3_8StringEqESaISt4pairIKSB_SB_EEE13destroy_slotsEvEUlPKNS3_6ctrl_tEPvE_vJSM_SN_EEET0_NS1_7VoidPtrEDpNS1_8ForwardTIT1_E4typeE
define linkonce_odr hidden void @_ZN4absl12lts_2025051219functional_internal12InvokeObjectIZNS0_18container_internal12raw_hash_setINS3_17FlatHashMapPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESB_EENS3_10StringHashENS3_8StringEqESaISt4pairIKSB_SB_EEE13destroy_slotsEvEUlPKNS3_6ctrl_tEPvE_vJSM_SN_EEET0_NS1_7VoidPtrEDpNS1_8ForwardTIT1_E4typeE(ptr %0, ptr noundef %1, ptr noundef %2) #7 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !105  ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 48 ; 2 uses
  %i.d = icmp eq ptr %i.b, %i.c
  br i1 %i.d, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i.i.i.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i.i.i.i: ; preds = %bb.a
  %i.e = load i64, ptr %i.c, align 8, !tbaa !34
  %i.f = add i64 %i.e, 1
  tail call void @_ZdlPvm(ptr noundef %i.b, i64 noundef %i.f) #42
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i.i.i.i.i.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i.i.i.i.i.i.i: ; preds = %bb.a, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i.i.i.i
  %i.g = load ptr, ptr %2, align 8, !tbaa !105    ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.i = icmp eq ptr %i.g, %i.h
  br i1 %i.i, label %_ZSt6invokeIRKZN4absl12lts_2025051218container_internal12raw_hash_setINS2_17FlatHashMapPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESA_EENS2_10StringHashENS2_8StringEqESaISt4pairIKSA_SA_EEE13destroy_slotsEvEUlPKNS2_6ctrl_tEPvE_JSL_SM_EENSt13invoke_resultIT_JDpT0_EE4typeEOSR_DpOSS_.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i.i.i.i.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i.i.i.i.i.i.i.i.i.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i.i.i.i.i.i.i
  %i.j = load i64, ptr %i.h, align 8, !tbaa !34
  %i.k = add i64 %i.j, 1
  tail call void @_ZdlPvm(ptr noundef %i.g, i64 noundef %i.k) #42
  br label %_ZSt6invokeIRKZN4absl12lts_2025051218container_internal12raw_hash_setINS2_17FlatHashMapPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESA_EENS2_10StringHashENS2_8StringEqESaISt4pairIKSA_SA_EEE13destroy_slotsEvEUlPKNS2_6ctrl_tEPvE_JSL_SM_EENSt13invoke_resultIT_JDpT0_EE4typeEOSR_DpOSS_.exit

_ZSt6invokeIRKZN4absl12lts_2025051218container_internal12raw_hash_setINS2_17FlatHashMapPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESA_EENS2_10StringHashENS2_8StringEqESaISt4pairIKSA_SA_EEE13destroy_slotsEvEUlPKNS2_6ctrl_tEPvE_JSL_SM_EENSt13invoke_resultIT_JDpT0_EE4typeEOSR_DpOSS_.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i.i.i.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i.i.i.i.i.i.i.i.i.i.i
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN4absl12lts_2025051219functional_internal12InvokeObjectIZNS0_18container_internal12raw_hash_setINS3_17FlatHashMapPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6google8protobuf8compiler20CommandLineInterface13GeneratorInfoEEENS3_10StringHashENS3_8StringEqESaISt4pairIKSB_SG_EEE13destroy_slotsEvEUlPKNS3_6ctrl_tEPvE_vJSR_SS_EEET0_NS1_7VoidPtrEDpNS1_8ForwardTIT1_E4typeE(ptr %0, ptr noundef %1, ptr noundef %2) #7 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 104
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !105  ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 120 ; 2 uses
  %i.e = icmp eq ptr %i.c, %i.d
  br i1 %i.e, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i.i.i.i.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i: ; preds = %bb.a
  %i.f = load i64, ptr %i.d, align 8, !tbaa !34
  %i.g = add i64 %i.f, 1
  tail call void @_ZdlPvm(ptr noundef %i.c, i64 noundef %i.g) #42
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i.i.i.i.i.i.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i.i.i.i.i.i.i.i: ; preds = %bb.a, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  %i.h = getelementptr inbounds nuw i8, ptr %2, i64 64
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !105  ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %2, i64 80 ; 2 uses
  %i.k = icmp eq ptr %i.i, %i.j
  br i1 %i.k, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3.i.i.i.i.i.i.i.i.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i.i.i.i.i.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i.i.i.i.i.i.i.i.i.i.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i.i.i.i.i.i.i.i
  %i.l = load i64, ptr %i.j, align 8, !tbaa !34
  %i.m = add i64 %i.l, 1
  tail call void @_ZdlPvm(ptr noundef %i.i, i64 noundef %i.m) #42
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3.i.i.i.i.i.i.i.i.i.i.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3.i.i.i.i.i.i.i.i.i.i.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i.i.i.i.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i.i.i.i.i.i.i.i.i.i.i.i
  %i.n = load ptr, ptr %i.a, align 8, !tbaa !105  ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %2, i64 48 ; 2 uses
  %i.p = icmp eq ptr %i.n, %i.o
  br i1 %i.p, label %_ZN6google8protobuf8compiler20CommandLineInterface13GeneratorInfoD2Ev.exit.i.i.i.i.i.i.i.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4.i.i.i.i.i.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4.i.i.i.i.i.i.i.i.i.i.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3.i.i.i.i.i.i.i.i.i.i.i.i
  %i.q = load i64, ptr %i.o, align 8, !tbaa !34
  %i.r = add i64 %i.q, 1
  tail call void @_ZdlPvm(ptr noundef %i.n, i64 noundef %i.r) #42
  br label %_ZN6google8protobuf8compiler20CommandLineInterface13GeneratorInfoD2Ev.exit.i.i.i.i.i.i.i.i.i.i.i

_ZN6google8protobuf8compiler20CommandLineInterface13GeneratorInfoD2Ev.exit.i.i.i.i.i.i.i.i.i.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3.i.i.i.i.i.i.i.i.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4.i.i.i.i.i.i.i.i.i.i.i.i
  %i.s = load ptr, ptr %2, align 8, !tbaa !105    ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.u = icmp eq ptr %i.s, %i.t
  br i1 %i.u, label %_ZSt6invokeIRKZN4absl12lts_2025051218container_internal12raw_hash_setINS2_17FlatHashMapPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6google8protobuf8compiler20CommandLineInterface13GeneratorInfoEEENS2_10StringHashENS2_8StringEqESaISt4pairIKSA_SF_EEE13destroy_slotsEvEUlPKNS2_6ctrl_tEPvE_JSQ_SR_EENSt13invoke_resultIT_JDpT0_EE4typeEOSW_DpOSX_.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i.i.i.i: ; preds = %_ZN6google8protobuf8compiler20CommandLineInterface13GeneratorInfoD2Ev.exit.i.i.i.i.i.i.i.i.i.i.i
  %i.v = load i64, ptr %i.t, align 8, !tbaa !34
  %i.w = add i64 %i.v, 1
  tail call void @_ZdlPvm(ptr noundef %i.s, i64 noundef %i.w) #42
  br label %_ZSt6invokeIRKZN4absl12lts_2025051218container_internal12raw_hash_setINS2_17FlatHashMapPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6google8protobuf8compiler20CommandLineInterface13GeneratorInfoEEENS2_10StringHashENS2_8StringEqESaISt4pairIKSA_SF_EEE13destroy_slotsEvEUlPKNS2_6ctrl_tEPvE_JSQ_SR_EENSt13invoke_resultIT_JDpT0_EE4typeEOSW_DpOSX_.exit

_ZSt6invokeIRKZN4absl12lts_2025051218container_internal12raw_hash_setINS2_17FlatHashMapPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6google8protobuf8compiler20CommandLineInterface13GeneratorInfoEEENS2_10StringHashENS2_8StringEqESaISt4pairIKSA_SF_EEE13destroy_slotsEvEUlPKNS2_6ctrl_tEPvE_JSQ_SR_EENSt13invoke_resultIT_JDpT0_EE4typeEOSW_DpOSX_.exit: ; preds = %_ZN6google8protobuf8compiler20CommandLineInterface13GeneratorInfoD2Ev.exit.i.i.i.i.i.i.i.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i.i.i.i
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10map_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6google8protobuf8compiler20CommandLineInterface13GeneratorInfoESt4lessIS9_ESaISt4pairIKS9_SE_EELi256ELb0EEEE16clear_and_deleteEPSM_PSK_(ptr noundef %0, ptr noundef %1) local_unnamed_addr #7 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 11 ; 2 uses
  %i.b = load i8, ptr %i.a, align 1, !tbaa !34    ; 2 uses
  %.not94 = icmp eq i8 %i.b, 0
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 10
  %i.d = load i8, ptr %i.c, align 1, !tbaa !34    ; 3 uses
  br i1 %.not94, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.f = zext i8 %i.d to i64
  %i.g = mul nuw nsw i64 %i.f, 136
  %i.h = getelementptr inbounds nuw i8, ptr %i.e, i64 %i.g
  %.not9.i = icmp eq i8 %i.d, 0
  br i1 %.not9.i, label %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10map_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6google8protobuf8compiler20CommandLineInterface13GeneratorInfoESt4lessIS9_ESaISt4pairIKS9_SE_EELi256ELb0EEEE15value_destroy_nEhhPSK_.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.b, %_ZN4absl12lts_2025051218container_internal20common_policy_traitsINS1_15map_slot_policyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6google8protobuf8compiler20CommandLineInterface13GeneratorInfoEEEvE7destroyISaISt4pairIKS9_SE_EEEEDaPT_PNS1_13map_slot_typeIS9_SE_EE.exit.i
  %.010.i = phi ptr [ %i.af, %_ZN4absl12lts_2025051218container_internal20common_policy_traitsINS1_15map_slot_policyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6google8protobuf8compiler20CommandLineInterface13GeneratorInfoEEEvE7destroyISaISt4pairIKS9_SE_EEEEDaPT_PNS1_13map_slot_typeIS9_SE_EE.exit.i ], [ %i.e, %bb.b ] ; 9 uses
  %i.i = getelementptr inbounds nuw i8, ptr %.010.i, i64 32
  %i.j = getelementptr inbounds nuw i8, ptr %.010.i, i64 104
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !105  ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %.010.i, i64 120 ; 2 uses
  %i.m = icmp eq ptr %i.k, %i.l
  br i1 %i.m, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i: ; preds = %.lr.ph.i
  %i.n = load i64, ptr %i.l, align 8, !tbaa !34
  %i.o = add i64 %i.n, 1
  tail call void @_ZdlPvm(ptr noundef %i.k, i64 noundef %i.o) #42
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i: ; preds = %.lr.ph.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i
  %i.p = getelementptr inbounds nuw i8, ptr %.010.i, i64 64
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !105  ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %.010.i, i64 80 ; 2 uses
  %i.s = icmp eq ptr %i.q, %i.r
  br i1 %i.s, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3.i.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i.i.i.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i
  %i.t = load i64, ptr %i.r, align 8, !tbaa !34
  %i.u = add i64 %i.t, 1
  tail call void @_ZdlPvm(ptr noundef %i.q, i64 noundef %i.u) #42
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3.i.i.i.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3.i.i.i.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i.i.i.i.i
  %i.v = load ptr, ptr %i.i, align 8, !tbaa !105  ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %.010.i, i64 48 ; 2 uses
  %i.x = icmp eq ptr %i.v, %i.w
  br i1 %i.x, label %_ZN6google8protobuf8compiler20CommandLineInterface13GeneratorInfoD2Ev.exit.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4.i.i.i.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3.i.i.i.i.i
  %i.y = load i64, ptr %i.w, align 8, !tbaa !34
  %i.z = add i64 %i.y, 1
  tail call void @_ZdlPvm(ptr noundef %i.v, i64 noundef %i.z) #42
  br label %_ZN6google8protobuf8compiler20CommandLineInterface13GeneratorInfoD2Ev.exit.i.i.i.i

_ZN6google8protobuf8compiler20CommandLineInterface13GeneratorInfoD2Ev.exit.i.i.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3.i.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4.i.i.i.i.i
  %i.aa = load ptr, ptr %.010.i, align 8, !tbaa !105 ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %.010.i, i64 16 ; 2 uses
  %i.ac = icmp eq ptr %i.aa, %i.ab
  br i1 %i.ac, label %_ZN4absl12lts_2025051218container_internal20common_policy_traitsINS1_15map_slot_policyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6google8protobuf8compiler20CommandLineInterface13GeneratorInfoEEEvE7destroyISaISt4pairIKS9_SE_EEEEDaPT_PNS1_13map_slot_typeIS9_SE_EE.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i: ; preds = %_ZN6google8protobuf8compiler20CommandLineInterface13GeneratorInfoD2Ev.exit.i.i.i.i
  %i.ad = load i64, ptr %i.ab, align 8, !tbaa !34
  %i.ae = add i64 %i.ad, 1
  tail call void @_ZdlPvm(ptr noundef %i.aa, i64 noundef %i.ae) #42
  br label %_ZN4absl12lts_2025051218container_internal20common_policy_traitsINS1_15map_slot_policyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6google8protobuf8compiler20CommandLineInterface13GeneratorInfoEEEvE7destroyISaISt4pairIKS9_SE_EEEEDaPT_PNS1_13map_slot_typeIS9_SE_EE.exit.i

_ZN4absl12lts_2025051218container_internal20common_policy_traitsINS1_15map_slot_policyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6google8protobuf8compiler20CommandLineInterface13GeneratorInfoEEEvE7destroyISaISt4pairIKS9_SE_EEEEDaPT_PNS1_13map_slot_typeIS9_SE_EE.exit.i: ; preds = %_ZN6google8protobuf8compiler20CommandLineInterface13GeneratorInfoD2Ev.exit.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i
  %i.af = getelementptr inbounds nuw i8, ptr %.010.i, i64 136 ; 2 uses
  %.not.i = icmp eq ptr %i.af, %i.h
  br i1 %.not.i, label %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10map_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6google8protobuf8compiler20CommandLineInterface13GeneratorInfoESt4lessIS9_ESaISt4pairIKS9_SE_EELi256ELb0EEEE15value_destroy_nEhhPSK_.exit.loopexit, label %.lr.ph.i, !llvm.loop !973

_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10map_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6google8protobuf8compiler20CommandLineInterface13GeneratorInfoESt4lessIS9_ESaISt4pairIKS9_SE_EELi256ELb0EEEE15value_destroy_nEhhPSK_.exit.loopexit: ; preds = %_ZN4absl12lts_2025051218container_internal20common_policy_traitsINS1_15map_slot_policyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6google8protobuf8compiler20CommandLineInterface13GeneratorInfoEEEvE7destroyISaISt4pairIKS9_SE_EEEEDaPT_PNS1_13map_slot_typeIS9_SE_EE.exit.i
  %.pre = load i8, ptr %i.a, align 1, !tbaa !34
  br label %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10map_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6google8protobuf8compiler20CommandLineInterface13GeneratorInfoESt4lessIS9_ESaISt4pairIKS9_SE_EELi256ELb0EEEE15value_destroy_nEhhPSK_.exit

_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10map_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6google8protobuf8compiler20CommandLineInterface13GeneratorInfoESt4lessIS9_ESaISt4pairIKS9_SE_EELi256ELb0EEEE15value_destroy_nEhhPSK_.exit: ; preds = %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10map_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6google8protobuf8compiler20CommandLineInterface13GeneratorInfoESt4lessIS9_ESaISt4pairIKS9_SE_EELi256ELb0EEEE15value_destroy_nEhhPSK_.exit.loopexit, %bb.b
  %i.ag = phi i8 [ %.pre, %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10map_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6google8protobuf8compiler20CommandLineInterface13GeneratorInfoESt4lessIS9_ESaISt4pairIKS9_SE_EELi256ELb0EEEE15value_destroy_nEhhPSK_.exit.loopexit ], [ %i.b, %bb.b ] ; 2 uses
  %i.ah = icmp eq i8 %i.ag, 0
  %i.ai = select i1 %i.ah, i8 4, i8 %i.ag
  %i.aj = zext i8 %i.ai to i64
  %i.ak = mul nuw nsw i64 %i.aj, 136
  %i.al = add nuw nsw i64 %i.ak, 16
  br label %.loopexit.sink.split

bb.c:                                             ; preds = %bb.a
  %i.am = icmp eq i8 %i.d, 0
  br i1 %i.am, label %.loopexit.sink.split, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.c
  %i.an = load ptr, ptr %0, align 8, !tbaa !739
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %.lr.ph
  %.049100 = phi ptr [ %i.ap, %.lr.ph ], [ %0, %.lr.ph.preheader ]
  %i.ao = getelementptr inbounds nuw i8, ptr %.049100, i64 560
  %i.ap = load ptr, ptr %i.ao, align 8, !tbaa !739 ; 4 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ap, i64 11
  %i.ar = load i8, ptr %i.aq, align 1, !tbaa !34
  %.not.i55 = icmp eq i8 %i.ar, 0
  br i1 %.not.i55, label %.lr.ph, label %._crit_edge, !llvm.loop !974

._crit_edge:                                      ; preds = %.lr.ph
  %i.as = getelementptr inbounds nuw i8, ptr %i.ap, i64 8
  %i.at = load i8, ptr %i.as, align 1, !tbaa !34
  %i.au = zext i8 %i.at to i64
  %i.av = load ptr, ptr %i.ap, align 8, !tbaa !739
  br label %bb.d

bb.d:                                             ; preds = %.backedge, %._crit_edge
  %.147 = phi i64 [ %i.au, %._crit_edge ], [ %.147.be.in, %.backedge ] ; 2 uses
  %.1 = phi ptr [ %i.av, %._crit_edge ], [ %.1.be, %.backedge ] ; 2 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %.1, i64 560
  %i.ax = getelementptr inbounds nuw [8 x i8], ptr %i.aw, i64 %.147
  %i.ay = load ptr, ptr %i.ax, align 8, !tbaa !739 ; 3 uses
  %i.az = getelementptr inbounds nuw i8, ptr %i.ay, i64 11
  %i.ba = load i8, ptr %i.az, align 1, !tbaa !34
  %.not.i56 = icmp eq i8 %i.ba, 0
  br i1 %.not.i56, label %.lr.ph103, label %bb.e

.lr.ph103:                                        ; preds = %bb.d, %.lr.ph103
  %.150102 = phi ptr [ %i.bc, %.lr.ph103 ], [ %i.ay, %bb.d ]
  %i.bb = getelementptr inbounds nuw i8, ptr %.150102, i64 560
  %i.bc = load ptr, ptr %i.bb, align 8, !tbaa !739 ; 5 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %i.bc, i64 11
  %i.be = load i8, ptr %i.bd, align 1, !tbaa !34
  %.not.i57 = icmp eq i8 %i.be, 0
  br i1 %.not.i57, label %.lr.ph103, label %._crit_edge104, !llvm.loop !975

._crit_edge104:                                   ; preds = %.lr.ph103
  %i.bf = getelementptr inbounds nuw i8, ptr %i.bc, i64 8
  %i.bg = load i8, ptr %i.bf, align 1, !tbaa !34
  %i.bh = zext i8 %i.bg to i64
  %i.bi = load ptr, ptr %i.bc, align 8, !tbaa !739
  br label %bb.e

bb.e:                                             ; preds = %._crit_edge104, %bb.d
  %.251 = phi ptr [ %i.bc, %._crit_edge104 ], [ %i.ay, %bb.d ] ; 4 uses
  %.248 = phi i64 [ %i.bh, %._crit_edge104 ], [ %.147, %bb.d ]
  %.2 = phi ptr [ %i.bi, %._crit_edge104 ], [ %.1, %bb.d ] ; 3 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %.251, i64 10
  %i.bk = load i8, ptr %i.bj, align 1, !tbaa !34  ; 2 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %.251, i64 16 ; 2 uses
  %i.bm = zext i8 %i.bk to i64
  %i.bn = mul nuw nsw i64 %i.bm, 136
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bl, i64 %i.bn
  %.not9.i58 = icmp eq i8 %i.bk, 0
  br i1 %.not9.i58, label %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10map_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6google8protobuf8compiler20CommandLineInterface13GeneratorInfoESt4lessIS9_ESaISt4pairIKS9_SE_EELi256ELb0EEEE15value_destroy_nEhhPSK_.exit75, label %.lr.ph.i60

.lr.ph.i60:                                       ; preds = %bb.e, %_ZN4absl12lts_2025051218container_internal20common_policy_traitsINS1_15map_slot_policyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6google8protobuf8compiler20CommandLineInterface13GeneratorInfoEEEvE7destroyISaISt4pairIKS9_SE_EEEEDaPT_PNS1_13map_slot_typeIS9_SE_EE.exit.i69
  %.010.i61 = phi ptr [ %i.cm, %_ZN4absl12lts_2025051218container_internal20common_policy_traitsINS1_15map_slot_policyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6google8protobuf8compiler20CommandLineInterface13GeneratorInfoEEEvE7destroyISaISt4pairIKS9_SE_EEEEDaPT_PNS1_13map_slot_typeIS9_SE_EE.exit.i69 ], [ %i.bl, %bb.e ] ; 9 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %.010.i61, i64 32
  %i.bq = getelementptr inbounds nuw i8, ptr %.010.i61, i64 104
  %i.br = load ptr, ptr %i.bq, align 8, !tbaa !105 ; 2 uses
  %i.bs = getelementptr inbounds nuw i8, ptr %.010.i61, i64 120 ; 2 uses
  %i.bt = icmp eq ptr %i.br, %i.bs
  br i1 %i.bt, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i63, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i62

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i62: ; preds = %.lr.ph.i60
  %i.bu = load i64, ptr %i.bs, align 8, !tbaa !34
  %i.bv = add i64 %i.bu, 1
  tail call void @_ZdlPvm(ptr noundef %i.br, i64 noundef %i.bv) #42
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i63

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i63: ; preds = %.lr.ph.i60, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i62
  %i.bw = getelementptr inbounds nuw i8, ptr %.010.i61, i64 64
  %i.bx = load ptr, ptr %i.bw, align 8, !tbaa !105 ; 2 uses
  %i.by = getelementptr inbounds nuw i8, ptr %.010.i61, i64 80 ; 2 uses
  %i.bz = icmp eq ptr %i.bx, %i.by
  br i1 %i.bz, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3.i.i.i.i.i65, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i.i.i.i.i64

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i.i.i.i.i64: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i63
  %i.ca = load i64, ptr %i.by, align 8, !tbaa !34
  %i.cb = add i64 %i.ca, 1
  tail call void @_ZdlPvm(ptr noundef %i.bx, i64 noundef %i.cb) #42
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3.i.i.i.i.i65

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3.i.i.i.i.i65: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i63, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i.i.i.i.i64
  %i.cc = load ptr, ptr %i.bp, align 8, !tbaa !105 ; 2 uses
  %i.cd = getelementptr inbounds nuw i8, ptr %.010.i61, i64 48 ; 2 uses
  %i.ce = icmp eq ptr %i.cc, %i.cd
  br i1 %i.ce, label %_ZN6google8protobuf8compiler20CommandLineInterface13GeneratorInfoD2Ev.exit.i.i.i.i67, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4.i.i.i.i.i66

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4.i.i.i.i.i66: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3.i.i.i.i.i65
  %i.cf = load i64, ptr %i.cd, align 8, !tbaa !34
  %i.cg = add i64 %i.cf, 1
  tail call void @_ZdlPvm(ptr noundef %i.cc, i64 noundef %i.cg) #42
  br label %_ZN6google8protobuf8compiler20CommandLineInterface13GeneratorInfoD2Ev.exit.i.i.i.i67

_ZN6google8protobuf8compiler20CommandLineInterface13GeneratorInfoD2Ev.exit.i.i.i.i67: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3.i.i.i.i.i65, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4.i.i.i.i.i66
  %i.ch = load ptr, ptr %.010.i61, align 8, !tbaa !105 ; 2 uses
  %i.ci = getelementptr inbounds nuw i8, ptr %.010.i61, i64 16 ; 2 uses
  %i.cj = icmp eq ptr %i.ch, %i.ci
  br i1 %i.cj, label %_ZN4absl12lts_2025051218container_internal20common_policy_traitsINS1_15map_slot_policyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6google8protobuf8compiler20CommandLineInterface13GeneratorInfoEEEvE7destroyISaISt4pairIKS9_SE_EEEEDaPT_PNS1_13map_slot_typeIS9_SE_EE.exit.i69, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i68

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i68: ; preds = %_ZN6google8protobuf8compiler20CommandLineInterface13GeneratorInfoD2Ev.exit.i.i.i.i67
  %i.ck = load i64, ptr %i.ci, align 8, !tbaa !34
  %i.cl = add i64 %i.ck, 1
  tail call void @_ZdlPvm(ptr noundef %i.ch, i64 noundef %i.cl) #42
  br label %_ZN4absl12lts_2025051218container_internal20common_policy_traitsINS1_15map_slot_policyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6google8protobuf8compiler20CommandLineInterface13GeneratorInfoEEEvE7destroyISaISt4pairIKS9_SE_EEEEDaPT_PNS1_13map_slot_typeIS9_SE_EE.exit.i69

_ZN4absl12lts_2025051218container_internal20common_policy_traitsINS1_15map_slot_policyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6google8protobuf8compiler20CommandLineInterface13GeneratorInfoEEEvE7destroyISaISt4pairIKS9_SE_EEEEDaPT_PNS1_13map_slot_typeIS9_SE_EE.exit.i69: ; preds = %_ZN6google8protobuf8compiler20CommandLineInterface13GeneratorInfoD2Ev.exit.i.i.i.i67, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i68
  %i.cm = getelementptr inbounds nuw i8, ptr %.010.i61, i64 136 ; 2 uses
  %.not.i70 = icmp eq ptr %i.cm, %i.bo
  br i1 %.not.i70, label %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10map_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6google8protobuf8compiler20CommandLineInterface13GeneratorInfoESt4lessIS9_ESaISt4pairIKS9_SE_EELi256ELb0EEEE15value_destroy_nEhhPSK_.exit75, label %.lr.ph.i60, !llvm.loop !973

_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10map_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6google8protobuf8compiler20CommandLineInterface13GeneratorInfoESt4lessIS9_ESaISt4pairIKS9_SE_EELi256ELb0EEEE15value_destroy_nEhhPSK_.exit75: ; preds = %_ZN4absl12lts_2025051218container_internal20common_policy_traitsINS1_15map_slot_policyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6google8protobuf8compiler20CommandLineInterface13GeneratorInfoEEEvE7destroyISaISt4pairIKS9_SE_EEEEDaPT_PNS1_13map_slot_typeIS9_SE_EE.exit.i69, %bb.e
  %i.cn = getelementptr inbounds nuw i8, ptr %.251, i64 11
  %i.co = load i8, ptr %i.cn, align 1, !tbaa !34  ; 2 uses
  %i.cp = icmp eq i8 %i.co, 0
  %i.cq = select i1 %i.cp, i8 4, i8 %i.co
  %i.cr = zext i8 %i.cq to i64
  %i.cs = mul nuw nsw i64 %i.cr, 136
  %i.ct = add nuw nsw i64 %i.cs, 16
  tail call void @_ZdlPvm(ptr noundef nonnull %.251, i64 noundef %i.ct) #42
  %2 = add nuw nsw i64 %.248, 1                   ; 2 uses
  %i.cu = getelementptr inbounds nuw i8, ptr %.2, i64 10
  %i.cv = load i8, ptr %i.cu, align 1, !tbaa !34  ; 2 uses
  %i.cw = zext i8 %i.cv to i64
  %.not = icmp ugt i64 %2, %i.cw
  br i1 %.not, label %.preheader95, label %.backedge

.backedge:                                        ; preds = %bb.f, %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10map_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6google8protobuf8compiler20CommandLineInterface13GeneratorInfoESt4lessIS9_ESaISt4pairIKS9_SE_EELi256ELb0EEEE15value_destroy_nEhhPSK_.exit75
  %.147.be.in = phi i64 [ %2, %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10map_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6google8protobuf8compiler20CommandLineInterface13GeneratorInfoESt4lessIS9_ESaISt4pairIKS9_SE_EELi256ELb0EEEE15value_destroy_nEhhPSK_.exit75 ], [ %4, %bb.f ]
  %.1.be = phi ptr [ %.2, %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10map_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6google8protobuf8compiler20CommandLineInterface13GeneratorInfoESt4lessIS9_ESaISt4pairIKS9_SE_EELi256ELb0EEEE15value_destroy_nEhhPSK_.exit75 ], [ %i.da, %bb.f ]
  br label %bb.d, !llvm.loop !976

.preheader95:                                     ; preds = %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10map_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6google8protobuf8compiler20CommandLineInterface13GeneratorInfoESt4lessIS9_ESaISt4pairIKS9_SE_EELi256ELb0EEEE15value_destroy_nEhhPSK_.exit75, %bb.f
  %i.cx = phi i8 [ %i.ef, %bb.f ], [ %i.cv, %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10map_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6google8protobuf8compiler20CommandLineInterface13GeneratorInfoESt4lessIS9_ESaISt4pairIKS9_SE_EELi256ELb0EEEE15value_destroy_nEhhPSK_.exit75 ] ; 2 uses
  %.3 = phi ptr [ %i.da, %bb.f ], [ %.2, %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10map_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6google8protobuf8compiler20CommandLineInterface13GeneratorInfoESt4lessIS9_ESaISt4pairIKS9_SE_EELi256ELb0EEEE15value_destroy_nEhhPSK_.exit75 ] ; 4 uses
  %i.cy = getelementptr inbounds nuw i8, ptr %.3, i64 8
  %i.cz = load i8, ptr %i.cy, align 1, !tbaa !34
  %i.da = load ptr, ptr %.3, align 8, !tbaa !739  ; 4 uses
  %i.db = getelementptr inbounds nuw i8, ptr %.3, i64 16 ; 2 uses
  %i.dc = zext i8 %i.cx to i64
  %i.dd = mul nuw nsw i64 %i.dc, 136
  %i.de = getelementptr inbounds nuw i8, ptr %i.db, i64 %i.dd
  %.not9.i76 = icmp eq i8 %i.cx, 0
  br i1 %.not9.i76, label %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10map_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6google8protobuf8compiler20CommandLineInterface13GeneratorInfoESt4lessIS9_ESaISt4pairIKS9_SE_EELi256ELb0EEEE15value_destroy_nEhhPSK_.exit93, label %.lr.ph.i78

.lr.ph.i78:                                       ; preds = %.preheader95, %_ZN4absl12lts_2025051218container_internal20common_policy_traitsINS1_15map_slot_policyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6google8protobuf8compiler20CommandLineInterface13GeneratorInfoEEEvE7destroyISaISt4pairIKS9_SE_EEEEDaPT_PNS1_13map_slot_typeIS9_SE_EE.exit.i87
  %.010.i79 = phi ptr [ %i.ec, %_ZN4absl12lts_2025051218container_internal20common_policy_traitsINS1_15map_slot_policyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6google8protobuf8compiler20CommandLineInterface13GeneratorInfoEEEvE7destroyISaISt4pairIKS9_SE_EEEEDaPT_PNS1_13map_slot_typeIS9_SE_EE.exit.i87 ], [ %i.db, %.preheader95 ] ; 9 uses
  %i.df = getelementptr inbounds nuw i8, ptr %.010.i79, i64 32
  %i.dg = getelementptr inbounds nuw i8, ptr %.010.i79, i64 104
  %i.dh = load ptr, ptr %i.dg, align 8, !tbaa !105 ; 2 uses
  %i.di = getelementptr inbounds nuw i8, ptr %.010.i79, i64 120 ; 2 uses
  %i.dj = icmp eq ptr %i.dh, %i.di
  br i1 %i.dj, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i81, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i80

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i80: ; preds = %.lr.ph.i78
  %i.dk = load i64, ptr %i.di, align 8, !tbaa !34
  %i.dl = add i64 %i.dk, 1
  tail call void @_ZdlPvm(ptr noundef %i.dh, i64 noundef %i.dl) #42
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i81

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i81: ; preds = %.lr.ph.i78, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i80
  %i.dm = getelementptr inbounds nuw i8, ptr %.010.i79, i64 64
  %i.dn = load ptr, ptr %i.dm, align 8, !tbaa !105 ; 2 uses
  %i.do = getelementptr inbounds nuw i8, ptr %.010.i79, i64 80 ; 2 uses
  %i.dp = icmp eq ptr %i.dn, %i.do
  br i1 %i.dp, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3.i.i.i.i.i83, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i.i.i.i.i82

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i.i.i.i.i82: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i81
  %i.dq = load i64, ptr %i.do, align 8, !tbaa !34
  %i.dr = add i64 %i.dq, 1
  tail call void @_ZdlPvm(ptr noundef %i.dn, i64 noundef %i.dr) #42
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3.i.i.i.i.i83

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3.i.i.i.i.i83: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i81, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i.i.i.i.i82
  %i.ds = load ptr, ptr %i.df, align 8, !tbaa !105 ; 2 uses
  %i.dt = getelementptr inbounds nuw i8, ptr %.010.i79, i64 48 ; 2 uses
  %i.du = icmp eq ptr %i.ds, %i.dt
  br i1 %i.du, label %_ZN6google8protobuf8compiler20CommandLineInterface13GeneratorInfoD2Ev.exit.i.i.i.i85, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4.i.i.i.i.i84

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4.i.i.i.i.i84: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3.i.i.i.i.i83
  %i.dv = load i64, ptr %i.dt, align 8, !tbaa !34
  %i.dw = add i64 %i.dv, 1
  tail call void @_ZdlPvm(ptr noundef %i.ds, i64 noundef %i.dw) #42
  br label %_ZN6google8protobuf8compiler20CommandLineInterface13GeneratorInfoD2Ev.exit.i.i.i.i85

_ZN6google8protobuf8compiler20CommandLineInterface13GeneratorInfoD2Ev.exit.i.i.i.i85: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3.i.i.i.i.i83, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4.i.i.i.i.i84
  %i.dx = load ptr, ptr %.010.i79, align 8, !tbaa !105 ; 2 uses
  %i.dy = getelementptr inbounds nuw i8, ptr %.010.i79, i64 16 ; 2 uses
  %i.dz = icmp eq ptr %i.dx, %i.dy
  br i1 %i.dz, label %_ZN4absl12lts_2025051218container_internal20common_policy_traitsINS1_15map_slot_policyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6google8protobuf8compiler20CommandLineInterface13GeneratorInfoEEEvE7destroyISaISt4pairIKS9_SE_EEEEDaPT_PNS1_13map_slot_typeIS9_SE_EE.exit.i87, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i86

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i86: ; preds = %_ZN6google8protobuf8compiler20CommandLineInterface13GeneratorInfoD2Ev.exit.i.i.i.i85
  %i.ea = load i64, ptr %i.dy, align 8, !tbaa !34
  %i.eb = add i64 %i.ea, 1
  tail call void @_ZdlPvm(ptr noundef %i.dx, i64 noundef %i.eb) #42
  br label %_ZN4absl12lts_2025051218container_internal20common_policy_traitsINS1_15map_slot_policyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6google8protobuf8compiler20CommandLineInterface13GeneratorInfoEEEvE7destroyISaISt4pairIKS9_SE_EEEEDaPT_PNS1_13map_slot_typeIS9_SE_EE.exit.i87

_ZN4absl12lts_2025051218container_internal20common_policy_traitsINS1_15map_slot_policyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6google8protobuf8compiler20CommandLineInterface13GeneratorInfoEEEvE7destroyISaISt4pairIKS9_SE_EEEEDaPT_PNS1_13map_slot_typeIS9_SE_EE.exit.i87: ; preds = %_ZN6google8protobuf8compiler20CommandLineInterface13GeneratorInfoD2Ev.exit.i.i.i.i85, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i86
  %i.ec = getelementptr inbounds nuw i8, ptr %.010.i79, i64 136 ; 2 uses
  %.not.i88 = icmp eq ptr %i.ec, %i.de
  br i1 %.not.i88, label %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10map_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6google8protobuf8compiler20CommandLineInterface13GeneratorInfoESt4lessIS9_ESaISt4pairIKS9_SE_EELi256ELb0EEEE15value_destroy_nEhhPSK_.exit93, label %.lr.ph.i78, !llvm.loop !973

_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10map_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6google8protobuf8compiler20CommandLineInterface13GeneratorInfoESt4lessIS9_ESaISt4pairIKS9_SE_EELi256ELb0EEEE15value_destroy_nEhhPSK_.exit93: ; preds = %_ZN4absl12lts_2025051218container_internal20common_policy_traitsINS1_15map_slot_policyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6google8protobuf8compiler20CommandLineInterface13GeneratorInfoEEEvE7destroyISaISt4pairIKS9_SE_EEEEDaPT_PNS1_13map_slot_typeIS9_SE_EE.exit.i87, %.preheader95
  tail call void @_ZdlPvm(ptr noundef nonnull %.3, i64 noundef 600) #42
  %i.ed = icmp eq ptr %i.da, %i.an
  br i1 %i.ed, label %.loopexit, label %bb.f

bb.f:                                             ; preds = %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10map_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6google8protobuf8compiler20CommandLineInterface13GeneratorInfoESt4lessIS9_ESaISt4pairIKS9_SE_EELi256ELb0EEEE15value_destroy_nEhhPSK_.exit93
  %3 = zext i8 %i.cz to i64
  %4 = add nuw nsw i64 %3, 1                      ; 2 uses
  %i.ee = getelementptr inbounds nuw i8, ptr %i.da, i64 10
  %i.ef = load i8, ptr %i.ee, align 1, !tbaa !34  ; 2 uses
  %5 = zext i8 %i.ef to i64
  %6 = icmp samesign ugt i64 %4, %5
  br i1 %6, label %.preheader95, label %.backedge, !llvm.loop !977

.loopexit.sink.split:                             ; preds = %bb.c, %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10map_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6google8protobuf8compiler20CommandLineInterface13GeneratorInfoESt4lessIS9_ESaISt4pairIKS9_SE_EELi256ELb0EEEE15value_destroy_nEhhPSK_.exit
  %.sink = phi i64 [ %i.al, %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10map_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6google8protobuf8compiler20CommandLineInterface13GeneratorInfoESt4lessIS9_ESaISt4pairIKS9_SE_EELi256ELb0EEEE15value_destroy_nEhhPSK_.exit ], [ 600, %bb.c ]
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef %.sink) #42
  br label %.loopexit

.loopexit:                                        ; preds = %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10map_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6google8protobuf8compiler20CommandLineInterface13GeneratorInfoESt4lessIS9_ESaISt4pairIKS9_SE_EELi256ELb0EEEE15value_destroy_nEhhPSK_.exit93, %.loopexit.sink.split
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyIPKN6google8protobuf10DescriptorEbEENS1_6HashEqIS8_vE4HashENSB_2EqESaISt4pairIKS8_bEEED2Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %0) unnamed_addr #14 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load i64, ptr %0, align 8, !tbaa !7      ; 3 uses
  %i.b = icmp ne i64 %i.a, 0
  tail call void @llvm.assume(i1 %i.b)
  %i.c = icmp ult i64 %i.a, 2
  br i1 %i.c, label %_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyIPKN6google8protobuf10DescriptorEbEENS1_6HashEqIS8_vE4HashENSB_2EqESaISt4pairIKS8_bEEE15destructor_implEv.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !34
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.g = load i64, ptr %i.f, align 8, !tbaa !26
  %i.h = and i64 %i.g, 65536
  %i.i = icmp ne i64 %i.h, 0
  invoke void @_ZN4absl12lts_2025051218container_internal22DeallocateBackingArrayILm8ESaIcEEEvPvmPNS1_6ctrl_tEmmb(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %i.a, ptr noundef %i.e, i64 noundef 16, i64 noundef 8, i1 noundef zeroext %i.i)
          to label %_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyIPKN6google8protobuf10DescriptorEbEENS1_6HashEqIS8_vE4HashENSB_2EqESaISt4pairIKS8_bEEE15destructor_implEv.exit unwind label %bb.c

_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyIPKN6google8protobuf10DescriptorEbEENS1_6HashEqIS8_vE4HashENSB_2EqESaISt4pairIKS8_bEEE15destructor_implEv.exit: ; preds = %bb.a, %bb.b
  ret void

bb.c:                                             ; preds = %bb.b
  %i.j = landingpad { ptr, i32 }
          catch ptr null
  %i.k = extractvalue { ptr, i32 } %i.j, 0
  tail call void @__clang_call_terminate(ptr %i.k) #39
  unreachable
}

; Function Attrs: mustprogress uwtable
define internal fastcc void @"_ZN6google8protobuf8internal9VisitImplINS1_11VisitorImplIZNS0_8compiler12_GLOBAL__N_121FindDebugRedactMarkerB5cxx11ERKNS0_14FileDescriptorEE3$_0EEE5VisitIJEEEvRKNS0_10DescriptorEDpRT_"(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(160) %1) unnamed_addr #7 align 2 {
.preheader40:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.b = load i32, ptr %i.a, align 8, !tbaa !694
  %i.c = icmp sgt i32 %i.b, 0
  br i1 %i.c, label %.lr.ph, label %.preheader38

.lr.ph:                                           ; preds = %.preheader40
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 64
  br label %bb.a

.preheader38:                                     ; preds = %bb.a, %.preheader40
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 136 ; 2 uses
  %i.f = load i32, ptr %i.e, align 8, !tbaa !714
  %i.g = icmp sgt i32 %i.f, 0
  br i1 %i.g, label %.lr.ph43, label %.preheader37

.lr.ph43:                                         ; preds = %.preheader38
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 80
  br label %bb.b

bb.a:                                             ; preds = %.lr.ph, %bb.a
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.a ] ; 2 uses
  %i.i = load ptr, ptr %i.d, align 8, !tbaa !703
  %i.j = getelementptr inbounds nuw [88 x i8], ptr %i.i, i64 %indvars.iv
  tail call fastcc void @"_ZN6google8protobuf8internal9VisitImplINS1_11VisitorImplIZNS0_8compiler12_GLOBAL__N_121FindDebugRedactMarkerB5cxx11ERKNS0_14FileDescriptorEE3$_0EEE5VisitIJEEEvRKNS0_15FieldDescriptorEDpRT_"(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(88) %i.j)
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.k = load i32, ptr %i.a, align 8, !tbaa !694
  %i.l = sext i32 %i.k to i64
  %i.m = icmp slt i64 %indvars.iv.next, %i.l
  br i1 %i.m, label %bb.a, label %.preheader38, !llvm.loop !978

.preheader37:                                     ; preds = %bb.b, %.preheader38
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 148 ; 2 uses
  %i.o = load i32, ptr %i.n, align 4, !tbaa !979
  %i.p = icmp sgt i32 %i.o, 0
  br i1 %i.p, label %.lr.ph45, label %.preheader

.lr.ph45:                                         ; preds = %.preheader37
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 104
  br label %bb.c

bb.b:                                             ; preds = %.lr.ph43, %bb.b
  %indvars.iv47 = phi i64 [ 0, %.lr.ph43 ], [ %indvars.iv.next48, %bb.b ] ; 2 uses
  %i.r = load ptr, ptr %i.h, align 8, !tbaa !717
  %i.s = getelementptr inbounds nuw [160 x i8], ptr %i.r, i64 %indvars.iv47
  tail call fastcc void @"_ZN6google8protobuf8internal9VisitImplINS1_11VisitorImplIZNS0_8compiler12_GLOBAL__N_121FindDebugRedactMarkerB5cxx11ERKNS0_14FileDescriptorEE3$_0EEE5VisitIJEEEvRKNS0_10DescriptorEDpRT_"(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(160) %i.s)
  %indvars.iv.next48 = add nuw nsw i64 %indvars.iv47, 1 ; 2 uses
  %i.t = load i32, ptr %i.e, align 8, !tbaa !714
  %i.u = sext i32 %i.t to i64
  %i.v = icmp slt i64 %indvars.iv.next48, %i.u
  br i1 %i.v, label %bb.b, label %.preheader37, !llvm.loop !980

.preheader:                                       ; preds = %bb.c, %.preheader37
  ret void

bb.c:                                             ; preds = %.lr.ph45, %bb.c
  %indvars.iv50 = phi i64 [ 0, %.lr.ph45 ], [ %indvars.iv.next51, %bb.c ] ; 2 uses
  %i.w = load ptr, ptr %i.q, align 8, !tbaa !981
  %i.x = getelementptr inbounds nuw [88 x i8], ptr %i.w, i64 %indvars.iv50
  tail call fastcc void @"_ZN6google8protobuf8internal9VisitImplINS1_11VisitorImplIZNS0_8compiler12_GLOBAL__N_121FindDebugRedactMarkerB5cxx11ERKNS0_14FileDescriptorEE3$_0EEE5VisitIJEEEvRKNS0_15FieldDescriptorEDpRT_"(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(88) %i.x)
  %indvars.iv.next51 = add nuw nsw i64 %indvars.iv50, 1 ; 2 uses
  %i.y = load i32, ptr %i.n, align 4, !tbaa !979
  %i.z = sext i32 %i.y to i64
  %i.aa = icmp slt i64 %indvars.iv.next51, %i.z
  br i1 %i.aa, label %bb.c, label %.preheader, !llvm.loop !982
}

; Function Attrs: mustprogress uwtable
define internal fastcc void @"_ZN6google8protobuf8internal9VisitImplINS1_11VisitorImplIZNS0_8compiler12_GLOBAL__N_121FindDebugRedactMarkerB5cxx11ERKNS0_14FileDescriptorEE3$_0EEE5VisitIJEEEvRKNS0_15FieldDescriptorEDpRT_"(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(88) %1) unnamed_addr #7 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %2 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 1
  %i.c = load i8, ptr %i.b, align 1
  %i.d = and i8 %i.c, 8
  %.not.i = icmp eq i8 %i.d, 0
  br i1 %.not.i, label %"_ZZN6google8protobuf8compiler12_GLOBAL__N_121FindDebugRedactMarkerB5cxx11ERKNS0_14FileDescriptorEENK3$_0clERKNS0_15FieldDescriptorE.exit", label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !983, !nonnull !76, !align !949
  %i.g = tail call fastcc noundef zeroext i1 @_ZN6google8protobuf8compiler12_GLOBAL__N_122HasDebugRedactBehaviorERKNS0_15FieldDescriptorERN4absl12lts_2025051213flat_hash_mapIPKNS0_10DescriptorEbNS7_18container_internal6HashEqISB_vE4HashENSE_2EqESaISt4pairIKSB_bEEEE(ptr noundef nonnull align 8 dereferenceable(88) %1, ptr noundef nonnull align 8 dereferenceable(32) %i.f)
  br i1 %i.g, label %bb.c, label %"_ZZN6google8protobuf8compiler12_GLOBAL__N_121FindDebugRedactMarkerB5cxx11ERKNS0_14FileDescriptorEENK3$_0clERKNS0_15FieldDescriptorE.exit"

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #37
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !462  ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 2
  %.0.copyload.i.i.i.i = load i16, ptr %i.j, align 1 ; 3 uses
  %i.k = zext i16 %.0.copyload.i.i.i.i to i64     ; 3 uses
  %i.l = xor i64 %i.k, -1
  %i.m = getelementptr inbounds i8, ptr %i.i, i64 %i.l ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 5 uses
  store ptr %i.n, ptr %2, align 8, !tbaa !132
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #37
  store i64 %i.k, ptr %i.a, align 8, !tbaa !30
  %i.o = icmp ugt i16 %.0.copyload.i.i.i.i, 15
  br i1 %i.o, label %.noexc.i.i.i.i, label %._crit_edge.i.i.i.i.i

.noexc.i.i.i.i:                                   ; preds = %bb.c
  %i.p = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0) ; 2 uses
  store ptr %i.p, ptr %2, align 8, !tbaa !105
  %i.q = load i64, ptr %i.a, align 8, !tbaa !30
  store i64 %i.q, ptr %i.n, align 8, !tbaa !34
  br label %._crit_edge.i.i.i.i.i

._crit_edge.i.i.i.i.i:                            ; preds = %.noexc.i.i.i.i, %bb.c
  %i.r = phi ptr [ %i.p, %.noexc.i.i.i.i ], [ %i.n, %bb.c ] ; 2 uses
  switch i16 %.0.copyload.i.i.i.i, label %bb.e [
    i16 1, label %bb.d
    i16 0, label %bb.f
  ]

bb.d:                                             ; preds = %._crit_edge.i.i.i.i.i
  %i.s = load i8, ptr %i.m, align 1, !tbaa !34
  store i8 %i.s, ptr %i.r, align 1, !tbaa !34
  br label %bb.f

bb.e:                                             ; preds = %._crit_edge.i.i.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.r, ptr nonnull align 1 %i.m, i64 %i.k, i1 false)
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d, %._crit_edge.i.i.i.i.i
  %i.t = load i64, ptr %i.a, align 8, !tbaa !30   ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i64 %i.t, ptr %i.u, align 8, !tbaa !101
  %i.v = load ptr, ptr %2, align 8, !tbaa !105
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 %i.t
  store i8 0, ptr %i.w, align 1, !tbaa !34
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #37
  %i.x = load ptr, ptr %0, align 8, !tbaa !985, !nonnull !76, !align !949
  %i.y = call noundef nonnull align 8 dereferenceable(40) ptr @_ZNSt8optionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEaSIS5_EENSt9enable_ifIX7__and_vISt6__not_ISt7is_sameIS6_NSt9remove_cvINSt16remove_referenceIT_E4typeEE4typeEEES9_ISt6__and_IJSt9is_scalarIS5_ESA_IS5_NSt5decayISD_E4typeEEEEESt16is_constructibleIS5_JSD_EESt13is_assignableIRS5_SD_EEERS6_E4typeEOSD_(ptr noundef nonnull align 8 dereferenceable(40) %i.x, ptr noundef nonnull align 8 dereferenceable(32) %2) #37 ; 0 uses
  %i.z = load ptr, ptr %2, align 8, !tbaa !105    ; 2 uses
  %i.aa = icmp eq ptr %i.z, %i.n
  br i1 %i.aa, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.f
  %i.ab = load i64, ptr %i.n, align 8, !tbaa !34
  %i.ac = add i64 %i.ab, 1
  call void @_ZdlPvm(ptr noundef %i.z, i64 noundef %i.ac) #42
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i: ; preds = %bb.f, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #37
  br label %"_ZZN6google8protobuf8compiler12_GLOBAL__N_121FindDebugRedactMarkerB5cxx11ERKNS0_14FileDescriptorEENK3$_0clERKNS0_15FieldDescriptorE.exit"

"_ZZN6google8protobuf8compiler12_GLOBAL__N_121FindDebugRedactMarkerB5cxx11ERKNS0_14FileDescriptorEENK3$_0clERKNS0_15FieldDescriptorE.exit": ; preds = %bb.a, %bb.b, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i
  ret void
}

; Function Attrs: mustprogress uwtable
define internal fastcc noundef zeroext i1 @_ZN6google8protobuf8compiler12_GLOBAL__N_122HasDebugRedactBehaviorERKNS0_15FieldDescriptorERN4absl12lts_2025051213flat_hash_mapIPKNS0_10DescriptorEbNS7_18container_internal6HashEqISB_vE4HashENSE_2EqESaISt4pairIKSB_bEEEE(ptr noundef nonnull align 8 dereferenceable(88) %0, ptr noundef nonnull align 8 dereferenceable(32) %1) unnamed_addr #7 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"struct.std::pair.429", align 8    ; 7 uses
  %3 = alloca %"struct.std::pair.429", align 8    ; 11 uses
  %i.a = alloca ptr, align 8                      ; 6 uses
  %i.b = alloca ptr, align 8                      ; 5 uses
end_hunk_2
begin_hunk_3_@_ZN4absl12lts_2025051218container_internal5btreeINS1_10set_paramsISt4pairIiiESt4lessIS5_ESaIS5_ELi256ELb0EEEE18rebalance_or_splitEPNS1_14btree_iteratorINS1_10btree_nodeIS9_EERKS5_PSE_EE:bb.a
  br label %.critedge.sink.split

bb.g:                                             ; preds = %bb.d, %bb.c, %bb.b
  %i.af = getelementptr inbounds nuw i8, ptr %i.c, i64 10
  %i.ag = load i8, ptr %i.af, align 1, !tbaa !34  ; 2 uses
  %i.ah = icmp ult i8 %i.f, %i.ag
  br i1 %i.ah, label %bb.h, label %bb.l

bb.h:                                             ; preds = %bb.g
  %i.ai = add nuw i8 %i.f, 1
  %i.aj = getelementptr inbounds nuw i8, ptr %i.c, i64 256
  %i.ak = zext i8 %i.ai to i64
  %i.al = getelementptr inbounds nuw [8 x i8], ptr %i.aj, i64 %i.ak
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !721 ; 3 uses
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 10
  %i.ao = load i8, ptr %i.an, align 1, !tbaa !34  ; 3 uses
  %i.ap = icmp ult i8 %i.ao, 30
  br i1 %i.ap, label %bb.i, label %bb.l

bb.i:                                             ; preds = %bb.h
  %narrow114 = sub nuw nsw i8 30, %i.ao
  %i.aq = load i32, ptr %i.a, align 8, !tbaa !3   ; 2 uses
  %i.ar = icmp sgt i32 %i.aq, 0
  %i.as = zext i1 %i.ar to i8
  %i.at = lshr i8 %narrow114, %i.as
  %.sroa.speculated = tail call i8 @llvm.umax.i8(i8 %i.at, i8 1) ; 3 uses
  %i.au = and i32 %i.aq, 255
  %i.av = getelementptr inbounds nuw i8, ptr %i.b, i64 10
  %i.aw = load i8, ptr %i.av, align 2, !tbaa !34
  %i.ax = zext i8 %i.aw to i32
  %i.ay = zext nneg i8 %.sroa.speculated to i32
  %i.az = sub nsw i32 %i.ax, %i.ay
  %.not85 = icmp sle i32 %i.au, %i.az
  %narrow115 = add nuw nsw i8 %.sroa.speculated, %i.ao
  %i.ba = icmp samesign ult i8 %narrow115, 30
  %or.cond111 = select i1 %.not85, i1 true, i1 %i.ba
  br i1 %or.cond111, label %bb.j, label %bb.l

bb.j:                                             ; preds = %bb.i
  %i.bb = getelementptr inbounds nuw i8, ptr %0, i64 8
  tail call void @_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10set_paramsISt4pairIiiESt4lessIS5_ESaIS5_ELi256ELb0EEEE23rebalance_left_to_rightEhPSA_PS8_(ptr noundef nonnull align 1 dereferenceable(1) %i.b, i8 noundef zeroext %.sroa.speculated, ptr noundef nonnull %i.am, ptr noundef nonnull %i.bb)
  %i.bc = load i32, ptr %i.a, align 8, !tbaa !3   ; 2 uses
  %i.bd = load ptr, ptr %1, align 8, !tbaa !721
  %i.be = getelementptr inbounds nuw i8, ptr %i.bd, i64 10
  %i.bf = load i8, ptr %i.be, align 1, !tbaa !34
  %i.bg = zext i8 %i.bf to i32                    ; 2 uses
  %i.bh = icmp sgt i32 %i.bc, %i.bg
  br i1 %i.bh, label %bb.k, label %.critedge

bb.k:                                             ; preds = %bb.j
  %i.bi = xor i32 %i.bg, -1
  %i.bj = add nsw i32 %i.bc, %i.bi
  br label %.critedge.sink.split

bb.l:                                             ; preds = %bb.i, %bb.h, %bb.g
  %i.bk = icmp eq i8 %i.ag, 30
  br i1 %i.bk, label %bb.m, label %bb.o

bb.m:                                             ; preds = %bb.l
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #37
  %i.bl = zext i8 %i.f to i32
  store ptr %i.c, ptr %2, align 8, !tbaa !1153
  %i.bm = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i32 %i.bl, ptr %i.bm, align 8, !tbaa !1152
  call void @_ZN4absl12lts_2025051218container_internal5btreeINS1_10set_paramsISt4pairIiiESt4lessIS5_ESaIS5_ELi256ELb0EEEE18rebalance_or_splitEPNS1_14btree_iteratorINS1_10btree_nodeIS9_EERKS5_PSE_EE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull %2)
  %i.bn = load ptr, ptr %1, align 8, !tbaa !721   ; 2 uses
  %i.bo = load ptr, ptr %i.bn, align 8, !tbaa !721
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #37
  br label %bb.o

bb.n:                                             ; preds = %bb.a
  %i.bp = tail call noalias noundef nonnull dereferenceable(504) ptr @_Znwm(i64 noundef 504) #43 ; 6 uses
  store ptr %i.c, ptr %i.bp, align 8, !tbaa !721
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bp, i64 8
  %i.br = getelementptr inbounds nuw i8, ptr %i.bp, i64 256
  store i32 0, ptr %i.bq, align 8
  store ptr %i.b, ptr %i.br, align 8, !tbaa !721
  %i.bs = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store i8 0, ptr %i.bs, align 8, !tbaa !34
  store ptr %i.bp, ptr %i.b, align 8, !tbaa !721
  store ptr %i.bp, ptr %0, align 8, !tbaa !721
  %.pre = load ptr, ptr %1, align 8, !tbaa !721
  br label %bb.o

bb.o:                                             ; preds = %bb.l, %bb.m, %bb.n
  %i.bt = phi ptr [ %i.bn, %bb.m ], [ %i.b, %bb.l ], [ %.pre, %bb.n ] ; 4 uses
  %.082 = phi ptr [ %i.bo, %bb.m ], [ %i.c, %bb.l ], [ %i.bp, %bb.n ] ; 2 uses
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bt, i64 11
  %i.bv = load i8, ptr %i.bu, align 1, !tbaa !34
  %.not116 = icmp eq i8 %i.bv, 0
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bt, i64 8
  %i.bx = load i8, ptr %i.bw, align 1, !tbaa !34
  %i.by = add i8 %i.bx, 1                         ; 2 uses
  %i.bz = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  br i1 %.not116, label %bb.r, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.ca = call noalias noundef nonnull dereferenceable(256) ptr @_Znwm(i64 noundef 256) #43 ; 9 uses
  store ptr %.082, ptr %i.ca, align 8, !tbaa !721
  %i.cb = getelementptr inbounds nuw i8, ptr %i.ca, i64 8
  store i8 %i.by, ptr %i.cb, align 8, !tbaa !34
  %i.cc = getelementptr inbounds nuw i8, ptr %i.ca, i64 9
  store i8 0, ptr %i.cc, align 1, !tbaa !34
  %i.cd = getelementptr inbounds nuw i8, ptr %i.ca, i64 10
  store i8 0, ptr %i.cd, align 2, !tbaa !34
  %i.ce = getelementptr inbounds nuw i8, ptr %i.ca, i64 11
  store i8 30, ptr %i.ce, align 1, !tbaa !34
  %i.cf = load i32, ptr %i.a, align 8, !tbaa !3
  call void @_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10set_paramsISt4pairIiiESt4lessIS5_ESaIS5_ELi256ELb0EEEE5splitEiPSA_PS8_(ptr noundef nonnull align 1 dereferenceable(1) %i.bt, i32 noundef %i.cf, ptr noundef nonnull %i.ca, ptr noundef nonnull %i.bz)
  %i.cg = load ptr, ptr %i.bz, align 8, !tbaa !721
  %i.ch = load ptr, ptr %1, align 8, !tbaa !721
  %i.ci = icmp eq ptr %i.cg, %i.ch
  br i1 %i.ci, label %bb.q, label %bb.s

bb.q:                                             ; preds = %bb.p
  store ptr %i.ca, ptr %i.bz, align 8, !tbaa !721
  br label %bb.s

bb.r:                                             ; preds = %bb.o
  %i.cj = call noalias noundef nonnull dereferenceable(504) ptr @_Znwm(i64 noundef 504) #43 ; 7 uses
  store ptr %.082, ptr %i.cj, align 8, !tbaa !721
  %i.ck = getelementptr inbounds nuw i8, ptr %i.cj, i64 8
  store i8 %i.by, ptr %i.ck, align 8, !tbaa !34
  %i.cl = getelementptr inbounds nuw i8, ptr %i.cj, i64 9
  store i8 0, ptr %i.cl, align 1, !tbaa !34
  %i.cm = getelementptr inbounds nuw i8, ptr %i.cj, i64 10
  store i8 0, ptr %i.cm, align 2, !tbaa !34
  %i.cn = getelementptr inbounds nuw i8, ptr %i.cj, i64 11
  store i8 0, ptr %i.cn, align 1, !tbaa !34
  %i.co = load i32, ptr %i.a, align 8, !tbaa !3
  call void @_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10set_paramsISt4pairIiiESt4lessIS5_ESaIS5_ELi256ELb0EEEE5splitEiPSA_PS8_(ptr noundef nonnull align 1 dereferenceable(1) %i.bt, i32 noundef %i.co, ptr noundef nonnull %i.cj, ptr noundef nonnull %i.bz)
  br label %bb.s

bb.s:                                             ; preds = %bb.p, %bb.q, %bb.r
  %.0 = phi ptr [ %i.ca, %bb.q ], [ %i.ca, %bb.p ], [ %i.cj, %bb.r ]
  %i.cp = load i32, ptr %i.a, align 8, !tbaa !3   ; 2 uses
  %i.cq = load ptr, ptr %1, align 8, !tbaa !721
  %i.cr = getelementptr inbounds nuw i8, ptr %i.cq, i64 10
  %i.cs = load i8, ptr %i.cr, align 1, !tbaa !34
  %i.ct = zext i8 %i.cs to i32                    ; 2 uses
  %i.cu = icmp sgt i32 %i.cp, %i.ct
  br i1 %i.cu, label %bb.t, label %.critedge

bb.t:                                             ; preds = %bb.s
  %i.cv = xor i32 %i.ct, -1
  %i.cw = add nsw i32 %i.cp, %i.cv
  br label %.critedge.sink.split

.critedge.sink.split:                             ; preds = %bb.t, %bb.f, %bb.k
  %.sink127 = phi i32 [ %i.bj, %bb.k ], [ %i.ae, %bb.f ], [ %i.cw, %bb.t ]
  %.sink = phi ptr [ %i.am, %bb.k ], [ %i.k, %bb.f ], [ %.0, %bb.t ]
  store i32 %.sink127, ptr %i.a, align 8, !tbaa !3
  store ptr %.sink, ptr %1, align 8, !tbaa !721
  br label %.critedge

.critedge:                                        ; preds = %.critedge.sink.split, %bb.j, %bb.e, %bb.s
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10set_paramsISt4pairIiiESt4lessIS5_ESaIS5_ELi256ELb0EEEE16clear_and_deleteEPSA_PS8_(ptr noundef %0, ptr noundef %1) local_unnamed_addr #7 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 11
  %i.b = load i8, ptr %i.a, align 1, !tbaa !34    ; 2 uses
  %.not57 = icmp eq i8 %i.b, 0
  br i1 %.not57, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = zext i8 %i.b to i64
  %i.d = shl nuw nsw i64 %i.c, 3
  %i.e = add nuw nsw i64 %i.d, 16
  br label %.loopexit.sink.split

bb.c:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 10
  %i.g = load i8, ptr %i.f, align 1, !tbaa !34
  %i.h = icmp eq i8 %i.g, 0
  br i1 %i.h, label %.loopexit.sink.split, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.c
  %i.i = load ptr, ptr %0, align 8, !tbaa !721
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %.lr.ph
  %.04963 = phi ptr [ %i.k, %.lr.ph ], [ %0, %.lr.ph.preheader ]
  %i.j = getelementptr inbounds nuw i8, ptr %.04963, i64 256
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !721  ; 4 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 11
  %i.m = load i8, ptr %i.l, align 1, !tbaa !34
  %.not.i = icmp eq i8 %i.m, 0
  br i1 %.not.i, label %.lr.ph, label %._crit_edge, !llvm.loop !1157

._crit_edge:                                      ; preds = %.lr.ph
  %i.n = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  %i.o = load i8, ptr %i.n, align 1, !tbaa !34
  %i.p = zext i8 %i.o to i64
  %i.q = load ptr, ptr %i.k, align 8, !tbaa !721
  br label %bb.d

bb.d:                                             ; preds = %.backedge, %._crit_edge
  %.147 = phi i64 [ %i.p, %._crit_edge ], [ %.147.be.in, %.backedge ] ; 2 uses
  %.1 = phi ptr [ %i.q, %._crit_edge ], [ %.1.be, %.backedge ] ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %.1, i64 256
  %i.s = getelementptr inbounds nuw [8 x i8], ptr %i.r, i64 %.147
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !721  ; 3 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 11
  %i.v = load i8, ptr %i.u, align 1, !tbaa !34    ; 2 uses
  %.not.i55 = icmp eq i8 %i.v, 0
  br i1 %.not.i55, label %.lr.ph66, label %bb.e

.lr.ph66:                                         ; preds = %bb.d, %.lr.ph66
  %.15065 = phi ptr [ %i.x, %.lr.ph66 ], [ %i.t, %bb.d ]
  %i.w = getelementptr inbounds nuw i8, ptr %.15065, i64 256
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !721  ; 5 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 11
  %i.z = load i8, ptr %i.y, align 1, !tbaa !34    ; 2 uses
  %.not.i56 = icmp eq i8 %i.z, 0
  br i1 %.not.i56, label %.lr.ph66, label %._crit_edge67, !llvm.loop !1158

._crit_edge67:                                    ; preds = %.lr.ph66
  %i.aa = getelementptr inbounds nuw i8, ptr %i.x, i64 8
  %i.ab = load i8, ptr %i.aa, align 1, !tbaa !34
  %i.ac = zext i8 %i.ab to i64
  %i.ad = load ptr, ptr %i.x, align 8, !tbaa !721
  br label %bb.e

bb.e:                                             ; preds = %._crit_edge67, %bb.d
  %i.ae = phi i8 [ %i.z, %._crit_edge67 ], [ %i.v, %bb.d ]
  %.251 = phi ptr [ %i.x, %._crit_edge67 ], [ %i.t, %bb.d ]
  %.248 = phi i64 [ %i.ac, %._crit_edge67 ], [ %.147, %bb.d ]
  %.2 = phi ptr [ %i.ad, %._crit_edge67 ], [ %.1, %bb.d ] ; 3 uses
  %i.af = zext i8 %i.ae to i64
  %i.ag = shl nuw nsw i64 %i.af, 3
  %i.ah = add nuw nsw i64 %i.ag, 16
  tail call void @_ZdlPvm(ptr noundef nonnull %.251, i64 noundef %i.ah) #42
  %2 = add nuw nsw i64 %.248, 1                   ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %.2, i64 10
  %i.aj = load i8, ptr %i.ai, align 1, !tbaa !34
  %i.ak = zext i8 %i.aj to i64
  %.not = icmp samesign ugt i64 %2, %i.ak
  br i1 %.not, label %.preheader58, label %.backedge

.backedge:                                        ; preds = %bb.f, %bb.e
  %.147.be.in = phi i64 [ %2, %bb.e ], [ %4, %bb.f ]
  %.1.be = phi ptr [ %.2, %bb.e ], [ %i.an, %bb.f ]
  br label %bb.d, !llvm.loop !1159

.preheader58:                                     ; preds = %bb.e, %bb.f
  %.3 = phi ptr [ %i.an, %bb.f ], [ %.2, %bb.e ]  ; 3 uses
  %i.al = getelementptr inbounds nuw i8, ptr %.3, i64 8
  %i.am = load i8, ptr %i.al, align 1, !tbaa !34
  %i.an = load ptr, ptr %.3, align 8, !tbaa !721  ; 4 uses
  tail call void @_ZdlPvm(ptr noundef nonnull %.3, i64 noundef 504) #42
  %i.ao = icmp eq ptr %i.an, %i.i
  br i1 %i.ao, label %.loopexit, label %bb.f

bb.f:                                             ; preds = %.preheader58
  %3 = zext i8 %i.am to i64
  %4 = add nuw nsw i64 %3, 1                      ; 2 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %i.an, i64 10
  %i.aq = load i8, ptr %i.ap, align 1, !tbaa !34
  %5 = zext i8 %i.aq to i64
  %6 = icmp samesign ugt i64 %4, %5
  br i1 %6, label %.preheader58, label %.backedge, !llvm.loop !1160

.loopexit.sink.split:                             ; preds = %bb.c, %bb.b
  %.sink = phi i64 [ %i.e, %bb.b ], [ 504, %bb.c ]
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef %.sink) #42
  br label %.loopexit

.loopexit:                                        ; preds = %.preheader58, %.loopexit.sink.split
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10set_paramsISt4pairIiiESt4lessIS5_ESaIS5_ELi256ELb0EEEE23rebalance_right_to_leftEhPSA_PS8_(ptr noundef nonnull align 1 dereferenceable(1) %0, i8 noundef zeroext %1, ptr noundef %2, ptr noundef %3) local_unnamed_addr #7 comdat align 2 {
bb.a:
  %i.a = ptrtoaddr ptr %2 to i64
  %i.b = ptrtoaddr ptr %0 to i64
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 10 ; 6 uses
  %i.d = load i8, ptr %i.c, align 1, !tbaa !34
  %i.e = zext i8 %i.d to i64                      ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.g = load i8, ptr %i.f, align 1, !tbaa !34
  %i.h = zext i8 %i.g to i64                      ; 2 uses
  %i.i = load ptr, ptr %0, align 8, !tbaa !721    ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.k = getelementptr inbounds nuw [8 x i8], ptr %i.j, i64 %i.e ; 5 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.i, i64 12
  %i.m = getelementptr inbounds nuw [8 x i8], ptr %i.l, i64 %i.h
  %i.n = load i64, ptr %i.m, align 4
  store i64 %i.n, ptr %i.k, align 4
  %i.o = zext i8 %1 to i32                        ; 3 uses
  %i.p = add nsw i32 %i.o, -1                     ; 3 uses
  %i.q = sext i32 %i.p to i64                     ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %2, i64 12 ; 10 uses
  %.idx.i = shl nuw nsw i64 %i.q, 3
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 %.idx.i
  %.not13.i = icmp eq i32 %i.p, 0
  br i1 %.not13.i, label %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10set_paramsISt4pairIiiESt4lessIS5_ESaIS5_ELi256ELb0EEEE10transfer_nEmmmPSA_PS8_.exit, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %bb.a
  %i.t = zext i8 %1 to i64
  %i.u = add nuw nsw i64 %i.t, 2305843009213693950
  %i.v = and i64 %i.u, 2305843009213693951        ; 2 uses
  %i.w = add nuw nsw i64 %i.v, 1                  ; 2 uses
  %min.iters.check = icmp samesign ult i64 %i.v, 17
  br i1 %min.iters.check, label %.lr.ph.i.preheader82, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i.preheader
  %i.x = shl nuw nsw i64 %i.e, 3
  %i.y = add i64 %i.x, %i.b
  %i.z = add i64 %i.y, 8
  %i.aa = sub i64 %i.z, %i.a
  %diff.check = icmp ult i64 %i.aa, 32
  br i1 %diff.check, label %.lr.ph.i.preheader82, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.w, 4611686018427387900      ; 3 uses
  %i.ab = shl i64 %n.vec, 3                       ; 2 uses
  %i.ac = getelementptr i8, ptr %i.k, i64 %i.ab
  %i.ad = getelementptr i8, ptr %i.r, i64 %i.ab
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.ae = shl i64 %index, 3                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.k, i64 %i.ae ; 2 uses
  %next.gep62 = getelementptr i8, ptr %i.r, i64 %i.ae ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %next.gep, i64 8
  %i.ag = getelementptr i8, ptr %next.gep62, i64 16
  %wide.load = load <2 x i64>, ptr %next.gep62, align 4
  %wide.load63 = load <2 x i64>, ptr %i.ag, align 4
  %i.ah = getelementptr inbounds nuw i8, ptr %next.gep, i64 24
  store <2 x i64> %wide.load, ptr %i.af, align 4
  store <2 x i64> %wide.load63, ptr %i.ah, align 4
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.ai = icmp eq i64 %index.next, %n.vec
  br i1 %i.ai, label %middle.block, label %vector.body, !llvm.loop !1161

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.w, %n.vec
  br i1 %cmp.n, label %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10set_paramsISt4pairIiiESt4lessIS5_ESaIS5_ELi256ELb0EEEE10transfer_nEmmmPSA_PS8_.exit.loopexit, label %.lr.ph.i.preheader82

.lr.ph.i.preheader82:                             ; preds = %vector.memcheck, %.lr.ph.i.preheader, %middle.block
  %.015.i.pn.ph = phi ptr [ %i.k, %vector.memcheck ], [ %i.k, %.lr.ph.i.preheader ], [ %i.ac, %middle.block ]
  %.01214.i.ph = phi ptr [ %i.r, %vector.memcheck ], [ %i.r, %.lr.ph.i.preheader ], [ %i.ad, %middle.block ]
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.preheader82, %.lr.ph.i
  %.015.i.pn = phi ptr [ %.015.i, %.lr.ph.i ], [ %.015.i.pn.ph, %.lr.ph.i.preheader82 ]
  %.01214.i = phi ptr [ %i.ak, %.lr.ph.i ], [ %.01214.i.ph, %.lr.ph.i.preheader82 ] ; 2 uses
  %.015.i = getelementptr inbounds nuw i8, ptr %.015.i.pn, i64 8 ; 2 uses
  %i.aj = load i64, ptr %.01214.i, align 4
  store i64 %i.aj, ptr %.015.i, align 4
  %i.ak = getelementptr inbounds nuw i8, ptr %.01214.i, i64 8 ; 2 uses
  %.not.i = icmp eq ptr %i.ak, %i.s
  br i1 %.not.i, label %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10set_paramsISt4pairIiiESt4lessIS5_ESaIS5_ELi256ELb0EEEE10transfer_nEmmmPSA_PS8_.exit.loopexit, label %.lr.ph.i, !llvm.loop !1162

_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10set_paramsISt4pairIiiESt4lessIS5_ESaIS5_ELi256ELb0EEEE10transfer_nEmmmPSA_PS8_.exit.loopexit: ; preds = %.lr.ph.i, %middle.block
  %.pre = load ptr, ptr %0, align 8, !tbaa !721
  %.pre60 = load i8, ptr %i.f, align 8, !tbaa !34
  %.pre61 = zext i8 %.pre60 to i64
  br label %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10set_paramsISt4pairIiiESt4lessIS5_ESaIS5_ELi256ELb0EEEE10transfer_nEmmmPSA_PS8_.exit

_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10set_paramsISt4pairIiiESt4lessIS5_ESaIS5_ELi256ELb0EEEE10transfer_nEmmmPSA_PS8_.exit: ; preds = %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10set_paramsISt4pairIiiESt4lessIS5_ESaIS5_ELi256ELb0EEEE10transfer_nEmmmPSA_PS8_.exit.loopexit, %bb.a
  %.pre-phi = phi i64 [ %.pre61, %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10set_paramsISt4pairIiiESt4lessIS5_ESaIS5_ELi256ELb0EEEE10transfer_nEmmmPSA_PS8_.exit.loopexit ], [ %i.h, %bb.a ]
  %i.al = phi ptr [ %.pre, %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10set_paramsISt4pairIiiESt4lessIS5_ESaIS5_ELi256ELb0EEEE10transfer_nEmmmPSA_PS8_.exit.loopexit ], [ %i.i, %bb.a ]
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 12
  %i.an = getelementptr inbounds nuw [8 x i8], ptr %i.am, i64 %.pre-phi
  %i.ao = getelementptr inbounds nuw [8 x i8], ptr %i.r, i64 %i.q
  %i.ap = load i64, ptr %i.ao, align 4
  store i64 %i.ap, ptr %i.an, align 4
  %i.aq = getelementptr inbounds nuw i8, ptr %2, i64 10 ; 5 uses
  %i.ar = load i8, ptr %i.aq, align 1, !tbaa !34  ; 3 uses
  %i.as = zext i8 %i.ar to i32
  %i.at = sub nsw i32 %i.as, %i.o
  %i.au = sext i32 %i.at to i64
  %i.av = zext i8 %1 to i64                       ; 4 uses
  %i.aw = getelementptr inbounds nuw [8 x i8], ptr %i.r, i64 %i.av ; 4 uses
  %.idx.i44 = shl nuw nsw i64 %i.au, 3
  %i.ax = getelementptr inbounds nuw i8, ptr %i.aw, i64 %.idx.i44
  %.not13.i45 = icmp eq i8 %i.ar, %1
  br i1 %.not13.i45, label %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10set_paramsISt4pairIiiESt4lessIS5_ESaIS5_ELi256ELb0EEEE10transfer_nEmmmPSA_PS8_.exit51, label %.lr.ph.i47.preheader

.lr.ph.i47.preheader:                             ; preds = %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10set_paramsISt4pairIiiESt4lessIS5_ESaIS5_ELi256ELb0EEEE10transfer_nEmmmPSA_PS8_.exit
  %i.ay = zext i8 %i.ar to i64
  %i.az = shl nuw nsw i64 %i.ay, 3
  %i.ba = add nsw i64 %i.az, -8
  %i.bb = shl nuw nsw i64 %i.av, 3
  %i.bc = sub nsw i64 %i.ba, %i.bb                ; 2 uses
  %i.bd = lshr exact i64 %i.bc, 3
  %i.be = add nuw nsw i64 %i.bd, 1                ; 2 uses
  %min.iters.check66 = icmp ult i64 %i.bc, 24
  br i1 %min.iters.check66, label %.lr.ph.i47.preheader81, label %vector.ph67

vector.ph67:                                      ; preds = %.lr.ph.i47.preheader
  %n.vec69 = and i64 %i.be, 4611686018427387900   ; 3 uses
  %i.bf = shl i64 %n.vec69, 3                     ; 2 uses
  %i.bg = getelementptr i8, ptr %i.r, i64 %i.bf
  %i.bh = getelementptr i8, ptr %i.aw, i64 %i.bf
  br label %vector.body70

vector.body70:                                    ; preds = %vector.body70, %vector.ph67
  %index71 = phi i64 [ 0, %vector.ph67 ], [ %index.next76, %vector.body70 ] ; 2 uses
  %i.bi = shl i64 %index71, 3                     ; 2 uses
  %next.gep72 = getelementptr i8, ptr %i.r, i64 %i.bi ; 2 uses
  %next.gep73 = getelementptr i8, ptr %i.aw, i64 %i.bi ; 2 uses
  %i.bj = getelementptr i8, ptr %next.gep73, i64 16
  %wide.load74 = load <2 x i64>, ptr %next.gep73, align 4
  %wide.load75 = load <2 x i64>, ptr %i.bj, align 4
  %i.bk = getelementptr i8, ptr %next.gep72, i64 16
  store <2 x i64> %wide.load74, ptr %next.gep72, align 4
  store <2 x i64> %wide.load75, ptr %i.bk, align 4
  %index.next76 = add nuw i64 %index71, 4         ; 2 uses
  %i.bl = icmp eq i64 %index.next76, %n.vec69
  br i1 %i.bl, label %middle.block77, label %vector.body70, !llvm.loop !1163

middle.block77:                                   ; preds = %vector.body70
  %cmp.n78 = icmp eq i64 %i.be, %n.vec69
  br i1 %cmp.n78, label %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10set_paramsISt4pairIiiESt4lessIS5_ESaIS5_ELi256ELb0EEEE10transfer_nEmmmPSA_PS8_.exit51, label %.lr.ph.i47.preheader81

.lr.ph.i47.preheader81:                           ; preds = %.lr.ph.i47.preheader, %middle.block77
  %.015.i48.ph = phi ptr [ %i.r, %.lr.ph.i47.preheader ], [ %i.bg, %middle.block77 ]
  %.01214.i49.ph = phi ptr [ %i.aw, %.lr.ph.i47.preheader ], [ %i.bh, %middle.block77 ]
  br label %.lr.ph.i47

.lr.ph.i47:                                       ; preds = %.lr.ph.i47.preheader81, %.lr.ph.i47
  %.015.i48 = phi ptr [ %i.bo, %.lr.ph.i47 ], [ %.015.i48.ph, %.lr.ph.i47.preheader81 ] ; 2 uses
  %.01214.i49 = phi ptr [ %i.bn, %.lr.ph.i47 ], [ %.01214.i49.ph, %.lr.ph.i47.preheader81 ] ; 2 uses
  %i.bm = load i64, ptr %.01214.i49, align 4
  store i64 %i.bm, ptr %.015.i48, align 4
  %i.bn = getelementptr inbounds nuw i8, ptr %.01214.i49, i64 8 ; 2 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %.015.i48, i64 8
  %.not.i50 = icmp eq ptr %i.bn, %i.ax
  br i1 %.not.i50, label %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10set_paramsISt4pairIiiESt4lessIS5_ESaIS5_ELi256ELb0EEEE10transfer_nEmmmPSA_PS8_.exit51, label %.lr.ph.i47, !llvm.loop !1164

_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10set_paramsISt4pairIiiESt4lessIS5_ESaIS5_ELi256ELb0EEEE10transfer_nEmmmPSA_PS8_.exit51: ; preds = %.lr.ph.i47, %middle.block77, %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10set_paramsISt4pairIiiESt4lessIS5_ESaIS5_ELi256ELb0EEEE10transfer_nEmmmPSA_PS8_.exit
  %i.bp = getelementptr inbounds nuw i8, ptr %0, i64 11
  %i.bq = load i8, ptr %i.bp, align 1, !tbaa !34
  %.not.i52 = icmp eq i8 %i.bq, 0
  br i1 %.not.i52, label %.preheader53, label %.loopexit

.preheader53:                                     ; preds = %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10set_paramsISt4pairIiiESt4lessIS5_ESaIS5_ELi256ELb0EEEE10transfer_nEmmmPSA_PS8_.exit51
  %.not58 = icmp eq i8 %1, 0
  br i1 %.not58, label %.preheader, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader53
  %i.br = getelementptr inbounds nuw i8, ptr %2, i64 256 ; 3 uses
  %i.bs = getelementptr inbounds nuw i8, ptr %0, i64 256 ; 3 uses
  %xtraiter = and i64 %i.av, 1
  %i.bt = icmp eq i32 %i.p, 0
  br i1 %i.bt, label %.epil.preheader, label %.lr.ph.new

.lr.ph.new:                                       ; preds = %.lr.ph
  %unroll_iter = and i64 %i.av, 254
  br label %bb.b

.preheader.loopexit.unr-lcssa:                    ; preds = %bb.b
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.preheader, label %.epil.preheader

.epil.preheader:                                  ; preds = %.preheader.loopexit.unr-lcssa, %.lr.ph
  %indvars.iv.epil.init = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next.1, %.preheader.loopexit.unr-lcssa ] ; 2 uses
end_hunk_3

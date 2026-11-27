Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/csmith/original/Variable?download=true
inline.NumInlined: 1390
inline.NumDeleted: 503
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumRuntimeUnrolled: 3
loop-unroll.NumUnrolled: 5
begin_hunk_0_@_ZNK8Variable4hashERSo:bb.a
  %i.cp = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull @.str.37, i64 noundef 4) ; 0 uses
  %i.cq = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull @_ZN8Variable13sink_var_nameE, i64 noundef 12) ; 0 uses
  %i.cr = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull @.str.21, i64 noundef 3) ; 0 uses
  %i.cs = load ptr, ptr %0, align 8, !tbaa !97
  %i.ct = getelementptr inbounds nuw i8, ptr %i.cs, i64 88
  %i.cu = load ptr, ptr %i.ct, align 8
  tail call void %i.cu(ptr noundef nonnull align 8 dereferenceable(200) %0, ptr noundef nonnull align 8 dereferenceable(8) %1)
  %i.cv = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull @.str.22, i64 noundef 1) ; 0 uses
  %i.cw = load ptr, ptr %1, align 8, !tbaa !97
  %i.cx = getelementptr i8, ptr %i.cw, i64 -24
  %i.cy = load i64, ptr %i.cx, align 8
  %i.cz = getelementptr inbounds i8, ptr %1, i64 %i.cy
  %i.da = getelementptr inbounds nuw i8, ptr %i.cz, i64 240
  %i.db = load ptr, ptr %i.da, align 8, !tbaa !156 ; 6 uses
  %.not.i.i.i22 = icmp eq ptr %i.db, null
  br i1 %.not.i.i.i22, label %bb.s, label %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i23

bb.s:                                             ; preds = %bb.r
  tail call void @_ZSt16__throw_bad_castv() #26
  unreachable

_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i23: ; preds = %bb.r
  %i.dc = getelementptr inbounds nuw i8, ptr %i.db, i64 56
  %i.dd = load i8, ptr %i.dc, align 8, !tbaa !161
  %.not.i1.i.i24 = icmp eq i8 %i.dd, 0
  br i1 %.not.i1.i.i24, label %bb.u, label %bb.t

bb.t:                                             ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i23
  %i.de = getelementptr inbounds nuw i8, ptr %i.db, i64 67
  %i.df = load i8, ptr %i.de, align 1, !tbaa !36
  br label %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit26

bb.u:                                             ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i23
  tail call void @_ZNKSt5ctypeIcE13_M_widen_initEv(ptr noundef nonnull align 8 dereferenceable(570) %i.db)
  %i.dg = load ptr, ptr %i.db, align 8, !tbaa !97
  %i.dh = getelementptr inbounds nuw i8, ptr %i.dg, i64 48
  %i.di = load ptr, ptr %i.dh, align 8
  %i.dj = tail call noundef signext i8 %i.di(ptr noundef nonnull align 8 dereferenceable(570) %i.db, i8 noundef signext 10), !inline_history !10
  br label %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit26

_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit26: ; preds = %bb.t, %bb.u
  %.0.i.i.i25 = phi i8 [ %i.df, %bb.t ], [ %i.dj, %bb.u ]
  %i.dk = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %1, i8 noundef signext %.0.i.i.i25)
  br label %.loopexit.sink.split

.loopexit.sink.split:                             ; preds = %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit26, %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit21, %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit
  %.sink = phi ptr [ %i.bo, %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit ], [ %i.co, %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit21 ], [ %i.dk, %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit26 ]
  %i.dl = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8) %.sink) ; 0 uses
  br label %.loopexit

.loopexit:                                        ; preds = %bb.f, %.loopexit.sink.split, %bb.b, %bb.g
  ret void
}

declare noundef ptr @_Z21get_fact_mgr_for_funcPK8Function(ptr noundef) local_unnamed_addr #4

declare noundef ptr @_Z16GetFirstFunctionv() local_unnamed_addr #4

declare noundef zeroext i1 @_ZN9FactUnion17is_field_readableEPK8VariableiRKSt6vectorIPK4FactSaIS6_EE(ptr noundef, i32 noundef, ptr noundef nonnull align 8 dereferenceable(24)) local_unnamed_addr #4

declare noundef zeroext i1 @_ZN9CGOptions12compute_hashEv() local_unnamed_addr #4

; Function Attrs: mustprogress uwtable
define dso_local void @_Z12HashVariableP8VariablePSo(ptr noundef %0, ptr noundef %1) local_unnamed_addr #3 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !97
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 56
  %i.c = load ptr, ptr %i.b, align 8
  tail call void %i.c(ptr noundef nonnull align 8 dereferenceable(200) %0, ptr noundef nonnull align 8 dereferenceable(8) %1)
  ret void
}

; Function Attrs: mustprogress uwtable
define dso_local void @_ZNK8Variable9to_stringB5cxx11Ev(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef nonnull align 8 dereferenceable(200) %1) local_unnamed_addr #3 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.std::vector.105", align 8   ; 12 uses
  %3 = alloca %"class.std::vector.28", align 8    ; 14 uses
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 14 uses
  %5 = alloca %"class.std::__cxx11::basic_string", align 8 ; 14 uses
  %6 = alloca %"class.std::__cxx11::basic_ostringstream", align 8 ; 17 uses
  %7 = alloca %"class.std::__cxx11::basic_string", align 8 ; 15 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 18 uses
  store ptr %i.a, ptr %0, align 8, !tbaa !32
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 16 uses
  store i64 0, ptr %i.b, align 8, !tbaa !35
  store i8 0, ptr %i.a, align 8, !tbaa !36
  br label %tailrecurse.i

tailrecurse.i:                                    ; preds = %tailrecurse.i, %bb.a
  %.tr.i = phi ptr [ %1, %bb.a ], [ %i.d, %tailrecurse.i ] ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %.tr.i, i64 88
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !90   ; 2 uses
  %.not.i = icmp eq ptr %i.d, null
  br i1 %.not.i, label %bb.b, label %tailrecurse.i

bb.b:                                             ; preds = %tailrecurse.i
  %i.e = getelementptr inbounds nuw i8, ptr %.tr.i, i64 96
  %i.f = load i8, ptr %i.e, align 8, !tbaa !98, !range !99, !noundef !100
  %i.g = trunc nuw i8 %i.f to i1
  br i1 %i.g, label %_ZNK8Variable10is_virtualEv.exit, label %_ZNK8Variable10is_virtualEv.exit.thread

_ZNK8Variable10is_virtualEv.exit:                 ; preds = %bb.b
  %i.h = getelementptr inbounds nuw i8, ptr %.tr.i, i64 200
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !109
  %i.j = icmp eq ptr %i.i, null
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 96
  %i.l = load i8, ptr %i.k, align 8, !range !99
  %i.m = trunc nuw i8 %i.l to i1
  %or.cond = select i1 %i.j, i1 %i.m, i1 false
  br i1 %or.cond, label %bb.c, label %_ZNK8Variable10is_virtualEv.exit.thread

bb.c:                                             ; preds = %_ZNK8Variable10is_virtualEv.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #25
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %2, i8 0, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #25
  tail call void @llvm.experimental.noalias.scope.decl(metadata !271)
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 216
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 224
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !139, !noalias !271 ; 2 uses
  %i.q = load ptr, ptr %i.n, align 8, !tbaa !140, !noalias !271 ; 4 uses
  %i.r = ptrtoint ptr %i.p to i64
  %i.s = ptrtoint ptr %i.q to i64
  %i.t = sub i64 %i.r, %i.s                       ; 7 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %3, i8 0, i64 24, i1 false), !alias.scope !271
  %.not.i.i.i.i.i = icmp eq ptr %i.p, %i.q
  br i1 %.not.i.i.i.i.i, label %.thread1.i, label %bb.d

.thread1.i:                                       ; preds = %bb.c
  %i.u = getelementptr inbounds i8, ptr null, i64 %i.t ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %3, i64 16
  store i64 0, ptr %3, align 8
  store ptr %i.u, ptr %i.v, align 8, !tbaa !141, !alias.scope !271
  br label %bb.i

bb.d:                                             ; preds = %bb.c
  %i.w = icmp ugt i64 %i.t, 9223372036854775804
  br i1 %i.w, label %.noexc.i.i.i, label %bb.e, !prof !94

.noexc.i.i.i:                                     ; preds = %bb.d
  invoke void @_ZSt28__throw_bad_array_new_lengthv() #26
          to label %.noexc unwind label %bb.v, !noalias !271

.noexc:                                           ; preds = %.noexc.i.i.i
  unreachable

bb.e:                                             ; preds = %bb.d
  %i.x = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.t) #24
          to label %.noexc40 unwind label %bb.v, !noalias !271 ; 4 uses

.noexc40:                                         ; preds = %bb.e
  store ptr %i.x, ptr %3, align 8, !tbaa !140, !alias.scope !271
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 %i.t ; 4 uses
  %i.z = getelementptr inbounds nuw i8, ptr %3, i64 16
  store ptr %i.y, ptr %i.z, align 8, !tbaa !141, !alias.scope !271
  %i.aa = icmp samesign ugt i64 %i.t, 4
  br i1 %i.aa, label %bb.f, label %bb.g, !prof !142

bb.f:                                             ; preds = %.noexc40
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.x, ptr align 4 %i.q, i64 %i.t, i1 false), !noalias !271
  br label %bb.i

bb.g:                                             ; preds = %.noexc40
  %i.ab = icmp eq i64 %i.t, 4
  br i1 %i.ab, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.ac = load i32, ptr %i.q, align 4, !tbaa !118, !noalias !271
  store i32 %i.ac, ptr %i.x, align 4, !tbaa !118, !noalias !271
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g, %bb.f, %.thread1.i
  %i.ad = phi ptr [ %i.y, %bb.f ], [ %i.y, %bb.g ], [ %i.y, %bb.h ], [ %i.u, %.thread1.i ]
  %i.ae = getelementptr inbounds nuw i8, ptr %3, i64 8
  store ptr %i.ad, ptr %i.ae, align 8, !tbaa !139, !alias.scope !271
  %i.af = invoke noundef i32 @_Z20expand_within_rangesRKSt6vectorIjSaIjEERS_IS_IiSaIiEESaIS5_EE(ptr noundef nonnull align 8 dereferenceable(24) %3, ptr noundef nonnull align 8 dereferenceable(24) %2)
          to label %bb.j unwind label %bb.w       ; 0 uses

bb.j:                                             ; preds = %bb.i
  %i.ag = load ptr, ptr %3, align 8, !tbaa !140   ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.ag, null
  br i1 %.not.i.i.i, label %_ZNSt6vectorIjSaIjEED2Ev.exit, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ah = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !141
  %i.aj = ptrtoint ptr %i.ai to i64
  %i.ak = ptrtoint ptr %i.ag to i64
  %i.al = sub i64 %i.aj, %i.ak
  call void @_ZdlPvm(ptr noundef nonnull %i.ag, i64 noundef %i.al) #23
  br label %_ZNSt6vectorIjSaIjEED2Ev.exit

_ZNSt6vectorIjSaIjEED2Ev.exit:                    ; preds = %bb.j, %bb.k
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #25
  %i.am = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 3 uses
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !145 ; 2 uses
  %i.ao = load ptr, ptr %2, align 8, !tbaa !146   ; 3 uses
  %.not128 = icmp eq ptr %i.an, %i.ao
  br i1 %.not128, label %._crit_edge, label %.lr.ph125

.lr.ph125:                                        ; preds = %_ZNSt6vectorIjSaIjEED2Ev.exit
  %i.ap = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 6 uses
  %i.ar = invoke noundef ptr @_ZNK13ArrayVariable7itemizeERKSt6vectorIiSaIiEE(ptr noundef nonnull align 8 dereferenceable(288) %1, ptr noundef nonnull align 8 dereferenceable(24) %i.ao)
          to label %bb.l unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.l:                                             ; preds = %.lr.ph125
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #25
  invoke void @_ZNK8Variable9to_stringB5cxx11Ev(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %4, ptr noundef nonnull align 8 dereferenceable(200) %i.ar)
          to label %bb.m unwind label %.loopexit.split-lp155.loopexit.split-lp.loopexit.split-lp

bb.m:                                             ; preds = %bb.l
  %i.as = load ptr, ptr %4, align 8, !tbaa !42    ; 3 uses
  %i.at = load i64, ptr %i.ap, align 8, !tbaa !35 ; 6 uses
  %i.au = load i64, ptr %i.b, align 8, !tbaa !35  ; 5 uses
  %i.av = sub i64 9223372036854775807, %i.au
  %i.aw = icmp ult i64 %i.av, %i.at
  br i1 %i.aw, label %.loopexit158, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i.peel

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i.peel: ; preds = %bb.m
  %i.ax = add i64 %i.au, %i.at                    ; 3 uses
  %i.ay = load ptr, ptr %0, align 8, !tbaa !42    ; 2 uses
  %i.az = icmp eq ptr %i.ay, %i.a
  br i1 %i.az, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i.i.peel, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.peel

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.peel: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i.peel
  %i.ba = load i64, ptr %i.a, align 8, !tbaa !36
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i.i.peel

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i.i.peel: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i.peel
  %i.bb = icmp ult i64 %i.au, 16
  call void @llvm.assume(i1 %i.bb)
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i.i.peel

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i.i.peel: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i.i.peel, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.peel
  %i.bc = phi i64 [ %i.ba, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.peel ], [ 15, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i.i.peel ]
  %.not.i.i.i.i.peel = icmp ugt i64 %i.ax, %i.bc
  br i1 %.not.i.i.i.i.peel, label %bb.r, label %bb.n

bb.n:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i.i.peel
  %.not8.i.i.i.i.peel = icmp eq i64 %i.at, 0
  br i1 %.not8.i.i.i.i.peel, label %bb.s, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.bd = getelementptr inbounds nuw i8, ptr %i.ay, i64 %i.au ; 2 uses
  %cond.i.i.i.i.peel = icmp eq i64 %i.at, 1
  br i1 %cond.i.i.i.i.peel, label %bb.q, label %bb.p

bb.p:                                             ; preds = %bb.o
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.bd, ptr align 1 %i.as, i64 %i.at, i1 false)
  br label %bb.s

bb.q:                                             ; preds = %bb.o
  %i.be = load i8, ptr %i.as, align 1, !tbaa !36
  store i8 %i.be, ptr %i.bd, align 1, !tbaa !36
  br label %bb.s

bb.r:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i.i.peel
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %i.au, i64 noundef 0, ptr noundef %i.as, i64 noundef %i.at)
          to label %bb.s unwind label %.loopexit.split-lp93.loopexit.split-lp.loopexit.split-lp

bb.s:                                             ; preds = %bb.r, %bb.q, %bb.p, %bb.n
  store i64 %i.ax, ptr %i.b, align 8, !tbaa !35
  %i.bf = load ptr, ptr %0, align 8, !tbaa !42
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bf, i64 %i.ax
  store i8 0, ptr %i.bg, align 1, !tbaa !36
  %i.bh = load ptr, ptr %4, align 8, !tbaa !42    ; 2 uses
  %i.bi = icmp eq ptr %i.bh, %i.aq
  br i1 %i.bi, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.peel, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.peel

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.peel: ; preds = %bb.s
  %i.bj = load i64, ptr %i.aq, align 8, !tbaa !36
  %i.bk = add i64 %i.bj, 1
  call void @_ZdlPvm(ptr noundef %i.bh, i64 noundef %i.bk) #23
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.peel

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.peel: ; preds = %bb.s, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.peel
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #25
  %i.bl = load ptr, ptr %i.am, align 8, !tbaa !145 ; 2 uses
  %i.bm = load ptr, ptr %2, align 8, !tbaa !146   ; 3 uses
  %i.bn = ptrtoint ptr %i.bl to i64
  %i.bo = ptrtoint ptr %i.bm to i64
  %i.bp = sub i64 %i.bn, %i.bo
  %i.bq = sdiv exact i64 %i.bp, 24
  %i.br = icmp ugt i64 %i.bq, 1
  br i1 %i.br, label %.peel.next148, label %._crit_edge

._crit_edge:                                      ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.peel, %_ZNSt6vectorIjSaIjEED2Ev.exit
  %.lcssa113 = phi ptr [ %i.an, %_ZNSt6vectorIjSaIjEED2Ev.exit ], [ %i.bl, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.peel ], [ %i.dw, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ] ; 2 uses
  %.lcssa = phi ptr [ %i.ao, %_ZNSt6vectorIjSaIjEED2Ev.exit ], [ %i.bm, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.peel ], [ %i.dx, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ] ; 3 uses
  %.not4.i.i.i = icmp eq ptr %.lcssa, %.lcssa113
  br i1 %.not4.i.i.i, label %_ZSt8_DestroyIPSt6vectorIiSaIiEES2_EvT_S4_RSaIT0_E.exit.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %._crit_edge, %_ZSt8_DestroyISt6vectorIiSaIiEEEvPT_.exit.i.i.i
  %.05.i.i.i = phi ptr [ %i.by, %_ZSt8_DestroyISt6vectorIiSaIiEEEvPT_.exit.i.i.i ], [ %.lcssa, %._crit_edge ] ; 3 uses
  %i.bs = load ptr, ptr %.05.i.i.i, align 8, !tbaa !147 ; 3 uses
  %.not.i.i.i.i.i.i.i.i = icmp eq ptr %i.bs, null
  br i1 %.not.i.i.i.i.i.i.i.i, label %_ZSt8_DestroyISt6vectorIiSaIiEEEvPT_.exit.i.i.i, label %bb.t

bb.t:                                             ; preds = %.lr.ph.i.i.i
  %i.bt = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 16
  %i.bu = load ptr, ptr %i.bt, align 8, !tbaa !148
  %i.bv = ptrtoint ptr %i.bu to i64
  %i.bw = ptrtoint ptr %i.bs to i64
  %i.bx = sub i64 %i.bv, %i.bw
  call void @_ZdlPvm(ptr noundef nonnull %i.bs, i64 noundef %i.bx) #23
  br label %_ZSt8_DestroyISt6vectorIiSaIiEEEvPT_.exit.i.i.i

_ZSt8_DestroyISt6vectorIiSaIiEEEvPT_.exit.i.i.i:  ; preds = %bb.t, %.lr.ph.i.i.i
  %i.by = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 24 ; 2 uses
  %.not.i.i.i41 = icmp eq ptr %i.by, %.lcssa113
  br i1 %.not.i.i.i41, label %_ZSt8_DestroyIPSt6vectorIiSaIiEES2_EvT_S4_RSaIT0_E.exitthread-pre-split.i, label %.lr.ph.i.i.i, !llvm.loop !9

_ZSt8_DestroyIPSt6vectorIiSaIiEES2_EvT_S4_RSaIT0_E.exitthread-pre-split.i: ; preds = %_ZSt8_DestroyISt6vectorIiSaIiEEEvPT_.exit.i.i.i
  %.pr.i = load ptr, ptr %2, align 8, !tbaa !146
  br label %_ZSt8_DestroyIPSt6vectorIiSaIiEES2_EvT_S4_RSaIT0_E.exit.i

_ZSt8_DestroyIPSt6vectorIiSaIiEES2_EvT_S4_RSaIT0_E.exit.i: ; preds = %_ZSt8_DestroyIPSt6vectorIiSaIiEES2_EvT_S4_RSaIT0_E.exitthread-pre-split.i, %._crit_edge
  %i.bz = phi ptr [ %.pr.i, %_ZSt8_DestroyIPSt6vectorIiSaIiEES2_EvT_S4_RSaIT0_E.exitthread-pre-split.i ], [ %.lcssa, %._crit_edge ] ; 3 uses
  %.not.i.i1.i = icmp eq ptr %i.bz, null
  br i1 %.not.i.i1.i, label %_ZNSt6vectorIS_IiSaIiEESaIS1_EED2Ev.exit, label %bb.u

bb.u:                                             ; preds = %_ZSt8_DestroyIPSt6vectorIiSaIiEES2_EvT_S4_RSaIT0_E.exit.i
  %i.ca = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.cb = load ptr, ptr %i.ca, align 8, !tbaa !149
  %i.cc = ptrtoint ptr %i.cb to i64
  %i.cd = ptrtoint ptr %i.bz to i64
  %i.ce = sub i64 %i.cc, %i.cd
  call void @_ZdlPvm(ptr noundef nonnull %i.bz, i64 noundef %i.ce) #23
  br label %_ZNSt6vectorIS_IiSaIiEESaIS1_EED2Ev.exit

_ZNSt6vectorIS_IiSaIiEESaIS1_EED2Ev.exit:         ; preds = %_ZSt8_DestroyIPSt6vectorIiSaIiEES2_EvT_S4_RSaIT0_E.exit.i, %bb.u
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #25
  br label %.loopexit97

bb.v:                                             ; preds = %bb.e, %.noexc.i.i.i
  %i.cf = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIjSaIjEED2Ev.exit43

bb.w:                                             ; preds = %bb.i
  %i.cg = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ch = load ptr, ptr %3, align 8, !tbaa !140   ; 3 uses
  %.not.i.i.i42 = icmp eq ptr %i.ch, null
  br i1 %.not.i.i.i42, label %_ZNSt6vectorIjSaIjEED2Ev.exit43, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.ci = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.cj = load ptr, ptr %i.ci, align 8, !tbaa !141
  %i.ck = ptrtoint ptr %i.cj to i64
  %i.cl = ptrtoint ptr %i.ch to i64
  %i.cm = sub i64 %i.ck, %i.cl
  call void @_ZdlPvm(ptr noundef nonnull %i.ch, i64 noundef %i.cm) #23
  br label %_ZNSt6vectorIjSaIjEED2Ev.exit43

_ZNSt6vectorIjSaIjEED2Ev.exit43:                  ; preds = %bb.x, %bb.w, %bb.v
  %.pn32 = phi { ptr, i32 } [ %i.cf, %bb.v ], [ %i.cg, %bb.w ], [ %i.cg, %bb.x ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #25
  br label %.loopexit.split-lp

.peel.next148:                                    ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.peel, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.cn = phi ptr [ %i.dx, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %i.bm, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.peel ]
  %.015124 = phi i64 [ %i.dv, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ 1, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.peel ] ; 2 uses
  %i.co = getelementptr inbounds nuw [24 x i8], ptr %i.cn, i64 %.015124
  %i.cp = invoke noundef ptr @_ZNK13ArrayVariable7itemizeERKSt6vectorIiSaIiEE(ptr noundef nonnull align 8 dereferenceable(288) %1, ptr noundef nonnull align 8 dereferenceable(24) %i.co)
          to label %bb.y unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.y:                                             ; preds = %.peel.next148
  %i.cq = load i64, ptr %i.b, align 8, !tbaa !35  ; 5 uses
  %i.cr = and i64 %i.cq, -2
  %i.cs = icmp eq i64 %i.cr, 9223372036854775806
  br i1 %i.cs, label %.loopexit153, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i

.loopexit153:                                     ; preds = %bb.y
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.68) #26
          to label %.noexc45 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc45:                                         ; preds = %.loopexit153
  unreachable

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i: ; preds = %bb.y
  %i.ct = add nsw i64 %i.cq, 2                    ; 3 uses
  %i.cu = load ptr, ptr %0, align 8, !tbaa !42    ; 2 uses
  %i.cv = icmp eq ptr %i.cu, %i.a
  br i1 %i.cv, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i
  %i.cw = icmp ult i64 %i.cq, 16
  call void @llvm.assume(i1 %i.cw)
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i
  %i.cx = load i64, ptr %i.a, align 8, !tbaa !36
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i
  %i.cy = phi i64 [ %i.cx, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i ], [ 15, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i ]
  %.not.i.i.i44 = icmp ugt i64 %i.ct, %i.cy
  br i1 %.not.i.i.i44, label %bb.aa, label %bb.z

bb.z:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i
  %i.cz = getelementptr inbounds nuw i8, ptr %i.cu, i64 %i.cq
  store i16 8236, ptr %i.cz, align 1
  br label %bb.ab

bb.aa:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %i.cq, i64 noundef 0, ptr noundef nonnull @.str.25, i64 noundef 2)
          to label %bb.ab unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %.peel.next148, %bb.aa, %.lr.ph125, %.loopexit153
  %lpad.loopexit.split-lp230 = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp

bb.ab:                                            ; preds = %bb.z, %bb.aa
  store i64 %i.ct, ptr %i.b, align 8, !tbaa !35
  %i.da = load ptr, ptr %0, align 8, !tbaa !42
  %i.db = getelementptr inbounds nuw i8, ptr %i.da, i64 %i.ct
  store i8 0, ptr %i.db, align 1, !tbaa !36
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #25
  invoke void @_ZNK8Variable9to_stringB5cxx11Ev(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %4, ptr noundef nonnull align 8 dereferenceable(200) %i.cp)
          to label %bb.ac unwind label %.loopexit.split-lp155.loopexit.split-lp.loopexit.split-lp

bb.ac:                                            ; preds = %bb.ab
  %i.dc = load ptr, ptr %4, align 8, !tbaa !42    ; 3 uses
  %i.dd = load i64, ptr %i.ap, align 8, !tbaa !35 ; 6 uses
  %i.de = load i64, ptr %i.b, align 8, !tbaa !35  ; 5 uses
  %i.df = sub i64 9223372036854775807, %i.de
  %i.dg = icmp ult i64 %i.df, %i.dd
  br i1 %i.dg, label %.loopexit158, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i

.loopexit158:                                     ; preds = %bb.ac, %bb.m
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.68) #26
          to label %.noexc47 unwind label %.loopexit.split-lp93.loopexit.split-lp.loopexit.split-lp

.noexc47:                                         ; preds = %.loopexit158
  unreachable

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i: ; preds = %bb.ac
  %i.dh = add i64 %i.de, %i.dd                    ; 3 uses
  %i.di = load ptr, ptr %0, align 8, !tbaa !42    ; 2 uses
  %i.dj = icmp eq ptr %i.di, %i.a
  br i1 %i.dj, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i
  %i.dk = icmp ult i64 %i.de, 16
  call void @llvm.assume(i1 %i.dk)
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i
  %i.dl = load i64, ptr %i.a, align 8, !tbaa !36
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i.i
  %i.dm = phi i64 [ %i.dl, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i ], [ 15, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i.i ]
  %.not.i.i.i.i = icmp ugt i64 %i.dh, %i.dm
  br i1 %.not.i.i.i.i, label %bb.ah, label %bb.ad

bb.ad:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i.i
  %.not8.i.i.i.i = icmp eq i64 %i.dd, 0
  br i1 %.not8.i.i.i.i, label %bb.ai, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.dn = getelementptr inbounds nuw i8, ptr %i.di, i64 %i.de ; 2 uses
  %cond.i.i.i.i = icmp eq i64 %i.dd, 1
  br i1 %cond.i.i.i.i, label %bb.af, label %bb.ag

bb.af:                                            ; preds = %bb.ae
  %i.do = load i8, ptr %i.dc, align 1, !tbaa !36
  store i8 %i.do, ptr %i.dn, align 1, !tbaa !36
  br label %bb.ai

bb.ag:                                            ; preds = %bb.ae
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.dn, ptr align 1 %i.dc, i64 %i.dd, i1 false)
  br label %bb.ai

bb.ah:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i.i
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %i.de, i64 noundef 0, ptr noundef %i.dc, i64 noundef %i.dd)
          to label %bb.ai unwind label %.loopexit.split-lp93.loopexit.split-lp.loopexit.split-lp

bb.ai:                                            ; preds = %bb.ag, %bb.af, %bb.ad, %bb.ah
  store i64 %i.dh, ptr %i.b, align 8, !tbaa !35
  %i.dp = load ptr, ptr %0, align 8, !tbaa !42
  %i.dq = getelementptr inbounds nuw i8, ptr %i.dp, i64 %i.dh
  store i8 0, ptr %i.dq, align 1, !tbaa !36
  %i.dr = load ptr, ptr %4, align 8, !tbaa !42    ; 2 uses
  %i.ds = icmp eq ptr %i.dr, %i.aq
  br i1 %i.ds, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.ai
  %i.dt = load i64, ptr %i.aq, align 8, !tbaa !36
  %i.du = add i64 %i.dt, 1
  call void @_ZdlPvm(ptr noundef %i.dr, i64 noundef %i.du) #23
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.ai, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #25
  %i.dv = add nuw i64 %.015124, 1                 ; 2 uses
  %i.dw = load ptr, ptr %i.am, align 8, !tbaa !145 ; 2 uses
  %i.dx = load ptr, ptr %2, align 8, !tbaa !146   ; 3 uses
  %i.dy = ptrtoint ptr %i.dw to i64
  %i.dz = ptrtoint ptr %i.dx to i64
  %i.ea = sub i64 %i.dy, %i.dz
  %i.eb = sdiv exact i64 %i.ea, 24
  %i.ec = icmp ult i64 %i.dv, %i.eb
  br i1 %i.ec, label %.peel.next148, label %._crit_edge, !llvm.loop !265

.loopexit.split-lp155.loopexit.split-lp.loopexit.split-lp: ; preds = %bb.ab, %bb.l
  %lpad.loopexit.split-lp232 = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit51

.loopexit.split-lp93.loopexit.split-lp.loopexit.split-lp: ; preds = %bb.ah, %bb.r, %.loopexit158
  %lpad.loopexit.split-lp235 = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ed = load ptr, ptr %4, align 8, !tbaa !42    ; 2 uses
  %i.ee = icmp eq ptr %i.ed, %i.aq
  br i1 %i.ee, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit51, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i49

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i49: ; preds = %.loopexit.split-lp93.loopexit.split-lp.loopexit.split-lp
  %i.ef = load i64, ptr %i.aq, align 8, !tbaa !36
  %i.eg = add i64 %i.ef, 1
  call void @_ZdlPvm(ptr noundef %i.ed, i64 noundef %i.eg) #23
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit51

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit51: ; preds = %.loopexit.split-lp93.loopexit.split-lp.loopexit.split-lp, %.loopexit.split-lp155.loopexit.split-lp.loopexit.split-lp, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i49
  %.pn35 = phi { ptr, i32 } [ %lpad.loopexit.split-lp235, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i49 ], [ %lpad.loopexit.split-lp232, %.loopexit.split-lp155.loopexit.split-lp.loopexit.split-lp ], [ %lpad.loopexit.split-lp235, %.loopexit.split-lp93.loopexit.split-lp.loopexit.split-lp ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #25
  br label %.loopexit.split-lp

.loopexit.split-lp:                               ; preds = %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit51, %_ZNSt6vectorIjSaIjEED2Ev.exit43
  %.pn35.pn.pn = phi { ptr, i32 } [ %.pn32, %_ZNSt6vectorIjSaIjEED2Ev.exit43 ], [ %.pn35, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit51 ], [ %lpad.loopexit.split-lp230, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ]
  call void @_ZNSt6vectorIS_IiSaIiEESaIS1_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %2) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #25
  br label %.loopexit.split-lp99

_ZNK8Variable10is_virtualEv.exit.thread:          ; preds = %bb.b, %_ZNK8Variable10is_virtualEv.exit
  %i.eh = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.ei = load ptr, ptr %i.eh, align 8, !tbaa !66
  %i.ej = load i32, ptr %i.ei, align 8, !tbaa !89
  %i.ek = and i32 %i.ej, -2
  %switch = icmp eq i32 %i.ek, 2
  br i1 %switch, label %.preheader, label %bb.bb

.preheader:                                       ; preds = %_ZNK8Variable10is_virtualEv.exit.thread
  %i.el = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 4 uses
  %i.em = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 3 uses
  %i.en = load ptr, ptr %i.em, align 8, !tbaa !91
  %i.eo = load ptr, ptr %i.el, align 8, !tbaa !92 ; 2 uses
  %.not127 = icmp eq ptr %i.en, %i.eo
  br i1 %.not127, label %.loopexit97, label %bb.aj

bb.aj:                                            ; preds = %.preheader
  %i.ep = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 2 uses
  %i.eq = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #25
  %i.er = load ptr, ptr %i.eo, align 8, !tbaa !49
  invoke void @_ZNK8Variable9to_stringB5cxx11Ev(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %5, ptr noundef nonnull align 8 dereferenceable(200) %i.er)
          to label %bb.ak unwind label %.loopexit.split-lp139.loopexit.split-lp.loopexit.split-lp

bb.ak:                                            ; preds = %bb.aj
  %i.es = load ptr, ptr %5, align 8, !tbaa !42    ; 3 uses
  %i.et = load i64, ptr %i.ep, align 8, !tbaa !35 ; 6 uses
  %i.eu = load i64, ptr %i.b, align 8, !tbaa !35  ; 5 uses
  %i.ev = sub i64 9223372036854775807, %i.eu
  %i.ew = icmp ult i64 %i.ev, %i.et
  br i1 %i.ew, label %.loopexit143, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i62.peel

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i62.peel: ; preds = %bb.ak
  %i.ex = add i64 %i.eu, %i.et                    ; 3 uses
  %i.ey = load ptr, ptr %0, align 8, !tbaa !42    ; 2 uses
  %i.ez = icmp eq ptr %i.ey, %i.a
  br i1 %i.ez, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i.i68.peel, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i63.peel

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i63.peel: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i62.peel
  %i.fa = load i64, ptr %i.a, align 8, !tbaa !36
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i.i64.peel

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i.i68.peel: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i62.peel
  %i.fb = icmp ult i64 %i.eu, 16
  call void @llvm.assume(i1 %i.fb)
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i.i64.peel

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i.i64.peel: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i.i68.peel, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i63.peel
  %i.fc = phi i64 [ %i.fa, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i63.peel ], [ 15, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i.i68.peel ]
  %.not.i.i.i.i65.peel = icmp ugt i64 %i.ex, %i.fc
  br i1 %.not.i.i.i.i65.peel, label %bb.ap, label %bb.al

bb.al:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i.i64.peel
  %.not8.i.i.i.i66.peel = icmp eq i64 %i.et, 0
  br i1 %.not8.i.i.i.i66.peel, label %bb.aq, label %bb.am

bb.am:                                            ; preds = %bb.al
  %i.fd = getelementptr inbounds nuw i8, ptr %i.ey, i64 %i.eu ; 2 uses
  %cond.i.i.i.i67.peel = icmp eq i64 %i.et, 1
  br i1 %cond.i.i.i.i67.peel, label %bb.ao, label %bb.an

bb.an:                                            ; preds = %bb.am
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.fd, ptr align 1 %i.es, i64 %i.et, i1 false)
  br label %bb.aq

bb.ao:                                            ; preds = %bb.am
  %i.fe = load i8, ptr %i.es, align 1, !tbaa !36
  store i8 %i.fe, ptr %i.fd, align 1, !tbaa !36
  br label %bb.aq

bb.ap:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i.i64.peel
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %i.eu, i64 noundef 0, ptr noundef %i.es, i64 noundef %i.et)
          to label %bb.aq unwind label %.loopexit.split-lp104.loopexit.split-lp.loopexit.split-lp

bb.aq:                                            ; preds = %bb.ap, %bb.ao, %bb.an, %bb.al
  store i64 %i.ex, ptr %i.b, align 8, !tbaa !35
  %i.ff = load ptr, ptr %0, align 8, !tbaa !42
  %i.fg = getelementptr inbounds nuw i8, ptr %i.ff, i64 %i.ex
  store i8 0, ptr %i.fg, align 1, !tbaa !36
  %i.fh = load ptr, ptr %5, align 8, !tbaa !42    ; 2 uses
  %i.fi = icmp eq ptr %i.fh, %i.eq
  br i1 %i.fi, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit74.peel, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i72.peel

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i72.peel: ; preds = %bb.aq
  %i.fj = load i64, ptr %i.eq, align 8, !tbaa !36
  %i.fk = add i64 %i.fj, 1
  call void @_ZdlPvm(ptr noundef %i.fh, i64 noundef %i.fk) #23
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit74.peel

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit74.peel: ; preds = %bb.aq, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i72.peel
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #25
  %i.fl = load ptr, ptr %i.em, align 8, !tbaa !91
  %i.fm = load ptr, ptr %i.el, align 8, !tbaa !92
  %i.fn = ptrtoint ptr %i.fl to i64
  %i.fo = ptrtoint ptr %i.fm to i64
  %i.fp = sub i64 %i.fn, %i.fo
  %i.fq = icmp ugt i64 %i.fp, 8
  br i1 %i.fq, label %.peel.next, label %.loopexit97

.peel.next:                                       ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit74.peel, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit74
  %.0123 = phi i64 [ %i.gy, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit74 ], [ 1, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit74.peel ] ; 2 uses
  %i.fr = load i64, ptr %i.b, align 8, !tbaa !35  ; 5 uses
  %i.fs = and i64 %i.fr, -2
  %i.ft = icmp eq i64 %i.fs, 9223372036854775806
  br i1 %i.ft, label %.loopexit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i52

.loopexit:                                        ; preds = %.peel.next
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.68) #26
          to label %.noexc59 unwind label %.loopexit.split-lp99.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc59:                                         ; preds = %.loopexit
  unreachable

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i52: ; preds = %.peel.next
  %i.fu = add nsw i64 %i.fr, 2                    ; 3 uses
  %i.fv = load ptr, ptr %0, align 8, !tbaa !42    ; 2 uses
  %i.fw = icmp eq ptr %i.fv, %i.a
  br i1 %i.fw, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i58, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i53

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i58: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i52
  %i.fx = icmp ult i64 %i.fr, 16
  call void @llvm.assume(i1 %i.fx)
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i54

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i53: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i52
  %i.fy = load i64, ptr %i.a, align 8, !tbaa !36
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i54

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i54: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i53, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i58
  %i.fz = phi i64 [ %i.fy, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i53 ], [ 15, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i58 ]
  %.not.i.i.i55 = icmp ugt i64 %i.fu, %i.fz
  br i1 %.not.i.i.i55, label %bb.as, label %bb.ar

bb.ar:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i54
  %i.ga = getelementptr inbounds nuw i8, ptr %i.fv, i64 %i.fr
  store i16 8236, ptr %i.ga, align 1
  br label %bb.at

bb.as:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i54
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %i.fr, i64 noundef 0, ptr noundef nonnull @.str.25, i64 noundef 2)
          to label %bb.at unwind label %.loopexit.split-lp99.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.loopexit.split-lp99.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %bb.as, %.loopexit
  %lpad.loopexit.split-lp240 = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp99

bb.at:                                            ; preds = %bb.ar, %bb.as
  store i64 %i.fu, ptr %i.b, align 8, !tbaa !35
  %i.gb = load ptr, ptr %0, align 8, !tbaa !42
  %i.gc = getelementptr inbounds nuw i8, ptr %i.gb, i64 %i.fu
  store i8 0, ptr %i.gc, align 1, !tbaa !36
  %.pre = load ptr, ptr %i.el, align 8, !tbaa !92
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #25
  %i.gd = getelementptr inbounds nuw [8 x i8], ptr %.pre, i64 %.0123
  %i.ge = load ptr, ptr %i.gd, align 8, !tbaa !49
  invoke void @_ZNK8Variable9to_stringB5cxx11Ev(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %5, ptr noundef nonnull align 8 dereferenceable(200) %i.ge)
          to label %bb.au unwind label %.loopexit.split-lp139.loopexit.split-lp.loopexit.split-lp

bb.au:                                            ; preds = %bb.at
  %i.gf = load ptr, ptr %5, align 8, !tbaa !42    ; 3 uses
  %i.gg = load i64, ptr %i.ep, align 8, !tbaa !35 ; 6 uses
  %i.gh = load i64, ptr %i.b, align 8, !tbaa !35  ; 5 uses
  %i.gi = sub i64 9223372036854775807, %i.gh
  %i.gj = icmp ult i64 %i.gi, %i.gg
  br i1 %i.gj, label %.loopexit143, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i62

.loopexit143:                                     ; preds = %bb.au, %bb.ak
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.68) #26
          to label %.noexc69 unwind label %.loopexit.split-lp104.loopexit.split-lp.loopexit.split-lp

.noexc69:                                         ; preds = %.loopexit143
  unreachable

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i62: ; preds = %bb.au
  %i.gk = add i64 %i.gh, %i.gg                    ; 3 uses
  %i.gl = load ptr, ptr %0, align 8, !tbaa !42    ; 2 uses
  %i.gm = icmp eq ptr %i.gl, %i.a
  br i1 %i.gm, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i.i68, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i63

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i.i68: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i62
  %i.gn = icmp ult i64 %i.gh, 16
  call void @llvm.assume(i1 %i.gn)
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i.i64

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i63: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i62
  %i.go = load i64, ptr %i.a, align 8, !tbaa !36
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i.i64

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i.i64: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i63, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i.i68
  %i.gp = phi i64 [ %i.go, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i63 ], [ 15, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i.i68 ]
  %.not.i.i.i.i65 = icmp ugt i64 %i.gk, %i.gp
  br i1 %.not.i.i.i.i65, label %bb.az, label %bb.av

bb.av:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i.i64
  %.not8.i.i.i.i66 = icmp eq i64 %i.gg, 0
  br i1 %.not8.i.i.i.i66, label %bb.ba, label %bb.aw

bb.aw:                                            ; preds = %bb.av
  %i.gq = getelementptr inbounds nuw i8, ptr %i.gl, i64 %i.gh ; 2 uses
  %cond.i.i.i.i67 = icmp eq i64 %i.gg, 1
  br i1 %cond.i.i.i.i67, label %bb.ax, label %bb.ay

bb.ax:                                            ; preds = %bb.aw
  %i.gr = load i8, ptr %i.gf, align 1, !tbaa !36
  store i8 %i.gr, ptr %i.gq, align 1, !tbaa !36
  br label %bb.ba

bb.ay:                                            ; preds = %bb.aw
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.gq, ptr align 1 %i.gf, i64 %i.gg, i1 false)
  br label %bb.ba

bb.az:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i.i64
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %i.gh, i64 noundef 0, ptr noundef %i.gf, i64 noundef %i.gg)
          to label %bb.ba unwind label %.loopexit.split-lp104.loopexit.split-lp.loopexit.split-lp

bb.ba:                                            ; preds = %bb.ay, %bb.ax, %bb.av, %bb.az
  store i64 %i.gk, ptr %i.b, align 8, !tbaa !35
  %i.gs = load ptr, ptr %0, align 8, !tbaa !42
  %i.gt = getelementptr inbounds nuw i8, ptr %i.gs, i64 %i.gk
  store i8 0, ptr %i.gt, align 1, !tbaa !36
  %i.gu = load ptr, ptr %5, align 8, !tbaa !42    ; 2 uses
  %i.gv = icmp eq ptr %i.gu, %i.eq
  br i1 %i.gv, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit74, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i72

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i72: ; preds = %bb.ba
  %i.gw = load i64, ptr %i.eq, align 8, !tbaa !36
  %i.gx = add i64 %i.gw, 1
  call void @_ZdlPvm(ptr noundef %i.gu, i64 noundef %i.gx) #23
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit74

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit74: ; preds = %bb.ba, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i72
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #25
  %i.gy = add nuw i64 %.0123, 1                   ; 2 uses
  %i.gz = load ptr, ptr %i.em, align 8, !tbaa !91
  %i.ha = load ptr, ptr %i.el, align 8, !tbaa !92
  %i.hb = ptrtoint ptr %i.gz to i64
  %i.hc = ptrtoint ptr %i.ha to i64
  %i.hd = sub i64 %i.hb, %i.hc
  %i.he = ashr exact i64 %i.hd, 3
  %i.hf = icmp ult i64 %i.gy, %i.he
  br i1 %i.hf, label %.peel.next, label %.loopexit97, !llvm.loop !266

.loopexit.split-lp139.loopexit.split-lp.loopexit.split-lp: ; preds = %bb.at, %bb.aj
  %lpad.loopexit.split-lp243 = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit77

.loopexit.split-lp104.loopexit.split-lp.loopexit.split-lp: ; preds = %bb.az, %bb.ap, %.loopexit143
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.hg = load ptr, ptr %5, align 8, !tbaa !42    ; 2 uses
  %i.hh = icmp eq ptr %i.hg, %i.eq
  br i1 %i.hh, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit77, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i75

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i75: ; preds = %.loopexit.split-lp104.loopexit.split-lp.loopexit.split-lp
  %i.hi = load i64, ptr %i.eq, align 8, !tbaa !36
  %i.hj = add i64 %i.hi, 1
  call void @_ZdlPvm(ptr noundef %i.hg, i64 noundef %i.hj) #23
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit77

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit77: ; preds = %.loopexit.split-lp104.loopexit.split-lp.loopexit.split-lp, %.loopexit.split-lp139.loopexit.split-lp.loopexit.split-lp, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i75
  %.pn = phi { ptr, i32 } [ %lpad.loopexit.split-lp, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i75 ], [ %lpad.loopexit.split-lp243, %.loopexit.split-lp139.loopexit.split-lp.loopexit.split-lp ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp104.loopexit.split-lp.loopexit.split-lp ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #25
  br label %.loopexit.split-lp99

bb.bb:                                            ; preds = %_ZNK8Variable10is_virtualEv.exit.thread
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #25
  invoke void @_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEC1Ev(ptr noundef nonnull align 8 dereferenceable(112) %6)
          to label %bb.bc unwind label %bb.bn

bb.bc:                                            ; preds = %bb.bb
  %i.hk = load ptr, ptr %1, align 8, !tbaa !97
  %i.hl = getelementptr inbounds nuw i8, ptr %i.hk, i64 88
  %i.hm = load ptr, ptr %i.hl, align 8
  invoke void %i.hm(ptr noundef nonnull align 8 dereferenceable(200) %1, ptr noundef nonnull align 8 dereferenceable(8) %6)
          to label %bb.bd unwind label %bb.bo

bb.bd:                                            ; preds = %bb.bc
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #25
  call void @llvm.experimental.noalias.scope.decl(metadata !273)
  call void @llvm.experimental.noalias.scope.decl(metadata !274)
  %i.hn = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 10 uses
  store ptr %i.hn, ptr %7, align 8, !tbaa !32, !alias.scope !275
  %i.ho = getelementptr inbounds nuw i8, ptr %7, i64 8 ; 6 uses
  store i64 0, ptr %i.ho, align 8, !tbaa !35, !alias.scope !275
  store i8 0, ptr %i.hn, align 8, !tbaa !36, !alias.scope !275
  %i.hp = getelementptr inbounds nuw i8, ptr %6, i64 48
  %i.hq = load ptr, ptr %i.hp, align 8, !tbaa !114, !noalias !275 ; 3 uses
  %.not.i.not.i.i = icmp eq ptr %i.hq, null
end_hunk_0

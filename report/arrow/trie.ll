inline.NumInlined: 495
inline.NumDeleted: 240
begin_hunk_0_@_ZN5arrow8internal11TrieBuilder6AppendESt17basic_string_viewIcSt11char_traitsIcEEb:bb.a
  store ptr null, ptr %0, align 8, !tbaa !29, !alias.scope !120
  br label %.critedge79

bb.l:                                             ; preds = %bb.j
  call void @_ZN5arrow6Status8FromArgsIJRA24_KcEEES0_NS_10StatusCodeEDpOT_(ptr dead_on_unwind writable sret(%"class.arrow::Status") align 8 %0, i8 noundef signext 4, ptr noundef nonnull align 1 dereferenceable(24) @.str.17)
  br label %.critedge79

bb.m:                                             ; preds = %bb.i
  %i.ck = load i16, ptr %i.h, align 8, !tbaa !86  ; 2 uses
  %i.cl = add i16 %i.ck, 1
  store i16 %i.cl, ptr %i.h, align 8, !tbaa !86
  store i16 %i.ck, ptr %i.m, align 2, !tbaa !24
  store ptr null, ptr %0, align 8, !tbaa !29, !alias.scope !123
  br label %.critedge79

bb.n:                                             ; preds = %.critedge.thread123
  %i.cm = getelementptr inbounds nuw i8, ptr %i.m, i64 2 ; 3 uses
  %i.cn = load i16, ptr %i.cm, align 2, !tbaa !27
  %i.co = icmp eq i16 %i.cn, -1
  br i1 %i.co, label %bb.o, label %_ZN5arrow6StatusD2Ev.exit111

bb.o:                                             ; preds = %bb.n
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #15
  %i.cp = load ptr, ptr %i.c, align 8, !tbaa !63, !noalias !126 ; 2 uses
  %i.cq = load ptr, ptr %i.b, align 8, !tbaa !46, !noalias !126
  %i.cr = ptrtoint ptr %i.cp to i64
  %i.cs = ptrtoint ptr %i.cq to i64
  %i.ct = sub i64 %i.cr, %i.cs
  %i.cu = ashr exact i64 %i.ct, 1                 ; 2 uses
  %i.cv = icmp ugt i64 %i.cu, 8388607
  br i1 %i.cv, label %_ZN5arrow6StatusD2Ev.exit107, label %_ZN5arrow6StatusD2Ev.exit107.thread

_ZN5arrow6StatusD2Ev.exit107.thread:              ; preds = %bb.o
  %i.cw = lshr i64 %i.cu, 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #15, !noalias !126
  store i16 -1, ptr %i.a, align 2, !tbaa !28, !noalias !126
  call void @_ZNSt6vectorIsSaIsEE14_M_fill_insertEN9__gnu_cxx17__normal_iteratorIPsS1_EEmRKs(ptr noundef nonnull align 8 dereferenceable(24) %i.b, ptr %i.cp, i64 noundef 256, ptr noundef nonnull align 2 dereferenceable(2) %i.a), !noalias !126
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #15, !noalias !126
  %i.cx = trunc nuw nsw i64 %i.cw to i16
  store i16 %i.cx, ptr %i.cm, align 2, !tbaa !28, !noalias !126
  store ptr null, ptr %0, align 8, !tbaa !29
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #15
  br label %_ZN5arrow6StatusD2Ev.exit111

_ZN5arrow6StatusD2Ev.exit107:                     ; preds = %bb.o
  call void @_ZN5arrow6Status8FromArgsIJRA47_KcEEES0_NS_10StatusCodeEDpOT_(ptr dead_on_unwind nonnull writable sret(%"class.arrow::Status") align 8 %17, i8 noundef signext 6, ptr noundef nonnull align 1 dereferenceable(47) @.str.16)
  %.pr = load ptr, ptr %17, align 8, !tbaa !29    ; 2 uses
  store ptr %.pr, ptr %0, align 8, !tbaa !29
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #15
  %i.cy = icmp eq ptr %.pr, null
  br i1 %i.cy, label %_ZN5arrow6StatusD2Ev.exit111, label %.critedge79

_ZN5arrow6StatusD2Ev.exit111:                     ; preds = %_ZN5arrow6StatusD2Ev.exit107.thread, %_ZN5arrow6StatusD2Ev.exit107, %bb.n
  %i.cz = add nsw i64 %.154.lcssa, 1              ; 5 uses
  %i.da = getelementptr inbounds nuw i8, ptr %3, i64 %.154.lcssa
  %i.db = load i8, ptr %i.da, align 1, !tbaa !45  ; 3 uses
  %i.dc = add nsw i64 %.156.lcssa, -1
  %i.dd = load i16, ptr %i.cm, align 2, !tbaa !27
  %i.de = sext i16 %i.dd to i32
  %i.df = shl nsw i32 %i.de, 8
  %i.dg = zext i8 %i.db to i32
  %i.dh = or disjoint i32 %i.df, %i.dg
  %i.di = sext i32 %i.dh to i64
  %i.dj = load ptr, ptr %i.b, align 8, !tbaa !46
  %i.dk = getelementptr inbounds nuw [2 x i8], ptr %i.dj, i64 %i.di
  %i.dl = load i16, ptr %i.dk, align 2, !tbaa !28 ; 2 uses
  %i.dm = sext i16 %i.dl to i64
  %.not127 = icmp eq i16 %i.dl, -1
  br i1 %.not127, label %bb.p, label %.critedge, !llvm.loop !129

bb.p:                                             ; preds = %_ZN5arrow6StatusD2Ev.exit111
  %i.dn = icmp ugt i64 %i.cz, %2
  br i1 %i.dn, label %bb.q, label %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE6substrEmm.exit114

bb.q:                                             ; preds = %bb.p
  call void (ptr, ...) @_ZSt24__throw_out_of_range_fmtPKcz(ptr noundef nonnull @.str.23, ptr noundef nonnull @.str.22, i64 noundef %i.cz, i64 noundef %2) #18
  unreachable

_ZNKSt17basic_string_viewIcSt11char_traitsIcEE6substrEmm.exit114: ; preds = %bb.p
  %i.do = sub nuw i64 %2, %i.cz                   ; 3 uses
  %i.dp = getelementptr inbounds nuw i8, ptr %3, i64 %i.cz ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !130)
  %i.dq = icmp ugt i64 %i.do, 11
  br i1 %i.dq, label %_ZN5arrow6StatusD2Ev.exit.i115, label %_ZN5arrow6StatusD2Ev.exit36.i

_ZN5arrow6StatusD2Ev.exit.i115:                   ; preds = %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE6substrEmm.exit114, %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE6substrEmm.exit.i
  %.01355.i = phi ptr [ %i.du, %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE6substrEmm.exit.i ], [ %i.m, %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE6substrEmm.exit114 ]
  %.01454.i = phi i8 [ %i.dw, %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE6substrEmm.exit.i ], [ %i.db, %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE6substrEmm.exit114 ]
  %.sroa.6.053.i = phi ptr [ %i.dy, %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE6substrEmm.exit.i ], [ %i.dp, %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE6substrEmm.exit114 ] ; 3 uses
  %.sroa.041.052.i = phi i64 [ %i.dx, %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE6substrEmm.exit.i ], [ %i.do, %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE6substrEmm.exit114 ]
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #15, !noalias !130
  store i16 -1, ptr %5, align 2, !tbaa !24, !noalias !130
  store i16 -1, ptr %i.d, align 2, !tbaa !27, !noalias !130
  store i8 11, ptr %i.e, align 2, !tbaa !35, !noalias !130
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(11) %i.f, ptr noundef nonnull align 1 dereferenceable(11) %.sroa.6.053.i, i64 11, i1 false), !noalias !130
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #15, !noalias !130
  call void @_ZN5arrow8internal11TrieBuilder15AppendChildNodeEPNS0_4Trie4NodeEhOS3_(ptr dead_on_unwind nonnull writable sret(%"class.arrow::Status") align 8 %6, ptr noundef nonnull align 8 dereferenceable(56) %1, ptr noundef nonnull %.01355.i, i8 noundef zeroext %.01454.i, ptr noundef nonnull align 2 dereferenceable(16) %5), !noalias !130
  %i.dr = load ptr, ptr %6, align 8, !tbaa !29, !noalias !130 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #15, !noalias !130
  %i.ds = icmp eq ptr %i.dr, null
  br i1 %i.ds, label %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE6substrEmm.exit.i, label %.critedge22.i

_ZNKSt17basic_string_viewIcSt11char_traitsIcEE6substrEmm.exit.i: ; preds = %_ZN5arrow6StatusD2Ev.exit.i115
  %i.dt = load ptr, ptr %i.g, align 8, !tbaa !84, !noalias !130
  %i.du = getelementptr inbounds i8, ptr %i.dt, i64 -16 ; 2 uses
  %i.dv = getelementptr inbounds nuw i8, ptr %.sroa.6.053.i, i64 11
  %i.dw = load i8, ptr %i.dv, align 1, !tbaa !45, !noalias !130 ; 2 uses
  %i.dx = add i64 %.sroa.041.052.i, -12           ; 3 uses
  %i.dy = getelementptr inbounds nuw i8, ptr %.sroa.6.053.i, i64 12 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #15, !noalias !130
  %i.dz = icmp ugt i64 %i.dx, 11
  br i1 %i.dz, label %_ZN5arrow6StatusD2Ev.exit.i115, label %_ZN5arrow6StatusD2Ev.exit36.i, !llvm.loop !85

_ZN5arrow6StatusD2Ev.exit36.i:                    ; preds = %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE6substrEmm.exit.i, %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE6substrEmm.exit114
  %.sroa.041.0.lcssa.i = phi i64 [ %i.do, %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE6substrEmm.exit114 ], [ %i.dx, %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE6substrEmm.exit.i ] ; 2 uses
  %.sroa.6.0.lcssa.i = phi ptr [ %i.dp, %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE6substrEmm.exit114 ], [ %i.dy, %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE6substrEmm.exit.i ]
  %.014.lcssa.i = phi i8 [ %i.db, %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE6substrEmm.exit114 ], [ %i.dw, %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE6substrEmm.exit.i ]
  %.013.lcssa.i = phi ptr [ %i.m, %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE6substrEmm.exit114 ], [ %i.du, %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE6substrEmm.exit.i ]
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #15, !noalias !130
  %i.ea = load i16, ptr %i.h, align 8, !tbaa !86, !noalias !130
  store i16 %i.ea, ptr %7, align 2, !tbaa !24, !noalias !130
  store i16 -1, ptr %i.i, align 2, !tbaa !27, !noalias !130
  %i.eb = trunc nuw nsw i64 %.sroa.041.0.lcssa.i to i8
  store i8 %i.eb, ptr %i.j, align 2, !tbaa !35, !noalias !130
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.k, ptr align 1 %.sroa.6.0.lcssa.i, i64 %.sroa.041.0.lcssa.i, i1 false), !noalias !130
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #15, !noalias !130
  call void @_ZN5arrow8internal11TrieBuilder15AppendChildNodeEPNS0_4Trie4NodeEhOS3_(ptr dead_on_unwind nonnull writable sret(%"class.arrow::Status") align 8 %8, ptr noundef nonnull align 8 dereferenceable(56) %1, ptr noundef nonnull %.013.lcssa.i, i8 noundef zeroext %.014.lcssa.i, ptr noundef nonnull align 2 dereferenceable(16) %7), !noalias !130
  %i.ec = load ptr, ptr %8, align 8, !tbaa !29, !noalias !130 ; 2 uses
  store ptr %i.ec, ptr %0, align 8, !tbaa !29, !alias.scope !130
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #15, !noalias !130
  %i.ed = icmp eq ptr %i.ec, null
  br i1 %i.ed, label %_ZN5arrow6StatusD2Ev.exit40.i, label %.critedge24.i

_ZN5arrow6StatusD2Ev.exit40.i:                    ; preds = %_ZN5arrow6StatusD2Ev.exit36.i
  %i.ee = load i16, ptr %i.h, align 8, !tbaa !86, !noalias !130
  %i.ef = add i16 %i.ee, 1
  store i16 %i.ef, ptr %i.h, align 8, !tbaa !86, !noalias !130
  store ptr null, ptr %0, align 8, !tbaa !29, !alias.scope !133
  br label %.critedge24.i

.critedge24.i:                                    ; preds = %_ZN5arrow6StatusD2Ev.exit40.i, %_ZN5arrow6StatusD2Ev.exit36.i
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #15, !noalias !130
  br label %.critedge79

.critedge22.i:                                    ; preds = %_ZN5arrow6StatusD2Ev.exit.i115
  store ptr %i.dr, ptr %0, align 8, !alias.scope !130
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #15, !noalias !130
  br label %.critedge79

.critedge79:                                      ; preds = %_ZN5arrow6StatusD2Ev.exit107, %.critedge22.i, %.critedge24.i, %.critedge24.i.i, %.critedge22.i.i, %_ZN5arrow6StatusD2Ev.exit83, %_ZN5arrow6StatusD2Ev.exit, %_ZN5arrow6StatusD2Ev.exit101, %bb.k, %bb.l, %bb.m
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define void @_ZN5arrow8internal11TrieBuilder6FinishEv(ptr dead_on_unwind noalias nofree writable writeonly sret(%"class.arrow::internal::Trie") align 8 captures(none) initializes((0, 50)) %0, ptr nofree noundef nonnull align 8 captures(none) dereferenceable(56) %1) local_unnamed_addr #3 align 2 {
bb.a:
  %i.a = load <2 x ptr>, ptr %1, align 8, !tbaa !84
  store <2 x ptr> %i.a, ptr %0, align 8, !tbaa !84
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !61
  store ptr %i.d, ptr %i.b, align 8, !tbaa !61
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(50) %1, i8 0, i64 24, i1 false)
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  %i.g = load <2 x ptr>, ptr %i.f, align 8, !tbaa !23
  store <2 x ptr> %i.g, ptr %i.e, align 8, !tbaa !23
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !62
  store ptr %i.j, ptr %i.h, align 8, !tbaa !62
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.f, i8 0, i64 24, i1 false)
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.m = load i16, ptr %i.l, align 8, !tbaa !12
  store i16 %i.m, ptr %i.k, align 8, !tbaa !12
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr void @_ZSt12__str_concatINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEET_PKNS6_10value_typeENS6_9size_typeES9_SA_RKNS6_14allocator_typeE(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef %1, i64 noundef %2, ptr noundef %3, i64 noundef %4, ptr noundef nonnull align 1 dereferenceable(1) %5) local_unnamed_addr #4 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 8 uses
  store ptr %i.a, ptr %0, align 8, !tbaa !60
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 5 uses
  store i64 0, ptr %i.b, align 8, !tbaa !44
  store i8 0, ptr %i.a, align 8, !tbaa !45
  %i.c = add i64 %4, %2
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7reserveEm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %i.c)
          to label %bb.b unwind label %bb.p

bb.b:                                             ; preds = %bb.a
  %i.d = load i64, ptr %i.b, align 8, !tbaa !44   ; 5 uses
  %i.e = sub i64 9223372036854775807, %i.d
  %i.f = icmp ult i64 %i.e, %2
  br i1 %i.f, label %.invoke, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i: ; preds = %bb.b
  %i.g = add i64 %i.d, %2                         ; 3 uses
  %i.h = load ptr, ptr %0, align 8, !tbaa !36     ; 2 uses
  %i.i = icmp eq ptr %i.h, %i.a
  br i1 %i.i, label %bb.c, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

bb.c:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i
  %i.j = icmp ult i64 %i.d, 16
  tail call void @llvm.assume(i1 %i.j)
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i
  %6 = load i64, ptr %i.a, align 8, !tbaa !45
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i, %bb.c
  %7 = phi i64 [ %6, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i ], [ 15, %bb.c ]
  %.not.i.i = icmp ugt i64 %i.g, %7
  br i1 %.not.i.i, label %bb.h, label %bb.d

bb.d:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i
  %.not8.i.i = icmp eq i64 %2, 0
  br i1 %.not8.i.i, label %bb.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.k = getelementptr inbounds nuw i8, ptr %i.h, i64 %i.d ; 2 uses
  %cond.i.i = icmp eq i64 %2, 1
  br i1 %cond.i.i, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.l = load i8, ptr %1, align 1, !tbaa !45
  store i8 %i.l, ptr %i.k, align 1, !tbaa !45
  br label %bb.i

bb.g:                                             ; preds = %bb.e
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.k, ptr align 1 %1, i64 %2, i1 false)
  br label %bb.i

bb.h:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %i.d, i64 noundef 0, ptr noundef %1, i64 noundef %2)
          to label %bb.i unwind label %bb.p

bb.i:                                             ; preds = %bb.g, %bb.f, %bb.d, %bb.h
  store i64 %i.g, ptr %i.b, align 8, !tbaa !44
  %i.m = load ptr, ptr %0, align 8, !tbaa !36
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 %i.g
  store i8 0, ptr %i.n, align 1, !tbaa !45
  %i.o = load i64, ptr %i.b, align 8, !tbaa !44   ; 5 uses
  %i.p = sub i64 9223372036854775807, %i.o
  %i.q = icmp ult i64 %i.p, %4
  br i1 %i.q, label %.invoke, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i10

.invoke:                                          ; preds = %bb.i, %bb.b
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.19) #18
          to label %.cont unwind label %bb.p

.cont:                                            ; preds = %.invoke
  unreachable

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i10: ; preds = %bb.i
  %i.r = add i64 %i.o, %4                         ; 3 uses
  %i.s = load ptr, ptr %0, align 8, !tbaa !36     ; 2 uses
  %i.t = icmp eq ptr %i.s, %i.a
  br i1 %i.t, label %bb.j, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i11

bb.j:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i10
  %i.u = icmp ult i64 %i.o, 16
  tail call void @llvm.assume(i1 %i.u)
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i11

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i11: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i10
  %8 = load i64, ptr %i.a, align 8, !tbaa !45
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i11

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i11: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i11, %bb.j
  %9 = phi i64 [ %8, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i11 ], [ 15, %bb.j ]
  %.not.i.i12 = icmp ugt i64 %i.r, %9
  br i1 %.not.i.i12, label %bb.o, label %bb.k

bb.k:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i11
  %.not8.i.i13 = icmp eq i64 %4, 0
  br i1 %.not8.i.i13, label %bb.q, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.v = getelementptr inbounds nuw i8, ptr %i.s, i64 %i.o ; 2 uses
  %cond.i.i14 = icmp eq i64 %4, 1
  br i1 %cond.i.i14, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  %i.w = load i8, ptr %3, align 1, !tbaa !45
  store i8 %i.w, ptr %i.v, align 1, !tbaa !45
  br label %bb.q

bb.n:                                             ; preds = %bb.l
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.v, ptr align 1 %3, i64 %4, i1 false)
  br label %bb.q

bb.o:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i11
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %i.o, i64 noundef 0, ptr noundef %3, i64 noundef %4)
          to label %bb.q unwind label %bb.p

bb.p:                                             ; preds = %.invoke, %bb.o, %bb.h, %bb.a
  %i.x = landingpad { ptr, i32 }
          cleanup
  %i.y = load ptr, ptr %0, align 8, !tbaa !36     ; 2 uses
  %i.z = icmp eq ptr %i.y, %i.a
  br i1 %i.z, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.p
  %i.aa = load i64, ptr %i.a, align 8, !tbaa !45
  %i.ab = add i64 %i.aa, 1
  tail call void @_ZdlPvm(ptr noundef %i.y, i64 noundef %i.ab) #16
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.p, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  resume { ptr, i32 } %i.x

bb.q:                                             ; preds = %bb.n, %bb.m, %bb.k, %bb.o
  store i64 %i.r, ptr %i.b, align 8, !tbaa !44
  %i.ac = load ptr, ptr %0, align 8, !tbaa !36
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 %i.r
  store i8 0, ptr %i.ad, align 1, !tbaa !45
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7reserveEm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %1) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit:
  %i.a = load ptr, ptr %0, align 8, !tbaa !36     ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 4 uses
  %i.c = icmp eq ptr %i.a, %i.b                   ; 2 uses
  %i.d = load i64, ptr %i.b, align 8
  %i.e = select i1 %i.c, i64 15, i64 %i.d         ; 2 uses
  %.not = icmp ugt i64 %1, %i.e
  br i1 %.not, label %bb.a, label %bb.g

bb.a:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit
  %i.f = icmp slt i64 %1, 0
  br i1 %i.f, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.18) #18
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.g = shl nuw i64 %i.e, 1                      ; 2 uses
  %i.h = icmp ult i64 %1, %i.g
  %spec.store.select.i = tail call i64 @llvm.umin.i64(i64 %i.g, i64 9223372036854775807)
  %.0 = select i1 %i.h, i64 %spec.store.select.i, i64 %1 ; 2 uses
  %i.i = add nuw i64 %.0, 1                       ; 2 uses
  %i.j = icmp slt i64 %i.i, 0
  br i1 %i.j, label %bb.d, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit, !prof !136

bb.d:                                             ; preds = %bb.c
  tail call void @_ZSt17__throw_bad_allocv() #18
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit: ; preds = %bb.c
  %i.k = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.i) #17 ; 3 uses
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.m = load i64, ptr %i.l, align 8, !tbaa !44   ; 2 uses
  %i.n = add i64 %i.m, 1                          ; 2 uses
  switch i64 %i.n, label %bb.f [
    i64 1, label %bb.e
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit
  ]

bb.e:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit
  %i.o = load i8, ptr %i.a, align 1, !tbaa !45
  store i8 %i.o, ptr %i.k, align 1, !tbaa !45
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit

bb.f:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.k, ptr align 1 %i.a, i64 %i.n, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit, %bb.e, %bb.f
  br i1 %i.c, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit
  %i.p = icmp ult i64 %i.m, 16
  tail call void @llvm.assume(i1 %i.p)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_disposeEv.exit

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit
  %2 = load i64, ptr %i.b, align 8, !tbaa !45
  %i.q = add i64 %2, 1
  tail call void @_ZdlPvm(ptr noundef %i.a, i64 noundef %i.q) #16
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_disposeEv.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_disposeEv.exit: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i
  store ptr %i.k, ptr %0, align 8, !tbaa !36
  store i64 %.0, ptr %i.b, align 8, !tbaa !45
  br label %bb.g

bb.g:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_disposeEv.exit
  ret void
}

; Function Attrs: noreturn
declare void @_ZSt20__throw_length_errorPKc(ptr noundef) local_unnamed_addr #5

; Function Attrs: noreturn
declare void @_ZSt17__throw_bad_allocv() local_unnamed_addr #5

; Function Attrs: nobuiltin allocsize(0)
declare noundef nonnull ptr @_Znwm(i64 noundef) local_unnamed_addr #6

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPvm(ptr noundef, i64 noundef) local_unnamed_addr #7

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %1, i64 noundef %2, ptr noundef %3, i64 noundef %4) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load i64, ptr %i.a, align 8, !tbaa !44   ; 5 uses
  %i.c = add i64 %2, %1                           ; 2 uses
  %i.d = sub i64 %i.b, %i.c                       ; 2 uses
  %i.e = sub i64 %4, %2
  %i.f = add i64 %i.e, %i.b                       ; 5 uses
  %i.g = load ptr, ptr %0, align 8, !tbaa !36     ; 5 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 4 uses
  %i.i = icmp eq ptr %i.g, %i.h                   ; 2 uses
  br i1 %i.i, label %bb.b, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i

bb.b:                                             ; preds = %bb.a
  %i.j = icmp ult i64 %i.b, 16
  tail call void @llvm.assume(i1 %i.j)
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i: ; preds = %bb.a
  %5 = load i64, ptr %i.h, align 8, !tbaa !45
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit: ; preds = %bb.b, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i
  %6 = phi i64 [ %5, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i ], [ 15, %bb.b ] ; 2 uses
  %i.k = icmp slt i64 %i.f, 0
  br i1 %i.k, label %bb.c, label %bb.d

bb.c:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.18) #18
  unreachable

bb.d:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit
  %i.l = icmp ugt i64 %i.f, %6
  br i1 %i.l, label %bb.e, label %bb.g

bb.e:                                             ; preds = %bb.d
  %i.m = shl nuw i64 %6, 1                        ; 2 uses
  %i.n = icmp ult i64 %i.f, %i.m
  br i1 %i.n, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %spec.store.select.i = tail call i64 @llvm.umin.i64(i64 %i.m, i64 9223372036854775807)
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e, %bb.d
  %.0 = phi i64 [ %spec.store.select.i, %bb.f ], [ %i.f, %bb.e ], [ %i.f, %bb.d ] ; 2 uses
  %i.o = add nuw i64 %.0, 1                       ; 2 uses
  %i.p = icmp slt i64 %i.o, 0
  br i1 %i.p, label %bb.h, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit, !prof !136

bb.h:                                             ; preds = %bb.g
  tail call void @_ZSt17__throw_bad_allocv() #18
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit: ; preds = %bb.g
  %i.q = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.o) #17 ; 5 uses
  switch i64 %1, label %bb.j [
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit
    i64 1, label %bb.i
  ]

bb.i:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit
  %i.r = load i8, ptr %i.g, align 1, !tbaa !45
  store i8 %i.r, ptr %i.q, align 1, !tbaa !45
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit

bb.j:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.q, ptr align 1 %i.g, i64 %1, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit, %bb.j, %bb.i
  %i.s = icmp ne ptr %3, null
  %i.t = icmp ne i64 %4, 0
  %or.cond = and i1 %i.s, %i.t
  br i1 %or.cond, label %bb.k, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit26

bb.k:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit
  %i.u = getelementptr inbounds nuw i8, ptr %i.q, i64 %1 ; 2 uses
  %cond = icmp eq i64 %4, 1
  br i1 %cond, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  %i.v = load i8, ptr %3, align 1, !tbaa !45
  store i8 %i.v, ptr %i.u, align 1, !tbaa !45
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit26

bb.m:                                             ; preds = %bb.k
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.u, ptr nonnull align 1 %3, i64 %4, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit26

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit26: ; preds = %bb.m, %bb.l, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit
  %.not25 = icmp eq i64 %i.b, %i.c
  br i1 %.not25, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit27, label %bb.n

bb.n:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit26
  %i.w = getelementptr inbounds nuw i8, ptr %i.q, i64 %1
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 %4 ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.g, i64 %1
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 %2 ; 2 uses
  %cond29 = icmp eq i64 %i.d, 1
  br i1 %cond29, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  %i.aa = load i8, ptr %i.z, align 1, !tbaa !45
  store i8 %i.aa, ptr %i.x, align 1, !tbaa !45
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit27

bb.p:                                             ; preds = %bb.n
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.x, ptr align 1 %i.z, i64 %i.d, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit27

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit27: ; preds = %bb.p, %bb.o, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit26
  br i1 %i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.a

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit27
  %i.ab = icmp ult i64 %i.b, 16
  tail call void @llvm.assume(i1 %i.ab)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_disposeEv.exit

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.a: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit27
  %7 = load i64, ptr %i.h, align 8, !tbaa !45
  %i.ac = add i64 %7, 1
  tail call void @_ZdlPvm(ptr noundef %i.g, i64 noundef %i.ac) #16
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_disposeEv.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_disposeEv.exit: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.a
  store ptr %i.q, ptr %0, align 8, !tbaa !36
  store i64 %.0, ptr %i.h, align 8, !tbaa !45
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i64 @strlen(ptr noundef captures(none)) local_unnamed_addr #8

; Function Attrs: noreturn
declare void @_ZSt24__throw_out_of_range_fmtPKcz(ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNSt6vectorIsSaIsEE14_M_fill_insertEN9__gnu_cxx17__normal_iteratorIPsS1_EEmRKs(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %1, i64 noundef %2, ptr noundef nonnull align 2 dereferenceable(2) %3) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %.not = icmp eq i64 %2, 0
  br i1 %.not, label %_ZSt4fillIPssEvT_S1_RKT0_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !62
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 7 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !63   ; 17 uses
  %i.e = ptrtoint ptr %i.b to i64                 ; 2 uses
  %i.f = ptrtoint ptr %i.d to i64                 ; 5 uses
  %i.g = sub i64 %i.e, %i.f
  %i.h = ashr exact i64 %i.g, 1
  %.not65 = icmp ult i64 %i.h, %2
  br i1 %.not65, label %bb.o, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.i = load i16, ptr %3, align 2, !tbaa !28     ; 9 uses
  %i.j = ptrtoint ptr %1 to i64                   ; 3 uses
  %i.k = sub i64 %i.f, %i.j                       ; 6 uses
  %i.l = ashr exact i64 %i.k, 1                   ; 3 uses
  %i.m = icmp ugt i64 %i.l, %2
  br i1 %i.m, label %bb.d, label %bb.k

bb.d:                                             ; preds = %bb.c
  %i.n = sub i64 0, %2
  %i.o = getelementptr inbounds [2 x i8], ptr %i.d, i64 %i.n ; 3 uses
  %i.p = ptrtoint ptr %i.o to i64
  %i.q = icmp sgt i64 %2, 1
  br i1 %i.q, label %bb.e, label %bb.f, !prof !137

bb.e:                                             ; preds = %bb.d
  %.idx.neg = shl nuw nsw i64 %2, 1
  tail call void @llvm.memmove.p0.p0.i64(ptr align 2 %i.d, ptr nonnull align 2 %i.o, i64 %.idx.neg, i1 false)
  %.pre97 = load ptr, ptr %i.c, align 8, !tbaa !63
  br label %_ZSt22__uninitialized_move_aIPsS0_SaIsEET0_T_S3_S2_RT1_.exit

bb.f:                                             ; preds = %bb.d
  %i.r = icmp eq i64 %2, 1
  br i1 %i.r, label %bb.g, label %_ZSt22__uninitialized_move_aIPsS0_SaIsEET0_T_S3_S2_RT1_.exit

bb.g:                                             ; preds = %bb.f
  %i.s = load i16, ptr %i.o, align 2, !tbaa !28
  store i16 %i.s, ptr %i.d, align 2, !tbaa !28
  br label %_ZSt22__uninitialized_move_aIPsS0_SaIsEET0_T_S3_S2_RT1_.exit

_ZSt22__uninitialized_move_aIPsS0_SaIsEET0_T_S3_S2_RT1_.exit: ; preds = %bb.g, %bb.f, %bb.e
  %i.t = phi ptr [ %i.d, %bb.g ], [ %i.d, %bb.f ], [ %.pre97, %bb.e ]
  %i.u = getelementptr inbounds nuw [2 x i8], ptr %i.t, i64 %2
  store ptr %i.u, ptr %i.c, align 8, !tbaa !63
  %i.v = sub i64 %i.p, %i.j                       ; 3 uses
  %i.w = ashr exact i64 %i.v, 1                   ; 2 uses
  %i.x = icmp sgt i64 %i.w, 1
  br i1 %i.x, label %bb.h, label %bb.i, !prof !137

bb.h:                                             ; preds = %_ZSt22__uninitialized_move_aIPsS0_SaIsEET0_T_S3_S2_RT1_.exit
  %i.y = sub nsw i64 0, %i.w
  %i.z = getelementptr inbounds [2 x i8], ptr %i.d, i64 %i.y
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 2 %i.z, ptr align 2 %1, i64 %i.v, i1 false)
  br label %iter.check168

bb.i:                                             ; preds = %_ZSt22__uninitialized_move_aIPsS0_SaIsEET0_T_S3_S2_RT1_.exit
  %i.aa = icmp eq i64 %i.v, 2
  br i1 %i.aa, label %bb.j, label %iter.check168

bb.j:                                             ; preds = %bb.i
  %i.ab = getelementptr inbounds i8, ptr %i.d, i64 -2
  %i.ac = load i16, ptr %1, align 2, !tbaa !28
  store i16 %i.ac, ptr %i.ab, align 2, !tbaa !28
  br label %iter.check168

iter.check168:                                    ; preds = %bb.j, %bb.i, %bb.h
  %.idx = shl nuw nsw i64 %2, 1                   ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %1, i64 %.idx
  %i.ae = add nsw i64 %.idx, -2                   ; 3 uses
  %i.af = lshr exact i64 %i.ae, 1
  %i.ag = add nuw i64 %i.af, 1                    ; 5 uses
  %min.iters.check153 = icmp ult i64 %i.ae, 6
  br i1 %min.iters.check153, label %.lr.ph.i.i.i.preheader, label %vector.main.loop.iter.check154

vector.main.loop.iter.check154:                   ; preds = %iter.check168
  %min.iters.check155 = icmp ult i64 %i.ae, 30
  br i1 %min.iters.check155, label %vec.epilog.ph172, label %vector.ph156

vector.ph156:                                     ; preds = %vector.main.loop.iter.check154
  %n.mod.vf157 = and i64 %i.ag, 12
  %n.vec158 = and i64 %i.ag, -16                  ; 4 uses
  %i.ah = shl i64 %n.vec158, 1
  %i.ai = getelementptr i8, ptr %1, i64 %i.ah
  %broadcast.splatinsert159 = insertelement <8 x i16> poison, i16 %i.i, i64 0
  %broadcast.splat160 = shufflevector <8 x i16> %broadcast.splatinsert159, <8 x i16> poison, <8 x i32> zeroinitializer ; 2 uses
  br label %vector.body161

vector.body161:                                   ; preds = %vector.body161, %vector.ph156
  %index162 = phi i64 [ 0, %vector.ph156 ], [ %index.next164, %vector.body161 ] ; 2 uses
  %i.aj = shl i64 %index162, 1
  %next.gep163 = getelementptr i8, ptr %1, i64 %i.aj ; 2 uses
  %i.ak = getelementptr i8, ptr %next.gep163, i64 16
  store <8 x i16> %broadcast.splat160, ptr %next.gep163, align 2, !tbaa !28
  store <8 x i16> %broadcast.splat160, ptr %i.ak, align 2, !tbaa !28
  %index.next164 = add nuw i64 %index162, 16      ; 2 uses
  %i.al = icmp eq i64 %index.next164, %n.vec158
  br i1 %i.al, label %middle.block165, label %vector.body161, !llvm.loop !138

middle.block165:                                  ; preds = %vector.body161
  %cmp.n166 = icmp eq i64 %i.ag, %n.vec158
  br i1 %cmp.n166, label %_ZSt4fillIPssEvT_S1_RKT0_.exit, label %vec.epilog.iter.check170

vec.epilog.iter.check170:                         ; preds = %middle.block165
  %min.epilog.iters.check171 = icmp eq i64 %n.mod.vf157, 0
  br i1 %min.epilog.iters.check171, label %.lr.ph.i.i.i.preheader, label %vec.epilog.ph172, !prof !141

vec.epilog.ph172:                                 ; preds = %vector.main.loop.iter.check154, %vec.epilog.iter.check170
  %vec.epilog.resume.val167 = phi i64 [ %n.vec158, %vec.epilog.iter.check170 ], [ 0, %vector.main.loop.iter.check154 ]
  %n.vec174 = and i64 %i.ag, -4                   ; 3 uses
  %i.am = shl i64 %n.vec174, 1
  %i.an = getelementptr i8, ptr %1, i64 %i.am
  %broadcast.splatinsert175 = insertelement <4 x i16> poison, i16 %i.i, i64 0
  %broadcast.splat176 = shufflevector <4 x i16> %broadcast.splatinsert175, <4 x i16> poison, <4 x i32> zeroinitializer
  br label %vec.epilog.vector.body177

vec.epilog.vector.body177:                        ; preds = %vec.epilog.vector.body177, %vec.epilog.ph172
  %index178 = phi i64 [ %vec.epilog.resume.val167, %vec.epilog.ph172 ], [ %index.next180, %vec.epilog.vector.body177 ] ; 2 uses
  %i.ao = shl i64 %index178, 1
  %next.gep179 = getelementptr i8, ptr %1, i64 %i.ao
  store <4 x i16> %broadcast.splat176, ptr %next.gep179, align 2, !tbaa !28
  %index.next180 = add nuw i64 %index178, 4       ; 2 uses
  %i.ap = icmp eq i64 %index.next180, %n.vec174
  br i1 %i.ap, label %vec.epilog.middle.block181, label %vec.epilog.vector.body177, !llvm.loop !142

vec.epilog.middle.block181:                       ; preds = %vec.epilog.vector.body177
  %cmp.n182 = icmp eq i64 %i.ag, %n.vec174
  br i1 %cmp.n182, label %_ZSt4fillIPssEvT_S1_RKT0_.exit, label %.lr.ph.i.i.i.preheader

.lr.ph.i.i.i.preheader:                           ; preds = %iter.check168, %vec.epilog.iter.check170, %vec.epilog.middle.block181
  %.06.i.i.i.ph = phi ptr [ %1, %iter.check168 ], [ %i.ai, %vec.epilog.iter.check170 ], [ %i.an, %vec.epilog.middle.block181 ]
  br label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %.lr.ph.i.i.i.preheader, %.lr.ph.i.i.i
  %.06.i.i.i = phi ptr [ %i.aq, %.lr.ph.i.i.i ], [ %.06.i.i.i.ph, %.lr.ph.i.i.i.preheader ] ; 2 uses
  store i16 %i.i, ptr %.06.i.i.i, align 2, !tbaa !28
  %i.aq = getelementptr inbounds nuw i8, ptr %.06.i.i.i, i64 2 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.aq, %i.ad
  br i1 %.not.i.i.i, label %_ZSt4fillIPssEvT_S1_RKT0_.exit, label %.lr.ph.i.i.i, !llvm.loop !143

bb.k:                                             ; preds = %bb.c
  %i.ar = icmp eq i64 %2, %i.l
  br i1 %i.ar, label %_ZSt24__uninitialized_fill_n_aIPsmssET_S1_T0_RKT1_RSaIT2_E.exit, label %iter.check

iter.check:                                       ; preds = %bb.k
  %i.as = sub nuw i64 %2, %i.l
  %.idx.i.i.i.i.i = shl nuw nsw i64 %i.as, 1
  %i.at = getelementptr inbounds nuw i8, ptr %i.d, i64 %.idx.i.i.i.i.i ; 4 uses
  %i.au = shl i64 %2, 1
  %i.av = add i64 %i.au, -2
  %i.aw = sub i64 %i.av, %i.k                     ; 3 uses
  %i.ax = lshr i64 %i.aw, 1
  %i.ay = add nuw i64 %i.ax, 1                    ; 5 uses
  %min.iters.check = icmp ult i64 %i.aw, 6
  br i1 %min.iters.check, label %.lr.ph.i.i.i.i.i.i.i.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check112 = icmp ult i64 %i.aw, 30
  br i1 %min.iters.check112, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %n.mod.vf = and i64 %i.ay, 12
  %n.vec = and i64 %i.ay, -16                     ; 4 uses
  %i.az = shl i64 %n.vec, 1
  %i.ba = getelementptr i8, ptr %i.d, i64 %i.az
  %broadcast.splatinsert = insertelement <8 x i16> poison, i16 %i.i, i64 0
  %broadcast.splat = shufflevector <8 x i16> %broadcast.splatinsert, <8 x i16> poison, <8 x i32> zeroinitializer ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.bb = shl i64 %index, 1
  %next.gep = getelementptr i8, ptr %i.d, i64 %i.bb ; 2 uses
  %i.bc = getelementptr i8, ptr %next.gep, i64 16
  store <8 x i16> %broadcast.splat, ptr %next.gep, align 2, !tbaa !28
  store <8 x i16> %broadcast.splat, ptr %i.bc, align 2, !tbaa !28
  %index.next = add nuw i64 %index, 16            ; 2 uses
  %i.bd = icmp eq i64 %index.next, %n.vec
end_hunk_0

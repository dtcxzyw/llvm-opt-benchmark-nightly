Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/rust-analyzer-rs/original/line_index-f877c8acc5707c90.line_index.71139fd0a72243a0-cgu.0?download=true
inline.NumInlined: 222
inline.NumDeleted: 123
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0_@_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsfjX3T6UU9IB_9hashbrown3raw8RawTableTmINtNtCsbSS6DM8SDEO_5alloc3vec3VecNtCs9HU4uknhSfY_10line_index8WideCharEEEEB1S_:bb.a
  br i1 %.not11.i.i.i.i, label %.lr.ph.i.i.i.i, label %_RINvMsi_NtCsfjX3T6UU9IB_9hashbrown3rawINtB6_12RawIterRangeTmINtNtCsbSS6DM8SDEO_5alloc3vec3VecNtCs9HU4uknhSfY_10line_index8WideCharEEE9next_implKb0_EB1v_.exit.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.d, %.lr.ph.i.i.i.i
  %i.k = phi ptr [ %i.o, %.lr.ph.i.i.i.i ], [ %.sroa.6.016.i.i.i, %bb.d ] ; 2 uses
  %i.l = phi ptr [ %i.n, %.lr.ph.i.i.i.i ], [ %.sroa.05.017.i.i.i, %bb.d ]
  %.val9.i.i.i.i = load <16 x i8>, ptr %i.k, align 16, !noalias !114
  %i.m = icmp sgt <16 x i8> %.val9.i.i.i.i, splat (i8 -1)
  %i.n = getelementptr inbounds i8, ptr %i.l, i64 -512 ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.k, i64 16 ; 2 uses
  %.cast.i.i.i.i = bitcast <16 x i1> %i.m to i16  ; 2 uses
  %.not.i.i.i.i = icmp eq i16 %.cast.i.i.i.i, 0
  br i1 %.not.i.i.i.i, label %.lr.ph.i.i.i.i, label %_RINvMsi_NtCsfjX3T6UU9IB_9hashbrown3rawINtB6_12RawIterRangeTmINtNtCsbSS6DM8SDEO_5alloc3vec3VecNtCs9HU4uknhSfY_10line_index8WideCharEEE9next_implKb0_EB1v_.exit.i.i.i

_RINvMsi_NtCsfjX3T6UU9IB_9hashbrown3rawINtB6_12RawIterRangeTmINtNtCsbSS6DM8SDEO_5alloc3vec3VecNtCs9HU4uknhSfY_10line_index8WideCharEEE9next_implKb0_EB1v_.exit.i.i.i: ; preds = %.lr.ph.i.i.i.i, %bb.d
  %.sroa.6.1.i.i.i = phi ptr [ %.sroa.6.016.i.i.i, %bb.d ], [ %i.o, %.lr.ph.i.i.i.i ]
  %.sroa.05.1.i.i.i = phi ptr [ %.sroa.05.017.i.i.i, %bb.d ], [ %i.n, %.lr.ph.i.i.i.i ] ; 2 uses
  %.lcssa.i.i.i.i = phi i16 [ %.sroa.86.015.i.i.i, %bb.d ], [ %.cast.i.i.i.i, %.lr.ph.i.i.i.i ] ; 3 uses
  %i.p = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.lcssa.i.i.i.i, i1 true)
  %i.q = zext nneg i16 %i.p to i64
  %i.r = sub nsw i64 0, %i.q
  %i.s = getelementptr inbounds [32 x i8], ptr %.sroa.05.1.i.i.i, i64 %i.r
  %i.t = getelementptr inbounds i8, ptr %i.s, i64 -24 ; 3 uses
  invoke void @_RNvXsp_NtCsbSS6DM8SDEO_5alloc3vecINtB5_3VecNtCs9HU4uknhSfY_10line_index8WideCharENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropBH_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.t)
          to label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueTmINtNtCsbSS6DM8SDEO_5alloc3vec3VecNtCs9HU4uknhSfY_10line_index8WideCharEEEB1c_.exit.i.i.i unwind label %bb.e, !noalias !110

bb.e:                                             ; preds = %_RINvMsi_NtCsfjX3T6UU9IB_9hashbrown3rawINtB6_12RawIterRangeTmINtNtCsbSS6DM8SDEO_5alloc3vec3VecNtCs9HU4uknhSfY_10line_index8WideCharEEE9next_implKb0_EB1v_.exit.i.i.i
  %i.u = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsbSS6DM8SDEO_5alloc7raw_vecINtB5_6RawVecNtCs9HU4uknhSfY_10line_index8WideCharENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropBO_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.t)
          to label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsbSS6DM8SDEO_5alloc7raw_vec6RawVecNtCs9HU4uknhSfY_10line_index8WideCharEEB1h_.exit.i.i.i.i.i unwind label %bb.f, !noalias !110

bb.f:                                             ; preds = %bb.e
  %i.v = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCshzWfHUSfYae_4core9panicking16panic_in_cleanup() #20, !noalias !110
  unreachable

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsbSS6DM8SDEO_5alloc7raw_vec6RawVecNtCs9HU4uknhSfY_10line_index8WideCharEEB1h_.exit.i.i.i.i.i: ; preds = %bb.e
  resume { ptr, i32 } %i.u

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueTmINtNtCsbSS6DM8SDEO_5alloc3vec3VecNtCs9HU4uknhSfY_10line_index8WideCharEEEB1c_.exit.i.i.i: ; preds = %_RINvMsi_NtCsfjX3T6UU9IB_9hashbrown3rawINtB6_12RawIterRangeTmINtNtCsbSS6DM8SDEO_5alloc3vec3VecNtCs9HU4uknhSfY_10line_index8WideCharEEE9next_implKb0_EB1v_.exit.i.i.i
  %i.w = add i64 %.sroa.107.014.i.i.i, -1         ; 2 uses
  %i.x = add i16 %.lcssa.i.i.i.i, -1
  %i.y = and i16 %i.x, %.lcssa.i.i.i.i
  tail call void @_RNvXs1_NtCsbSS6DM8SDEO_5alloc7raw_vecINtB5_6RawVecNtCs9HU4uknhSfY_10line_index8WideCharENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropBO_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.t), !noalias !110
  %i.z = icmp eq i64 %i.w, 0
  br i1 %i.z, label %_RINvMsa_NtCsfjX3T6UU9IB_9hashbrown3rawNtB6_13RawTableInner13drop_elementsTmINtNtCsbSS6DM8SDEO_5alloc3vec3VecNtCs9HU4uknhSfY_10line_index8WideCharEEEB1K_.exit.i.i, label %bb.d

_RINvMsa_NtCsfjX3T6UU9IB_9hashbrown3rawNtB6_13RawTableInner13drop_elementsTmINtNtCsbSS6DM8SDEO_5alloc3vec3VecNtCs9HU4uknhSfY_10line_index8WideCharEEEB1K_.exit.i.i: ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueTmINtNtCsbSS6DM8SDEO_5alloc3vec3VecNtCs9HU4uknhSfY_10line_index8WideCharEEEB1c_.exit.i.i.i, %bb.b
  %i.aa = shl i64 %i.b, 5                         ; 2 uses
  %i.ab = add i64 %i.aa, 32                       ; 2 uses
  %i.ac = add i64 %i.b, 17
  %i.ad = add i64 %i.ac, %i.ab                    ; 4 uses
  %i.ae = icmp uge i64 %i.ad, %i.ab
  %i.af = icmp ult i64 %i.ad, 9223372036854775793
  tail call void @llvm.assume(i1 %i.ae)
  tail call void @llvm.assume(i1 %i.af)
  %i.ag = icmp eq i64 %i.ad, 0
  br i1 %i.ag, label %_RNvXsg_NtCsfjX3T6UU9IB_9hashbrown3rawINtB5_8RawTableTmINtNtCsbSS6DM8SDEO_5alloc3vec3VecNtCs9HU4uknhSfY_10line_index8WideCharEEENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropB1p_.exit, label %bb.g

bb.g:                                             ; preds = %_RINvMsa_NtCsfjX3T6UU9IB_9hashbrown3rawNtB6_13RawTableInner13drop_elementsTmINtNtCsbSS6DM8SDEO_5alloc3vec3VecNtCs9HU4uknhSfY_10line_index8WideCharEEEB1K_.exit.i.i
  %i.ah = load ptr, ptr %0, align 8, !alias.scope !106, !nonnull !10, !noundef !10
  %i.ai = sub nuw nsw i64 -32, %i.aa
  %i.aj = getelementptr inbounds i8, ptr %i.ah, i64 %i.ai
  tail call void @_RNvCsiZ68L5R9VjM_7___rustc14___rust_dealloc(ptr noundef nonnull %i.aj, i64 noundef %i.ad, i64 noundef range(i64 1, -9223372036854775807) 16) #18, !noalias !106
  br label %_RNvXsg_NtCsfjX3T6UU9IB_9hashbrown3rawINtB5_8RawTableTmINtNtCsbSS6DM8SDEO_5alloc3vec3VecNtCs9HU4uknhSfY_10line_index8WideCharEEENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropB1p_.exit

_RNvXsg_NtCsfjX3T6UU9IB_9hashbrown3rawINtB5_8RawTableTmINtNtCsbSS6DM8SDEO_5alloc3vec3VecNtCs9HU4uknhSfY_10line_index8WideCharEEENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropB1p_.exit: ; preds = %bb.a, %_RINvMsa_NtCsfjX3T6UU9IB_9hashbrown3rawNtB6_13RawTableInner13drop_elementsTmINtNtCsbSS6DM8SDEO_5alloc3vec3VecNtCs9HU4uknhSfY_10line_index8WideCharEEEB1K_.exit.i.i, %bb.g
  ret void
}

; Function Attrs: nounwind nonlazybind uwtable
define internal fastcc void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtNtNtCscAsMj0W7j8b_3std11collections4hash3map7HashMapmINtNtCsbSS6DM8SDEO_5alloc5boxed3BoxSNtCs9HU4uknhSfY_10line_index8WideCharEINtNtB4_4hash18BuildHasherDefaultINtCsdHhuG8sbGmp_13nohash_hasher12NoHashHashermEEEEB29_(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %0) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !117)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !120)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !123)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !126)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load i64, ptr %i.a, align 8, !alias.scope !129, !noundef !10 ; 4 uses
  %i.c = icmp eq i64 %i.b, 0
  br i1 %i.c, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsfjX3T6UU9IB_9hashbrown3map7HashMapmINtNtCsbSS6DM8SDEO_5alloc5boxed3BoxSNtCs9HU4uknhSfY_10line_index8WideCharEINtNtB4_4hash18BuildHasherDefaultINtCsdHhuG8sbGmp_13nohash_hasher12NoHashHashermEEEEB1T_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !130)
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.e = load i64, ptr %i.d, align 8, !alias.scope !133, !noundef !10 ; 2 uses
  %i.f = icmp eq i64 %i.e, 0
  br i1 %i.f, label %_RINvMsa_NtCsfjX3T6UU9IB_9hashbrown3rawNtB6_13RawTableInner13drop_elementsTmINtNtCsbSS6DM8SDEO_5alloc5boxed3BoxSNtCs9HU4uknhSfY_10line_index8WideCharEEEB1N_.exit.i.i.i.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.g = load ptr, ptr %0, align 8, !alias.scope !133, !nonnull !10, !noundef !10 ; 3 uses
  %.val3.i.i.i.i.i.i = load <16 x i8>, ptr %i.g, align 16, !noalias !134
  %i.h = icmp sgt <16 x i8> %.val3.i.i.i.i.i.i, splat (i8 -1)
  %i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  %i.j = bitcast <16 x i1> %i.h to i16
  br label %bb.d

bb.d:                                             ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueTmINtNtCsbSS6DM8SDEO_5alloc5boxed3BoxSNtCs9HU4uknhSfY_10line_index8WideCharEEEB1f_.exit.i.i.i.i.i, %bb.c
  %.sroa.06.017.i.i.i.i.i = phi ptr [ %i.g, %bb.c ], [ %.sroa.06.1.i.i.i.i.i, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueTmINtNtCsbSS6DM8SDEO_5alloc5boxed3BoxSNtCs9HU4uknhSfY_10line_index8WideCharEEEB1f_.exit.i.i.i.i.i ] ; 2 uses
  %.sroa.6.016.i.i.i.i.i = phi ptr [ %i.i, %bb.c ], [ %.sroa.6.1.i.i.i.i.i, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueTmINtNtCsbSS6DM8SDEO_5alloc5boxed3BoxSNtCs9HU4uknhSfY_10line_index8WideCharEEEB1f_.exit.i.i.i.i.i ] ; 2 uses
  %.sroa.87.015.i.i.i.i.i = phi i16 [ %i.j, %bb.c ], [ %i.s, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueTmINtNtCsbSS6DM8SDEO_5alloc5boxed3BoxSNtCs9HU4uknhSfY_10line_index8WideCharEEEB1f_.exit.i.i.i.i.i ] ; 2 uses
  %.sroa.108.014.i.i.i.i.i = phi i64 [ %i.e, %bb.c ], [ %i.v, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueTmINtNtCsbSS6DM8SDEO_5alloc5boxed3BoxSNtCs9HU4uknhSfY_10line_index8WideCharEEEB1f_.exit.i.i.i.i.i ]
  %.not11.i.i.i.i.i.i = icmp eq i16 %.sroa.87.015.i.i.i.i.i, 0
  br i1 %.not11.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i, label %_RINvMsi_NtCsfjX3T6UU9IB_9hashbrown3rawINtB6_12RawIterRangeTmINtNtCsbSS6DM8SDEO_5alloc5boxed3BoxSNtCs9HU4uknhSfY_10line_index8WideCharEEE9next_implKb0_EB1y_.exit.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %bb.d, %.lr.ph.i.i.i.i.i.i
  %i.k = phi ptr [ %i.o, %.lr.ph.i.i.i.i.i.i ], [ %.sroa.6.016.i.i.i.i.i, %bb.d ] ; 2 uses
  %i.l = phi ptr [ %i.n, %.lr.ph.i.i.i.i.i.i ], [ %.sroa.06.017.i.i.i.i.i, %bb.d ]
  %.val9.i.i.i.i.i.i = load <16 x i8>, ptr %i.k, align 16, !noalias !137
  %i.m = icmp sgt <16 x i8> %.val9.i.i.i.i.i.i, splat (i8 -1)
  %i.n = getelementptr inbounds i8, ptr %i.l, i64 -384 ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.k, i64 16 ; 2 uses
  %.cast.i.i.i.i.i.i = bitcast <16 x i1> %i.m to i16 ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq i16 %.cast.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i, label %_RINvMsi_NtCsfjX3T6UU9IB_9hashbrown3rawINtB6_12RawIterRangeTmINtNtCsbSS6DM8SDEO_5alloc5boxed3BoxSNtCs9HU4uknhSfY_10line_index8WideCharEEE9next_implKb0_EB1y_.exit.i.i.i.i.i

_RINvMsi_NtCsfjX3T6UU9IB_9hashbrown3rawINtB6_12RawIterRangeTmINtNtCsbSS6DM8SDEO_5alloc5boxed3BoxSNtCs9HU4uknhSfY_10line_index8WideCharEEE9next_implKb0_EB1y_.exit.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i, %bb.d
  %.sroa.6.1.i.i.i.i.i = phi ptr [ %.sroa.6.016.i.i.i.i.i, %bb.d ], [ %i.o, %.lr.ph.i.i.i.i.i.i ]
  %.sroa.06.1.i.i.i.i.i = phi ptr [ %.sroa.06.017.i.i.i.i.i, %bb.d ], [ %i.n, %.lr.ph.i.i.i.i.i.i ] ; 2 uses
  %.lcssa.i.i.i.i.i.i = phi i16 [ %.sroa.87.015.i.i.i.i.i, %bb.d ], [ %.cast.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i ] ; 3 uses
  %i.p = add i16 %.lcssa.i.i.i.i.i.i, -1
  %i.q = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.lcssa.i.i.i.i.i.i, i1 true)
  %i.r = zext nneg i16 %i.q to i64
  %i.s = and i16 %i.p, %.lcssa.i.i.i.i.i.i
  %i.t = sub nsw i64 0, %i.r
  %i.u = getelementptr inbounds [24 x i8], ptr %.sroa.06.1.i.i.i.i.i, i64 %i.t ; 2 uses
  %i.v = add i64 %.sroa.108.014.i.i.i.i.i, -1     ; 2 uses
  %i.w = getelementptr i8, ptr %i.u, i64 -8
  %.val5.i.i.i.i.i = load i64, ptr %i.w, align 8, !noalias !133, !noundef !10 ; 2 uses
  %i.x = icmp eq i64 %.val5.i.i.i.i.i, 0
  br i1 %i.x, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueTmINtNtCsbSS6DM8SDEO_5alloc5boxed3BoxSNtCs9HU4uknhSfY_10line_index8WideCharEEEB1f_.exit.i.i.i.i.i, label %_RNvXs_NtCsbSS6DM8SDEO_5alloc5allocNtB4_6GlobalNtNtCshzWfHUSfYae_4core5alloc9Allocator10deallocate.exit.i.i.i.i.i.i.i.i

_RNvXs_NtCsbSS6DM8SDEO_5alloc5allocNtB4_6GlobalNtNtCshzWfHUSfYae_4core5alloc9Allocator10deallocate.exit.i.i.i.i.i.i.i.i: ; preds = %_RINvMsi_NtCsfjX3T6UU9IB_9hashbrown3rawINtB6_12RawIterRangeTmINtNtCsbSS6DM8SDEO_5alloc5boxed3BoxSNtCs9HU4uknhSfY_10line_index8WideCharEEE9next_implKb0_EB1y_.exit.i.i.i.i.i
  %i.y = getelementptr i8, ptr %i.u, i64 -16
  %.val.i.i.i.i.i = load ptr, ptr %i.y, align 8, !noalias !133, !nonnull !10, !noundef !10
  %i.z = shl nuw nsw i64 %.val5.i.i.i.i.i, 3
  tail call void @_RNvCsiZ68L5R9VjM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i.i.i.i.i, i64 noundef %i.z, i64 noundef 4) #18, !noalias !133
  br label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueTmINtNtCsbSS6DM8SDEO_5alloc5boxed3BoxSNtCs9HU4uknhSfY_10line_index8WideCharEEEB1f_.exit.i.i.i.i.i

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueTmINtNtCsbSS6DM8SDEO_5alloc5boxed3BoxSNtCs9HU4uknhSfY_10line_index8WideCharEEEB1f_.exit.i.i.i.i.i: ; preds = %_RNvXs_NtCsbSS6DM8SDEO_5alloc5allocNtB4_6GlobalNtNtCshzWfHUSfYae_4core5alloc9Allocator10deallocate.exit.i.i.i.i.i.i.i.i, %_RINvMsi_NtCsfjX3T6UU9IB_9hashbrown3rawINtB6_12RawIterRangeTmINtNtCsbSS6DM8SDEO_5alloc5boxed3BoxSNtCs9HU4uknhSfY_10line_index8WideCharEEE9next_implKb0_EB1y_.exit.i.i.i.i.i
  %i.aa = icmp eq i64 %i.v, 0
  br i1 %i.aa, label %_RINvMsa_NtCsfjX3T6UU9IB_9hashbrown3rawNtB6_13RawTableInner13drop_elementsTmINtNtCsbSS6DM8SDEO_5alloc5boxed3BoxSNtCs9HU4uknhSfY_10line_index8WideCharEEEB1N_.exit.i.i.i.i, label %bb.d

_RINvMsa_NtCsfjX3T6UU9IB_9hashbrown3rawNtB6_13RawTableInner13drop_elementsTmINtNtCsbSS6DM8SDEO_5alloc5boxed3BoxSNtCs9HU4uknhSfY_10line_index8WideCharEEEB1N_.exit.i.i.i.i: ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueTmINtNtCsbSS6DM8SDEO_5alloc5boxed3BoxSNtCs9HU4uknhSfY_10line_index8WideCharEEEB1f_.exit.i.i.i.i.i, %bb.b
  %i.ab = mul i64 %i.b, 24
  %i.ac = icmp slt i64 %i.b, 768614336404564650
  tail call void @llvm.assume(i1 %i.ac)
  %i.ad = and i64 %i.ab, -16                      ; 2 uses
  %i.ae = add i64 %i.ad, 32                       ; 2 uses
  %i.af = add nsw i64 %i.b, 17
  %i.ag = add i64 %i.af, %i.ae                    ; 4 uses
  %i.ah = icmp uge i64 %i.ag, %i.ae
  %i.ai = icmp ult i64 %i.ag, 9223372036854775793
  tail call void @llvm.assume(i1 %i.ah)
  tail call void @llvm.assume(i1 %i.ai)
  %i.aj = icmp eq i64 %i.ag, 0
  br i1 %i.aj, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsfjX3T6UU9IB_9hashbrown3map7HashMapmINtNtCsbSS6DM8SDEO_5alloc5boxed3BoxSNtCs9HU4uknhSfY_10line_index8WideCharEINtNtB4_4hash18BuildHasherDefaultINtCsdHhuG8sbGmp_13nohash_hasher12NoHashHashermEEEEB1T_.exit, label %bb.e

bb.e:                                             ; preds = %_RINvMsa_NtCsfjX3T6UU9IB_9hashbrown3rawNtB6_13RawTableInner13drop_elementsTmINtNtCsbSS6DM8SDEO_5alloc5boxed3BoxSNtCs9HU4uknhSfY_10line_index8WideCharEEEB1N_.exit.i.i.i.i
  %i.ak = load ptr, ptr %0, align 8, !alias.scope !129, !nonnull !10, !noundef !10
  %i.al = sub i64 -32, %i.ad
  %i.am = getelementptr inbounds i8, ptr %i.ak, i64 %i.al
  tail call void @_RNvCsiZ68L5R9VjM_7___rustc14___rust_dealloc(ptr noundef nonnull %i.am, i64 noundef %i.ag, i64 noundef range(i64 1, -9223372036854775807) 16) #18, !noalias !129
  br label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsfjX3T6UU9IB_9hashbrown3map7HashMapmINtNtCsbSS6DM8SDEO_5alloc5boxed3BoxSNtCs9HU4uknhSfY_10line_index8WideCharEINtNtB4_4hash18BuildHasherDefaultINtCsdHhuG8sbGmp_13nohash_hasher12NoHashHashermEEEEB1T_.exit

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsfjX3T6UU9IB_9hashbrown3map7HashMapmINtNtCsbSS6DM8SDEO_5alloc5boxed3BoxSNtCs9HU4uknhSfY_10line_index8WideCharEINtNtB4_4hash18BuildHasherDefaultINtCsdHhuG8sbGmp_13nohash_hasher12NoHashHashermEEEEB1T_.exit: ; preds = %bb.a, %_RINvMsa_NtCsfjX3T6UU9IB_9hashbrown3rawNtB6_13RawTableInner13drop_elementsTmINtNtCsbSS6DM8SDEO_5alloc5boxed3BoxSNtCs9HU4uknhSfY_10line_index8WideCharEEEB1N_.exit.i.i.i.i, %bb.e
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef i64 @_RNCINvMs6_NtCsfjX3T6UU9IB_9hashbrown3rawINtB8_8RawTableTmINtNtCsbSS6DM8SDEO_5alloc3vec3VecNtCs9HU4uknhSfY_10line_index8WideCharEEE14reserve_rehashNCINvNtBa_3map11make_hashermBT_INtNtCshzWfHUSfYae_4core4hash18BuildHasherDefaultINtCsdHhuG8sbGmp_13nohash_hasher12NoHashHashermEEE0E0B1s_(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(32) %1, i64 noundef %2) unnamed_addr #3 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !nonnull !10, !align !44, !noundef !10
  %i.b = load ptr, ptr %1, align 8, !nonnull !10, !noundef !10
  %i.c = sub nsw i64 0, %2
  %i.d = getelementptr inbounds [32 x i8], ptr %i.b, i64 %i.c
  %i.e = getelementptr inbounds i8, ptr %i.d, i64 -32
  %.val = load ptr, ptr %i.a, align 8, !nonnull !10, !noundef !10
  %i.f = tail call noundef i64 @_RINvYINtNtCshzWfHUSfYae_4core4hash18BuildHasherDefaultINtCsdHhuG8sbGmp_13nohash_hasher12NoHashHashermEENtB6_11BuildHasher8hash_oneRmECs9HU4uknhSfY_10line_index(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.val, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.e)
  ret i64 %i.f
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef i64 @_RNCINvMs6_NtCsfjX3T6UU9IB_9hashbrown3rawINtB8_8RawTableTmINtNtCsbSS6DM8SDEO_5alloc5boxed3BoxSNtCs9HU4uknhSfY_10line_index8WideCharEEE14reserve_rehashNCINvNtBa_3map11make_hashermBT_INtNtCshzWfHUSfYae_4core4hash18BuildHasherDefaultINtCsdHhuG8sbGmp_13nohash_hasher12NoHashHashermEEE0E0B1v_(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(32) %1, i64 noundef %2) unnamed_addr #3 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !nonnull !10, !align !44, !noundef !10
  %i.b = load ptr, ptr %1, align 8, !nonnull !10, !noundef !10
  %i.c = sub nsw i64 0, %2
  %i.d = getelementptr inbounds [24 x i8], ptr %i.b, i64 %i.c
  %i.e = getelementptr inbounds i8, ptr %i.d, i64 -24
  %.val = load ptr, ptr %i.a, align 8, !nonnull !10, !noundef !10
  %i.f = tail call noundef i64 @_RINvYINtNtCshzWfHUSfYae_4core4hash18BuildHasherDefaultINtCsdHhuG8sbGmp_13nohash_hasher12NoHashHashermEENtB6_11BuildHasher8hash_oneRmECs9HU4uknhSfY_10line_index(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.val, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.e)
  ret i64 %i.f
}

; Function Attrs: nonlazybind uwtable
define internal fastcc noundef i64 @_RNvCs9HU4uknhSfY_10line_index27analyze_source_file_generic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %0, i64 noundef %1, i64 noundef %2, i32 noundef %3, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %4, ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %5) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 7 uses
  %.not = icmp ult i64 %1, %2
  br i1 %.not, label %bb.b, label %.preheader, !prof !11

.preheader:                                       ; preds = %bb.a
  %.not54 = icmp eq i64 %2, 0
  br i1 %.not54, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader
  %i.b = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  %.sroa.434.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  %.sroa.535.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.d = add i32 %3, 1
  br label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvNtCshzWfHUSfYae_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @9, i64 noundef 39, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @10) #23
  unreachable

._crit_edge:                                      ; preds = %bb.g, %.preheader
  %.sroa.0.0.lcssa = phi i64 [ 0, %.preheader ], [ %i.t, %bb.g ]
  %i.e = sub nuw i64 %.sroa.0.0.lcssa, %2
  ret i64 %i.e

bb.c:                                             ; preds = %.lr.ph, %bb.g
  %.sroa.0.051 = phi i64 [ 0, %.lr.ph ], [ %i.t, %bb.g ] ; 10 uses
  %i.f = icmp ult i64 %.sroa.0.051, %1
  tail call void @llvm.assume(i1 %i.f)
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 %.sroa.0.051 ; 4 uses
  %i.h = load i8, ptr %i.g, align 1, !noundef !10 ; 7 uses
  %i.i = icmp eq i8 %i.h, 10
  br i1 %i.i, label %bb.d, label %bb.f

bb.d:                                             ; preds = %bb.c
  %i.j = trunc i64 %.sroa.0.051 to i32
  %i.k = add i32 %i.d, %i.j
  %i.l = load i64, ptr %i.b, align 8, !alias.scope !140, !noundef !10 ; 3 uses
  %i.m = load i64, ptr %4, align 8, !range !143, !alias.scope !140, !noundef !10
  %i.n = icmp eq i64 %i.l, %i.m
  br i1 %i.n, label %bb.e, label %_RNvMsG_NtCsbSS6DM8SDEO_5alloc3vecINtB5_3VecNtNtCsuAhG64lL82_9text_size4size8TextSizeE8push_mutCs9HU4uknhSfY_10line_index.exit

bb.e:                                             ; preds = %bb.d
  tail call void @_RNvMs4_NtCsbSS6DM8SDEO_5alloc7raw_vecINtB5_6RawVecNtNtCsuAhG64lL82_9text_size4size8TextSizeE8grow_oneCs9HU4uknhSfY_10line_index(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %4) #22
  br label %_RNvMsG_NtCsbSS6DM8SDEO_5alloc3vecINtB5_3VecNtNtCsuAhG64lL82_9text_size4size8TextSizeE8push_mutCs9HU4uknhSfY_10line_index.exit

_RNvMsG_NtCsbSS6DM8SDEO_5alloc3vecINtB5_3VecNtNtCsuAhG64lL82_9text_size4size8TextSizeE8push_mutCs9HU4uknhSfY_10line_index.exit: ; preds = %bb.d, %bb.e
  %i.o = load ptr, ptr %i.c, align 8, !alias.scope !140, !nonnull !10, !noundef !10
  %i.p = getelementptr inbounds nuw [4 x i8], ptr %i.o, i64 %i.l
  store i32 %i.k, ptr %i.p, align 4
  %i.q = add i64 %i.l, 1
  store i64 %i.q, ptr %i.b, align 8, !alias.scope !140
  br label %bb.g

bb.f:                                             ; preds = %bb.c
  %i.r = icmp ugt i8 %i.h, 126
  br i1 %i.r, label %bb.h, label %bb.g

bb.g:                                             ; preds = %_RNvMsG_NtCsbSS6DM8SDEO_5alloc3vecINtB5_3VecNtCs9HU4uknhSfY_10line_index8WideCharE8push_mutBH_.exit, %10, %bb.f, %_RNvMsG_NtCsbSS6DM8SDEO_5alloc3vecINtB5_3VecNtNtCsuAhG64lL82_9text_size4size8TextSizeE8push_mutCs9HU4uknhSfY_10line_index.exit
  %i.s = phi i64 [ %.sroa.08.0, %_RNvMsG_NtCsbSS6DM8SDEO_5alloc3vecINtB5_3VecNtCs9HU4uknhSfY_10line_index8WideCharE8push_mutBH_.exit ], [ 1, %10 ], [ 1, %bb.f ], [ 1, %_RNvMsG_NtCsbSS6DM8SDEO_5alloc3vecINtB5_3VecNtNtCsuAhG64lL82_9text_size4size8TextSizeE8push_mutCs9HU4uknhSfY_10line_index.exit ]
  %i.t = add i64 %i.s, %.sroa.0.051               ; 3 uses
  %i.u = icmp ult i64 %i.t, %2
  br i1 %i.u, label %bb.c, label %._crit_edge

bb.h:                                             ; preds = %bb.f
  %i.v = icmp eq i64 %.sroa.0.051, 0
  %i.w = icmp sgt i8 %i.h, -65
  %or.cond = or i1 %i.v, %i.w
  br i1 %or.cond, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.x = icmp sgt i8 %i.h, -1
  br i1 %i.x, label %.thread, label %_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs9HU4uknhSfY_10line_index.exit12.i

_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs9HU4uknhSfY_10line_index.exit12.i: ; preds = %bb.i
  %i.y = getelementptr inbounds nuw i8, ptr %i.g, i64 1
  %i.z = and i8 %i.h, 31
  %i.aa = zext nneg i8 %i.z to i32                ; 3 uses
  %i.ab = add nuw nsw i64 %.sroa.0.051, 1
  %i.ac = icmp samesign ne i64 %i.ab, %1
  tail call void @llvm.assume(i1 %i.ac)
  %i.ad = load i8, ptr %i.y, align 1, !noalias !144, !noundef !10
  %i.ae = shl nuw nsw i32 %i.aa, 6
  %i.af = and i8 %i.ad, 63
  %i.ag = zext nneg i8 %i.af to i32               ; 2 uses
  %i.ah = or disjoint i32 %i.ae, %i.ag
  %i.ai = icmp samesign ugt i8 %i.h, -33
  br i1 %i.ai, label %_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs9HU4uknhSfY_10line_index.exit14.i, label %bb.k

_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs9HU4uknhSfY_10line_index.exit14.i: ; preds = %_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs9HU4uknhSfY_10line_index.exit12.i
  %i.aj = getelementptr inbounds nuw i8, ptr %i.g, i64 2
  %i.ak = add nuw nsw i64 %.sroa.0.051, 2
  %i.al = icmp samesign ne i64 %i.ak, %1
  tail call void @llvm.assume(i1 %i.al)
  %i.am = load i8, ptr %i.aj, align 1, !noalias !144, !noundef !10
  %i.an = shl nuw nsw i32 %i.ag, 6
  %i.ao = and i8 %i.am, 63
  %i.ap = zext nneg i8 %i.ao to i32
  %i.aq = or disjoint i32 %i.an, %i.ap            ; 2 uses
  %i.ar = shl nuw nsw i32 %i.aa, 12
  %i.as = or disjoint i32 %i.aq, %i.ar
  %i.at = icmp samesign ugt i8 %i.h, -17
  br i1 %i.at, label %_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs9HU4uknhSfY_10line_index.exit16.i, label %bb.k

_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs9HU4uknhSfY_10line_index.exit16.i: ; preds = %_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs9HU4uknhSfY_10line_index.exit14.i
  %i.au = getelementptr inbounds nuw i8, ptr %i.g, i64 3
  %i.av = add nuw nsw i64 %.sroa.0.051, 3
  %i.aw = icmp samesign ne i64 %i.av, %1
  tail call void @llvm.assume(i1 %i.aw)
  %i.ax = load i8, ptr %i.au, align 1, !noalias !144, !noundef !10
  %i.ay = shl nuw nsw i32 %i.aa, 18
  %i.az = and i32 %i.ay, 1835008
  %i.ba = shl nuw nsw i32 %i.aq, 6
  %i.bb = and i8 %i.ax, 63
  %i.bc = zext nneg i8 %i.bb to i32
  %i.bd = or disjoint i32 %i.ba, %i.bc
  %i.be = or disjoint i32 %i.bd, %i.az
  br label %bb.k

bb.j:                                             ; preds = %bb.h
  tail call void @_RNvNtCshzWfHUSfYae_4core3str16slice_error_fail(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %0, i64 noundef %1, i64 noundef %.sroa.0.051, i64 noundef %1, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @11) #23
  unreachable

bb.k:                                             ; preds = %_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs9HU4uknhSfY_10line_index.exit12.i, %_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs9HU4uknhSfY_10line_index.exit16.i, %_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs9HU4uknhSfY_10line_index.exit14.i
  %.sroa.4.0.i.ph = phi i32 [ %i.as, %_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs9HU4uknhSfY_10line_index.exit14.i ], [ %i.be, %_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs9HU4uknhSfY_10line_index.exit16.i ], [ %i.ah, %_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs9HU4uknhSfY_10line_index.exit12.i ] ; 4 uses
  %i.bf = icmp samesign ult i32 %.sroa.4.0.i.ph, 1114112
  tail call void @llvm.assume(i1 %i.bf)
  %i.bg = icmp samesign ugt i32 %.sroa.4.0.i.ph, 127
  br i1 %i.bg, label %bb.l, label %.thread

bb.l:                                             ; preds = %bb.k
  %i.bh = icmp samesign ult i32 %.sroa.4.0.i.ph, 2048
  br i1 %i.bh, label %.thread, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.bi = icmp samesign ult i32 %.sroa.4.0.i.ph, 65536
  %. = select i1 %i.bi, i64 3, i64 4
  br label %.thread

.thread:                                          ; preds = %bb.i, %bb.l, %bb.m, %bb.k
  %i.bj = phi i1 [ true, %bb.l ], [ true, %bb.m ], [ false, %bb.k ], [ false, %bb.i ]
  %.sroa.08.0 = phi i64 [ 2, %bb.l ], [ %., %bb.m ], [ 1, %bb.k ], [ 1, %bb.i ] ; 3 uses
  %i.bk = trunc i64 %.sroa.0.051 to i32
  %i.bl = add i32 %3, %i.bk
  %i.bm = load i64, ptr %i.b, align 8, !noundef !10 ; 4 uses
  %.not23.a = icmp eq i64 %i.bm, 0
  br i1 %.not23.a, label %10, label %6

6:                                                ; preds = %.thread
  %7 = load ptr, ptr %i.c, align 8, !nonnull !10, !noundef !10
  %8 = getelementptr [4 x i8], ptr %7, i64 %i.bm
  %9 = getelementptr i8, ptr %8, i64 -4
  %.sroa.010.0.sroa.speculate.load. = load i32, ptr %9, align 4
  br label %10

10:                                               ; preds = %.thread, %6
  %.sroa.010.0.sroa.speculated = phi i32 [ %.sroa.010.0.sroa.speculate.load., %6 ], [ 0, %.thread ]
  %11 = sub i32 %i.bl, %.sroa.010.0.sroa.speculated ; 2 uses
  br i1 %i.bj, label %bb.n, label %bb.g

bb.n:                                             ; preds = %10
  %.not68 = icmp eq i64 %.sroa.08.0, 1
  br i1 %.not68, label %bb.o, label %bb.p, !prof !11

bb.o:                                             ; preds = %bb.n
  tail call void @_RNvNtCshzWfHUSfYae_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @12, i64 noundef 45, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @13) #23
  unreachable

bb.p:                                             ; preds = %bb.n
  %i.bn = trunc nuw nsw i64 %.sroa.08.0 to i32
  %i.bo = add i32 %11, %i.bn
  %i.bp = icmp ult i64 %i.bm, 2305843009213693952
  tail call void @llvm.assume(i1 %i.bp)
  %i.bq = trunc i64 %i.bm to i32
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @_RNvMNtCsfjX3T6UU9IB_9hashbrown11rustc_entryINtNtB4_3map7HashMapmINtNtCsbSS6DM8SDEO_5alloc3vec3VecNtCs9HU4uknhSfY_10line_index8WideCharEINtNtCshzWfHUSfYae_4core4hash18BuildHasherDefaultINtCsdHhuG8sbGmp_13nohash_hasher12NoHashHashermEEE11rustc_entryB1z_(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a, ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %5, i32 noundef %i.bq)
  %i.br = load ptr, ptr %i.a, align 8, !noundef !10 ; 4 uses
  %.not24 = icmp eq ptr %i.br, null
  br i1 %.not24, label %bb.s, label %bb.q

bb.q:                                             ; preds = %bb.p
  %.sroa.434.0.copyload = load i64, ptr %.sroa.434.0..sroa_idx, align 8 ; 2 uses
  %.sroa.535.0.copyload = load ptr, ptr %.sroa.535.0..sroa_idx, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.bs = ptrtoint ptr %.sroa.535.0.copyload to i64
  %.sroa.830.16.extract.trunc = trunc i64 %i.bs to i32
  tail call void @llvm.experimental.noalias.scope.decl(metadata !147)
  %.val.i.i = load ptr, ptr %i.br, align 8, !alias.scope !147, !noalias !150, !nonnull !10, !noundef !10 ; 8 uses
  %i.bt = getelementptr inbounds nuw i8, ptr %i.br, i64 8
  %.val3.i.i = load i64, ptr %i.bt, align 8, !alias.scope !147, !noalias !150, !noundef !10 ; 4 uses
  %.sroa.0.07.i.i.i = and i64 %.val3.i.i, %.sroa.434.0.copyload ; 3 uses
  %i.bu = getelementptr inbounds nuw i8, ptr %.val.i.i, i64 %.sroa.0.07.i.i.i
  %.sroa.0.0.copyload.i68.i.i.i = load <16 x i8>, ptr %i.bu, align 1, !noalias !154
  %i.bv = icmp slt <16 x i8> %.sroa.0.0.copyload.i68.i.i.i, zeroinitializer
  %i.bw = bitcast <16 x i1> %i.bv to i16          ; 2 uses
  %.not.i9.i.i.i = icmp eq i16 %i.bw, 0
  br i1 %.not.i9.i.i.i, label %.lr.ph.i.i.i, label %._crit_edge.i.i.i, !prof !50

._crit_edge.i.i.i:                                ; preds = %.lr.ph.i.i.i, %bb.q
  %.sroa.0.0.lcssa.i.i.i = phi i64 [ %.sroa.0.07.i.i.i, %bb.q ], [ %.sroa.0.0.i.i.i, %.lr.ph.i.i.i ]
  %.lcssa.i.i.i = phi i16 [ %i.bw, %bb.q ], [ %i.cn, %.lr.ph.i.i.i ]
  %i.bx = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.lcssa.i.i.i, i1 true)
  %i.by = zext nneg i16 %i.bx to i64
  %i.bz = add i64 %.sroa.0.0.lcssa.i.i.i, %i.by
  %i.ca = and i64 %i.bz, %.val3.i.i               ; 2 uses
  %i.cb = getelementptr inbounds nuw i8, ptr %.val.i.i, i64 %i.ca
  %i.cc = load i8, ptr %i.cb, align 1, !noalias !157, !noundef !10 ; 2 uses
  %i.cd = icmp sgt i8 %i.cc, -1
  br i1 %i.cd, label %bb.r, label %_RNvMs6_NtCsfjX3T6UU9IB_9hashbrown3rawINtB5_8RawTableTmINtNtCsbSS6DM8SDEO_5alloc3vec3VecNtCs9HU4uknhSfY_10line_index8WideCharEEE14insert_no_growB1p_.exit.i, !prof !11

bb.r:                                             ; preds = %._crit_edge.i.i.i
  %.val2.i.i.i.i = load <16 x i8>, ptr %.val.i.i, align 16, !noalias !157
  %i.ce = icmp slt <16 x i8> %.val2.i.i.i.i, zeroinitializer
  %i.cf = bitcast <16 x i1> %i.ce to i16          ; 2 uses
  %.not.i6.i.i.i = icmp ne i16 %i.cf, 0
  %i.cg = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %i.cf, i1 true)
  %i.ch = zext nneg i16 %i.cg to i64              ; 2 uses
  tail call void @llvm.assume(i1 %.not.i6.i.i.i)
  %.phi.trans.insert.i.i = getelementptr inbounds nuw i8, ptr %.val.i.i, i64 %i.ch
  %.pre.i.i = load i8, ptr %.phi.trans.insert.i.i, align 1, !noalias !157
  br label %_RNvMs6_NtCsfjX3T6UU9IB_9hashbrown3rawINtB5_8RawTableTmINtNtCsbSS6DM8SDEO_5alloc3vec3VecNtCs9HU4uknhSfY_10line_index8WideCharEEE14insert_no_growB1p_.exit.i

.lr.ph.i.i.i:                                     ; preds = %bb.q, %.lr.ph.i.i.i
  %.sroa.0.010.i.i.i = phi i64 [ %.sroa.0.0.i.i.i, %.lr.ph.i.i.i ], [ %.sroa.0.07.i.i.i, %bb.q ]
  %i.ci = phi i64 [ %i.cj, %.lr.ph.i.i.i ], [ 0, %bb.q ]
  %i.cj = add i64 %i.ci, 16                       ; 2 uses
  %i.ck = add i64 %i.cj, %.sroa.0.010.i.i.i
  %.sroa.0.0.i.i.i = and i64 %i.ck, %.val3.i.i    ; 3 uses
  %i.cl = getelementptr inbounds nuw i8, ptr %.val.i.i, i64 %.sroa.0.0.i.i.i
  %.sroa.0.0.copyload.i6.i.i.i = load <16 x i8>, ptr %i.cl, align 1, !noalias !154
  %i.cm = icmp slt <16 x i8> %.sroa.0.0.copyload.i6.i.i.i, zeroinitializer
  %i.cn = bitcast <16 x i1> %i.cm to i16          ; 2 uses
  %.not.i.i.i.i = icmp eq i16 %i.cn, 0
  br i1 %.not.i.i.i.i, label %.lr.ph.i.i.i, label %._crit_edge.i.i.i, !prof !51

_RNvMs6_NtCsfjX3T6UU9IB_9hashbrown3rawINtB5_8RawTableTmINtNtCsbSS6DM8SDEO_5alloc3vec3VecNtCs9HU4uknhSfY_10line_index8WideCharEEE14insert_no_growB1p_.exit.i: ; preds = %bb.r, %._crit_edge.i.i.i
  %i.co = phi i8 [ %.pre.i.i, %bb.r ], [ %i.cc, %._crit_edge.i.i.i ]
  %.sroa.0.0.i5.i.i.i = phi i64 [ %i.ch, %bb.r ], [ %i.ca, %._crit_edge.i.i.i ] ; 3 uses
  %i.cp = getelementptr inbounds nuw i8, ptr %.val.i.i, i64 %.sroa.0.0.i5.i.i.i
  %i.cq = lshr i64 %.sroa.434.0.copyload, 57
  %i.cr = trunc nuw nsw i64 %i.cq to i8           ; 2 uses
  %i.cs = add i64 %.sroa.0.0.i5.i.i.i, -16
  %i.ct = and i64 %i.cs, %.val3.i.i
  store i8 %i.cr, ptr %i.cp, align 1, !noalias !157
  %i.cu = getelementptr i8, ptr %.val.i.i, i64 %i.ct
  %i.cv = getelementptr i8, ptr %i.cu, i64 16
  store i8 %i.cr, ptr %i.cv, align 1, !noalias !157
  %i.cw = sub nsw i64 0, %.sroa.0.0.i5.i.i.i
  %i.cx = getelementptr inbounds [32 x i8], ptr %.val.i.i, i64 %i.cw ; 5 uses
  %i.cy = and i8 %i.co, 1
  %i.cz = zext nneg i8 %i.cy to i64
  %i.da = getelementptr inbounds nuw i8, ptr %i.br, i64 16 ; 2 uses
  %i.db = getelementptr inbounds i8, ptr %i.cx, i64 -32
  store i32 %.sroa.830.16.extract.trunc, ptr %i.db, align 8, !noalias !158
  %.sroa.411.0..sroa_idx.i = getelementptr inbounds i8, ptr %i.cx, i64 -24
  store i64 0, ptr %.sroa.411.0..sroa_idx.i, align 8, !noalias !158
  %.sroa.512.0..sroa_idx.i = getelementptr inbounds i8, ptr %i.cx, i64 -16
  store ptr inttoptr (i64 4 to ptr), ptr %.sroa.512.0..sroa_idx.i, align 8, !noalias !158
  %.sroa.6.0..sroa_idx.i = getelementptr inbounds i8, ptr %i.cx, i64 -8
  store i64 0, ptr %.sroa.6.0..sroa_idx.i, align 8, !noalias !158
  %i.dc = load <2 x i64>, ptr %i.da, align 8, !alias.scope !147, !noalias !150
  %i.dd = insertelement <2 x i64> <i64 poison, i64 -1>, i64 %i.cz, i64 0
  %i.de = sub <2 x i64> %i.dc, %i.dd
  store <2 x i64> %i.de, ptr %i.da, align 8, !alias.scope !147, !noalias !150
  br label %_RNvMs19_NtNtNtCscAsMj0W7j8b_3std11collections4hash3mapINtB6_5EntrymINtNtCsbSS6DM8SDEO_5alloc3vec3VecNtCs9HU4uknhSfY_10line_index8WideCharEE10or_defaultB1C_.exit

bb.s:                                             ; preds = %bb.p
  %i.df = load ptr, ptr %.sroa.434.0..sroa_idx, align 8, !nonnull !10, !noundef !10
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %_RNvMs19_NtNtNtCscAsMj0W7j8b_3std11collections4hash3mapINtB6_5EntrymINtNtCsbSS6DM8SDEO_5alloc3vec3VecNtCs9HU4uknhSfY_10line_index8WideCharEE10or_defaultB1C_.exit

_RNvMs19_NtNtNtCscAsMj0W7j8b_3std11collections4hash3mapINtB6_5EntrymINtNtCsbSS6DM8SDEO_5alloc3vec3VecNtCs9HU4uknhSfY_10line_index8WideCharEE10or_defaultB1C_.exit: ; preds = %_RNvMs6_NtCsfjX3T6UU9IB_9hashbrown3rawINtB5_8RawTableTmINtNtCsbSS6DM8SDEO_5alloc3vec3VecNtCs9HU4uknhSfY_10line_index8WideCharEEE14insert_no_growB1p_.exit.i, %bb.s
  %.pn.i = phi ptr [ %i.cx, %_RNvMs6_NtCsfjX3T6UU9IB_9hashbrown3rawINtB5_8RawTableTmINtNtCsbSS6DM8SDEO_5alloc3vec3VecNtCs9HU4uknhSfY_10line_index8WideCharEEE14insert_no_growB1p_.exit.i ], [ %i.df, %bb.s ] ; 3 uses
  %.sroa.0.0.i27 = getelementptr inbounds i8, ptr %.pn.i, i64 -24 ; 2 uses
  %i.dg = getelementptr inbounds i8, ptr %.pn.i, i64 -8 ; 2 uses
  %i.dh = load i64, ptr %i.dg, align 8, !alias.scope !159, !noundef !10 ; 3 uses
  %i.di = load i64, ptr %.sroa.0.0.i27, align 8, !range !143, !alias.scope !159, !noundef !10
  %i.dj = icmp eq i64 %i.dh, %i.di
  br i1 %i.dj, label %bb.t, label %_RNvMsG_NtCsbSS6DM8SDEO_5alloc3vecINtB5_3VecNtCs9HU4uknhSfY_10line_index8WideCharE8push_mutBH_.exit

bb.t:                                             ; preds = %_RNvMs19_NtNtNtCscAsMj0W7j8b_3std11collections4hash3mapINtB6_5EntrymINtNtCsbSS6DM8SDEO_5alloc3vec3VecNtCs9HU4uknhSfY_10line_index8WideCharEE10or_defaultB1C_.exit
  tail call void @_RNvMs4_NtCsbSS6DM8SDEO_5alloc7raw_vecINtB5_6RawVecNtCs9HU4uknhSfY_10line_index8WideCharE8grow_oneBO_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %.sroa.0.0.i27) #22
  br label %_RNvMsG_NtCsbSS6DM8SDEO_5alloc3vecINtB5_3VecNtCs9HU4uknhSfY_10line_index8WideCharE8push_mutBH_.exit

_RNvMsG_NtCsbSS6DM8SDEO_5alloc3vecINtB5_3VecNtCs9HU4uknhSfY_10line_index8WideCharE8push_mutBH_.exit: ; preds = %_RNvMs19_NtNtNtCscAsMj0W7j8b_3std11collections4hash3mapINtB6_5EntrymINtNtCsbSS6DM8SDEO_5alloc3vec3VecNtCs9HU4uknhSfY_10line_index8WideCharEE10or_defaultB1C_.exit, %bb.t
  %i.dk = getelementptr inbounds i8, ptr %.pn.i, i64 -16
  %i.dl = load ptr, ptr %i.dk, align 8, !alias.scope !159, !nonnull !10, !noundef !10
  %i.dm = getelementptr inbounds nuw [8 x i8], ptr %i.dl, i64 %i.dh ; 2 uses
  store i32 %11, ptr %i.dm, align 4
  %i.dn = getelementptr inbounds nuw i8, ptr %i.dm, i64 4
  store i32 %i.bo, ptr %i.dn, align 4
  %i.do = add i64 %i.dh, 1
  store i64 %i.do, ptr %i.dg, align 8, !alias.scope !159
  br label %bb.g
}

; Function Attrs: nonlazybind uwtable
define noundef i64 @_RNvMCs9HU4uknhSfY_10line_indexNtB2_12WideEncoding7measure(ptr noalias nofree noundef readonly captures(none) dereferenceable(1) %0, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef %2) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = load i8, ptr %0, align 1, !range !162, !noundef !10
  %i.b = trunc nuw i8 %i.a to i1
  br i1 %i.b, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  %i.c = icmp ult i64 %2, 32
  br i1 %i.c, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.d = tail call noundef i64 @_RNvNtNtCshzWfHUSfYae_4core3str5count14do_count_chars(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef %2)
  br label %_RNvXNtNtCshzWfHUSfYae_4core3str4iterNtB2_5CharsNtNtNtNtB6_4iter6traits8iterator8Iterator5count.exit

bb.d:                                             ; preds = %bb.b
  %i.e = tail call noundef i64 @_RNvNtNtCshzWfHUSfYae_4core3str5count23char_count_general_case(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef %2)
  br label %_RNvXNtNtCshzWfHUSfYae_4core3str4iterNtB2_5CharsNtNtNtNtB6_4iter6traits8iterator8Iterator5count.exit

bb.e:                                             ; preds = %bb.a
  %i.f = icmp samesign eq i64 %2, 0
  br i1 %i.f, label %_RNvXNtNtCshzWfHUSfYae_4core3str4iterNtB2_5CharsNtNtNtNtB6_4iter6traits8iterator8Iterator5count.exit, label %.preheader.i.preheader

.preheader.i.preheader:                           ; preds = %bb.e
  %xtraiter = and i64 %2, 1
  %i.g = icmp eq i64 %2, 1
  br i1 %i.g, label %.preheader.i.epil.preheader, label %.preheader.i.preheader.new

.preheader.i.preheader.new:                       ; preds = %.preheader.i.preheader
  %unroll_iter = and i64 %2, -2
  br label %.preheader.i

.preheader.i:                                     ; preds = %_RNCNvXsO_NtNtCshzWfHUSfYae_4core3str4iterNtB7_11EncodeUtf16NtNtNtNtBb_4iter6traits8iterator8Iterator5count0Cs9HU4uknhSfY_10line_index.exit.i.i.1, %.preheader.i.preheader.new
  %.sroa.04.0.i.i = phi i64 [ 0, %.preheader.i.preheader.new ], [ %i.s, %_RNCNvXsO_NtNtCshzWfHUSfYae_4core3str4iterNtB7_11EncodeUtf16NtNtNtNtBb_4iter6traits8iterator8Iterator5count0Cs9HU4uknhSfY_10line_index.exit.i.i.1 ] ; 3 uses
  %.sroa.02.0.i.i = phi i64 [ 0, %.preheader.i.preheader.new ], [ %i.r, %_RNCNvXsO_NtNtCshzWfHUSfYae_4core3str4iterNtB7_11EncodeUtf16NtNtNtNtBb_4iter6traits8iterator8Iterator5count0Cs9HU4uknhSfY_10line_index.exit.i.i.1 ]
  %niter = phi i64 [ 0, %.preheader.i.preheader.new ], [ %niter.next.1, %_RNCNvXsO_NtNtCshzWfHUSfYae_4core3str4iterNtB7_11EncodeUtf16NtNtNtNtBb_4iter6traits8iterator8Iterator5count0Cs9HU4uknhSfY_10line_index.exit.i.i.1 ]
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 %.sroa.04.0.i.i
  %.val.i.i = load i8, ptr %i.h, align 1, !noalias !163, !noundef !10 ; 3 uses
  %i.i = icmp sgt i8 %.val.i.i, -1
  br i1 %i.i, label %_RNCNvXsO_NtNtCshzWfHUSfYae_4core3str4iterNtB7_11EncodeUtf16NtNtNtNtBb_4iter6traits8iterator8Iterator5count0Cs9HU4uknhSfY_10line_index.exit.i.i, label %bb.f

bb.f:                                             ; preds = %.preheader.i
  %i.j = icmp samesign ult i8 %.val.i.i, -64
  br i1 %i.j, label %_RNCNvXsO_NtNtCshzWfHUSfYae_4core3str4iterNtB7_11EncodeUtf16NtNtNtNtBb_4iter6traits8iterator8Iterator5count0Cs9HU4uknhSfY_10line_index.exit.i.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.k = icmp samesign ult i8 %.val.i.i, -16
  %..i.i.i = select i1 %i.k, i64 1, i64 2
  br label %_RNCNvXsO_NtNtCshzWfHUSfYae_4core3str4iterNtB7_11EncodeUtf16NtNtNtNtBb_4iter6traits8iterator8Iterator5count0Cs9HU4uknhSfY_10line_index.exit.i.i

_RNCNvXsO_NtNtCshzWfHUSfYae_4core3str4iterNtB7_11EncodeUtf16NtNtNtNtBb_4iter6traits8iterator8Iterator5count0Cs9HU4uknhSfY_10line_index.exit.i.i: ; preds = %bb.g, %bb.f, %.preheader.i
  %.sroa.0.0.i.i.i = phi i64 [ 0, %bb.f ], [ %..i.i.i, %bb.g ], [ 1, %.preheader.i ]
  %i.l = add i64 %.sroa.0.0.i.i.i, %.sroa.02.0.i.i
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 %.sroa.04.0.i.i
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 1
  %.val.i.i.1 = load i8, ptr %i.n, align 1, !noalias !163, !noundef !10 ; 3 uses
  %i.o = icmp sgt i8 %.val.i.i.1, -1
  br i1 %i.o, label %_RNCNvXsO_NtNtCshzWfHUSfYae_4core3str4iterNtB7_11EncodeUtf16NtNtNtNtBb_4iter6traits8iterator8Iterator5count0Cs9HU4uknhSfY_10line_index.exit.i.i.1, label %bb.h

bb.h:                                             ; preds = %_RNCNvXsO_NtNtCshzWfHUSfYae_4core3str4iterNtB7_11EncodeUtf16NtNtNtNtBb_4iter6traits8iterator8Iterator5count0Cs9HU4uknhSfY_10line_index.exit.i.i
  %i.p = icmp samesign ult i8 %.val.i.i.1, -64
  br i1 %i.p, label %_RNCNvXsO_NtNtCshzWfHUSfYae_4core3str4iterNtB7_11EncodeUtf16NtNtNtNtBb_4iter6traits8iterator8Iterator5count0Cs9HU4uknhSfY_10line_index.exit.i.i.1, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.q = icmp samesign ult i8 %.val.i.i.1, -16
end_hunk_0

Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/rust-analyzer-rs/original/pulldown_cmark_to_cmark-29adfb26f0d55dee.pulldown_cmark_to_cmark.724381dc03fbeed0-cgu.0?download=true
inline.NumInlined: 121
inline.NumDeleted: 83
loop-unroll.NumCompletelyUnrolled: 4
loop-unroll.NumUnrolled: 4
begin_hunk_0_@_RNvNvCs9OdPc0izwZ0_23pulldown_cmark_to_cmark25cmark_resume_with_options10padding_of:bb.a

_RNvXs_NtCsbSS6DM8SDEO_5alloc5allocNtB4_6GlobalNtNtCshzWfHUSfYae_4core5alloc9Allocator10deallocate.exit.i.i.i4.i.i.i: ; preds = %bb.d
  %.val3.i = load ptr, ptr %.sroa.4.0..sroa_idx.i, align 8, !noalias !60, !nonnull !5, !noundef !5
  call void @_RNvCsiZ68L5R9VjM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val3.i, i64 noundef %.val.i, i64 noundef range(i64 1, -9223372036854775807) 1) #18, !noalias !60
  br label %.body

bb.e:                                             ; preds = %bb.a
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr @3, ptr %i.z, align 8
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 2, ptr %i.aa, align 8
  store i64 -1, ptr %0, align 8
  br label %bb.f

bb.f:                                             ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCsbSS6DM8SDEO_5alloc6string6StringECs9OdPc0izwZ0_23pulldown_cmark_to_cmark.exit16, %bb.e
  ret void

.body:                                            ; preds = %bb.d, %_RNvXs_NtCsbSS6DM8SDEO_5alloc5allocNtB4_6GlobalNtNtCshzWfHUSfYae_4core5alloc9Allocator10deallocate.exit.i.i.i4.i.i.i
  %i.ab = icmp eq i64 %.sroa.0.0.copyload, 0
  br i1 %i.ab, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCsbSS6DM8SDEO_5alloc6string6StringECs9OdPc0izwZ0_23pulldown_cmark_to_cmark.exit, label %_RNvXs_NtCsbSS6DM8SDEO_5alloc5allocNtB4_6GlobalNtNtCshzWfHUSfYae_4core5alloc9Allocator10deallocate.exit.i.i.i4.i.i

_RNvXs_NtCsbSS6DM8SDEO_5alloc5allocNtB4_6GlobalNtNtCshzWfHUSfYae_4core5alloc9Allocator10deallocate.exit.i.i.i4.i.i: ; preds = %.body
  call void @_RNvCsiZ68L5R9VjM_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.5.0.copyload, i64 noundef %.sroa.0.0.copyload, i64 noundef range(i64 1, -9223372036854775807) 1) #18
  br label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCsbSS6DM8SDEO_5alloc6string6StringECs9OdPc0izwZ0_23pulldown_cmark_to_cmark.exit

.loopexit:                                        ; preds = %_RNCINvNtNtNtCshzWfHUSfYae_4core4iter8adapters3map8map_foldccuNCNvNvCs9OdPc0izwZ0_23pulldown_cmark_to_cmark25cmark_resume_with_options10padding_of0NCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callcNCINvXsd_NtCsbSS6DM8SDEO_5alloc6stringNtB3n_6StringINtNtB2v_7collect6ExtendcE6extendINtB4_3MapNtNtNtBa_3str4iter5CharsBX_EE0E0E0B13_.exit.i.i.i.i.i, %.split
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.a, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !60
  %i.ac = icmp eq i64 %.sroa.0.0.copyload, 0
  br i1 %i.ac, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCsbSS6DM8SDEO_5alloc6string6StringECs9OdPc0izwZ0_23pulldown_cmark_to_cmark.exit16, label %_RNvXs_NtCsbSS6DM8SDEO_5alloc5allocNtB4_6GlobalNtNtCshzWfHUSfYae_4core5alloc9Allocator10deallocate.exit.i.i.i4.i.i15

_RNvXs_NtCsbSS6DM8SDEO_5alloc5allocNtB4_6GlobalNtNtCshzWfHUSfYae_4core5alloc9Allocator10deallocate.exit.i.i.i4.i.i15: ; preds = %.loopexit
  call void @_RNvCsiZ68L5R9VjM_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.5.0.copyload, i64 noundef %.sroa.0.0.copyload, i64 noundef range(i64 1, -9223372036854775807) 1) #18
  br label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCsbSS6DM8SDEO_5alloc6string6StringECs9OdPc0izwZ0_23pulldown_cmark_to_cmark.exit16

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCsbSS6DM8SDEO_5alloc6string6StringECs9OdPc0izwZ0_23pulldown_cmark_to_cmark.exit16: ; preds = %.loopexit, %_RNvXs_NtCsbSS6DM8SDEO_5alloc5allocNtB4_6GlobalNtNtCshzWfHUSfYae_4core5alloc9Allocator10deallocate.exit.i.i.i4.i.i15
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  br label %bb.f

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCsbSS6DM8SDEO_5alloc6string6StringECs9OdPc0izwZ0_23pulldown_cmark_to_cmark.exit: ; preds = %_RNvXs_NtCsbSS6DM8SDEO_5alloc5allocNtB4_6GlobalNtNtCshzWfHUSfYae_4core5alloc9Allocator10deallocate.exit.i.i.i4.i.i, %.body
  resume { ptr, i32 } %lpad.phi.i
}

; Function Attrs: nonlazybind uwtable
define void @_RNvNvCs9OdPc0izwZ0_23pulldown_cmark_to_cmark25cmark_resume_with_options33escape_leading_special_characters(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef %2, i1 noundef zeroext %3, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(104) %4) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 12 uses
  %i.b = alloca [104 x i8], align 8               ; 19 uses
  %i.c = alloca [4 x i8], align 4                 ; 18 uses
  %i.d = alloca [24 x i8], align 8                ; 15 uses
  %i.e = alloca [24 x i8], align 8                ; 7 uses
  %i.f = icmp eq i64 %2, 0
  %or.cond = or i1 %3, %i.f
  br i1 %or.cond, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %1, ptr %i.g, align 8
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %2, ptr %i.h, align 8
  store i64 -1, ptr %0, align 8
  br label %bb.by

bb.c:                                             ; preds = %bb.a
  %i.i = load i8, ptr %1, align 1, !noalias !136, !noundef !5 ; 5 uses
  %i.j = icmp sgt i8 %i.i, -1
  br i1 %i.j, label %bb.d, label %_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs9OdPc0izwZ0_23pulldown_cmark_to_cmark.exit12.i

_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs9OdPc0izwZ0_23pulldown_cmark_to_cmark.exit12.i: ; preds = %bb.c
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 1
  %i.l = and i8 %i.i, 31
  %i.m = zext nneg i8 %i.l to i32                 ; 3 uses
  %i.n = icmp samesign ne i64 %2, 1
  tail call void @llvm.assume(i1 %i.n)
  %i.o = load i8, ptr %i.k, align 1, !noalias !136, !noundef !5
  %i.p = shl nuw nsw i32 %i.m, 6
  %i.q = and i8 %i.o, 63
  %i.r = zext nneg i8 %i.q to i32                 ; 2 uses
  %i.s = or disjoint i32 %i.p, %i.r
  %i.t = icmp samesign ugt i8 %i.i, -33
  br i1 %i.t, label %_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs9OdPc0izwZ0_23pulldown_cmark_to_cmark.exit14.i, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.u = zext nneg i8 %i.i to i32
  br label %bb.e

_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs9OdPc0izwZ0_23pulldown_cmark_to_cmark.exit14.i: ; preds = %_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs9OdPc0izwZ0_23pulldown_cmark_to_cmark.exit12.i
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 2
  %i.w = icmp samesign ne i64 %2, 2
  tail call void @llvm.assume(i1 %i.w)
  %i.x = load i8, ptr %i.v, align 1, !noalias !136, !noundef !5
  %i.y = shl nuw nsw i32 %i.r, 6
  %i.z = and i8 %i.x, 63
  %i.aa = zext nneg i8 %i.z to i32
  %i.ab = or disjoint i32 %i.y, %i.aa             ; 2 uses
  %i.ac = shl nuw nsw i32 %i.m, 12
  %i.ad = or disjoint i32 %i.ab, %i.ac
  %i.ae = icmp samesign ugt i8 %i.i, -17
  br i1 %i.ae, label %_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs9OdPc0izwZ0_23pulldown_cmark_to_cmark.exit16.i, label %bb.e

_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs9OdPc0izwZ0_23pulldown_cmark_to_cmark.exit16.i: ; preds = %_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs9OdPc0izwZ0_23pulldown_cmark_to_cmark.exit14.i
  %i.af = getelementptr inbounds nuw i8, ptr %1, i64 3
  %i.ag = icmp samesign ne i64 %2, 3
  tail call void @llvm.assume(i1 %i.ag)
  %i.ah = load i8, ptr %i.af, align 1, !noalias !136, !noundef !5
  %i.ai = shl nuw nsw i32 %i.m, 18
  %i.aj = and i32 %i.ai, 1835008
  %i.ak = shl nuw nsw i32 %i.ab, 6
  %i.al = and i8 %i.ah, 63
  %i.am = zext nneg i8 %i.al to i32
  %i.an = or disjoint i32 %i.ak, %i.am
  %i.ao = or disjoint i32 %i.an, %i.aj
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs9OdPc0izwZ0_23pulldown_cmark_to_cmark.exit12.i, %_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs9OdPc0izwZ0_23pulldown_cmark_to_cmark.exit16.i, %_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs9OdPc0izwZ0_23pulldown_cmark_to_cmark.exit14.i
  %.sroa.4.0.i.ph = phi i32 [ %i.ad, %_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs9OdPc0izwZ0_23pulldown_cmark_to_cmark.exit14.i ], [ %i.ao, %_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs9OdPc0izwZ0_23pulldown_cmark_to_cmark.exit16.i ], [ %i.s, %_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs9OdPc0izwZ0_23pulldown_cmark_to_cmark.exit12.i ], [ %i.u, %bb.d ] ; 19 uses
  %i.ap = icmp samesign ult i32 %.sroa.4.0.i.ph, 1114112
  tail call void @llvm.assume(i1 %i.ap)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  call void @_RNvMs0_Cs9OdPc0izwZ0_23pulldown_cmark_to_cmarkNtB5_7Options18special_characters(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.e, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(104) %4)
  %i.aq = load i64, ptr %i.e, align 8, !range !137, !noundef !5 ; 6 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.as = load ptr, ptr %i.ar, align 8            ; 16 uses
  %i.at = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  %i.au = load i64, ptr %i.at, align 8            ; 18 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !138)
  %i.av = icmp samesign ult i32 %.sroa.4.0.i.ph, 128 ; 3 uses
  %.sink4.i.sroa.gep.i = getelementptr inbounds nuw i8, ptr %i.c, i64 1 ; 3 uses
  %.sink4.i.sroa.gep3.i = getelementptr inbounds nuw i8, ptr %i.c, i64 2 ; 2 uses
  %.sink4.i.sroa.gep4.i = getelementptr inbounds nuw i8, ptr %i.c, i64 3
  br i1 %i.av, label %bb.az, label %bb.f

bb.f:                                             ; preds = %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !138
  store i32 0, ptr %i.c, align 4, !noalias !138
  %i.aw = icmp samesign ult i32 %.sroa.4.0.i.ph, 2048
  %i.ax = lshr i32 %.sroa.4.0.i.ph, 6
  %i.ay = trunc i32 %i.ax to i8                   ; 2 uses
  %i.az = and i8 %i.ay, 63
  %i.ba = or disjoint i8 %i.az, -128              ; 2 uses
  %i.bb = lshr i32 %.sroa.4.0.i.ph, 12
  %i.bc = trunc i32 %i.bb to i8                   ; 2 uses
  %i.bd = and i8 %i.bc, 63
  %i.be = or disjoint i8 %i.bd, -128
  %i.bf = lshr i32 %.sroa.4.0.i.ph, 18
  %i.bg = trunc nuw nsw i32 %i.bf to i8
  %i.bh = or disjoint i8 %i.bg, -16
  br i1 %i.aw, label %_RNvNtNtCshzWfHUSfYae_4core4char7methods15encode_utf8_raw.exit.thread.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.bi = icmp samesign ult i32 %.sroa.4.0.i.ph, 65536
  br i1 %i.bi, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.bj = or disjoint i8 %i.bc, -32
  br label %_RNvNtNtCshzWfHUSfYae_4core4char7methods15encode_utf8_raw.exit.i

bb.i:                                             ; preds = %bb.g
  store i8 %i.ba, ptr %.sink4.i.sroa.gep3.i, align 2, !alias.scope !139, !noalias !138
  br label %_RNvNtNtCshzWfHUSfYae_4core4char7methods15encode_utf8_raw.exit.i

_RNvNtNtCshzWfHUSfYae_4core4char7methods15encode_utf8_raw.exit.i: ; preds = %bb.i, %bb.h
  %.sink96 = phi i8 [ %i.bj, %bb.h ], [ %i.bh, %bb.i ] ; 6 uses
  %.sink = phi i8 [ %i.ba, %bb.h ], [ %i.be, %bb.i ]
  %.sink4.i.sroa.phi.i = phi ptr [ %.sink4.i.sroa.gep3.i, %bb.h ], [ %.sink4.i.sroa.gep4.i, %bb.i ]
  %.sroa.0.0.i.i = phi i64 [ 3, %bb.h ], [ 4, %bb.i ] ; 11 uses
  store i8 %.sink96, ptr %i.c, align 4, !alias.scope !139, !noalias !138
  store i8 %.sink, ptr %.sink4.i.sroa.gep.i, align 1, !alias.scope !139, !noalias !138
  %i.bk = trunc i32 %.sroa.4.0.i.ph to i8
  %i.bl = and i8 %i.bk, 63
  %i.bm = or disjoint i8 %i.bl, -128
  store i8 %i.bm, ptr %.sink4.i.sroa.phi.i, align 1, !alias.scope !139, !noalias !138
  tail call void @llvm.experimental.noalias.scope.decl(metadata !140)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !141)
  %i.bn = icmp ult i64 %.sroa.0.0.i.i, %i.au
  br i1 %i.bn, label %_RNCINvNvNtNtNtNtCshzWfHUSfYae_4core4iter6traits12double_ended19DoubleEndedIterator5rfind5checkjNCNvNtNtBe_3str7pattern13simd_contains0E0Cs9OdPc0izwZ0_23pulldown_cmark_to_cmark.exit.i.i.i.i, label %bb.j

_RNvNtNtCshzWfHUSfYae_4core4char7methods15encode_utf8_raw.exit.thread.i: ; preds = %bb.f
  %i.bo = or disjoint i8 %i.ay, -64               ; 2 uses
  store i8 %i.bo, ptr %i.c, align 4, !alias.scope !139, !noalias !138
  %i.bp = trunc i32 %.sroa.4.0.i.ph to i8
  %i.bq = and i8 %i.bp, 63
  %i.br = or disjoint i8 %i.bq, -128              ; 2 uses
  store i8 %i.br, ptr %.sink4.i.sroa.gep.i, align 1, !alias.scope !139, !noalias !138
  %i.bs = icmp ugt i64 %i.au, 2
  br i1 %i.bs, label %.thread.i, label %bb.j

.thread.i:                                        ; preds = %_RNvNtNtCshzWfHUSfYae_4core4char7methods15encode_utf8_raw.exit.thread.i
  %i.bt = icmp ult i64 %i.au, 17
  br i1 %i.bt, label %.lr.ph.split.us.i.i.i.i, label %.thread92.i.i.i

bb.j:                                             ; preds = %_RNvNtNtCshzWfHUSfYae_4core4char7methods15encode_utf8_raw.exit.thread.i, %_RNvNtNtCshzWfHUSfYae_4core4char7methods15encode_utf8_raw.exit.i
  %.sroa.0.0.i68.i = phi i64 [ 2, %_RNvNtNtCshzWfHUSfYae_4core4char7methods15encode_utf8_raw.exit.thread.i ], [ %.sroa.0.0.i.i, %_RNvNtNtCshzWfHUSfYae_4core4char7methods15encode_utf8_raw.exit.i ]
  %i.bu = icmp eq i64 %.sroa.0.0.i68.i, %i.au
  br i1 %i.bu, label %bb.ay, label %_RNvXst_NtNtCshzWfHUSfYae_4core3str7patternReNtB5_7Pattern15is_contained_in.exit.i.thread70

_RNCINvNvNtNtNtNtCshzWfHUSfYae_4core4iter6traits12double_ended19DoubleEndedIterator5rfind5checkjNCNvNtNtBe_3str7pattern13simd_contains0E0Cs9OdPc0izwZ0_23pulldown_cmark_to_cmark.exit.i.i.i.i: ; preds = %_RNvNtNtCshzWfHUSfYae_4core4char7methods15encode_utf8_raw.exit.i
  tail call void @llvm.experimental.noalias.scope.decl(metadata !142)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !143)
  %i.bv = add nsw i64 %.sroa.0.0.i.i, -1
  %i.bw = add nsw i64 %.sroa.0.0.i.i, -1          ; 3 uses
  %i.bx = getelementptr inbounds nuw i8, ptr %i.c, i64 %i.bw
  %i.by = load i8, ptr %i.bx, align 1, !alias.scope !144, !noalias !145, !noundef !5 ; 2 uses
  %.not.i.not.i.i.i.i = icmp eq i8 %i.by, %.sink96
  br i1 %.not.i.not.i.i.i.i, label %.preheader.i, label %bb.k

.preheader.i:                                     ; preds = %_RNCINvNvNtNtNtNtCshzWfHUSfYae_4core4iter6traits12double_ended19DoubleEndedIterator5rfind5checkjNCNvNtNtBe_3str7pattern13simd_contains0E0Cs9OdPc0izwZ0_23pulldown_cmark_to_cmark.exit.i.i.i.i
  %.not.i.i = icmp eq i64 %i.bw, 0
  br i1 %.not.i.i, label %_RNvNtNtCshzWfHUSfYae_4core3str7pattern13simd_contains.exit.i.i, label %_RNCINvNvNtNtNtNtCshzWfHUSfYae_4core4iter6traits12double_ended19DoubleEndedIterator5rfind5checkjNCNvNtNtBe_3str7pattern13simd_contains0E0Cs9OdPc0izwZ0_23pulldown_cmark_to_cmark.exit.i.i.i.i.1

_RNCINvNvNtNtNtNtCshzWfHUSfYae_4core4iter6traits12double_ended19DoubleEndedIterator5rfind5checkjNCNvNtNtBe_3str7pattern13simd_contains0E0Cs9OdPc0izwZ0_23pulldown_cmark_to_cmark.exit.i.i.i.i.1: ; preds = %.preheader.i
  %i.bz = add nsw i64 %.sroa.0.0.i.i, -2          ; 3 uses
  %i.ca = getelementptr inbounds nuw i8, ptr %i.c, i64 %i.bz
  %i.cb = load i8, ptr %i.ca, align 1, !alias.scope !144, !noalias !145, !noundef !5 ; 2 uses
  %.not.i.not.i.i.i.i.1 = icmp eq i8 %i.cb, %.sink96
  br i1 %.not.i.not.i.i.i.i.1, label %.preheader.i.1, label %bb.k

.preheader.i.1:                                   ; preds = %_RNCINvNvNtNtNtNtCshzWfHUSfYae_4core4iter6traits12double_ended19DoubleEndedIterator5rfind5checkjNCNvNtNtBe_3str7pattern13simd_contains0E0Cs9OdPc0izwZ0_23pulldown_cmark_to_cmark.exit.i.i.i.i.1
  %.not.i.i.1 = icmp eq i64 %i.bz, 0
  br i1 %.not.i.i.1, label %_RNvNtNtCshzWfHUSfYae_4core3str7pattern13simd_contains.exit.i.i, label %_RNCINvNvNtNtNtNtCshzWfHUSfYae_4core4iter6traits12double_ended19DoubleEndedIterator5rfind5checkjNCNvNtNtBe_3str7pattern13simd_contains0E0Cs9OdPc0izwZ0_23pulldown_cmark_to_cmark.exit.i.i.i.i.2

_RNCINvNvNtNtNtNtCshzWfHUSfYae_4core4iter6traits12double_ended19DoubleEndedIterator5rfind5checkjNCNvNtNtBe_3str7pattern13simd_contains0E0Cs9OdPc0izwZ0_23pulldown_cmark_to_cmark.exit.i.i.i.i.2: ; preds = %.preheader.i.1
  %i.cc = add nsw i64 %.sroa.0.0.i.i, -3          ; 3 uses
  %i.cd = getelementptr inbounds nuw i8, ptr %i.c, i64 %i.cc
  %i.ce = load i8, ptr %i.cd, align 1, !alias.scope !144, !noalias !145, !noundef !5 ; 2 uses
  %.not.i.not.i.i.i.i.2 = icmp eq i8 %i.ce, %.sink96
  br i1 %.not.i.not.i.i.i.i.2, label %.preheader.i.2, label %bb.k

.preheader.i.2:                                   ; preds = %_RNCINvNvNtNtNtNtCshzWfHUSfYae_4core4iter6traits12double_ended19DoubleEndedIterator5rfind5checkjNCNvNtNtBe_3str7pattern13simd_contains0E0Cs9OdPc0izwZ0_23pulldown_cmark_to_cmark.exit.i.i.i.i.2
  %.not.i.i.2 = icmp eq i64 %i.cc, 0
  br i1 %.not.i.i.2, label %_RNvNtNtCshzWfHUSfYae_4core3str7pattern13simd_contains.exit.i.i, label %_RNCINvNvNtNtNtNtCshzWfHUSfYae_4core4iter6traits12double_ended19DoubleEndedIterator5rfind5checkjNCNvNtNtBe_3str7pattern13simd_contains0E0Cs9OdPc0izwZ0_23pulldown_cmark_to_cmark.exit.i.i.i.i.3

_RNCINvNvNtNtNtNtCshzWfHUSfYae_4core4iter6traits12double_ended19DoubleEndedIterator5rfind5checkjNCNvNtNtBe_3str7pattern13simd_contains0E0Cs9OdPc0izwZ0_23pulldown_cmark_to_cmark.exit.i.i.i.i.3: ; preds = %.preheader.i.2
  %i.cf = add nsw i64 %.sroa.0.0.i.i, -4          ; 2 uses
  %i.cg = getelementptr inbounds nuw i8, ptr %i.c, i64 %i.cf
  %i.ch = load i8, ptr %i.cg, align 1, !alias.scope !144, !noalias !145, !noundef !5 ; 2 uses
  %.not.i.not.i.i.i.i.3 = icmp eq i8 %i.ch, %.sink96
  br i1 %.not.i.not.i.i.i.i.3, label %_RNvNtNtCshzWfHUSfYae_4core3str7pattern13simd_contains.exit.i.i, label %bb.k

bb.k:                                             ; preds = %_RNCINvNvNtNtNtNtCshzWfHUSfYae_4core4iter6traits12double_ended19DoubleEndedIterator5rfind5checkjNCNvNtNtBe_3str7pattern13simd_contains0E0Cs9OdPc0izwZ0_23pulldown_cmark_to_cmark.exit.i.i.i.i.3, %_RNCINvNvNtNtNtNtCshzWfHUSfYae_4core4iter6traits12double_ended19DoubleEndedIterator5rfind5checkjNCNvNtNtBe_3str7pattern13simd_contains0E0Cs9OdPc0izwZ0_23pulldown_cmark_to_cmark.exit.i.i.i.i.2, %_RNCINvNvNtNtNtNtCshzWfHUSfYae_4core4iter6traits12double_ended19DoubleEndedIterator5rfind5checkjNCNvNtNtBe_3str7pattern13simd_contains0E0Cs9OdPc0izwZ0_23pulldown_cmark_to_cmark.exit.i.i.i.i.1, %_RNCINvNvNtNtNtNtCshzWfHUSfYae_4core4iter6traits12double_ended19DoubleEndedIterator5rfind5checkjNCNvNtNtBe_3str7pattern13simd_contains0E0Cs9OdPc0izwZ0_23pulldown_cmark_to_cmark.exit.i.i.i.i
  %.lcssa199 = phi i64 [ %i.bw, %_RNCINvNvNtNtNtNtCshzWfHUSfYae_4core4iter6traits12double_ended19DoubleEndedIterator5rfind5checkjNCNvNtNtBe_3str7pattern13simd_contains0E0Cs9OdPc0izwZ0_23pulldown_cmark_to_cmark.exit.i.i.i.i ], [ %i.bz, %_RNCINvNvNtNtNtNtCshzWfHUSfYae_4core4iter6traits12double_ended19DoubleEndedIterator5rfind5checkjNCNvNtNtBe_3str7pattern13simd_contains0E0Cs9OdPc0izwZ0_23pulldown_cmark_to_cmark.exit.i.i.i.i.1 ], [ %i.cc, %_RNCINvNvNtNtNtNtCshzWfHUSfYae_4core4iter6traits12double_ended19DoubleEndedIterator5rfind5checkjNCNvNtNtBe_3str7pattern13simd_contains0E0Cs9OdPc0izwZ0_23pulldown_cmark_to_cmark.exit.i.i.i.i.2 ], [ %i.cf, %_RNCINvNvNtNtNtNtCshzWfHUSfYae_4core4iter6traits12double_ended19DoubleEndedIterator5rfind5checkjNCNvNtNtBe_3str7pattern13simd_contains0E0Cs9OdPc0izwZ0_23pulldown_cmark_to_cmark.exit.i.i.i.i.3 ]
  %.lcssa197 = phi i8 [ %i.by, %_RNCINvNvNtNtNtNtCshzWfHUSfYae_4core4iter6traits12double_ended19DoubleEndedIterator5rfind5checkjNCNvNtNtBe_3str7pattern13simd_contains0E0Cs9OdPc0izwZ0_23pulldown_cmark_to_cmark.exit.i.i.i.i ], [ %i.cb, %_RNCINvNvNtNtNtNtCshzWfHUSfYae_4core4iter6traits12double_ended19DoubleEndedIterator5rfind5checkjNCNvNtNtBe_3str7pattern13simd_contains0E0Cs9OdPc0izwZ0_23pulldown_cmark_to_cmark.exit.i.i.i.i.1 ], [ %i.ce, %_RNCINvNvNtNtNtNtCshzWfHUSfYae_4core4iter6traits12double_ended19DoubleEndedIterator5rfind5checkjNCNvNtNtBe_3str7pattern13simd_contains0E0Cs9OdPc0izwZ0_23pulldown_cmark_to_cmark.exit.i.i.i.i.2 ], [ %i.ch, %_RNCINvNvNtNtNtNtCshzWfHUSfYae_4core4iter6traits12double_ended19DoubleEndedIterator5rfind5checkjNCNvNtNtBe_3str7pattern13simd_contains0E0Cs9OdPc0izwZ0_23pulldown_cmark_to_cmark.exit.i.i.i.i.3 ]
  %i.ci = add nuw nsw i64 %.sroa.0.0.i.i, 15
  %i.cj = icmp ult i64 %i.au, %i.ci
  br i1 %i.cj, label %.lr.ph.split.us.i.i.i.i, label %.thread92.i.i.i

.lr.ph.split.us.i.i.i.i:                          ; preds = %.thread.i, %bb.k
  %.sroa.0.0.i6772.i = phi i64 [ 2, %.thread.i ], [ %.sroa.0.0.i.i, %bb.k ] ; 4 uses
  %bcmp.i.i.us22.i.i.i.i = call i32 @bcmp(ptr noundef nonnull readonly dereferenceable(1) %i.as, ptr noundef nonnull readonly dereferenceable(1) %i.c, i64 range(i64 2, 5) %.sroa.0.0.i6772.i), !alias.scope !146, !noalias !147
  %i.ck = icmp eq i32 %bcmp.i.i.us22.i.i.i.i, 0
  br i1 %i.ck, label %_RNvXst_NtNtCshzWfHUSfYae_4core3str7patternReNtB5_7Pattern15is_contained_in.exit.i.thread, label %_RNCINvNvNtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator3any5checkRShNCNvNtNtBe_3str7pattern13simd_containss_0E0Cs9OdPc0izwZ0_23pulldown_cmark_to_cmark.exit.backedge.us.i.i.i.i.preheader

_RNCINvNvNtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator3any5checkRShNCNvNtNtBe_3str7pattern13simd_containss_0E0Cs9OdPc0izwZ0_23pulldown_cmark_to_cmark.exit.backedge.us.i.i.i.i.preheader: ; preds = %.lr.ph.split.us.i.i.i.i
  %i.cl = add i64 %i.au, -1                       ; 2 uses
  %.not27.i.i.i.i182 = icmp ugt i64 %.sroa.0.0.i6772.i, %i.cl
  br i1 %.not27.i.i.i.i182, label %_RNvXst_NtNtCshzWfHUSfYae_4core3str7patternReNtB5_7Pattern15is_contained_in.exit.i.thread70, label %.split.us.i.i.i.i

.split.us.i.i.i.i:                                ; preds = %_RNCINvNvNtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator3any5checkRShNCNvNtNtBe_3str7pattern13simd_containss_0E0Cs9OdPc0izwZ0_23pulldown_cmark_to_cmark.exit.backedge.us.i.i.i.i.preheader, %_RNCINvNvNtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator3any5checkRShNCNvNtNtBe_3str7pattern13simd_containss_0E0Cs9OdPc0izwZ0_23pulldown_cmark_to_cmark.exit.backedge.us.i.i.i.i
  %i.cm = phi i64 [ %i.cp, %_RNCINvNvNtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator3any5checkRShNCNvNtNtBe_3str7pattern13simd_containss_0E0Cs9OdPc0izwZ0_23pulldown_cmark_to_cmark.exit.backedge.us.i.i.i.i ], [ %i.cl, %_RNCINvNvNtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator3any5checkRShNCNvNtNtBe_3str7pattern13simd_containss_0E0Cs9OdPc0izwZ0_23pulldown_cmark_to_cmark.exit.backedge.us.i.i.i.i.preheader ]
  %.pn.i.i.i183 = phi ptr [ %i.cn, %_RNCINvNvNtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator3any5checkRShNCNvNtNtBe_3str7pattern13simd_containss_0E0Cs9OdPc0izwZ0_23pulldown_cmark_to_cmark.exit.backedge.us.i.i.i.i ], [ %i.as, %_RNCINvNvNtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator3any5checkRShNCNvNtNtBe_3str7pattern13simd_containss_0E0Cs9OdPc0izwZ0_23pulldown_cmark_to_cmark.exit.backedge.us.i.i.i.i.preheader ]
  %i.cn = getelementptr inbounds nuw i8, ptr %.pn.i.i.i183, i64 1 ; 2 uses
  %bcmp.i.i.us.i.i.i.i = call i32 @bcmp(ptr noundef nonnull readonly dereferenceable(1) %i.cn, ptr noundef nonnull readonly dereferenceable(1) %i.c, i64 range(i64 2, 5) %.sroa.0.0.i6772.i), !alias.scope !146, !noalias !147
  %i.co = icmp eq i32 %bcmp.i.i.us.i.i.i.i, 0
  br i1 %i.co, label %_RNvXst_NtNtCshzWfHUSfYae_4core3str7patternReNtB5_7Pattern15is_contained_in.exit.i.thread, label %_RNCINvNvNtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator3any5checkRShNCNvNtNtBe_3str7pattern13simd_containss_0E0Cs9OdPc0izwZ0_23pulldown_cmark_to_cmark.exit.backedge.us.i.i.i.i

_RNCINvNvNtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator3any5checkRShNCNvNtNtBe_3str7pattern13simd_containss_0E0Cs9OdPc0izwZ0_23pulldown_cmark_to_cmark.exit.backedge.us.i.i.i.i: ; preds = %.split.us.i.i.i.i
  %i.cp = add i64 %i.cm, -1                       ; 2 uses
  %.not27.i.i.i.i = icmp ugt i64 %.sroa.0.0.i6772.i, %i.cp
  br i1 %.not27.i.i.i.i, label %_RNvXst_NtNtCshzWfHUSfYae_4core3str7patternReNtB5_7Pattern15is_contained_in.exit.i.thread70, label %.split.us.i.i.i.i

.thread92.i.i.i:                                  ; preds = %bb.k, %.thread.i
  %.sink96.sink = phi i8 [ %i.bo, %.thread.i ], [ %.sink96, %bb.k ]
  %i.cq = phi i64 [ 1, %.thread.i ], [ %i.bv, %bb.k ] ; 2 uses
  %.sroa.0.0.i6770.i = phi i64 [ 2, %.thread.i ], [ %.sroa.0.0.i.i, %bb.k ] ; 2 uses
  %i.cr = phi i8 [ %i.br, %.thread.i ], [ %.lcssa197, %bb.k ]
  %storemerge9194.i.i.i = phi i64 [ 1, %.thread.i ], [ %.lcssa199, %bb.k ] ; 6 uses
  %i.cs = insertelement <16 x i8> poison, i8 %.sink96.sink, i64 0
  %i.ct = shufflevector <16 x i8> %i.cs, <16 x i8> poison, <16 x i32> zeroinitializer ; 6 uses
  %i.cu = insertelement <16 x i8> poison, i8 %i.cr, i64 0
  %i.cv = shufflevector <16 x i8> %i.cu, <16 x i8> poison, <16 x i32> zeroinitializer ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !148
  store ptr %i.as, ptr %i.a, align 8, !noalias !148
  %i.cw = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 %i.au, ptr %i.cw, align 8, !noalias !148
  %i.cx = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr %.sink4.i.sroa.gep.i, ptr %i.cx, align 8, !noalias !148
  %i.cy = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store i64 %i.cq, ptr %i.cy, align 8, !noalias !148
  %i.cz = add nuw nsw i64 %.sroa.0.0.i6770.i, 63  ; 2 uses
  %.not.i.i.i = icmp ult i64 %i.cz, %i.au
  br i1 %.not.i.i.i, label %.lr.ph.i.i.i, label %.preheader.i.i.i

.preheader.i.i.i:                                 ; preds = %bb.o, %.thread92.i.i.i
  %.sroa.014.0.lcssa.i.i.i = phi i8 [ 0, %.thread92.i.i.i ], [ %.sroa.014.2.3.i.i.i, %bb.o ] ; 2 uses
  %.sroa.06.0.lcssa.i.i.i = phi i64 [ 0, %.thread92.i.i.i ], [ %i.ev, %bb.o ] ; 2 uses
  %i.da = add nuw nsw i64 %.sroa.0.0.i6770.i, 15  ; 2 uses
  %i.db = add i64 %.sroa.06.0.lcssa.i.i.i, %i.da
  %i.dc = icmp uge i64 %i.db, %i.au
  %i.dd = trunc nuw i8 %.sroa.014.0.lcssa.i.i.i to i1 ; 2 uses
  %or.cond3104.i.i.i = select i1 %i.dc, i1 true, i1 %i.dd
  br i1 %or.cond3104.i.i.i, label %._crit_edge.i.i.i, label %.lr.ph106.i.i.i

.lr.ph.i.i.i:                                     ; preds = %.thread92.i.i.i, %bb.o
  %.sroa.06.0102.i.i.i = phi i64 [ %i.ev, %bb.o ], [ 0, %.thread92.i.i.i ] ; 6 uses
  %i.de = getelementptr inbounds nuw i8, ptr %i.as, i64 %.sroa.06.0102.i.i.i ; 5 uses
  %.sroa.0.0.copyload.i.i.i.i = load <16 x i8>, ptr %i.de, align 1, !alias.scope !149, !noalias !150
  %i.df = getelementptr inbounds nuw i8, ptr %i.de, i64 %storemerge9194.i.i.i
  %.sroa.01.0.copyload.i.i.i.i = load <16 x i8>, ptr %i.df, align 1, !alias.scope !149, !noalias !150
  %i.dg = icmp eq <16 x i8> %.sroa.0.0.copyload.i.i.i.i, %i.ct
  %i.dh = icmp eq <16 x i8> %.sroa.01.0.copyload.i.i.i.i, %i.cv
  %i.di = and <16 x i1> %i.dg, %i.dh
  %i.dj = bitcast <16 x i1> %i.di to i16          ; 2 uses
  %i.dk = getelementptr inbounds nuw i8, ptr %i.de, i64 16 ; 2 uses
  %.sroa.0.0.copyload.i.1.i.i.i = load <16 x i8>, ptr %i.dk, align 1, !alias.scope !149, !noalias !150
  %i.dl = getelementptr inbounds nuw i8, ptr %i.dk, i64 %storemerge9194.i.i.i
  %.sroa.01.0.copyload.i.1.i.i.i = load <16 x i8>, ptr %i.dl, align 1, !alias.scope !149, !noalias !150
  %i.dm = icmp eq <16 x i8> %.sroa.0.0.copyload.i.1.i.i.i, %i.ct
  %i.dn = icmp eq <16 x i8> %.sroa.01.0.copyload.i.1.i.i.i, %i.cv
  %i.do = and <16 x i1> %i.dm, %i.dn
  %i.dp = bitcast <16 x i1> %i.do to i16          ; 2 uses
  %i.dq = getelementptr inbounds nuw i8, ptr %i.de, i64 32 ; 2 uses
  %.sroa.0.0.copyload.i.2.i.i.i = load <16 x i8>, ptr %i.dq, align 1, !alias.scope !149, !noalias !150
  %i.dr = getelementptr inbounds nuw i8, ptr %i.dq, i64 %storemerge9194.i.i.i
  %.sroa.01.0.copyload.i.2.i.i.i = load <16 x i8>, ptr %i.dr, align 1, !alias.scope !149, !noalias !150
  %i.ds = icmp eq <16 x i8> %.sroa.0.0.copyload.i.2.i.i.i, %i.ct
  %i.dt = icmp eq <16 x i8> %.sroa.01.0.copyload.i.2.i.i.i, %i.cv
  %i.du = and <16 x i1> %i.ds, %i.dt
  %i.dv = bitcast <16 x i1> %i.du to i16          ; 2 uses
  %i.dw = getelementptr inbounds nuw i8, ptr %i.de, i64 48 ; 2 uses
  %.sroa.0.0.copyload.i.3.i.i.i = load <16 x i8>, ptr %i.dw, align 1, !alias.scope !149, !noalias !150
  %i.dx = getelementptr inbounds nuw i8, ptr %i.dw, i64 %storemerge9194.i.i.i
  %.sroa.01.0.copyload.i.3.i.i.i = load <16 x i8>, ptr %i.dx, align 1, !alias.scope !149, !noalias !150
  %i.dy = icmp eq <16 x i8> %.sroa.0.0.copyload.i.3.i.i.i, %i.ct
  %i.dz = icmp eq <16 x i8> %.sroa.01.0.copyload.i.3.i.i.i, %i.cv
  %i.ea = and <16 x i1> %i.dy, %i.dz
  %i.eb = bitcast <16 x i1> %i.ea to i16          ; 2 uses
  %i.ec = icmp eq i16 %i.dj, 0
  br i1 %i.ec, label %.preheader95.1.i.i.i, label %bb.p

.preheader95.1.i.i.i:                             ; preds = %bb.p, %.lr.ph.i.i.i
  %.sroa.014.2.i.i.i = phi i8 [ 0, %.lr.ph.i.i.i ], [ %i.fa, %bb.p ] ; 3 uses
  %i.ed = icmp eq i16 %i.dp, 0
  br i1 %i.ed, label %.preheader95.2.i.i.i, label %bb.l

bb.l:                                             ; preds = %.preheader95.1.i.i.i
  %i.ee = or disjoint i64 %.sroa.06.0102.i.i.i, 16
  %i.ef = trunc nuw i8 %.sroa.014.2.i.i.i to i1
  %i.eg = call fastcc noundef zeroext i1 @_RNCNvNtNtCshzWfHUSfYae_4core3str7pattern13simd_containss0_0Cs9OdPc0izwZ0_23pulldown_cmark_to_cmark(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.a, i64 noundef %i.ee, i16 noundef %i.dp, i1 noundef zeroext %i.ef) #19
  %i.eh = zext i1 %i.eg to i8
  %i.ei = or i8 %.sroa.014.2.i.i.i, %i.eh
  br label %.preheader95.2.i.i.i

.preheader95.2.i.i.i:                             ; preds = %bb.l, %.preheader95.1.i.i.i
  %.sroa.014.2.1.i.i.i = phi i8 [ %.sroa.014.2.i.i.i, %.preheader95.1.i.i.i ], [ %i.ei, %bb.l ] ; 3 uses
  %i.ej = icmp eq i16 %i.dv, 0
  br i1 %i.ej, label %.preheader95.3.i.i.i, label %bb.m

bb.m:                                             ; preds = %.preheader95.2.i.i.i
  %i.ek = or disjoint i64 %.sroa.06.0102.i.i.i, 32
  %i.el = trunc nuw i8 %.sroa.014.2.1.i.i.i to i1
  %i.em = call fastcc noundef zeroext i1 @_RNCNvNtNtCshzWfHUSfYae_4core3str7pattern13simd_containss0_0Cs9OdPc0izwZ0_23pulldown_cmark_to_cmark(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.a, i64 noundef %i.ek, i16 noundef %i.dv, i1 noundef zeroext %i.el) #19
  %i.en = zext i1 %i.em to i8
  %i.eo = or i8 %.sroa.014.2.1.i.i.i, %i.en
  br label %.preheader95.3.i.i.i

.preheader95.3.i.i.i:                             ; preds = %bb.m, %.preheader95.2.i.i.i
  %.sroa.014.2.2.i.i.i = phi i8 [ %.sroa.014.2.1.i.i.i, %.preheader95.2.i.i.i ], [ %i.eo, %bb.m ] ; 3 uses
  %i.ep = icmp eq i16 %i.eb, 0
  br i1 %i.ep, label %bb.o, label %bb.n

bb.n:                                             ; preds = %.preheader95.3.i.i.i
  %i.eq = or disjoint i64 %.sroa.06.0102.i.i.i, 48
  %i.er = trunc nuw i8 %.sroa.014.2.2.i.i.i to i1
  %i.es = call fastcc noundef zeroext i1 @_RNCNvNtNtCshzWfHUSfYae_4core3str7pattern13simd_containss0_0Cs9OdPc0izwZ0_23pulldown_cmark_to_cmark(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.a, i64 noundef %i.eq, i16 noundef %i.eb, i1 noundef zeroext %i.er) #19
  %i.et = zext i1 %i.es to i8
  %i.eu = or i8 %.sroa.014.2.2.i.i.i, %i.et
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %.preheader95.3.i.i.i
  %.sroa.014.2.3.i.i.i = phi i8 [ %.sroa.014.2.2.i.i.i, %.preheader95.3.i.i.i ], [ %i.eu, %bb.n ] ; 2 uses
  %i.ev = add i64 %.sroa.06.0102.i.i.i, 64        ; 3 uses
  %i.ew = add i64 %i.ev, %i.cz
  %i.ex = icmp uge i64 %i.ew, %i.au
  %i.ey = trunc nuw i8 %.sroa.014.2.3.i.i.i to i1
  %or.cond.i.i.i = select i1 %i.ex, i1 true, i1 %i.ey
  br i1 %or.cond.i.i.i, label %.preheader.i.i.i, label %.lr.ph.i.i.i

bb.p:                                             ; preds = %.lr.ph.i.i.i
  %i.ez = call fastcc noundef zeroext i1 @_RNCNvNtNtCshzWfHUSfYae_4core3str7pattern13simd_containss0_0Cs9OdPc0izwZ0_23pulldown_cmark_to_cmark(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.a, i64 noundef %.sroa.06.0102.i.i.i, i16 noundef %i.dj, i1 noundef zeroext false) #19
  %i.fa = zext i1 %i.ez to i8
  br label %.preheader95.1.i.i.i

._crit_edge.i.i.i:                                ; preds = %bb.q, %.preheader.i.i.i
  %.sroa.014.3.lcssa.i.i.i = phi i8 [ %.sroa.014.0.lcssa.i.i.i, %.preheader.i.i.i ], [ %.sroa.014.4.i.i.i, %bb.q ] ; 2 uses
  %.lcssa.i.i.i = phi i1 [ %i.dd, %.preheader.i.i.i ], [ %i.fu, %bb.q ]
  %i.fb = sub nuw i64 %i.au, %i.cq
  %i.fc = add i64 %i.fb, -16                      ; 2 uses
  %i.fd = getelementptr inbounds nuw i8, ptr %i.as, i64 %i.fc ; 2 uses
  %.sroa.0.0.copyload.i57.i.i.i = load <16 x i8>, ptr %i.fd, align 1, !alias.scope !149, !noalias !151
  %i.fe = getelementptr inbounds nuw i8, ptr %i.fd, i64 %storemerge9194.i.i.i
  %.sroa.01.0.copyload.i58.i.i.i = load <16 x i8>, ptr %i.fe, align 1, !alias.scope !149, !noalias !151
  %i.ff = icmp eq <16 x i8> %.sroa.0.0.copyload.i57.i.i.i, %i.ct
  %i.fg = icmp eq <16 x i8> %.sroa.01.0.copyload.i58.i.i.i, %i.cv
  %i.fh = and <16 x i1> %i.ff, %i.fg
  %i.fi = bitcast <16 x i1> %i.fh to i16          ; 2 uses
  %i.fj = icmp eq i16 %i.fi, 0
  br i1 %i.fj, label %bb.s, label %bb.t

.lr.ph106.i.i.i:                                  ; preds = %.preheader.i.i.i, %bb.q
  %.sroa.06.1105.i.i.i = phi i64 [ %i.fr, %bb.q ], [ %.sroa.06.0.lcssa.i.i.i, %.preheader.i.i.i ] ; 3 uses
  %i.fk = getelementptr inbounds nuw i8, ptr %i.as, i64 %.sroa.06.1105.i.i.i ; 2 uses
  %.sroa.0.0.copyload.i59.i.i.i = load <16 x i8>, ptr %i.fk, align 1, !alias.scope !149, !noalias !152
  %i.fl = getelementptr inbounds nuw i8, ptr %i.fk, i64 %storemerge9194.i.i.i
  %.sroa.01.0.copyload.i60.i.i.i = load <16 x i8>, ptr %i.fl, align 1, !alias.scope !149, !noalias !152
  %i.fm = icmp eq <16 x i8> %.sroa.0.0.copyload.i59.i.i.i, %i.ct
  %i.fn = icmp eq <16 x i8> %.sroa.01.0.copyload.i60.i.i.i, %i.cv
  %i.fo = and <16 x i1> %i.fm, %i.fn
  %i.fp = bitcast <16 x i1> %i.fo to i16          ; 2 uses
  %i.fq = icmp eq i16 %i.fp, 0
  br i1 %i.fq, label %bb.q, label %bb.r

bb.q:                                             ; preds = %bb.r, %.lr.ph106.i.i.i
  %.sroa.014.4.i.i.i = phi i8 [ 0, %.lr.ph106.i.i.i ], [ %i.fw, %bb.r ] ; 2 uses
  %i.fr = add i64 %.sroa.06.1105.i.i.i, 16        ; 2 uses
  %i.fs = add i64 %i.fr, %i.da
  %i.ft = icmp uge i64 %i.fs, %i.au
  %i.fu = trunc nuw i8 %.sroa.014.4.i.i.i to i1   ; 2 uses
  %or.cond3.i.i.i = or i1 %i.ft, %i.fu
  br i1 %or.cond3.i.i.i, label %._crit_edge.i.i.i, label %.lr.ph106.i.i.i

bb.r:                                             ; preds = %.lr.ph106.i.i.i
  %i.fv = call fastcc noundef zeroext i1 @_RNCNvNtNtCshzWfHUSfYae_4core3str7pattern13simd_containss0_0Cs9OdPc0izwZ0_23pulldown_cmark_to_cmark(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.a, i64 noundef %.sroa.06.1105.i.i.i, i16 noundef %i.fp, i1 noundef zeroext false) #19
  %i.fw = zext i1 %i.fv to i8
  br label %bb.q

bb.s:                                             ; preds = %bb.t, %._crit_edge.i.i.i
  %.sroa.014.5.i.i.i = phi i8 [ %.sroa.014.3.lcssa.i.i.i, %._crit_edge.i.i.i ], [ %i.fz, %bb.t ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !148
  br label %_RNvXst_NtNtCshzWfHUSfYae_4core3str7patternReNtB5_7Pattern15is_contained_in.exit.i

bb.t:                                             ; preds = %._crit_edge.i.i.i
  %i.fx = call fastcc noundef zeroext i1 @_RNCNvNtNtCshzWfHUSfYae_4core3str7pattern13simd_containss0_0Cs9OdPc0izwZ0_23pulldown_cmark_to_cmark(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.a, i64 noundef %i.fc, i16 noundef %i.fi, i1 noundef zeroext %.lcssa.i.i.i) #19
  %i.fy = zext i1 %i.fx to i8
  %i.fz = or i8 %.sroa.014.3.lcssa.i.i.i, %i.fy
  br label %bb.s

_RNvNtNtCshzWfHUSfYae_4core3str7pattern13simd_contains.exit.i.i: ; preds = %_RNCINvNvNtNtNtNtCshzWfHUSfYae_4core4iter6traits12double_ended19DoubleEndedIterator5rfind5checkjNCNvNtNtBe_3str7pattern13simd_contains0E0Cs9OdPc0izwZ0_23pulldown_cmark_to_cmark.exit.i.i.i.i.3, %.preheader.i.2, %.preheader.i.1, %.preheader.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !153
  invoke void @_RNvMsu_NtNtCshzWfHUSfYae_4core3str7patternNtB5_11StrSearcher3new(ptr noalias nofree noundef nonnull sret([104 x i8]) align 8 captures(none) dereferenceable(104) %i.b, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.as, i64 noundef %i.au, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.c, i64 noundef range(i64 2, 5) %.sroa.0.0.i.i)
          to label %.noexc unwind label %bb.bc

.noexc:                                           ; preds = %_RNvNtNtCshzWfHUSfYae_4core3str7pattern13simd_contains.exit.i.i
  call void @llvm.experimental.noalias.scope.decl(metadata !154)
  %i.ga = load i64, ptr %i.b, align 8, !range !6, !alias.scope !154, !noalias !155, !noundef !5
  %i.gb = trunc nuw i64 %i.ga to i1
  %i.gc = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 3 uses
  br i1 %i.gb, label %bb.ad, label %.preheader.i3.i.i

.preheader.i3.i.i:                                ; preds = %.noexc
  %i.gd = getelementptr inbounds nuw i8, ptr %i.b, i64 26
  %i.ge = load i8, ptr %i.gd, align 2, !range !156, !alias.scope !157, !noalias !158, !noundef !5
  %i.gf = trunc nuw i8 %i.ge to i1
  br i1 %i.gf, label %_RNvXsv_NtNtCshzWfHUSfYae_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher10next_match.exit.i.i, label %.lr.ph.i4.i.i

.lr.ph.i4.i.i:                                    ; preds = %.preheader.i3.i.i
  %.promoted.i.i.i = load i64, ptr %i.gc, align 8, !alias.scope !154, !noalias !155 ; 12 uses
  %i.gg = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %i.gh = getelementptr inbounds nuw i8, ptr %i.b, i64 72
  %i.gi = load ptr, ptr %i.gh, align 8, !alias.scope !157, !noalias !158, !nonnull !5, !noundef !5 ; 5 uses
  %i.gj = getelementptr inbounds nuw i8, ptr %i.b, i64 80
  %i.gk = load i64, ptr %i.gj, align 8, !alias.scope !157, !noalias !158, !noundef !5 ; 14 uses
  %.promoted52.i.i.i = load i8, ptr %i.gg, align 8, !alias.scope !157, !noalias !158 ; 2 uses
  %i.gl = trunc nuw i8 %.promoted52.i.i.i to i1
  %i.gm = icmp eq i64 %.promoted.i.i.i, 0
  br i1 %i.gm, label %bb.w, label %bb.u

bb.u:                                             ; preds = %.lr.ph.i4.i.i
  %.not.i.i.i.peel.i.i = icmp ult i64 %.promoted.i.i.i, %i.gk
  br i1 %.not.i.i.i.peel.i.i, label %bb.v, label %.split.i.i.i.peel.i.i

.split.i.i.i.peel.i.i:                            ; preds = %bb.u
  %i.gn = icmp eq i64 %.promoted.i.i.i, %i.gk
  br i1 %i.gn, label %bb.w, label %.loopexit.i.i

bb.v:                                             ; preds = %bb.u
  %i.go = getelementptr inbounds nuw i8, ptr %i.gi, i64 %.promoted.i.i.i
  %i.gp = load i8, ptr %i.go, align 1, !alias.scope !159, !noalias !160, !noundef !5
  %i.gq = icmp sgt i8 %i.gp, -65
  br i1 %i.gq, label %bb.w, label %.loopexit.i.i

bb.w:                                             ; preds = %bb.v, %.split.i.i.i.peel.i.i, %.lr.ph.i4.i.i
  %i.gr = getelementptr inbounds nuw i8, ptr %i.gi, i64 %.promoted.i.i.i ; 4 uses
  %i.gs = icmp samesign eq i64 %.promoted.i.i.i, %i.gk
  br i1 %i.gs, label %_RNvXsv_NtNtCshzWfHUSfYae_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher10next_match.exit.i.i, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.gt = load i8, ptr %i.gr, align 1, !noalias !161, !noundef !5 ; 5 uses
  %i.gu = icmp sgt i8 %i.gt, -1
  br i1 %i.gu, label %bb.y, label %_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs9OdPc0izwZ0_23pulldown_cmark_to_cmark.exit12.i.i.i.peel.i.i

_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs9OdPc0izwZ0_23pulldown_cmark_to_cmark.exit12.i.i.i.peel.i.i: ; preds = %bb.x
  %i.gv = getelementptr inbounds nuw i8, ptr %i.gr, i64 1
  %i.gw = and i8 %i.gt, 31
  %i.gx = zext nneg i8 %i.gw to i32               ; 3 uses
  %i.gy = add nuw nsw i64 %.promoted.i.i.i, 1
  %i.gz = icmp samesign ne i64 %i.gy, %i.gk
  call void @llvm.assume(i1 %i.gz)
  %i.ha = load i8, ptr %i.gv, align 1, !noalias !161, !noundef !5
  %i.hb = shl nuw nsw i32 %i.gx, 6
  %i.hc = and i8 %i.ha, 63
  %i.hd = zext nneg i8 %i.hc to i32               ; 2 uses
  %i.he = or disjoint i32 %i.hb, %i.hd
  %i.hf = icmp samesign ugt i8 %i.gt, -33
  br i1 %i.hf, label %_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs9OdPc0izwZ0_23pulldown_cmark_to_cmark.exit14.i.i.i.peel.i.i, label %bb.z

_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs9OdPc0izwZ0_23pulldown_cmark_to_cmark.exit14.i.i.i.peel.i.i: ; preds = %_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs9OdPc0izwZ0_23pulldown_cmark_to_cmark.exit12.i.i.i.peel.i.i
  %i.hg = getelementptr inbounds nuw i8, ptr %i.gr, i64 2
  %i.hh = add nuw nsw i64 %.promoted.i.i.i, 2
  %i.hi = icmp samesign ne i64 %i.hh, %i.gk
  call void @llvm.assume(i1 %i.hi)
  %i.hj = load i8, ptr %i.hg, align 1, !noalias !161, !noundef !5
  %i.hk = shl nuw nsw i32 %i.hd, 6
  %i.hl = and i8 %i.hj, 63
  %i.hm = zext nneg i8 %i.hl to i32
  %i.hn = or disjoint i32 %i.hk, %i.hm            ; 2 uses
  %i.ho = shl nuw nsw i32 %i.gx, 12
  %i.hp = or disjoint i32 %i.hn, %i.ho
  %i.hq = icmp samesign ugt i8 %i.gt, -17
  br i1 %i.hq, label %_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs9OdPc0izwZ0_23pulldown_cmark_to_cmark.exit16.i.i.i.peel.i.i, label %bb.z

_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs9OdPc0izwZ0_23pulldown_cmark_to_cmark.exit16.i.i.i.peel.i.i: ; preds = %_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs9OdPc0izwZ0_23pulldown_cmark_to_cmark.exit14.i.i.i.peel.i.i
  %i.hr = getelementptr inbounds nuw i8, ptr %i.gr, i64 3
  %i.hs = add nuw nsw i64 %.promoted.i.i.i, 3
  %i.ht = icmp samesign ne i64 %i.hs, %i.gk
  call void @llvm.assume(i1 %i.ht)
  %i.hu = load i8, ptr %i.hr, align 1, !noalias !161, !noundef !5
  %i.hv = shl nuw nsw i32 %i.gx, 18
  %i.hw = and i32 %i.hv, 1835008
  %i.hx = shl nuw nsw i32 %i.hn, 6
  %i.hy = and i8 %i.hu, 63
  %i.hz = zext nneg i8 %i.hy to i32
  %i.ia = or disjoint i32 %i.hx, %i.hz
  %i.ib = or disjoint i32 %i.ia, %i.hw
  br label %bb.z

bb.y:                                             ; preds = %bb.x
  %i.ic = zext nneg i8 %i.gt to i32
  br label %bb.z

bb.z:                                             ; preds = %bb.y, %_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs9OdPc0izwZ0_23pulldown_cmark_to_cmark.exit16.i.i.i.peel.i.i, %_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs9OdPc0izwZ0_23pulldown_cmark_to_cmark.exit14.i.i.i.peel.i.i, %_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs9OdPc0izwZ0_23pulldown_cmark_to_cmark.exit12.i.i.i.peel.i.i
  %.sroa.4.0.i.ph.i.i.peel.i.i = phi i32 [ %i.hp, %_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs9OdPc0izwZ0_23pulldown_cmark_to_cmark.exit14.i.i.i.peel.i.i ], [ %i.ib, %_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs9OdPc0izwZ0_23pulldown_cmark_to_cmark.exit16.i.i.i.peel.i.i ], [ %i.he, %_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs9OdPc0izwZ0_23pulldown_cmark_to_cmark.exit12.i.i.i.peel.i.i ], [ %i.ic, %bb.y ] ; 4 uses
  %i.id = icmp samesign ult i32 %.sroa.4.0.i.ph.i.i.peel.i.i, 1114112
  call void @llvm.assume(i1 %i.id)
  br i1 %i.gl, label %_RNvXsv_NtNtCshzWfHUSfYae_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher10next_match.exit.i.i, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.ie = icmp samesign ult i32 %.sroa.4.0.i.ph.i.i.peel.i.i, 128
  br i1 %i.ie, label %bb.ae, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.if = icmp samesign ult i32 %.sroa.4.0.i.ph.i.i.peel.i.i, 2048
  br i1 %i.if, label %bb.ae, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.ig = icmp samesign ult i32 %.sroa.4.0.i.ph.i.i.peel.i.i, 65536
  %..i.i.peel.i.i = select i1 %i.ig, i64 3, i64 4
  br label %bb.ae

bb.ad:                                            ; preds = %.noexc
  %i.ih = getelementptr inbounds nuw i8, ptr %i.b, i64 56
  %i.ii = load i64, ptr %i.ih, align 8, !alias.scope !154, !noalias !155, !noundef !5 ; 2 uses
  %i.ij = icmp eq i64 %i.ii, -1
  %i.ik = getelementptr inbounds nuw i8, ptr %i.b, i64 72
  %i.il = load ptr, ptr %i.ik, align 8, !alias.scope !154, !noalias !155, !nonnull !5, !noundef !5 ; 8 uses
  %i.im = getelementptr inbounds nuw i8, ptr %i.b, i64 80
  %i.in = load i64, ptr %i.im, align 8, !alias.scope !154, !noalias !155, !noundef !5 ; 10 uses
  %i.io = getelementptr inbounds nuw i8, ptr %i.b, i64 88
  %i.ip = load ptr, ptr %i.io, align 8, !alias.scope !154, !noalias !155, !nonnull !5, !noundef !5 ; 5 uses
  %i.iq = getelementptr inbounds nuw i8, ptr %i.b, i64 96
  %i.ir = load i64, ptr %i.iq, align 8, !alias.scope !154, !noalias !155, !noundef !5 ; 13 uses
  %i.is = getelementptr inbounds nuw i8, ptr %i.b, i64 40 ; 2 uses
  %i.it = add nsw i64 %i.ir, -1                   ; 5 uses
  br i1 %i.ij, label %bb.ar, label %bb.aj

bb.ae:                                            ; preds = %bb.ac, %bb.ab, %bb.aa
  %.sroa.01.0.i.i.peel.i.i = phi i64 [ 2, %bb.ab ], [ %..i.i.peel.i.i, %bb.ac ], [ 1, %bb.aa ]
  %i.iu = add i64 %.sroa.01.0.i.i.peel.i.i, %.promoted.i.i.i ; 11 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !162)
  %i.iv = icmp eq i64 %i.iu, 0
  br i1 %i.iv, label %bb.ah, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %.not.i.i.i.i.i = icmp ult i64 %i.iu, %i.gk
  br i1 %.not.i.i.i.i.i, label %bb.ag, label %.split.i.i.i.i.i

.split.i.i.i.i.i:                                 ; preds = %bb.af
  %i.iw = icmp eq i64 %i.iu, %i.gk
  br i1 %i.iw, label %bb.ah, label %.loopexit.i.i

bb.ag:                                            ; preds = %bb.af
  %i.ix = getelementptr inbounds nuw i8, ptr %i.gi, i64 %i.iu
  %i.iy = load i8, ptr %i.ix, align 1, !alias.scope !159, !noalias !163, !noundef !5
  %i.iz = icmp sgt i8 %i.iy, -65
  br i1 %i.iz, label %bb.ah, label %.loopexit.i.i

bb.ah:                                            ; preds = %bb.ag, %.split.i.i.i.i.i, %bb.ae
  %i.ja = icmp samesign eq i64 %i.iu, %i.gk
  br i1 %i.ja, label %_RNvXsv_NtNtCshzWfHUSfYae_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher10next_match.exit.i.i, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  %i.jb = getelementptr inbounds nuw i8, ptr %i.gi, i64 %i.iu
  %i.jc = load i8, ptr %i.jb, align 1, !noalias !164, !noundef !5 ; 3 uses
  %i.jd = icmp sgt i8 %i.jc, -1
  br i1 %i.jd, label %_RNvXsv_NtNtCshzWfHUSfYae_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher10next_match.exit.i.i, label %_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs9OdPc0izwZ0_23pulldown_cmark_to_cmark.exit12.i.i.i.i.i

_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs9OdPc0izwZ0_23pulldown_cmark_to_cmark.exit12.i.i.i.i.i: ; preds = %bb.ai
  %i.je = add nuw nsw i64 %i.iu, 1
  %i.jf = icmp samesign ne i64 %i.je, %i.gk
  call void @llvm.assume(i1 %i.jf)
  %i.jg = icmp samesign ugt i8 %i.jc, -33
  br i1 %i.jg, label %_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs9OdPc0izwZ0_23pulldown_cmark_to_cmark.exit14.i.i.i.i.i, label %_RNvXsv_NtNtCshzWfHUSfYae_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher10next_match.exit.i.i

_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs9OdPc0izwZ0_23pulldown_cmark_to_cmark.exit14.i.i.i.i.i: ; preds = %_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs9OdPc0izwZ0_23pulldown_cmark_to_cmark.exit12.i.i.i.i.i
  %i.jh = add nuw nsw i64 %i.iu, 2
  %i.ji = icmp samesign ne i64 %i.jh, %i.gk
  call void @llvm.assume(i1 %i.ji)
  %i.jj = icmp samesign ugt i8 %i.jc, -17
  br i1 %i.jj, label %_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs9OdPc0izwZ0_23pulldown_cmark_to_cmark.exit16.i.i.i.i.i, label %_RNvXsv_NtNtCshzWfHUSfYae_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher10next_match.exit.i.i

_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs9OdPc0izwZ0_23pulldown_cmark_to_cmark.exit16.i.i.i.i.i: ; preds = %_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs9OdPc0izwZ0_23pulldown_cmark_to_cmark.exit14.i.i.i.i.i
  %i.jk = add nuw nsw i64 %i.iu, 3
  %i.jl = icmp samesign ne i64 %i.jk, %i.gk
  call void @llvm.assume(i1 %i.jl)
  br label %_RNvXsv_NtNtCshzWfHUSfYae_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher10next_match.exit.i.i

.loopexit.i.i:                                    ; preds = %bb.ag, %.split.i.i.i.i.i, %bb.v, %.split.i.i.i.peel.i.i
  %.lcssa76.i.i = phi i64 [ %.promoted.i.i.i, %.split.i.i.i.peel.i.i ], [ %.promoted.i.i.i, %bb.v ], [ %i.iu, %.split.i.i.i.i.i ], [ %i.iu, %bb.ag ]
  invoke void @_RNvNtCshzWfHUSfYae_4core3str16slice_error_fail(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.gi, i64 noundef %i.gk, i64 noundef %.lcssa76.i.i, i64 noundef %i.gk, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @7) #20
          to label %.noexc20 unwind label %bb.bc

.noexc20:                                         ; preds = %.loopexit.i.i
  unreachable

bb.aj:                                            ; preds = %bb.ad
  call void @llvm.experimental.noalias.scope.decl(metadata !165)
  call void @llvm.experimental.noalias.scope.decl(metadata !166)
  call void @llvm.experimental.noalias.scope.decl(metadata !167)
end_hunk_0

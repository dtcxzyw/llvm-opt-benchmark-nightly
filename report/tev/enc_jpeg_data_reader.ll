Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/tev/original/enc_jpeg_data_reader?download=true
inline.NumInlined: 1890
inline.NumDeleted: 997
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumRuntimeUnrolled: 3
loop-unroll.NumUnrolled: 10
begin_hunk_0_@_ZNSt3__16vectorIN3jxl4jpeg13JPEGComponentENS_9allocatorIS3_EEE8__appendEm:bb.a
  %i.bf = ptrtoint ptr %i.au to i64
  %i.bg = ptrtoint ptr %i.at to i64
  %i.bh = sub i64 %i.bf, %i.bg
  tail call void @_ZdlPvm(ptr noundef nonnull %i.at, i64 noundef %i.bh) #17
  br label %_ZNSt3__114__split_bufferIN3jxl4jpeg13JPEGComponentERNS_9allocatorIS3_EEED2Ev.exit

_ZNSt3__114__split_bufferIN3jxl4jpeg13JPEGComponentERNS_9allocatorIS3_EEED2Ev.exit: ; preds = %bb.h, %_ZNSt3__114__split_bufferIN3jxl4jpeg13JPEGComponentERNS_9allocatorIS3_EEE5clearB8nn180100Ev.exit.i, %_ZNSt3__16vectorIN3jxl4jpeg13JPEGComponentENS_9allocatorIS3_EEE18__construct_at_endEm.exit
  ret void
}

; Function Attrs: mustprogress noreturn nounwind uwtable
define linkonce_odr hidden void @_ZNKSt3__16vectorIN3jxl4jpeg13JPEGComponentENS_9allocatorIS3_EEE20__throw_length_errorB8nn180100Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) local_unnamed_addr #5 comdat align 2 {
bb.a:
  tail call void @_ZNSt3__120__throw_length_errorB8nn180100EPKc(ptr noundef nonnull @.str.27) #16
  unreachable
}

; Function Attrs: inlinehint mustprogress noreturn nounwind uwtable
define linkonce_odr hidden void @_ZNSt3__120__throw_length_errorB8nn180100EPKc(ptr noundef %0) local_unnamed_addr #6 comdat {
bb.a:
  tail call void (ptr, ...) @_ZNSt3__122__libcpp_verbose_abortEPKcz(ptr noundef nonnull @.str.28, ptr noundef %0) #20
  unreachable
}

; Function Attrs: noreturn
declare void @_ZNSt3__122__libcpp_verbose_abortEPKcz(ptr noundef, ...) local_unnamed_addr #7

; Function Attrs: inlinehint mustprogress noreturn nounwind uwtable
define linkonce_odr hidden void @_ZSt28__throw_bad_array_new_lengthB8nn180100v() local_unnamed_addr #6 comdat {
bb.a:
  tail call void (ptr, ...) @_ZNSt3__122__libcpp_verbose_abortEPKcz(ptr noundef nonnull @.str.29) #20
  unreachable
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #8

; Function Attrs: nobuiltin allocsize(0)
declare noundef nonnull ptr @_Znwm(i64 noundef) local_unnamed_addr #9

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPvm(ptr noundef, i64 noundef) local_unnamed_addr #10

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZNSt3__16vectorIbNS_9allocatorIbEEE18__construct_at_endB8nn180100Emb(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %1, i1 noundef zeroext %2) local_unnamed_addr #3 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load i64, ptr %i.a, align 8, !tbaa !118  ; 7 uses
  %i.c = add i64 %i.b, %1                         ; 4 uses
  store i64 %i.c, ptr %i.a, align 8, !tbaa !118
  %i.d = icmp eq i64 %i.b, 0
  br i1 %i.d, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = add i64 %i.b, -1
  %i.f = add i64 %i.c, -1
  %.not.unshifted = xor i64 %i.f, %i.e
  %.not = icmp ult i64 %.not.unshifted, 64
  br i1 %.not, label %bb.f, label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.g = icmp ult i64 %i.c, 65
  %i.h = load ptr, ptr %0, align 8, !tbaa !74     ; 2 uses
  br i1 %i.g, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  store i64 0, ptr %i.h, align 8, !tbaa !13
  br label %bb.f

bb.e:                                             ; preds = %bb.c
  %i.i = add i64 %i.c, -1
  %i.j = lshr i64 %i.i, 6
  %i.k = getelementptr inbounds nuw [8 x i8], ptr %i.h, i64 %i.j
  store i64 0, ptr %i.k, align 8, !tbaa !13
  br label %bb.f

bb.f:                                             ; preds = %bb.d, %bb.e, %bb.b
  %i.l = load ptr, ptr %0, align 8, !tbaa !74, !noalias !256
  %i.m = lshr i64 %i.b, 6
  %i.n = getelementptr inbounds nuw [8 x i8], ptr %i.l, i64 %i.m ; 8 uses
  %i.o = trunc i64 %i.b to i32
  %i.p = and i32 %i.o, 63                         ; 3 uses
  %.not.i = icmp eq i64 %1, 0
  br i1 %.not.i, label %_ZNSt3__16fill_nB8nn180100INS_6vectorIbNS_9allocatorIbEEEEEEvNS_14__bit_iteratorIT_Lb0ELi0EEENS6_9size_typeEb.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  %.not.i.i = icmp eq i32 %i.p, 0                 ; 2 uses
  br i1 %2, label %bb.h, label %bb.l

bb.h:                                             ; preds = %bb.g
  br i1 %.not.i.i, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.q = sub nuw nsw i32 64, %i.p
  %i.r = zext nneg i32 %i.q to i64                ; 2 uses
  %.sroa.speculated.i.i = tail call i64 @llvm.umin.i64(i64 %1, i64 %i.r) ; 2 uses
  %i.s = and i64 %i.b, 63
  %i.t = shl nsw i64 -1, %i.s
  %i.u = sub nuw nsw i64 %i.r, %.sroa.speculated.i.i
  %i.v = lshr i64 -1, %i.u
  %i.w = and i64 %i.v, %i.t
  %i.x = load i64, ptr %i.n, align 8, !tbaa !13
  %i.y = or i64 %i.x, %i.w
  store i64 %i.y, ptr %i.n, align 8, !tbaa !13
  %i.z = sub nuw i64 %1, %.sroa.speculated.i.i
  %i.aa = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  %i.ab = phi ptr [ %i.n, %bb.h ], [ %i.aa, %bb.i ] ; 2 uses
  %.0.i.i = phi i64 [ %1, %bb.h ], [ %i.z, %bb.i ] ; 2 uses
  %i.ac = lshr i64 %.0.i.i, 6                     ; 3 uses
  %.not6.i.i.i.i = icmp eq i64 %i.ac, 0
  br i1 %.not6.i.i.i.i, label %_ZNSt3__16fill_nB8nn180100IPmmmEET_S2_T0_RKT1_.exit.i.i, label %.lr.ph.i.i.preheader.i.i

.lr.ph.i.i.preheader.i.i:                         ; preds = %bb.j
  %i.ad = shl nuw nsw i64 %i.ac, 3
  tail call void @llvm.memset.p0.i64(ptr align 8 %i.ab, i8 -1, i64 %i.ad, i1 false), !tbaa !13
  br label %_ZNSt3__16fill_nB8nn180100IPmmmEET_S2_T0_RKT1_.exit.i.i

_ZNSt3__16fill_nB8nn180100IPmmmEET_S2_T0_RKT1_.exit.i.i: ; preds = %.lr.ph.i.i.preheader.i.i, %bb.j
  %i.ae = and i64 %.0.i.i, 63                     ; 2 uses
  %.not7.i.i = icmp eq i64 %i.ae, 0
  br i1 %.not7.i.i, label %_ZNSt3__16fill_nB8nn180100INS_6vectorIbNS_9allocatorIbEEEEEEvNS_14__bit_iteratorIT_Lb0ELi0EEENS6_9size_typeEb.exit, label %bb.k

bb.k:                                             ; preds = %_ZNSt3__16fill_nB8nn180100IPmmmEET_S2_T0_RKT1_.exit.i.i
  %i.af = getelementptr inbounds nuw [8 x i8], ptr %i.ab, i64 %i.ac ; 2 uses
  %i.ag = sub nuw nsw i64 64, %i.ae
  %i.ah = lshr i64 -1, %i.ag
  %i.ai = load i64, ptr %i.af, align 8, !tbaa !13
  %i.aj = or i64 %i.ai, %i.ah
  store i64 %i.aj, ptr %i.af, align 8, !tbaa !13
  br label %_ZNSt3__16fill_nB8nn180100INS_6vectorIbNS_9allocatorIbEEEEEEvNS_14__bit_iteratorIT_Lb0ELi0EEENS6_9size_typeEb.exit

bb.l:                                             ; preds = %bb.g
  br i1 %.not.i.i, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.ak = sub nuw nsw i32 64, %i.p
  %i.al = zext nneg i32 %i.ak to i64              ; 2 uses
  %.sroa.speculated.i6.i = tail call i64 @llvm.umin.i64(i64 %1, i64 %i.al) ; 2 uses
  %i.am = and i64 %i.b, 63
  %i.an = shl nsw i64 -1, %i.am
  %i.ao = sub nuw nsw i64 %i.al, %.sroa.speculated.i6.i
  %i.ap = lshr i64 -1, %i.ao
  %i.aq = and i64 %i.ap, %i.an
  %i.ar = xor i64 %i.aq, -1
  %i.as = load i64, ptr %i.n, align 8, !tbaa !13
  %i.at = and i64 %i.as, %i.ar
  store i64 %i.at, ptr %i.n, align 8, !tbaa !13
  %i.au = sub nuw i64 %1, %.sroa.speculated.i6.i
  %i.av = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.l
  %i.aw = phi ptr [ %i.n, %bb.l ], [ %i.av, %bb.m ] ; 2 uses
  %.0.i7.i = phi i64 [ %1, %bb.l ], [ %i.au, %bb.m ] ; 2 uses
  %i.ax = lshr i64 %.0.i7.i, 6                    ; 3 uses
  %.not6.i.i.i8.i = icmp eq i64 %i.ax, 0
  br i1 %.not6.i.i.i8.i, label %_ZNSt3__16fill_nB8nn180100IPmmmEET_S2_T0_RKT1_.exit.i10.i, label %.lr.ph.i.i.preheader.i9.i

.lr.ph.i.i.preheader.i9.i:                        ; preds = %bb.n
  %i.ay = shl nuw nsw i64 %i.ax, 3
  tail call void @llvm.memset.p0.i64(ptr align 8 %i.aw, i8 0, i64 %i.ay, i1 false), !tbaa !13
  br label %_ZNSt3__16fill_nB8nn180100IPmmmEET_S2_T0_RKT1_.exit.i10.i

_ZNSt3__16fill_nB8nn180100IPmmmEET_S2_T0_RKT1_.exit.i10.i: ; preds = %.lr.ph.i.i.preheader.i9.i, %bb.n
  %i.az = and i64 %.0.i7.i, 63                    ; 2 uses
  %.not7.i11.i = icmp eq i64 %i.az, 0
  br i1 %.not7.i11.i, label %_ZNSt3__16fill_nB8nn180100INS_6vectorIbNS_9allocatorIbEEEEEEvNS_14__bit_iteratorIT_Lb0ELi0EEENS6_9size_typeEb.exit, label %bb.o

bb.o:                                             ; preds = %_ZNSt3__16fill_nB8nn180100IPmmmEET_S2_T0_RKT1_.exit.i10.i
  %i.ba = getelementptr inbounds nuw [8 x i8], ptr %i.aw, i64 %i.ax ; 2 uses
  %i.bb = sub nuw nsw i64 64, %i.az
  %i.bc = lshr i64 -1, %i.bb
  %i.bd = xor i64 %i.bc, -1
  %i.be = load i64, ptr %i.ba, align 8, !tbaa !13
  %i.bf = and i64 %i.be, %i.bd
  store i64 %i.bf, ptr %i.ba, align 8, !tbaa !13
  br label %_ZNSt3__16fill_nB8nn180100INS_6vectorIbNS_9allocatorIbEEEEEEvNS_14__bit_iteratorIT_Lb0ELi0EEENS6_9size_typeEb.exit

_ZNSt3__16fill_nB8nn180100INS_6vectorIbNS_9allocatorIbEEEEEEvNS_14__bit_iteratorIT_Lb0ELi0EEENS6_9size_typeEb.exit: ; preds = %bb.f, %_ZNSt3__16fill_nB8nn180100IPmmmEET_S2_T0_RKT1_.exit.i.i, %bb.k, %_ZNSt3__16fill_nB8nn180100IPmmmEET_S2_T0_RKT1_.exit.i10.i, %bb.o
  ret void
}

; Function Attrs: mustprogress noreturn nounwind uwtable
define linkonce_odr hidden void @_ZNKSt3__16vectorIbNS_9allocatorIbEEE20__throw_length_errorB8nn180100Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) local_unnamed_addr #5 comdat align 2 {
bb.a:
  tail call void @_ZNSt3__120__throw_length_errorB8nn180100EPKc(ptr noundef nonnull @.str.27) #16
  unreachable
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZNSt3__16vectorIsNS_9allocatorIsEEE8__appendEm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %1) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !117
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !85   ; 5 uses
  %i.e = ptrtoint ptr %i.b to i64                 ; 2 uses
  %i.f = ptrtoint ptr %i.d to i64                 ; 2 uses
  %i.g = sub i64 %i.e, %i.f
  %i.h = ashr exact i64 %i.g, 1
  %.not = icmp ult i64 %i.h, %1
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %.not6.i = icmp eq i64 %1, 0
  br i1 %.not6.i, label %_ZNSt3__16vectorIsNS_9allocatorIsEEE18__construct_at_endEm.exit, label %.lr.ph.preheader.i

.lr.ph.preheader.i:                               ; preds = %bb.b
  %.idx.i = shl i64 %1, 1                         ; 2 uses
  %i.i = getelementptr i8, ptr %i.d, i64 %.idx.i
  tail call void @llvm.memset.p0.i64(ptr align 2 %i.d, i8 0, i64 %.idx.i, i1 false), !tbaa !110
  br label %_ZNSt3__16vectorIsNS_9allocatorIsEEE18__construct_at_endEm.exit

_ZNSt3__16vectorIsNS_9allocatorIsEEE18__construct_at_endEm.exit: ; preds = %bb.b, %.lr.ph.preheader.i
  %.sroa.4.0.lcssa.i = phi ptr [ %i.d, %bb.b ], [ %i.i, %.lr.ph.preheader.i ]
  store ptr %.sroa.4.0.lcssa.i, ptr %i.c, align 8, !tbaa !85
  br label %_ZNSt3__114__split_bufferIsRNS_9allocatorIsEEED2Ev.exit

bb.c:                                             ; preds = %bb.a
  %i.j = load ptr, ptr %0, align 8, !tbaa !86     ; 2 uses
  %i.k = ptrtoint ptr %i.j to i64                 ; 2 uses
  %i.l = sub i64 %i.f, %i.k                       ; 2 uses
  %i.m = ashr exact i64 %i.l, 1
  %i.n = add i64 %i.m, %1                         ; 2 uses
  %i.o = icmp slt i64 %i.n, 0
  br i1 %i.o, label %bb.d, label %_ZNKSt3__16vectorIsNS_9allocatorIsEEE11__recommendB8nn180100Em.exit

bb.d:                                             ; preds = %bb.c
  tail call void @_ZNKSt3__16vectorIsNS_9allocatorIsEEE20__throw_length_errorB8nn180100Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) #16
  unreachable

_ZNKSt3__16vectorIsNS_9allocatorIsEEE11__recommendB8nn180100Em.exit: ; preds = %bb.c
  %i.p = sub i64 %i.e, %i.k                       ; 2 uses
  %.not.i = icmp ult i64 %i.p, 9223372036854775806
  %.sroa.speculated.i = tail call i64 @llvm.umax.i64(i64 %i.p, i64 %i.n)
  %.0.i = select i1 %.not.i, i64 %.sroa.speculated.i, i64 9223372036854775807 ; 4 uses
  %i.q = icmp eq i64 %.0.i, 0
  br i1 %i.q, label %_ZNSt3__114__split_bufferIsRNS_9allocatorIsEEE18__construct_at_endEm.exit, label %bb.e

bb.e:                                             ; preds = %_ZNKSt3__16vectorIsNS_9allocatorIsEEE11__recommendB8nn180100Em.exit
  %i.r = icmp slt i64 %.0.i, 0
  br i1 %i.r, label %bb.f, label %_ZNSt3__119__allocate_at_leastB8nn180100INS_9allocatorIsEEEENS_19__allocation_resultINS_16allocator_traitsIT_E7pointerEEERS5_m.exit.i

bb.f:                                             ; preds = %bb.e
  tail call void @_ZSt28__throw_bad_array_new_lengthB8nn180100v() #16
  unreachable

_ZNSt3__119__allocate_at_leastB8nn180100INS_9allocatorIsEEEENS_19__allocation_resultINS_16allocator_traitsIT_E7pointerEEERS5_m.exit.i: ; preds = %bb.e
  %i.s = shl nuw i64 %.0.i, 1
  %i.t = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.s) #15
  %.pre = load ptr, ptr %i.c, align 8, !tbaa !85
  %.pre14 = load ptr, ptr %0, align 8, !tbaa !86
  br label %_ZNSt3__114__split_bufferIsRNS_9allocatorIsEEE18__construct_at_endEm.exit

_ZNSt3__114__split_bufferIsRNS_9allocatorIsEEE18__construct_at_endEm.exit: ; preds = %_ZNKSt3__16vectorIsNS_9allocatorIsEEE11__recommendB8nn180100Em.exit, %_ZNSt3__119__allocate_at_leastB8nn180100INS_9allocatorIsEEEENS_19__allocation_resultINS_16allocator_traitsIT_E7pointerEEERS5_m.exit.i
  %i.u = phi ptr [ %.pre14, %_ZNSt3__119__allocate_at_leastB8nn180100INS_9allocatorIsEEEENS_19__allocation_resultINS_16allocator_traitsIT_E7pointerEEERS5_m.exit.i ], [ %i.j, %_ZNKSt3__16vectorIsNS_9allocatorIsEEE11__recommendB8nn180100Em.exit ] ; 6 uses
  %i.v = phi ptr [ %.pre, %_ZNSt3__119__allocate_at_leastB8nn180100INS_9allocatorIsEEEENS_19__allocation_resultINS_16allocator_traitsIT_E7pointerEEERS5_m.exit.i ], [ %i.d, %_ZNKSt3__16vectorIsNS_9allocatorIsEEE11__recommendB8nn180100Em.exit ] ; 7 uses
  %storemerge.i = phi ptr [ %i.t, %_ZNSt3__119__allocate_at_leastB8nn180100INS_9allocatorIsEEEENS_19__allocation_resultINS_16allocator_traitsIT_E7pointerEEERS5_m.exit.i ], [ null, %_ZNKSt3__16vectorIsNS_9allocatorIsEEE11__recommendB8nn180100Em.exit ] ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %storemerge.i, i64 %i.l ; 8 uses
  %i.x = getelementptr inbounds nuw [2 x i8], ptr %storemerge.i, i64 %.0.i
  %.idx.i6 = shl i64 %1, 1                        ; 2 uses
  %i.y = getelementptr i8, ptr %i.w, i64 %.idx.i6
  tail call void @llvm.memset.p0.i64(ptr align 2 %i.w, i8 0, i64 %.idx.i6, i1 false), !tbaa !110
  %.not4.i.i.i.i.i.i.i = icmp eq ptr %i.v, %i.u
  br i1 %.not4.i.i.i.i.i.i.i, label %_ZNSt3__114__split_bufferIsRNS_9allocatorIsEEE5clearB8nn180100Ev.exit.i, label %iter.check

iter.check:                                       ; preds = %_ZNSt3__114__split_bufferIsRNS_9allocatorIsEEE18__construct_at_endEm.exit
  %i.z = ptrtoaddr ptr %i.u to i64
  %2 = ptrtoaddr ptr %i.v to i64
  %i.aa = add i64 %2, -2
  %i.ab = sub i64 %i.aa, %i.z                     ; 3 uses
  %i.ac = lshr i64 %i.ab, 1
  %i.ad = add nuw i64 %i.ac, 1                    ; 5 uses
  %min.iters.check = icmp ult i64 %i.ab, 14
  br i1 %min.iters.check, label %.lr.ph.i.i.i.i.i.i.i.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check20 = icmp ult i64 %i.ab, 30
  br i1 %min.iters.check20, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.ae = and i64 %i.ad, 8
  %n.vec = and i64 %i.ad, -16                     ; 4 uses
  %i.af = mul i64 %n.vec, -2                      ; 2 uses
  %i.ag = getelementptr i8, ptr %i.w, i64 %i.af   ; 2 uses
  %i.ah = getelementptr i8, ptr %i.v, i64 %i.af
  br label %vector.body

vector.body:                                      ; preds = %vector.ph, %vector.body
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.ai = mul i64 %index, -2                      ; 2 uses
  %next.gep = getelementptr i8, ptr %i.w, i64 %i.ai ; 2 uses
  %next.gep21 = getelementptr i8, ptr %i.v, i64 %i.ai ; 2 uses
  %i.aj = getelementptr inbounds i8, ptr %next.gep21, i64 -16
  %i.ak = getelementptr inbounds i8, ptr %next.gep21, i64 -32
  %wide.load = load <8 x i16>, ptr %i.aj, align 2, !tbaa !110, !noalias !268
  %wide.load22 = load <8 x i16>, ptr %i.ak, align 2, !tbaa !110, !noalias !268
  %i.al = getelementptr inbounds i8, ptr %next.gep, i64 -16
  %i.am = getelementptr inbounds i8, ptr %next.gep, i64 -32
  store <8 x i16> %wide.load, ptr %i.al, align 2, !tbaa !110, !noalias !268
  store <8 x i16> %wide.load22, ptr %i.am, align 2, !tbaa !110, !noalias !268
  %index.next = add nuw i64 %index, 16            ; 2 uses
  %i.an = icmp eq i64 %index.next, %n.vec
  br i1 %i.an, label %middle.block, label %vector.body, !llvm.loop !265

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.ad, %n.vec
  br i1 %cmp.n, label %_ZNSt3__114__split_bufferIsRNS_9allocatorIsEEE5clearB8nn180100Ev.exit.i, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check.not.not = icmp eq i64 %i.ae, 0
  br i1 %min.epilog.iters.check.not.not, label %.lr.ph.i.i.i.i.i.i.i.preheader, label %vec.epilog.ph, !prof !269

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec24 = and i64 %i.ad, -8                    ; 3 uses
  %i.ao = mul i64 %n.vec24, -2                    ; 2 uses
  %i.ap = getelementptr i8, ptr %i.w, i64 %i.ao   ; 2 uses
  %i.aq = getelementptr i8, ptr %i.v, i64 %i.ao
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index25 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next29, %vec.epilog.vector.body ] ; 2 uses
  %i.ar = mul i64 %index25, -2                    ; 2 uses
  %next.gep26.a = getelementptr i8, ptr %i.w, i64 %i.ar
  %next.gep27 = getelementptr i8, ptr %i.v, i64 %i.ar
  %i.as = getelementptr inbounds i8, ptr %next.gep27, i64 -16
  %wide.load28 = load <8 x i16>, ptr %i.as, align 2, !tbaa !110, !noalias !268
  %i.at = getelementptr inbounds i8, ptr %next.gep26.a, i64 -16
  store <8 x i16> %wide.load28, ptr %i.at, align 2, !tbaa !110, !noalias !268
  %index.next29 = add nuw i64 %index25, 8         ; 2 uses
  %i.au = icmp eq i64 %index.next29, %n.vec24
  br i1 %i.au, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !266

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n30 = icmp eq i64 %i.ad, %n.vec24
  br i1 %cmp.n30, label %_ZNSt3__114__split_bufferIsRNS_9allocatorIsEEE5clearB8nn180100Ev.exit.i, label %.lr.ph.i.i.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.i.i.preheader:                   ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.ph = phi ptr [ %i.w, %iter.check ], [ %i.ag, %vec.epilog.iter.check ], [ %i.ap, %vec.epilog.middle.block ]
  %.sroa.2.05.i.i.i.i.i.i.i.ph = phi ptr [ %i.v, %iter.check ], [ %i.ah, %vec.epilog.iter.check ], [ %i.aq, %vec.epilog.middle.block ]
  br label %.lr.ph.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i:                             ; preds = %.lr.ph.i.i.i.i.i.i.i.preheader, %.lr.ph.i.i.i.i.i.i.i
  %i.av = phi ptr [ %i.ay, %.lr.ph.i.i.i.i.i.i.i ], [ %.ph, %.lr.ph.i.i.i.i.i.i.i.preheader ]
  %.sroa.2.05.i.i.i.i.i.i.i = phi ptr [ %i.aw, %.lr.ph.i.i.i.i.i.i.i ], [ %.sroa.2.05.i.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.i.preheader ]
  %i.aw = getelementptr inbounds i8, ptr %.sroa.2.05.i.i.i.i.i.i.i, i64 -2 ; 3 uses
  %i.ax = load i16, ptr %i.aw, align 2, !tbaa !110, !noalias !268
  %i.ay = getelementptr inbounds i8, ptr %i.av, i64 -2 ; 3 uses
  store i16 %i.ax, ptr %i.ay, align 2, !tbaa !110, !noalias !268
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.aw, %i.u
  br i1 %.not.i.i.i.i.i.i.i, label %_ZNSt3__114__split_bufferIsRNS_9allocatorIsEEE5clearB8nn180100Ev.exit.i, label %.lr.ph.i.i.i.i.i.i.i, !llvm.loop !267

_ZNSt3__114__split_bufferIsRNS_9allocatorIsEEE5clearB8nn180100Ev.exit.i: ; preds = %.lr.ph.i.i.i.i.i.i.i, %middle.block, %vec.epilog.middle.block, %_ZNSt3__114__split_bufferIsRNS_9allocatorIsEEE18__construct_at_endEm.exit
  %storemerge = phi ptr [ %i.w, %_ZNSt3__114__split_bufferIsRNS_9allocatorIsEEE18__construct_at_endEm.exit ], [ %i.ap, %vec.epilog.middle.block ], [ %i.ag, %middle.block ], [ %i.ay, %.lr.ph.i.i.i.i.i.i.i ]
  store ptr %storemerge, ptr %0, align 8, !tbaa !117
  store ptr %i.y, ptr %i.c, align 8, !tbaa !117
  %i.az = load ptr, ptr %i.a, align 8, !tbaa !117
  store ptr %i.x, ptr %i.a, align 8, !tbaa !117
  %.not.i7 = icmp eq ptr %i.u, null
  br i1 %.not.i7, label %_ZNSt3__114__split_bufferIsRNS_9allocatorIsEEED2Ev.exit, label %bb.g

bb.g:                                             ; preds = %_ZNSt3__114__split_bufferIsRNS_9allocatorIsEEE5clearB8nn180100Ev.exit.i
  %i.ba = ptrtoint ptr %i.az to i64
  %i.bb = ptrtoint ptr %i.u to i64
  %i.bc = sub i64 %i.ba, %i.bb
  tail call void @_ZdlPvm(ptr noundef nonnull %i.u, i64 noundef %i.bc) #17
  br label %_ZNSt3__114__split_bufferIsRNS_9allocatorIsEEED2Ev.exit

_ZNSt3__114__split_bufferIsRNS_9allocatorIsEEED2Ev.exit: ; preds = %bb.g, %_ZNSt3__114__split_bufferIsRNS_9allocatorIsEEE5clearB8nn180100Ev.exit.i, %_ZNSt3__16vectorIsNS_9allocatorIsEEE18__construct_at_endEm.exit
  ret void
}

; Function Attrs: mustprogress noreturn nounwind uwtable
define linkonce_odr hidden void @_ZNKSt3__16vectorIsNS_9allocatorIsEEE20__throw_length_errorB8nn180100Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) local_unnamed_addr #5 comdat align 2 {
bb.a:
  tail call void @_ZNSt3__120__throw_length_errorB8nn180100EPKc(ptr noundef nonnull @.str.27) #16
  unreachable
}

declare void @_ZN3jxl4jpeg21BuildJpegHuffmanTableEPKjS2_PNS0_17HuffmanTableEntryE(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #11

; Function Attrs: mustprogress noreturn nounwind uwtable
define linkonce_odr hidden void @_ZNKSt3__16vectorIN3jxl4jpeg15JPEGHuffmanCodeENS_9allocatorIS3_EEE20__throw_length_errorB8nn180100Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) local_unnamed_addr #5 comdat align 2 {
bb.a:
  tail call void @_ZNSt3__120__throw_length_errorB8nn180100EPKc(ptr noundef nonnull @.str.27) #16
  unreachable
}

; Function Attrs: mustprogress nounwind uwtable
define internal fastcc noundef zeroext i1 @_ZN3jxl4jpeg12_GLOBAL__N_114BitReaderState12FinishStreamEPNS0_8JPEGDataEPm(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(48) %0, ptr noundef %1, ptr nofree noundef nonnull writeonly captures(none) %2) unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.b = load i32, ptr %i.a, align 8, !tbaa !111  ; 4 uses
  %i.c = and i32 %i.b, 7                          ; 2 uses
  %.not = icmp eq i32 %i.c, 0
  br i1 %.not, label %.loopexit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = zext nneg i32 %i.c to i64
  %notmask = shl nsw i64 -1, %i.d
  %i.e = xor i64 %notmask, -1                     ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.g = load i64, ptr %i.f, align 8, !tbaa !119
  %i.h = and i32 %i.b, -8
  %i.i = zext nneg i32 %i.h to i64
  %i.j = lshr i64 %i.g, %i.i
  %i.k = and i64 %i.j, %i.e                       ; 2 uses
  %.not21 = icmp eq i64 %i.k, %i.e
  br i1 %.not21, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 264
  store i8 1, ptr %i.l, align 8, !tbaa !284
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 272 ; 4 uses
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 280 ; 4 uses
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 288 ; 3 uses
  %i.p = and i32 %i.b, 7
  %i.q = zext nneg i32 %i.p to i64
  %.pre = load ptr, ptr %i.n, align 8, !tbaa !29
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %_ZNSt3__16vectorIhNS_9allocatorIhEEE9push_backB8nn180100EOh.exit
  %i.r = phi ptr [ %.pre, %bb.d ], [ %.0.i, %_ZNSt3__16vectorIhNS_9allocatorIhEEE9push_backB8nn180100EOh.exit ] ; 5 uses
  %indvars.iv = phi i64 [ %i.q, %bb.d ], [ %indvars.iv.next, %_ZNSt3__16vectorIhNS_9allocatorIhEEE9push_backB8nn180100EOh.exit ] ; 2 uses
  %indvars.iv.next = add nsw i64 %indvars.iv, -1  ; 2 uses
  %i.s = lshr i64 %i.k, %indvars.iv.next
  %i.t = trunc nuw nsw i64 %i.s to i8
  %i.u = and i8 %i.t, 1                           ; 2 uses
  %i.v = load ptr, ptr %i.o, align 8, !tbaa !31   ; 2 uses
  %i.w = icmp ult ptr %i.r, %i.v
  br i1 %i.w, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  store i8 %i.u, ptr %i.r, align 1, !tbaa !11
  %i.x = getelementptr inbounds nuw i8, ptr %i.r, i64 1
  br label %_ZNSt3__16vectorIhNS_9allocatorIhEEE9push_backB8nn180100EOh.exit

bb.g:                                             ; preds = %bb.e
  %i.y = load ptr, ptr %i.m, align 8, !tbaa !30   ; 2 uses
  %i.z = ptrtoint ptr %i.r to i64                 ; 2 uses
  %i.aa = ptrtoint ptr %i.y to i64                ; 3 uses
  %i.ab = sub i64 %i.z, %i.aa                     ; 2 uses
  %i.ac = add i64 %i.ab, 1                        ; 2 uses
  %i.ad = icmp slt i64 %i.ac, 0
  br i1 %i.ad, label %bb.h, label %_ZNKSt3__16vectorIhNS_9allocatorIhEEE11__recommendB8nn180100Em.exit.i.i

bb.h:                                             ; preds = %bb.g
  tail call void @_ZNKSt3__16vectorIhNS_9allocatorIhEEE20__throw_length_errorB8nn180100Ev(ptr noundef nonnull align 8 dereferenceable(24) %i.m) #16
  unreachable

_ZNKSt3__16vectorIhNS_9allocatorIhEEE11__recommendB8nn180100Em.exit.i.i: ; preds = %bb.g
  %i.ae = ptrtoint ptr %i.v to i64
  %i.af = sub i64 %i.ae, %i.aa                    ; 2 uses
  %.not.i.i.i = icmp ult i64 %i.af, 4611686018427387903
  %i.ag = shl nuw nsw i64 %i.af, 1
  %.sroa.speculated.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.ag, i64 %i.ac)
  %.0.i.i.i = select i1 %.not.i.i.i, i64 %.sroa.speculated.i.i.i, i64 9223372036854775807 ; 3 uses
  %i.ah = icmp eq i64 %.0.i.i.i, 0
  br i1 %i.ah, label %_ZNSt3__114__split_bufferIhRNS_9allocatorIhEEEC2EmmS3_.exit.i.i, label %bb.i

bb.i:                                             ; preds = %_ZNKSt3__16vectorIhNS_9allocatorIhEEE11__recommendB8nn180100Em.exit.i.i
  %i.ai = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %.0.i.i.i) #15
  %.pre.i.i = load ptr, ptr %i.n, align 8, !tbaa !29
  %.pre12.i.i = load ptr, ptr %i.m, align 8, !tbaa !30
  br label %_ZNSt3__114__split_bufferIhRNS_9allocatorIhEEEC2EmmS3_.exit.i.i

_ZNSt3__114__split_bufferIhRNS_9allocatorIhEEEC2EmmS3_.exit.i.i: ; preds = %bb.i, %_ZNKSt3__16vectorIhNS_9allocatorIhEEE11__recommendB8nn180100Em.exit.i.i
  %i.aj = phi ptr [ %.pre12.i.i, %bb.i ], [ %i.y, %_ZNKSt3__16vectorIhNS_9allocatorIhEEE11__recommendB8nn180100Em.exit.i.i ] ; 6 uses
  %i.ak = phi ptr [ %.pre.i.i, %bb.i ], [ %i.r, %_ZNKSt3__16vectorIhNS_9allocatorIhEEE11__recommendB8nn180100Em.exit.i.i ] ; 8 uses
  %storemerge.i.i.i = phi ptr [ %i.ai, %bb.i ], [ null, %_ZNKSt3__16vectorIhNS_9allocatorIhEEE11__recommendB8nn180100Em.exit.i.i ] ; 3 uses
  %i.al = ptrtoaddr ptr %i.ak to i64              ; 2 uses
  %storemerge.i.i.i44 = ptrtoaddr ptr %storemerge.i.i.i to i64
  %i.am = getelementptr inbounds nuw i8, ptr %storemerge.i.i.i, i64 %i.ab ; 9 uses
  %i.an = getelementptr inbounds nuw i8, ptr %storemerge.i.i.i, i64 %.0.i.i.i
  store i8 %i.u, ptr %i.am, align 1, !tbaa !11
  %i.ao = getelementptr inbounds nuw i8, ptr %i.am, i64 1 ; 3 uses
  %.not4.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.ak, %i.aj
  br i1 %.not4.i.i.i.i.i.i.i.i.i, label %_ZNSt3__114__split_bufferIhRNS_9allocatorIhEEE5clearB8nn180100Ev.exit.i.i.i, label %iter.check

iter.check:                                       ; preds = %_ZNSt3__114__split_bufferIhRNS_9allocatorIhEEEC2EmmS3_.exit.i.i
  %i.ap = ptrtoaddr ptr %i.aj to i64              ; 3 uses
  %i.aq = sub i64 %i.al, %i.ap                    ; 7 uses
  %min.iters.check = icmp ult i64 %i.aq, 8
  br i1 %min.iters.check, label %.lr.ph.i.i.i.i.i.i.i.i.i.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %iter.check
  %i.ar = add i64 %i.al, %i.aa
  %i.as = add i64 %storemerge.i.i.i44, %i.z
  %i.at = sub i64 %i.as, %i.ar
  %diff.check = icmp ugt i64 %i.at, -32
  br i1 %diff.check, label %.lr.ph.i.i.i.i.i.i.i.i.i.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %vector.memcheck
  %min.iters.check45 = icmp ult i64 %i.aq, 32
  br i1 %min.iters.check45, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.au = and i64 %i.aq, 24
  %n.vec = and i64 %i.aq, -32                     ; 4 uses
  %i.av = sub i64 0, %n.vec                       ; 2 uses
  %i.aw = getelementptr i8, ptr %i.am, i64 %i.av  ; 2 uses
  %i.ax = getelementptr i8, ptr %i.ak, i64 %i.av
  br label %vector.body

vector.body:                                      ; preds = %vector.ph, %vector.body
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.ay = sub i64 0, %index                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.am, i64 %i.ay ; 2 uses
  %next.gep46 = getelementptr i8, ptr %i.ak, i64 %i.ay ; 2 uses
  %i.az = getelementptr inbounds i8, ptr %next.gep46, i64 -16
  %i.ba = getelementptr inbounds i8, ptr %next.gep46, i64 -32
  %wide.load = load <16 x i8>, ptr %i.az, align 1, !tbaa !11, !noalias !285
  %wide.load47 = load <16 x i8>, ptr %i.ba, align 1, !tbaa !11, !noalias !285
  %i.bb = getelementptr inbounds i8, ptr %next.gep, i64 -16
  %i.bc = getelementptr inbounds i8, ptr %next.gep, i64 -32
  store <16 x i8> %wide.load, ptr %i.bb, align 1, !tbaa !11, !noalias !285
  store <16 x i8> %wide.load47, ptr %i.bc, align 1, !tbaa !11, !noalias !285
  %index.next = add nuw i64 %index, 32            ; 2 uses
  %i.bd = icmp eq i64 %index.next, %n.vec
  br i1 %i.bd, label %middle.block, label %vector.body, !llvm.loop !278

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.aq, %n.vec
  br i1 %cmp.n, label %_ZNSt3__114__split_bufferIhRNS_9allocatorIhEEE5clearB8nn180100Ev.exit.i.i.i, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.au, 0
  br i1 %min.epilog.iters.check, label %.lr.ph.i.i.i.i.i.i.i.i.i.preheader, label %vec.epilog.ph, !prof !34

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec49 = and i64 %i.aq, -8                    ; 3 uses
  %i.be = sub i64 0, %n.vec49                     ; 2 uses
  %i.bf = getelementptr i8, ptr %i.am, i64 %i.be  ; 2 uses
  %i.bg = getelementptr i8, ptr %i.ak, i64 %i.be
  br label %vec.epilog.vector.body

end_hunk_0
begin_hunk_1_@llvm.smax.v2i32
!67 = !{!62, !62, i64 0}
!68 = !{!57, !54, i64 0}
!69 = !{!57, !54, i64 8}
!70 = !{!"p1 long", !14, i64 0}
!71 = !{!"_ZTSNSt3__122__compressed_pair_elemImLi0ELb0EEE", !12, i64 0}
!72 = !{!"_ZTSNSt3__117__compressed_pairImNS_9allocatorImEEEE", !71, i64 0}
!73 = !{!"_ZTSNSt3__16vectorIbNS_9allocatorIbEEEE", !70, i64 0, !12, i64 8, !72, i64 16}
!74 = !{!73, !70, i64 0}
!75 = !{!"p1 short", !14, i64 0}
!76 = !{!"_ZTSNSt3__122__compressed_pair_elemIPsLi0ELb0EEE", !75, i64 0}
!77 = !{!"_ZTSNSt3__117__compressed_pairIPsNS_9allocatorIsEEEE", !76, i64 0}
!78 = !{!"_ZTSNSt3__16vectorIsNS_9allocatorIsEEEE", !75, i64 0, !75, i64 8, !77, i64 16}
!79 = !{!"_ZTSN3jxl4jpeg13JPEGComponentE", !8, i64 0, !8, i64 4, !8, i64 8, !8, i64 12, !8, i64 16, !8, i64 20, !78, i64 24}
!80 = !{!79, !8, i64 0}
!81 = !{!79, !8, i64 4}
!82 = !{!79, !8, i64 8}
!83 = !{!79, !8, i64 12}
!84 = !{!79, !8, i64 16}
!85 = !{!78, !75, i64 8}
!86 = !{!78, !75, i64 0}
!87 = !{!8, !8, i64 0}
!88 = !{!"_ZTSNSt3__15arrayIjLm17EEE", !7, i64 0}
!89 = !{!"_ZTSNSt3__15arrayIjLm257EEE", !7, i64 0}
!90 = !{!"_ZTSN3jxl4jpeg15JPEGHuffmanCodeE", !88, i64 0, !89, i64 68, !8, i64 1096, !62, i64 1100}
!91 = !{!90, !8, i64 1096}
!92 = !{!"p1 int", !14, i64 0}
!93 = !{!"_ZTSNSt3__122__compressed_pair_elemIPjLi0ELb0EEE", !92, i64 0}
!94 = !{!"_ZTSNSt3__117__compressed_pairIPjNS_9allocatorIjEEEE", !93, i64 0}
!95 = !{!"_ZTSNSt3__16vectorIjNS_9allocatorIjEEEE", !92, i64 0, !92, i64 8, !94, i64 16}
!96 = !{!"p1 _ZTSN3jxl4jpeg12JPEGScanInfo16ExtraZeroRunInfoE", !14, i64 0}
!97 = !{!"_ZTSNSt3__122__compressed_pair_elemIPN3jxl4jpeg12JPEGScanInfo16ExtraZeroRunInfoELi0ELb0EEE", !96, i64 0}
!98 = !{!"_ZTSNSt3__117__compressed_pairIPN3jxl4jpeg12JPEGScanInfo16ExtraZeroRunInfoENS_9allocatorIS4_EEEE", !97, i64 0}
!99 = !{!"_ZTSNSt3__16vectorIN3jxl4jpeg12JPEGScanInfo16ExtraZeroRunInfoENS_9allocatorIS4_EEEE", !96, i64 0, !96, i64 8, !98, i64 16}
!100 = !{!99, !96, i64 0}
!101 = !{!99, !96, i64 8}
!102 = !{!96, !96, i64 0}
!103 = !{!95, !92, i64 0}
!104 = !{!95, !92, i64 8}
!105 = !{!92, !92, i64 0}
!106 = !{!61, !58, i64 8}
!107 = !{!"_ZTSN3jxl4jpeg12_GLOBAL__N_114BitReaderStateE", !25, i64 0, !12, i64 8, !12, i64 16, !12, i64 24, !8, i64 32, !12, i64 40}
!108 = !{!107, !25, i64 0}
!109 = !{!107, !12, i64 8}
!110 = !{!20, !20, i64 0}
!111 = !{!107, !8, i64 32}
!112 = !{!49, !46, i64 8}
!113 = !{!"_ZTSNSt3__15arrayIiLm64EEE", !7, i64 0}
!114 = !{!"_ZTSN3jxl4jpeg14JPEGQuantTableE", !113, i64 0, !8, i64 256, !8, i64 260, !62, i64 264}
!115 = !{!49, !46, i64 0}
!116 = !{!114, !8, i64 260}
!117 = !{!75, !75, i64 0}
!118 = !{!73, !12, i64 8}
!119 = !{!107, !12, i64 24}
!120 = !{!107, !12, i64 16}
!121 = !{!107, !12, i64 40}
!122 = !{!58, !58, i64 0}
!123 = !{!39, !36, i64 0}
!124 = distinct !{!124, !24}
!125 = distinct !{!125, !24}
!126 = distinct !{!126, !"_ZNSt3__16__moveB8nn180100INS_17_ClassicAlgPolicyENS_16reverse_iteratorIPhEES4_S4_EENS_4pairIT0_T2_EES6_T1_S7_"}
!127 = distinct !{!127, !126, !"_ZNSt3__16__moveB8nn180100INS_17_ClassicAlgPolicyENS_16reverse_iteratorIPhEES4_S4_EENS_4pairIT0_T2_EES6_T1_S7_: argument 0"}
!128 = distinct !{!128, !"_ZNSt3__123__dispatch_copy_or_moveB8nn180100INS_17_ClassicAlgPolicyENS_11__move_loopIS1_EENS_14__move_trivialENS_16reverse_iteratorIPhEES7_S7_EENS_4pairIT2_T4_EES9_T3_SA_"}
!129 = distinct !{!129, !128, !"_ZNSt3__123__dispatch_copy_or_moveB8nn180100INS_17_ClassicAlgPolicyENS_11__move_loopIS1_EENS_14__move_trivialENS_16reverse_iteratorIPhEES7_S7_EENS_4pairIT2_T4_EES9_T3_SA_: argument 0"}
!130 = distinct !{!130, !"_ZNSt3__121__unwrap_and_dispatchB8nn180100INS_10__overloadINS_11__move_loopINS_17_ClassicAlgPolicyEEENS_14__move_trivialEEENS_16reverse_iteratorIPhEES9_S9_TnNS_9enable_ifIXsr12__can_rewrapIT0_T1_T2_EE5valueEiE4typeELi0EEENS_4pairISB_SD_EESB_SC_SD_"}
!131 = distinct !{!131, !130, !"_ZNSt3__121__unwrap_and_dispatchB8nn180100INS_10__overloadINS_11__move_loopINS_17_ClassicAlgPolicyEEENS_14__move_trivialEEENS_16reverse_iteratorIPhEES9_S9_TnNS_9enable_ifIXsr12__can_rewrapIT0_T1_T2_EE5valueEiE4typeELi0EEENS_4pairISB_SD_EESB_SC_SD_: argument 0"}
!132 = distinct !{!132, !"_ZNKSt3__111__move_loopINS_17_ClassicAlgPolicyEEclB8nn180100INS_16reverse_iteratorIPhEES6_S6_EENS_4pairIT_T1_EES8_T0_S9_"}
!133 = distinct !{!133, !132, !"_ZNKSt3__111__move_loopINS_17_ClassicAlgPolicyEEclB8nn180100INS_16reverse_iteratorIPhEES6_S6_EENS_4pairIT_T1_EES8_T0_S9_: argument 0"}
!134 = distinct !{!134, !24, !32, !33}
!135 = distinct !{!135, !24, !32, !33}
!136 = distinct !{!136, !35}
!137 = distinct !{!137, !24, !32}
!138 = distinct !{!138, !"_ZNSt3__16__moveB8nn180100INS_17_ClassicAlgPolicyENS_16reverse_iteratorIPhEES4_S4_EENS_4pairIT0_T2_EES6_T1_S7_"}
!139 = distinct !{!139, !138, !"_ZNSt3__16__moveB8nn180100INS_17_ClassicAlgPolicyENS_16reverse_iteratorIPhEES4_S4_EENS_4pairIT0_T2_EES6_T1_S7_: argument 0"}
!140 = distinct !{!140, !"_ZNSt3__123__dispatch_copy_or_moveB8nn180100INS_17_ClassicAlgPolicyENS_11__move_loopIS1_EENS_14__move_trivialENS_16reverse_iteratorIPhEES7_S7_EENS_4pairIT2_T4_EES9_T3_SA_"}
!141 = distinct !{!141, !140, !"_ZNSt3__123__dispatch_copy_or_moveB8nn180100INS_17_ClassicAlgPolicyENS_11__move_loopIS1_EENS_14__move_trivialENS_16reverse_iteratorIPhEES7_S7_EENS_4pairIT2_T4_EES9_T3_SA_: argument 0"}
!142 = distinct !{!142, !"_ZNSt3__121__unwrap_and_dispatchB8nn180100INS_10__overloadINS_11__move_loopINS_17_ClassicAlgPolicyEEENS_14__move_trivialEEENS_16reverse_iteratorIPhEES9_S9_TnNS_9enable_ifIXsr12__can_rewrapIT0_T1_T2_EE5valueEiE4typeELi0EEENS_4pairISB_SD_EESB_SC_SD_"}
!143 = distinct !{!143, !142, !"_ZNSt3__121__unwrap_and_dispatchB8nn180100INS_10__overloadINS_11__move_loopINS_17_ClassicAlgPolicyEEENS_14__move_trivialEEENS_16reverse_iteratorIPhEES9_S9_TnNS_9enable_ifIXsr12__can_rewrapIT0_T1_T2_EE5valueEiE4typeELi0EEENS_4pairISB_SD_EESB_SC_SD_: argument 0"}
!144 = distinct !{!144, !"_ZNKSt3__111__move_loopINS_17_ClassicAlgPolicyEEclB8nn180100INS_16reverse_iteratorIPhEES6_S6_EENS_4pairIT_T1_EES8_T0_S9_"}
!145 = distinct !{!145, !144, !"_ZNKSt3__111__move_loopINS_17_ClassicAlgPolicyEEclB8nn180100INS_16reverse_iteratorIPhEES6_S6_EENS_4pairIT_T1_EES8_T0_S9_: argument 0"}
!146 = distinct !{!146, !24, !32, !33}
!147 = distinct !{!147, !24, !32, !33}
!148 = distinct !{!148, !35}
!149 = distinct !{!149, !24, !32}
!150 = distinct !{!150, !24}
!151 = !{!15, !15, i64 0}
!152 = !{!18, !15, i64 8}
!153 = !{!133, !131, !129, !127}
!154 = !{!145, !143, !141, !139}
!155 = !{!63, !8, i64 8}
!156 = !{!63, !8, i64 12}
!157 = !{!79, !8, i64 20}
!158 = distinct !{!158, !"_ZNSt3__16__moveB8nn180100INS_17_ClassicAlgPolicyENS_16reverse_iteratorIPN3jxl4jpeg15JPEGHuffmanCodeEEES7_S7_EENS_4pairIT0_T2_EES9_T1_SA_"}
!159 = distinct !{!159, !158, !"_ZNSt3__16__moveB8nn180100INS_17_ClassicAlgPolicyENS_16reverse_iteratorIPN3jxl4jpeg15JPEGHuffmanCodeEEES7_S7_EENS_4pairIT0_T2_EES9_T1_SA_: argument 0"}
!160 = distinct !{!160, !"_ZNSt3__123__dispatch_copy_or_moveB8nn180100INS_17_ClassicAlgPolicyENS_11__move_loopIS1_EENS_14__move_trivialENS_16reverse_iteratorIPN3jxl4jpeg15JPEGHuffmanCodeEEESA_SA_EENS_4pairIT2_T4_EESC_T3_SD_"}
!161 = distinct !{!161, !160, !"_ZNSt3__123__dispatch_copy_or_moveB8nn180100INS_17_ClassicAlgPolicyENS_11__move_loopIS1_EENS_14__move_trivialENS_16reverse_iteratorIPN3jxl4jpeg15JPEGHuffmanCodeEEESA_SA_EENS_4pairIT2_T4_EESC_T3_SD_: argument 0"}
!162 = distinct !{!162, !"_ZNSt3__121__unwrap_and_dispatchB8nn180100INS_10__overloadINS_11__move_loopINS_17_ClassicAlgPolicyEEENS_14__move_trivialEEENS_16reverse_iteratorIPN3jxl4jpeg15JPEGHuffmanCodeEEESC_SC_TnNS_9enable_ifIXsr12__can_rewrapIT0_T1_T2_EE5valueEiE4typeELi0EEENS_4pairISE_SG_EESE_SF_SG_"}
!163 = distinct !{!163, !162, !"_ZNSt3__121__unwrap_and_dispatchB8nn180100INS_10__overloadINS_11__move_loopINS_17_ClassicAlgPolicyEEENS_14__move_trivialEEENS_16reverse_iteratorIPN3jxl4jpeg15JPEGHuffmanCodeEEESC_SC_TnNS_9enable_ifIXsr12__can_rewrapIT0_T1_T2_EE5valueEiE4typeELi0EEENS_4pairISE_SG_EESE_SF_SG_: argument 0"}
!164 = distinct !{!164, !"_ZNKSt3__111__move_loopINS_17_ClassicAlgPolicyEEclB8nn180100INS_16reverse_iteratorIPN3jxl4jpeg15JPEGHuffmanCodeEEES9_S9_EENS_4pairIT_T1_EESB_T0_SC_"}
!165 = distinct !{!165, !164, !"_ZNKSt3__111__move_loopINS_17_ClassicAlgPolicyEEclB8nn180100INS_16reverse_iteratorIPN3jxl4jpeg15JPEGHuffmanCodeEEES9_S9_EENS_4pairIT_T1_EESB_T0_SC_: argument 0"}
!166 = distinct !{!166, !24}
!167 = distinct !{!167, !24}
!168 = distinct !{!168, !24}
!169 = distinct !{!169, !"_ZNSt3__16__moveB8nn180100INS_17_ClassicAlgPolicyENS_16reverse_iteratorIPN3jxl4jpeg15JPEGHuffmanCodeEEES7_S7_EENS_4pairIT0_T2_EES9_T1_SA_"}
!170 = distinct !{!170, !169, !"_ZNSt3__16__moveB8nn180100INS_17_ClassicAlgPolicyENS_16reverse_iteratorIPN3jxl4jpeg15JPEGHuffmanCodeEEES7_S7_EENS_4pairIT0_T2_EES9_T1_SA_: argument 0"}
!171 = distinct !{!171, !"_ZNSt3__123__dispatch_copy_or_moveB8nn180100INS_17_ClassicAlgPolicyENS_11__move_loopIS1_EENS_14__move_trivialENS_16reverse_iteratorIPN3jxl4jpeg15JPEGHuffmanCodeEEESA_SA_EENS_4pairIT2_T4_EESC_T3_SD_"}
!172 = distinct !{!172, !171, !"_ZNSt3__123__dispatch_copy_or_moveB8nn180100INS_17_ClassicAlgPolicyENS_11__move_loopIS1_EENS_14__move_trivialENS_16reverse_iteratorIPN3jxl4jpeg15JPEGHuffmanCodeEEESA_SA_EENS_4pairIT2_T4_EESC_T3_SD_: argument 0"}
!173 = distinct !{!173, !"_ZNSt3__121__unwrap_and_dispatchB8nn180100INS_10__overloadINS_11__move_loopINS_17_ClassicAlgPolicyEEENS_14__move_trivialEEENS_16reverse_iteratorIPN3jxl4jpeg15JPEGHuffmanCodeEEESC_SC_TnNS_9enable_ifIXsr12__can_rewrapIT0_T1_T2_EE5valueEiE4typeELi0EEENS_4pairISE_SG_EESE_SF_SG_"}
!174 = distinct !{!174, !173, !"_ZNSt3__121__unwrap_and_dispatchB8nn180100INS_10__overloadINS_11__move_loopINS_17_ClassicAlgPolicyEEENS_14__move_trivialEEENS_16reverse_iteratorIPN3jxl4jpeg15JPEGHuffmanCodeEEESC_SC_TnNS_9enable_ifIXsr12__can_rewrapIT0_T1_T2_EE5valueEiE4typeELi0EEENS_4pairISE_SG_EESE_SF_SG_: argument 0"}
!175 = distinct !{!175, !"_ZNKSt3__111__move_loopINS_17_ClassicAlgPolicyEEclB8nn180100INS_16reverse_iteratorIPN3jxl4jpeg15JPEGHuffmanCodeEEES9_S9_EENS_4pairIT_T1_EESB_T0_SC_"}
!176 = distinct !{!176, !175, !"_ZNKSt3__111__move_loopINS_17_ClassicAlgPolicyEEclB8nn180100INS_16reverse_iteratorIPN3jxl4jpeg15JPEGHuffmanCodeEEES9_S9_EENS_4pairIT_T1_EESB_T0_SC_: argument 0"}
!177 = distinct !{!177, !24}
!178 = !{!50, !50, i64 0}
!179 = !{i64 0, i64 68, !11, i64 68, i64 1028, !11, i64 1096, i64 4, !87, i64 1100, i64 1, !67}
!180 = !{!165, !163, !161, !159}
!181 = !{!90, !62, i64 1100}
!182 = !{!176, !174, !172, !170}
!183 = distinct !{!183, !24}
!184 = distinct !{!184, !24}
!185 = distinct !{!185, !24}
!186 = distinct !{!186, !24}
!187 = distinct !{!187, !24}
!188 = distinct !{!188, !24}
!189 = distinct !{!189, !24}
!190 = distinct !{!190, !24}
!191 = distinct !{!191, !24}
!192 = distinct !{!192, !"_ZNSt3__16__moveB8nn180100INS_17_ClassicAlgPolicyENS_16reverse_iteratorIPjEES4_S4_EENS_4pairIT0_T2_EES6_T1_S7_"}
!193 = distinct !{!193, !192, !"_ZNSt3__16__moveB8nn180100INS_17_ClassicAlgPolicyENS_16reverse_iteratorIPjEES4_S4_EENS_4pairIT0_T2_EES6_T1_S7_: argument 0"}
!194 = distinct !{!194, !"_ZNSt3__123__dispatch_copy_or_moveB8nn180100INS_17_ClassicAlgPolicyENS_11__move_loopIS1_EENS_14__move_trivialENS_16reverse_iteratorIPjEES7_S7_EENS_4pairIT2_T4_EES9_T3_SA_"}
!195 = distinct !{!195, !194, !"_ZNSt3__123__dispatch_copy_or_moveB8nn180100INS_17_ClassicAlgPolicyENS_11__move_loopIS1_EENS_14__move_trivialENS_16reverse_iteratorIPjEES7_S7_EENS_4pairIT2_T4_EES9_T3_SA_: argument 0"}
!196 = distinct !{!196, !"_ZNSt3__121__unwrap_and_dispatchB8nn180100INS_10__overloadINS_11__move_loopINS_17_ClassicAlgPolicyEEENS_14__move_trivialEEENS_16reverse_iteratorIPjEES9_S9_TnNS_9enable_ifIXsr12__can_rewrapIT0_T1_T2_EE5valueEiE4typeELi0EEENS_4pairISB_SD_EESB_SC_SD_"}
!197 = distinct !{!197, !196, !"_ZNSt3__121__unwrap_and_dispatchB8nn180100INS_10__overloadINS_11__move_loopINS_17_ClassicAlgPolicyEEENS_14__move_trivialEEENS_16reverse_iteratorIPjEES9_S9_TnNS_9enable_ifIXsr12__can_rewrapIT0_T1_T2_EE5valueEiE4typeELi0EEENS_4pairISB_SD_EESB_SC_SD_: argument 0"}
!198 = distinct !{!198, !"_ZNKSt3__111__move_loopINS_17_ClassicAlgPolicyEEclB8nn180100INS_16reverse_iteratorIPjEES6_S6_EENS_4pairIT_T1_EES8_T0_S9_"}
!199 = distinct !{!199, !198, !"_ZNKSt3__111__move_loopINS_17_ClassicAlgPolicyEEclB8nn180100INS_16reverse_iteratorIPjEES6_S6_EENS_4pairIT_T1_EES8_T0_S9_: argument 0"}
!200 = distinct !{!200, !24, !32, !33}
!201 = distinct !{!201, !24, !32}
!202 = distinct !{!202, !"_ZNSt3__16__moveB8nn180100INS_17_ClassicAlgPolicyENS_16reverse_iteratorIPN3jxl4jpeg12JPEGScanInfo16ExtraZeroRunInfoEEES8_S8_EENS_4pairIT0_T2_EESA_T1_SB_"}
!203 = distinct !{!203, !202, !"_ZNSt3__16__moveB8nn180100INS_17_ClassicAlgPolicyENS_16reverse_iteratorIPN3jxl4jpeg12JPEGScanInfo16ExtraZeroRunInfoEEES8_S8_EENS_4pairIT0_T2_EESA_T1_SB_: argument 0"}
!204 = distinct !{!204, !"_ZNSt3__123__dispatch_copy_or_moveB8nn180100INS_17_ClassicAlgPolicyENS_11__move_loopIS1_EENS_14__move_trivialENS_16reverse_iteratorIPN3jxl4jpeg12JPEGScanInfo16ExtraZeroRunInfoEEESB_SB_EENS_4pairIT2_T4_EESD_T3_SE_"}
!205 = distinct !{!205, !204, !"_ZNSt3__123__dispatch_copy_or_moveB8nn180100INS_17_ClassicAlgPolicyENS_11__move_loopIS1_EENS_14__move_trivialENS_16reverse_iteratorIPN3jxl4jpeg12JPEGScanInfo16ExtraZeroRunInfoEEESB_SB_EENS_4pairIT2_T4_EESD_T3_SE_: argument 0"}
!206 = distinct !{!206, !"_ZNSt3__121__unwrap_and_dispatchB8nn180100INS_10__overloadINS_11__move_loopINS_17_ClassicAlgPolicyEEENS_14__move_trivialEEENS_16reverse_iteratorIPN3jxl4jpeg12JPEGScanInfo16ExtraZeroRunInfoEEESD_SD_TnNS_9enable_ifIXsr12__can_rewrapIT0_T1_T2_EE5valueEiE4typeELi0EEENS_4pairISF_SH_EESF_SG_SH_"}
!207 = distinct !{!207, !206, !"_ZNSt3__121__unwrap_and_dispatchB8nn180100INS_10__overloadINS_11__move_loopINS_17_ClassicAlgPolicyEEENS_14__move_trivialEEENS_16reverse_iteratorIPN3jxl4jpeg12JPEGScanInfo16ExtraZeroRunInfoEEESD_SD_TnNS_9enable_ifIXsr12__can_rewrapIT0_T1_T2_EE5valueEiE4typeELi0EEENS_4pairISF_SH_EESF_SG_SH_: argument 0"}
!208 = distinct !{!208, !"_ZNKSt3__111__move_loopINS_17_ClassicAlgPolicyEEclB8nn180100INS_16reverse_iteratorIPN3jxl4jpeg12JPEGScanInfo16ExtraZeroRunInfoEEESA_SA_EENS_4pairIT_T1_EESC_T0_SD_"}
!209 = distinct !{!209, !208, !"_ZNKSt3__111__move_loopINS_17_ClassicAlgPolicyEEclB8nn180100INS_16reverse_iteratorIPN3jxl4jpeg12JPEGScanInfo16ExtraZeroRunInfoEEESA_SA_EENS_4pairIT_T1_EESC_T0_SD_: argument 0"}
!210 = distinct !{!210, !24}
!211 = distinct !{!211, !24}
!212 = distinct !{!212, !24}
!213 = distinct !{!213, !24}
!214 = distinct !{!214, !24}
!215 = distinct !{!215, !24}
!216 = !{!"_ZTSNSt3__15arrayIN3jxl4jpeg21JPEGComponentScanInfoELm4EEE", !7, i64 0}
!217 = !{!"_ZTSN3jxl4jpeg12JPEGScanInfoE", !8, i64 0, !8, i64 4, !8, i64 8, !8, i64 12, !8, i64 16, !216, i64 20, !8, i64 68, !95, i64 72, !99, i64 96}
!218 = !{!217, !8, i64 16}
!219 = !{!"_ZTSN3jxl4jpeg21JPEGComponentScanInfoE", !8, i64 0, !8, i64 4, !8, i64 8}
!220 = !{!219, !8, i64 0}
!221 = !{!219, !8, i64 4}
!222 = !{!219, !8, i64 8}
!223 = !{!217, !8, i64 0}
!224 = !{!217, !8, i64 4}
!225 = !{!217, !8, i64 8}
!226 = !{!217, !8, i64 12}
!227 = !{!199, !197, !195, !193}
!228 = !{!209, !207, !205, !203}
!229 = distinct !{!229, !"_ZNSt3__16__moveB8nn180100INS_17_ClassicAlgPolicyENS_16reverse_iteratorIPN3jxl4jpeg14JPEGQuantTableEEES7_S7_EENS_4pairIT0_T2_EES9_T1_SA_"}
!230 = distinct !{!230, !229, !"_ZNSt3__16__moveB8nn180100INS_17_ClassicAlgPolicyENS_16reverse_iteratorIPN3jxl4jpeg14JPEGQuantTableEEES7_S7_EENS_4pairIT0_T2_EES9_T1_SA_: argument 0"}
!231 = distinct !{!231, !"_ZNSt3__123__dispatch_copy_or_moveB8nn180100INS_17_ClassicAlgPolicyENS_11__move_loopIS1_EENS_14__move_trivialENS_16reverse_iteratorIPN3jxl4jpeg14JPEGQuantTableEEESA_SA_EENS_4pairIT2_T4_EESC_T3_SD_"}
!232 = distinct !{!232, !231, !"_ZNSt3__123__dispatch_copy_or_moveB8nn180100INS_17_ClassicAlgPolicyENS_11__move_loopIS1_EENS_14__move_trivialENS_16reverse_iteratorIPN3jxl4jpeg14JPEGQuantTableEEESA_SA_EENS_4pairIT2_T4_EESC_T3_SD_: argument 0"}
!233 = distinct !{!233, !"_ZNSt3__121__unwrap_and_dispatchB8nn180100INS_10__overloadINS_11__move_loopINS_17_ClassicAlgPolicyEEENS_14__move_trivialEEENS_16reverse_iteratorIPN3jxl4jpeg14JPEGQuantTableEEESC_SC_TnNS_9enable_ifIXsr12__can_rewrapIT0_T1_T2_EE5valueEiE4typeELi0EEENS_4pairISE_SG_EESE_SF_SG_"}
!234 = distinct !{!234, !233, !"_ZNSt3__121__unwrap_and_dispatchB8nn180100INS_10__overloadINS_11__move_loopINS_17_ClassicAlgPolicyEEENS_14__move_trivialEEENS_16reverse_iteratorIPN3jxl4jpeg14JPEGQuantTableEEESC_SC_TnNS_9enable_ifIXsr12__can_rewrapIT0_T1_T2_EE5valueEiE4typeELi0EEENS_4pairISE_SG_EESE_SF_SG_: argument 0"}
!235 = distinct !{!235, !"_ZNKSt3__111__move_loopINS_17_ClassicAlgPolicyEEclB8nn180100INS_16reverse_iteratorIPN3jxl4jpeg14JPEGQuantTableEEES9_S9_EENS_4pairIT_T1_EESB_T0_SC_"}
!236 = distinct !{!236, !235, !"_ZNKSt3__111__move_loopINS_17_ClassicAlgPolicyEEclB8nn180100INS_16reverse_iteratorIPN3jxl4jpeg14JPEGQuantTableEEES9_S9_EENS_4pairIT_T1_EESB_T0_SC_: argument 0"}
!237 = distinct !{!237, !24}
!238 = distinct !{!238, !24}
!239 = !{!114, !62, i64 264}
!240 = !{!46, !46, i64 0}
!241 = !{i64 0, i64 256, !11, i64 256, i64 4, !87, i64 260, i64 4, !87, i64 264, i64 1, !67}
!242 = !{!236, !234, !232, !230}
!243 = !{!114, !8, i64 256}
!244 = distinct !{!244, !24}
!245 = distinct !{!245, !24}
!246 = distinct !{!246, !24}
!247 = !{i8 0, i8 2}
!248 = !{}
!249 = distinct !{!249, !24}
!250 = distinct !{!250, !24}
!251 = distinct !{!251, !24}
!252 = distinct !{!252, !24}
!253 = !{!54, !54, i64 0}
!254 = distinct !{!254, !"_ZNSt3__16vectorIbNS_9allocatorIbEEE11__make_iterB8nn180100Em"}
!255 = distinct !{!255, !254, !"_ZNSt3__16vectorIbNS_9allocatorIbEEE11__make_iterB8nn180100Em: argument 0"}
!256 = !{!255}
!257 = distinct !{!257, !"_ZNSt3__16__moveB8nn180100INS_17_ClassicAlgPolicyENS_16reverse_iteratorIPsEES4_S4_EENS_4pairIT0_T2_EES6_T1_S7_"}
!258 = distinct !{!258, !257, !"_ZNSt3__16__moveB8nn180100INS_17_ClassicAlgPolicyENS_16reverse_iteratorIPsEES4_S4_EENS_4pairIT0_T2_EES6_T1_S7_: argument 0"}
!259 = distinct !{!259, !"_ZNSt3__123__dispatch_copy_or_moveB8nn180100INS_17_ClassicAlgPolicyENS_11__move_loopIS1_EENS_14__move_trivialENS_16reverse_iteratorIPsEES7_S7_EENS_4pairIT2_T4_EES9_T3_SA_"}
!260 = distinct !{!260, !259, !"_ZNSt3__123__dispatch_copy_or_moveB8nn180100INS_17_ClassicAlgPolicyENS_11__move_loopIS1_EENS_14__move_trivialENS_16reverse_iteratorIPsEES7_S7_EENS_4pairIT2_T4_EES9_T3_SA_: argument 0"}
!261 = distinct !{!261, !"_ZNSt3__121__unwrap_and_dispatchB8nn180100INS_10__overloadINS_11__move_loopINS_17_ClassicAlgPolicyEEENS_14__move_trivialEEENS_16reverse_iteratorIPsEES9_S9_TnNS_9enable_ifIXsr12__can_rewrapIT0_T1_T2_EE5valueEiE4typeELi0EEENS_4pairISB_SD_EESB_SC_SD_"}
!262 = distinct !{!262, !261, !"_ZNSt3__121__unwrap_and_dispatchB8nn180100INS_10__overloadINS_11__move_loopINS_17_ClassicAlgPolicyEEENS_14__move_trivialEEENS_16reverse_iteratorIPsEES9_S9_TnNS_9enable_ifIXsr12__can_rewrapIT0_T1_T2_EE5valueEiE4typeELi0EEENS_4pairISB_SD_EESB_SC_SD_: argument 0"}
!263 = distinct !{!263, !"_ZNKSt3__111__move_loopINS_17_ClassicAlgPolicyEEclB8nn180100INS_16reverse_iteratorIPsEES6_S6_EENS_4pairIT_T1_EES8_T0_S9_"}
!264 = distinct !{!264, !263, !"_ZNKSt3__111__move_loopINS_17_ClassicAlgPolicyEEclB8nn180100INS_16reverse_iteratorIPsEES6_S6_EENS_4pairIT_T1_EES8_T0_S9_: argument 0"}
!265 = distinct !{!265, !24, !32, !33}
!266 = distinct !{!266, !24, !32, !33}
!267 = distinct !{!267, !24, !33, !32}
!268 = !{!264, !262, !260, !258}
!269 = !{!"branch_weights", i32 8, i32 8}
!270 = distinct !{!270, !"_ZNSt3__16__moveB8nn180100INS_17_ClassicAlgPolicyENS_16reverse_iteratorIPhEES4_S4_EENS_4pairIT0_T2_EES6_T1_S7_"}
!271 = distinct !{!271, !270, !"_ZNSt3__16__moveB8nn180100INS_17_ClassicAlgPolicyENS_16reverse_iteratorIPhEES4_S4_EENS_4pairIT0_T2_EES6_T1_S7_: argument 0"}
!272 = distinct !{!272, !"_ZNSt3__123__dispatch_copy_or_moveB8nn180100INS_17_ClassicAlgPolicyENS_11__move_loopIS1_EENS_14__move_trivialENS_16reverse_iteratorIPhEES7_S7_EENS_4pairIT2_T4_EES9_T3_SA_"}
!273 = distinct !{!273, !272, !"_ZNSt3__123__dispatch_copy_or_moveB8nn180100INS_17_ClassicAlgPolicyENS_11__move_loopIS1_EENS_14__move_trivialENS_16reverse_iteratorIPhEES7_S7_EENS_4pairIT2_T4_EES9_T3_SA_: argument 0"}
!274 = distinct !{!274, !"_ZNSt3__121__unwrap_and_dispatchB8nn180100INS_10__overloadINS_11__move_loopINS_17_ClassicAlgPolicyEEENS_14__move_trivialEEENS_16reverse_iteratorIPhEES9_S9_TnNS_9enable_ifIXsr12__can_rewrapIT0_T1_T2_EE5valueEiE4typeELi0EEENS_4pairISB_SD_EESB_SC_SD_"}
!275 = distinct !{!275, !274, !"_ZNSt3__121__unwrap_and_dispatchB8nn180100INS_10__overloadINS_11__move_loopINS_17_ClassicAlgPolicyEEENS_14__move_trivialEEENS_16reverse_iteratorIPhEES9_S9_TnNS_9enable_ifIXsr12__can_rewrapIT0_T1_T2_EE5valueEiE4typeELi0EEENS_4pairISB_SD_EESB_SC_SD_: argument 0"}
!276 = distinct !{!276, !"_ZNKSt3__111__move_loopINS_17_ClassicAlgPolicyEEclB8nn180100INS_16reverse_iteratorIPhEES6_S6_EENS_4pairIT_T1_EES8_T0_S9_"}
!277 = distinct !{!277, !276, !"_ZNKSt3__111__move_loopINS_17_ClassicAlgPolicyEEclB8nn180100INS_16reverse_iteratorIPhEES6_S6_EENS_4pairIT_T1_EES8_T0_S9_: argument 0"}
!278 = distinct !{!278, !24, !32, !33}
!279 = distinct !{!279, !24, !32, !33}
!280 = distinct !{!280, !35}
!281 = distinct !{!281, !24, !32}
!282 = distinct !{!282, !24}
!283 = distinct !{!283, !24}
!284 = !{!63, !62, i64 264}
!285 = !{!277, !275, !273, !271}
!286 = distinct !{!286, !24}
!287 = distinct !{!287, !24}
!288 = !{!61, !58, i64 0}
end_hunk_1

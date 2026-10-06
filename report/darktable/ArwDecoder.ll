Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/darktable/original/ArwDecoder?download=true
inline.NumInlined: 1001
inline.NumDeleted: 583
loop-unroll.NumCompletelyUnrolled: 20
loop-unroll.NumRuntimeUnrolled: 3
loop-unroll.NumUnrolled: 28
begin_hunk_0_@_ZN8rawspeed10ArwDecoder21decodeTransitionalArwEv:bb.a
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit43

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit43.thread: ; preds = %.critedge.thread, %_ZNKSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESt10_Select1stIS8_ESt4lessIvESaIS8_EE14_M_lower_boundEPKSt13_Rb_tree_nodeIS8_EPKSt18_Rb_tree_node_baseRS7_.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #27
  br label %bb.ah

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit43: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i.i
  %.0.i.i.i.i.i.i.i = phi i32 [ %i.dd, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i.i ], [ %.0.i6.i.i.i.i.i.i.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i.i ]
  %i.df = icmp sgt i32 %.0.i.i.i.i.i.i.i, -1
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #27
  br i1 %i.df, label %bb.ag, label %bb.ah

bb.ag:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit43
  call void @_ZN8rawspeed10ArwDecoder9decodeSRFEv(ptr dead_on_unwind writable sret(%"class.rawspeed::RawImage") align 8 %0, ptr noundef nonnull align 8 dereferenceable(112) %1)
  br label %bb.ai

bb.ah:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit43.thread, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit43
  call void (ptr, ...) @_ZN8rawspeed14ThrowExceptionINS_19RawDecoderExceptionEEEvPKcz(ptr noundef nonnull @.str.4, ptr noundef nonnull @__PRETTY_FUNCTION__._ZN8rawspeed10ArwDecoder21decodeTransitionalArwEv) #19
  unreachable

bb.ai:                                            ; preds = %bb.ae, %bb.ag
  ret void
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(read)
declare noundef ptr @_ZNK8rawspeed7TiffIFD17getEntryRecursiveENS_7TiffTagE(ptr noundef nonnull align 8 dereferenceable(104), i16 noundef zeroext) local_unnamed_addr #6

declare void @_ZNK8rawspeed9TiffEntry9getStringB5cxx11Ev(ptr dead_on_unwind writable sret(%"class.std::__cxx11::basic_string") align 8, ptr noundef nonnull align 8 dereferenceable(48)) local_unnamed_addr #2

declare void @_ZN8rawspeed20SonyArw1DecompressorC1ENS_8RawImageE(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef align 8) unnamed_addr #2

declare void @_ZNK8rawspeed20SonyArw1Decompressor10decompressENS_10ByteStreamE(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef byval(%"class.rawspeed::ByteStream") align 8) local_unnamed_addr #2

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN8rawspeed20SonyArw1DecompressorD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %0) unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !45   ; 8 uses
  %.not.i.i.i = icmp eq ptr %i.b, null
  br i1 %.not.i.i.i, label %_ZN8rawspeed8RawImageD2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 4 uses
  %i.d = load atomic i64, ptr %i.c acquire, align 8 ; 2 uses
  %i.e = icmp eq i64 %i.d, 4294967297
  %i.f = trunc i64 %i.d to i32                    ; 2 uses
  br i1 %i.e, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  store i32 0, ptr %i.c, align 8, !tbaa !47
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 12
  store i32 0, ptr %i.g, align 4, !tbaa !48
  %i.h = load ptr, ptr %i.b, align 8, !tbaa !50
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %i.j = load ptr, ptr %i.i, align 8
  tail call void %i.j(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #27, !call_target !55, !inline_history !3
  %i.k = load ptr, ptr %i.b, align 8, !tbaa !50
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 24
  %i.m = load ptr, ptr %i.l, align 8
  tail call void %i.m(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #27, !call_target !57, !inline_history !3
  br label %_ZN8rawspeed8RawImageD2Ev.exit

bb.d:                                             ; preds = %bb.b
  %i.n = load i8, ptr @__libc_single_threaded, align 1, !tbaa !28
  %.not.i.i.i.i = icmp eq i8 %i.n, 0
  br i1 %.not.i.i.i.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.o = add nsw i32 %i.f, -1
  store i32 %i.o, ptr %i.c, align 8, !tbaa !34
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i

bb.f:                                             ; preds = %bb.d
  %i.p = atomicrmw volatile add ptr %i.c, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i: ; preds = %bb.f, %bb.e
  %.0.i.i.i.i.i = phi i32 [ %i.f, %bb.e ], [ %i.p, %bb.f ]
  %i.q = icmp eq i32 %.0.i.i.i.i.i, 1
  br i1 %i.q, label %bb.g, label %_ZN8rawspeed8RawImageD2Ev.exit, !prof !58

bb.g:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #27
  br label %_ZN8rawspeed8RawImageD2Ev.exit

_ZN8rawspeed8RawImageD2Ev.exit:                   ; preds = %bb.a, %bb.c, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i, %bb.g
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %1, ptr noundef nonnull align 1 dereferenceable(1) %2) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  store ptr %i.a, ptr %0, align 8, !tbaa !60
  %i.b = icmp eq ptr %1, null
  br i1 %i.b, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt19__throw_logic_errorPKc(ptr noundef nonnull @.str.38) #30
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.c = tail call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %1) #27 ; 8 uses
  %i.d = icmp ugt i64 %i.c, 15
  br i1 %i.d, label %bb.d, label %._crit_edge.i

bb.d:                                             ; preds = %bb.c
  %i.e = icmp slt i64 %i.c, 0
  br i1 %i.e, label %.noexc, label %bb.e

.noexc:                                           ; preds = %bb.d
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.39) #30
  unreachable

bb.e:                                             ; preds = %bb.d
  %i.f = add nuw i64 %i.c, 1                      ; 2 uses
  %i.g = icmp slt i64 %i.f, 0
  br i1 %i.g, label %.noexc11, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i, !prof !58

.noexc11:                                         ; preds = %bb.e
  tail call void @_ZSt17__throw_bad_allocv() #30
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i: ; preds = %bb.e
  %i.h = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.f) #29 ; 2 uses
  store ptr %i.h, ptr %0, align 8, !tbaa !27
  store i64 %i.c, ptr %i.a, align 8, !tbaa !28
  br label %._crit_edge.i

._crit_edge.i:                                    ; preds = %bb.c, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i
  %i.i = phi ptr [ %i.h, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i ], [ %i.a, %bb.c ] ; 3 uses
  switch i64 %i.c, label %bb.g [
    i64 1, label %bb.f
    i64 0, label %bb.h
  ]

bb.f:                                             ; preds = %._crit_edge.i
  %i.j = load i8, ptr %1, align 1, !tbaa !28
  store i8 %i.j, ptr %i.i, align 1, !tbaa !28
  br label %bb.h

bb.g:                                             ; preds = %._crit_edge.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.i, ptr nonnull align 1 %1, i64 %i.c, i1 false)
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f, %._crit_edge.i
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.c, ptr %i.k, align 8, !tbaa !26
  %i.l = getelementptr inbounds nuw i8, ptr %i.i, i64 %i.c
  store i8 0, ptr %i.l, align 1, !tbaa !28
  ret void
}

; Function Attrs: mustprogress uwtable
define hidden void @_ZN8rawspeed10ArwDecoder11decodeCurveEPKNS_7TiffIFDE(ptr dead_on_unwind noalias nofree writable writeonly sret(%"class.std::vector.79") align 8 captures(none) initializes((0, 24)) %0, ptr noundef %1) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = tail call noalias noundef nonnull dereferenceable(32770) ptr @_Znwm(i64 noundef 32770) #29 ; 29 uses
  store ptr %i.a, ptr %0, align 8, !tbaa !69
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 32770 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.b, ptr %i.c, align 8, !tbaa !70
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 2 dereferenceable(32770) %i.a, i8 0, i64 32770, i1 false)
  store ptr %i.b, ptr %i.d, align 8, !tbaa !223
  %i.e = invoke noundef ptr @_ZNK8rawspeed7TiffIFD8getEntryENS_7TiffTagE(ptr noundef nonnull align 8 dereferenceable(104) %1, i16 noundef zeroext 28688)
          to label %bb.b unwind label %bb.c       ; 4 uses

bb.b:                                             ; preds = %bb.a
  %i.f = invoke noundef zeroext i16 @_ZNK8rawspeed9TiffEntry6getU16Ej(ptr noundef nonnull align 8 dereferenceable(48) %i.e, i32 noundef 0)
          to label %bb.d unwind label %bb.g

bb.c:                                             ; preds = %bb.a
  %i.g = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorItSaItEED2Ev.exit

bb.d:                                             ; preds = %bb.b
  %i.h = lshr i16 %i.f, 2
  %i.i = and i16 %i.h, 4095                       ; 6 uses
  %i.j = zext nneg i16 %i.i to i32                ; 12 uses
  %i.k = invoke noundef zeroext i16 @_ZNK8rawspeed9TiffEntry6getU16Ej(ptr noundef nonnull align 8 dereferenceable(48) %i.e, i32 noundef 1)
          to label %bb.e unwind label %bb.g

bb.e:                                             ; preds = %bb.d
  %i.l = lshr i16 %i.k, 2
  %i.m = and i16 %i.l, 4095                       ; 4 uses
  %i.n = zext nneg i16 %i.m to i32                ; 8 uses
  %i.o = invoke noundef zeroext i16 @_ZNK8rawspeed9TiffEntry6getU16Ej(ptr noundef nonnull align 8 dereferenceable(48) %i.e, i32 noundef 2)
          to label %bb.f unwind label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.p = lshr i16 %i.o, 2
  %i.q = and i16 %i.p, 4095                       ; 4 uses
  %i.r = zext nneg i16 %i.q to i32                ; 8 uses
  %i.s = invoke noundef zeroext i16 @_ZNK8rawspeed9TiffEntry6getU16Ej(ptr noundef nonnull align 8 dereferenceable(48) %i.e, i32 noundef 3)
          to label %.preheader29.preheader unwind label %bb.g

.preheader29.preheader:                           ; preds = %bb.f
  %i.t = lshr i16 %i.s, 2
  %i.u = and i16 %i.t, 4095                       ; 4 uses
  %i.v = zext nneg i16 %i.u to i32                ; 9 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %.preheader29.preheader
  %index = phi i64 [ 0, %.preheader29.preheader ], [ %index.next.3, %vector.body ] ; 5 uses
  %vec.ind = phi <16 x i16> [ <i16 0, i16 1, i16 2, i16 3, i16 4, i16 5, i16 6, i16 7, i16 8, i16 9, i16 10, i16 11, i16 12, i16 13, i16 14, i16 15>, %.preheader29.preheader ], [ %vec.ind.next.3, %vector.body ] ; 17 uses
  %step.add = add <16 x i16> %vec.ind, splat (i16 16)
  %step.add.2 = add <16 x i16> %vec.ind, splat (i16 32)
  %step.add.3 = add <16 x i16> %vec.ind, splat (i16 48)
  %i.w = getelementptr inbounds nuw [2 x i8], ptr %i.a, i64 %index ; 4 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 32
  %i.y = getelementptr inbounds nuw i8, ptr %i.w, i64 64
  %i.z = getelementptr inbounds nuw i8, ptr %i.w, i64 96
  store <16 x i16> %vec.ind, ptr %i.w, align 2, !tbaa !225
  store <16 x i16> %step.add, ptr %i.x, align 2, !tbaa !225
  store <16 x i16> %step.add.2, ptr %i.y, align 2, !tbaa !225
  store <16 x i16> %step.add.3, ptr %i.z, align 2, !tbaa !225
  %vec.ind.next = add <16 x i16> %vec.ind, splat (i16 64)
  %step.add.1 = add <16 x i16> %vec.ind, splat (i16 80)
  %step.add.2.1 = add <16 x i16> %vec.ind, splat (i16 96)
  %step.add.3.1 = add <16 x i16> %vec.ind, splat (i16 112)
  %i.aa = getelementptr inbounds nuw [2 x i8], ptr %i.a, i64 %index ; 4 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 128
  %i.ac = getelementptr inbounds nuw i8, ptr %i.aa, i64 160
  %i.ad = getelementptr inbounds nuw i8, ptr %i.aa, i64 192
  %i.ae = getelementptr inbounds nuw i8, ptr %i.aa, i64 224
  store <16 x i16> %vec.ind.next, ptr %i.ab, align 2, !tbaa !225
  store <16 x i16> %step.add.1, ptr %i.ac, align 2, !tbaa !225
  store <16 x i16> %step.add.2.1, ptr %i.ad, align 2, !tbaa !225
  store <16 x i16> %step.add.3.1, ptr %i.ae, align 2, !tbaa !225
  %vec.ind.next.1 = add <16 x i16> %vec.ind, splat (i16 128)
  %step.add.2251 = add <16 x i16> %vec.ind, splat (i16 144)
  %step.add.2.2 = add <16 x i16> %vec.ind, splat (i16 160)
  %step.add.3.2 = add <16 x i16> %vec.ind, splat (i16 176)
  %i.af = getelementptr inbounds nuw [2 x i8], ptr %i.a, i64 %index ; 4 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 256
  %i.ah = getelementptr inbounds nuw i8, ptr %i.af, i64 288
  %i.ai = getelementptr inbounds nuw i8, ptr %i.af, i64 320
  %i.aj = getelementptr inbounds nuw i8, ptr %i.af, i64 352
  store <16 x i16> %vec.ind.next.1, ptr %i.ag, align 2, !tbaa !225
  store <16 x i16> %step.add.2251, ptr %i.ah, align 2, !tbaa !225
  store <16 x i16> %step.add.2.2, ptr %i.ai, align 2, !tbaa !225
  store <16 x i16> %step.add.3.2, ptr %i.aj, align 2, !tbaa !225
  %vec.ind.next.2 = add <16 x i16> %vec.ind, splat (i16 192)
  %step.add.3252 = add <16 x i16> %vec.ind, splat (i16 208)
  %step.add.2.3 = add <16 x i16> %vec.ind, splat (i16 224)
  %step.add.3.3 = add <16 x i16> %vec.ind, splat (i16 240)
  %i.ak = getelementptr inbounds nuw [2 x i8], ptr %i.a, i64 %index ; 4 uses
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 384
  %i.am = getelementptr inbounds nuw i8, ptr %i.ak, i64 416
  %i.an = getelementptr inbounds nuw i8, ptr %i.ak, i64 448
  %i.ao = getelementptr inbounds nuw i8, ptr %i.ak, i64 480
  store <16 x i16> %vec.ind.next.2, ptr %i.al, align 2, !tbaa !225
  store <16 x i16> %step.add.3252, ptr %i.am, align 2, !tbaa !225
  store <16 x i16> %step.add.2.3, ptr %i.an, align 2, !tbaa !225
  store <16 x i16> %step.add.3.3, ptr %i.ao, align 2, !tbaa !225
  %index.next.3 = add nuw nsw i64 %index, 256     ; 2 uses
  %vec.ind.next.3 = add <16 x i16> %vec.ind, splat (i16 256)
  %i.ap = icmp eq i64 %index.next.3, 16384
  br i1 %i.ap, label %.preheader29, label %vector.body, !llvm.loop !207

bb.g:                                             ; preds = %bb.f, %bb.e, %bb.d, %bb.b
  %i.aq = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorItSaItEED2Ev.exit

.preheader29:                                     ; preds = %vector.body
  %i.ar = getelementptr inbounds nuw i8, ptr %i.a, i64 32768
  store i16 16384, ptr %i.ar, align 2, !tbaa !225
  %.not33 = icmp eq i16 %i.i, 0
  br i1 %.not33, label %.loopexit, label %iter.check

.loopexit:                                        ; preds = %vec.epilog.scalar.ph, %middle.block73, %vec.epilog.middle.block, %.preheader29
  %.not33.1.not = icmp samesign ult i16 %i.i, %i.m
  br i1 %.not33.1.not, label %iter.check108, label %.loopexit.1

iter.check108:                                    ; preds = %.loopexit
  %.phi.trans.insert = zext nneg i16 %i.i to i64
  %.phi.trans.insert47 = getelementptr inbounds nuw [2 x i8], ptr %i.a, i64 %.phi.trans.insert
  %.pre48 = load i16, ptr %.phi.trans.insert47, align 2, !tbaa !225 ; 5 uses
  %i.as = sub nsw i32 %i.n, %i.j                  ; 7 uses
  %min.iters.check87 = icmp ult i32 %i.as, 8
  br i1 %min.iters.check87, label %vec.epilog.scalar.ph109.preheader, label %vector.main.loop.iter.check88

vector.main.loop.iter.check88:                    ; preds = %iter.check108
  %min.iters.check89 = icmp ult i32 %i.as, 64
  br i1 %min.iters.check89, label %vec.epilog.ph112, label %vector.ph90

vector.ph90:                                      ; preds = %vector.main.loop.iter.check88
  %i.at = and i32 %i.as, 56
  %n.vec91 = and i32 %i.as, -64                   ; 5 uses
  %i.au = trunc nsw i32 %n.vec91 to i16
  %i.av = shl nsw i16 %i.au, 1
  %i.aw = add i16 %.pre48, %i.av                  ; 2 uses
  %i.ax = add nsw i32 %n.vec91, %i.j
  %broadcast.splatinsert92 = insertelement <16 x i16> poison, i16 %.pre48, i64 0
  %broadcast.splat93 = shufflevector <16 x i16> %broadcast.splatinsert92, <16 x i16> poison, <16 x i32> zeroinitializer
  %induction94 = add <16 x i16> %broadcast.splat93, <i16 0, i16 2, i16 4, i16 6, i16 8, i16 10, i16 12, i16 14, i16 16, i16 18, i16 20, i16 22, i16 24, i16 26, i16 28, i16 30>
  br label %vector.body95

vector.body95:                                    ; preds = %vector.ph90, %vector.body95
  %index96 = phi i32 [ 0, %vector.ph90 ], [ %index.next101, %vector.body95 ] ; 2 uses
  %vec.ind97 = phi <16 x i16> [ %induction94, %vector.ph90 ], [ %vec.ind.next102, %vector.body95 ] ; 5 uses
  %i.ay = add nuw i32 %index96, %i.j
  %i.az = add <16 x i16> %vec.ind97, splat (i16 2)
  %i.ba = add <16 x i16> %vec.ind97, splat (i16 34)
  %i.bb = add <16 x i16> %vec.ind97, splat (i16 66)
  %i.bc = add <16 x i16> %vec.ind97, splat (i16 98)
  %i.bd = sext i32 %i.ay to i64
  %i.be = getelementptr inbounds nuw [2 x i8], ptr %i.a, i64 %i.bd ; 4 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %i.be, i64 2
  %i.bg = getelementptr inbounds nuw i8, ptr %i.be, i64 34
  %i.bh = getelementptr inbounds nuw i8, ptr %i.be, i64 66
  %i.bi = getelementptr inbounds nuw i8, ptr %i.be, i64 98
  store <16 x i16> %i.az, ptr %i.bf, align 2, !tbaa !225
  store <16 x i16> %i.ba, ptr %i.bg, align 2, !tbaa !225
  store <16 x i16> %i.bb, ptr %i.bh, align 2, !tbaa !225
  store <16 x i16> %i.bc, ptr %i.bi, align 2, !tbaa !225
  %index.next101 = add nuw i32 %index96, 64       ; 2 uses
  %vec.ind.next102 = add <16 x i16> %vec.ind97, splat (i16 128)
  %i.bj = icmp eq i32 %index.next101, %n.vec91
  br i1 %i.bj, label %middle.block103, label %vector.body95, !llvm.loop !208

middle.block103:                                  ; preds = %vector.body95
  %cmp.n104 = icmp eq i32 %i.as, %n.vec91
  br i1 %cmp.n104, label %.loopexit.1, label %vec.epilog.iter.check110

vec.epilog.iter.check110:                         ; preds = %middle.block103
  %min.epilog.iters.check111 = icmp eq i32 %i.at, 0
  br i1 %min.epilog.iters.check111, label %vec.epilog.scalar.ph109.preheader, label %vec.epilog.ph112, !prof !228

vec.epilog.ph112:                                 ; preds = %vector.main.loop.iter.check88, %vec.epilog.iter.check110
  %vec.epilog.resume.val105 = phi i32 [ %n.vec91, %vec.epilog.iter.check110 ], [ 0, %vector.main.loop.iter.check88 ]
  %bc.resume.val106 = phi i16 [ %i.aw, %vec.epilog.iter.check110 ], [ %.pre48, %vector.main.loop.iter.check88 ]
  %n.vec113 = and i32 %i.as, -8                   ; 4 uses
  %i.bk = trunc nsw i32 %n.vec113 to i16
  %i.bl = shl nsw i16 %i.bk, 1
  %i.bm = add i16 %.pre48, %i.bl
  %i.bn = add nsw i32 %n.vec113, %i.j
  %broadcast.splatinsert114 = insertelement <8 x i16> poison, i16 %bc.resume.val106, i64 0
  %broadcast.splat115 = shufflevector <8 x i16> %broadcast.splatinsert114, <8 x i16> poison, <8 x i32> zeroinitializer
  %induction116 = add <8 x i16> %broadcast.splat115, <i16 0, i16 2, i16 4, i16 6, i16 8, i16 10, i16 12, i16 14>
  br label %vec.epilog.vector.body117

vec.epilog.vector.body117:                        ; preds = %vec.epilog.vector.body117, %vec.epilog.ph112
  %index118 = phi i32 [ %vec.epilog.resume.val105, %vec.epilog.ph112 ], [ %index.next120, %vec.epilog.vector.body117 ] ; 2 uses
  %vec.ind119 = phi <8 x i16> [ %induction116, %vec.epilog.ph112 ], [ %vec.ind.next121, %vec.epilog.vector.body117 ] ; 2 uses
  %i.bo = add nuw i32 %index118, %i.j
  %i.bp = add <8 x i16> %vec.ind119, splat (i16 2)
  %i.bq = sext i32 %i.bo to i64
  %i.br = getelementptr inbounds nuw [2 x i8], ptr %i.a, i64 %i.bq
  %i.bs = getelementptr inbounds nuw i8, ptr %i.br, i64 2
  store <8 x i16> %i.bp, ptr %i.bs, align 2, !tbaa !225
  %index.next120 = add nuw i32 %index118, 8       ; 2 uses
  %vec.ind.next121 = add <8 x i16> %vec.ind119, splat (i16 16)
  %i.bt = icmp eq i32 %index.next120, %n.vec113
  br i1 %i.bt, label %vec.epilog.middle.block122, label %vec.epilog.vector.body117, !llvm.loop !209

vec.epilog.middle.block122:                       ; preds = %vec.epilog.vector.body117
  %cmp.n123 = icmp eq i32 %i.as, %n.vec113
  br i1 %cmp.n123, label %.loopexit.1, label %vec.epilog.scalar.ph109.preheader

vec.epilog.scalar.ph109.preheader:                ; preds = %iter.check108, %vec.epilog.iter.check110, %vec.epilog.middle.block122
  %.ph248 = phi i16 [ %.pre48, %iter.check108 ], [ %i.aw, %vec.epilog.iter.check110 ], [ %i.bm, %vec.epilog.middle.block122 ]
  %.035.1.in.ph = phi i32 [ %i.j, %iter.check108 ], [ %i.ax, %vec.epilog.iter.check110 ], [ %i.bn, %vec.epilog.middle.block122 ]
  br label %vec.epilog.scalar.ph109

vec.epilog.scalar.ph109:                          ; preds = %vec.epilog.scalar.ph109.preheader, %vec.epilog.scalar.ph109
  %i.bu = phi i16 [ %i.bv, %vec.epilog.scalar.ph109 ], [ %.ph248, %vec.epilog.scalar.ph109.preheader ]
  %.035.1.in = phi i32 [ %.035.1, %vec.epilog.scalar.ph109 ], [ %.035.1.in.ph, %vec.epilog.scalar.ph109.preheader ]
  %.035.1 = add nuw nsw i32 %.035.1.in, 1         ; 3 uses
  %i.bv = add i16 %i.bu, 2                        ; 2 uses
  %i.bw = zext nneg i32 %.035.1 to i64
  %i.bx = getelementptr inbounds nuw [2 x i8], ptr %i.a, i64 %i.bw
  store i16 %i.bv, ptr %i.bx, align 2, !tbaa !225
  %.not.1.not = icmp samesign ult i32 %.035.1, %i.n
  br i1 %.not.1.not, label %vec.epilog.scalar.ph109, label %.loopexit.1, !llvm.loop !210

.loopexit.1:                                      ; preds = %vec.epilog.scalar.ph109, %middle.block103, %vec.epilog.middle.block122, %.loopexit
  %.not33.2.not = icmp samesign ult i16 %i.m, %i.q
  br i1 %.not33.2.not, label %iter.check148, label %.loopexit.2

iter.check148:                                    ; preds = %.loopexit.1
  %.phi.trans.insert49 = zext nneg i16 %i.m to i64
  %.phi.trans.insert50 = getelementptr inbounds nuw [2 x i8], ptr %i.a, i64 %.phi.trans.insert49
  %.pre51 = load i16, ptr %.phi.trans.insert50, align 2, !tbaa !225 ; 5 uses
  %i.by = sub nsw i32 %i.r, %i.n                  ; 7 uses
  %min.iters.check127 = icmp ult i32 %i.by, 8
  br i1 %min.iters.check127, label %vec.epilog.scalar.ph149.preheader, label %vector.main.loop.iter.check128

vector.main.loop.iter.check128:                   ; preds = %iter.check148
  %min.iters.check129 = icmp ult i32 %i.by, 64
  br i1 %min.iters.check129, label %vec.epilog.ph152, label %vector.ph130

vector.ph130:                                     ; preds = %vector.main.loop.iter.check128
  %i.bz = and i32 %i.by, 56
  %n.vec131 = and i32 %i.by, -64                  ; 5 uses
  %i.ca = trunc nsw i32 %n.vec131 to i16
  %i.cb = shl nsw i16 %i.ca, 2
  %i.cc = add i16 %.pre51, %i.cb                  ; 2 uses
  %i.cd = add nsw i32 %n.vec131, %i.n
  %broadcast.splatinsert132 = insertelement <16 x i16> poison, i16 %.pre51, i64 0
  %broadcast.splat133 = shufflevector <16 x i16> %broadcast.splatinsert132, <16 x i16> poison, <16 x i32> zeroinitializer
  %induction134 = add <16 x i16> %broadcast.splat133, <i16 0, i16 4, i16 8, i16 12, i16 16, i16 20, i16 24, i16 28, i16 32, i16 36, i16 40, i16 44, i16 48, i16 52, i16 56, i16 60>
  br label %vector.body135

vector.body135:                                   ; preds = %vector.ph130, %vector.body135
  %index136 = phi i32 [ 0, %vector.ph130 ], [ %index.next141, %vector.body135 ] ; 2 uses
  %vec.ind137 = phi <16 x i16> [ %induction134, %vector.ph130 ], [ %vec.ind.next142, %vector.body135 ] ; 5 uses
  %i.ce = add nuw i32 %index136, %i.n
  %i.cf = add <16 x i16> %vec.ind137, splat (i16 4)
  %i.cg = add <16 x i16> %vec.ind137, splat (i16 68)
  %i.ch = add <16 x i16> %vec.ind137, splat (i16 132)
  %i.ci = add <16 x i16> %vec.ind137, splat (i16 196)
  %i.cj = sext i32 %i.ce to i64
  %i.ck = getelementptr inbounds nuw [2 x i8], ptr %i.a, i64 %i.cj ; 4 uses
  %i.cl = getelementptr inbounds nuw i8, ptr %i.ck, i64 2
  %i.cm = getelementptr inbounds nuw i8, ptr %i.ck, i64 34
  %i.cn = getelementptr inbounds nuw i8, ptr %i.ck, i64 66
  %i.co = getelementptr inbounds nuw i8, ptr %i.ck, i64 98
  store <16 x i16> %i.cf, ptr %i.cl, align 2, !tbaa !225
  store <16 x i16> %i.cg, ptr %i.cm, align 2, !tbaa !225
  store <16 x i16> %i.ch, ptr %i.cn, align 2, !tbaa !225
  store <16 x i16> %i.ci, ptr %i.co, align 2, !tbaa !225
  %index.next141 = add nuw i32 %index136, 64      ; 2 uses
  %vec.ind.next142 = add <16 x i16> %vec.ind137, splat (i16 256)
  %i.cp = icmp eq i32 %index.next141, %n.vec131
  br i1 %i.cp, label %middle.block143, label %vector.body135, !llvm.loop !211

middle.block143:                                  ; preds = %vector.body135
  %cmp.n144 = icmp eq i32 %i.by, %n.vec131
  br i1 %cmp.n144, label %.loopexit.2, label %vec.epilog.iter.check150

vec.epilog.iter.check150:                         ; preds = %middle.block143
  %min.epilog.iters.check151 = icmp eq i32 %i.bz, 0
  br i1 %min.epilog.iters.check151, label %vec.epilog.scalar.ph149.preheader, label %vec.epilog.ph152, !prof !228

vec.epilog.ph152:                                 ; preds = %vector.main.loop.iter.check128, %vec.epilog.iter.check150
  %vec.epilog.resume.val145 = phi i32 [ %n.vec131, %vec.epilog.iter.check150 ], [ 0, %vector.main.loop.iter.check128 ]
  %bc.resume.val146 = phi i16 [ %i.cc, %vec.epilog.iter.check150 ], [ %.pre51, %vector.main.loop.iter.check128 ]
  %n.vec153 = and i32 %i.by, -8                   ; 4 uses
  %i.cq = trunc nsw i32 %n.vec153 to i16
  %i.cr = shl nsw i16 %i.cq, 2
  %i.cs = add i16 %.pre51, %i.cr
  %i.ct = add nsw i32 %n.vec153, %i.n
  %broadcast.splatinsert154 = insertelement <8 x i16> poison, i16 %bc.resume.val146, i64 0
  %broadcast.splat155 = shufflevector <8 x i16> %broadcast.splatinsert154, <8 x i16> poison, <8 x i32> zeroinitializer
  %induction156 = add <8 x i16> %broadcast.splat155, <i16 0, i16 4, i16 8, i16 12, i16 16, i16 20, i16 24, i16 28>
  br label %vec.epilog.vector.body157

vec.epilog.vector.body157:                        ; preds = %vec.epilog.vector.body157, %vec.epilog.ph152
  %index158 = phi i32 [ %vec.epilog.resume.val145, %vec.epilog.ph152 ], [ %index.next160, %vec.epilog.vector.body157 ] ; 2 uses
  %vec.ind159 = phi <8 x i16> [ %induction156, %vec.epilog.ph152 ], [ %vec.ind.next161, %vec.epilog.vector.body157 ] ; 2 uses
  %i.cu = add nuw i32 %index158, %i.n
  %i.cv = add <8 x i16> %vec.ind159, splat (i16 4)
  %i.cw = sext i32 %i.cu to i64
  %i.cx = getelementptr inbounds nuw [2 x i8], ptr %i.a, i64 %i.cw
  %i.cy = getelementptr inbounds nuw i8, ptr %i.cx, i64 2
  store <8 x i16> %i.cv, ptr %i.cy, align 2, !tbaa !225
  %index.next160 = add nuw i32 %index158, 8       ; 2 uses
  %vec.ind.next161 = add <8 x i16> %vec.ind159, splat (i16 32)
  %i.cz = icmp eq i32 %index.next160, %n.vec153
  br i1 %i.cz, label %vec.epilog.middle.block162, label %vec.epilog.vector.body157, !llvm.loop !212

vec.epilog.middle.block162:                       ; preds = %vec.epilog.vector.body157
  %cmp.n163 = icmp eq i32 %i.by, %n.vec153
  br i1 %cmp.n163, label %.loopexit.2, label %vec.epilog.scalar.ph149.preheader

vec.epilog.scalar.ph149.preheader:                ; preds = %iter.check148, %vec.epilog.iter.check150, %vec.epilog.middle.block162
  %.ph247 = phi i16 [ %.pre51, %iter.check148 ], [ %i.cc, %vec.epilog.iter.check150 ], [ %i.cs, %vec.epilog.middle.block162 ]
  %.035.2.in.ph = phi i32 [ %i.n, %iter.check148 ], [ %i.cd, %vec.epilog.iter.check150 ], [ %i.ct, %vec.epilog.middle.block162 ]
  br label %vec.epilog.scalar.ph149

vec.epilog.scalar.ph149:                          ; preds = %vec.epilog.scalar.ph149.preheader, %vec.epilog.scalar.ph149
  %i.da = phi i16 [ %i.db, %vec.epilog.scalar.ph149 ], [ %.ph247, %vec.epilog.scalar.ph149.preheader ]
  %.035.2.in = phi i32 [ %.035.2, %vec.epilog.scalar.ph149 ], [ %.035.2.in.ph, %vec.epilog.scalar.ph149.preheader ]
  %.035.2 = add nuw nsw i32 %.035.2.in, 1         ; 3 uses
  %i.db = add i16 %i.da, 4                        ; 2 uses
  %i.dc = zext nneg i32 %.035.2 to i64
  %i.dd = getelementptr inbounds nuw [2 x i8], ptr %i.a, i64 %i.dc
  store i16 %i.db, ptr %i.dd, align 2, !tbaa !225
  %.not.2.not = icmp samesign ult i32 %.035.2, %i.r
  br i1 %.not.2.not, label %vec.epilog.scalar.ph149, label %.loopexit.2, !llvm.loop !213

.loopexit.2:                                      ; preds = %vec.epilog.scalar.ph149, %middle.block143, %vec.epilog.middle.block162, %.loopexit.1
  %.not33.3.not = icmp samesign ult i16 %i.q, %i.u
  br i1 %.not33.3.not, label %iter.check188, label %.loopexit.3

iter.check188:                                    ; preds = %.loopexit.2
  %.phi.trans.insert52 = zext nneg i16 %i.q to i64
  %.phi.trans.insert53 = getelementptr inbounds nuw [2 x i8], ptr %i.a, i64 %.phi.trans.insert52
  %.pre54 = load i16, ptr %.phi.trans.insert53, align 2, !tbaa !225 ; 5 uses
  %i.de = sub nsw i32 %i.v, %i.r                  ; 7 uses
  %min.iters.check167 = icmp ult i32 %i.de, 8
  br i1 %min.iters.check167, label %vec.epilog.scalar.ph189.preheader, label %vector.main.loop.iter.check168

vector.main.loop.iter.check168:                   ; preds = %iter.check188
  %min.iters.check169 = icmp ult i32 %i.de, 64
  br i1 %min.iters.check169, label %vec.epilog.ph192, label %vector.ph170

vector.ph170:                                     ; preds = %vector.main.loop.iter.check168
  %i.df = and i32 %i.de, 56
  %n.vec171 = and i32 %i.de, -64                  ; 5 uses
  %i.dg = trunc nsw i32 %n.vec171 to i16
  %i.dh = shl i16 %i.dg, 3
  %i.di = add i16 %.pre54, %i.dh                  ; 2 uses
  %i.dj = add nsw i32 %n.vec171, %i.r
  %broadcast.splatinsert172 = insertelement <16 x i16> poison, i16 %.pre54, i64 0
  %broadcast.splat173 = shufflevector <16 x i16> %broadcast.splatinsert172, <16 x i16> poison, <16 x i32> zeroinitializer
  %induction174 = add <16 x i16> %broadcast.splat173, <i16 0, i16 8, i16 16, i16 24, i16 32, i16 40, i16 48, i16 56, i16 64, i16 72, i16 80, i16 88, i16 96, i16 104, i16 112, i16 120>
  br label %vector.body175

vector.body175:                                   ; preds = %vector.ph170, %vector.body175
  %index176 = phi i32 [ 0, %vector.ph170 ], [ %index.next181, %vector.body175 ] ; 2 uses
  %vec.ind177 = phi <16 x i16> [ %induction174, %vector.ph170 ], [ %vec.ind.next182, %vector.body175 ] ; 5 uses
  %i.dk = add nuw i32 %index176, %i.r
  %i.dl = add <16 x i16> %vec.ind177, splat (i16 8)
  %i.dm = add <16 x i16> %vec.ind177, splat (i16 136)
  %i.dn = add <16 x i16> %vec.ind177, splat (i16 264)
  %i.do = add <16 x i16> %vec.ind177, splat (i16 392)
  %i.dp = sext i32 %i.dk to i64
  %i.dq = getelementptr inbounds nuw [2 x i8], ptr %i.a, i64 %i.dp ; 4 uses
  %i.dr = getelementptr inbounds nuw i8, ptr %i.dq, i64 2
  %i.ds = getelementptr inbounds nuw i8, ptr %i.dq, i64 34
  %i.dt = getelementptr inbounds nuw i8, ptr %i.dq, i64 66
  %i.du = getelementptr inbounds nuw i8, ptr %i.dq, i64 98
  store <16 x i16> %i.dl, ptr %i.dr, align 2, !tbaa !225
  store <16 x i16> %i.dm, ptr %i.ds, align 2, !tbaa !225
  store <16 x i16> %i.dn, ptr %i.dt, align 2, !tbaa !225
  store <16 x i16> %i.do, ptr %i.du, align 2, !tbaa !225
  %index.next181 = add nuw i32 %index176, 64      ; 2 uses
  %vec.ind.next182 = add <16 x i16> %vec.ind177, splat (i16 512)
  %i.dv = icmp eq i32 %index.next181, %n.vec171
  br i1 %i.dv, label %middle.block183, label %vector.body175, !llvm.loop !214

middle.block183:                                  ; preds = %vector.body175
  %cmp.n184 = icmp eq i32 %i.de, %n.vec171
  br i1 %cmp.n184, label %.loopexit.3, label %vec.epilog.iter.check190

vec.epilog.iter.check190:                         ; preds = %middle.block183
  %min.epilog.iters.check191 = icmp eq i32 %i.df, 0
  br i1 %min.epilog.iters.check191, label %vec.epilog.scalar.ph189.preheader, label %vec.epilog.ph192, !prof !228

vec.epilog.ph192:                                 ; preds = %vector.main.loop.iter.check168, %vec.epilog.iter.check190
  %vec.epilog.resume.val185 = phi i32 [ %n.vec171, %vec.epilog.iter.check190 ], [ 0, %vector.main.loop.iter.check168 ]
  %bc.resume.val186 = phi i16 [ %i.di, %vec.epilog.iter.check190 ], [ %.pre54, %vector.main.loop.iter.check168 ]
  %n.vec193 = and i32 %i.de, -8                   ; 4 uses
  %i.dw = trunc nsw i32 %n.vec193 to i16
  %i.dx = shl i16 %i.dw, 3
  %i.dy = add i16 %.pre54, %i.dx
  %i.dz = add nsw i32 %n.vec193, %i.r
  %broadcast.splatinsert194 = insertelement <8 x i16> poison, i16 %bc.resume.val186, i64 0
  %broadcast.splat195 = shufflevector <8 x i16> %broadcast.splatinsert194, <8 x i16> poison, <8 x i32> zeroinitializer
  %induction196 = add <8 x i16> %broadcast.splat195, <i16 0, i16 8, i16 16, i16 24, i16 32, i16 40, i16 48, i16 56>
  br label %vec.epilog.vector.body197

vec.epilog.vector.body197:                        ; preds = %vec.epilog.vector.body197, %vec.epilog.ph192
  %index198 = phi i32 [ %vec.epilog.resume.val185, %vec.epilog.ph192 ], [ %index.next200, %vec.epilog.vector.body197 ] ; 2 uses
  %vec.ind199 = phi <8 x i16> [ %induction196, %vec.epilog.ph192 ], [ %vec.ind.next201, %vec.epilog.vector.body197 ] ; 2 uses
  %i.ea = add nuw i32 %index198, %i.r
  %i.eb = add <8 x i16> %vec.ind199, splat (i16 8)
  %i.ec = sext i32 %i.ea to i64
  %i.ed = getelementptr inbounds nuw [2 x i8], ptr %i.a, i64 %i.ec
  %i.ee = getelementptr inbounds nuw i8, ptr %i.ed, i64 2
  store <8 x i16> %i.eb, ptr %i.ee, align 2, !tbaa !225
  %index.next200 = add nuw i32 %index198, 8       ; 2 uses
  %vec.ind.next201 = add <8 x i16> %vec.ind199, splat (i16 64)
  %i.ef = icmp eq i32 %index.next200, %n.vec193
  br i1 %i.ef, label %vec.epilog.middle.block202, label %vec.epilog.vector.body197, !llvm.loop !215

vec.epilog.middle.block202:                       ; preds = %vec.epilog.vector.body197
  %cmp.n203 = icmp eq i32 %i.de, %n.vec193
  br i1 %cmp.n203, label %.loopexit.3, label %vec.epilog.scalar.ph189.preheader

vec.epilog.scalar.ph189.preheader:                ; preds = %iter.check188, %vec.epilog.iter.check190, %vec.epilog.middle.block202
  %.ph246 = phi i16 [ %.pre54, %iter.check188 ], [ %i.di, %vec.epilog.iter.check190 ], [ %i.dy, %vec.epilog.middle.block202 ]
  %.035.3.in.ph = phi i32 [ %i.r, %iter.check188 ], [ %i.dj, %vec.epilog.iter.check190 ], [ %i.dz, %vec.epilog.middle.block202 ]
  br label %vec.epilog.scalar.ph189

vec.epilog.scalar.ph189:                          ; preds = %vec.epilog.scalar.ph189.preheader, %vec.epilog.scalar.ph189
  %i.eg = phi i16 [ %i.eh, %vec.epilog.scalar.ph189 ], [ %.ph246, %vec.epilog.scalar.ph189.preheader ]
  %.035.3.in = phi i32 [ %.035.3, %vec.epilog.scalar.ph189 ], [ %.035.3.in.ph, %vec.epilog.scalar.ph189.preheader ]
  %.035.3 = add nuw nsw i32 %.035.3.in, 1         ; 3 uses
  %i.eh = add i16 %i.eg, 8                        ; 2 uses
  %i.ei = zext nneg i32 %.035.3 to i64
  %i.ej = getelementptr inbounds nuw [2 x i8], ptr %i.a, i64 %i.ei
  store i16 %i.eh, ptr %i.ej, align 2, !tbaa !225
  %.not.3.not = icmp samesign ult i32 %.035.3, %i.v
  br i1 %.not.3.not, label %vec.epilog.scalar.ph189, label %.loopexit.3, !llvm.loop !216

.loopexit.3:                                      ; preds = %vec.epilog.scalar.ph189, %middle.block183, %vec.epilog.middle.block202, %.loopexit.2
  %.not33.4 = icmp eq i16 %i.u, 4095
  br i1 %.not33.4, label %.loopexit.4, label %iter.check228

iter.check228:                                    ; preds = %.loopexit.3
  %.phi.trans.insert55 = zext nneg i16 %i.u to i64
  %.phi.trans.insert56 = getelementptr inbounds nuw [2 x i8], ptr %i.a, i64 %.phi.trans.insert55
  %.pre57 = load i16, ptr %.phi.trans.insert56, align 2, !tbaa !225 ; 5 uses
  %umax = tail call i32 @llvm.umax.i32(i32 %i.v, i32 4094)
  %2 = add nuw nsw i32 %umax, 1
  %3 = sub nsw i32 %2, %i.v                       ; 7 uses
  %min.iters.check207 = icmp ult i32 %3, 8
  br i1 %min.iters.check207, label %vec.epilog.scalar.ph229.preheader, label %vector.main.loop.iter.check208

vector.main.loop.iter.check208:                   ; preds = %iter.check228
  %min.iters.check209 = icmp ult i32 %3, 64
  br i1 %min.iters.check209, label %vec.epilog.ph232, label %vector.ph210

vector.ph210:                                     ; preds = %vector.main.loop.iter.check208
  %i.ek = and i32 %3, 56
  %n.vec211 = and i32 %3, -64                     ; 5 uses
  %i.el = trunc nsw i32 %n.vec211 to i16
  %i.em = shl i16 %i.el, 4
  %i.en = add i16 %.pre57, %i.em                  ; 2 uses
  %i.eo = add nsw i32 %n.vec211, %i.v
  %broadcast.splatinsert212 = insertelement <16 x i16> poison, i16 %.pre57, i64 0
  %broadcast.splat213 = shufflevector <16 x i16> %broadcast.splatinsert212, <16 x i16> poison, <16 x i32> zeroinitializer
  %induction214 = add <16 x i16> %broadcast.splat213, <i16 0, i16 16, i16 32, i16 48, i16 64, i16 80, i16 96, i16 112, i16 128, i16 144, i16 160, i16 176, i16 192, i16 208, i16 224, i16 240>
  br label %vector.body215

vector.body215:                                   ; preds = %vector.ph210, %vector.body215
  %index216 = phi i32 [ 0, %vector.ph210 ], [ %index.next221, %vector.body215 ] ; 2 uses
  %vec.ind217 = phi <16 x i16> [ %induction214, %vector.ph210 ], [ %vec.ind.next222, %vector.body215 ] ; 5 uses
  %i.ep = add nuw i32 %index216, %i.v
  %i.eq = add <16 x i16> %vec.ind217, splat (i16 16)
  %i.er = add <16 x i16> %vec.ind217, splat (i16 272)
  %i.es = add <16 x i16> %vec.ind217, splat (i16 528)
  %i.et = add <16 x i16> %vec.ind217, splat (i16 784)
  %i.eu = sext i32 %i.ep to i64
  %i.ev = getelementptr inbounds nuw [2 x i8], ptr %i.a, i64 %i.eu ; 4 uses
  %i.ew = getelementptr inbounds nuw i8, ptr %i.ev, i64 2
  %i.ex = getelementptr inbounds nuw i8, ptr %i.ev, i64 34
  %i.ey = getelementptr inbounds nuw i8, ptr %i.ev, i64 66
  %i.ez = getelementptr inbounds nuw i8, ptr %i.ev, i64 98
  store <16 x i16> %i.eq, ptr %i.ew, align 2, !tbaa !225
  store <16 x i16> %i.er, ptr %i.ex, align 2, !tbaa !225
  store <16 x i16> %i.es, ptr %i.ey, align 2, !tbaa !225
  store <16 x i16> %i.et, ptr %i.ez, align 2, !tbaa !225
  %index.next221 = add nuw i32 %index216, 64      ; 2 uses
  %vec.ind.next222 = add <16 x i16> %vec.ind217, splat (i16 1024)
  %i.fa = icmp eq i32 %index.next221, %n.vec211
  br i1 %i.fa, label %middle.block223, label %vector.body215, !llvm.loop !217

middle.block223:                                  ; preds = %vector.body215
  %cmp.n224 = icmp eq i32 %3, %n.vec211
  br i1 %cmp.n224, label %.loopexit.4, label %vec.epilog.iter.check230

vec.epilog.iter.check230:                         ; preds = %middle.block223
  %min.epilog.iters.check231 = icmp eq i32 %i.ek, 0
  br i1 %min.epilog.iters.check231, label %vec.epilog.scalar.ph229.preheader, label %vec.epilog.ph232, !prof !228

vec.epilog.ph232:                                 ; preds = %vector.main.loop.iter.check208, %vec.epilog.iter.check230
  %vec.epilog.resume.val225 = phi i32 [ %n.vec211, %vec.epilog.iter.check230 ], [ 0, %vector.main.loop.iter.check208 ]
  %bc.resume.val226 = phi i16 [ %i.en, %vec.epilog.iter.check230 ], [ %.pre57, %vector.main.loop.iter.check208 ]
  %n.vec233 = and i32 %3, -8                      ; 4 uses
  %i.fb = trunc nsw i32 %n.vec233 to i16
  %i.fc = shl i16 %i.fb, 4
  %i.fd = add i16 %.pre57, %i.fc
  %i.fe = add nsw i32 %n.vec233, %i.v
  %broadcast.splatinsert234 = insertelement <8 x i16> poison, i16 %bc.resume.val226, i64 0
  %broadcast.splat235 = shufflevector <8 x i16> %broadcast.splatinsert234, <8 x i16> poison, <8 x i32> zeroinitializer
  %induction236 = add <8 x i16> %broadcast.splat235, <i16 0, i16 16, i16 32, i16 48, i16 64, i16 80, i16 96, i16 112>
  br label %vec.epilog.vector.body237

vec.epilog.vector.body237:                        ; preds = %vec.epilog.vector.body237, %vec.epilog.ph232
  %index238 = phi i32 [ %vec.epilog.resume.val225, %vec.epilog.ph232 ], [ %index.next240, %vec.epilog.vector.body237 ] ; 2 uses
  %vec.ind239 = phi <8 x i16> [ %induction236, %vec.epilog.ph232 ], [ %vec.ind.next241, %vec.epilog.vector.body237 ] ; 2 uses
  %i.ff = add nuw i32 %index238, %i.v
  %i.fg = add <8 x i16> %vec.ind239, splat (i16 16)
  %i.fh = sext i32 %i.ff to i64
  %i.fi = getelementptr inbounds nuw [2 x i8], ptr %i.a, i64 %i.fh
  %i.fj = getelementptr inbounds nuw i8, ptr %i.fi, i64 2
  store <8 x i16> %i.fg, ptr %i.fj, align 2, !tbaa !225
  %index.next240 = add nuw i32 %index238, 8       ; 2 uses
  %vec.ind.next241 = add <8 x i16> %vec.ind239, splat (i16 128)
  %i.fk = icmp eq i32 %index.next240, %n.vec233
  br i1 %i.fk, label %vec.epilog.middle.block242, label %vec.epilog.vector.body237, !llvm.loop !218

vec.epilog.middle.block242:                       ; preds = %vec.epilog.vector.body237
  %cmp.n243 = icmp eq i32 %3, %n.vec233
  br i1 %cmp.n243, label %.loopexit.4, label %vec.epilog.scalar.ph229.preheader

vec.epilog.scalar.ph229.preheader:                ; preds = %iter.check228, %vec.epilog.iter.check230, %vec.epilog.middle.block242
  %.ph = phi i16 [ %.pre57, %iter.check228 ], [ %i.en, %vec.epilog.iter.check230 ], [ %i.fd, %vec.epilog.middle.block242 ]
  %.035.4.in.ph = phi i32 [ %i.v, %iter.check228 ], [ %i.eo, %vec.epilog.iter.check230 ], [ %i.fe, %vec.epilog.middle.block242 ]
  br label %vec.epilog.scalar.ph229

vec.epilog.scalar.ph229:                          ; preds = %vec.epilog.scalar.ph229.preheader, %vec.epilog.scalar.ph229
  %i.fl = phi i16 [ %i.fm, %vec.epilog.scalar.ph229 ], [ %.ph, %vec.epilog.scalar.ph229.preheader ]
  %.035.4.in = phi i32 [ %.035.4, %vec.epilog.scalar.ph229 ], [ %.035.4.in.ph, %vec.epilog.scalar.ph229.preheader ] ; 2 uses
  %.035.4 = add nuw nsw i32 %.035.4.in, 1         ; 2 uses
  %i.fm = add i16 %i.fl, 16                       ; 2 uses
  %i.fn = zext nneg i32 %.035.4 to i64
  %i.fo = getelementptr inbounds nuw [2 x i8], ptr %i.a, i64 %i.fn
  store i16 %i.fm, ptr %i.fo, align 2, !tbaa !225
  %.not.4 = icmp samesign ugt i32 %.035.4.in, 4093
  br i1 %.not.4, label %.loopexit.4, label %vec.epilog.scalar.ph229, !llvm.loop !219

.loopexit.4:                                      ; preds = %vec.epilog.scalar.ph229, %middle.block223, %vec.epilog.middle.block242, %.loopexit.3
  ret void

iter.check:                                       ; preds = %.preheader29
  %.pre = load i16, ptr %i.a, align 2, !tbaa !225 ; 5 uses
  %min.iters.check = icmp samesign ult i16 %i.i, 8
  br i1 %min.iters.check, label %vec.epilog.scalar.ph.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check63 = icmp samesign ult i16 %i.i, 64
  br i1 %min.iters.check63, label %vec.epilog.ph, label %vector.ph64

vector.ph64:                                      ; preds = %vector.main.loop.iter.check
  %i.fp = and i32 %i.j, 56
  %n.vec = and i32 %i.j, 4032                     ; 5 uses
  %i.fq = trunc nuw nsw i32 %n.vec to i16
  %i.fr = add i16 %.pre, %i.fq                    ; 2 uses
  %i.fs = or disjoint i32 %n.vec, 1
  %broadcast.splatinsert = insertelement <16 x i16> poison, i16 %.pre, i64 0
  %broadcast.splat = shufflevector <16 x i16> %broadcast.splatinsert, <16 x i16> poison, <16 x i32> zeroinitializer
  %induction = add <16 x i16> %broadcast.splat, <i16 0, i16 1, i16 2, i16 3, i16 4, i16 5, i16 6, i16 7, i16 8, i16 9, i16 10, i16 11, i16 12, i16 13, i16 14, i16 15>
  br label %vector.body65

vector.body65:                                    ; preds = %vector.ph64, %vector.body65
  %index66 = phi i32 [ 0, %vector.ph64 ], [ %index.next71, %vector.body65 ] ; 2 uses
  %vec.ind67 = phi <16 x i16> [ %induction, %vector.ph64 ], [ %vec.ind.next72, %vector.body65 ] ; 5 uses
  %i.ft = add <16 x i16> %vec.ind67, splat (i16 1)
  %i.fu = add <16 x i16> %vec.ind67, splat (i16 17)
  %i.fv = add <16 x i16> %vec.ind67, splat (i16 33)
  %i.fw = add <16 x i16> %vec.ind67, splat (i16 49)
  %i.fx = sext i32 %index66 to i64
  %i.fy = getelementptr inbounds nuw [2 x i8], ptr %i.a, i64 %i.fx ; 4 uses
  %i.fz = getelementptr inbounds nuw i8, ptr %i.fy, i64 2
  %i.ga = getelementptr inbounds nuw i8, ptr %i.fy, i64 34
  %i.gb = getelementptr inbounds nuw i8, ptr %i.fy, i64 66
  %i.gc = getelementptr inbounds nuw i8, ptr %i.fy, i64 98
  store <16 x i16> %i.ft, ptr %i.fz, align 2, !tbaa !225
  store <16 x i16> %i.fu, ptr %i.ga, align 2, !tbaa !225
  store <16 x i16> %i.fv, ptr %i.gb, align 2, !tbaa !225
  store <16 x i16> %i.fw, ptr %i.gc, align 2, !tbaa !225
  %index.next71 = add nuw i32 %index66, 64        ; 2 uses
  %vec.ind.next72 = add <16 x i16> %vec.ind67, splat (i16 64)
  %i.gd = icmp eq i32 %index.next71, %n.vec
  br i1 %i.gd, label %middle.block73, label %vector.body65, !llvm.loop !220

middle.block73:                                   ; preds = %vector.body65
  %cmp.n = icmp eq i32 %n.vec, %i.j
  br i1 %cmp.n, label %.loopexit, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block73
  %min.epilog.iters.check = icmp eq i32 %i.fp, 0
  br i1 %min.epilog.iters.check, label %vec.epilog.scalar.ph.preheader, label %vec.epilog.ph, !prof !228

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i32 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %bc.resume.val = phi i16 [ %i.fr, %vec.epilog.iter.check ], [ %.pre, %vector.main.loop.iter.check ]
  %n.vec75 = and i32 %i.j, 4088                   ; 4 uses
  %i.ge = trunc nuw nsw i32 %n.vec75 to i16
  %i.gf = add i16 %.pre, %i.ge
  %i.gg = or disjoint i32 %n.vec75, 1
  %broadcast.splatinsert76 = insertelement <8 x i16> poison, i16 %bc.resume.val, i64 0
  %broadcast.splat77 = shufflevector <8 x i16> %broadcast.splatinsert76, <8 x i16> poison, <8 x i32> zeroinitializer
  %induction78 = add <8 x i16> %broadcast.splat77, <i16 0, i16 1, i16 2, i16 3, i16 4, i16 5, i16 6, i16 7>
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index79 = phi i32 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next81, %vec.epilog.vector.body ] ; 2 uses
  %vec.ind80 = phi <8 x i16> [ %induction78, %vec.epilog.ph ], [ %vec.ind.next82, %vec.epilog.vector.body ] ; 2 uses
  %i.gh = add <8 x i16> %vec.ind80, splat (i16 1)
  %i.gi = sext i32 %index79 to i64
  %i.gj = getelementptr inbounds nuw [2 x i8], ptr %i.a, i64 %i.gi
  %i.gk = getelementptr inbounds nuw i8, ptr %i.gj, i64 2
  store <8 x i16> %i.gh, ptr %i.gk, align 2, !tbaa !225
  %index.next81 = add nuw i32 %index79, 8         ; 2 uses
  %vec.ind.next82 = add <8 x i16> %vec.ind80, splat (i16 8)
  %i.gl = icmp eq i32 %index.next81, %n.vec75
  br i1 %i.gl, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !221

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n83 = icmp eq i32 %n.vec75, %i.j
  br i1 %cmp.n83, label %.loopexit, label %vec.epilog.scalar.ph.preheader

vec.epilog.scalar.ph.preheader:                   ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.ph249 = phi i16 [ %.pre, %iter.check ], [ %i.fr, %vec.epilog.iter.check ], [ %i.gf, %vec.epilog.middle.block ]
  %.035.ph = phi i32 [ 1, %iter.check ], [ %i.fs, %vec.epilog.iter.check ], [ %i.gg, %vec.epilog.middle.block ]
  br label %vec.epilog.scalar.ph

vec.epilog.scalar.ph:                             ; preds = %vec.epilog.scalar.ph.preheader, %vec.epilog.scalar.ph
  %i.gm = phi i16 [ %i.gn, %vec.epilog.scalar.ph ], [ %.ph249, %vec.epilog.scalar.ph.preheader ]
  %.035 = phi i32 [ %.0, %vec.epilog.scalar.ph ], [ %.035.ph, %vec.epilog.scalar.ph.preheader ] ; 3 uses
  %i.gn = add i16 %i.gm, 1                        ; 2 uses
  %i.go = zext nneg i32 %.035 to i64
  %i.gp = getelementptr inbounds nuw [2 x i8], ptr %i.a, i64 %i.go
  store i16 %i.gn, ptr %i.gp, align 2, !tbaa !225
  %.0 = add nuw nsw i32 %.035, 1
  %.not.not = icmp samesign ult i32 %.035, %i.j
  br i1 %.not.not, label %vec.epilog.scalar.ph, label %.loopexit, !llvm.loop !222

_ZNSt6vectorItSaItEED2Ev.exit:                    ; preds = %bb.g, %bb.c
  %.pn = phi { ptr, i32 } [ %i.aq, %bb.g ], [ %i.g, %bb.c ]
  tail call void @_ZdlPvm(ptr noundef nonnull %i.a, i64 noundef 32770) #28
  resume { ptr, i32 } %.pn
}

declare noundef zeroext i16 @_ZNK8rawspeed9TiffEntry6getU16Ej(ptr noundef nonnull align 8 dereferenceable(48), i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress uwtable
define hidden void @_ZN8rawspeed10ArwDecoder17decodeRawInternalEv(ptr dead_on_unwind noalias nofree writable writeonly sret(%"class.rawspeed::RawImage") align 8 captures(none) %0, ptr noundef nonnull align 8 dereferenceable(112) %1) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.std::unique_ptr.71", align 8 ; 5 uses
  %3 = alloca %"class.std::vector.85", align 16   ; 14 uses
  %4 = alloca %"class.std::vector.85", align 16   ; 8 uses
  %5 = alloca %"class.std::__cxx11::basic_string", align 8 ; 7 uses
  %6 = alloca %"class.std::vector.79", align 8    ; 10 uses
  %7 = alloca %"class.rawspeed::RawImageCurveGuard", align 8 ; 8 uses
  %8 = alloca %"class.rawspeed::SonyArw1Decompressor", align 8 ; 7 uses
  %9 = alloca %"class.rawspeed::RawImage", align 16 ; 4 uses
  %10 = alloca %"class.rawspeed::ByteStream", align 8 ; 4 uses
  %11 = alloca %"class.rawspeed::ByteStream", align 8 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #27
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 96 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !30
  call void @_ZNK8rawspeed7TiffIFD14getIFDsWithTagENS_7TiffTagE(ptr dead_on_unwind nonnull writable sret(%"class.std::vector.85") align 8 %3, ptr noundef nonnull align 8 dereferenceable(104) %i.b, i16 noundef zeroext 273)
  %i.c = load ptr, ptr %3, align 16, !tbaa !231   ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !231
  %i.f = icmp eq ptr %i.c, %i.e
  br i1 %i.f, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  invoke void @_ZN8rawspeed10ArwDecoder21decodeTransitionalArwEv(ptr dead_on_unwind writable sret(%"class.rawspeed::RawImage") align 8 %0, ptr noundef nonnull align 8 dereferenceable(112) %1)
          to label %_ZN8rawspeed8RawImageC2ERKS0_.exit unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.g = landingpad { ptr, i32 }
          cleanup
  br label %bb.df

bb.d:                                             ; preds = %bb.a
  %i.h = load ptr, ptr %i.c, align 8, !tbaa !72   ; 9 uses
  %i.i = invoke noundef ptr @_ZNK8rawspeed7TiffIFD8getEntryENS_7TiffTagE(ptr noundef nonnull align 8 dereferenceable(104) %i.h, i16 noundef zeroext 259)
          to label %bb.e unwind label %bb.l

bb.e:                                             ; preds = %bb.d
  %i.j = invoke noundef i32 @_ZNK8rawspeed9TiffEntry6getU32Ej(ptr noundef nonnull align 8 dereferenceable(48) %i.i, i32 noundef 0)
          to label %bb.f unwind label %bb.l       ; 2 uses

bb.f:                                             ; preds = %bb.e
  switch i32 %i.j, label %bb.r [
    i32 1, label %bb.g
    i32 7, label %bb.m
    i32 32767, label %bb.t
  ]

bb.g:                                             ; preds = %bb.f
  invoke void @_ZNK8rawspeed10ArwDecoder18DecodeUncompressedEPKNS_7TiffIFDE(ptr noundef nonnull align 8 dereferenceable(112) %1, ptr noundef nonnull %i.h)
          to label %bb.h unwind label %bb.l

bb.h:                                             ; preds = %bb.g
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !45   ; 2 uses
  %i.n = load <2 x ptr>, ptr %i.k, align 8, !tbaa !59
  store <2 x ptr> %i.n, ptr %0, align 8, !tbaa !59
  %.not.i.i.i.i = icmp eq ptr %i.m, null
  br i1 %.not.i.i.i.i, label %_ZN8rawspeed8RawImageC2ERKS0_.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.o = getelementptr inbounds nuw i8, ptr %i.m, i64 8 ; 3 uses
  %i.p = load i8, ptr @__libc_single_threaded, align 1, !tbaa !28
  %.not.i.i.i.i.i = icmp eq i8 %i.p, 0
  br i1 %.not.i.i.i.i.i, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.q = load i32, ptr %i.o, align 4, !tbaa !34
  %i.r = add nsw i32 %i.q, 1
  store i32 %i.r, ptr %i.o, align 4, !tbaa !34
  br label %_ZN8rawspeed8RawImageC2ERKS0_.exit

bb.k:                                             ; preds = %bb.i
  %i.s = atomicrmw volatile add ptr %i.o, i32 1 acq_rel, align 4 ; 0 uses
  br label %_ZN8rawspeed8RawImageC2ERKS0_.exit
end_hunk_0
begin_hunk_1_@_ZNK8rawspeed11NORangesSetINS_6BufferEE44rangeIsOverlappingExistingElementOfSortedSetERKS1_:bb.a
  tail call void @llvm.assume(i1 %i.an)
  %i.ao = icmp uge ptr %i.aj, %i.ak
  %i.ap = zext nneg i32 %i.am to i64
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ak, i64 %i.ap
  %i.ar = icmp ugt ptr %i.aq, %i.aj
  %.0.i.i = select i1 %i.ao, i1 %i.ar, i1 false
  br i1 %.0.i.i, label %_ZN8rawspeed13RangesOverlapINS_6BufferEEEbRKT_S4_.exit14, label %.critedge

.critedge:                                        ; preds = %_ZSt15partition_pointISt23_Rb_tree_const_iteratorIN8rawspeed6BufferEEZNKS1_11NORangesSetIS2_E44rangeIsOverlappingExistingElementOfSortedSetERKS2_EUlS7_E_ET_S9_S9_T0_.exit, %_ZN8rawspeed13RangesOverlapINS_6BufferEEEbRKT_S4_.exit
  %i.as = icmp eq ptr %.sroa.011.0.lcssa.i, %i.e
  br i1 %i.as, label %_ZN8rawspeed13RangesOverlapINS_6BufferEEEbRKT_S4_.exit14, label %.lr.ph.i8.preheader

.lr.ph.i8.preheader:                              ; preds = %.critedge
  %i.at = tail call noundef ptr @_ZSt18_Rb_tree_decrementPKSt18_Rb_tree_node_base(ptr noundef %.sroa.011.0.lcssa.i) #31
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 32 ; 3 uses
  %i.av = icmp eq ptr %1, %i.au
  br i1 %i.av, label %_ZN8rawspeed13RangesOverlapINS_6BufferEEEbRKT_S4_.exit14, label %bb.h

bb.h:                                             ; preds = %.lr.ph.i8.preheader
  %i.aw = icmp sgt i32 %.sroa.2.0.copyload, -1
  tail call void @llvm.assume(i1 %i.aw)
  %i.ax = load ptr, ptr %i.au, align 8, !tbaa !32 ; 4 uses
  %i.ay = icmp eq ptr %.sroa.01.0.copyload, %i.ax
  br i1 %i.ay, label %_ZN8rawspeed13RangesOverlapINS_6BufferEEEbRKT_S4_.exit14, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.az = icmp ult ptr %i.ax, %.sroa.01.0.copyload ; 3 uses
  %spec.select6.i.i11 = select i1 %i.az, ptr %i.au, ptr %1
  %i.ba = select i1 %i.az, ptr %.sroa.01.0.copyload, ptr %i.ax ; 2 uses
  %i.bb = select i1 %i.az, ptr %i.ax, ptr %.sroa.01.0.copyload ; 2 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %spec.select6.i.i11, i64 8
  %i.bd = load i32, ptr %i.bc, align 8, !tbaa !33 ; 2 uses
  %i.be = icmp sgt i32 %i.bd, -1
  tail call void @llvm.assume(i1 %i.be)
  %i.bf = icmp uge ptr %i.ba, %i.bb
  %i.bg = zext nneg i32 %i.bd to i64
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bb, i64 %i.bg
  %i.bi = icmp ugt ptr %i.bh, %i.ba
  %.0.i.i12 = select i1 %i.bf, i1 %i.bi, i1 false
  br label %_ZN8rawspeed13RangesOverlapINS_6BufferEEEbRKT_S4_.exit14

_ZN8rawspeed13RangesOverlapINS_6BufferEEEbRKT_S4_.exit14: ; preds = %bb.g, %bb.f, %_ZN8rawspeed13RangesOverlapINS_6BufferEEEbRKT_S4_.exit, %.critedge, %.lr.ph.i8.preheader, %bb.h, %bb.i, %bb.a
  %.1 = phi i1 [ false, %bb.a ], [ true, %bb.h ], [ true, %_ZN8rawspeed13RangesOverlapINS_6BufferEEEbRKT_S4_.exit ], [ false, %.critedge ], [ %.0.i.i12, %bb.i ], [ true, %.lr.ph.i8.preheader ], [ true, %bb.f ], [ true, %bb.g ]
  ret i1 %.1
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(read)
declare noundef ptr @_ZSt18_Rb_tree_decrementPKSt18_Rb_tree_node_base(ptr noundef) local_unnamed_addr #6

; Function Attrs: mustprogress nofree nounwind willreturn memory(read)
declare noundef ptr @_ZSt18_Rb_tree_incrementPKSt18_Rb_tree_node_base(ptr noundef) local_unnamed_addr #6

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden { ptr, i8 } @_ZNSt8_Rb_treeIN8rawspeed6BufferES1_St9_IdentityIS1_ESt4lessIS1_ESaIS1_EE16_M_insert_uniqueIRKS1_EESt4pairISt17_Rb_tree_iteratorIS1_EbEOT_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 8 dereferenceable(12) %1) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %.02729.i = load ptr, ptr %i.a, align 8, !tbaa !66 ; 2 uses
  %.not30.i = icmp eq ptr %.02729.i, null
  br i1 %.not30.i, label %._crit_edge.thread.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.a
  %.sroa.01.0.copyload.i.i = load ptr, ptr %1, align 8, !tbaa !205 ; 4 uses
  %.sroa.22.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.sroa.22.0.copyload.i.i = load i32, ptr %.sroa.22.0..sroa_idx.i.i, align 8, !tbaa !34 ; 2 uses
  %i.c = icmp sgt i32 %.sroa.22.0.copyload.i.i, -1
  tail call void @llvm.assume(i1 %i.c)
  %i.d = zext nneg i32 %.sroa.22.0.copyload.i.i to i64 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %.sroa.01.0.copyload.i.i, i64 %i.d
  br label %bb.b

bb.b:                                             ; preds = %bb.b, %.lr.ph.i
  %.02731.i = phi ptr [ %.02729.i, %.lr.ph.i ], [ %.027.i, %bb.b ] ; 6 uses
  %i.f = getelementptr inbounds nuw i8, ptr %.02731.i, i64 32
  %.sroa.0.0.copyload.i.i = load ptr, ptr %i.f, align 8, !tbaa !205 ; 4 uses
  %.sroa.2.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %.02731.i, i64 40
  %.sroa.2.0.copyload.i.i = load i32, ptr %.sroa.2.0..sroa_idx.i.i, align 8, !tbaa !34 ; 2 uses
  %i.g = icmp sgt i32 %.sroa.2.0.copyload.i.i, -1
  tail call void @llvm.assume(i1 %i.g)
  %i.h = zext nneg i32 %.sroa.2.0.copyload.i.i to i64 ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i, i64 %i.h
  %i.j = icmp ult ptr %.sroa.01.0.copyload.i.i, %.sroa.0.0.copyload.i.i
  %i.k = icmp eq ptr %.sroa.01.0.copyload.i.i, %.sroa.0.0.copyload.i.i
  %.not.i.i.i = icmp ult ptr %i.e, %i.i
  %i.l = select i1 %i.k, i1 %.not.i.i.i, i1 %i.j  ; 2 uses
  %.in.v.i = select i1 %i.l, i64 16, i64 24
  %.in.i = getelementptr inbounds nuw i8, ptr %.02731.i, i64 %.in.v.i
  %.027.i = load ptr, ptr %.in.i, align 8, !tbaa !66 ; 2 uses
  %.not.i = icmp eq ptr %.027.i, null
  br i1 %.not.i, label %._crit_edge.i, label %bb.b, !llvm.loop !299

._crit_edge.i:                                    ; preds = %bb.b
  br i1 %i.l, label %._crit_edge.thread.i, label %bb.d

._crit_edge.thread.i:                             ; preds = %._crit_edge.i, %bb.a
  %.026.lcssa36.i = phi ptr [ %.02731.i, %._crit_edge.i ], [ %i.b, %bb.a ] ; 4 uses
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !174
  %i.o = icmp eq ptr %.026.lcssa36.i, %i.n
  br i1 %i.o, label %select.unfold, label %bb.c

bb.c:                                             ; preds = %._crit_edge.thread.i
  %i.p = tail call noundef ptr @_ZSt18_Rb_tree_decrementPSt18_Rb_tree_node_base(ptr noundef nonnull %.026.lcssa36.i) #31 ; 3 uses
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %i.p, i64 32
  %.sroa.01.0.copyload.i5.i.pre = load ptr, ptr %.phi.trans.insert, align 8, !tbaa !205
  %.sroa.22.0..sroa_idx.i6.i.phi.trans.insert = getelementptr inbounds nuw i8, ptr %i.p, i64 40
  %.sroa.22.0.copyload.i7.i.pre = load i32, ptr %.sroa.22.0..sroa_idx.i6.i.phi.trans.insert, align 8, !tbaa !34
  %.sroa.0.0.copyload.i8.i.pre = load ptr, ptr %1, align 8, !tbaa !205
  %.sroa.2.0..sroa_idx.i9.i.phi.trans.insert = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.sroa.2.0.copyload.i10.i.pre = load i32, ptr %.sroa.2.0..sroa_idx.i9.i.phi.trans.insert, align 8, !tbaa !34
  %.pre = zext nneg i32 %.sroa.22.0.copyload.i7.i.pre to i64
  %.pre29 = zext nneg i32 %.sroa.2.0.copyload.i10.i.pre to i64
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %._crit_edge.i
  %.pre-phi30 = phi i64 [ %.pre29, %bb.c ], [ %i.d, %._crit_edge.i ]
  %.pre-phi = phi i64 [ %.pre, %bb.c ], [ %i.h, %._crit_edge.i ]
  %.sroa.0.0.copyload.i8.i = phi ptr [ %.sroa.0.0.copyload.i8.i.pre, %bb.c ], [ %.sroa.01.0.copyload.i.i, %._crit_edge.i ] ; 3 uses
  %.sroa.01.0.copyload.i5.i = phi ptr [ %.sroa.01.0.copyload.i5.i.pre, %bb.c ], [ %.sroa.0.0.copyload.i.i, %._crit_edge.i ] ; 3 uses
  %.026.lcssa35.i = phi ptr [ %.026.lcssa36.i, %bb.c ], [ %.02731.i, %._crit_edge.i ]
  %.sroa.012.0.i = phi ptr [ %i.p, %bb.c ], [ %.02731.i, %._crit_edge.i ]
  %i.q = getelementptr inbounds nuw i8, ptr %.sroa.01.0.copyload.i5.i, i64 %.pre-phi
  %i.r = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i8.i, i64 %.pre-phi30
  %i.s = icmp ult ptr %.sroa.01.0.copyload.i5.i, %.sroa.0.0.copyload.i8.i
  %i.t = icmp eq ptr %.sroa.01.0.copyload.i5.i, %.sroa.0.0.copyload.i8.i
  %.not.i.i11.i = icmp ult ptr %i.q, %i.r
  %i.u = select i1 %i.t, i1 %.not.i.i11.i, i1 %i.s
  br i1 %i.u, label %select.unfold, label %bb.f

select.unfold:                                    ; preds = %bb.d, %._crit_edge.thread.i
  %.sroa.4.0.i.ph = phi ptr [ %.026.lcssa36.i, %._crit_edge.thread.i ], [ %.026.lcssa35.i, %bb.d ] ; 4 uses
  %i.v = icmp eq ptr %.sroa.4.0.i.ph, %i.b
  br i1 %i.v, label %_ZNSt8_Rb_treeIN8rawspeed6BufferES1_St9_IdentityIS1_ESt4lessIS1_ESaIS1_EE10_M_insert_IRKS1_NS7_11_Alloc_nodeEEESt17_Rb_tree_iteratorIS1_EPSt18_Rb_tree_node_baseSF_OT_RT0_.exit, label %bb.e

bb.e:                                             ; preds = %select.unfold
  %i.w = getelementptr inbounds nuw i8, ptr %.sroa.4.0.i.ph, i64 32
  %.sroa.01.0.copyload.i.i6 = load ptr, ptr %1, align 8, !tbaa !205 ; 3 uses
  %.sroa.22.0..sroa_idx.i.i7 = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.sroa.22.0.copyload.i.i8 = load i32, ptr %.sroa.22.0..sroa_idx.i.i7, align 8, !tbaa !34 ; 2 uses
  %.sroa.0.0.copyload.i.i9 = load ptr, ptr %i.w, align 8, !tbaa !205 ; 3 uses
  %.sroa.2.0..sroa_idx.i.i10 = getelementptr inbounds nuw i8, ptr %.sroa.4.0.i.ph, i64 40
  %.sroa.2.0.copyload.i.i11 = load i32, ptr %.sroa.2.0..sroa_idx.i.i10, align 8, !tbaa !34 ; 2 uses
  %i.x = icmp sgt i32 %.sroa.22.0.copyload.i.i8, -1
  tail call void @llvm.assume(i1 %i.x)
  %i.y = zext nneg i32 %.sroa.22.0.copyload.i.i8 to i64
  %i.z = getelementptr inbounds nuw i8, ptr %.sroa.01.0.copyload.i.i6, i64 %i.y
  %i.aa = icmp sgt i32 %.sroa.2.0.copyload.i.i11, -1
  tail call void @llvm.assume(i1 %i.aa)
  %i.ab = zext nneg i32 %.sroa.2.0.copyload.i.i11 to i64
  %i.ac = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i9, i64 %i.ab
  %i.ad = icmp ult ptr %.sroa.01.0.copyload.i.i6, %.sroa.0.0.copyload.i.i9
  %i.ae = icmp eq ptr %.sroa.01.0.copyload.i.i6, %.sroa.0.0.copyload.i.i9
  %.not.i.i.i12 = icmp ult ptr %i.z, %i.ac
  %i.af = select i1 %i.ae, i1 %.not.i.i.i12, i1 %i.ad
  br label %_ZNSt8_Rb_treeIN8rawspeed6BufferES1_St9_IdentityIS1_ESt4lessIS1_ESaIS1_EE10_M_insert_IRKS1_NS7_11_Alloc_nodeEEESt17_Rb_tree_iteratorIS1_EPSt18_Rb_tree_node_baseSF_OT_RT0_.exit

_ZNSt8_Rb_treeIN8rawspeed6BufferES1_St9_IdentityIS1_ESt4lessIS1_ESaIS1_EE10_M_insert_IRKS1_NS7_11_Alloc_nodeEEESt17_Rb_tree_iteratorIS1_EPSt18_Rb_tree_node_baseSF_OT_RT0_.exit: ; preds = %select.unfold, %bb.e
  %i.ag = phi i1 [ %i.af, %bb.e ], [ true, %select.unfold ]
  %i.ah = tail call noalias noundef nonnull dereferenceable(48) ptr @_Znwm(i64 noundef 48) #29 ; 3 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 32
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ai, ptr noundef nonnull align 8 dereferenceable(16) %1, i64 16, i1 false), !tbaa.struct !300
  tail call void @_ZSt29_Rb_tree_insert_and_rebalancebPSt18_Rb_tree_node_baseS0_RS_(i1 noundef zeroext %i.ag, ptr noundef nonnull %i.ah, ptr noundef nonnull %.sroa.4.0.i.ph, ptr noundef nonnull align 8 dereferenceable(32) %i.b) #27
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.ak = load i64, ptr %i.aj, align 8, !tbaa !176
  %i.al = add i64 %i.ak, 1
  store i64 %i.al, ptr %i.aj, align 8, !tbaa !176
  br label %bb.f

bb.f:                                             ; preds = %bb.d, %_ZNSt8_Rb_treeIN8rawspeed6BufferES1_St9_IdentityIS1_ESt4lessIS1_ESaIS1_EE10_M_insert_IRKS1_NS7_11_Alloc_nodeEEESt17_Rb_tree_iteratorIS1_EPSt18_Rb_tree_node_baseSF_OT_RT0_.exit
  %.sroa.017.0 = phi ptr [ %i.ah, %_ZNSt8_Rb_treeIN8rawspeed6BufferES1_St9_IdentityIS1_ESt4lessIS1_ESaIS1_EE10_M_insert_IRKS1_NS7_11_Alloc_nodeEEESt17_Rb_tree_iteratorIS1_EPSt18_Rb_tree_node_baseSF_OT_RT0_.exit ], [ %.sroa.012.0.i, %bb.d ]
  %.sroa.3.0 = phi i8 [ 1, %_ZNSt8_Rb_treeIN8rawspeed6BufferES1_St9_IdentityIS1_ESt4lessIS1_ESaIS1_EE10_M_insert_IRKS1_NS7_11_Alloc_nodeEEESt17_Rb_tree_iteratorIS1_EPSt18_Rb_tree_node_baseSF_OT_RT0_.exit ], [ 0, %bb.d ]
  %.fca.0.insert = insertvalue { ptr, i8 } poison, ptr %.sroa.017.0, 0
  %.fca.1.insert = insertvalue { ptr, i8 } %.fca.0.insert, i8 %.sroa.3.0, 1
  ret { ptr, i8 } %.fca.1.insert
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(read)
declare noundef ptr @_ZSt18_Rb_tree_decrementPSt18_Rb_tree_node_base(ptr noundef) local_unnamed_addr #6

; Function Attrs: nounwind
declare void @_ZSt29_Rb_tree_insert_and_rebalancebPSt18_Rb_tree_node_baseS0_RS_(i1 noundef zeroext, ptr noundef, ptr noundef, ptr noundef nonnull align 8 dereferenceable(32)) local_unnamed_addr #9

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.fshl.i32(i32, i32, i32) #21

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #21

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smax.i64(i64, i64) #21

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smin.i64(i64, i64) #21

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <8 x i32> @llvm.bswap.v8i32(<8 x i32>) #21

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x i32> @llvm.bswap.v4i32(<4 x i32>) #21

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umax.i32(i32, i32) #21

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare <3 x i16> @llvm.masked.load.v3i16.p0(ptr captures(none), <3 x i1>, <3 x i16>) #26

attributes #0 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #3 = { inlinehint mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #4 = { cold mustprogress noinline noreturn optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #5 = { mustprogress nofree norecurse nosync nounwind memory(argmem: readwrite, inaccessiblemem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #6 = { mustprogress nofree nounwind willreturn memory(read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #7 = { mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #8 = { nounwind memory(none) }
attributes #9 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #10 = { noinline noreturn nounwind uwtable "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #11 = { cold nofree noreturn }
attributes #12 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #13 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #14 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #15 = { nocallback nofree nosync nounwind willreturn }
attributes #16 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #17 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #18 = { inlinehint mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #19 = { cold noreturn }
attributes #20 = { cold mustprogress noinline optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #21 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #22 = { noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #23 = { nobuiltin allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #24 = { nobuiltin nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #25 = { mustprogress noinline nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #26 = { nocallback nofree nosync nounwind willreturn memory(argmem: read) }
attributes #27 = { nounwind }
attributes #28 = { builtin nounwind }
attributes #29 = { builtin allocsize(0) }
attributes #30 = { noreturn }
attributes #31 = { nounwind willreturn memory(read) }
attributes #32 = { noreturn nounwind }
attributes #33 = { cold }

!llvm.module.flags = !{!10, !11, !12, !13, !14}
!llvm.ident = !{!15}
!llvm.errno.tbaa = !{!20}

!0 = distinct !{!0, !35}
!1 = distinct !{!1, !35}
!2 = distinct !DICompositeType(tag: DW_TAG_class_type, name: "_Sp_counted_base<(__gnu_cxx::_Lock_policy)2>", scope: !56, file: !51, line: 125, size: 128, flags: DIFlagFwdDecl | DIFlagNonTrivial, identifier: "_ZTSSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE")
!3 = distinct !{ptr @_ZN8rawspeed8RawImageD2Ev, null, null, null}
!4 = distinct !{ptr @_ZN8rawspeed24UncompressedDecompressorD2Ev, ptr @_ZN8rawspeed8RawImageD2Ev, null, null, null}
!5 = distinct !{ptr @_ZN8rawspeed20SonyArw1DecompressorD2Ev, ptr @_ZN8rawspeed8RawImageD2Ev, null, null, null}
!6 = distinct !{!6, !35}
!7 = distinct !DICompositeType(tag: DW_TAG_class_type, name: "runtime_error", scope: !56, file: !177, line: 219, size: 128, flags: DIFlagFwdDecl | DIFlagNonTrivial, identifier: "_ZTSSt13runtime_error")
!8 = distinct !DICompositeType(tag: DW_TAG_class_type, name: "TiffIFD", scope: !201, file: !196, line: 49, size: 832, flags: DIFlagFwdDecl | DIFlagNonTrivial, identifier: "_ZTSN8rawspeed7TiffIFDE")
!9 = distinct !{!9, !35}
!10 = !{i32 7, !"Dwarf Version", i32 5}
!11 = !{i32 2, !"Debug Info Version", i32 3}
!12 = !{i32 8, !"PIC Level", i32 2}
!13 = !{i32 7, !"uwtable", i32 2}
!14 = !{i32 7, !"debug-info-assignment-tracking", i1 true}
!15 = !{!"Ubuntu clang version 24.0.0 (++20260802081851+e18c3ea02484-1~exp1~20260802082001.1761)"}
!16 = !{!"Simple C++ TBAA"}
!17 = !{!"omnipotent char", !16, i64 0}
!18 = !{!"int", !17, i64 0}
!19 = !{!"__libc_errno", !18, i64 0}
!20 = !{!19, !18, i64 0}
!21 = !{!"any pointer", !17, i64 0}
!22 = !{!"p1 omnipotent char", !21, i64 0}
!23 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_Alloc_hiderE", !22, i64 0}
!24 = !{!"long", !17, i64 0}
!25 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE", !23, i64 0, !24, i64 8, !17, i64 16}
!26 = !{!25, !24, i64 8}
!27 = !{!25, !22, i64 0}
!28 = !{!17, !17, i64 0}
!29 = !{!"p1 _ZTSN8rawspeed11TiffRootIFDE", !21, i64 0}
!30 = !{!29, !29, i64 0}
!31 = !{!"_ZTSN8rawspeed6BufferE", !22, i64 0, !18, i64 8}
!32 = !{!31, !22, i64 0}
!33 = !{!31, !18, i64 8}
!34 = !{!18, !18, i64 0}
!35 = !{!"llvm.loop.mustprogress"}
!36 = !{!"p1 _ZTSN8rawspeed12RawImageDataE", !21, i64 0}
!37 = !{!"p1 _ZTSSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE", !21, i64 0}
!38 = !{!"_ZTSSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EE", !37, i64 0}
!39 = !{!"_ZTSSt12__shared_ptrIN8rawspeed12RawImageDataELN9__gnu_cxx12_Lock_policyE2EE", !36, i64 0, !38, i64 8}
!40 = !{!39, !36, i64 0}
!41 = !{!"_ZTSN8rawspeed10EndiannessE", !17, i64 0}
!42 = !{!"_ZTSN8rawspeed10DataBufferE", !31, i64 0, !41, i64 12}
!43 = !{!"_ZTSN8rawspeed10ByteStreamE", !42, i64 0, !18, i64 16}
!44 = !{!43, !18, i64 16}
!45 = !{!38, !37, i64 0}
!46 = !{!"_ZTSSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE", !18, i64 8, !18, i64 12}
!47 = !{!46, !18, i64 8}
!48 = !{!46, !18, i64 12}
!49 = !{!"vtable pointer", !16, i64 0}
!50 = !{!49, !49, i64 0}
!51 = !DIFile(filename: "/usr/lib/gcc/x86_64-linux-gnu/13/../../../../include/c++/13/bits/shared_ptr_base.h", directory: "", checksumkind: CSK_MD5, checksum: "398b697f034a380e2062e59e71a6eec9")
!52 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!53 = !{null, !52}
!54 = !DISubroutineType(types: !53)
!55 = !DISubprogram(name: "_M_dispose", linkageName: "_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_disposeEv", scope: !2, file: !51, line: 139, type: !54, scopeLine: 139, containingType: !2, virtualIndex: 2, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagPureVirtual | DISPFlagOptimized)
!56 = !DINamespace(name: "std", scope: null)
!57 = !DISubprogram(name: "_M_destroy", linkageName: "_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_destroyEv", scope: !2, file: !51, line: 143, type: !54, scopeLine: 143, containingType: !2, virtualIndex: 3, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagVirtual | DISPFlagOptimized)
!58 = !{!"branch_weights", !"expected", i32 1, i32 2000}
!59 = !{!21, !21, i64 0}
!60 = !{!23, !22, i64 0}
!61 = !{!"_ZTSSt14_Rb_tree_color", !17, i64 0}
!62 = !{!"p1 _ZTSSt18_Rb_tree_node_base", !21, i64 0}
!63 = !{!"_ZTSSt18_Rb_tree_node_base", !61, i64 0, !62, i64 8, !62, i64 16, !62, i64 24}
!64 = !{!"_ZTSSt15_Rb_tree_header", !63, i64 0, !24, i64 32}
!65 = !{!64, !62, i64 8}
!66 = !{!62, !62, i64 0}
!67 = !{!"p1 short", !21, i64 0}
!68 = !{!"_ZTSNSt12_Vector_baseItSaItEE17_Vector_impl_dataE", !67, i64 0, !67, i64 8, !67, i64 16}
!69 = !{!68, !67, i64 0}
!70 = !{!68, !67, i64 16}
!71 = !{!"p1 _ZTSN8rawspeed7TiffIFDE", !21, i64 0}
!72 = !{!71, !71, i64 0}
!73 = !{!"_ZTSSt10shared_ptrIN8rawspeed12RawImageDataEE", !39, i64 0}
!74 = !{!"_ZTSN8rawspeed8RawImageE", !73, i64 0}
!75 = !{!"bool", !17, i64 0}
!76 = !{!"_ZTSN8rawspeed10RawDecoderUt_E", !75, i64 0}
!77 = !{!"_ZTSSt4lessIvE"}
!78 = !{!"_ZTSSt20_Rb_tree_key_compareISt4lessIvEE", !77, i64 0}
!79 = !{!"_ZTSNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESt10_Select1stIS8_ESt4lessIvESaIS8_EE13_Rb_tree_implISC_Lb1EEE", !78, i64 0, !64, i64 8}
!80 = !{!"_ZTSSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESt10_Select1stIS8_ESt4lessIvESaIS8_EE", !79, i64 0}
!81 = !{!"_ZTSSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_St4lessIvESaISt4pairIKS5_S5_EEE", !80, i64 0}
!82 = !{!"_ZTSN8rawspeed5HintsE", !81, i64 0}
!83 = !{!"_ZTSN8rawspeed10RawDecoderE", !74, i64 8, !75, i64 24, !75, i64 25, !75, i64 26, !75, i64 27, !75, i64 28, !75, i64 29, !76, i64 30, !75, i64 31, !31, i64 32, !82, i64 48}
!84 = !{!"_ZTSN8rawspeed7TiffTagE", !17, i64 0}
!85 = !{!"_ZTSN8rawspeed12TiffDataTypeE", !17, i64 0}
!86 = !{!"_ZTSN8rawspeed9TiffEntryE", !71, i64 8, !43, i64 16, !84, i64 40, !85, i64 42, !18, i64 44}
!87 = !{!86, !18, i64 44}
!88 = !{i8 0, i8 2}
!89 = !{}
!90 = !{!"p1 _ZTSN8rawspeed8RawImageE", !21, i64 0}
!91 = !{!"p1 _ZTSSt6vectorItSaItEE", !21, i64 0}
!92 = !{!"_ZTSN8rawspeed18RawImageCurveGuardE", !90, i64 0, !91, i64 8, !75, i64 16}
!93 = !{!92, !90, i64 0}
!94 = !{!92, !75, i64 16}
!95 = !{!"_ZTSSt10_Head_baseILm0EPN8rawspeed11TiffRootIFDELb0EE", !29, i64 0}
!96 = !{!"_ZTSSt11_Tuple_implILm0EJPN8rawspeed11TiffRootIFDESt14default_deleteIS1_EEE", !95, i64 0}
!97 = !{!"_ZTSSt5tupleIJPN8rawspeed11TiffRootIFDESt14default_deleteIS1_EEE", !96, i64 0}
!98 = !{!"_ZTSSt15__uniq_ptr_implIN8rawspeed11TiffRootIFDESt14default_deleteIS1_EE", !97, i64 0}
!99 = !{!"_ZTSSt15__uniq_ptr_dataIN8rawspeed11TiffRootIFDESt14default_deleteIS1_ELb1ELb1EE", !98, i64 0}
!100 = !{!"_ZTSSt10unique_ptrIN8rawspeed11TiffRootIFDESt14default_deleteIS1_EE", !99, i64 0}
!101 = !{!"_ZTSN8rawspeed19AbstractTiffDecoderE", !83, i64 0, !100, i64 96}
!102 = !{!"_ZTSN8rawspeed10ArwDecoderE", !101, i64 0, !18, i64 104, !18, i64 108}
!103 = !{!102, !18, i64 108}
!104 = !{!92, !91, i64 8}
!105 = !{i64 8}
!106 = !{!"p1 _ZTSN8rawspeed11TableLookUpE", !21, i64 0}
!107 = !{!"_ZTSSt10_Head_baseILm0EPN8rawspeed11TableLookUpELb0EE", !106, i64 0}
!108 = !{!107, !106, i64 0}
!109 = !{!106, !106, i64 0}
!110 = !{!"_ZTSN8rawspeed5MutexE"}
!111 = !{!"p1 _ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE", !21, i64 0}
!112 = !{!"_ZTSNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE17_Vector_impl_dataE", !111, i64 0, !111, i64 8, !111, i64 16}
!113 = !{!"_ZTSNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12_Vector_implE", !112, i64 0}
!114 = !{!"_ZTSSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE", !113, i64 0}
!115 = !{!"_ZTSSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE", !114, i64 0}
!116 = !{!"_ZTSN8rawspeed8ErrorLogE", !110, i64 0, !115, i64 8}
!117 = !{!"_ZTSN8rawspeed8iPoint2DE", !18, i64 0, !18, i64 4}
!118 = !{!"_ZTSNSt12_Vector_baseIN8rawspeed8CFAColorESaIS1_EE17_Vector_impl_dataE", !21, i64 0, !21, i64 8, !21, i64 16}
!119 = !{!"_ZTSNSt12_Vector_baseIN8rawspeed8CFAColorESaIS1_EE12_Vector_implE", !118, i64 0}
!120 = !{!"_ZTSSt12_Vector_baseIN8rawspeed8CFAColorESaIS1_EE", !119, i64 0}
!121 = !{!"_ZTSSt6vectorIN8rawspeed8CFAColorESaIS1_EE", !120, i64 0}
!122 = !{!"_ZTSN8rawspeed16ColorFilterArrayE", !121, i64 0, !117, i64 24}
!123 = !{!"_ZTSSt5arrayIiLm4EE", !17, i64 0}
!124 = !{!"_ZTSSt22_Optional_payload_baseIN8rawspeed10Array2DRefIiEEE", !17, i64 0, !75, i64 32}
!125 = !{!"_ZTSSt17_Optional_payloadIN8rawspeed10Array2DRefIiEELb1ELb1ELb1EE", !124, i64 0}
!126 = !{!"_ZTSSt14_Optional_baseIN8rawspeed10Array2DRefIiEELb1ELb1EE", !125, i64 0}
!127 = !{!"_ZTSSt8optionalIN8rawspeed10Array2DRefIiEEE", !126, i64 0}
!128 = !{!"_ZTSN8rawspeed8OptionalINS_10Array2DRefIiEEEE", !127, i64 0}
!129 = !{!"_ZTSSt22_Optional_payload_baseIiE", !17, i64 0, !75, i64 4}
!130 = !{!"_ZTSSt17_Optional_payloadIiLb1ELb1ELb1EE", !129, i64 0}
!131 = !{!"_ZTSSt14_Optional_baseIiLb1ELb1EE", !130, i64 0}
!132 = !{!"_ZTSSt8optionalIiE", !131, i64 0}
!133 = !{!"_ZTSN8rawspeed8OptionalIiEE", !132, i64 0}
!134 = !{!"p1 _ZTSN8rawspeed9BlackAreaE", !21, i64 0}
!135 = !{!"_ZTSNSt12_Vector_baseIN8rawspeed9BlackAreaESaIS1_EE17_Vector_impl_dataE", !134, i64 0, !134, i64 8, !134, i64 16}
!136 = !{!"_ZTSNSt12_Vector_baseIN8rawspeed9BlackAreaESaIS1_EE12_Vector_implE", !135, i64 0}
!137 = !{!"_ZTSSt12_Vector_baseIN8rawspeed9BlackAreaESaIS1_EE", !136, i64 0}
!138 = !{!"_ZTSSt6vectorIN8rawspeed9BlackAreaESaIS1_EE", !137, i64 0}
!139 = !{!"p1 int", !21, i64 0}
!140 = !{!"_ZTSNSt12_Vector_baseIjSaIjEE17_Vector_impl_dataE", !139, i64 0, !139, i64 8, !139, i64 16}
!141 = !{!"_ZTSNSt12_Vector_baseIjSaIjEE12_Vector_implE", !140, i64 0}
!142 = !{!"_ZTSSt12_Vector_baseIjSaIjEE", !141, i64 0}
!143 = !{!"_ZTSSt6vectorIjSaIjEE", !142, i64 0}
!144 = !{!"_ZTSNSt12_Vector_baseIhN8rawspeed16AlignedAllocatorIhLi16EEEE17_Vector_impl_dataE", !22, i64 0, !22, i64 8, !22, i64 16}
!145 = !{!"_ZTSNSt12_Vector_baseIhN8rawspeed16AlignedAllocatorIhLi16EEEE12_Vector_implE", !144, i64 0}
!146 = !{!"_ZTSSt12_Vector_baseIhN8rawspeed16AlignedAllocatorIhLi16EEEE", !145, i64 0}
!147 = !{!"_ZTSSt6vectorIhN8rawspeed16AlignedAllocatorIhLi16EEEE", !146, i64 0}
!148 = !{!"double", !17, i64 0}
!149 = !{!"_ZTSSt22_Optional_payload_baseISt5arrayIfLm4EEE", !17, i64 0, !75, i64 16}
!150 = !{!"_ZTSSt17_Optional_payloadISt5arrayIfLm4EELb1ELb1ELb1EE", !149, i64 0}
!151 = !{!"_ZTSSt14_Optional_baseISt5arrayIfLm4EELb1ELb1EE", !150, i64 0}
!152 = !{!"_ZTSSt8optionalISt5arrayIfLm4EEE", !151, i64 0}
!153 = !{!"_ZTSN8rawspeed8OptionalISt5arrayIfLm4EEEE", !152, i64 0}
!154 = !{!"p1 _ZTSN8rawspeed12NotARationalIiEE", !21, i64 0}
!155 = !{!"_ZTSNSt12_Vector_baseIN8rawspeed12NotARationalIiEESaIS2_EE17_Vector_impl_dataE", !154, i64 0, !154, i64 8, !154, i64 16}
!156 = !{!"_ZTSNSt12_Vector_baseIN8rawspeed12NotARationalIiEESaIS2_EE12_Vector_implE", !155, i64 0}
!157 = !{!"_ZTSSt12_Vector_baseIN8rawspeed12NotARationalIiEESaIS2_EE", !156, i64 0}
end_hunk_1

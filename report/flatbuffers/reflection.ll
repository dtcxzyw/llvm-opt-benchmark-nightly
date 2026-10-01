Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/flatbuffers/original/reflection?download=true
inline.NumInlined: 1553
inline.NumDeleted: 671
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumRuntimeUnrolled: 16
loop-unroll.NumUnrolled: 18
begin_hunk_0_@_ZN11flatbuffers13ResizeContextC2ERKN10reflection6SchemaEjiPSt6vectorIhSaIhEEPKNS1_6ObjectE:bb.a
  %i.ak = getelementptr inbounds nuw i8, ptr %1, i64 %i.aj ; 2 uses
  %i.al = load i32, ptr %i.ak, align 4, !tbaa !14
  %i.am = zext i32 %i.al to i64
  %i.an = getelementptr inbounds nuw i8, ptr %i.ak, i64 %i.am
  br label %_ZNK10reflection6Schema10root_tableEv.exit

_ZNK10reflection6Schema10root_tableEv.exit:       ; preds = %_ZNK11flatbuffers5Table22GetOptionalFieldOffsetEt.exit.i.i.i, %_ZN11flatbuffers13ResizeContext8StraddleIjLi1EEEvPKvS3_Pv.exit
  %i.ao = phi ptr [ %5, %_ZN11flatbuffers13ResizeContext8StraddleIjLi1EEEvPKvS3_Pv.exit ], [ %i.an, %_ZNK11flatbuffers5Table22GetOptionalFieldOffsetEt.exit.i.i.i ]
  invoke void @_ZN11flatbuffers13ResizeContext11ResizeTableERKN10reflection6ObjectEPNS_5TableE(ptr noundef nonnull align 8 dereferenceable(56) %0, ptr noundef nonnull align 1 dereferenceable(1) %i.ao, ptr noundef %.0.i.i)
          to label %bb.f unwind label %bb.i

bb.f:                                             ; preds = %_ZNK10reflection6Schema10root_tableEv.exit
  %i.ap = load i32, ptr %i.f, align 8, !tbaa !56  ; 4 uses
  %i.aq = icmp sgt i32 %i.ap, 0
  %i.ar = load ptr, ptr %i.g, align 8, !tbaa !58, !nonnull !59, !align !60 ; 3 uses
  %i.as = load ptr, ptr %i.ar, align 8, !tbaa !23
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 %i.d ; 6 uses
  br i1 %i.aq, label %bb.g, label %bb.k

bb.g:                                             ; preds = %bb.f
  %i.au = zext nneg i32 %i.ap to i64
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #20
  store i8 0, ptr %i.a, align 1, !tbaa !11
  invoke void @_ZNSt6vectorIhSaIhEE14_M_fill_insertEN9__gnu_cxx17__normal_iteratorIPhS1_EEmRKh(ptr noundef nonnull align 8 dereferenceable(24) %i.ar, ptr %i.at, i64 noundef %i.au, ptr noundef nonnull align 1 dereferenceable(1) %i.a)
          to label %bb.h unwind label %bb.j

bb.h:                                             ; preds = %bb.g
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #20
  br label %_ZNSt6vectorIhSaIhEE5eraseEN9__gnu_cxx17__normal_iteratorIPKhS1_EES6_.exit

bb.i:                                             ; preds = %_ZNK10reflection6Schema10root_tableEv.exit
  %i.av = landingpad { ptr, i32 }
          cleanup
  br label %bb.q

bb.j:                                             ; preds = %bb.g
  %i.aw = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #20
  br label %bb.q

bb.k:                                             ; preds = %bb.f
  %i.ax = sext i32 %i.ap to i64
  %i.ay = getelementptr inbounds i8, ptr %i.at, i64 %i.ax ; 3 uses
  %i.az = ptrtoint ptr %i.at to i64               ; 2 uses
  %.not.i.i26 = icmp eq i32 %i.ap, 0
  br i1 %.not.i.i26, label %_ZNSt6vectorIhSaIhEE5eraseEN9__gnu_cxx17__normal_iteratorIPKhS1_EES6_.exit, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.ba = getelementptr inbounds nuw i8, ptr %i.ar, i64 8 ; 3 uses
  %i.bb = load ptr, ptr %i.ba, align 8, !tbaa !23 ; 2 uses
  %.not11.i.i = icmp eq ptr %i.at, %i.bb
  br i1 %.not11.i.i, label %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPhSt6vectorIhSaIhEEEES6_ET0_T_S8_S7_.exit.i.i, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.bc = ptrtoint ptr %i.bb to i64
  %i.bd = sub i64 %i.bc, %i.az                    ; 3 uses
  %i.be = icmp sgt i64 %i.bd, 1
  br i1 %i.be, label %bb.n, label %bb.o, !prof !61

bb.n:                                             ; preds = %bb.m
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.ay, ptr align 1 %i.at, i64 %i.bd, i1 false)
  br label %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPhSt6vectorIhSaIhEEEES6_ET0_T_S8_S7_.exit.i.i

bb.o:                                             ; preds = %bb.m
  %i.bf = icmp eq i64 %i.bd, 1
  br i1 %i.bf, label %bb.p, label %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPhSt6vectorIhSaIhEEEES6_ET0_T_S8_S7_.exit.i.i

bb.p:                                             ; preds = %bb.o
  %i.bg = load i8, ptr %i.at, align 1, !tbaa !11
  store i8 %i.bg, ptr %i.ay, align 1, !tbaa !11
  br label %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPhSt6vectorIhSaIhEEEES6_ET0_T_S8_S7_.exit.i.i

_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPhSt6vectorIhSaIhEEEES6_ET0_T_S8_S7_.exit.i.i: ; preds = %bb.p, %bb.o, %bb.n, %bb.l
  %i.bh = load ptr, ptr %i.ba, align 8, !tbaa !23 ; 2 uses
  %i.bi = ptrtoint ptr %i.bh to i64
  %i.bj = sub i64 %i.bi, %i.az
  %i.bk = getelementptr inbounds i8, ptr %i.ay, i64 %i.bj ; 2 uses
  %.not.i.i.i27 = icmp eq ptr %i.bh, %i.bk
  br i1 %.not.i.i.i27, label %_ZNSt6vectorIhSaIhEE5eraseEN9__gnu_cxx17__normal_iteratorIPKhS1_EES6_.exit, label %_ZSt8_DestroyIPhhEvT_S1_RSaIT0_E.exit.i.i.i

_ZSt8_DestroyIPhhEvT_S1_RSaIT0_E.exit.i.i.i:      ; preds = %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPhSt6vectorIhSaIhEEEES6_ET0_T_S8_S7_.exit.i.i
  store ptr %i.bk, ptr %i.ba, align 8, !tbaa !57
  br label %_ZNSt6vectorIhSaIhEE5eraseEN9__gnu_cxx17__normal_iteratorIPKhS1_EES6_.exit

_ZNSt6vectorIhSaIhEE5eraseEN9__gnu_cxx17__normal_iteratorIPKhS1_EES6_.exit: ; preds = %bb.k, %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPhSt6vectorIhSaIhEEEES6_ET0_T_S8_S7_.exit.i.i, %_ZSt8_DestroyIPhhEvT_S1_RSaIT0_E.exit.i.i.i, %bb.h, %bb.b
  ret void

bb.q:                                             ; preds = %bb.j, %bb.i
  %.pn = phi { ptr, i32 } [ %i.aw, %bb.j ], [ %i.av, %bb.i ]
  %i.bl = load ptr, ptr %i.h, align 8, !tbaa !47  ; 3 uses
  %.not.i.i.i28 = icmp eq ptr %i.bl, null
  br i1 %.not.i.i.i28, label %_ZNSt6vectorIhSaIhEED2Ev.exit, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.bm = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.bn = load ptr, ptr %i.bm, align 8, !tbaa !48
  %i.bo = ptrtoint ptr %i.bn to i64
  %i.bp = ptrtoint ptr %i.bl to i64
  %i.bq = sub i64 %i.bo, %i.bp
  call void @_ZdlPvm(ptr noundef nonnull %i.bl, i64 noundef %i.bq) #22
  br label %_ZNSt6vectorIhSaIhEED2Ev.exit

_ZNSt6vectorIhSaIhEED2Ev.exit:                    ; preds = %bb.r, %bb.q
  resume { ptr, i32 } %.pn
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #1

; Function Attrs: mustprogress uwtable
define dso_local noundef ptr @_ZN11flatbuffers15ResizeAnyVectorERKN10reflection6SchemaEjPKNS_11VectorOfAnyEjjPSt6vectorIhSaIhEEPKNS0_6ObjectE(ptr noundef nonnull align 1 dereferenceable(1) %0, i32 noundef %1, ptr noundef %2, i32 noundef %3, i32 noundef %4, ptr noundef %5, ptr noundef %6) local_unnamed_addr #2 personality ptr @__gxx_personality_v0 {
bb.a:
  %7 = alloca %"class.flatbuffers::ResizeContext", align 8 ; 5 uses
  %i.a = sub nsw i32 %1, %3                       ; 4 uses
  %i.b = mul nsw i32 %i.a, %4                     ; 3 uses
  %i.c = load ptr, ptr %5, align 8, !tbaa !47     ; 3 uses
  %i.d = ptrtoint ptr %2 to i64
  %i.e = ptrtoint ptr %i.c to i64
  %i.f = sub i64 %i.d, %i.e                       ; 2 uses
  %i.g = trunc i64 %i.f to i32
  %i.h = mul i32 %4, %3
  %i.i = add i32 %i.h, 4
  %i.j = add i32 %i.i, %i.g                       ; 4 uses
  %.not = icmp eq i32 %i.b, 0
  br i1 %.not, label %bb.h, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.k = icmp slt i32 %i.a, 0
  br i1 %i.k, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.l = sub i32 0, %i.b
  %i.m = zext i32 %i.j to i64
  %i.n = getelementptr inbounds nuw i8, ptr %i.c, i64 %i.m
  %i.o = zext i32 %i.l to i64                     ; 2 uses
  %i.p = sub nsw i64 0, %i.o
  %i.q = getelementptr inbounds i8, ptr %i.n, i64 %i.p
  tail call void @llvm.memset.p0.i64(ptr nonnull align 1 %i.q, i8 0, i64 %i.o, i1 false)
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #20
  call void @_ZN11flatbuffers13ResizeContextC2ERKN10reflection6SchemaEjiPSt6vectorIhSaIhEEPKNS1_6ObjectE(ptr noundef nonnull align 8 dereferenceable(56) %7, ptr noundef nonnull align 1 dereferenceable(1) %0, i32 noundef %i.j, i32 noundef %i.b, ptr noundef nonnull %5, ptr noundef %6)
  %i.r = load ptr, ptr %5, align 8, !tbaa !47     ; 2 uses
  %i.s = getelementptr inbounds i8, ptr %i.r, i64 %i.f
  store i32 %1, ptr %i.s, align 4, !tbaa !14
  %i.t = icmp sgt i32 %i.a, 0
  br i1 %i.t, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.u = zext i32 %i.j to i64
  %i.v = getelementptr inbounds nuw i8, ptr %i.r, i64 %i.u
  %i.w = zext nneg i32 %i.a to i64
  %i.x = zext i32 %4 to i64
  %i.y = mul nuw nsw i64 %i.w, %i.x
  call void @llvm.memset.p0.i64(ptr align 1 %i.v, i8 0, i64 %i.y, i1 false)
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %i.z = getelementptr inbounds nuw i8, ptr %7, i64 32
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !47  ; 3 uses
  %.not.i.i.i.i = icmp eq ptr %i.aa, null
  br i1 %.not.i.i.i.i, label %_ZN11flatbuffers13ResizeContextD2Ev.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ab = getelementptr inbounds nuw i8, ptr %7, i64 48
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !48
  %i.ad = ptrtoint ptr %i.ac to i64
  %i.ae = ptrtoint ptr %i.aa to i64
  %i.af = sub i64 %i.ad, %i.ae
  call void @_ZdlPvm(ptr noundef nonnull %i.aa, i64 noundef %i.af) #22
  br label %_ZN11flatbuffers13ResizeContextD2Ev.exit

_ZN11flatbuffers13ResizeContextD2Ev.exit:         ; preds = %bb.f, %bb.g
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #20
  %.pre = load ptr, ptr %5, align 8, !tbaa !47
  br label %bb.h

bb.h:                                             ; preds = %_ZN11flatbuffers13ResizeContextD2Ev.exit, %bb.a
  %i.ag = phi ptr [ %.pre, %_ZN11flatbuffers13ResizeContextD2Ev.exit ], [ %i.c, %bb.a ]
  %i.ah = zext i32 %i.j to i64
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ag, i64 %i.ah
  ret ptr %i.ai
}

; Function Attrs: mustprogress uwtable
define dso_local noundef ptr @_ZN11flatbuffers13AddFlatBufferERSt6vectorIhSaIhEEPKhm(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef %1, i64 noundef %2) local_unnamed_addr #2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !57   ; 2 uses
  %i.c = load ptr, ptr %0, align 8, !tbaa !47     ; 3 uses
  %i.d = ptrtoint ptr %i.b to i64
  %i.e = ptrtoint ptr %i.c to i64
  %i.f = sub i64 %i.d, %i.e                       ; 3 uses
  %i.g = and i64 %i.f, 7
  %or.cond.not18 = icmp eq i64 %i.g, 4
  br i1 %or.cond.not18, label %._crit_edge, label %.critedge.lr.ph

.critedge.lr.ph:                                  ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %.pre22 = load ptr, ptr %i.h, align 8, !tbaa !48
  br label %.critedge

.critedge:                                        ; preds = %.critedge.lr.ph, %_ZNSt6vectorIhSaIhEE9push_backEOh.exit
  %3 = phi ptr [ %.pre22, %.critedge.lr.ph ], [ %6, %_ZNSt6vectorIhSaIhEE9push_backEOh.exit ]
  %4 = phi i64 [ %i.f, %.critedge.lr.ph ], [ %i.z, %_ZNSt6vectorIhSaIhEE9push_backEOh.exit ] ; 8 uses
  %i.i = phi ptr [ %i.c, %.critedge.lr.ph ], [ %i.v, %_ZNSt6vectorIhSaIhEE9push_backEOh.exit ] ; 3 uses
  %5 = phi ptr [ %i.b, %.critedge.lr.ph ], [ %i.w, %_ZNSt6vectorIhSaIhEE9push_backEOh.exit ] ; 2 uses
  %.not.i.i = icmp eq ptr %5, %3
  br i1 %.not.i.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %.critedge
  store i8 0, ptr %5, align 1, !tbaa !11
  %i.j = load ptr, ptr %i.a, align 8, !tbaa !57
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 1 ; 2 uses
  store ptr %i.k, ptr %i.a, align 8, !tbaa !57
  %.pre = load ptr, ptr %i.h, align 8, !tbaa !48
  %.pre.a = load ptr, ptr %0, align 8, !tbaa !47
  br label %_ZNSt6vectorIhSaIhEE9push_backEOh.exit

bb.c:                                             ; preds = %.critedge
  %i.l = icmp eq i64 %4, 9223372036854775807
  br i1 %i.l, label %bb.d, label %_ZNKSt6vectorIhSaIhEE12_M_check_lenEmPKc.exit.i.i.i

bb.d:                                             ; preds = %bb.c
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.27) #21
  unreachable

_ZNKSt6vectorIhSaIhEE12_M_check_lenEmPKc.exit.i.i.i: ; preds = %bb.c
  %.sroa.speculated.i.i.i.i = tail call i64 @llvm.umax.i64(i64 %4, i64 1)
  %i.m = add i64 %.sroa.speculated.i.i.i.i, %4    ; 2 uses
  %i.n = icmp ult i64 %i.m, %4
  %i.o = tail call i64 @llvm.umin.i64(i64 %i.m, i64 9223372036854775807)
  %i.p = select i1 %i.n, i64 9223372036854775807, i64 %i.o ; 3 uses
  %.not.i.i.i.i = icmp ne i64 %i.p, 0
  tail call void @llvm.assume(i1 %.not.i.i.i.i)
  %i.q = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.p) #23 ; 5 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 %4 ; 2 uses
  store i8 0, ptr %i.r, align 1, !tbaa !11
  %i.s = icmp sgt i64 %4, 0
  br i1 %i.s, label %bb.e, label %_ZNSt6vectorIhSaIhEE11_S_relocateEPhS2_S2_RS0_.exit16.i.i.i

bb.e:                                             ; preds = %_ZNKSt6vectorIhSaIhEE12_M_check_lenEmPKc.exit.i.i.i
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.q, ptr align 1 %i.i, i64 %4, i1 false)
  br label %_ZNSt6vectorIhSaIhEE11_S_relocateEPhS2_S2_RS0_.exit16.i.i.i

_ZNSt6vectorIhSaIhEE11_S_relocateEPhS2_S2_RS0_.exit16.i.i.i: ; preds = %bb.e, %_ZNKSt6vectorIhSaIhEE12_M_check_lenEmPKc.exit.i.i.i
  %i.t = getelementptr inbounds nuw i8, ptr %i.r, i64 1 ; 2 uses
  %.not.i17.i.i.i = icmp eq ptr %i.i, null
  br i1 %.not.i17.i.i.i, label %_ZNSt6vectorIhSaIhEE17_M_realloc_insertIJhEEEvN9__gnu_cxx17__normal_iteratorIPhS1_EEDpOT_.exit.i.i, label %bb.f

bb.f:                                             ; preds = %_ZNSt6vectorIhSaIhEE11_S_relocateEPhS2_S2_RS0_.exit16.i.i.i
  tail call void @_ZdlPvm(ptr noundef nonnull %i.i, i64 noundef %4) #22
  br label %_ZNSt6vectorIhSaIhEE17_M_realloc_insertIJhEEEvN9__gnu_cxx17__normal_iteratorIPhS1_EEDpOT_.exit.i.i

_ZNSt6vectorIhSaIhEE17_M_realloc_insertIJhEEEvN9__gnu_cxx17__normal_iteratorIPhS1_EEDpOT_.exit.i.i: ; preds = %bb.f, %_ZNSt6vectorIhSaIhEE11_S_relocateEPhS2_S2_RS0_.exit16.i.i.i
  store ptr %i.q, ptr %0, align 8, !tbaa !47
  store ptr %i.t, ptr %i.a, align 8, !tbaa !57
  %i.u = getelementptr inbounds nuw i8, ptr %i.q, i64 %i.p ; 2 uses
  store ptr %i.u, ptr %i.h, align 8, !tbaa !48
  br label %_ZNSt6vectorIhSaIhEE9push_backEOh.exit

_ZNSt6vectorIhSaIhEE9push_backEOh.exit:           ; preds = %bb.b, %_ZNSt6vectorIhSaIhEE17_M_realloc_insertIJhEEEvN9__gnu_cxx17__normal_iteratorIPhS1_EEDpOT_.exit.i.i
  %i.v = phi ptr [ %.pre.a, %bb.b ], [ %i.q, %_ZNSt6vectorIhSaIhEE17_M_realloc_insertIJhEEEvN9__gnu_cxx17__normal_iteratorIPhS1_EEDpOT_.exit.i.i ] ; 3 uses
  %i.w = phi ptr [ %i.k, %bb.b ], [ %i.t, %_ZNSt6vectorIhSaIhEE17_M_realloc_insertIJhEEEvN9__gnu_cxx17__normal_iteratorIPhS1_EEDpOT_.exit.i.i ] ; 2 uses
  %6 = phi ptr [ %.pre, %bb.b ], [ %i.u, %_ZNSt6vectorIhSaIhEE17_M_realloc_insertIJhEEEvN9__gnu_cxx17__normal_iteratorIPhS1_EEDpOT_.exit.i.i ]
  %i.x = ptrtoint ptr %i.w to i64
  %i.y = ptrtoint ptr %i.v to i64
  %i.z = sub i64 %i.x, %i.y                       ; 3 uses
  %i.aa = and i64 %i.z, 7
  %or.cond.not = icmp eq i64 %i.aa, 4
  br i1 %or.cond.not, label %._crit_edge, label %.critedge, !llvm.loop !139

._crit_edge:                                      ; preds = %_ZNSt6vectorIhSaIhEE9push_backEOh.exit, %bb.a
  %.lcssa16 = phi ptr [ %i.c, %bb.a ], [ %i.v, %_ZNSt6vectorIhSaIhEE9push_backEOh.exit ]
  %.lcssa = phi i64 [ %i.f, %bb.a ], [ %i.z, %_ZNSt6vectorIhSaIhEE9push_backEOh.exit ] ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.ac = getelementptr inbounds nuw i8, ptr %1, i64 %2
  %i.ad = getelementptr inbounds i8, ptr %.lcssa16, i64 %.lcssa
  tail call void @_ZNSt6vectorIhSaIhEE15_M_range_insertIPKhEEvN9__gnu_cxx17__normal_iteratorIPhS1_EET_S9_St20forward_iterator_tag(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %i.ad, ptr noundef nonnull %i.ab, ptr noundef %i.ac)
  %i.ae = load ptr, ptr %0, align 8, !tbaa !23
  %i.af = load i32, ptr %1, align 4, !tbaa !14
  %i.ag = zext i32 %i.af to i64
  %i.ah = and i64 %.lcssa, 4294967292
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ae, i64 %i.ah
  %i.aj = getelementptr i8, ptr %i.ai, i64 %i.ag
  %i.ak = getelementptr i8, ptr %i.aj, i64 -4
  ret ptr %i.ak
}

; Function Attrs: mustprogress uwtable
define dso_local i32 @_ZN11flatbuffers9CopyTableERNS_21FlatBufferBuilderImplILb0EEERKN10reflection6SchemaERKNS3_6ObjectERKNS_5TableEb(ptr noundef nonnull align 8 dereferenceable(128) %0, ptr noundef nonnull align 1 dereferenceable(1) %1, ptr noundef nonnull align 1 dereferenceable(1) %2, ptr noundef nonnull align 1 dereferenceable(1) %3, i1 noundef zeroext %4) local_unnamed_addr #2 personality ptr @__gxx_personality_v0 {
_ZNK11flatbuffers5Table22GetOptionalFieldOffsetEt.exit.i.i.i:
  %i.a = load i32, ptr %2, align 4, !tbaa !14
  %i.b = sext i32 %i.a to i64
  %i.c = sub nsw i64 0, %i.b                      ; 2 uses
  %i.d = getelementptr inbounds i8, ptr %2, i64 %i.c
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 6
  %i.f = load i16, ptr %i.e, align 2, !tbaa !13   ; 2 uses
  %.not.i.i.i = icmp ne i16 %i.f, 0
  tail call void @llvm.assume(i1 %.not.i.i.i)
  %i.g = zext i16 %i.f to i64
  %i.h = getelementptr inbounds nuw i8, ptr %2, i64 %i.g ; 2 uses
  %i.i = load i32, ptr %i.h, align 4, !tbaa !14
  %i.j = zext i32 %i.i to i64
  %i.k = getelementptr inbounds nuw i8, ptr %i.h, i64 %i.j ; 5 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 4 ; 4 uses
  %i.m = load i32, ptr %i.k, align 4, !tbaa !35, !noalias !151
  %.mask = and i32 %i.m, 1073741823
  %.not450 = icmp eq i32 %.mask, 0
  br i1 %.not450, label %._crit_edge463, label %.lr.ph462

.lr.ph462:                                        ; preds = %_ZNK11flatbuffers5Table22GetOptionalFieldOffsetEt.exit.i.i.i
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 10 uses
  %.phi.trans.insert.i.i.i = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 10 uses
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 3 uses
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 104 ; 2 uses
  br label %bb.a

._crit_edge463.loopexit:                          ; preds = %_ZNSt6vectorIjSaIjEE9push_backERKj.exit
  %.pre529 = load i32, ptr %2, align 4, !tbaa !14
  %.pre530 = sext i32 %.pre529 to i64
  %.pre531 = sub nsw i64 0, %.pre530
  br label %._crit_edge463

._crit_edge463:                                   ; preds = %._crit_edge463.loopexit, %_ZNK11flatbuffers5Table22GetOptionalFieldOffsetEt.exit.i.i.i
  %.pre-phi532 = phi i64 [ %.pre531, %._crit_edge463.loopexit ], [ %i.c, %_ZNK11flatbuffers5Table22GetOptionalFieldOffsetEt.exit.i.i.i ]
  %.sroa.12363.0.lcssa = phi ptr [ %.sroa.12363.2, %._crit_edge463.loopexit ], [ null, %_ZNK11flatbuffers5Table22GetOptionalFieldOffsetEt.exit.i.i.i ] ; 6 uses
  %.sroa.0359.0.lcssa = phi ptr [ %.sroa.0359.2, %._crit_edge463.loopexit ], [ null, %_ZNK11flatbuffers5Table22GetOptionalFieldOffsetEt.exit.i.i.i ] ; 9 uses
  %i.r = getelementptr inbounds i8, ptr %2, i64 %.pre-phi532 ; 3 uses
  %i.s = load i16, ptr %i.r, align 2, !tbaa !13   ; 2 uses
  %i.t = icmp ugt i16 %i.s, 8
  br i1 %i.t, label %_ZNK11flatbuffers5Table22GetOptionalFieldOffsetEt.exit.i.i, label %_ZNK10reflection6Object9is_structEv.exit.thread

_ZNK11flatbuffers5Table22GetOptionalFieldOffsetEt.exit.i.i: ; preds = %._crit_edge463
  %i.u = getelementptr inbounds nuw i8, ptr %i.r, i64 8
  %i.v = load i16, ptr %i.u, align 2, !tbaa !13   ; 2 uses
  %.not.i.i = icmp eq i16 %i.v, 0
  br i1 %.not.i.i, label %_ZNK10reflection6Object9is_structEv.exit.thread, label %_ZNK10reflection6Object9is_structEv.exit

bb.a:                                             ; preds = %.lr.ph462, %_ZNSt6vectorIjSaIjEE9push_backERKj.exit
  %.sroa.0359.0458 = phi ptr [ null, %.lr.ph462 ], [ %.sroa.0359.2, %_ZNSt6vectorIjSaIjEE9push_backERKj.exit ] ; 30 uses
  %.sroa.9.0456 = phi ptr [ null, %.lr.ph462 ], [ %.sroa.9.2, %_ZNSt6vectorIjSaIjEE9push_backERKj.exit ] ; 17 uses
  %.sroa.0356.0455 = phi ptr [ %i.l, %.lr.ph462 ], [ %i.os, %_ZNSt6vectorIjSaIjEE9push_backERKj.exit ] ; 3 uses
  %.sroa.12363.0451 = phi ptr [ null, %.lr.ph462 ], [ %.sroa.12363.2, %_ZNSt6vectorIjSaIjEE9push_backERKj.exit ] ; 25 uses
  %i.w = load i32, ptr %.sroa.0356.0455, align 4, !tbaa !14
  %i.x = zext i32 %i.w to i64
  %i.y = getelementptr inbounds nuw i8, ptr %.sroa.0356.0455, i64 %i.x ; 12 uses
  %i.z = load i32, ptr %i.y, align 4, !tbaa !14
  %i.aa = sext i32 %i.z to i64
  %i.ab = sub nsw i64 0, %i.aa
  %i.ac = getelementptr inbounds i8, ptr %i.y, i64 %i.ab ; 7 uses
  %i.ad = load i16, ptr %i.ac, align 2, !tbaa !13 ; 2 uses
  %i.ae = icmp ugt i16 %i.ad, 10                  ; 5 uses
  br i1 %i.ae, label %_ZNK11flatbuffers5Table22GetOptionalFieldOffsetEt.exit.i.i179, label %_ZNK10reflection5Field6offsetEv.exit

_ZNK11flatbuffers5Table22GetOptionalFieldOffsetEt.exit.i.i179: ; preds = %bb.a
  %i.af = getelementptr inbounds nuw i8, ptr %i.ac, i64 10
  %i.ag = load i16, ptr %i.af, align 2, !tbaa !13 ; 2 uses
  %.not.i.i180 = icmp eq i16 %i.ag, 0
  br i1 %.not.i.i180, label %_ZNK10reflection5Field6offsetEv.exit, label %bb.b

bb.b:                                             ; preds = %_ZNK11flatbuffers5Table22GetOptionalFieldOffsetEt.exit.i.i179
  %i.ah = zext i16 %i.ag to i64
  %i.ai = getelementptr inbounds nuw i8, ptr %i.y, i64 %i.ah
  %i.aj = load i16, ptr %i.ai, align 2, !tbaa !13
  br label %_ZNK10reflection5Field6offsetEv.exit

_ZNK10reflection5Field6offsetEv.exit:             ; preds = %bb.b, %_ZNK11flatbuffers5Table22GetOptionalFieldOffsetEt.exit.i.i179, %bb.a
  %i.ak = phi i16 [ %i.aj, %bb.b ], [ 0, %_ZNK11flatbuffers5Table22GetOptionalFieldOffsetEt.exit.i.i179 ], [ 0, %bb.a ] ; 2 uses
  %i.al = load i32, ptr %3, align 4, !tbaa !14
  %i.am = sext i32 %i.al to i64
  %i.an = sub nsw i64 0, %i.am
  %i.ao = getelementptr inbounds i8, ptr %3, i64 %i.an ; 6 uses
  %i.ap = load i16, ptr %i.ao, align 2, !tbaa !13 ; 6 uses
  %i.aq = icmp ult i16 %i.ak, %i.ap
  br i1 %i.aq, label %_ZNK11flatbuffers5Table10CheckFieldEt.exit, label %_ZNSt6vectorIjSaIjEE9push_backERKj.exit

_ZNK11flatbuffers5Table10CheckFieldEt.exit:       ; preds = %_ZNK10reflection5Field6offsetEv.exit
  %i.ar = zext i16 %i.ak to i64
  %i.as = getelementptr inbounds nuw i8, ptr %i.ao, i64 %i.ar
  %i.at = load i16, ptr %i.as, align 2, !tbaa !13
  %.not388 = icmp eq i16 %i.at, 0
  br i1 %.not388, label %_ZNSt6vectorIjSaIjEE9push_backERKj.exit, label %_ZNK11flatbuffers5Table22GetOptionalFieldOffsetEt.exit.i.i.i181

_ZNK11flatbuffers5Table22GetOptionalFieldOffsetEt.exit.i.i.i181: ; preds = %_ZNK11flatbuffers5Table10CheckFieldEt.exit
  %i.au = icmp ugt i16 %i.ad, 6
  tail call void @llvm.assume(i1 %i.au)
  %i.av = getelementptr inbounds nuw i8, ptr %i.ac, i64 6
  %i.aw = load i16, ptr %i.av, align 2, !tbaa !13 ; 2 uses
  %.not.i.i.i182 = icmp ne i16 %i.aw, 0
  tail call void @llvm.assume(i1 %.not.i.i.i182)
  %i.ax = zext i16 %i.aw to i64
  %i.ay = getelementptr inbounds nuw i8, ptr %i.y, i64 %i.ax ; 2 uses
  %i.az = load i32, ptr %i.ay, align 4, !tbaa !14
  %i.ba = zext i32 %i.az to i64
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ay, i64 %i.ba ; 6 uses
  %i.bc = load i32, ptr %i.bb, align 4, !tbaa !14
  %i.bd = sext i32 %i.bc to i64
  %i.be = sub nsw i64 0, %i.bd
  %i.bf = getelementptr inbounds i8, ptr %i.bb, i64 %i.be ; 5 uses
  %i.bg = load i16, ptr %i.bf, align 2, !tbaa !13 ; 4 uses
  %i.bh = icmp ugt i16 %i.bg, 4
  br i1 %i.bh, label %_ZNK11flatbuffers5Table22GetOptionalFieldOffsetEt.exit.i.i183, label %_ZNSt6vectorIjSaIjEE9push_backERKj.exit

_ZNK11flatbuffers5Table22GetOptionalFieldOffsetEt.exit.i.i183: ; preds = %_ZNK11flatbuffers5Table22GetOptionalFieldOffsetEt.exit.i.i.i181
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bf, i64 4
  %i.bj = load i16, ptr %i.bi, align 2, !tbaa !13 ; 2 uses
  %.not.i.i184 = icmp eq i16 %i.bj, 0
  br i1 %.not.i.i184, label %_ZNSt6vectorIjSaIjEE9push_backERKj.exit, label %_ZNK10reflection4Type9base_typeEv.exit

_ZNK10reflection4Type9base_typeEv.exit:           ; preds = %_ZNK11flatbuffers5Table22GetOptionalFieldOffsetEt.exit.i.i183
  %i.bk = zext i16 %i.bj to i64
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bb, i64 %i.bk
  %i.bm = load i8, ptr %i.bl, align 1, !tbaa !11
  switch i8 %i.bm, label %_ZNSt6vectorIjSaIjEE9push_backERKj.exit [
    i8 13, label %bb.c
    i8 15, label %bb.l
    i8 16, label %bb.r
    i8 14, label %bb.w
  ]

.loopexit:                                        ; preds = %_ZNKSt6vectorIjSaIjEE12_M_check_lenEmPKc.exit.i.i
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIN11flatbuffers6OffsetIPKNS0_6StringEEESaIS5_EED2Ev.exit248

.loopexit.split-lp:                               ; preds = %bb.bb
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIN11flatbuffers6OffsetIPKNS0_6StringEEESaIS5_EED2Ev.exit248

bb.c:                                             ; preds = %_ZNK10reflection4Type9base_typeEv.exit
  br i1 %4, label %bb.d, label %bb.g

bb.d:                                             ; preds = %bb.c
  br i1 %i.ae, label %_ZNK11flatbuffers5Table22GetOptionalFieldOffsetEt.exit.i.i.i185, label %_ZNK10reflection5Field6offsetEv.exit.i

_ZNK11flatbuffers5Table22GetOptionalFieldOffsetEt.exit.i.i.i185: ; preds = %bb.d
  %i.bn = getelementptr inbounds nuw i8, ptr %i.ac, i64 10
  %i.bo = load i16, ptr %i.bn, align 2, !tbaa !13 ; 2 uses
  %.not.i.i.i186 = icmp eq i16 %i.bo, 0
  br i1 %.not.i.i.i186, label %_ZNK10reflection5Field6offsetEv.exit.i, label %bb.e

bb.e:                                             ; preds = %_ZNK11flatbuffers5Table22GetOptionalFieldOffsetEt.exit.i.i.i185
  %i.bp = zext i16 %i.bo to i64
  %i.bq = getelementptr inbounds nuw i8, ptr %i.y, i64 %i.bp
  %i.br = load i16, ptr %i.bq, align 2, !tbaa !13
  br label %_ZNK10reflection5Field6offsetEv.exit.i

_ZNK10reflection5Field6offsetEv.exit.i:           ; preds = %bb.e, %_ZNK11flatbuffers5Table22GetOptionalFieldOffsetEt.exit.i.i.i185, %bb.d
  %i.bs = phi i16 [ %i.br, %bb.e ], [ 0, %_ZNK11flatbuffers5Table22GetOptionalFieldOffsetEt.exit.i.i.i185 ], [ 0, %bb.d ] ; 2 uses
  %i.bt = icmp ult i16 %i.bs, %i.ap
  br i1 %i.bt, label %_ZNK11flatbuffers5Table22GetOptionalFieldOffsetEt.exit.i.i2.i, label %_ZNSt6vectorIjSaIjEE9push_backERKj.exit

_ZNK11flatbuffers5Table22GetOptionalFieldOffsetEt.exit.i.i2.i: ; preds = %_ZNK10reflection5Field6offsetEv.exit.i
  %i.bu = zext i16 %i.bs to i64
  %i.bv = getelementptr inbounds nuw i8, ptr %i.ao, i64 %i.bu
  %i.bw = load i16, ptr %i.bv, align 2, !tbaa !13 ; 2 uses
  %.not.i.i3.i = icmp eq i16 %i.bw, 0
  br i1 %.not.i.i3.i, label %_ZNSt6vectorIjSaIjEE9push_backERKj.exit, label %bb.f

bb.f:                                             ; preds = %_ZNK11flatbuffers5Table22GetOptionalFieldOffsetEt.exit.i.i2.i
  %i.bx = zext i16 %i.bw to i64
  %i.by = getelementptr inbounds nuw i8, ptr %3, i64 %i.bx ; 2 uses
end_hunk_0
begin_hunk_1_@_ZdlPvm
declare void @_ZdlPvm(ptr noundef, i64 noundef) local_unnamed_addr #9

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr dso_local void @_ZN11flatbuffers14IntToStringHexB5cxx11Eii(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #3 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.std::__cxx11::basic_stringstream", align 8 ; 20 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #20
  call void @_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEC1Ev(ptr noundef nonnull align 8 dereferenceable(128) %3)
  %i.a = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 8 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !43   ; 3 uses
  %i.c = getelementptr i8, ptr %i.b, i64 -24      ; 2 uses
  %i.d = load i64, ptr %i.c, align 8
  %i.e = getelementptr inbounds i8, ptr %i.a, i64 %i.d
  %i.f = sext i32 %2 to i64
  %i.g = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  store i64 %i.f, ptr %i.g, align 8, !tbaa !199
  %i.h = load i64, ptr %i.c, align 8
  %i.i = getelementptr inbounds i8, ptr %i.a, i64 %i.h ; 3 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 225 ; 2 uses
  %i.k = load i8, ptr %i.j, align 1, !tbaa !206, !range !81, !noundef !59
  %i.l = trunc nuw i8 %i.k to i1
  br i1 %i.l, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.m = getelementptr inbounds nuw i8, ptr %i.i, i64 240
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !207  ; 5 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.n, null
  br i1 %.not.i.i.i.i.i, label %bb.c, label %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i.i.i

bb.c:                                             ; preds = %bb.b
  invoke void @_ZSt16__throw_bad_castv() #21
          to label %.noexc unwind label %bb.j

.noexc:                                           ; preds = %bb.c
  unreachable

_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i.i.i: ; preds = %bb.b
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 56
  %i.p = load i8, ptr %i.o, align 8, !tbaa !212
  %.not.i1.i.i.i.i = icmp eq i8 %i.p, 0
  br i1 %.not.i1.i.i.i.i, label %bb.d, label %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i.i.i

bb.d:                                             ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i.i.i
  invoke void @_ZNKSt5ctypeIcE13_M_widen_initEv(ptr noundef nonnull align 8 dereferenceable(570) %i.n)
          to label %.noexc4 unwind label %bb.j

.noexc4:                                          ; preds = %bb.d
  %i.q = load ptr, ptr %i.n, align 8, !tbaa !43
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 48
  %i.s = load ptr, ptr %i.r, align 8
  %i.t = invoke noundef signext i8 %i.s(ptr noundef nonnull align 8 dereferenceable(570) %i.n, i8 noundef signext 32)
          to label %.noexc4._ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i.i.i_crit_edge unwind label %bb.j, !inline_history !194 ; 0 uses

.noexc4._ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i.i.i_crit_edge: ; preds = %.noexc4
  %.pre.pre = load ptr, ptr %i.a, align 8, !tbaa !43
  br label %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i.i.i

_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i.i.i: ; preds = %.noexc4._ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i.i.i_crit_edge, %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i.i.i
  %.pre = phi ptr [ %.pre.pre, %.noexc4._ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i.i.i_crit_edge ], [ %i.b, %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i.i.i ]
  store i8 1, ptr %i.j, align 1, !tbaa !206
  br label %bb.e

bb.e:                                             ; preds = %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i.i.i, %bb.a
  %i.u = phi ptr [ %.pre, %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i.i.i ], [ %i.b, %bb.a ]
  %i.v = getelementptr inbounds nuw i8, ptr %i.i, i64 224
  store i8 48, ptr %i.v, align 8, !tbaa !213
  %i.w = getelementptr i8, ptr %i.u, i64 -24      ; 2 uses
  %i.x = load i64, ptr %i.w, align 8
  %i.y = getelementptr inbounds i8, ptr %i.a, i64 %i.x
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 24 ; 2 uses
  %i.aa = load i32, ptr %i.z, align 8, !tbaa !96
  %i.ab = and i32 %i.aa, -75
  %i.ac = or disjoint i32 %i.ab, 8
  store i32 %i.ac, ptr %i.z, align 8, !tbaa !97
  %i.ad = load i64, ptr %i.w, align 8
  %i.ae = getelementptr inbounds i8, ptr %i.a, i64 %i.ad
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 24 ; 2 uses
  %i.ag = load i32, ptr %i.af, align 8, !tbaa !96
  %i.ah = or i32 %i.ag, 16384
  store i32 %i.ah, ptr %i.af, align 8, !tbaa !97
  %i.ai = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) %i.a, i32 noundef %1)
          to label %bb.f unwind label %bb.j       ; 0 uses

bb.f:                                             ; preds = %bb.e
  call void @llvm.experimental.noalias.scope.decl(metadata !214)
  call void @llvm.experimental.noalias.scope.decl(metadata !215)
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 4 uses
  store ptr %i.aj, ptr %0, align 8, !tbaa !28, !alias.scope !216
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 0, ptr %i.ak, align 8, !tbaa !31, !alias.scope !216
  store i8 0, ptr %i.aj, align 8, !tbaa !11, !alias.scope !216
  %i.al = getelementptr inbounds nuw i8, ptr %3, i64 64
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !40, !noalias !216 ; 3 uses
  %.not.i.not.i.i = icmp eq ptr %i.am, null
  %i.an = getelementptr inbounds nuw i8, ptr %3, i64 48
  %i.ao = load ptr, ptr %i.an, align 8, !noalias !216 ; 2 uses
  %i.ap = icmp ugt ptr %i.am, %i.ao
  %.08.i.i.i = select i1 %i.ap, ptr %i.am, ptr %i.ao ; 2 uses
  %.not5.i.i = icmp eq ptr %.08.i.i.i, null
  %.not.i.i = select i1 %.not.i.not.i.i, i1 true, i1 %.not5.i.i
  br i1 %.not.i.i, label %bb.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.aq = getelementptr inbounds nuw i8, ptr %3, i64 56
  %i.ar = load ptr, ptr %i.aq, align 8, !tbaa !41, !noalias !216 ; 2 uses
  %i.as = ptrtoint ptr %.08.i.i.i to i64
  %i.at = ptrtoint ptr %i.ar to i64
  %i.au = sub i64 %i.as, %i.at
  %i.av = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef 0, i64 noundef 0, ptr noundef %i.ar, i64 noundef %i.au)
          to label %_ZNKSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv.exit unwind label %bb.h ; 0 uses

bb.h:                                             ; preds = %bb.i, %bb.g
  %i.aw = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ax = load ptr, ptr %0, align 8, !tbaa !30, !alias.scope !216 ; 2 uses
  %i.ay = icmp eq ptr %i.ax, %i.aj
  br i1 %i.ay, label %.body, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i: ; preds = %bb.h
  %i.az = load i64, ptr %i.aj, align 8, !tbaa !11, !alias.scope !216
  %i.ba = add i64 %i.az, 1
  call void @_ZdlPvm(ptr noundef %i.ax, i64 noundef %i.ba) #22
  br label %.body

bb.i:                                             ; preds = %bb.f
  %i.bb = getelementptr inbounds nuw i8, ptr %3, i64 96
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %i.bb)
          to label %_ZNKSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv.exit unwind label %bb.h

_ZNKSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv.exit: ; preds = %bb.i, %bb.g
  %i.bc = load ptr, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, align 8 ; 2 uses
  store ptr %i.bc, ptr %3, align 8, !tbaa !43
  %i.bd = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 64), align 8
  %i.be = getelementptr i8, ptr %i.bc, i64 -24
  %i.bf = load i64, ptr %i.be, align 8
  %i.bg = getelementptr inbounds i8, ptr %3, i64 %i.bf
  store ptr %i.bd, ptr %i.bg, align 8, !tbaa !43
  %i.bh = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 72), align 8
  store ptr %i.bh, ptr %i.a, align 8, !tbaa !43
  %i.bi = getelementptr inbounds nuw i8, ptr %3, i64 24 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEEE, i64 16), ptr %i.bi, align 8, !tbaa !43
  %i.bj = getelementptr inbounds nuw i8, ptr %3, i64 96
  %i.bk = load ptr, ptr %i.bj, align 8, !tbaa !30 ; 2 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %3, i64 112 ; 2 uses
  %i.bm = icmp eq ptr %i.bk, %i.bl
  br i1 %i.bm, label %_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i: ; preds = %_ZNKSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv.exit
  %i.bn = load i64, ptr %i.bl, align 8, !tbaa !11
  %i.bo = add i64 %i.bn, 1
  call void @_ZdlPvm(ptr noundef %i.bk, i64 noundef %i.bo) #22
  br label %_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev.exit

_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev.exit: ; preds = %_ZNKSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVSt15basic_streambufIcSt11char_traitsIcEE, i64 16), ptr %i.bi, align 8, !tbaa !43
  %i.bp = getelementptr inbounds nuw i8, ptr %3, i64 80
  call void @_ZNSt6localeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.bp) #20
  %i.bq = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 16), align 8 ; 2 uses
  store ptr %i.bq, ptr %3, align 8, !tbaa !43
  %i.br = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 24), align 8
  %i.bs = getelementptr i8, ptr %i.bq, i64 -24
  %i.bt = load i64, ptr %i.bs, align 8
  %i.bu = getelementptr inbounds i8, ptr %3, i64 %i.bt
  store ptr %i.br, ptr %i.bu, align 8, !tbaa !43
  %i.bv = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i64 0, ptr %i.bv, align 8, !tbaa !45
  %i.bw = getelementptr inbounds nuw i8, ptr %3, i64 128
  call void @_ZNSt8ios_baseD2Ev(ptr noundef nonnull align 8 dead_on_return(264) dereferenceable(264) %i.bw) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #20
  ret void

bb.j:                                             ; preds = %.noexc4, %bb.d, %bb.c, %bb.e
  %i.bx = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %bb.h, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i, %bb.j
  %eh.lpad-body = phi { ptr, i32 } [ %i.bx, %bb.j ], [ %i.aw, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i ], [ %i.aw, %bb.h ]
  call void @_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev(ptr noundef nonnull align 8 dereferenceable(128) %3) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #20
  resume { ptr, i32 } %eh.lpad-body
}

declare void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32), i64 noundef, i64 noundef, ptr noundef, i64 noundef) local_unnamed_addr #8

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8), i32 noundef) local_unnamed_addr #8

; Function Attrs: noreturn
declare void @_ZSt16__throw_bad_castv() local_unnamed_addr #10

declare void @_ZNKSt5ctypeIcE13_M_widen_initEv(ptr noundef nonnull align 8 dereferenceable(570)) local_unnamed_addr #8

declare noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef, i64 noundef) local_unnamed_addr #8

; Function Attrs: noreturn
declare void @_ZSt20__throw_length_errorPKc(ptr noundef) local_unnamed_addr #10

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN11flatbuffers13ResizeContext11ResizeTableERKN10reflection6ObjectEPNS_5TableE(ptr noundef nonnull align 8 dereferenceable(56) %0, ptr noundef nonnull align 1 dereferenceable(1) %1, ptr noundef %2) local_unnamed_addr #2 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 6 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !58, !nonnull !59, !align !60
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !47
  %i.d = ptrtoint ptr %2 to i64                   ; 2 uses
  %i.e = ptrtoint ptr %i.c to i64
  %i.f = sub i64 %i.d, %i.e
  %i.g = ashr exact i64 %i.f, 2
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 6 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !47
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 %i.g ; 2 uses
  %i.k = load i8, ptr %i.j, align 1, !tbaa !11
  %.not = icmp eq i8 %i.k, 0
  br i1 %.not, label %bb.b, label %_ZN11flatbuffers13ResizeContext8StraddleIiLin1EEEvPKvS3_Pv.exit

bb.b:                                             ; preds = %bb.a
  %i.l = load i32, ptr %2, align 4, !tbaa !14     ; 2 uses
  %i.m = sext i32 %i.l to i64
  %i.n = sub nsw i64 0, %i.m
  %i.o = getelementptr inbounds i8, ptr %2, i64 %i.n ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 5 uses
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !55   ; 3 uses
  %.not69 = icmp ugt ptr %i.q, %2
  br i1 %.not69, label %_ZNK11flatbuffers5Table22GetOptionalFieldOffsetEt.exit.i.i.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %.not.i = icmp ugt ptr %i.o, %i.q
  br i1 %.not.i, label %_ZN11flatbuffers13ResizeContext8StraddleIiLin1EEEvPKvS3_Pv.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.s = load i32, ptr %i.r, align 8, !tbaa !56
  %i.t = sub nsw i32 %i.l, %i.s
  store i32 %i.t, ptr %2, align 4, !tbaa !14
  store i8 1, ptr %i.j, align 1, !tbaa !11
  br label %_ZN11flatbuffers13ResizeContext8StraddleIiLin1EEEvPKvS3_Pv.exit

_ZNK11flatbuffers5Table22GetOptionalFieldOffsetEt.exit.i.i.i: ; preds = %bb.b
  %i.u = load i32, ptr %1, align 4, !tbaa !14
  %i.v = sext i32 %i.u to i64
  %i.w = sub nsw i64 0, %i.v
  %i.x = getelementptr inbounds i8, ptr %1, i64 %i.w
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 6
  %i.z = load i16, ptr %i.y, align 2, !tbaa !13   ; 2 uses
  %.not.i.i.i = icmp ne i16 %i.z, 0
  tail call void @llvm.assume(i1 %.not.i.i.i)
  %i.aa = zext i16 %i.z to i64
  %i.ab = getelementptr inbounds nuw i8, ptr %1, i64 %i.aa ; 2 uses
  %i.ac = load i32, ptr %i.ab, align 4, !tbaa !14
  %i.ad = zext i32 %i.ac to i64
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ab, i64 %i.ad ; 3 uses
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 4 ; 2 uses
  %i.ag = load i32, ptr %i.ae, align 4, !tbaa !35, !noalias !221
  %.mask = and i32 %i.ag, 1073741823
  %.not126132 = icmp eq i32 %.mask, 0
  br i1 %.not126132, label %._crit_edge, label %_ZNK11flatbuffers5Table22GetOptionalFieldOffsetEt.exit.i.i.i79.lr.ph

_ZNK11flatbuffers5Table22GetOptionalFieldOffsetEt.exit.i.i.i79.lr.ph: ; preds = %_ZNK11flatbuffers5Table22GetOptionalFieldOffsetEt.exit.i.i.i
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  br label %_ZNK11flatbuffers5Table22GetOptionalFieldOffsetEt.exit.i.i.i79

._crit_edge.loopexit:                             ; preds = %_ZNK10reflection4Type9base_typeEv.exit.thread
  %.pre141.a = load ptr, ptr %i.p, align 8, !tbaa !55
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %_ZNK11flatbuffers5Table22GetOptionalFieldOffsetEt.exit.i.i.i
  %i.ai = phi ptr [ %.pre141.a, %._crit_edge.loopexit ], [ %i.q, %_ZNK11flatbuffers5Table22GetOptionalFieldOffsetEt.exit.i.i.i ] ; 2 uses
  %.not.i75 = icmp ugt ptr %2, %i.ai
  %.not6.i76 = icmp ult ptr %i.o, %i.ai
  %or.cond.i77 = or i1 %.not.i75, %.not6.i76
  br i1 %or.cond.i77, label %_ZN11flatbuffers13ResizeContext8StraddleIiLin1EEEvPKvS3_Pv.exit, label %bb.e

bb.e:                                             ; preds = %._crit_edge
  %i.aj = load i32, ptr %2, align 4, !tbaa !14
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.al = load i32, ptr %i.ak, align 8, !tbaa !56
  %i.am = sub nsw i32 %i.aj, %i.al
  store i32 %i.am, ptr %2, align 4, !tbaa !14
  %i.an = load ptr, ptr %i.a, align 8, !tbaa !58, !nonnull !59, !align !60
  %i.ao = load ptr, ptr %i.an, align 8, !tbaa !47
  %i.ap = ptrtoint ptr %i.ao to i64
  %i.aq = sub i64 %i.d, %i.ap
  %i.ar = ashr exact i64 %i.aq, 2
  %i.as = load ptr, ptr %i.h, align 8, !tbaa !47
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 %i.ar
  store i8 1, ptr %i.at, align 1, !tbaa !11
  br label %_ZN11flatbuffers13ResizeContext8StraddleIiLin1EEEvPKvS3_Pv.exit

_ZNK11flatbuffers5Table22GetOptionalFieldOffsetEt.exit.i.i.i79: ; preds = %_ZNK11flatbuffers5Table22GetOptionalFieldOffsetEt.exit.i.i.i79.lr.ph, %_ZNK10reflection4Type9base_typeEv.exit.thread
  %.sroa.0116.0133 = phi ptr [ %i.af, %_ZNK11flatbuffers5Table22GetOptionalFieldOffsetEt.exit.i.i.i79.lr.ph ], [ %i.iz, %_ZNK10reflection4Type9base_typeEv.exit.thread ] ; 3 uses
  %i.au = load i32, ptr %.sroa.0116.0133, align 4, !tbaa !14
  %i.av = zext i32 %i.au to i64
  %i.aw = getelementptr inbounds nuw i8, ptr %.sroa.0116.0133, i64 %i.av ; 8 uses
  %i.ax = load i32, ptr %i.aw, align 4, !tbaa !14
  %i.ay = sext i32 %i.ax to i64
  %i.az = sub nsw i64 0, %i.ay
  %i.ba = getelementptr inbounds i8, ptr %i.aw, i64 %i.az ; 3 uses
  %i.bb = load i16, ptr %i.ba, align 2, !tbaa !13 ; 2 uses
  %i.bc = icmp ugt i16 %i.bb, 6
  tail call void @llvm.assume(i1 %i.bc)
  %i.bd = getelementptr inbounds nuw i8, ptr %i.ba, i64 6
  %i.be = load i16, ptr %i.bd, align 2, !tbaa !13 ; 2 uses
  %.not.i.i.i80 = icmp ne i16 %i.be, 0
  tail call void @llvm.assume(i1 %.not.i.i.i80)
  %i.bf = zext i16 %i.be to i64
  %i.bg = getelementptr inbounds nuw i8, ptr %i.aw, i64 %i.bf ; 2 uses
  %i.bh = load i32, ptr %i.bg, align 4, !tbaa !14
  %i.bi = zext i32 %i.bh to i64
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bg, i64 %i.bi ; 4 uses
  %i.bk = load i32, ptr %i.bj, align 4, !tbaa !14
  %i.bl = sext i32 %i.bk to i64
  %i.bm = sub nsw i64 0, %i.bl
  %i.bn = getelementptr inbounds i8, ptr %i.bj, i64 %i.bm ; 3 uses
  %i.bo = load i16, ptr %i.bn, align 2, !tbaa !13 ; 2 uses
  %i.bp = icmp ugt i16 %i.bo, 4
  br i1 %i.bp, label %_ZNK11flatbuffers5Table22GetOptionalFieldOffsetEt.exit.i.i, label %_ZNK10reflection4Type9base_typeEv.exit.thread

_ZNK11flatbuffers5Table22GetOptionalFieldOffsetEt.exit.i.i: ; preds = %_ZNK11flatbuffers5Table22GetOptionalFieldOffsetEt.exit.i.i.i79
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bn, i64 4
  %i.br = load i16, ptr %i.bq, align 2, !tbaa !13 ; 2 uses
  %.not.i.i = icmp eq i16 %i.br, 0
  br i1 %.not.i.i, label %_ZNK10reflection4Type9base_typeEv.exit.thread, label %_ZNK10reflection4Type9base_typeEv.exit

_ZNK10reflection4Type9base_typeEv.exit:           ; preds = %_ZNK11flatbuffers5Table22GetOptionalFieldOffsetEt.exit.i.i
  %i.bs = zext i16 %i.br to i64
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bj, i64 %i.bs
  %i.bu = load i8, ptr %i.bt, align 1, !tbaa !11  ; 3 uses
  %i.bv = icmp slt i8 %i.bu, 13
  br i1 %i.bv, label %_ZNK10reflection4Type9base_typeEv.exit.thread, label %bb.f

bb.f:                                             ; preds = %_ZNK10reflection4Type9base_typeEv.exit
  %i.bw = icmp ugt i16 %i.bb, 10
  br i1 %i.bw, label %_ZNK11flatbuffers5Table22GetOptionalFieldOffsetEt.exit.i.i81, label %_ZNK10reflection5Field6offsetEv.exit

_ZNK11flatbuffers5Table22GetOptionalFieldOffsetEt.exit.i.i81: ; preds = %bb.f
  %i.bx = getelementptr inbounds nuw i8, ptr %i.ba, i64 10
  %i.by = load i16, ptr %i.bx, align 2, !tbaa !13 ; 2 uses
  %.not.i.i82 = icmp eq i16 %i.by, 0
  br i1 %.not.i.i82, label %_ZNK10reflection5Field6offsetEv.exit, label %bb.g

bb.g:                                             ; preds = %_ZNK11flatbuffers5Table22GetOptionalFieldOffsetEt.exit.i.i81
  %i.bz = zext i16 %i.by to i64
  %i.ca = getelementptr inbounds nuw i8, ptr %i.aw, i64 %i.bz
  %i.cb = load i16, ptr %i.ca, align 2, !tbaa !13
  br label %_ZNK10reflection5Field6offsetEv.exit

_ZNK10reflection5Field6offsetEv.exit:             ; preds = %bb.f, %_ZNK11flatbuffers5Table22GetOptionalFieldOffsetEt.exit.i.i81, %bb.g
  %i.cc = phi i16 [ %i.cb, %bb.g ], [ 0, %_ZNK11flatbuffers5Table22GetOptionalFieldOffsetEt.exit.i.i81 ], [ 0, %bb.f ] ; 2 uses
  %i.cd = load i32, ptr %2, align 4, !tbaa !14
  %i.ce = sext i32 %i.cd to i64
  %i.cf = sub nsw i64 0, %i.ce
  %i.cg = getelementptr inbounds i8, ptr %2, i64 %i.cf ; 2 uses
  %i.ch = load i16, ptr %i.cg, align 2, !tbaa !13
  %i.ci = icmp ult i16 %i.cc, %i.ch
  br i1 %i.ci, label %_ZNK11flatbuffers5Table22GetOptionalFieldOffsetEt.exit, label %_ZNK10reflection4Type9base_typeEv.exit.thread

_ZNK11flatbuffers5Table22GetOptionalFieldOffsetEt.exit: ; preds = %_ZNK10reflection5Field6offsetEv.exit
  %i.cj = zext i16 %i.cc to i64
  %i.ck = getelementptr inbounds nuw i8, ptr %i.cg, i64 %i.cj
  %i.cl = load i16, ptr %i.ck, align 2, !tbaa !13 ; 2 uses
  %.not70 = icmp eq i16 %i.cl, 0
  br i1 %.not70, label %_ZNK10reflection4Type9base_typeEv.exit.thread, label %bb.h

bb.h:                                             ; preds = %_ZNK11flatbuffers5Table22GetOptionalFieldOffsetEt.exit
  %.not128 = icmp eq i8 %i.bu, 15
  br i1 %.not128, label %bb.i, label %.thread

bb.i:                                             ; preds = %bb.h
  %i.cm = load ptr, ptr %0, align 8, !tbaa !222, !nonnull !59 ; 3 uses
  %i.cn = load i32, ptr %i.cm, align 4, !tbaa !14
  %i.co = sext i32 %i.cn to i64
  %i.cp = sub nsw i64 0, %i.co
  %i.cq = getelementptr inbounds i8, ptr %i.cm, i64 %i.cp ; 2 uses
  %i.cr = load i16, ptr %i.cq, align 2, !tbaa !13
  %i.cs = icmp ugt i16 %i.cr, 4
  br i1 %i.cs, label %_ZNK11flatbuffers5Table22GetOptionalFieldOffsetEt.exit.i.i.i83, label %_ZNK10reflection6Schema7objectsEv.exit

_ZNK11flatbuffers5Table22GetOptionalFieldOffsetEt.exit.i.i.i83: ; preds = %bb.i
  %i.ct = getelementptr inbounds nuw i8, ptr %i.cq, i64 4
  %i.cu = load i16, ptr %i.ct, align 2, !tbaa !13 ; 2 uses
  %.not.i.i.i84 = icmp eq i16 %i.cu, 0
  br i1 %.not.i.i.i84, label %_ZNK10reflection6Schema7objectsEv.exit, label %bb.j

bb.j:                                             ; preds = %_ZNK11flatbuffers5Table22GetOptionalFieldOffsetEt.exit.i.i.i83
  %i.cv = zext i16 %i.cu to i64
  %i.cw = getelementptr inbounds nuw i8, ptr %i.cm, i64 %i.cv ; 2 uses
  %i.cx = load i32, ptr %i.cw, align 4, !tbaa !14
  %i.cy = zext i32 %i.cx to i64
  %i.cz = getelementptr inbounds nuw i8, ptr %i.cw, i64 %i.cy
  br label %_ZNK10reflection6Schema7objectsEv.exit

_ZNK10reflection6Schema7objectsEv.exit:           ; preds = %bb.i, %_ZNK11flatbuffers5Table22GetOptionalFieldOffsetEt.exit.i.i.i83, %bb.j
  %i.da = phi ptr [ %i.cz, %bb.j ], [ null, %_ZNK11flatbuffers5Table22GetOptionalFieldOffsetEt.exit.i.i.i83 ], [ null, %bb.i ]
  %i.db = icmp ugt i16 %i.bo, 8
  br i1 %i.db, label %_ZNK11flatbuffers5Table22GetOptionalFieldOffsetEt.exit.i.i88, label %bb.l

_ZNK11flatbuffers5Table22GetOptionalFieldOffsetEt.exit.i.i88: ; preds = %_ZNK10reflection6Schema7objectsEv.exit
  %i.dc = getelementptr inbounds nuw i8, ptr %i.bn, i64 8
  %i.dd = load i16, ptr %i.dc, align 2, !tbaa !13 ; 2 uses
  %.not.i.i89 = icmp eq i16 %i.dd, 0
  br i1 %.not.i.i89, label %bb.l, label %bb.k

bb.k:                                             ; preds = %_ZNK11flatbuffers5Table22GetOptionalFieldOffsetEt.exit.i.i88
  %i.de = zext i16 %i.dd to i64
  %i.df = getelementptr inbounds nuw i8, ptr %i.bj, i64 %i.de
  %i.dg = load i32, ptr %i.df, align 4, !tbaa !14
  %i.dh = shl i32 %i.dg, 2
  %i.di = zext i32 %i.dh to i64
  br label %bb.l

bb.l:                                             ; preds = %_ZNK10reflection6Schema7objectsEv.exit, %_ZNK11flatbuffers5Table22GetOptionalFieldOffsetEt.exit.i.i88, %bb.k
  %i.dj = phi i64 [ %i.di, %bb.k ], [ 4294967292, %_ZNK11flatbuffers5Table22GetOptionalFieldOffsetEt.exit.i.i88 ], [ 4294967292, %_ZNK10reflection6Schema7objectsEv.exit ]
  %i.dk = getelementptr inbounds nuw i8, ptr %i.da, i64 4
  %i.dl = getelementptr inbounds nuw i8, ptr %i.dk, i64 %i.dj ; 2 uses
  %i.dm = load i32, ptr %i.dl, align 4, !tbaa !14
  %i.dn = zext i32 %i.dm to i64
  %i.do = getelementptr inbounds nuw i8, ptr %i.dl, i64 %i.dn ; 6 uses
  %i.dp = load i32, ptr %i.do, align 4, !tbaa !14
  %i.dq = sext i32 %i.dp to i64
  %i.dr = sub nsw i64 0, %i.dq
  %i.ds = getelementptr inbounds i8, ptr %i.do, i64 %i.dr ; 2 uses
  %i.dt = load i16, ptr %i.ds, align 2, !tbaa !13
  %i.du = icmp ugt i16 %i.dt, 8
  br i1 %i.du, label %_ZNK11flatbuffers5Table22GetOptionalFieldOffsetEt.exit.i.i90, label %.thread

_ZNK11flatbuffers5Table22GetOptionalFieldOffsetEt.exit.i.i90: ; preds = %bb.l
  %i.dv = getelementptr inbounds nuw i8, ptr %i.ds, i64 8
  %i.dw = load i16, ptr %i.dv, align 2, !tbaa !13 ; 2 uses
  %.not.i.i91 = icmp eq i16 %i.dw, 0
  br i1 %.not.i.i91, label %.thread, label %_ZNK10reflection6Object9is_structEv.exit

_ZNK10reflection6Object9is_structEv.exit:         ; preds = %_ZNK11flatbuffers5Table22GetOptionalFieldOffsetEt.exit.i.i90
  %i.dx = zext i16 %i.dw to i64
  %i.dy = getelementptr inbounds nuw i8, ptr %i.do, i64 %i.dx
  %i.dz = load i8, ptr %i.dy, align 1, !tbaa !11
  %.not127 = icmp eq i8 %i.dz, 0
  br i1 %.not127, label %.thread, label %_ZNK10reflection4Type9base_typeEv.exit.thread

.thread:                                          ; preds = %bb.l, %_ZNK11flatbuffers5Table22GetOptionalFieldOffsetEt.exit.i.i90, %bb.h, %_ZNK10reflection6Object9is_structEv.exit
  %i.ea = phi ptr [ null, %bb.h ], [ %i.do, %_ZNK10reflection6Object9is_structEv.exit ], [ %i.do, %_ZNK11flatbuffers5Table22GetOptionalFieldOffsetEt.exit.i.i90 ], [ %i.do, %bb.l ]
  %i.eb = zext i16 %i.cl to i64
  %i.ec = getelementptr inbounds nuw i8, ptr %2, i64 %i.eb ; 5 uses
  %i.ed = load ptr, ptr %i.a, align 8, !tbaa !58, !nonnull !59, !align !60
  %i.ee = load ptr, ptr %i.ed, align 8, !tbaa !47
  %i.ef = ptrtoint ptr %i.ec to i64
  %i.eg = ptrtoint ptr %i.ee to i64
  %i.eh = sub i64 %i.ef, %i.eg
  %i.ei = ashr exact i64 %i.eh, 2
  %i.ej = load ptr, ptr %i.h, align 8, !tbaa !47
  %i.ek = getelementptr inbounds nuw i8, ptr %i.ej, i64 %i.ei ; 2 uses
  %i.el = load i8, ptr %i.ek, align 1, !tbaa !11
  %.not72 = icmp eq i8 %i.el, 0
  br i1 %.not72, label %bb.m, label %_ZNK10reflection4Type9base_typeEv.exit.thread

bb.m:                                             ; preds = %.thread
  %i.em = load i32, ptr %i.ec, align 4, !tbaa !14 ; 2 uses
  %i.en = zext i32 %i.em to i64
  %i.eo = getelementptr inbounds nuw i8, ptr %i.ec, i64 %i.en ; 8 uses
  %i.ep = load ptr, ptr %i.p, align 8, !tbaa !55  ; 2 uses
  %.not.i92 = icmp ugt ptr %i.ec, %i.ep
  %.not6.i93 = icmp ult ptr %i.eo, %i.ep
  %or.cond.i94 = or i1 %.not.i92, %.not6.i93
  br i1 %or.cond.i94, label %_ZN11flatbuffers13ResizeContext8StraddleIjLi1EEEvPKvS3_Pv.exit, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.eq = load i32, ptr %i.ah, align 8, !tbaa !56
  %i.er = add i32 %i.eq, %i.em
  store i32 %i.er, ptr %i.ec, align 4, !tbaa !14
  store i8 1, ptr %i.ek, align 1, !tbaa !11
  br label %_ZN11flatbuffers13ResizeContext8StraddleIjLi1EEEvPKvS3_Pv.exit

_ZN11flatbuffers13ResizeContext8StraddleIjLi1EEEvPKvS3_Pv.exit: ; preds = %bb.m, %bb.n
  switch i8 %i.bu, label %_ZNK10reflection4Type9base_typeEv.exit.thread [
    i8 15, label %_ZNK10reflection4Type9base_typeEv.exit.thread.sink.split
    i8 14, label %_ZNK11flatbuffers5Table22GetOptionalFieldOffsetEt.exit.i.i.i95
    i8 16, label %bb.y
  ]

_ZNK11flatbuffers5Table22GetOptionalFieldOffsetEt.exit.i.i.i95: ; preds = %_ZN11flatbuffers13ResizeContext8StraddleIjLi1EEEvPKvS3_Pv.exit
  %i.es = load i32, ptr %i.aw, align 4, !tbaa !14
  %i.et = sext i32 %i.es to i64
  %i.eu = sub nsw i64 0, %i.et
  %i.ev = getelementptr inbounds i8, ptr %i.aw, i64 %i.eu
  %i.ew = getelementptr inbounds nuw i8, ptr %i.ev, i64 6
  %i.ex = load i16, ptr %i.ew, align 2, !tbaa !13 ; 2 uses
  %.not.i.i.i96 = icmp ne i16 %i.ex, 0
  tail call void @llvm.assume(i1 %.not.i.i.i96)
  %i.ey = zext i16 %i.ex to i64
  %i.ez = getelementptr inbounds nuw i8, ptr %i.aw, i64 %i.ey ; 2 uses
  %i.fa = load i32, ptr %i.ez, align 4, !tbaa !14
  %i.fb = zext i32 %i.fa to i64
  %i.fc = getelementptr inbounds nuw i8, ptr %i.ez, i64 %i.fb ; 4 uses
  %i.fd = load i32, ptr %i.fc, align 4, !tbaa !14
  %i.fe = sext i32 %i.fd to i64
  %i.ff = sub nsw i64 0, %i.fe
  %i.fg = getelementptr inbounds i8, ptr %i.fc, i64 %i.ff ; 3 uses
  %i.fh = load i16, ptr %i.fg, align 2, !tbaa !13 ; 2 uses
  %i.fi = icmp ugt i16 %i.fh, 6
  br i1 %i.fi, label %_ZNK11flatbuffers5Table22GetOptionalFieldOffsetEt.exit.i.i98, label %_ZNK10reflection4Type9base_typeEv.exit.thread

_ZNK11flatbuffers5Table22GetOptionalFieldOffsetEt.exit.i.i98: ; preds = %_ZNK11flatbuffers5Table22GetOptionalFieldOffsetEt.exit.i.i.i95
  %i.fj = getelementptr inbounds nuw i8, ptr %i.fg, i64 6
  %i.fk = load i16, ptr %i.fj, align 2, !tbaa !13 ; 2 uses
  %.not.i.i99 = icmp eq i16 %i.fk, 0
  br i1 %.not.i.i99, label %_ZNK10reflection4Type9base_typeEv.exit.thread, label %_ZNK10reflection4Type7elementEv.exit

_ZNK10reflection4Type7elementEv.exit:             ; preds = %_ZNK11flatbuffers5Table22GetOptionalFieldOffsetEt.exit.i.i98
  %i.fl = zext i16 %i.fk to i64
  %i.fm = getelementptr inbounds nuw i8, ptr %i.fc, i64 %i.fl
  %i.fn = load i8, ptr %i.fm, align 1, !tbaa !11  ; 2 uses
  %i.fo = and i8 %i.fn, -3
  %or.cond.not = icmp eq i8 %i.fo, 13
  br i1 %or.cond.not, label %bb.o, label %_ZNK10reflection4Type9base_typeEv.exit.thread

bb.o:                                             ; preds = %_ZNK10reflection4Type7elementEv.exit
  %.not130 = icmp eq i8 %i.fn, 15
  br i1 %.not130, label %bb.p, label %.thread123.thread

bb.p:                                             ; preds = %bb.o
  %i.fp = load ptr, ptr %0, align 8, !tbaa !222, !nonnull !59 ; 3 uses
  %i.fq = load i32, ptr %i.fp, align 4, !tbaa !14
  %i.fr = sext i32 %i.fq to i64
  %i.fs = sub nsw i64 0, %i.fr
  %i.ft = getelementptr inbounds i8, ptr %i.fp, i64 %i.fs ; 2 uses
  %i.fu = load i16, ptr %i.ft, align 2, !tbaa !13
  %i.fv = icmp ugt i16 %i.fu, 4
  br i1 %i.fv, label %_ZNK11flatbuffers5Table22GetOptionalFieldOffsetEt.exit.i.i.i100, label %_ZNK10reflection6Schema7objectsEv.exit102

_ZNK11flatbuffers5Table22GetOptionalFieldOffsetEt.exit.i.i.i100: ; preds = %bb.p
  %i.fw = getelementptr inbounds nuw i8, ptr %i.ft, i64 4
  %i.fx = load i16, ptr %i.fw, align 2, !tbaa !13 ; 2 uses
  %.not.i.i.i101 = icmp eq i16 %i.fx, 0
  br i1 %.not.i.i.i101, label %_ZNK10reflection6Schema7objectsEv.exit102, label %bb.q

bb.q:                                             ; preds = %_ZNK11flatbuffers5Table22GetOptionalFieldOffsetEt.exit.i.i.i100
  %i.fy = zext i16 %i.fx to i64
  %i.fz = getelementptr inbounds nuw i8, ptr %i.fp, i64 %i.fy ; 2 uses
  %i.ga = load i32, ptr %i.fz, align 4, !tbaa !14
  %i.gb = zext i32 %i.ga to i64
  %i.gc = getelementptr inbounds nuw i8, ptr %i.fz, i64 %i.gb
  br label %_ZNK10reflection6Schema7objectsEv.exit102

_ZNK10reflection6Schema7objectsEv.exit102:        ; preds = %bb.p, %_ZNK11flatbuffers5Table22GetOptionalFieldOffsetEt.exit.i.i.i100, %bb.q
  %i.gd = phi ptr [ %i.gc, %bb.q ], [ null, %_ZNK11flatbuffers5Table22GetOptionalFieldOffsetEt.exit.i.i.i100 ], [ null, %bb.p ]
  %i.ge = icmp ugt i16 %i.fh, 8
  br i1 %i.ge, label %_ZNK11flatbuffers5Table22GetOptionalFieldOffsetEt.exit.i.i106, label %bb.s

_ZNK11flatbuffers5Table22GetOptionalFieldOffsetEt.exit.i.i106: ; preds = %_ZNK10reflection6Schema7objectsEv.exit102
  %i.gf = getelementptr inbounds nuw i8, ptr %i.fg, i64 8
  %i.gg = load i16, ptr %i.gf, align 2, !tbaa !13 ; 2 uses
  %.not.i.i107 = icmp eq i16 %i.gg, 0
  br i1 %.not.i.i107, label %bb.s, label %bb.r

bb.r:                                             ; preds = %_ZNK11flatbuffers5Table22GetOptionalFieldOffsetEt.exit.i.i106
  %i.gh = zext i16 %i.gg to i64
  %i.gi = getelementptr inbounds nuw i8, ptr %i.fc, i64 %i.gh
  %i.gj = load i32, ptr %i.gi, align 4, !tbaa !14
  %i.gk = shl i32 %i.gj, 2
  %i.gl = zext i32 %i.gk to i64
  br label %bb.s

bb.s:                                             ; preds = %_ZNK10reflection6Schema7objectsEv.exit102, %_ZNK11flatbuffers5Table22GetOptionalFieldOffsetEt.exit.i.i106, %bb.r
  %i.gm = phi i64 [ %i.gl, %bb.r ], [ 4294967292, %_ZNK11flatbuffers5Table22GetOptionalFieldOffsetEt.exit.i.i106 ], [ 4294967292, %_ZNK10reflection6Schema7objectsEv.exit102 ]
  %i.gn = getelementptr inbounds nuw i8, ptr %i.gd, i64 4
  %i.go = getelementptr inbounds nuw i8, ptr %i.gn, i64 %i.gm ; 2 uses
  %i.gp = load i32, ptr %i.go, align 4, !tbaa !14
  %i.gq = zext i32 %i.gp to i64
  %i.gr = getelementptr inbounds nuw i8, ptr %i.go, i64 %i.gq ; 4 uses
  %i.gs = load i32, ptr %i.gr, align 4, !tbaa !14
  %i.gt = sext i32 %i.gs to i64
  %i.gu = sub nsw i64 0, %i.gt
  %i.gv = getelementptr inbounds i8, ptr %i.gr, i64 %i.gu ; 2 uses
  %i.gw = load i16, ptr %i.gv, align 2, !tbaa !13
  %i.gx = icmp ugt i16 %i.gw, 8
  br i1 %i.gx, label %_ZNK11flatbuffers5Table22GetOptionalFieldOffsetEt.exit.i.i109, label %.thread123

_ZNK11flatbuffers5Table22GetOptionalFieldOffsetEt.exit.i.i109: ; preds = %bb.s
  %i.gy = getelementptr inbounds nuw i8, ptr %i.gv, i64 8
  %i.gz = load i16, ptr %i.gy, align 2, !tbaa !13 ; 2 uses
  %.not.i.i110 = icmp eq i16 %i.gz, 0
  br i1 %.not.i.i110, label %.thread123, label %_ZNK10reflection6Object9is_structEv.exit111

_ZNK10reflection6Object9is_structEv.exit111:      ; preds = %_ZNK11flatbuffers5Table22GetOptionalFieldOffsetEt.exit.i.i109
  %i.ha = zext i16 %i.gz to i64
  %i.hb = getelementptr inbounds nuw i8, ptr %i.gr, i64 %i.ha
  %i.hc = load i8, ptr %i.hb, align 1, !tbaa !11
  %.not129 = icmp eq i8 %i.hc, 0
  br i1 %.not129, label %.thread123, label %_ZNK10reflection4Type9base_typeEv.exit.thread

.thread123:                                       ; preds = %bb.s, %_ZNK11flatbuffers5Table22GetOptionalFieldOffsetEt.exit.i.i109, %_ZNK10reflection6Object9is_structEv.exit111
  %i.hd = load i32, ptr %i.eo, align 4, !tbaa !224 ; 2 uses
  %.not134 = icmp eq i32 %i.hd, 0
  br i1 %.not134, label %_ZNK10reflection4Type9base_typeEv.exit.thread, label %.lr.ph

.thread123.thread:                                ; preds = %bb.o
  %i.he = load i32, ptr %i.eo, align 4, !tbaa !224 ; 2 uses
  %.not134162 = icmp eq i32 %i.he, 0
  br i1 %.not134162, label %_ZNK10reflection4Type9base_typeEv.exit.thread, label %.lr.ph.thread

.lr.ph.thread:                                    ; preds = %.thread123.thread
  %i.hf = getelementptr inbounds nuw i8, ptr %i.eo, i64 4 ; 2 uses
  %.pre140 = load ptr, ptr %i.a, align 8, !tbaa !58
  %.pre142 = load ptr, ptr %i.h, align 8, !tbaa !47
  br label %.lr.ph.split

.lr.ph:                                           ; preds = %.thread123
  %i.hg = getelementptr inbounds nuw i8, ptr %i.eo, i64 4 ; 2 uses
  br label %.lr.ph.split.us

.lr.ph.split.us:                                  ; preds = %.lr.ph, %bb.v
  %i.hh = phi i32 [ %i.ia, %bb.v ], [ %i.hd, %.lr.ph ]
  %indvars.iv137 = phi i64 [ %indvars.iv.next138, %bb.v ], [ 0, %.lr.ph ] ; 3 uses
  %i.hi = shl nuw nsw i64 %indvars.iv137, 2
  %i.hj = getelementptr inbounds nuw i8, ptr %i.hg, i64 %i.hi ; 4 uses
  %i.hk = load ptr, ptr %i.a, align 8, !tbaa !58, !nonnull !59, !align !60
  %i.hl = load ptr, ptr %i.hk, align 8, !tbaa !47
  %i.hm = ptrtoint ptr %i.hj to i64
  %i.hn = ptrtoint ptr %i.hl to i64
  %i.ho = sub i64 %i.hm, %i.hn
  %i.hp = ashr exact i64 %i.ho, 2
  %i.hq = load ptr, ptr %i.h, align 8, !tbaa !47
  %i.hr = getelementptr inbounds nuw i8, ptr %i.hq, i64 %i.hp ; 2 uses
  %i.hs = load i8, ptr %i.hr, align 1, !tbaa !11
  %.not74.us = icmp eq i8 %i.hs, 0
  br i1 %.not74.us, label %bb.t, label %bb.v

bb.t:                                             ; preds = %.lr.ph.split.us
  %i.ht = getelementptr inbounds nuw [4 x i8], ptr %i.hg, i64 %indvars.iv137
  %i.hu = load i32, ptr %i.ht, align 4, !tbaa !14 ; 2 uses
  %i.hv = zext i32 %i.hu to i64
  %i.hw = getelementptr inbounds nuw i8, ptr %i.hj, i64 %i.hv ; 2 uses
  %i.hx = load ptr, ptr %i.p, align 8, !tbaa !55  ; 2 uses
  %.not.i112.us = icmp ugt ptr %i.hj, %i.hx
  %.not6.i113.us = icmp ult ptr %i.hw, %i.hx
  %or.cond.i114.us = or i1 %.not.i112.us, %.not6.i113.us
  br i1 %or.cond.i114.us, label %_ZN11flatbuffers13ResizeContext8StraddleIjLi1EEEvPKvS3_Pv.exit115.us, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.hy = load i32, ptr %i.ah, align 8, !tbaa !56
  %i.hz = add i32 %i.hy, %i.hu
  store i32 %i.hz, ptr %i.hj, align 4, !tbaa !14
  store i8 1, ptr %i.hr, align 1, !tbaa !11
  br label %_ZN11flatbuffers13ResizeContext8StraddleIjLi1EEEvPKvS3_Pv.exit115.us

_ZN11flatbuffers13ResizeContext8StraddleIjLi1EEEvPKvS3_Pv.exit115.us: ; preds = %bb.u, %bb.t
  tail call void @_ZN11flatbuffers13ResizeContext11ResizeTableERKN10reflection6ObjectEPNS_5TableE(ptr noundef nonnull align 8 dereferenceable(56) %0, ptr noundef nonnull align 1 dereferenceable(1) %i.gr, ptr noundef nonnull %i.hw)
  %.pre140.a = load i32, ptr %i.eo, align 4, !tbaa !224
  br label %bb.v

bb.v:                                             ; preds = %_ZN11flatbuffers13ResizeContext8StraddleIjLi1EEEvPKvS3_Pv.exit115.us, %.lr.ph.split.us
  %i.ia = phi i32 [ %.pre140.a, %_ZN11flatbuffers13ResizeContext8StraddleIjLi1EEEvPKvS3_Pv.exit115.us ], [ %i.hh, %.lr.ph.split.us ] ; 2 uses
  %indvars.iv.next138 = add nuw nsw i64 %indvars.iv137, 1 ; 2 uses
  %i.ib = zext i32 %i.ia to i64
  %i.ic = icmp samesign ult i64 %indvars.iv.next138, %i.ib
  br i1 %i.ic, label %.lr.ph.split.us, label %_ZNK10reflection4Type9base_typeEv.exit.thread, !llvm.loop !219

.lr.ph.split:                                     ; preds = %.lr.ph.thread, %_ZN11flatbuffers13ResizeContext8StraddleIjLi1EEEvPKvS3_Pv.exit115
  %i.id = phi i32 [ %i.he, %.lr.ph.thread ], [ %i.iu, %_ZN11flatbuffers13ResizeContext8StraddleIjLi1EEEvPKvS3_Pv.exit115 ] ; 2 uses
  %3 = phi ptr [ %.pre142, %.lr.ph.thread ], [ %5, %_ZN11flatbuffers13ResizeContext8StraddleIjLi1EEEvPKvS3_Pv.exit115 ] ; 3 uses
  %4 = phi ptr [ %.pre140, %.lr.ph.thread ], [ %6, %_ZN11flatbuffers13ResizeContext8StraddleIjLi1EEEvPKvS3_Pv.exit115 ] ; 3 uses
  %indvars.iv = phi i64 [ 0, %.lr.ph.thread ], [ %indvars.iv.next, %_ZN11flatbuffers13ResizeContext8StraddleIjLi1EEEvPKvS3_Pv.exit115 ] ; 3 uses
  %i.ie = shl nuw nsw i64 %indvars.iv, 2
  %i.if = getelementptr inbounds nuw i8, ptr %i.hf, i64 %i.ie ; 4 uses
  %i.ig = load ptr, ptr %4, align 8, !tbaa !47
  %i.ih = ptrtoint ptr %i.if to i64
  %i.ii = ptrtoint ptr %i.ig to i64
  %i.ij = sub i64 %i.ih, %i.ii
  %i.ik = ashr exact i64 %i.ij, 2
  %i.il = getelementptr inbounds nuw i8, ptr %3, i64 %i.ik ; 2 uses
  %i.im = load i8, ptr %i.il, align 1, !tbaa !11
  %.not74 = icmp eq i8 %i.im, 0
  br i1 %.not74, label %bb.w, label %_ZN11flatbuffers13ResizeContext8StraddleIjLi1EEEvPKvS3_Pv.exit115

bb.w:                                             ; preds = %.lr.ph.split
  %i.in = getelementptr inbounds nuw [4 x i8], ptr %i.hf, i64 %indvars.iv
  %i.io = load i32, ptr %i.in, align 4, !tbaa !14 ; 2 uses
  %i.ip = zext i32 %i.io to i64
  %i.iq = getelementptr inbounds nuw i8, ptr %i.if, i64 %i.ip
  %i.ir = load ptr, ptr %i.p, align 8, !tbaa !55  ; 2 uses
  %.not.i112 = icmp ugt ptr %i.if, %i.ir
  %.not6.i113 = icmp ult ptr %i.iq, %i.ir
  %or.cond.i114 = or i1 %.not.i112, %.not6.i113
  br i1 %or.cond.i114, label %_ZN11flatbuffers13ResizeContext8StraddleIjLi1EEEvPKvS3_Pv.exit115, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.is = load i32, ptr %i.ah, align 8, !tbaa !56
  %i.it = add i32 %i.is, %i.io
  store i32 %i.it, ptr %i.if, align 4, !tbaa !14
  store i8 1, ptr %i.il, align 1, !tbaa !11
  %.pre = load ptr, ptr %i.a, align 8, !tbaa !58
  %.pre141 = load ptr, ptr %i.h, align 8, !tbaa !47
  %.pre.a = load i32, ptr %i.eo, align 4, !tbaa !224
  br label %_ZN11flatbuffers13ResizeContext8StraddleIjLi1EEEvPKvS3_Pv.exit115

_ZN11flatbuffers13ResizeContext8StraddleIjLi1EEEvPKvS3_Pv.exit115: ; preds = %bb.x, %bb.w, %.lr.ph.split
  %i.iu = phi i32 [ %.pre.a, %bb.x ], [ %i.id, %bb.w ], [ %i.id, %.lr.ph.split ] ; 2 uses
  %5 = phi ptr [ %.pre141, %bb.x ], [ %3, %bb.w ], [ %3, %.lr.ph.split ]
  %6 = phi ptr [ %.pre, %bb.x ], [ %4, %bb.w ], [ %4, %.lr.ph.split ]
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.iv = zext i32 %i.iu to i64
  %i.iw = icmp samesign ult i64 %indvars.iv.next, %i.iv
  br i1 %i.iw, label %.lr.ph.split, label %_ZNK10reflection4Type9base_typeEv.exit.thread, !llvm.loop !219

bb.y:                                             ; preds = %_ZN11flatbuffers13ResizeContext8StraddleIjLi1EEEvPKvS3_Pv.exit
  %i.ix = load ptr, ptr %0, align 8, !tbaa !222, !nonnull !59
  %i.iy = tail call noundef nonnull align 1 dereferenceable(1) ptr @_ZN11flatbuffers12GetUnionTypeERKN10reflection6SchemaERKNS0_6ObjectERKNS0_5FieldERKNS_5TableE(ptr noundef nonnull align 1 dereferenceable(1) %i.ix, ptr noundef nonnull align 1 dereferenceable(1) %1, ptr noundef nonnull align 1 dereferenceable(1) %i.aw, ptr noundef nonnull align 1 dereferenceable(1) %2)
  br label %_ZNK10reflection4Type9base_typeEv.exit.thread.sink.split

_ZNK10reflection4Type9base_typeEv.exit.thread.sink.split: ; preds = %_ZN11flatbuffers13ResizeContext8StraddleIjLi1EEEvPKvS3_Pv.exit, %bb.y
  %.sink = phi ptr [ %i.iy, %bb.y ], [ %i.ea, %_ZN11flatbuffers13ResizeContext8StraddleIjLi1EEEvPKvS3_Pv.exit ]
  tail call void @_ZN11flatbuffers13ResizeContext11ResizeTableERKN10reflection6ObjectEPNS_5TableE(ptr noundef nonnull align 8 dereferenceable(56) %0, ptr noundef nonnull align 1 dereferenceable(1) %.sink, ptr noundef nonnull %i.eo)
  br label %_ZNK10reflection4Type9base_typeEv.exit.thread

_ZNK10reflection4Type9base_typeEv.exit.thread:    ; preds = %_ZN11flatbuffers13ResizeContext8StraddleIjLi1EEEvPKvS3_Pv.exit115, %bb.v, %_ZNK10reflection4Type9base_typeEv.exit.thread.sink.split, %.thread123.thread, %.thread123, %_ZNK11flatbuffers5Table22GetOptionalFieldOffsetEt.exit.i.i.i95, %_ZNK11flatbuffers5Table22GetOptionalFieldOffsetEt.exit.i.i98, %_ZNK10reflection5Field6offsetEv.exit, %_ZNK11flatbuffers5Table22GetOptionalFieldOffsetEt.exit.i.i.i79, %_ZNK11flatbuffers5Table22GetOptionalFieldOffsetEt.exit.i.i, %_ZNK11flatbuffers5Table22GetOptionalFieldOffsetEt.exit, %.thread, %_ZNK10reflection4Type7elementEv.exit, %_ZNK10reflection6Object9is_structEv.exit111, %_ZN11flatbuffers13ResizeContext8StraddleIjLi1EEEvPKvS3_Pv.exit, %_ZNK10reflection6Object9is_structEv.exit, %_ZNK10reflection4Type9base_typeEv.exit
  %i.iz = getelementptr inbounds nuw i8, ptr %.sroa.0116.0133, i64 4 ; 2 uses
  %i.ja = load i32, ptr %i.ae, align 4, !tbaa !35, !noalias !221
  %i.jb = shl i32 %i.ja, 2
  %i.jc = zext i32 %i.jb to i64
  %i.jd = getelementptr inbounds nuw i8, ptr %i.af, i64 %i.jc
  %.not126 = icmp eq ptr %i.iz, %i.jd
  br i1 %.not126, label %._crit_edge.loopexit, label %_ZNK11flatbuffers5Table22GetOptionalFieldOffsetEt.exit.i.i.i79, !llvm.loop !220

_ZN11flatbuffers13ResizeContext8StraddleIiLin1EEEvPKvS3_Pv.exit: ; preds = %bb.e, %._crit_edge, %bb.d, %bb.c, %bb.a
  ret void
}

; Function Attrs: nobuiltin allocsize(0)
declare noundef nonnull ptr @_Znwm(i64 noundef) local_unnamed_addr #11

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZNSt6vectorIhSaIhEE14_M_fill_insertEN9__gnu_cxx17__normal_iteratorIPhS1_EEmRKh(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %1, i64 noundef %2, ptr noundef nonnull align 1 dereferenceable(1) %3) local_unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %.not = icmp eq i64 %2, 0
  br i1 %.not, label %_ZSt4fillIPhhEvT_S1_RKT0_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !48
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 7 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !57   ; 10 uses
  %i.e = ptrtoint ptr %i.b to i64                 ; 2 uses
  %i.f = ptrtoint ptr %i.d to i64                 ; 4 uses
  %i.g = sub i64 %i.e, %i.f
  %.not65 = icmp ult i64 %i.g, %2
  br i1 %.not65, label %bb.r, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.h = load i8, ptr %3, align 1, !tbaa !11      ; 3 uses
  %i.i = ptrtoint ptr %1 to i64                   ; 2 uses
  %i.j = sub i64 %i.f, %i.i                       ; 8 uses
  %i.k = icmp ugt i64 %i.j, %2
  br i1 %i.k, label %bb.d, label %bb.l

bb.d:                                             ; preds = %bb.c
  %i.l = sub i64 0, %2
  %i.m = getelementptr inbounds i8, ptr %i.d, i64 %i.l ; 3 uses
  %i.n = ptrtoint ptr %i.m to i64
  %i.o = icmp sgt i64 %2, 1
  br i1 %i.o, label %bb.e, label %bb.f, !prof !61

bb.e:                                             ; preds = %bb.d
  tail call void @llvm.memmove.p0.p0.i64(ptr align 1 %i.d, ptr nonnull align 1 %i.m, i64 %2, i1 false)
  br label %_ZSt22__uninitialized_move_aIPhS0_SaIhEET0_T_S3_S2_RT1_.exit

bb.f:                                             ; preds = %bb.d
  %i.p = icmp eq i64 %2, 1
  br i1 %i.p, label %bb.g, label %_ZSt22__uninitialized_move_aIPhS0_SaIhEET0_T_S3_S2_RT1_.exit

bb.g:                                             ; preds = %bb.f
  %i.q = load i8, ptr %i.m, align 1, !tbaa !11
  store i8 %i.q, ptr %i.d, align 1, !tbaa !11
  br label %_ZSt22__uninitialized_move_aIPhS0_SaIhEET0_T_S3_S2_RT1_.exit

_ZSt22__uninitialized_move_aIPhS0_SaIhEET0_T_S3_S2_RT1_.exit: ; preds = %bb.g, %bb.f, %bb.e
  %i.r = load ptr, ptr %i.c, align 8, !tbaa !57
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 %2
  store ptr %i.s, ptr %i.c, align 8, !tbaa !57
  %i.t = sub i64 %i.n, %i.i                       ; 4 uses
  %i.u = icmp sgt i64 %i.t, 1
  br i1 %i.u, label %bb.h, label %bb.i, !prof !61

bb.h:                                             ; preds = %_ZSt22__uninitialized_move_aIPhS0_SaIhEET0_T_S3_S2_RT1_.exit
  %i.v = sub nsw i64 0, %i.t
  %i.w = getelementptr inbounds i8, ptr %i.d, i64 %i.v
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.w, ptr align 1 %1, i64 %i.t, i1 false)
  br label %bb.k

bb.i:                                             ; preds = %_ZSt22__uninitialized_move_aIPhS0_SaIhEET0_T_S3_S2_RT1_.exit
  %i.x = icmp eq i64 %i.t, 1
  br i1 %i.x, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.y = getelementptr inbounds i8, ptr %i.d, i64 -1
  %i.z = load i8, ptr %1, align 1, !tbaa !11
  store i8 %i.z, ptr %i.y, align 1, !tbaa !11
  br label %bb.k

bb.k:                                             ; preds = %bb.h, %bb.i, %bb.j
  tail call void @llvm.memset.p0.i64(ptr align 1 %1, i8 %i.h, i64 %2, i1 false)
  br label %_ZSt4fillIPhhEvT_S1_RKT0_.exit

bb.l:                                             ; preds = %bb.c
  %i.aa = icmp eq i64 %2, %i.j
  br i1 %i.aa, label %_ZSt24__uninitialized_fill_n_aIPhmhhET_S1_T0_RKT1_RSaIT2_E.exit, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.ab = sub nuw i64 %2, %i.j                    ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %i.d, i64 %i.ab
  tail call void @llvm.memset.p0.i64(ptr align 1 %i.d, i8 %i.h, i64 %i.ab, i1 false)
  br label %_ZSt24__uninitialized_fill_n_aIPhmhhET_S1_T0_RKT1_RSaIT2_E.exit

_ZSt24__uninitialized_fill_n_aIPhmhhET_S1_T0_RKT1_RSaIT2_E.exit: ; preds = %bb.m, %bb.l
  %.0.i.i.i.i.i = phi ptr [ %i.d, %bb.l ], [ %i.ac, %bb.m ] ; 3 uses
  store ptr %.0.i.i.i.i.i, ptr %i.c, align 8, !tbaa !57
  %i.ad = icmp sgt i64 %i.j, 1
  br i1 %i.ad, label %bb.n, label %bb.o, !prof !61

bb.n:                                             ; preds = %_ZSt24__uninitialized_fill_n_aIPhmhhET_S1_T0_RKT1_RSaIT2_E.exit
  tail call void @llvm.memmove.p0.p0.i64(ptr align 1 %.0.i.i.i.i.i, ptr align 1 %1, i64 %i.j, i1 false)
  br label %_ZSt22__uninitialized_move_aIPhS0_SaIhEET0_T_S3_S2_RT1_.exit69

bb.o:                                             ; preds = %_ZSt24__uninitialized_fill_n_aIPhmhhET_S1_T0_RKT1_RSaIT2_E.exit
  %i.ae = icmp eq i64 %i.j, 1
  br i1 %i.ae, label %bb.p, label %_ZSt22__uninitialized_move_aIPhS0_SaIhEET0_T_S3_S2_RT1_.exit69

bb.p:                                             ; preds = %bb.o
  %i.af = load i8, ptr %1, align 1, !tbaa !11
  store i8 %i.af, ptr %.0.i.i.i.i.i, align 1, !tbaa !11
  br label %_ZSt22__uninitialized_move_aIPhS0_SaIhEET0_T_S3_S2_RT1_.exit69

_ZSt22__uninitialized_move_aIPhS0_SaIhEET0_T_S3_S2_RT1_.exit69: ; preds = %bb.p, %bb.o, %bb.n
  %i.ag = load ptr, ptr %i.c, align 8, !tbaa !57
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 %i.j
  store ptr %i.ah, ptr %i.c, align 8, !tbaa !57
  %.not.i.i.i70 = icmp eq ptr %i.d, %1
  br i1 %.not.i.i.i70, label %_ZSt4fillIPhhEvT_S1_RKT0_.exit, label %bb.q

bb.q:                                             ; preds = %_ZSt22__uninitialized_move_aIPhS0_SaIhEET0_T_S3_S2_RT1_.exit69
  tail call void @llvm.memset.p0.i64(ptr align 1 %1, i8 %i.h, i64 %i.j, i1 false)
  br label %_ZSt4fillIPhhEvT_S1_RKT0_.exit

bb.r:                                             ; preds = %bb.b
  %i.ai = load ptr, ptr %0, align 8, !tbaa !47    ; 5 uses
  %i.aj = ptrtoint ptr %i.ai to i64               ; 3 uses
  %i.ak = sub i64 %i.f, %i.aj                     ; 4 uses
  %i.al = sub i64 9223372036854775807, %i.ak
  %i.am = icmp ult i64 %i.al, %2
  br i1 %i.am, label %bb.s, label %_ZNKSt6vectorIhSaIhEE12_M_check_lenEmPKc.exit

bb.s:                                             ; preds = %bb.r
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.24) #21
  unreachable

_ZNKSt6vectorIhSaIhEE12_M_check_lenEmPKc.exit:    ; preds = %bb.r
  %.sroa.speculated.i = tail call i64 @llvm.umax.i64(i64 %i.ak, i64 %2)
  %i.an = add i64 %.sroa.speculated.i, %i.ak      ; 2 uses
  %i.ao = icmp ult i64 %i.an, %i.ak
  %i.ap = tail call i64 @llvm.umin.i64(i64 %i.an, i64 9223372036854775807)
  %i.aq = select i1 %i.ao, i64 9223372036854775807, i64 %i.ap ; 3 uses
  %i.ar = ptrtoint ptr %1 to i64                  ; 2 uses
  %i.as = sub i64 %i.ar, %i.aj                    ; 4 uses
  %.not.i = icmp eq i64 %i.aq, 0
  br i1 %.not.i, label %bb.u, label %bb.t

bb.t:                                             ; preds = %_ZNKSt6vectorIhSaIhEE12_M_check_lenEmPKc.exit
  %i.at = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.aq) #23
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %_ZNKSt6vectorIhSaIhEE12_M_check_lenEmPKc.exit
  %i.au = phi ptr [ %i.at, %bb.t ], [ null, %_ZNKSt6vectorIhSaIhEE12_M_check_lenEmPKc.exit ] ; 5 uses
  %i.av = getelementptr inbounds i8, ptr %i.au, i64 %i.as ; 2 uses
  %i.aw = load i8, ptr %3, align 1, !tbaa !11
  tail call void @llvm.memset.p0.i64(ptr align 1 %i.av, i8 %i.aw, i64 %2, i1 false)
  %i.ax = icmp sgt i64 %i.as, 1
  br i1 %i.ax, label %bb.v, label %bb.w, !prof !61

bb.v:                                             ; preds = %bb.u
  tail call void @llvm.memmove.p0.p0.i64(ptr align 1 %i.au, ptr align 1 %i.ai, i64 %i.as, i1 false)
  br label %_ZSt34__uninitialized_move_if_noexcept_aIPhS0_SaIhEET0_T_S3_S2_RT1_.exit

bb.w:                                             ; preds = %bb.u
  %i.ay = icmp eq i64 %i.as, 1
  br i1 %i.ay, label %bb.x, label %_ZSt34__uninitialized_move_if_noexcept_aIPhS0_SaIhEET0_T_S3_S2_RT1_.exit

bb.x:                                             ; preds = %bb.w
  %i.az = load i8, ptr %i.ai, align 1, !tbaa !11
  store i8 %i.az, ptr %i.au, align 1, !tbaa !11
  br label %_ZSt34__uninitialized_move_if_noexcept_aIPhS0_SaIhEET0_T_S3_S2_RT1_.exit

_ZSt34__uninitialized_move_if_noexcept_aIPhS0_SaIhEET0_T_S3_S2_RT1_.exit: ; preds = %bb.x, %bb.w, %bb.v
  %i.ba = getelementptr inbounds nuw i8, ptr %i.av, i64 %2 ; 3 uses
  %i.bb = sub i64 %i.f, %i.ar                     ; 4 uses
  %i.bc = icmp sgt i64 %i.bb, 1
  br i1 %i.bc, label %bb.y, label %bb.z, !prof !61

bb.y:                                             ; preds = %_ZSt34__uninitialized_move_if_noexcept_aIPhS0_SaIhEET0_T_S3_S2_RT1_.exit
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.ba, ptr align 1 %1, i64 %i.bb, i1 false)
  br label %bb.ab
end_hunk_1

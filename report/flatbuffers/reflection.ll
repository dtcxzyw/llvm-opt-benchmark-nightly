Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/flatbuffers/original/reflection?download=true
inline.NumInlined: 1553
inline.NumDeleted: 673
loop-unroll.NumCompletelyUnrolled: 13
loop-unroll.NumRuntimeUnrolled: 5
loop-unroll.NumUnrolled: 18
begin_hunk_0_@_ZN11flatbuffers13ResizeContextC2ERKN10reflection6SchemaEjiPSt6vectorIhSaIhEEPKNS1_6ObjectE:bb.a
  %i.af = sub nsw i64 0, %i.ae
  %i.ag = getelementptr inbounds i8, ptr %1, i64 %i.af
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 12
  %i.ai = load i16, ptr %i.ah, align 2, !tbaa !13 ; 2 uses
  %.not.i.i.i = icmp ne i16 %i.ai, 0
  tail call void @llvm.assume(i1 %.not.i.i.i)
  %i.aj = zext i16 %i.ai to i64
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
  %i.e = ptrtoint ptr %i.c to i64                 ; 2 uses
  %i.f = sub i64 %i.d, %i.e                       ; 3 uses
  %i.g = and i64 %i.f, 7
  %or.cond.not18 = icmp eq i64 %i.g, 4
  br i1 %or.cond.not18, label %._crit_edge, label %.critedge.lr.ph

.critedge.lr.ph:                                  ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %.pre22 = load ptr, ptr %i.h, align 8, !tbaa !48
  br label %.critedge

.critedge:                                        ; preds = %.critedge.lr.ph, %_ZNSt6vectorIhSaIhEE9push_backEOh.exit
  %i.i = phi ptr [ %.pre22, %.critedge.lr.ph ], [ %i.aa, %_ZNSt6vectorIhSaIhEE9push_backEOh.exit ] ; 2 uses
  %3 = phi i64 [ %i.f, %.critedge.lr.ph ], [ %i.ad, %_ZNSt6vectorIhSaIhEE9push_backEOh.exit ] ; 7 uses
  %i.j = phi i64 [ %i.e, %.critedge.lr.ph ], [ %i.ac, %_ZNSt6vectorIhSaIhEE9push_backEOh.exit ]
  %i.k = phi ptr [ %i.c, %.critedge.lr.ph ], [ %i.y, %_ZNSt6vectorIhSaIhEE9push_backEOh.exit ] ; 3 uses
  %i.l = phi ptr [ %i.b, %.critedge.lr.ph ], [ %i.z, %_ZNSt6vectorIhSaIhEE9push_backEOh.exit ] ; 2 uses
  %.not.i.i = icmp eq ptr %i.l, %i.i
  br i1 %.not.i.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %.critedge
  store i8 0, ptr %i.l, align 1, !tbaa !11
  %i.m = load ptr, ptr %i.a, align 8, !tbaa !57
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 1 ; 2 uses
  store ptr %i.n, ptr %i.a, align 8, !tbaa !57
  %.pre = load ptr, ptr %i.h, align 8, !tbaa !48
  %.pre23 = load ptr, ptr %0, align 8, !tbaa !47
  br label %_ZNSt6vectorIhSaIhEE9push_backEOh.exit

bb.c:                                             ; preds = %.critedge
  %i.o = icmp eq i64 %3, 9223372036854775807
  br i1 %i.o, label %bb.d, label %_ZNKSt6vectorIhSaIhEE12_M_check_lenEmPKc.exit.i.i.i

bb.d:                                             ; preds = %bb.c
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.27) #21
  unreachable

_ZNKSt6vectorIhSaIhEE12_M_check_lenEmPKc.exit.i.i.i: ; preds = %bb.c
  %.sroa.speculated.i.i.i.i = tail call i64 @llvm.umax.i64(i64 %3, i64 1)
  %i.p = add i64 %.sroa.speculated.i.i.i.i, %3    ; 2 uses
  %i.q = icmp ult i64 %i.p, %3
  %i.r = tail call i64 @llvm.umin.i64(i64 %i.p, i64 9223372036854775807)
  %i.s = select i1 %i.q, i64 9223372036854775807, i64 %i.r ; 3 uses
  %.not.i.i.i.i = icmp ne i64 %i.s, 0
  tail call void @llvm.assume(i1 %.not.i.i.i.i)
  %i.t = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.s) #23 ; 5 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 %3 ; 2 uses
  store i8 0, ptr %i.u, align 1, !tbaa !11
  %i.v = icmp sgt i64 %3, 0
  br i1 %i.v, label %bb.e, label %_ZNSt6vectorIhSaIhEE11_S_relocateEPhS2_S2_RS0_.exit16.i.i.i

bb.e:                                             ; preds = %_ZNKSt6vectorIhSaIhEE12_M_check_lenEmPKc.exit.i.i.i
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.t, ptr align 1 %i.k, i64 %3, i1 false)
  br label %_ZNSt6vectorIhSaIhEE11_S_relocateEPhS2_S2_RS0_.exit16.i.i.i

_ZNSt6vectorIhSaIhEE11_S_relocateEPhS2_S2_RS0_.exit16.i.i.i: ; preds = %bb.e, %_ZNKSt6vectorIhSaIhEE12_M_check_lenEmPKc.exit.i.i.i
  %i.w = getelementptr inbounds nuw i8, ptr %i.u, i64 1 ; 2 uses
  %.not.i17.i.i.i = icmp eq ptr %i.k, null
  br i1 %.not.i17.i.i.i, label %_ZNSt6vectorIhSaIhEE17_M_realloc_insertIJhEEEvN9__gnu_cxx17__normal_iteratorIPhS1_EEDpOT_.exit.i.i, label %bb.f

bb.f:                                             ; preds = %_ZNSt6vectorIhSaIhEE11_S_relocateEPhS2_S2_RS0_.exit16.i.i.i
  %4 = ptrtoint ptr %i.i to i64
  %5 = sub i64 %4, %i.j
  tail call void @_ZdlPvm(ptr noundef nonnull %i.k, i64 noundef %5) #22
  br label %_ZNSt6vectorIhSaIhEE17_M_realloc_insertIJhEEEvN9__gnu_cxx17__normal_iteratorIPhS1_EEDpOT_.exit.i.i

_ZNSt6vectorIhSaIhEE17_M_realloc_insertIJhEEEvN9__gnu_cxx17__normal_iteratorIPhS1_EEDpOT_.exit.i.i: ; preds = %bb.f, %_ZNSt6vectorIhSaIhEE11_S_relocateEPhS2_S2_RS0_.exit16.i.i.i
  store ptr %i.t, ptr %0, align 8, !tbaa !47
  store ptr %i.w, ptr %i.a, align 8, !tbaa !57
  %i.x = getelementptr inbounds nuw i8, ptr %i.t, i64 %i.s ; 2 uses
  store ptr %i.x, ptr %i.h, align 8, !tbaa !48
  br label %_ZNSt6vectorIhSaIhEE9push_backEOh.exit

_ZNSt6vectorIhSaIhEE9push_backEOh.exit:           ; preds = %bb.b, %_ZNSt6vectorIhSaIhEE17_M_realloc_insertIJhEEEvN9__gnu_cxx17__normal_iteratorIPhS1_EEDpOT_.exit.i.i
  %i.y = phi ptr [ %.pre23, %bb.b ], [ %i.t, %_ZNSt6vectorIhSaIhEE17_M_realloc_insertIJhEEEvN9__gnu_cxx17__normal_iteratorIPhS1_EEDpOT_.exit.i.i ] ; 3 uses
  %i.z = phi ptr [ %i.n, %bb.b ], [ %i.w, %_ZNSt6vectorIhSaIhEE17_M_realloc_insertIJhEEEvN9__gnu_cxx17__normal_iteratorIPhS1_EEDpOT_.exit.i.i ] ; 2 uses
  %i.aa = phi ptr [ %.pre, %bb.b ], [ %i.x, %_ZNSt6vectorIhSaIhEE17_M_realloc_insertIJhEEEvN9__gnu_cxx17__normal_iteratorIPhS1_EEDpOT_.exit.i.i ]
  %i.ab = ptrtoint ptr %i.z to i64
  %i.ac = ptrtoint ptr %i.y to i64                ; 2 uses
  %i.ad = sub i64 %i.ab, %i.ac                    ; 3 uses
  %i.ae = and i64 %i.ad, 7
  %or.cond.not = icmp eq i64 %i.ae, 4
  br i1 %or.cond.not, label %._crit_edge, label %.critedge, !llvm.loop !139

._crit_edge:                                      ; preds = %_ZNSt6vectorIhSaIhEE9push_backEOh.exit, %bb.a
  %.lcssa16 = phi ptr [ %i.c, %bb.a ], [ %i.y, %_ZNSt6vectorIhSaIhEE9push_backEOh.exit ]
  %.lcssa = phi i64 [ %i.f, %bb.a ], [ %i.ad, %_ZNSt6vectorIhSaIhEE9push_backEOh.exit ] ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.ag = getelementptr inbounds nuw i8, ptr %1, i64 %2
  %i.ah = getelementptr inbounds i8, ptr %.lcssa16, i64 %.lcssa
  tail call void @_ZNSt6vectorIhSaIhEE15_M_range_insertIPKhEEvN9__gnu_cxx17__normal_iteratorIPhS1_EET_S9_St20forward_iterator_tag(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %i.ah, ptr noundef nonnull %i.af, ptr noundef %i.ag)
  %i.ai = load ptr, ptr %0, align 8, !tbaa !23
  %i.aj = load i32, ptr %1, align 4, !tbaa !14
  %i.ak = zext i32 %i.aj to i64
  %i.al = and i64 %.lcssa, 4294967292
  %i.am = getelementptr inbounds nuw i8, ptr %i.ai, i64 %i.al
  %i.an = getelementptr i8, ptr %i.am, i64 %i.ak
  %i.ao = getelementptr i8, ptr %i.an, i64 -4
  ret ptr %i.ao
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
  %.not461 = icmp eq i32 %.mask, 0
  br i1 %.not461, label %._crit_edge474, label %.lr.ph473

.lr.ph473:                                        ; preds = %_ZNK11flatbuffers5Table22GetOptionalFieldOffsetEt.exit.i.i.i
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 10 uses
  %.phi.trans.insert.i.i.i = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 10 uses
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 3 uses
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 104 ; 2 uses
  br label %bb.a

._crit_edge474.loopexit:                          ; preds = %_ZNSt6vectorIjSaIjEE9push_backERKj.exit
  %.pre524 = load i32, ptr %2, align 4, !tbaa !14
  %.pre525 = sext i32 %.pre524 to i64
  %.pre526 = sub nsw i64 0, %.pre525
  br label %._crit_edge474

._crit_edge474:                                   ; preds = %._crit_edge474.loopexit, %_ZNK11flatbuffers5Table22GetOptionalFieldOffsetEt.exit.i.i.i
  %.pre-phi527 = phi i64 [ %.pre526, %._crit_edge474.loopexit ], [ %i.c, %_ZNK11flatbuffers5Table22GetOptionalFieldOffsetEt.exit.i.i.i ]
  %.sroa.12363.0.lcssa = phi ptr [ %.sroa.12363.2, %._crit_edge474.loopexit ], [ null, %_ZNK11flatbuffers5Table22GetOptionalFieldOffsetEt.exit.i.i.i ] ; 4 uses
  %.sroa.0359.0.lcssa = phi ptr [ %.sroa.0359.2, %._crit_edge474.loopexit ], [ null, %_ZNK11flatbuffers5Table22GetOptionalFieldOffsetEt.exit.i.i.i ] ; 7 uses
  %i.r = getelementptr inbounds i8, ptr %2, i64 %.pre-phi527 ; 3 uses
  %i.s = load i16, ptr %i.r, align 2, !tbaa !13   ; 2 uses
  %i.t = icmp ugt i16 %i.s, 8
  br i1 %i.t, label %_ZNK11flatbuffers5Table22GetOptionalFieldOffsetEt.exit.i.i, label %_ZNK10reflection6Object9is_structEv.exit.thread

_ZNK11flatbuffers5Table22GetOptionalFieldOffsetEt.exit.i.i: ; preds = %._crit_edge474
  %i.u = getelementptr inbounds nuw i8, ptr %i.r, i64 8
  %i.v = load i16, ptr %i.u, align 2, !tbaa !13   ; 2 uses
  %.not.i.i = icmp eq i16 %i.v, 0
  br i1 %.not.i.i, label %_ZNK10reflection6Object9is_structEv.exit.thread, label %_ZNK10reflection6Object9is_structEv.exit

bb.a:                                             ; preds = %.lr.ph473, %_ZNSt6vectorIjSaIjEE9push_backERKj.exit
  %.sroa.0359.0469 = phi ptr [ null, %.lr.ph473 ], [ %.sroa.0359.2, %_ZNSt6vectorIjSaIjEE9push_backERKj.exit ] ; 22 uses
  %.sroa.9.0467 = phi ptr [ null, %.lr.ph473 ], [ %.sroa.9.2, %_ZNSt6vectorIjSaIjEE9push_backERKj.exit ] ; 15 uses
  %.sroa.0356.0466 = phi ptr [ %i.l, %.lr.ph473 ], [ %i.ny, %_ZNSt6vectorIjSaIjEE9push_backERKj.exit ] ; 3 uses
  %.sroa.12363.0462 = phi ptr [ null, %.lr.ph473 ], [ %.sroa.12363.2, %_ZNSt6vectorIjSaIjEE9push_backERKj.exit ] ; 20 uses
  %i.w = load i32, ptr %.sroa.0356.0466, align 4, !tbaa !14
  %i.x = zext i32 %i.w to i64
  %i.y = getelementptr inbounds nuw i8, ptr %.sroa.0356.0466, i64 %i.x ; 12 uses
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
  %i.an = sub nsw i64 0, %i.am                    ; 2 uses
  %i.ao = getelementptr inbounds i8, ptr %3, i64 %i.an ; 5 uses
  %i.ap = load i16, ptr %i.ao, align 2, !tbaa !13 ; 6 uses
  %i.aq = icmp ult i16 %i.ak, %i.ap
  br i1 %i.aq, label %_ZNK11flatbuffers5Table10CheckFieldEt.exit, label %_ZNSt6vectorIjSaIjEE9push_backERKj.exit

_ZNK11flatbuffers5Table10CheckFieldEt.exit:       ; preds = %_ZNK10reflection5Field6offsetEv.exit
  %i.ar = zext i16 %i.ak to i64
  %i.as = getelementptr inbounds nuw i8, ptr %i.ao, i64 %i.ar
  %i.at = load i16, ptr %i.as, align 2, !tbaa !13
  %.not384 = icmp eq i16 %i.at, 0
  br i1 %.not384, label %_ZNSt6vectorIjSaIjEE9push_backERKj.exit, label %_ZNK11flatbuffers5Table22GetOptionalFieldOffsetEt.exit.i.i.i181

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
    i8 15, label %bb.j
    i8 16, label %bb.o
    i8 14, label %bb.r
  ]

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
  %i.bz = load i32, ptr %i.by, align 4, !tbaa !14
  %i.ca = zext i32 %i.bz to i64
  %i.cb = getelementptr inbounds nuw i8, ptr %i.by, i64 %i.ca ; 2 uses
  %i.cc = getelementptr inbounds nuw i8, ptr %i.cb, i64 4
  %i.cd = load i32, ptr %i.cb, align 4, !tbaa !33
  %i.ce = zext i32 %i.cd to i64
  %i.cf = invoke i32 @_ZN11flatbuffers21FlatBufferBuilderImplILb0EE18CreateSharedStringEPKcm(ptr noundef nonnull align 8 dereferenceable(128) %0, ptr noundef nonnull %i.cc, i64 noundef %i.ce)
          to label %_ZN11flatbuffers21FlatBufferBuilderImplILb0EE18CreateSharedStringEPKNS_6StringE.exit unwind label %.loopexit.split-lp.loopexit

bb.g:                                             ; preds = %bb.c
  br i1 %i.ae, label %_ZNK11flatbuffers5Table22GetOptionalFieldOffsetEt.exit.i.i.i190, label %_ZNK10reflection5Field6offsetEv.exit.i187

_ZNK11flatbuffers5Table22GetOptionalFieldOffsetEt.exit.i.i.i190: ; preds = %bb.g
  %i.cg = getelementptr inbounds nuw i8, ptr %i.ac, i64 10
  %i.ch = load i16, ptr %i.cg, align 2, !tbaa !13 ; 2 uses
  %.not.i.i.i191 = icmp eq i16 %i.ch, 0
  br i1 %.not.i.i.i191, label %_ZNK10reflection5Field6offsetEv.exit.i187, label %bb.h

bb.h:                                             ; preds = %_ZNK11flatbuffers5Table22GetOptionalFieldOffsetEt.exit.i.i.i190
  %i.ci = zext i16 %i.ch to i64
  %i.cj = getelementptr inbounds nuw i8, ptr %i.y, i64 %i.ci
  %i.ck = load i16, ptr %i.cj, align 2, !tbaa !13
  br label %_ZNK10reflection5Field6offsetEv.exit.i187

_ZNK10reflection5Field6offsetEv.exit.i187:        ; preds = %bb.h, %_ZNK11flatbuffers5Table22GetOptionalFieldOffsetEt.exit.i.i.i190, %bb.g
  %i.cl = phi i16 [ %i.ck, %bb.h ], [ 0, %_ZNK11flatbuffers5Table22GetOptionalFieldOffsetEt.exit.i.i.i190 ], [ 0, %bb.g ] ; 2 uses
  %i.cm = icmp ult i16 %i.cl, %i.ap
  br i1 %i.cm, label %_ZNK11flatbuffers5Table22GetOptionalFieldOffsetEt.exit.i.i2.i188, label %_ZNSt6vectorIjSaIjEE9push_backERKj.exit

_ZNK11flatbuffers5Table22GetOptionalFieldOffsetEt.exit.i.i2.i188: ; preds = %_ZNK10reflection5Field6offsetEv.exit.i187
  %i.cn = zext i16 %i.cl to i64
  %i.co = getelementptr inbounds nuw i8, ptr %i.ao, i64 %i.cn
  %i.cp = load i16, ptr %i.co, align 2, !tbaa !13 ; 2 uses
  %.not.i.i3.i189 = icmp eq i16 %i.cp, 0
  br i1 %.not.i.i3.i189, label %_ZNSt6vectorIjSaIjEE9push_backERKj.exit, label %bb.i

bb.i:                                             ; preds = %_ZNK11flatbuffers5Table22GetOptionalFieldOffsetEt.exit.i.i2.i188
  %i.cq = zext i16 %i.cp to i64
  %i.cr = getelementptr inbounds nuw i8, ptr %3, i64 %i.cq ; 2 uses
  %i.cs = load i32, ptr %i.cr, align 4, !tbaa !14
  %i.ct = zext i32 %i.cs to i64
  %i.cu = getelementptr inbounds nuw i8, ptr %i.cr, i64 %i.ct ; 2 uses
  %i.cv = getelementptr inbounds nuw i8, ptr %i.cu, i64 4
  %i.cw = load i32, ptr %i.cu, align 4, !tbaa !33
  %i.cx = zext i32 %i.cw to i64
  invoke void @_ZN11flatbuffers21FlatBufferBuilderImplILb0EE16CreateStringImplEPKcm(ptr noundef nonnull align 8 dereferenceable(128) %0, ptr noundef nonnull %i.cv, i64 noundef %i.cx)
          to label %.noexc195 unwind label %.loopexit.split-lp.loopexit

.noexc195:                                        ; preds = %bb.i
  %i.cy = load i32, ptr %i.n, align 8, !tbaa !65
  br label %_ZN11flatbuffers21FlatBufferBuilderImplILb0EE18CreateSharedStringEPKNS_6StringE.exit

bb.j:                                             ; preds = %_ZNK10reflection4Type9base_typeEv.exit
  %i.cz = load i32, ptr %1, align 4, !tbaa !14
  %i.da = sext i32 %i.cz to i64
  %i.db = sub nsw i64 0, %i.da
  %i.dc = getelementptr inbounds i8, ptr %1, i64 %i.db ; 2 uses
  %i.dd = load i16, ptr %i.dc, align 2, !tbaa !13
  %i.de = icmp ugt i16 %i.dd, 4
  br i1 %i.de, label %_ZNK11flatbuffers5Table22GetOptionalFieldOffsetEt.exit.i.i.i196, label %_ZNK10reflection6Schema7objectsEv.exit

_ZNK11flatbuffers5Table22GetOptionalFieldOffsetEt.exit.i.i.i196: ; preds = %bb.j
  %i.df = getelementptr inbounds nuw i8, ptr %i.dc, i64 4
  %i.dg = load i16, ptr %i.df, align 2, !tbaa !13 ; 2 uses
  %.not.i.i.i197 = icmp eq i16 %i.dg, 0
  br i1 %.not.i.i.i197, label %_ZNK10reflection6Schema7objectsEv.exit, label %bb.k

bb.k:                                             ; preds = %_ZNK11flatbuffers5Table22GetOptionalFieldOffsetEt.exit.i.i.i196
  %i.dh = zext i16 %i.dg to i64
  %i.di = getelementptr inbounds nuw i8, ptr %1, i64 %i.dh ; 2 uses
  %i.dj = load i32, ptr %i.di, align 4, !tbaa !14
  %i.dk = zext i32 %i.dj to i64
  %i.dl = getelementptr inbounds nuw i8, ptr %i.di, i64 %i.dk
  br label %_ZNK10reflection6Schema7objectsEv.exit

_ZNK10reflection6Schema7objectsEv.exit:           ; preds = %bb.k, %_ZNK11flatbuffers5Table22GetOptionalFieldOffsetEt.exit.i.i.i196, %bb.j
  %i.dm = phi ptr [ %i.dl, %bb.k ], [ null, %_ZNK11flatbuffers5Table22GetOptionalFieldOffsetEt.exit.i.i.i196 ], [ null, %bb.j ]
  %i.dn = icmp ugt i16 %i.bg, 8
  br i1 %i.dn, label %_ZNK11flatbuffers5Table22GetOptionalFieldOffsetEt.exit.i.i201, label %bb.m

_ZNK11flatbuffers5Table22GetOptionalFieldOffsetEt.exit.i.i201: ; preds = %_ZNK10reflection6Schema7objectsEv.exit
  %i.do = getelementptr inbounds nuw i8, ptr %i.bf, i64 8
  %i.dp = load i16, ptr %i.do, align 2, !tbaa !13 ; 2 uses
  %.not.i.i202 = icmp eq i16 %i.dp, 0
  br i1 %.not.i.i202, label %bb.m, label %bb.l

bb.l:                                             ; preds = %_ZNK11flatbuffers5Table22GetOptionalFieldOffsetEt.exit.i.i201
  %i.dq = zext i16 %i.dp to i64
  %i.dr = getelementptr inbounds nuw i8, ptr %i.bb, i64 %i.dq
  %i.ds = load i32, ptr %i.dr, align 4, !tbaa !14
end_hunk_0
begin_hunk_1_@_ZN11flatbuffers9CopyTableERNS_21FlatBufferBuilderImplILb0EEERKN10reflection6SchemaERKNS3_6ObjectERKNS_5TableEb:_ZNK11flatbuffers5Table22GetOptionalFieldOffsetEt.exit.i.i.i
  %i.kv = sub i64 %.sink.i255600, %i.kg
  tail call void @_ZdlPvm(ptr noundef nonnull %.sroa.0339.0598, i64 noundef %i.kv) #22
  br label %_ZN11flatbuffers21FlatBufferBuilderImplILb0EE18CreateSharedStringEPKNS_6StringE.exit

.thread:                                          ; preds = %bb.z
  %lpad.loopexit390 = landingpad { ptr, i32 }
          cleanup
  br label %bb.ad

bb.ac:                                            ; preds = %._crit_edge460
  %lpad.loopexit.split-lp391 = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %.not.i.i.i261 = icmp eq ptr %.sroa.0339.0598, null
  br i1 %.not.i.i.i261, label %_ZNSt6vectorIN11flatbuffers6OffsetIPKNS0_6StringEEESaIS5_EED2Ev.exit248, label %bb.ad

bb.ad:                                            ; preds = %.thread, %bb.ac
  %lpad.phi392609 = phi { ptr, i32 } [ %lpad.loopexit390, %.thread ], [ %lpad.loopexit.split-lp391, %bb.ac ]
  %.sroa.0339.0599608 = phi ptr [ %i.jz, %.thread ], [ %.sroa.0339.0598, %bb.ac ] ; 2 uses
  %.sink.i255601607 = phi i64 [ %i.kb, %.thread ], [ %.sink.i255600, %bb.ac ]
  %i.kw = ptrtoint ptr %.sroa.0339.0599608 to i64
  %i.kx = sub i64 %.sink.i255601607, %i.kw
  tail call void @_ZdlPvm(ptr noundef nonnull %.sroa.0339.0599608, i64 noundef %i.kx) #22
  br label %_ZNSt6vectorIN11flatbuffers6OffsetIPKNS0_6StringEEESaIS5_EED2Ev.exit248

.thread372:                                       ; preds = %_ZNK10reflection4Type7elementEv.exit, %_ZNK11flatbuffers5Table10GetPointerIPKNS_6VectorINS_6OffsetIS0_EEjEEjEET_t.exit, %_ZNK11flatbuffers5Table22GetOptionalFieldOffsetEt.exit.i.i225
  %.ph371 = phi i64 [ %i.gp, %_ZNK10reflection4Type7elementEv.exit ], [ 0, %_ZNK11flatbuffers5Table10GetPointerIPKNS_6VectorINS_6OffsetIS0_EEjEEjEET_t.exit ], [ 0, %_ZNK11flatbuffers5Table22GetOptionalFieldOffsetEt.exit.i.i225 ]
  %i.ky = and i64 %.ph371, 4294967295
  %i.kz = getelementptr inbounds nuw [8 x i8], ptr @_ZZN11flatbuffers11GetTypeSizeEN10reflection8BaseTypeEE5sizes, i64 %i.ky
  %i.la = load i64, ptr %i.kz, align 8, !tbaa !16 ; 2 uses
  br label %_ZNK10reflection6Object9is_structEv.exit265.thread

bb.ae:                                            ; preds = %_ZNK10reflection6Object9is_structEv.exit251
  %i.lb = load i64, ptr getelementptr inbounds nuw (i8, ptr @_ZZN11flatbuffers11GetTypeSizeEN10reflection8BaseTypeEE5sizes, i64 120), align 8, !tbaa !16 ; 3 uses
  %i.lc = icmp ugt i16 %i.hw, 12
  br i1 %i.lc, label %_ZNK11flatbuffers5Table22GetOptionalFieldOffsetEt.exit.i.i266, label %_ZNK10reflection6Object9is_structEv.exit265.thread

_ZNK11flatbuffers5Table22GetOptionalFieldOffsetEt.exit.i.i266: ; preds = %bb.ae
  %i.ld = getelementptr inbounds nuw i8, ptr %i.hv, i64 12
  %i.le = load i16, ptr %i.ld, align 2, !tbaa !13 ; 2 uses
  %.not.i.i267 = icmp eq i16 %i.le, 0
  br i1 %.not.i.i267, label %_ZNK10reflection6Object9is_structEv.exit265.thread, label %bb.af

bb.af:                                            ; preds = %_ZNK11flatbuffers5Table22GetOptionalFieldOffsetEt.exit.i.i266
  %i.lf = zext i16 %i.le to i64
  %i.lg = getelementptr inbounds nuw i8, ptr %i.hr, i64 %i.lf
  %i.lh = load i32, ptr %i.lg, align 4, !tbaa !14
  %i.li = sext i32 %i.lh to i64
  br label %_ZNK10reflection6Object9is_structEv.exit265.thread

_ZNK10reflection6Object9is_structEv.exit265.thread: ; preds = %bb.ae, %_ZNK11flatbuffers5Table22GetOptionalFieldOffsetEt.exit.i.i266, %bb.af, %.thread372
  %i.lj = phi i64 [ %i.lb, %bb.ae ], [ %i.lb, %bb.af ], [ %i.la, %.thread372 ], [ %i.lb, %_ZNK11flatbuffers5Table22GetOptionalFieldOffsetEt.exit.i.i266 ]
  %.0123 = phi i64 [ 0, %bb.ae ], [ %i.li, %bb.af ], [ %i.la, %.thread372 ], [ 0, %_ZNK11flatbuffers5Table22GetOptionalFieldOffsetEt.exit.i.i266 ] ; 2 uses
  %i.lk = load i32, ptr %i.gi, align 4, !tbaa !67
  %i.ll = zext i32 %i.lk to i64
  invoke void @_ZN11flatbuffers21FlatBufferBuilderImplILb0EE11StartVectorINS_6OffsetEjEEvmmm(ptr noundef nonnull align 8 dereferenceable(128) %0, i64 noundef %i.ll, i64 noundef %.0123, i64 noundef %i.lj)
          to label %bb.ag unwind label %.loopexit.split-lp.loopexit

bb.ag:                                            ; preds = %_ZNK10reflection6Object9is_structEv.exit265.thread
  %i.lm = getelementptr inbounds nuw i8, ptr %i.gi, i64 4
  %i.ln = load i32, ptr %i.gi, align 4, !tbaa !67 ; 2 uses
  %i.lo = zext i32 %i.ln to i64
  %i.lp = mul i64 %.0123, %i.lo                   ; 6 uses
  %.not.i.i268 = icmp eq i64 %i.lp, 0
  br i1 %.not.i.i268, label %_ZN11flatbuffers21FlatBufferBuilderImplILb0EE9PushBytesEPKhm.exit, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  %.pre4.i.i.i = load ptr, ptr %.phi.trans.insert.i.i.i, align 8, !tbaa !70 ; 2 uses
  %i.lq = load ptr, ptr %i.o, align 8, !tbaa !71
  %i.lr = ptrtoint ptr %.pre4.i.i.i to i64
  %i.ls = ptrtoint ptr %i.lq to i64
  %i.lt = sub i64 %i.lr, %i.ls
  %i.lu = and i64 %i.lt, 4294967295
  %i.lv = icmp ugt i64 %i.lp, %i.lu
  br i1 %i.lv, label %bb.ai, label %_ZN11flatbuffers15vector_downwardIjE10make_spaceEm.exit.i.i

bb.ai:                                            ; preds = %bb.ah
  invoke void @_ZN11flatbuffers15vector_downwardIjE10reallocateEm(ptr noundef nonnull align 8 dereferenceable(128) %0, i64 noundef %i.lp)
          to label %.noexc269 unwind label %.loopexit.split-lp.loopexit

.noexc269:                                        ; preds = %bb.ai
  %.pre.i.i.i = load ptr, ptr %.phi.trans.insert.i.i.i, align 8, !tbaa !70
  br label %_ZN11flatbuffers15vector_downwardIjE10make_spaceEm.exit.i.i

_ZN11flatbuffers15vector_downwardIjE10make_spaceEm.exit.i.i: ; preds = %.noexc269, %bb.ah
  %i.lw = phi ptr [ %.pre4.i.i.i, %bb.ah ], [ %.pre.i.i.i, %.noexc269 ]
  %i.lx = sub i64 0, %i.lp
  %i.ly = getelementptr inbounds i8, ptr %i.lw, i64 %i.lx ; 2 uses
  store ptr %i.ly, ptr %.phi.trans.insert.i.i.i, align 8, !tbaa !70
  %i.lz = trunc i64 %i.lp to i32
  %i.ma = load i32, ptr %i.n, align 8, !tbaa !65
  %i.mb = add i32 %i.ma, %i.lz
  store i32 %i.mb, ptr %i.n, align 8, !tbaa !65
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.ly, ptr nonnull align 4 %i.lm, i64 %i.lp, i1 false)
  %.pre521 = load i32, ptr %i.gi, align 4, !tbaa !67
  br label %_ZN11flatbuffers21FlatBufferBuilderImplILb0EE9PushBytesEPKhm.exit

_ZN11flatbuffers21FlatBufferBuilderImplILb0EE9PushBytesEPKhm.exit: ; preds = %_ZN11flatbuffers15vector_downwardIjE10make_spaceEm.exit.i.i, %bb.ag
  %i.mc = phi i32 [ %.pre521, %_ZN11flatbuffers15vector_downwardIjE10make_spaceEm.exit.i.i ], [ %i.ln, %bb.ag ]
  store i8 0, ptr %i.p, align 8, !tbaa !74
  %i.md = load i64, ptr %i.q, align 8, !tbaa !75
  %i.me = icmp ult i64 %i.md, 4
  br i1 %i.me, label %bb.aj, label %_ZN11flatbuffers21FlatBufferBuilderImplILb0EE13TrackMinAlignEm.exit.i.i.i

bb.aj:                                            ; preds = %_ZN11flatbuffers21FlatBufferBuilderImplILb0EE9PushBytesEPKhm.exit
  store i64 4, ptr %i.q, align 8, !tbaa !75
  br label %_ZN11flatbuffers21FlatBufferBuilderImplILb0EE13TrackMinAlignEm.exit.i.i.i

_ZN11flatbuffers21FlatBufferBuilderImplILb0EE13TrackMinAlignEm.exit.i.i.i: ; preds = %bb.aj, %_ZN11flatbuffers21FlatBufferBuilderImplILb0EE9PushBytesEPKhm.exit
  %i.mf = load i32, ptr %i.n, align 8, !tbaa !65  ; 2 uses
  %i.mg = sub i32 0, %i.mf
  %i.mh = and i32 %i.mg, 3                        ; 3 uses
  %i.mi = zext nneg i32 %i.mh to i64              ; 4 uses
  %.not.i.i.i.i.i = icmp eq i32 %i.mh, 0
  br i1 %.not.i.i.i.i.i, label %_ZN11flatbuffers21FlatBufferBuilderImplILb0EE5AlignEm.exit.i.i, label %bb.ak

bb.ak:                                            ; preds = %_ZN11flatbuffers21FlatBufferBuilderImplILb0EE13TrackMinAlignEm.exit.i.i.i
  %.pre4.i.i.i.i.i = load ptr, ptr %.phi.trans.insert.i.i.i, align 8, !tbaa !70 ; 2 uses
  %i.mj = load ptr, ptr %i.o, align 8, !tbaa !71
  %i.mk = ptrtoint ptr %.pre4.i.i.i.i.i to i64
  %i.ml = ptrtoint ptr %i.mj to i64
  %i.mm = sub i64 %i.mk, %i.ml
  %i.mn = and i64 %i.mm, 4294967295
  %i.mo = icmp samesign ult i64 %i.mn, %i.mi
  br i1 %i.mo, label %bb.al, label %.lr.ph.preheader.i.i.i.i

bb.al:                                            ; preds = %bb.ak
  invoke void @_ZN11flatbuffers15vector_downwardIjE10reallocateEm(ptr noundef nonnull align 8 dereferenceable(128) %0, i64 noundef %i.mi)
          to label %.noexc271 unwind label %.loopexit.split-lp.loopexit

.noexc271:                                        ; preds = %bb.al
  %.pre.i.i.i.i.i = load ptr, ptr %.phi.trans.insert.i.i.i, align 8, !tbaa !70
  %.pre.i.i.i270 = load i32, ptr %i.n, align 8, !tbaa !65
  br label %.lr.ph.preheader.i.i.i.i

.lr.ph.preheader.i.i.i.i:                         ; preds = %.noexc271, %bb.ak
  %i.mp = phi i32 [ %i.mf, %bb.ak ], [ %.pre.i.i.i270, %.noexc271 ]
  %i.mq = phi ptr [ %.pre4.i.i.i.i.i, %bb.ak ], [ %.pre.i.i.i.i.i, %.noexc271 ]
  %i.mr = sub nsw i64 0, %i.mi
  %i.ms = getelementptr inbounds i8, ptr %i.mq, i64 %i.mr
  store ptr %i.ms, ptr %.phi.trans.insert.i.i.i, align 8, !tbaa !70
  %i.mt = add i32 %i.mp, %i.mh
  store i32 %i.mt, ptr %i.n, align 8, !tbaa !65
  br label %.lr.ph.i.i.i.i.epil

.lr.ph.i.i.i.i.epil:                              ; preds = %.lr.ph.i.i.i.i.epil, %.lr.ph.preheader.i.i.i.i
  %.05.i.i.i.i.epil = phi i64 [ %i.mw, %.lr.ph.i.i.i.i.epil ], [ 0, %.lr.ph.preheader.i.i.i.i ] ; 2 uses
  %epil.iter = phi i64 [ %epil.iter.next, %.lr.ph.i.i.i.i.epil ], [ 0, %.lr.ph.preheader.i.i.i.i ]
  %i.mu = load ptr, ptr %.phi.trans.insert.i.i.i, align 8, !tbaa !70
  %i.mv = getelementptr inbounds nuw i8, ptr %i.mu, i64 %.05.i.i.i.i.epil
  store i8 0, ptr %i.mv, align 1, !tbaa !11
  %i.mw = add nuw nsw i64 %.05.i.i.i.i.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %i.mi
  br i1 %epil.iter.cmp.not, label %_ZN11flatbuffers21FlatBufferBuilderImplILb0EE5AlignEm.exit.i.i, label %.lr.ph.i.i.i.i.epil, !llvm.loop !144

_ZN11flatbuffers21FlatBufferBuilderImplILb0EE5AlignEm.exit.i.i: ; preds = %.lr.ph.i.i.i.i.epil, %_ZN11flatbuffers21FlatBufferBuilderImplILb0EE13TrackMinAlignEm.exit.i.i.i
  %.pre4.i.i.i.i = load ptr, ptr %.phi.trans.insert.i.i.i, align 8, !tbaa !70 ; 2 uses
  %i.mx = load ptr, ptr %i.o, align 8, !tbaa !71
  %i.my = ptrtoint ptr %.pre4.i.i.i.i to i64
  %i.mz = ptrtoint ptr %i.mx to i64
  %i.na = sub i64 %i.my, %i.mz
  %i.nb = and i64 %i.na, 4294967292
  %i.nc = icmp eq i64 %i.nb, 0
  br i1 %i.nc, label %bb.am, label %bb.an

bb.am:                                            ; preds = %_ZN11flatbuffers21FlatBufferBuilderImplILb0EE5AlignEm.exit.i.i
  invoke void @_ZN11flatbuffers15vector_downwardIjE10reallocateEm(ptr noundef nonnull align 8 dereferenceable(128) %0, i64 noundef 4)
          to label %.noexc272 unwind label %.loopexit.split-lp.loopexit

.noexc272:                                        ; preds = %bb.am
  %.pre.i.i.i.i = load ptr, ptr %.phi.trans.insert.i.i.i, align 8, !tbaa !70
  br label %bb.an

bb.an:                                            ; preds = %.noexc272, %_ZN11flatbuffers21FlatBufferBuilderImplILb0EE5AlignEm.exit.i.i
  %i.nd = phi ptr [ %.pre4.i.i.i.i, %_ZN11flatbuffers21FlatBufferBuilderImplILb0EE5AlignEm.exit.i.i ], [ %.pre.i.i.i.i, %.noexc272 ]
  %i.ne = getelementptr inbounds i8, ptr %i.nd, i64 -4 ; 2 uses
  store ptr %i.ne, ptr %.phi.trans.insert.i.i.i, align 8, !tbaa !70
  %i.nf = load i32, ptr %i.n, align 8, !tbaa !65
  %i.ng = add i32 %i.nf, 4
  store i32 %i.ng, ptr %i.n, align 8, !tbaa !65
  store i32 %i.mc, ptr %i.ne, align 4, !tbaa !14
  %i.nh = load i32, ptr %i.n, align 8, !tbaa !65
  br label %_ZN11flatbuffers21FlatBufferBuilderImplILb0EE18CreateSharedStringEPKNS_6StringE.exit

_ZN11flatbuffers21FlatBufferBuilderImplILb0EE18CreateSharedStringEPKNS_6StringE.exit: ; preds = %_ZNK10reflection5Field6offsetEv.exit.i206.invoke, %bb.ab, %_ZN11flatbuffers21FlatBufferBuilderImplILb0EE12CreateVectorINS_6OffsetIPKNS_5TableEEESaIS7_EEENS3_INS_6VectorIT_jEEEERKSt6vectorISA_T0_E.exit, %bb.y, %_ZN11flatbuffers21FlatBufferBuilderImplILb0EE12CreateVectorINS_6OffsetIPKNS_6StringEEESaIS7_EEENS3_INS_6VectorIT_jEEEERKSt6vectorISA_T0_E.exit, %bb.f, %.noexc195, %bb.an
  %.0367 = phi i32 [ %i.kj, %bb.ab ], [ %i.cy, %.noexc195 ], [ %i.iz, %_ZN11flatbuffers21FlatBufferBuilderImplILb0EE12CreateVectorINS_6OffsetIPKNS_6StringEEESaIS7_EEENS3_INS_6VectorIT_jEEEERKSt6vectorISA_T0_E.exit ], [ %i.kj, %_ZN11flatbuffers21FlatBufferBuilderImplILb0EE12CreateVectorINS_6OffsetIPKNS_5TableEEESaIS7_EEENS3_INS_6VectorIT_jEEEERKSt6vectorISA_T0_E.exit ], [ %i.ez, %_ZNK10reflection5Field6offsetEv.exit.i206.invoke ], [ %i.nh, %bb.an ], [ %i.cf, %bb.f ], [ %i.iz, %bb.y ] ; 3 uses
  %.not173 = icmp eq i32 %.0367, 0
  br i1 %.not173, label %_ZNSt6vectorIjSaIjEE9push_backERKj.exit, label %bb.ao

bb.ao:                                            ; preds = %_ZN11flatbuffers21FlatBufferBuilderImplILb0EE18CreateSharedStringEPKNS_6StringE.exit
  %.not.i273 = icmp eq ptr %.sroa.9.0467, %.sroa.12363.0462
  br i1 %.not.i273, label %bb.aq, label %bb.ap

bb.ap:                                            ; preds = %bb.ao
  store i32 %.0367, ptr %.sroa.9.0467, align 4, !tbaa !14
  %i.ni = getelementptr inbounds nuw i8, ptr %.sroa.9.0467, i64 4
  br label %_ZNSt6vectorIjSaIjEE9push_backERKj.exit

bb.aq:                                            ; preds = %bb.ao
  %i.nj = ptrtoint ptr %.sroa.9.0467 to i64
  %i.nk = ptrtoint ptr %.sroa.0359.0469 to i64    ; 2 uses
  %i.nl = sub i64 %i.nj, %i.nk                    ; 5 uses
  %i.nm = icmp eq i64 %i.nl, 9223372036854775804
  br i1 %i.nm, label %bb.ar, label %_ZNKSt6vectorIjSaIjEE12_M_check_lenEmPKc.exit.i.i

bb.ar:                                            ; preds = %bb.aq
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.27) #21
          to label %.noexc275 unwind label %.loopexit.split-lp.loopexit.split-lp

.noexc275:                                        ; preds = %bb.ar
  unreachable

_ZNKSt6vectorIjSaIjEE12_M_check_lenEmPKc.exit.i.i: ; preds = %bb.aq
  %i.nn = ashr exact i64 %i.nl, 2                 ; 3 uses
  %.sroa.speculated.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.nn, i64 1)
  %i.no = add nsw i64 %.sroa.speculated.i.i.i, %i.nn ; 2 uses
  %i.np = icmp ult i64 %i.no, %i.nn
  %i.nq = tail call i64 @llvm.umin.i64(i64 %i.no, i64 2305843009213693951)
  %i.nr = select i1 %i.np, i64 2305843009213693951, i64 %i.nq ; 3 uses
  %.not.i.i.i274 = icmp ne i64 %i.nr, 0
  tail call void @llvm.assume(i1 %.not.i.i.i274)
  %i.ns = shl nuw nsw i64 %i.nr, 2
  %i.nt = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ns) #23
          to label %.noexc276 unwind label %.loopexit.split-lp.loopexit ; 4 uses

.noexc276:                                        ; preds = %_ZNKSt6vectorIjSaIjEE12_M_check_lenEmPKc.exit.i.i
  %i.nu = getelementptr inbounds i8, ptr %i.nt, i64 %i.nl ; 2 uses
  store i32 %.0367, ptr %i.nu, align 4, !tbaa !14
  %i.nv = icmp sgt i64 %i.nl, 0
  br i1 %i.nv, label %bb.as, label %_ZNSt6vectorIjSaIjEE11_S_relocateEPjS2_S2_RS0_.exit16.i.i

bb.as:                                            ; preds = %.noexc276
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.nt, ptr align 4 %.sroa.0359.0469, i64 %i.nl, i1 false)
  br label %_ZNSt6vectorIjSaIjEE11_S_relocateEPjS2_S2_RS0_.exit16.i.i

_ZNSt6vectorIjSaIjEE11_S_relocateEPjS2_S2_RS0_.exit16.i.i: ; preds = %bb.as, %.noexc276
  %i.nw = getelementptr inbounds nuw i8, ptr %i.nu, i64 4
  %.not.i17.i.i = icmp eq ptr %.sroa.0359.0469, null
  br i1 %.not.i17.i.i, label %_ZNSt6vectorIjSaIjEE17_M_realloc_insertIJRKjEEEvN9__gnu_cxx17__normal_iteratorIPjS1_EEDpOT_.exit.i, label %bb.at

bb.at:                                            ; preds = %_ZNSt6vectorIjSaIjEE11_S_relocateEPjS2_S2_RS0_.exit16.i.i
  %5 = ptrtoint ptr %.sroa.12363.0462 to i64
  %6 = sub i64 %5, %i.nk
  tail call void @_ZdlPvm(ptr noundef nonnull %.sroa.0359.0469, i64 noundef %6) #22
  br label %_ZNSt6vectorIjSaIjEE17_M_realloc_insertIJRKjEEEvN9__gnu_cxx17__normal_iteratorIPjS1_EEDpOT_.exit.i

_ZNSt6vectorIjSaIjEE17_M_realloc_insertIJRKjEEEvN9__gnu_cxx17__normal_iteratorIPjS1_EEDpOT_.exit.i: ; preds = %bb.at, %_ZNSt6vectorIjSaIjEE11_S_relocateEPjS2_S2_RS0_.exit16.i.i
  %i.nx = getelementptr inbounds nuw [4 x i8], ptr %i.nt, i64 %i.nr
  br label %_ZNSt6vectorIjSaIjEE9push_backERKj.exit

_ZNSt6vectorIjSaIjEE9push_backERKj.exit:          ; preds = %_ZNK10reflection5Field6offsetEv.exit.i187, %_ZNK11flatbuffers5Table22GetOptionalFieldOffsetEt.exit.i.i2.i188, %_ZNK10reflection5Field6offsetEv.exit.i, %_ZNK11flatbuffers5Table22GetOptionalFieldOffsetEt.exit.i.i2.i, %_ZNK11flatbuffers5Table22GetOptionalFieldOffsetEt.exit.i.i.i181, %_ZNK11flatbuffers5Table22GetOptionalFieldOffsetEt.exit.i.i183, %_ZNK10reflection6Object9is_structEv.exit205, %_ZNK10reflection4Type9base_typeEv.exit, %_ZNK10reflection5Field6offsetEv.exit, %_ZN11flatbuffers21FlatBufferBuilderImplILb0EE18CreateSharedStringEPKNS_6StringE.exit, %bb.ap, %_ZNSt6vectorIjSaIjEE17_M_realloc_insertIJRKjEEEvN9__gnu_cxx17__normal_iteratorIPjS1_EEDpOT_.exit.i, %_ZNK11flatbuffers5Table10CheckFieldEt.exit
  %.sroa.12363.2 = phi ptr [ %.sroa.12363.0462, %bb.ap ], [ %.sroa.12363.0462, %_ZNK11flatbuffers5Table10CheckFieldEt.exit ], [ %.sroa.12363.0462, %_ZN11flatbuffers21FlatBufferBuilderImplILb0EE18CreateSharedStringEPKNS_6StringE.exit ], [ %.sroa.12363.0462, %_ZNK10reflection5Field6offsetEv.exit ], [ %i.nx, %_ZNSt6vectorIjSaIjEE17_M_realloc_insertIJRKjEEEvN9__gnu_cxx17__normal_iteratorIPjS1_EEDpOT_.exit.i ], [ %.sroa.12363.0462, %_ZNK10reflection4Type9base_typeEv.exit ], [ %.sroa.12363.0462, %_ZNK10reflection6Object9is_structEv.exit205 ], [ %.sroa.12363.0462, %_ZNK11flatbuffers5Table22GetOptionalFieldOffsetEt.exit.i.i183 ], [ %.sroa.12363.0462, %_ZNK11flatbuffers5Table22GetOptionalFieldOffsetEt.exit.i.i.i181 ], [ %.sroa.12363.0462, %_ZNK11flatbuffers5Table22GetOptionalFieldOffsetEt.exit.i.i2.i ], [ %.sroa.12363.0462, %_ZNK10reflection5Field6offsetEv.exit.i ], [ %.sroa.12363.0462, %_ZNK11flatbuffers5Table22GetOptionalFieldOffsetEt.exit.i.i2.i188 ], [ %.sroa.12363.0462, %_ZNK10reflection5Field6offsetEv.exit.i187 ] ; 2 uses
  %.sroa.9.2 = phi ptr [ %i.ni, %bb.ap ], [ %.sroa.9.0467, %_ZNK11flatbuffers5Table10CheckFieldEt.exit ], [ %.sroa.9.0467, %_ZN11flatbuffers21FlatBufferBuilderImplILb0EE18CreateSharedStringEPKNS_6StringE.exit ], [ %.sroa.9.0467, %_ZNK10reflection5Field6offsetEv.exit ], [ %i.nw, %_ZNSt6vectorIjSaIjEE17_M_realloc_insertIJRKjEEEvN9__gnu_cxx17__normal_iteratorIPjS1_EEDpOT_.exit.i ], [ %.sroa.9.0467, %_ZNK10reflection4Type9base_typeEv.exit ], [ %.sroa.9.0467, %_ZNK10reflection6Object9is_structEv.exit205 ], [ %.sroa.9.0467, %_ZNK11flatbuffers5Table22GetOptionalFieldOffsetEt.exit.i.i183 ], [ %.sroa.9.0467, %_ZNK11flatbuffers5Table22GetOptionalFieldOffsetEt.exit.i.i.i181 ], [ %.sroa.9.0467, %_ZNK11flatbuffers5Table22GetOptionalFieldOffsetEt.exit.i.i2.i ], [ %.sroa.9.0467, %_ZNK10reflection5Field6offsetEv.exit.i ], [ %.sroa.9.0467, %_ZNK11flatbuffers5Table22GetOptionalFieldOffsetEt.exit.i.i2.i188 ], [ %.sroa.9.0467, %_ZNK10reflection5Field6offsetEv.exit.i187 ]
  %.sroa.0359.2 = phi ptr [ %.sroa.0359.0469, %bb.ap ], [ %.sroa.0359.0469, %_ZNK11flatbuffers5Table10CheckFieldEt.exit ], [ %.sroa.0359.0469, %_ZN11flatbuffers21FlatBufferBuilderImplILb0EE18CreateSharedStringEPKNS_6StringE.exit ], [ %.sroa.0359.0469, %_ZNK10reflection5Field6offsetEv.exit ], [ %i.nt, %_ZNSt6vectorIjSaIjEE17_M_realloc_insertIJRKjEEEvN9__gnu_cxx17__normal_iteratorIPjS1_EEDpOT_.exit.i ], [ %.sroa.0359.0469, %_ZNK10reflection4Type9base_typeEv.exit ], [ %.sroa.0359.0469, %_ZNK10reflection6Object9is_structEv.exit205 ], [ %.sroa.0359.0469, %_ZNK11flatbuffers5Table22GetOptionalFieldOffsetEt.exit.i.i183 ], [ %.sroa.0359.0469, %_ZNK11flatbuffers5Table22GetOptionalFieldOffsetEt.exit.i.i.i181 ], [ %.sroa.0359.0469, %_ZNK11flatbuffers5Table22GetOptionalFieldOffsetEt.exit.i.i2.i ], [ %.sroa.0359.0469, %_ZNK10reflection5Field6offsetEv.exit.i ], [ %.sroa.0359.0469, %_ZNK11flatbuffers5Table22GetOptionalFieldOffsetEt.exit.i.i2.i188 ], [ %.sroa.0359.0469, %_ZNK10reflection5Field6offsetEv.exit.i187 ] ; 2 uses
  %i.ny = getelementptr inbounds nuw i8, ptr %.sroa.0356.0466, i64 4 ; 2 uses
  %i.nz = load i32, ptr %i.k, align 4, !tbaa !35, !noalias !151
  %i.oa = shl i32 %i.nz, 2
  %i.ob = zext i32 %i.oa to i64
  %i.oc = getelementptr inbounds nuw i8, ptr %i.l, i64 %i.ob
  %.not = icmp eq ptr %i.ny, %i.oc
  br i1 %.not, label %._crit_edge474.loopexit, label %bb.a, !llvm.loop !145

_ZNK10reflection6Object9is_structEv.exit:         ; preds = %_ZNK11flatbuffers5Table22GetOptionalFieldOffsetEt.exit.i.i
  %i.od = zext i16 %i.v to i64
  %i.oe = getelementptr inbounds nuw i8, ptr %2, i64 %i.od
  %i.of = load i8, ptr %i.oe, align 1, !tbaa !11
  %.not379 = icmp eq i8 %i.of, 0
  br i1 %.not379, label %_ZNK10reflection6Object9is_structEv.exit.thread, label %bb.au

bb.au:                                            ; preds = %_ZNK10reflection6Object9is_structEv.exit
  %i.og = icmp ugt i16 %i.s, 10
  br i1 %i.og, label %_ZNK11flatbuffers5Table22GetOptionalFieldOffsetEt.exit.i.i277, label %_ZN11flatbuffers21FlatBufferBuilderImplILb0EE13TrackMinAlignEm.exit.i.i

_ZNK11flatbuffers5Table22GetOptionalFieldOffsetEt.exit.i.i277: ; preds = %bb.au
  %i.oh = getelementptr inbounds nuw i8, ptr %i.r, i64 10
  %i.oi = load i16, ptr %i.oh, align 2, !tbaa !13 ; 2 uses
  %.not.i.i278 = icmp eq i16 %i.oi, 0
  br i1 %.not.i.i278, label %_ZN11flatbuffers21FlatBufferBuilderImplILb0EE13TrackMinAlignEm.exit.i.i, label %_ZNK10reflection6Object8minalignEv.exit

_ZNK10reflection6Object8minalignEv.exit:          ; preds = %_ZNK11flatbuffers5Table22GetOptionalFieldOffsetEt.exit.i.i277
  %i.oj = zext i16 %i.oi to i64
  %i.ok = getelementptr inbounds nuw i8, ptr %2, i64 %i.oj
  %i.ol = load i32, ptr %i.ok, align 4, !tbaa !14
  %i.om = sext i32 %i.ol to i64                   ; 4 uses
  %i.on = getelementptr inbounds nuw i8, ptr %0, i64 104 ; 2 uses
  %i.oo = load i64, ptr %i.on, align 8, !tbaa !75
  %i.op = icmp ult i64 %i.oo, %i.om
  br i1 %i.op, label %bb.av, label %_ZN11flatbuffers21FlatBufferBuilderImplILb0EE13TrackMinAlignEm.exit.i.i

bb.av:                                            ; preds = %_ZNK10reflection6Object8minalignEv.exit
  store i64 %i.om, ptr %i.on, align 8, !tbaa !75
  br label %_ZN11flatbuffers21FlatBufferBuilderImplILb0EE13TrackMinAlignEm.exit.i.i

_ZN11flatbuffers21FlatBufferBuilderImplILb0EE13TrackMinAlignEm.exit.i.i: ; preds = %bb.au, %_ZNK11flatbuffers5Table22GetOptionalFieldOffsetEt.exit.i.i277, %bb.av, %_ZNK10reflection6Object8minalignEv.exit
  %i.oq = phi i64 [ %i.om, %_ZNK10reflection6Object8minalignEv.exit ], [ %i.om, %bb.av ], [ 0, %_ZNK11flatbuffers5Table22GetOptionalFieldOffsetEt.exit.i.i277 ], [ 0, %bb.au ]
  %i.or = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 4 uses
  %i.os = load i32, ptr %i.or, align 8, !tbaa !65 ; 3 uses
  %i.ot = zext i32 %i.os to i64
  %i.ou = sub nsw i64 0, %i.ot
  %i.ov = add nsw i64 %i.oq, -1
  %i.ow = and i64 %i.ov, %i.ou                    ; 8 uses
  %.not.i.i.i.i279 = icmp eq i64 %i.ow, 0
  %.phi.trans.insert.i.i.i.i = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 8 uses
  br i1 %.not.i.i.i.i279, label %_ZN11flatbuffers21FlatBufferBuilderImplILb0EE11StartStructEm.exit, label %bb.aw

bb.aw:                                            ; preds = %_ZN11flatbuffers21FlatBufferBuilderImplILb0EE13TrackMinAlignEm.exit.i.i
  %.pre4.i.i.i.i280 = load ptr, ptr %.phi.trans.insert.i.i.i.i, align 8, !tbaa !70 ; 2 uses
  %i.ox = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.oy = load ptr, ptr %i.ox, align 8, !tbaa !71
  %i.oz = ptrtoint ptr %.pre4.i.i.i.i280 to i64
  %i.pa = ptrtoint ptr %i.oy to i64
  %i.pb = sub i64 %i.oz, %i.pa
  %i.pc = and i64 %i.pb, 4294967295
  %i.pd = icmp ugt i64 %i.ow, %i.pc
  br i1 %i.pd, label %bb.ax, label %.lr.ph.preheader.i.i.i

bb.ax:                                            ; preds = %bb.aw
  invoke void @_ZN11flatbuffers15vector_downwardIjE10reallocateEm(ptr noundef nonnull align 8 dereferenceable(128) %0, i64 noundef %i.ow)
          to label %.noexc282 unwind label %.loopexit.split-lp.loopexit.split-lp

.noexc282:                                        ; preds = %bb.ax
  %.pre.i.i.i.i281 = load ptr, ptr %.phi.trans.insert.i.i.i.i, align 8, !tbaa !70
  %.pre.i.i = load i32, ptr %i.or, align 8, !tbaa !65
  br label %.lr.ph.preheader.i.i.i

.lr.ph.preheader.i.i.i:                           ; preds = %.noexc282, %bb.aw
  %i.pe = phi i32 [ %i.os, %bb.aw ], [ %.pre.i.i, %.noexc282 ]
  %i.pf = phi ptr [ %.pre4.i.i.i.i280, %bb.aw ], [ %.pre.i.i.i.i281, %.noexc282 ]
  %i.pg = sub nsw i64 0, %i.ow
  %i.ph = getelementptr inbounds i8, ptr %i.pf, i64 %i.pg
  store ptr %i.ph, ptr %.phi.trans.insert.i.i.i.i, align 8, !tbaa !70
  %i.pi = trunc i64 %i.ow to i32
  %i.pj = add i32 %i.pe, %i.pi
  store i32 %i.pj, ptr %i.or, align 8, !tbaa !65
  %xtraiter716 = and i64 %i.ow, 3                 ; 3 uses
  %i.pk = icmp ult i64 %i.ow, 4
  br i1 %i.pk, label %.lr.ph.i.i.i.epil.preheader, label %.lr.ph.preheader.i.i.i.new

.lr.ph.preheader.i.i.i.new:                       ; preds = %.lr.ph.preheader.i.i.i
  %unroll_iter720 = and i64 %i.ow, -4
  br label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %.lr.ph.i.i.i, %.lr.ph.preheader.i.i.i.new
  %.05.i.i.i = phi i64 [ 0, %.lr.ph.preheader.i.i.i.new ], [ %i.pw, %.lr.ph.i.i.i ] ; 5 uses
  %niter721 = phi i64 [ 0, %.lr.ph.preheader.i.i.i.new ], [ %niter721.next.3, %.lr.ph.i.i.i ]
  %i.pl = load ptr, ptr %.phi.trans.insert.i.i.i.i, align 8, !tbaa !70
  %i.pm = getelementptr inbounds nuw i8, ptr %i.pl, i64 %.05.i.i.i
  store i8 0, ptr %i.pm, align 1, !tbaa !11
  %i.pn = load ptr, ptr %.phi.trans.insert.i.i.i.i, align 8, !tbaa !70
  %i.po = getelementptr inbounds nuw i8, ptr %i.pn, i64 %.05.i.i.i
  %i.pp = getelementptr inbounds nuw i8, ptr %i.po, i64 1
  store i8 0, ptr %i.pp, align 1, !tbaa !11
  %i.pq = load ptr, ptr %.phi.trans.insert.i.i.i.i, align 8, !tbaa !70
  %i.pr = getelementptr inbounds nuw i8, ptr %i.pq, i64 %.05.i.i.i
  %i.ps = getelementptr inbounds nuw i8, ptr %i.pr, i64 2
  store i8 0, ptr %i.ps, align 1, !tbaa !11
  %i.pt = load ptr, ptr %.phi.trans.insert.i.i.i.i, align 8, !tbaa !70
  %i.pu = getelementptr inbounds nuw i8, ptr %i.pt, i64 %.05.i.i.i
  %i.pv = getelementptr inbounds nuw i8, ptr %i.pu, i64 3
  store i8 0, ptr %i.pv, align 1, !tbaa !11
  %i.pw = add nuw i64 %.05.i.i.i, 4               ; 2 uses
  %niter721.next.3 = add nuw i64 %niter721, 4     ; 2 uses
  %niter721.ncmp.3 = icmp eq i64 %niter721.next.3, %unroll_iter720
  br i1 %niter721.ncmp.3, label %_ZN11flatbuffers21FlatBufferBuilderImplILb0EE5AlignEm.exit.loopexit.i.unr-lcssa, label %.lr.ph.i.i.i, !llvm.loop !1

_ZN11flatbuffers21FlatBufferBuilderImplILb0EE5AlignEm.exit.loopexit.i.unr-lcssa: ; preds = %.lr.ph.i.i.i
  %lcmp.mod718.not = icmp eq i64 %xtraiter716, 0
  br i1 %lcmp.mod718.not, label %_ZN11flatbuffers21FlatBufferBuilderImplILb0EE5AlignEm.exit.loopexit.i, label %.lr.ph.i.i.i.epil.preheader

.lr.ph.i.i.i.epil.preheader:                      ; preds = %_ZN11flatbuffers21FlatBufferBuilderImplILb0EE5AlignEm.exit.loopexit.i.unr-lcssa, %.lr.ph.preheader.i.i.i
  %.05.i.i.i.epil.init = phi i64 [ 0, %.lr.ph.preheader.i.i.i ], [ %i.pw, %_ZN11flatbuffers21FlatBufferBuilderImplILb0EE5AlignEm.exit.loopexit.i.unr-lcssa ]
  %lcmp.mod719 = icmp ne i64 %xtraiter716, 0
  tail call void @llvm.assume(i1 %lcmp.mod719)
  br label %.lr.ph.i.i.i.epil

.lr.ph.i.i.i.epil:                                ; preds = %.lr.ph.i.i.i.epil, %.lr.ph.i.i.i.epil.preheader
  %.05.i.i.i.epil = phi i64 [ %i.pz, %.lr.ph.i.i.i.epil ], [ %.05.i.i.i.epil.init, %.lr.ph.i.i.i.epil.preheader ] ; 2 uses
  %epil.iter717 = phi i64 [ %epil.iter717.next, %.lr.ph.i.i.i.epil ], [ 0, %.lr.ph.i.i.i.epil.preheader ]
  %i.px = load ptr, ptr %.phi.trans.insert.i.i.i.i, align 8, !tbaa !70
  %i.py = getelementptr inbounds nuw i8, ptr %i.px, i64 %.05.i.i.i.epil
  store i8 0, ptr %i.py, align 1, !tbaa !11
  %i.pz = add nuw i64 %.05.i.i.i.epil, 1
  %epil.iter717.next = add i64 %epil.iter717, 1   ; 2 uses
  %epil.iter717.cmp.not = icmp eq i64 %epil.iter717.next, %xtraiter716
  br i1 %epil.iter717.cmp.not, label %_ZN11flatbuffers21FlatBufferBuilderImplILb0EE5AlignEm.exit.loopexit.i, label %.lr.ph.i.i.i.epil, !llvm.loop !146

_ZN11flatbuffers21FlatBufferBuilderImplILb0EE5AlignEm.exit.loopexit.i: ; preds = %.lr.ph.i.i.i.epil, %_ZN11flatbuffers21FlatBufferBuilderImplILb0EE5AlignEm.exit.loopexit.i.unr-lcssa
  %.pre.i = load i32, ptr %i.or, align 8, !tbaa !65
  br label %_ZN11flatbuffers21FlatBufferBuilderImplILb0EE11StartStructEm.exit

_ZNK10reflection6Object9is_structEv.exit.thread:  ; preds = %._crit_edge474, %_ZNK11flatbuffers5Table22GetOptionalFieldOffsetEt.exit.i.i, %_ZNK10reflection6Object9is_structEv.exit
  %i.qa = getelementptr inbounds nuw i8, ptr %0, i64 96
  store i8 1, ptr %i.qa, align 8, !tbaa !74
  %i.qb = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.qc = load i32, ptr %i.qb, align 8, !tbaa !65
  br label %_ZN11flatbuffers21FlatBufferBuilderImplILb0EE11StartStructEm.exit

_ZN11flatbuffers21FlatBufferBuilderImplILb0EE11StartStructEm.exit: ; preds = %_ZN11flatbuffers21FlatBufferBuilderImplILb0EE5AlignEm.exit.loopexit.i, %_ZN11flatbuffers21FlatBufferBuilderImplILb0EE13TrackMinAlignEm.exit.i.i, %_ZNK10reflection6Object9is_structEv.exit.thread
  %i.qd = phi i32 [ %i.qc, %_ZNK10reflection6Object9is_structEv.exit.thread ], [ %.pre.i, %_ZN11flatbuffers21FlatBufferBuilderImplILb0EE5AlignEm.exit.loopexit.i ], [ %i.os, %_ZN11flatbuffers21FlatBufferBuilderImplILb0EE13TrackMinAlignEm.exit.i.i ]
  %i.qe = load i32, ptr %i.k, align 4, !tbaa !35, !noalias !156
  %.mask483 = and i32 %i.qe, 1073741823
  %.not380476 = icmp eq i32 %.mask483, 0
  br i1 %.not380476, label %._crit_edge480, label %.lr.ph479

.lr.ph479:                                        ; preds = %_ZN11flatbuffers21FlatBufferBuilderImplILb0EE11StartStructEm.exit
  %i.qf = getelementptr inbounds nuw i8, ptr %0, i64 104 ; 2 uses
  %i.qg = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 4 uses
  %.phi.trans.insert.i.i.i.i.i320 = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 4 uses
  %i.qh = getelementptr inbounds nuw i8, ptr %0, i64 72
  br label %bb.ay

._crit_edge480:                                   ; preds = %_ZN11flatbuffers21FlatBufferBuilderImplILb0EE9AddOffsetIvEEvtNS_6OffsetIT_EE.exit, %_ZN11flatbuffers21FlatBufferBuilderImplILb0EE11StartStructEm.exit
  %i.qi = load i32, ptr %2, align 4, !tbaa !14
  %i.qj = sext i32 %i.qi to i64
  %i.qk = sub nsw i64 0, %i.qj
  %i.ql = getelementptr inbounds i8, ptr %2, i64 %i.qk ; 2 uses
  %i.qm = load i16, ptr %i.ql, align 2, !tbaa !13
  %i.qn = icmp ugt i16 %i.qm, 8
  br i1 %i.qn, label %_ZNK11flatbuffers5Table22GetOptionalFieldOffsetEt.exit.i.i283, label %_ZNK10reflection6Object9is_structEv.exit285.thread

_ZNK11flatbuffers5Table22GetOptionalFieldOffsetEt.exit.i.i283: ; preds = %._crit_edge480
  %i.qo = getelementptr inbounds nuw i8, ptr %i.ql, i64 8
  %i.qp = load i16, ptr %i.qo, align 2, !tbaa !13 ; 2 uses
  %.not.i.i284 = icmp eq i16 %i.qp, 0
  br i1 %.not.i.i284, label %_ZNK10reflection6Object9is_structEv.exit285.thread, label %_ZNK10reflection6Object9is_structEv.exit285

bb.ay:                                            ; preds = %.lr.ph479, %_ZN11flatbuffers21FlatBufferBuilderImplILb0EE9AddOffsetIvEEvtNS_6OffsetIT_EE.exit
  %.0478 = phi i64 [ 0, %.lr.ph479 ], [ %.2, %_ZN11flatbuffers21FlatBufferBuilderImplILb0EE9AddOffsetIvEEvtNS_6OffsetIT_EE.exit ] ; 5 uses
  %.sroa.0335.0477 = phi ptr [ %i.l, %.lr.ph479 ], [ %i.vx, %_ZN11flatbuffers21FlatBufferBuilderImplILb0EE9AddOffsetIvEEvtNS_6OffsetIT_EE.exit ] ; 3 uses
  %i.qq = load i32, ptr %.sroa.0335.0477, align 4, !tbaa !14
  %i.qr = zext i32 %i.qq to i64
  %i.qs = getelementptr inbounds nuw i8, ptr %.sroa.0335.0477, i64 %i.qr ; 6 uses
  %i.qt = load i32, ptr %i.qs, align 4, !tbaa !14
  %i.qu = sext i32 %i.qt to i64
  %i.qv = sub nsw i64 0, %i.qu
  %i.qw = getelementptr inbounds i8, ptr %i.qs, i64 %i.qv ; 4 uses
  %i.qx = load i16, ptr %i.qw, align 2, !tbaa !13 ; 2 uses
  %i.qy = icmp ugt i16 %i.qx, 10                  ; 2 uses
  br i1 %i.qy, label %_ZNK11flatbuffers5Table22GetOptionalFieldOffsetEt.exit.i.i286, label %_ZNK10reflection5Field6offsetEv.exit288

_ZNK11flatbuffers5Table22GetOptionalFieldOffsetEt.exit.i.i286: ; preds = %bb.ay
  %i.qz = getelementptr inbounds nuw i8, ptr %i.qw, i64 10
  %i.ra = load i16, ptr %i.qz, align 2, !tbaa !13 ; 2 uses
  %.not.i.i287 = icmp eq i16 %i.ra, 0
end_hunk_1
begin_hunk_2_@_ZN11flatbuffers9CopyTableERNS_21FlatBufferBuilderImplILb0EEERKN10reflection6SchemaERKNS3_6ObjectERKNS_5TableEb:_ZNK11flatbuffers5Table22GetOptionalFieldOffsetEt.exit.i.i.i
  %i.to = load i16, ptr %i.tn, align 2, !tbaa !13 ; 3 uses
  %i.tp = icmp ugt i16 %i.to, 8
  br i1 %i.tp, label %_ZNK11flatbuffers5Table22GetOptionalFieldOffsetEt.exit.i.i305, label %.thread377

_ZNK11flatbuffers5Table22GetOptionalFieldOffsetEt.exit.i.i305: ; preds = %bb.bd
  %i.tq = getelementptr inbounds nuw i8, ptr %i.tn, i64 8
  %i.tr = load i16, ptr %i.tq, align 2, !tbaa !13 ; 2 uses
  %.not.i.i306 = icmp eq i16 %i.tr, 0
  br i1 %.not.i.i306, label %.thread377, label %_ZNK10reflection6Object9is_structEv.exit307

_ZNK10reflection6Object9is_structEv.exit307:      ; preds = %_ZNK11flatbuffers5Table22GetOptionalFieldOffsetEt.exit.i.i305
  %i.ts = zext i16 %i.tr to i64
  %i.tt = getelementptr inbounds nuw i8, ptr %i.tj, i64 %i.ts
  %i.tu = load i8, ptr %i.tt, align 1, !tbaa !11
  %.not383 = icmp eq i8 %i.tu, 0
  br i1 %.not383, label %.thread377, label %bb.be

bb.be:                                            ; preds = %_ZNK10reflection6Object9is_structEv.exit307
  %i.tv = icmp ugt i16 %i.to, 10
  br i1 %i.tv, label %_ZNK11flatbuffers5Table22GetOptionalFieldOffsetEt.exit.i.i308, label %_ZNK10reflection6Object8bytesizeEv.exit313

_ZNK11flatbuffers5Table22GetOptionalFieldOffsetEt.exit.i.i308: ; preds = %bb.be
  %i.tw = getelementptr inbounds nuw i8, ptr %i.tn, i64 10
  %i.tx = load i16, ptr %i.tw, align 2, !tbaa !13 ; 2 uses
  %.not.i.i309 = icmp eq i16 %i.tx, 0
  br i1 %.not.i.i309, label %_ZNK10reflection6Object8minalignEv.exit310, label %bb.bf

bb.bf:                                            ; preds = %_ZNK11flatbuffers5Table22GetOptionalFieldOffsetEt.exit.i.i308
  %i.ty = zext i16 %i.tx to i64
  %i.tz = getelementptr inbounds nuw i8, ptr %i.tj, i64 %i.ty
  %i.ua = load i32, ptr %i.tz, align 4, !tbaa !14
  br label %_ZNK10reflection6Object8minalignEv.exit310

_ZNK10reflection6Object8minalignEv.exit310:       ; preds = %bb.bf, %_ZNK11flatbuffers5Table22GetOptionalFieldOffsetEt.exit.i.i308
  %i.ub = phi i32 [ %i.ua, %bb.bf ], [ 0, %_ZNK11flatbuffers5Table22GetOptionalFieldOffsetEt.exit.i.i308 ] ; 3 uses
  %i.uc = icmp ugt i16 %i.to, 12
  br i1 %i.uc, label %_ZNK11flatbuffers5Table22GetOptionalFieldOffsetEt.exit.i.i311, label %_ZNK10reflection6Object8bytesizeEv.exit313

_ZNK11flatbuffers5Table22GetOptionalFieldOffsetEt.exit.i.i311: ; preds = %_ZNK10reflection6Object8minalignEv.exit310
  %i.ud = getelementptr inbounds nuw i8, ptr %i.tn, i64 12
  %i.ue = load i16, ptr %i.ud, align 2, !tbaa !13 ; 2 uses
  %.not.i.i312 = icmp eq i16 %i.ue, 0
  br i1 %.not.i.i312, label %_ZNK10reflection6Object8bytesizeEv.exit313, label %bb.bg

bb.bg:                                            ; preds = %_ZNK11flatbuffers5Table22GetOptionalFieldOffsetEt.exit.i.i311
  %i.uf = zext i16 %i.ue to i64
  %i.ug = getelementptr inbounds nuw i8, ptr %i.tj, i64 %i.uf
  %i.uh = load i32, ptr %i.ug, align 4, !tbaa !14
  %i.ui = sext i32 %i.uh to i64
  br label %_ZNK10reflection6Object8bytesizeEv.exit313

_ZNK10reflection6Object8bytesizeEv.exit313:       ; preds = %bb.be, %bb.bg, %_ZNK11flatbuffers5Table22GetOptionalFieldOffsetEt.exit.i.i311, %_ZNK10reflection6Object8minalignEv.exit310
  %i.uj = phi i32 [ %i.ub, %bb.bg ], [ %i.ub, %_ZNK11flatbuffers5Table22GetOptionalFieldOffsetEt.exit.i.i311 ], [ %i.ub, %_ZNK10reflection6Object8minalignEv.exit310 ], [ 0, %bb.be ]
  %i.uk = phi i64 [ %i.ui, %bb.bg ], [ 0, %_ZNK11flatbuffers5Table22GetOptionalFieldOffsetEt.exit.i.i311 ], [ 0, %_ZNK10reflection6Object8minalignEv.exit310 ], [ 0, %bb.be ]
  %i.ul = sext i32 %i.uj to i64
  br label %_ZNK10reflection6Object8bytesizeEv.exit313.invoke

_ZNK10reflection6Object8bytesizeEv.exit313.invoke: ; preds = %_ZNK10reflection4Type9base_typeEv.exit295.thread, %_ZNK10reflection6Object8bytesizeEv.exit313
  %i.um = phi i64 [ %i.ul, %_ZNK10reflection6Object8bytesizeEv.exit313 ], [ %i.vw, %_ZNK10reflection4Type9base_typeEv.exit295.thread ]
  %i.un = phi i64 [ %i.uk, %_ZNK10reflection6Object8bytesizeEv.exit313 ], [ %i.vw, %_ZNK10reflection4Type9base_typeEv.exit295.thread ]
  invoke fastcc void @_ZN11flatbuffers12_GLOBAL__N_110CopyInlineERNS_21FlatBufferBuilderImplILb0EEERKN10reflection5FieldERKNS_5TableEmm(ptr noundef nonnull align 8 dereferenceable(128) %0, ptr noundef nonnull align 1 dereferenceable(1) %i.qs, ptr noundef nonnull align 1 dereferenceable(1) %3, i64 noundef %i.um, i64 noundef %i.un)
          to label %_ZN11flatbuffers21FlatBufferBuilderImplILb0EE9AddOffsetIvEEvtNS_6OffsetIT_EE.exit unwind label %.loopexit

.thread377:                                       ; preds = %bb.bd, %_ZNK11flatbuffers5Table22GetOptionalFieldOffsetEt.exit.i.i305, %_ZNK10reflection6Object9is_structEv.exit307, %_ZNK10reflection4Type9base_typeEv.exit295, %_ZNK10reflection4Type9base_typeEv.exit295, %_ZNK10reflection4Type9base_typeEv.exit295
  br i1 %i.qy, label %_ZNK11flatbuffers5Table22GetOptionalFieldOffsetEt.exit.i.i314, label %_ZNK10reflection5Field6offsetEv.exit316

_ZNK11flatbuffers5Table22GetOptionalFieldOffsetEt.exit.i.i314: ; preds = %.thread377
  %i.uo = getelementptr inbounds nuw i8, ptr %i.qw, i64 10
  %i.up = load i16, ptr %i.uo, align 2, !tbaa !13 ; 2 uses
  %.not.i.i315 = icmp eq i16 %i.up, 0
  br i1 %.not.i.i315, label %_ZNK10reflection5Field6offsetEv.exit316, label %bb.bh

bb.bh:                                            ; preds = %_ZNK11flatbuffers5Table22GetOptionalFieldOffsetEt.exit.i.i314
  %i.uq = zext i16 %i.up to i64
  %i.ur = getelementptr inbounds nuw i8, ptr %i.qs, i64 %i.uq
  %i.us = load i16, ptr %i.ur, align 2, !tbaa !13
  br label %_ZNK10reflection5Field6offsetEv.exit316

_ZNK10reflection5Field6offsetEv.exit316:          ; preds = %bb.bh, %_ZNK11flatbuffers5Table22GetOptionalFieldOffsetEt.exit.i.i314, %.thread377
  %i.ut = phi i16 [ %i.us, %bb.bh ], [ 0, %_ZNK11flatbuffers5Table22GetOptionalFieldOffsetEt.exit.i.i314 ], [ 0, %.thread377 ]
  %i.uu = add i64 %.0478, 1                       ; 2 uses
  %i.uv = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0359.0.lcssa, i64 %.0478
  %i.uw = load i32, ptr %i.uv, align 4, !tbaa !14 ; 2 uses
  %.not.i.i317 = icmp eq i32 %i.uw, 0
  br i1 %.not.i.i317, label %_ZN11flatbuffers21FlatBufferBuilderImplILb0EE9AddOffsetIvEEvtNS_6OffsetIT_EE.exit, label %bb.bi

bb.bi:                                            ; preds = %_ZNK10reflection5Field6offsetEv.exit316
  %i.ux = load i64, ptr %i.qf, align 8, !tbaa !75
  %i.uy = icmp ult i64 %i.ux, 4
  br i1 %i.uy, label %bb.bj, label %_ZN11flatbuffers21FlatBufferBuilderImplILb0EE13TrackMinAlignEm.exit.i.i.i318

bb.bj:                                            ; preds = %bb.bi
  store i64 4, ptr %i.qf, align 8, !tbaa !75
  br label %_ZN11flatbuffers21FlatBufferBuilderImplILb0EE13TrackMinAlignEm.exit.i.i.i318

_ZN11flatbuffers21FlatBufferBuilderImplILb0EE13TrackMinAlignEm.exit.i.i.i318: ; preds = %bb.bj, %bb.bi
  %i.uz = load i32, ptr %i.qg, align 8, !tbaa !65 ; 3 uses
  %i.va = sub i32 0, %i.uz
  %i.vb = and i32 %i.va, 3                        ; 3 uses
  %i.vc = zext nneg i32 %i.vb to i64              ; 4 uses
  %.not.i.i.i.i.i319 = icmp eq i32 %i.vb, 0
  br i1 %.not.i.i.i.i.i319, label %_ZN11flatbuffers21FlatBufferBuilderImplILb0EE7ReferToEj.exit.i, label %bb.bk

bb.bk:                                            ; preds = %_ZN11flatbuffers21FlatBufferBuilderImplILb0EE13TrackMinAlignEm.exit.i.i.i318
  %.pre4.i.i.i.i.i321 = load ptr, ptr %.phi.trans.insert.i.i.i.i.i320, align 8, !tbaa !70 ; 2 uses
  %i.vd = load ptr, ptr %i.qh, align 8, !tbaa !71
  %i.ve = ptrtoint ptr %.pre4.i.i.i.i.i321 to i64
  %i.vf = ptrtoint ptr %i.vd to i64
  %i.vg = sub i64 %i.ve, %i.vf
  %i.vh = and i64 %i.vg, 4294967295
  %i.vi = icmp samesign ult i64 %i.vh, %i.vc
  br i1 %i.vi, label %bb.bl, label %.lr.ph.preheader.i.i.i.i322

bb.bl:                                            ; preds = %bb.bk
  invoke void @_ZN11flatbuffers15vector_downwardIjE10reallocateEm(ptr noundef nonnull align 8 dereferenceable(128) %0, i64 noundef %i.vc)
          to label %.noexc329 unwind label %.loopexit

.noexc329:                                        ; preds = %bb.bl
  %.pre.i.i.i.i.i327 = load ptr, ptr %.phi.trans.insert.i.i.i.i.i320, align 8, !tbaa !70
  %.pre.i.i.i328 = load i32, ptr %i.qg, align 8, !tbaa !65
  br label %.lr.ph.preheader.i.i.i.i322

.lr.ph.preheader.i.i.i.i322:                      ; preds = %.noexc329, %bb.bk
  %i.vj = phi i32 [ %i.uz, %bb.bk ], [ %.pre.i.i.i328, %.noexc329 ]
  %i.vk = phi ptr [ %.pre4.i.i.i.i.i321, %bb.bk ], [ %.pre.i.i.i.i.i327, %.noexc329 ]
  %i.vl = sub nsw i64 0, %i.vc
  %i.vm = getelementptr inbounds i8, ptr %i.vk, i64 %i.vl
  store ptr %i.vm, ptr %.phi.trans.insert.i.i.i.i.i320, align 8, !tbaa !70
  %i.vn = add i32 %i.vj, %i.vb
  store i32 %i.vn, ptr %i.qg, align 8, !tbaa !65
  br label %.lr.ph.i.i.i.i323.epil

.lr.ph.i.i.i.i323.epil:                           ; preds = %.lr.ph.i.i.i.i323.epil, %.lr.ph.preheader.i.i.i.i322
  %.05.i.i.i.i324.epil = phi i64 [ %i.vq, %.lr.ph.i.i.i.i323.epil ], [ 0, %.lr.ph.preheader.i.i.i.i322 ] ; 2 uses
  %epil.iter723 = phi i64 [ %epil.iter723.next, %.lr.ph.i.i.i.i323.epil ], [ 0, %.lr.ph.preheader.i.i.i.i322 ]
  %i.vo = load ptr, ptr %.phi.trans.insert.i.i.i.i.i320, align 8, !tbaa !70
  %i.vp = getelementptr inbounds nuw i8, ptr %i.vo, i64 %.05.i.i.i.i324.epil
  store i8 0, ptr %i.vp, align 1, !tbaa !11
  %i.vq = add nuw nsw i64 %.05.i.i.i.i324.epil, 1
  %epil.iter723.next = add i64 %epil.iter723, 1   ; 2 uses
  %epil.iter723.cmp.not = icmp eq i64 %epil.iter723.next, %i.vc
  br i1 %epil.iter723.cmp.not, label %_ZN11flatbuffers21FlatBufferBuilderImplILb0EE5AlignEm.exit.loopexit.i.i, label %.lr.ph.i.i.i.i323.epil, !llvm.loop !149

_ZN11flatbuffers21FlatBufferBuilderImplILb0EE5AlignEm.exit.loopexit.i.i: ; preds = %.lr.ph.i.i.i.i323.epil
  %.pre.i.i326 = load i32, ptr %i.qg, align 8, !tbaa !65
  br label %_ZN11flatbuffers21FlatBufferBuilderImplILb0EE7ReferToEj.exit.i

_ZN11flatbuffers21FlatBufferBuilderImplILb0EE7ReferToEj.exit.i: ; preds = %_ZN11flatbuffers21FlatBufferBuilderImplILb0EE5AlignEm.exit.loopexit.i.i, %_ZN11flatbuffers21FlatBufferBuilderImplILb0EE13TrackMinAlignEm.exit.i.i.i318
  %i.vr = phi i32 [ %.pre.i.i326, %_ZN11flatbuffers21FlatBufferBuilderImplILb0EE5AlignEm.exit.loopexit.i.i ], [ %i.uz, %_ZN11flatbuffers21FlatBufferBuilderImplILb0EE13TrackMinAlignEm.exit.i.i.i318 ]
  %reass.sub = sub i32 %i.vr, %i.uw
  %i.vs = add i32 %reass.sub, 4
  invoke void @_ZN11flatbuffers21FlatBufferBuilderImplILb0EE10AddElementIjEEvtT_S3_(ptr noundef nonnull align 8 dereferenceable(128) %0, i16 noundef zeroext %i.ut, i32 noundef %i.vs, i32 noundef 0)
          to label %_ZN11flatbuffers21FlatBufferBuilderImplILb0EE9AddOffsetIvEEvtNS_6OffsetIT_EE.exit unwind label %.loopexit

_ZNK10reflection4Type9base_typeEv.exit295.thread: ; preds = %_ZNK11flatbuffers5Table22GetOptionalFieldOffsetEt.exit.i.i.i290, %_ZNK11flatbuffers5Table22GetOptionalFieldOffsetEt.exit.i.i293, %_ZNK10reflection4Type9base_typeEv.exit295
  %i.vt = phi i64 [ %i.sh, %_ZNK10reflection4Type9base_typeEv.exit295 ], [ 0, %_ZNK11flatbuffers5Table22GetOptionalFieldOffsetEt.exit.i.i293 ], [ 0, %_ZNK11flatbuffers5Table22GetOptionalFieldOffsetEt.exit.i.i.i290 ]
  %i.vu = and i64 %i.vt, 4294967295
  %i.vv = getelementptr inbounds nuw [8 x i8], ptr @_ZZN11flatbuffers11GetTypeSizeEN10reflection8BaseTypeEE5sizes, i64 %i.vu
  %i.vw = load i64, ptr %i.vv, align 8, !tbaa !16 ; 2 uses
  br label %_ZNK10reflection6Object8bytesizeEv.exit313.invoke

_ZN11flatbuffers21FlatBufferBuilderImplILb0EE9AddOffsetIvEEvtNS_6OffsetIT_EE.exit: ; preds = %_ZNK10reflection6Object8bytesizeEv.exit313.invoke, %_ZNK10reflection5Field6offsetEv.exit288, %_ZNK10reflection5Field6offsetEv.exit316, %_ZN11flatbuffers21FlatBufferBuilderImplILb0EE7ReferToEj.exit.i, %_ZNK11flatbuffers5Table10CheckFieldEt.exit289
  %.2 = phi i64 [ %.0478, %_ZNK11flatbuffers5Table10CheckFieldEt.exit289 ], [ %i.uu, %_ZNK10reflection5Field6offsetEv.exit316 ], [ %.0478, %_ZNK10reflection6Object8bytesizeEv.exit313.invoke ], [ %.0478, %_ZNK10reflection5Field6offsetEv.exit288 ], [ %i.uu, %_ZN11flatbuffers21FlatBufferBuilderImplILb0EE7ReferToEj.exit.i ]
  %i.vx = getelementptr inbounds nuw i8, ptr %.sroa.0335.0477, i64 4 ; 2 uses
  %i.vy = load i32, ptr %i.k, align 4, !tbaa !35, !noalias !156
  %i.vz = shl i32 %i.vy, 2
  %i.wa = zext i32 %i.vz to i64
  %i.wb = getelementptr inbounds nuw i8, ptr %i.l, i64 %i.wa
  %.not380 = icmp eq ptr %i.vx, %i.wb
  br i1 %.not380, label %._crit_edge480, label %bb.ay, !llvm.loop !150

_ZNK10reflection6Object9is_structEv.exit285:      ; preds = %_ZNK11flatbuffers5Table22GetOptionalFieldOffsetEt.exit.i.i283
  %i.wc = zext i16 %i.qp to i64
  %i.wd = getelementptr inbounds nuw i8, ptr %2, i64 %i.wc
  %i.we = load i8, ptr %i.wd, align 1, !tbaa !11
  %.not381 = icmp eq i8 %i.we, 0
  br i1 %.not381, label %_ZNK10reflection6Object9is_structEv.exit285.thread, label %bb.bm

bb.bm:                                            ; preds = %_ZNK10reflection6Object9is_structEv.exit285
  %i.wf = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 2 uses
  %i.wg = load i32, ptr %i.wf, align 8, !tbaa !77
  %i.wh = zext i32 %i.wg to i64
  %.neg.i = mul nsw i64 %i.wh, -8
  %i.wi = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 2 uses
  %i.wj = load ptr, ptr %i.wi, align 8, !tbaa !71
  %i.wk = getelementptr inbounds i8, ptr %i.wj, i64 %.neg.i
  store ptr %i.wk, ptr %i.wi, align 8, !tbaa !71
  store i32 0, ptr %i.wf, align 8, !tbaa !77
  %i.wl = getelementptr inbounds nuw i8, ptr %0, i64 84
  store i16 0, ptr %i.wl, align 4, !tbaa !78
  %i.wm = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.wn = load i32, ptr %i.wm, align 8, !tbaa !65
  br label %bb.bn

.loopexit:                                        ; preds = %_ZNK10reflection6Object8bytesizeEv.exit313.invoke, %_ZN11flatbuffers21FlatBufferBuilderImplILb0EE7ReferToEj.exit.i, %bb.bl
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIN11flatbuffers6OffsetIPKNS0_6StringEEESaIS5_EED2Ev.exit248

.loopexit.split-lp.loopexit:                      ; preds = %_ZNK10reflection5Field6offsetEv.exit.i206.invoke, %.lr.ph.preheader.i.i.i.i.i, %.lr.ph.preheader.i.i.i.i.i253, %_ZNKSt6vectorIjSaIjEE12_M_check_lenEmPKc.exit.i.i, %bb.am, %bb.al, %bb.ai, %bb.i, %bb.f, %bb.o, %_ZNK10reflection6Object9is_structEv.exit265.thread
  %lpad.loopexit398 = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIN11flatbuffers6OffsetIPKNS0_6StringEEESaIS5_EED2Ev.exit248

.loopexit.split-lp.loopexit.split-lp:             ; preds = %bb.ar, %bb.ax, %_ZNK10reflection6Object9is_structEv.exit285.thread
  %.sroa.12363.0432 = phi ptr [ %.sroa.12363.0462, %bb.ar ], [ %.sroa.12363.0.lcssa, %bb.ax ], [ %.sroa.12363.0.lcssa, %_ZNK10reflection6Object9is_structEv.exit285.thread ]
  %.sroa.0359.0420 = phi ptr [ %.sroa.0359.0469, %bb.ar ], [ %.sroa.0359.0.lcssa, %bb.ax ], [ %.sroa.0359.0.lcssa, %_ZNK10reflection6Object9is_structEv.exit285.thread ]
  %lpad.loopexit.split-lp399 = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIN11flatbuffers6OffsetIPKNS0_6StringEEESaIS5_EED2Ev.exit248

_ZNK10reflection6Object9is_structEv.exit285.thread: ; preds = %._crit_edge480, %_ZNK11flatbuffers5Table22GetOptionalFieldOffsetEt.exit.i.i283, %_ZNK10reflection6Object9is_structEv.exit285
  %i.wo = invoke noundef i32 @_ZN11flatbuffers21FlatBufferBuilderImplILb0EE8EndTableEj(ptr noundef nonnull align 8 dereferenceable(128) %0, i32 noundef %i.qd)
          to label %bb.bn unwind label %.loopexit.split-lp.loopexit.split-lp

bb.bn:                                            ; preds = %_ZNK10reflection6Object9is_structEv.exit285.thread, %bb.bm
  %.sroa.0366.0 = phi i32 [ %i.wn, %bb.bm ], [ %i.wo, %_ZNK10reflection6Object9is_structEv.exit285.thread ]
  %.not.i.i.i331 = icmp eq ptr %.sroa.0359.0.lcssa, null
  br i1 %.not.i.i.i331, label %_ZNSt6vectorIjSaIjEED2Ev.exit, label %bb.bo

bb.bo:                                            ; preds = %bb.bn
  %i.wp = ptrtoint ptr %.sroa.12363.0.lcssa to i64
  %i.wq = ptrtoint ptr %.sroa.0359.0.lcssa to i64
  %i.wr = sub i64 %i.wp, %i.wq
  tail call void @_ZdlPvm(ptr noundef nonnull %.sroa.0359.0.lcssa, i64 noundef %i.wr) #22
  br label %_ZNSt6vectorIjSaIjEED2Ev.exit

_ZNSt6vectorIjSaIjEED2Ev.exit:                    ; preds = %bb.bn, %bb.bo
  ret i32 %.sroa.0366.0

_ZNSt6vectorIN11flatbuffers6OffsetIPKNS0_6StringEEESaIS5_EED2Ev.exit248: ; preds = %.loopexit, %.loopexit.split-lp.loopexit.split-lp, %.loopexit.split-lp.loopexit, %bb.ac, %bb.ad, %.loopexit393, %.loopexit393.thread
  %.sroa.12363.0427 = phi ptr [ %.sroa.12363.0462, %bb.ad ], [ %.sroa.12363.0462, %.loopexit393.thread ], [ %.sroa.12363.0462, %.loopexit393 ], [ %.sroa.12363.0462, %bb.ac ], [ %.sroa.12363.0.lcssa, %.loopexit ], [ %.sroa.12363.0462, %.loopexit.split-lp.loopexit ], [ %.sroa.12363.0432, %.loopexit.split-lp.loopexit.split-lp ]
  %.sroa.0359.0415 = phi ptr [ %.sroa.0359.0469, %bb.ad ], [ %.sroa.0359.0469, %.loopexit393.thread ], [ %.sroa.0359.0469, %.loopexit393 ], [ %.sroa.0359.0469, %bb.ac ], [ %.sroa.0359.0.lcssa, %.loopexit ], [ %.sroa.0359.0469, %.loopexit.split-lp.loopexit ], [ %.sroa.0359.0420, %.loopexit.split-lp.loopexit.split-lp ] ; 3 uses
  %.pn174.pn.pn.pn = phi { ptr, i32 } [ %lpad.phi392609, %bb.ad ], [ %lpad.phi397593, %.loopexit393.thread ], [ %lpad.loopexit.split-lp396, %.loopexit393 ], [ %lpad.loopexit.split-lp391, %bb.ac ], [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit398, %.loopexit.split-lp.loopexit ], [ %lpad.loopexit.split-lp399, %.loopexit.split-lp.loopexit.split-lp ]
  %.not.i.i.i332 = icmp eq ptr %.sroa.0359.0415, null
  br i1 %.not.i.i.i332, label %_ZNSt6vectorIjSaIjEED2Ev.exit333, label %bb.bp

bb.bp:                                            ; preds = %_ZNSt6vectorIN11flatbuffers6OffsetIPKNS0_6StringEEESaIS5_EED2Ev.exit248
  %i.ws = ptrtoint ptr %.sroa.12363.0427 to i64
  %i.wt = ptrtoint ptr %.sroa.0359.0415 to i64
  %i.wu = sub i64 %i.ws, %i.wt
  tail call void @_ZdlPvm(ptr noundef nonnull %.sroa.0359.0415, i64 noundef %i.wu) #22
  br label %_ZNSt6vectorIjSaIjEED2Ev.exit333

_ZNSt6vectorIjSaIjEED2Ev.exit333:                 ; preds = %_ZNSt6vectorIN11flatbuffers6OffsetIPKNS0_6StringEEESaIS5_EED2Ev.exit248, %bb.bp
  resume { ptr, i32 } %.pn174.pn.pn.pn
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr dso_local noundef nonnull align 1 dereferenceable(1) ptr @_ZN11flatbuffers12GetUnionTypeERKN10reflection6SchemaERKNS0_6ObjectERKNS0_5FieldERKNS_5TableE(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 1 dereferenceable(1) %1, ptr noundef nonnull align 1 dereferenceable(1) %2, ptr noundef nonnull align 1 dereferenceable(1) %3) local_unnamed_addr #3 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %5 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  %i.b = load i32, ptr %0, align 4, !tbaa !14
  %i.c = sext i32 %i.b to i64
  %i.d = sub nsw i64 0, %i.c
  %i.e = getelementptr inbounds i8, ptr %0, i64 %i.d ; 2 uses
  %i.f = load i16, ptr %i.e, align 2, !tbaa !13
  %i.g = icmp ugt i16 %i.f, 6
  br i1 %i.g, label %_ZNK11flatbuffers5Table22GetOptionalFieldOffsetEt.exit.i.i.i, label %_ZNK10reflection6Schema5enumsEv.exit

_ZNK11flatbuffers5Table22GetOptionalFieldOffsetEt.exit.i.i.i: ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %i.e, i64 6
  %i.i = load i16, ptr %i.h, align 2, !tbaa !13   ; 2 uses
  %.not.i.i.i = icmp eq i16 %i.i, 0
  br i1 %.not.i.i.i, label %_ZNK10reflection6Schema5enumsEv.exit, label %bb.b

bb.b:                                             ; preds = %_ZNK11flatbuffers5Table22GetOptionalFieldOffsetEt.exit.i.i.i
  %i.j = zext i16 %i.i to i64
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 %i.j ; 2 uses
  %i.l = load i32, ptr %i.k, align 4, !tbaa !14
  %i.m = zext i32 %i.l to i64
  %i.n = getelementptr inbounds nuw i8, ptr %i.k, i64 %i.m
  br label %_ZNK10reflection6Schema5enumsEv.exit

_ZNK10reflection6Schema5enumsEv.exit:             ; preds = %bb.a, %_ZNK11flatbuffers5Table22GetOptionalFieldOffsetEt.exit.i.i.i, %bb.b
  %i.o = phi ptr [ %i.n, %bb.b ], [ null, %_ZNK11flatbuffers5Table22GetOptionalFieldOffsetEt.exit.i.i.i ], [ null, %bb.a ]
  %i.p = load i32, ptr %2, align 4, !tbaa !14
  %i.q = sext i32 %i.p to i64
  %i.r = sub nsw i64 0, %i.q
  %i.s = getelementptr inbounds i8, ptr %2, i64 %i.r ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 6
  %i.u = load i16, ptr %i.t, align 2, !tbaa !13   ; 2 uses
  %.not.i.i.i14 = icmp ne i16 %i.u, 0
  tail call void @llvm.assume(i1 %.not.i.i.i14)
  %i.v = zext i16 %i.u to i64
  %i.w = getelementptr inbounds nuw i8, ptr %2, i64 %i.v ; 2 uses
  %i.x = load i32, ptr %i.w, align 4, !tbaa !14
  %i.y = zext i32 %i.x to i64
  %i.z = getelementptr inbounds nuw i8, ptr %i.w, i64 %i.y ; 3 uses
  %i.aa = load i32, ptr %i.z, align 4, !tbaa !14
  %i.ab = sext i32 %i.aa to i64
  %i.ac = sub nsw i64 0, %i.ab
  %i.ad = getelementptr inbounds i8, ptr %i.z, i64 %i.ac ; 2 uses
  %i.ae = load i16, ptr %i.ad, align 2, !tbaa !13
  %i.af = icmp ugt i16 %i.ae, 8
  br i1 %i.af, label %_ZNK11flatbuffers5Table22GetOptionalFieldOffsetEt.exit.i.i, label %_ZNK10reflection4Type5indexEv.exit

_ZNK11flatbuffers5Table22GetOptionalFieldOffsetEt.exit.i.i: ; preds = %_ZNK10reflection6Schema5enumsEv.exit
  %i.ag = getelementptr inbounds nuw i8, ptr %i.ad, i64 8
  %i.ah = load i16, ptr %i.ag, align 2, !tbaa !13 ; 2 uses
  %.not.i.i = icmp eq i16 %i.ah, 0
  br i1 %.not.i.i, label %_ZNK10reflection4Type5indexEv.exit, label %bb.c

bb.c:                                             ; preds = %_ZNK11flatbuffers5Table22GetOptionalFieldOffsetEt.exit.i.i
  %i.ai = zext i16 %i.ah to i64
  %i.aj = getelementptr inbounds nuw i8, ptr %i.z, i64 %i.ai
  %i.ak = load i32, ptr %i.aj, align 4, !tbaa !14
  %i.al = shl i32 %i.ak, 2
  %i.am = zext i32 %i.al to i64
  br label %_ZNK10reflection4Type5indexEv.exit

_ZNK10reflection4Type5indexEv.exit:               ; preds = %_ZNK10reflection6Schema5enumsEv.exit, %_ZNK11flatbuffers5Table22GetOptionalFieldOffsetEt.exit.i.i, %bb.c
  %i.an = phi i64 [ %i.am, %bb.c ], [ 4294967292, %_ZNK11flatbuffers5Table22GetOptionalFieldOffsetEt.exit.i.i ], [ 4294967292, %_ZNK10reflection6Schema5enumsEv.exit ]
  %i.ao = getelementptr inbounds nuw i8, ptr %i.o, i64 4
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 %i.an ; 2 uses
  %i.aq = load i32, ptr %i.ap, align 4, !tbaa !14
  %i.ar = zext i32 %i.aq to i64
  %i.as = getelementptr inbounds nuw i8, ptr %i.ap, i64 %i.ar ; 3 uses
  %i.at = load i32, ptr %1, align 4, !tbaa !14
  %i.au = sext i32 %i.at to i64
  %i.av = sub nsw i64 0, %i.au
  %i.aw = getelementptr inbounds i8, ptr %1, i64 %i.av ; 2 uses
  %i.ax = load i16, ptr %i.aw, align 2, !tbaa !13
  %i.ay = icmp ugt i16 %i.ax, 6
  br i1 %i.ay, label %_ZNK11flatbuffers5Table22GetOptionalFieldOffsetEt.exit.i.i.i15, label %_ZNK10reflection6Object6fieldsEv.exit

_ZNK11flatbuffers5Table22GetOptionalFieldOffsetEt.exit.i.i.i15: ; preds = %_ZNK10reflection4Type5indexEv.exit
  %i.az = getelementptr inbounds nuw i8, ptr %i.aw, i64 6
  %i.ba = load i16, ptr %i.az, align 2, !tbaa !13 ; 2 uses
  %.not.i.i.i16 = icmp eq i16 %i.ba, 0
  br i1 %.not.i.i.i16, label %_ZNK10reflection6Object6fieldsEv.exit, label %bb.d

bb.d:                                             ; preds = %_ZNK11flatbuffers5Table22GetOptionalFieldOffsetEt.exit.i.i.i15
  %i.bb = zext i16 %i.ba to i64
  %i.bc = getelementptr inbounds nuw i8, ptr %1, i64 %i.bb ; 2 uses
  %i.bd = load i32, ptr %i.bc, align 4, !tbaa !14
  %i.be = zext i32 %i.bd to i64
  %i.bf = getelementptr inbounds nuw i8, ptr %i.bc, i64 %i.be
  br label %_ZNK10reflection6Object6fieldsEv.exit

_ZNK10reflection6Object6fieldsEv.exit:            ; preds = %_ZNK10reflection4Type5indexEv.exit, %_ZNK11flatbuffers5Table22GetOptionalFieldOffsetEt.exit.i.i.i15, %bb.d
  %i.bg = phi ptr [ %i.bf, %bb.d ], [ null, %_ZNK11flatbuffers5Table22GetOptionalFieldOffsetEt.exit.i.i.i15 ], [ null, %_ZNK10reflection4Type5indexEv.exit ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #20
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #20
  %i.bh = getelementptr inbounds nuw i8, ptr %i.s, i64 4
  %i.bi = load i16, ptr %i.bh, align 2, !tbaa !13 ; 2 uses
  %.not.i.i.i18 = icmp ne i16 %i.bi, 0
  tail call void @llvm.assume(i1 %.not.i.i.i18)
  %i.bj = zext i16 %i.bi to i64
  %i.bk = getelementptr inbounds nuw i8, ptr %2, i64 %i.bj ; 2 uses
  %i.bl = load i32, ptr %i.bk, align 4, !tbaa !14
  %i.bm = zext i32 %i.bl to i64
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bk, i64 %i.bm ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !162)
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bn, i64 4 ; 2 uses
  %i.bp = load i32, ptr %i.bn, align 4, !tbaa !33, !noalias !162 ; 3 uses
  %i.bq = zext i32 %i.bp to i64                   ; 2 uses
  %i.br = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 7 uses
  store ptr %i.br, ptr %5, align 8, !tbaa !28, !alias.scope !162
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #20, !noalias !162
  store i64 %i.bq, ptr %i.a, align 8, !tbaa !16, !noalias !162
  %i.bs = icmp ugt i32 %i.bp, 15
  br i1 %i.bs, label %.noexc.i.i, label %._crit_edge.i.i.i

.noexc.i.i:                                       ; preds = %_ZNK10reflection6Object6fieldsEv.exit
  %i.bt = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0) ; 2 uses
  store ptr %i.bt, ptr %5, align 8, !tbaa !30, !alias.scope !162
  %i.bu = load i64, ptr %i.a, align 8, !tbaa !16, !noalias !162
  store i64 %i.bu, ptr %i.br, align 8, !tbaa !11, !alias.scope !162
  br label %._crit_edge.i.i.i

._crit_edge.i.i.i:                                ; preds = %.noexc.i.i, %_ZNK10reflection6Object6fieldsEv.exit
  %i.bv = phi ptr [ %i.bt, %.noexc.i.i ], [ %i.br, %_ZNK10reflection6Object6fieldsEv.exit ] ; 2 uses
  switch i32 %i.bp, label %bb.f [
    i32 1, label %bb.e
    i32 0, label %_ZNK11flatbuffers6String3strB5cxx11Ev.exit
  ]

bb.e:                                             ; preds = %._crit_edge.i.i.i
  %i.bw = load i8, ptr %i.bo, align 4, !tbaa !11, !noalias !162
  store i8 %i.bw, ptr %i.bv, align 1, !tbaa !11
  br label %_ZNK11flatbuffers6String3strB5cxx11Ev.exit

bb.f:                                             ; preds = %._crit_edge.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.bv, ptr nonnull align 4 %i.bo, i64 %i.bq, i1 false)
  br label %_ZNK11flatbuffers6String3strB5cxx11Ev.exit

_ZNK11flatbuffers6String3strB5cxx11Ev.exit:       ; preds = %._crit_edge.i.i.i, %bb.e, %bb.f
  %i.bx = load i64, ptr %i.a, align 8, !tbaa !16, !noalias !162 ; 2 uses
  %i.by = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 2 uses
  store i64 %i.bx, ptr %i.by, align 8, !tbaa !31, !alias.scope !162
  %i.bz = load ptr, ptr %5, align 8, !tbaa !30, !alias.scope !162
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bz, i64 %i.bx
  store i8 0, ptr %i.ca, align 1, !tbaa !11
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #20, !noalias !162
  call void @llvm.experimental.noalias.scope.decl(metadata !163)
  %i.cb = load i64, ptr %i.by, align 8, !tbaa !31, !noalias !163
  %i.cc = add i64 %i.cb, -4611686018427387899
  %i.cd = icmp ult i64 %i.cc, 5
  br i1 %i.cd, label %bb.g, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i

bb.g:                                             ; preds = %_ZNK11flatbuffers6String3strB5cxx11Ev.exit
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.22) #21
          to label %.noexc unwind label %bb.v, !noalias !163

.noexc:                                           ; preds = %bb.g
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i: ; preds = %_ZNK11flatbuffers6String3strB5cxx11Ev.exit
  %i.ce = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull @.str.25, i64 noundef 5)
          to label %.noexc19 unwind label %bb.v, !noalias !163 ; 6 uses

.noexc19:                                         ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i
  %i.cf = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 5 uses
  store ptr %i.cf, ptr %4, align 8, !tbaa !28, !alias.scope !163
  %i.cg = load ptr, ptr %i.ce, align 8, !tbaa !30 ; 2 uses
  %i.ch = getelementptr inbounds nuw i8, ptr %i.ce, i64 16 ; 5 uses
  %i.ci = icmp eq ptr %i.cg, %i.ch
  br i1 %i.ci, label %bb.h, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

bb.h:                                             ; preds = %.noexc19
  %i.cj = getelementptr inbounds nuw i8, ptr %i.ce, i64 8
  %i.ck = load i64, ptr %i.cj, align 8, !tbaa !31 ; 3 uses
  %i.cl = icmp ult i64 %i.ck, 16
  call void @llvm.assume(i1 %i.cl)
  %i.cm = add nuw nsw i64 %i.ck, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.cf, ptr noundef nonnull align 8 dereferenceable(1) %i.ch, i64 %i.cm, i1 false)
  br label %bb.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %.noexc19
end_hunk_2

Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/sentencepiece/original/wire_format_lite?download=true
inline.NumInlined: 317
inline.NumDeleted: 108
loop-unroll.NumCompletelyUnrolled: 43
loop-unroll.NumRuntimeUnrolled: 3
loop-unroll.NumUnrolled: 46
begin_hunk_0_@_ZN6google8protobuf8internal17PrintUTF8ErrorLogEPKcS3_b:._crit_edge.i.i
          to label %bb.q unwind label %bb.v

bb.q:                                             ; preds = %bb.p
  %i.ak = invoke noundef nonnull align 8 dereferenceable(56) ptr @_ZN6google8protobuf8internal10LogMessagelsEPKc(ptr noundef nonnull align 8 dereferenceable(56) %i.aj, ptr noundef nonnull @.str.9)
          to label %bb.r unwind label %bb.v

bb.r:                                             ; preds = %bb.q
  %i.al = invoke noundef nonnull align 8 dereferenceable(56) ptr @_ZN6google8protobuf8internal10LogMessagelsERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(56) %i.ak, ptr noundef nonnull align 8 dereferenceable(32) %3)
          to label %bb.s unwind label %bb.v

bb.s:                                             ; preds = %bb.r
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #12
  invoke void @_ZN6google8protobuf8internal11LogFinisheraSERNS1_10LogMessageE(ptr noundef nonnull align 1 dereferenceable(1) %7, ptr noundef nonnull align 8 dereferenceable(56) %i.al)
          to label %bb.t unwind label %bb.w

bb.t:                                             ; preds = %bb.s
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #12
  call void @_ZN6google8protobuf8internal10LogMessageD1Ev(ptr noundef nonnull align 8 dead_on_return(56) dereferenceable(56) %6) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #12
  %i.am = load ptr, ptr %4, align 8, !tbaa !39    ; 2 uses
  %i.an = icmp eq ptr %i.am, %i.c
  br i1 %i.an, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit15, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i13

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i13: ; preds = %bb.t
  %i.ao = load i64, ptr %i.c, align 8, !tbaa !20
  %i.ap = add i64 %i.ao, 1
  call void @_ZdlPvm(ptr noundef %i.am, i64 noundef %i.ap) #13
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit15

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit15: ; preds = %bb.t, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i13
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #12
  %i.aq = load ptr, ptr %3, align 8, !tbaa !39    ; 2 uses
  %i.ar = icmp eq ptr %i.aq, %i.a
  br i1 %i.ar, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit18, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i16

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i16: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit15
  %i.as = load i64, ptr %i.a, align 8, !tbaa !20
  %i.at = add i64 %i.as, 1
  call void @_ZdlPvm(ptr noundef %i.aq, i64 noundef %i.at) #13
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit18

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit18: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit15, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i16
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #12
  ret void

bb.u:                                             ; preds = %bb.i
  %i.au = landingpad { ptr, i32 }
          cleanup
  br label %bb.y

bb.v:                                             ; preds = %bb.r, %bb.q, %bb.p, %bb.o, %bb.n, %bb.m, %bb.l, %bb.k, %bb.j
  %i.av = landingpad { ptr, i32 }
          cleanup
  br label %bb.x

bb.w:                                             ; preds = %bb.s
  %i.aw = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #12
  br label %bb.x

bb.x:                                             ; preds = %bb.w, %bb.v
  %.pn = phi { ptr, i32 } [ %i.aw, %bb.w ], [ %i.av, %bb.v ]
  call void @_ZN6google8protobuf8internal10LogMessageD1Ev(ptr noundef nonnull align 8 dead_on_return(56) dereferenceable(56) %6) #12
  br label %bb.y

bb.y:                                             ; preds = %bb.x, %bb.u
  %.pn.pn = phi { ptr, i32 } [ %.pn, %bb.x ], [ %i.au, %bb.u ]
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #12
  br label %bb.z

bb.z:                                             ; preds = %bb.y, %bb.h
  %.pn.pn.pn = phi { ptr, i32 } [ %.pn.pn, %bb.y ], [ %i.ac, %bb.h ]
  %i.ax = load ptr, ptr %4, align 8, !tbaa !39    ; 2 uses
  %i.ay = icmp eq ptr %i.ax, %i.c
  br i1 %i.ay, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit21, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i19

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i19: ; preds = %bb.z
  %i.az = load i64, ptr %i.c, align 8, !tbaa !20
  %i.ba = add i64 %i.az, 1
  call void @_ZdlPvm(ptr noundef %i.ax, i64 noundef %i.ba) #13
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit21

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit21: ; preds = %bb.z, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i19
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #12
  %i.bb = load ptr, ptr %3, align 8, !tbaa !39    ; 2 uses
  %i.bc = icmp eq ptr %i.bb, %i.a
  br i1 %i.bc, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit24, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i22

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i22: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit21
  %i.bd = load i64, ptr %i.a, align 8, !tbaa !20
  %i.be = add i64 %i.bd, 1
  call void @_ZdlPvm(ptr noundef %i.bb, i64 noundef %i.be) #13
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit24

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit24: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit21, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i22
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #12
  resume { ptr, i32 } %.pn.pn.pn
}

declare void @_ZN6google8protobuf12StringPrintfB5cxx11EPKcz(ptr dead_on_unwind writable sret(%"class.std::__cxx11::basic_string") align 8, ptr noundef, ...) local_unnamed_addr #2

declare noundef nonnull align 8 dereferenceable(56) ptr @_ZN6google8protobuf8internal10LogMessagelsERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(56), ptr noundef nonnull align 8 dereferenceable(32)) local_unnamed_addr #2

; Function Attrs: mustprogress uwtable
define noundef zeroext i1 @_ZN6google8protobuf8internal14WireFormatLite16VerifyUtf8StringEPKciNS2_9OperationES4_(ptr noundef %0, i32 noundef %1, i32 noundef %2, ptr noundef %3) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = tail call noundef zeroext i1 @_ZN6google8protobuf8internal23IsStructurallyValidUTF8EPKci(ptr noundef %0, i32 noundef %1) ; 2 uses
  br i1 %i.a, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %switch.selectcmp = icmp eq i32 %2, 1
  %switch.select = select i1 %switch.selectcmp, ptr @.str.11, ptr null
  %switch.selectcmp6 = icmp eq i32 %2, 0
  %switch.select7 = select i1 %switch.selectcmp6, ptr @.str.10, ptr %switch.select
  tail call void @_ZN6google8protobuf8internal17PrintUTF8ErrorLogEPKcS3_b(ptr noundef %3, ptr noundef %switch.select7, i1 zeroext poison)
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  ret i1 %i.a
}

declare noundef zeroext i1 @_ZN6google8protobuf8internal23IsStructurallyValidUTF8EPKci(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define noundef range(i64 0, 4294967296) i64 @_ZN6google8protobuf8internal14WireFormatLite9Int32SizeERKNS0_13RepeatedFieldIiEE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %0) local_unnamed_addr #6 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !47   ; 2 uses
  %i.c = load i32, ptr %0, align 8, !tbaa !46     ; 6 uses
  %i.d = icmp sgt i32 %i.c, 0
  br i1 %i.d, label %.lr.ph.preheader.i, label %_ZN6google8protobuf8internalL10VarintSizeILb0ELb1EiEEmPKT1_i.exit

.lr.ph.preheader.i:                               ; preds = %bb.a
  %wide.trip.count.i = zext nneg i32 %i.c to i64  ; 3 uses
  %min.iters.check = icmp ult i32 %i.c, 8
  br i1 %min.iters.check, label %.lr.ph.i.preheader, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.preheader.i
  %n.vec = and i64 %wide.trip.count.i, 2147483640 ; 3 uses
  %i.e = insertelement <4 x i32> <i32 poison, i32 0, i32 0, i32 0>, i32 %i.c, i64 0
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.phi = phi <4 x i32> [ zeroinitializer, %vector.ph ], [ %i.j, %vector.body ]
  %vec.phi2 = phi <4 x i32> [ zeroinitializer, %vector.ph ], [ %i.k, %vector.body ]
  %vec.phi3 = phi <4 x i32> [ %i.e, %vector.ph ], [ %i.ah, %vector.body ]
  %vec.phi4 = phi <4 x i32> [ zeroinitializer, %vector.ph ], [ %i.ai, %vector.body ]
  %i.f = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %index ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  %wide.load = load <4 x i32>, ptr %i.f, align 4, !tbaa !40 ; 5 uses
  %wide.load5 = load <4 x i32>, ptr %i.g, align 4, !tbaa !40 ; 5 uses
  %i.h = lshr <4 x i32> %wide.load, splat (i32 31)
  %i.i = lshr <4 x i32> %wide.load5, splat (i32 31)
  %i.j = add <4 x i32> %i.h, %vec.phi             ; 2 uses
  %i.k = add <4 x i32> %i.i, %vec.phi2            ; 2 uses
  %i.l = icmp ugt <4 x i32> %wide.load, splat (i32 127)
  %i.m = icmp ugt <4 x i32> %wide.load5, splat (i32 127)
  %i.n = zext <4 x i1> %i.l to <4 x i32>
  %i.o = zext <4 x i1> %i.m to <4 x i32>
  %i.p = add <4 x i32> %vec.phi3, %i.n
  %i.q = add <4 x i32> %vec.phi4, %i.o
  %i.r = icmp ugt <4 x i32> %wide.load, splat (i32 16383)
  %i.s = icmp ugt <4 x i32> %wide.load5, splat (i32 16383)
  %i.t = zext <4 x i1> %i.r to <4 x i32>
  %i.u = zext <4 x i1> %i.s to <4 x i32>
  %i.v = add <4 x i32> %i.p, %i.t
  %i.w = add <4 x i32> %i.q, %i.u
  %i.x = icmp ugt <4 x i32> %wide.load, splat (i32 2097151)
  %i.y = icmp ugt <4 x i32> %wide.load5, splat (i32 2097151)
  %i.z = zext <4 x i1> %i.x to <4 x i32>
  %i.aa = zext <4 x i1> %i.y to <4 x i32>
  %i.ab = add <4 x i32> %i.v, %i.z
  %i.ac = add <4 x i32> %i.w, %i.aa
  %i.ad = icmp ugt <4 x i32> %wide.load, splat (i32 268435455)
  %i.ae = icmp ugt <4 x i32> %wide.load5, splat (i32 268435455)
  %i.af = zext <4 x i1> %i.ad to <4 x i32>
  %i.ag = zext <4 x i1> %i.ae to <4 x i32>
  %i.ah = add <4 x i32> %i.ab, %i.af              ; 2 uses
  %i.ai = add <4 x i32> %i.ac, %i.ag              ; 2 uses
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.aj = icmp eq i64 %index.next, %n.vec
  br i1 %i.aj, label %middle.block, label %vector.body, !llvm.loop !64

middle.block:                                     ; preds = %vector.body
  %bin.rdx = add <4 x i32> %i.k, %i.j
  %i.ak = tail call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %bin.rdx) ; 2 uses
  %bin.rdx6 = add <4 x i32> %i.ai, %i.ah
  %i.al = tail call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %bin.rdx6) ; 2 uses
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count.i
  br i1 %cmp.n, label %._crit_edge.loopexit.i, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %.lr.ph.preheader.i, %middle.block
  %indvars.iv.i.ph = phi i64 [ 0, %.lr.ph.preheader.i ], [ %n.vec, %middle.block ]
  %.01821.i.ph = phi i32 [ 0, %.lr.ph.preheader.i ], [ %i.ak, %middle.block ]
  %.01920.i.ph = phi i32 [ %i.c, %.lr.ph.preheader.i ], [ %i.al, %middle.block ]
  br label %.lr.ph.i

._crit_edge.loopexit.i:                           ; preds = %.lr.ph.i, %middle.block
  %.lcssa = phi i32 [ %i.ak, %middle.block ], [ %1, %.lr.ph.i ]
  %.4.i.lcssa = phi i32 [ %i.al, %middle.block ], [ %.4.i, %.lr.ph.i ]
  %i.am = mul i32 %.lcssa, 5
  br label %_ZN6google8protobuf8internalL10VarintSizeILb0ELb1EiEEmPKT1_i.exit

.lr.ph.i:                                         ; preds = %.lr.ph.i.preheader, %.lr.ph.i
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %.lr.ph.i ], [ %indvars.iv.i.ph, %.lr.ph.i.preheader ] ; 2 uses
  %.01821.i = phi i32 [ %1, %.lr.ph.i ], [ %.01821.i.ph, %.lr.ph.i.preheader ]
  %.01920.i = phi i32 [ %.4.i, %.lr.ph.i ], [ %.01920.i.ph, %.lr.ph.i.preheader ]
  %i.an = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %indvars.iv.i
  %i.ao = load i32, ptr %i.an, align 4, !tbaa !40 ; 5 uses
  %i.ap = lshr i32 %i.ao, 31
  %1 = add i32 %i.ap, %.01821.i                   ; 2 uses
  %2 = icmp ugt i32 %i.ao, 127
  %3 = zext i1 %2 to i32
  %spec.select.i = add i32 %.01920.i, %3
  %4 = icmp ugt i32 %i.ao, 16383
  %5 = zext i1 %4 to i32
  %.2.i = add i32 %spec.select.i, %5
  %6 = icmp ugt i32 %i.ao, 2097151
  %7 = zext i1 %6 to i32
  %.3.i = add i32 %.2.i, %7
  %8 = icmp ugt i32 %i.ao, 268435455
  %i.aq = zext i1 %8 to i32
  %.4.i = add i32 %.3.i, %i.aq                    ; 2 uses
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %wide.trip.count.i
  br i1 %exitcond.not.i, label %._crit_edge.loopexit.i, label %.lr.ph.i, !llvm.loop !65

_ZN6google8protobuf8internalL10VarintSizeILb0ELb1EiEEmPKT1_i.exit: ; preds = %bb.a, %._crit_edge.loopexit.i
  %.019.lcssa.i = phi i32 [ %i.c, %bb.a ], [ %.4.i.lcssa, %._crit_edge.loopexit.i ]
  %.018.lcssa.i = phi i32 [ 0, %bb.a ], [ %i.am, %._crit_edge.loopexit.i ]
  %i.ar = add i32 %.018.lcssa.i, %.019.lcssa.i
  %i.as = zext i32 %i.ar to i64
  ret i64 %i.as
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define noundef range(i64 0, 4294967296) i64 @_ZN6google8protobuf8internal14WireFormatLite10UInt32SizeERKNS0_13RepeatedFieldIjEE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %0) local_unnamed_addr #6 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !69   ; 2 uses
  %i.c = load i32, ptr %0, align 8, !tbaa !70     ; 6 uses
  %i.d = icmp sgt i32 %i.c, 0
  br i1 %i.d, label %.lr.ph.preheader.i, label %_ZN6google8protobuf8internalL10VarintSizeILb0ELb0EjEEmPKT1_i.exit

.lr.ph.preheader.i:                               ; preds = %bb.a
  %wide.trip.count.i = zext nneg i32 %i.c to i64  ; 3 uses
  %min.iters.check = icmp ult i32 %i.c, 8
  br i1 %min.iters.check, label %.lr.ph.i.preheader, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.preheader.i
  %n.vec = and i64 %wide.trip.count.i, 2147483640 ; 3 uses
  %i.e = insertelement <4 x i32> <i32 poison, i32 0, i32 0, i32 0>, i32 %i.c, i64 0
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.phi = phi <4 x i32> [ %i.e, %vector.ph ], [ %i.ad, %vector.body ]
  %vec.phi2 = phi <4 x i32> [ zeroinitializer, %vector.ph ], [ %i.ae, %vector.body ]
  %i.f = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %index ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  %wide.load = load <4 x i32>, ptr %i.f, align 4, !tbaa !40 ; 4 uses
  %wide.load3 = load <4 x i32>, ptr %i.g, align 4, !tbaa !40 ; 4 uses
  %i.h = icmp ugt <4 x i32> %wide.load, splat (i32 127)
  %i.i = icmp ugt <4 x i32> %wide.load3, splat (i32 127)
  %i.j = zext <4 x i1> %i.h to <4 x i32>
  %i.k = zext <4 x i1> %i.i to <4 x i32>
  %i.l = add <4 x i32> %vec.phi, %i.j
  %i.m = add <4 x i32> %vec.phi2, %i.k
  %i.n = icmp ugt <4 x i32> %wide.load, splat (i32 16383)
  %i.o = icmp ugt <4 x i32> %wide.load3, splat (i32 16383)
  %i.p = zext <4 x i1> %i.n to <4 x i32>
  %i.q = zext <4 x i1> %i.o to <4 x i32>
  %i.r = add <4 x i32> %i.l, %i.p
  %i.s = add <4 x i32> %i.m, %i.q
  %i.t = icmp ugt <4 x i32> %wide.load, splat (i32 2097151)
  %i.u = icmp ugt <4 x i32> %wide.load3, splat (i32 2097151)
  %i.v = zext <4 x i1> %i.t to <4 x i32>
  %i.w = zext <4 x i1> %i.u to <4 x i32>
  %i.x = add <4 x i32> %i.r, %i.v
  %i.y = add <4 x i32> %i.s, %i.w
  %i.z = icmp ugt <4 x i32> %wide.load, splat (i32 268435455)
  %i.aa = icmp ugt <4 x i32> %wide.load3, splat (i32 268435455)
  %i.ab = zext <4 x i1> %i.z to <4 x i32>
  %i.ac = zext <4 x i1> %i.aa to <4 x i32>
  %i.ad = add <4 x i32> %i.x, %i.ab               ; 2 uses
  %i.ae = add <4 x i32> %i.y, %i.ac               ; 2 uses
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.af = icmp eq i64 %index.next, %n.vec
  br i1 %i.af, label %middle.block, label %vector.body, !llvm.loop !66

middle.block:                                     ; preds = %vector.body
  %bin.rdx = add <4 x i32> %i.ae, %i.ad
  %i.ag = tail call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %bin.rdx) ; 2 uses
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count.i
  br i1 %cmp.n, label %_ZN6google8protobuf8internalL10VarintSizeILb0ELb0EjEEmPKT1_i.exit, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %.lr.ph.preheader.i, %middle.block
  %indvars.iv.i.ph = phi i64 [ 0, %.lr.ph.preheader.i ], [ %n.vec, %middle.block ]
  %.01415.i.ph = phi i32 [ %i.c, %.lr.ph.preheader.i ], [ %i.ag, %middle.block ]
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.preheader, %.lr.ph.i
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %.lr.ph.i ], [ %indvars.iv.i.ph, %.lr.ph.i.preheader ] ; 2 uses
  %.01415.i = phi i32 [ %.4.i, %.lr.ph.i ], [ %.01415.i.ph, %.lr.ph.i.preheader ]
  %i.ah = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %indvars.iv.i
  %i.ai = load i32, ptr %i.ah, align 4, !tbaa !40 ; 4 uses
  %1 = icmp ugt i32 %i.ai, 127
  %2 = zext i1 %1 to i32
  %spec.select.i = add i32 %.01415.i, %2
  %3 = icmp ugt i32 %i.ai, 16383
  %4 = zext i1 %3 to i32
  %.2.i = add i32 %spec.select.i, %4
  %5 = icmp ugt i32 %i.ai, 2097151
  %6 = zext i1 %5 to i32
  %.3.i = add i32 %.2.i, %6
  %7 = icmp ugt i32 %i.ai, 268435455
  %i.aj = zext i1 %7 to i32
  %.4.i = add i32 %.3.i, %i.aj                    ; 2 uses
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %wide.trip.count.i
  br i1 %exitcond.not.i, label %_ZN6google8protobuf8internalL10VarintSizeILb0ELb0EjEEmPKT1_i.exit, label %.lr.ph.i, !llvm.loop !67

_ZN6google8protobuf8internalL10VarintSizeILb0ELb0EjEEmPKT1_i.exit: ; preds = %.lr.ph.i, %middle.block, %bb.a
  %.014.lcssa.i = phi i32 [ %i.c, %bb.a ], [ %i.ag, %middle.block ], [ %.4.i, %.lr.ph.i ]
  %i.ak = zext i32 %.014.lcssa.i to i64
  ret i64 %i.ak
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define noundef range(i64 0, 4294967296) i64 @_ZN6google8protobuf8internal14WireFormatLite10SInt32SizeERKNS0_13RepeatedFieldIiEE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %0) local_unnamed_addr #6 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !47   ; 2 uses
  %i.c = load i32, ptr %0, align 8, !tbaa !46     ; 6 uses
  %i.d = icmp sgt i32 %i.c, 0
  br i1 %i.d, label %.lr.ph.preheader.i, label %_ZN6google8protobuf8internalL10VarintSizeILb1ELb0EiEEmPKT1_i.exit

.lr.ph.preheader.i:                               ; preds = %bb.a
  %wide.trip.count.i = zext nneg i32 %i.c to i64  ; 3 uses
  %min.iters.check = icmp ult i32 %i.c, 8
  br i1 %min.iters.check, label %.lr.ph.i.preheader, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.preheader.i
  %n.vec = and i64 %wide.trip.count.i, 2147483640 ; 3 uses
  %i.e = insertelement <4 x i32> <i32 poison, i32 0, i32 0, i32 0>, i32 %i.c, i64 0
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.phi = phi <4 x i32> [ %i.e, %vector.ph ], [ %i.aj, %vector.body ]
  %vec.phi2 = phi <4 x i32> [ zeroinitializer, %vector.ph ], [ %i.ak, %vector.body ]
  %i.f = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %index ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  %wide.load = load <4 x i32>, ptr %i.f, align 4, !tbaa !40 ; 2 uses
  %wide.load3 = load <4 x i32>, ptr %i.g, align 4, !tbaa !40 ; 2 uses
  %i.h = shl <4 x i32> %wide.load, splat (i32 1)
  %i.i = shl <4 x i32> %wide.load3, splat (i32 1)
  %i.j = ashr <4 x i32> %wide.load, splat (i32 31)
  %i.k = ashr <4 x i32> %wide.load3, splat (i32 31)
  %i.l = xor <4 x i32> %i.h, %i.j                 ; 4 uses
  %i.m = xor <4 x i32> %i.i, %i.k                 ; 4 uses
  %i.n = icmp ugt <4 x i32> %i.l, splat (i32 127)
  %i.o = icmp ugt <4 x i32> %i.m, splat (i32 127)
  %i.p = zext <4 x i1> %i.n to <4 x i32>
  %i.q = zext <4 x i1> %i.o to <4 x i32>
  %i.r = add <4 x i32> %vec.phi, %i.p
  %i.s = add <4 x i32> %vec.phi2, %i.q
  %i.t = icmp ugt <4 x i32> %i.l, splat (i32 16383)
  %i.u = icmp ugt <4 x i32> %i.m, splat (i32 16383)
  %i.v = zext <4 x i1> %i.t to <4 x i32>
  %i.w = zext <4 x i1> %i.u to <4 x i32>
  %i.x = add <4 x i32> %i.r, %i.v
  %i.y = add <4 x i32> %i.s, %i.w
  %i.z = icmp ugt <4 x i32> %i.l, splat (i32 2097151)
  %i.aa = icmp ugt <4 x i32> %i.m, splat (i32 2097151)
  %i.ab = zext <4 x i1> %i.z to <4 x i32>
  %i.ac = zext <4 x i1> %i.aa to <4 x i32>
  %i.ad = add <4 x i32> %i.x, %i.ab
  %i.ae = add <4 x i32> %i.y, %i.ac
  %i.af = icmp ugt <4 x i32> %i.l, splat (i32 268435455)
  %i.ag = icmp ugt <4 x i32> %i.m, splat (i32 268435455)
  %i.ah = zext <4 x i1> %i.af to <4 x i32>
  %i.ai = zext <4 x i1> %i.ag to <4 x i32>
  %i.aj = add <4 x i32> %i.ad, %i.ah              ; 2 uses
  %i.ak = add <4 x i32> %i.ae, %i.ai              ; 2 uses
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.al = icmp eq i64 %index.next, %n.vec
  br i1 %i.al, label %middle.block, label %vector.body, !llvm.loop !71

middle.block:                                     ; preds = %vector.body
  %bin.rdx = add <4 x i32> %i.ak, %i.aj
  %i.am = tail call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %bin.rdx) ; 2 uses
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count.i
  br i1 %cmp.n, label %_ZN6google8protobuf8internalL10VarintSizeILb1ELb0EiEEmPKT1_i.exit, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %.lr.ph.preheader.i, %middle.block
  %indvars.iv.i.ph = phi i64 [ 0, %.lr.ph.preheader.i ], [ %n.vec, %middle.block ]
  %.01516.i.ph = phi i32 [ %i.c, %.lr.ph.preheader.i ], [ %i.am, %middle.block ]
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.preheader, %.lr.ph.i
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %.lr.ph.i ], [ %indvars.iv.i.ph, %.lr.ph.i.preheader ] ; 2 uses
  %.01516.i = phi i32 [ %.4.i, %.lr.ph.i ], [ %.01516.i.ph, %.lr.ph.i.preheader ]
  %i.an = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %indvars.iv.i
  %i.ao = load i32, ptr %i.an, align 4, !tbaa !40 ; 2 uses
  %i.ap = shl i32 %i.ao, 1
  %i.aq = ashr i32 %i.ao, 31
  %i.ar = xor i32 %i.ap, %i.aq                    ; 4 uses
  %1 = icmp ugt i32 %i.ar, 127
  %2 = zext i1 %1 to i32
  %spec.select.i = add i32 %.01516.i, %2
  %3 = icmp ugt i32 %i.ar, 16383
  %4 = zext i1 %3 to i32
  %.2.i = add i32 %spec.select.i, %4
  %5 = icmp ugt i32 %i.ar, 2097151
  %6 = zext i1 %5 to i32
  %.3.i = add i32 %.2.i, %6
  %7 = icmp ugt i32 %i.ar, 268435455
  %i.as = zext i1 %7 to i32
  %.4.i = add i32 %.3.i, %i.as                    ; 2 uses
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %wide.trip.count.i
  br i1 %exitcond.not.i, label %_ZN6google8protobuf8internalL10VarintSizeILb1ELb0EiEEmPKT1_i.exit, label %.lr.ph.i, !llvm.loop !72

_ZN6google8protobuf8internalL10VarintSizeILb1ELb0EiEEmPKT1_i.exit: ; preds = %.lr.ph.i, %middle.block, %bb.a
  %.015.lcssa.i = phi i32 [ %i.c, %bb.a ], [ %i.am, %middle.block ], [ %.4.i, %.lr.ph.i ]
  %i.at = zext i32 %.015.lcssa.i to i64
  ret i64 %i.at
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define noundef range(i64 0, 4294967296) i64 @_ZN6google8protobuf8internal14WireFormatLite8EnumSizeERKNS0_13RepeatedFieldIiEE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %0) local_unnamed_addr #6 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !47   ; 2 uses
  %i.c = load i32, ptr %0, align 8, !tbaa !46     ; 6 uses
  %i.d = icmp sgt i32 %i.c, 0
  br i1 %i.d, label %.lr.ph.preheader.i, label %_ZN6google8protobuf8internalL10VarintSizeILb0ELb1EiEEmPKT1_i.exit

.lr.ph.preheader.i:                               ; preds = %bb.a
  %wide.trip.count.i = zext nneg i32 %i.c to i64  ; 3 uses
  %min.iters.check = icmp ult i32 %i.c, 8
  br i1 %min.iters.check, label %.lr.ph.i.preheader, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.preheader.i
  %n.vec = and i64 %wide.trip.count.i, 2147483640 ; 3 uses
  %i.e = insertelement <4 x i32> <i32 poison, i32 0, i32 0, i32 0>, i32 %i.c, i64 0
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.phi = phi <4 x i32> [ zeroinitializer, %vector.ph ], [ %i.j, %vector.body ]
  %vec.phi2 = phi <4 x i32> [ zeroinitializer, %vector.ph ], [ %i.k, %vector.body ]
  %vec.phi3 = phi <4 x i32> [ %i.e, %vector.ph ], [ %i.ah, %vector.body ]
  %vec.phi4 = phi <4 x i32> [ zeroinitializer, %vector.ph ], [ %i.ai, %vector.body ]
  %i.f = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %index ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  %wide.load = load <4 x i32>, ptr %i.f, align 4, !tbaa !40 ; 5 uses
  %wide.load5 = load <4 x i32>, ptr %i.g, align 4, !tbaa !40 ; 5 uses
  %i.h = lshr <4 x i32> %wide.load, splat (i32 31)
  %i.i = lshr <4 x i32> %wide.load5, splat (i32 31)
  %i.j = add <4 x i32> %i.h, %vec.phi             ; 2 uses
  %i.k = add <4 x i32> %i.i, %vec.phi2            ; 2 uses
  %i.l = icmp ugt <4 x i32> %wide.load, splat (i32 127)
  %i.m = icmp ugt <4 x i32> %wide.load5, splat (i32 127)
  %i.n = zext <4 x i1> %i.l to <4 x i32>
  %i.o = zext <4 x i1> %i.m to <4 x i32>
  %i.p = add <4 x i32> %vec.phi3, %i.n
  %i.q = add <4 x i32> %vec.phi4, %i.o
  %i.r = icmp ugt <4 x i32> %wide.load, splat (i32 16383)
  %i.s = icmp ugt <4 x i32> %wide.load5, splat (i32 16383)
  %i.t = zext <4 x i1> %i.r to <4 x i32>
  %i.u = zext <4 x i1> %i.s to <4 x i32>
  %i.v = add <4 x i32> %i.p, %i.t
  %i.w = add <4 x i32> %i.q, %i.u
  %i.x = icmp ugt <4 x i32> %wide.load, splat (i32 2097151)
  %i.y = icmp ugt <4 x i32> %wide.load5, splat (i32 2097151)
  %i.z = zext <4 x i1> %i.x to <4 x i32>
  %i.aa = zext <4 x i1> %i.y to <4 x i32>
  %i.ab = add <4 x i32> %i.v, %i.z
  %i.ac = add <4 x i32> %i.w, %i.aa
  %i.ad = icmp ugt <4 x i32> %wide.load, splat (i32 268435455)
  %i.ae = icmp ugt <4 x i32> %wide.load5, splat (i32 268435455)
  %i.af = zext <4 x i1> %i.ad to <4 x i32>
  %i.ag = zext <4 x i1> %i.ae to <4 x i32>
  %i.ah = add <4 x i32> %i.ab, %i.af              ; 2 uses
  %i.ai = add <4 x i32> %i.ac, %i.ag              ; 2 uses
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.aj = icmp eq i64 %index.next, %n.vec
  br i1 %i.aj, label %middle.block, label %vector.body, !llvm.loop !73

middle.block:                                     ; preds = %vector.body
  %bin.rdx = add <4 x i32> %i.k, %i.j
  %i.ak = tail call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %bin.rdx) ; 2 uses
  %bin.rdx6 = add <4 x i32> %i.ai, %i.ah
  %i.al = tail call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %bin.rdx6) ; 2 uses
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count.i
  br i1 %cmp.n, label %._crit_edge.loopexit.i, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %.lr.ph.preheader.i, %middle.block
  %indvars.iv.i.ph = phi i64 [ 0, %.lr.ph.preheader.i ], [ %n.vec, %middle.block ]
  %.01821.i.ph = phi i32 [ 0, %.lr.ph.preheader.i ], [ %i.ak, %middle.block ]
  %.01920.i.ph = phi i32 [ %i.c, %.lr.ph.preheader.i ], [ %i.al, %middle.block ]
  br label %.lr.ph.i

._crit_edge.loopexit.i:                           ; preds = %.lr.ph.i, %middle.block
  %.lcssa = phi i32 [ %i.ak, %middle.block ], [ %1, %.lr.ph.i ]
  %.4.i.lcssa = phi i32 [ %i.al, %middle.block ], [ %.4.i, %.lr.ph.i ]
  %i.am = mul i32 %.lcssa, 5
  br label %_ZN6google8protobuf8internalL10VarintSizeILb0ELb1EiEEmPKT1_i.exit

.lr.ph.i:                                         ; preds = %.lr.ph.i.preheader, %.lr.ph.i
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %.lr.ph.i ], [ %indvars.iv.i.ph, %.lr.ph.i.preheader ] ; 2 uses
  %.01821.i = phi i32 [ %1, %.lr.ph.i ], [ %.01821.i.ph, %.lr.ph.i.preheader ]
  %.01920.i = phi i32 [ %.4.i, %.lr.ph.i ], [ %.01920.i.ph, %.lr.ph.i.preheader ]
  %i.an = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %indvars.iv.i
  %i.ao = load i32, ptr %i.an, align 4, !tbaa !40 ; 5 uses
  %i.ap = lshr i32 %i.ao, 31
  %1 = add i32 %i.ap, %.01821.i                   ; 2 uses
  %2 = icmp ugt i32 %i.ao, 127
  %3 = zext i1 %2 to i32
  %spec.select.i = add i32 %.01920.i, %3
  %4 = icmp ugt i32 %i.ao, 16383
  %5 = zext i1 %4 to i32
  %.2.i = add i32 %spec.select.i, %5
  %6 = icmp ugt i32 %i.ao, 2097151
  %7 = zext i1 %6 to i32
  %.3.i = add i32 %.2.i, %7
  %8 = icmp ugt i32 %i.ao, 268435455
  %i.aq = zext i1 %8 to i32
  %.4.i = add i32 %.3.i, %i.aq                    ; 2 uses
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %wide.trip.count.i
  br i1 %exitcond.not.i, label %._crit_edge.loopexit.i, label %.lr.ph.i, !llvm.loop !74

_ZN6google8protobuf8internalL10VarintSizeILb0ELb1EiEEmPKT1_i.exit: ; preds = %bb.a, %._crit_edge.loopexit.i
  %.019.lcssa.i = phi i32 [ %i.c, %bb.a ], [ %.4.i.lcssa, %._crit_edge.loopexit.i ]
  %.018.lcssa.i = phi i32 [ 0, %bb.a ], [ %i.am, %._crit_edge.loopexit.i ]
  %i.ar = add i32 %.018.lcssa.i, %.019.lcssa.i
  %i.as = zext i32 %i.ar to i64
  ret i64 %i.as
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define noundef i64 @_ZN6google8protobuf8internal14WireFormatLite9Int64SizeERKNS0_13RepeatedFieldIlEE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %0) local_unnamed_addr #6 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load i32, ptr %0, align 8, !tbaa !57     ; 4 uses
  %i.b = icmp sgt i32 %i.a, 0
  br i1 %i.b, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !58   ; 3 uses
  %wide.trip.count = zext nneg i32 %i.a to i64    ; 2 uses
  %xtraiter = and i64 %wide.trip.count, 1
  %i.e = icmp eq i32 %i.a, 1
  br i1 %i.e, label %.epil.preheader, label %.lr.ph.new

.lr.ph.new:                                       ; preds = %.lr.ph
  %unroll_iter = and i64 %wide.trip.count, 2147483646
  br label %bb.b

._crit_edge.loopexit.unr-lcssa:                   ; preds = %bb.b
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge.loopexit.unr-lcssa, %.lr.ph
  %indvars.iv.epil.init = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next.1, %._crit_edge.loopexit.unr-lcssa ]
  %.078.epil.init = phi i64 [ 0, %.lr.ph ], [ %i.ag, %._crit_edge.loopexit.unr-lcssa ]
  %lcmp.mod12 = trunc i32 %i.a to i1
  tail call void @llvm.assume(i1 %lcmp.mod12)
  %i.f = getelementptr inbounds nuw [8 x i8], ptr %i.d, i64 %indvars.iv.epil.init
  %i.g = load i64, ptr %i.f, align 8, !tbaa !34
  %i.h = or i64 %i.g, 1
  %i.i = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.h, i1 true)
  %i.j = xor i64 %i.i, 63
  %i.k = mul nuw nsw i64 %i.j, 9
  %i.l = add nuw nsw i64 %i.k, 73
  %i.m = lshr i64 %i.l, 6
  %i.n = add i64 %i.m, %.078.epil.init
  br label %._crit_edge

._crit_edge:                                      ; preds = %.epil.preheader, %._crit_edge.loopexit.unr-lcssa, %bb.a
  %.07.lcssa = phi i64 [ 0, %bb.a ], [ %i.ag, %._crit_edge.loopexit.unr-lcssa ], [ %i.n, %.epil.preheader ]
  ret i64 %.07.lcssa

bb.b:                                             ; preds = %bb.b, %.lr.ph.new
  %indvars.iv = phi i64 [ 0, %.lr.ph.new ], [ %indvars.iv.next.1, %bb.b ] ; 3 uses
  %.078 = phi i64 [ 0, %.lr.ph.new ], [ %i.ag, %bb.b ]
  %niter = phi i64 [ 0, %.lr.ph.new ], [ %niter.next.1, %bb.b ]
  %i.o = getelementptr inbounds nuw [8 x i8], ptr %i.d, i64 %indvars.iv
  %i.p = load i64, ptr %i.o, align 8, !tbaa !34
  %i.q = or i64 %i.p, 1
  %i.r = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.q, i1 true)
  %i.s = xor i64 %i.r, 63
  %i.t = mul nuw nsw i64 %i.s, 9
  %i.u = add nuw nsw i64 %i.t, 73
  %i.v = lshr i64 %i.u, 6
  %i.w = add i64 %i.v, %.078
  %i.x = getelementptr inbounds nuw [8 x i8], ptr %i.d, i64 %indvars.iv
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 8
  %i.z = load i64, ptr %i.y, align 8, !tbaa !34
  %i.aa = or i64 %i.z, 1
  %i.ab = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.aa, i1 true)
  %i.ac = xor i64 %i.ab, 63
  %i.ad = mul nuw nsw i64 %i.ac, 9
  %i.ae = add nuw nsw i64 %i.ad, 73
  %i.af = lshr i64 %i.ae, 6
  %i.ag = add i64 %i.af, %i.w                     ; 3 uses
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge.loopexit.unr-lcssa, label %bb.b, !llvm.loop !75
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define noundef i64 @_ZN6google8protobuf8internal14WireFormatLite10UInt64SizeERKNS0_13RepeatedFieldImEE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %0) local_unnamed_addr #6 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load i32, ptr %0, align 8, !tbaa !78     ; 4 uses
  %i.b = icmp sgt i32 %i.a, 0
  br i1 %i.b, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !79   ; 3 uses
  %wide.trip.count = zext nneg i32 %i.a to i64    ; 2 uses
  %xtraiter = and i64 %wide.trip.count, 1
  %i.e = icmp eq i32 %i.a, 1
  br i1 %i.e, label %.epil.preheader, label %.lr.ph.new

.lr.ph.new:                                       ; preds = %.lr.ph
  %unroll_iter = and i64 %wide.trip.count, 2147483646
  br label %bb.b

._crit_edge.loopexit.unr-lcssa:                   ; preds = %bb.b
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge.loopexit.unr-lcssa, %.lr.ph
  %indvars.iv.epil.init = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next.1, %._crit_edge.loopexit.unr-lcssa ]
  %.078.epil.init = phi i64 [ 0, %.lr.ph ], [ %i.ag, %._crit_edge.loopexit.unr-lcssa ]
  %lcmp.mod12 = trunc i32 %i.a to i1
  tail call void @llvm.assume(i1 %lcmp.mod12)
  %i.f = getelementptr inbounds nuw [8 x i8], ptr %i.d, i64 %indvars.iv.epil.init
  %i.g = load i64, ptr %i.f, align 8, !tbaa !34
  %i.h = or i64 %i.g, 1
  %i.i = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.h, i1 true)
  %i.j = xor i64 %i.i, 63
  %i.k = mul nuw nsw i64 %i.j, 9
  %i.l = add nuw nsw i64 %i.k, 73
  %i.m = lshr i64 %i.l, 6
  %i.n = add i64 %i.m, %.078.epil.init
  br label %._crit_edge

._crit_edge:                                      ; preds = %.epil.preheader, %._crit_edge.loopexit.unr-lcssa, %bb.a
  %.07.lcssa = phi i64 [ 0, %bb.a ], [ %i.ag, %._crit_edge.loopexit.unr-lcssa ], [ %i.n, %.epil.preheader ]
  ret i64 %.07.lcssa

bb.b:                                             ; preds = %bb.b, %.lr.ph.new
  %indvars.iv = phi i64 [ 0, %.lr.ph.new ], [ %indvars.iv.next.1, %bb.b ] ; 3 uses
  %.078 = phi i64 [ 0, %.lr.ph.new ], [ %i.ag, %bb.b ]
  %niter = phi i64 [ 0, %.lr.ph.new ], [ %niter.next.1, %bb.b ]
  %i.o = getelementptr inbounds nuw [8 x i8], ptr %i.d, i64 %indvars.iv
  %i.p = load i64, ptr %i.o, align 8, !tbaa !34
  %i.q = or i64 %i.p, 1
  %i.r = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.q, i1 true)
  %i.s = xor i64 %i.r, 63
  %i.t = mul nuw nsw i64 %i.s, 9
  %i.u = add nuw nsw i64 %i.t, 73
  %i.v = lshr i64 %i.u, 6
  %i.w = add i64 %i.v, %.078
  %i.x = getelementptr inbounds nuw [8 x i8], ptr %i.d, i64 %indvars.iv
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 8
  %i.z = load i64, ptr %i.y, align 8, !tbaa !34
  %i.aa = or i64 %i.z, 1
  %i.ab = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.aa, i1 true)
  %i.ac = xor i64 %i.ab, 63
  %i.ad = mul nuw nsw i64 %i.ac, 9
  %i.ae = add nuw nsw i64 %i.ad, 73
  %i.af = lshr i64 %i.ae, 6
  %i.ag = add i64 %i.af, %i.w                     ; 3 uses
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge.loopexit.unr-lcssa, label %bb.b, !llvm.loop !76
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define noundef i64 @_ZN6google8protobuf8internal14WireFormatLite10SInt64SizeERKNS0_13RepeatedFieldIlEE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %0) local_unnamed_addr #6 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load i32, ptr %0, align 8, !tbaa !57     ; 4 uses
  %i.b = icmp sgt i32 %i.a, 0
  br i1 %i.b, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !58   ; 3 uses
  %wide.trip.count = zext nneg i32 %i.a to i64    ; 2 uses
  %xtraiter = and i64 %wide.trip.count, 1
  %i.e = icmp eq i32 %i.a, 1
  br i1 %i.e, label %.epil.preheader, label %.lr.ph.new

.lr.ph.new:                                       ; preds = %.lr.ph
  %unroll_iter = and i64 %wide.trip.count, 2147483646
  br label %bb.b

._crit_edge.loopexit.unr-lcssa:                   ; preds = %bb.b
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge.loopexit.unr-lcssa, %.lr.ph
  %indvars.iv.epil.init = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next.1, %._crit_edge.loopexit.unr-lcssa ]
  %.078.epil.init = phi i64 [ 0, %.lr.ph ], [ %i.ap, %._crit_edge.loopexit.unr-lcssa ]
  %lcmp.mod12 = trunc i32 %i.a to i1
  tail call void @llvm.assume(i1 %lcmp.mod12)
  %i.f = getelementptr inbounds nuw [8 x i8], ptr %i.d, i64 %indvars.iv.epil.init
  %i.g = load i64, ptr %i.f, align 8, !tbaa !34   ; 2 uses
  %i.h = shl i64 %i.g, 1
  %i.i = ashr i64 %i.g, 63
  %i.j = xor i64 %i.h, %i.i
  %i.k = or i64 %i.j, 1
  %i.l = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.k, i1 true)
  %i.m = xor i64 %i.l, 63
  %i.n = mul nuw nsw i64 %i.m, 9
  %i.o = add nuw nsw i64 %i.n, 73
  %i.p = lshr i64 %i.o, 6
  %i.q = add i64 %i.p, %.078.epil.init
  br label %._crit_edge

._crit_edge:                                      ; preds = %.epil.preheader, %._crit_edge.loopexit.unr-lcssa, %bb.a
  %.07.lcssa = phi i64 [ 0, %bb.a ], [ %i.ap, %._crit_edge.loopexit.unr-lcssa ], [ %i.q, %.epil.preheader ]
  ret i64 %.07.lcssa

bb.b:                                             ; preds = %bb.b, %.lr.ph.new
  %indvars.iv = phi i64 [ 0, %.lr.ph.new ], [ %indvars.iv.next.1, %bb.b ] ; 3 uses
  %.078 = phi i64 [ 0, %.lr.ph.new ], [ %i.ap, %bb.b ]
  %niter = phi i64 [ 0, %.lr.ph.new ], [ %niter.next.1, %bb.b ]
  %i.r = getelementptr inbounds nuw [8 x i8], ptr %i.d, i64 %indvars.iv
  %i.s = load i64, ptr %i.r, align 8, !tbaa !34   ; 2 uses
  %i.t = shl i64 %i.s, 1
  %i.u = ashr i64 %i.s, 63
  %i.v = xor i64 %i.t, %i.u
  %i.w = or i64 %i.v, 1
  %i.x = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.w, i1 true)
  %i.y = xor i64 %i.x, 63
  %i.z = mul nuw nsw i64 %i.y, 9
  %i.aa = add nuw nsw i64 %i.z, 73
  %i.ab = lshr i64 %i.aa, 6
  %i.ac = add i64 %i.ab, %.078
  %i.ad = getelementptr inbounds nuw [8 x i8], ptr %i.d, i64 %indvars.iv
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 8
  %i.af = load i64, ptr %i.ae, align 8, !tbaa !34 ; 2 uses
  %i.ag = shl i64 %i.af, 1
  %i.ah = ashr i64 %i.af, 63
  %i.ai = xor i64 %i.ag, %i.ah
  %i.aj = or i64 %i.ai, 1
  %i.ak = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.aj, i1 true)
  %i.al = xor i64 %i.ak, 63
  %i.am = mul nuw nsw i64 %i.al, 9
  %i.an = add nuw nsw i64 %i.am, 73
  %i.ao = lshr i64 %i.an, 6
  %i.ap = add i64 %i.ao, %i.ac                    ; 3 uses
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge.loopexit.unr-lcssa, label %bb.b, !llvm.loop !80
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZN6google8protobuf8internal12FieldSkipperD0Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) unnamed_addr #7 comdat align 2 {
bb.a:
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 8) #13
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZN6google8protobuf8internal12FieldSkipperD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %0) unnamed_addr #7 comdat align 2 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZN6google8protobuf8internal29CodedOutputStreamFieldSkipperD0Ev(ptr noundef nonnull align 8 dereferenceable(16) %0) unnamed_addr #7 comdat align 2 {
bb.a:
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 16) #13
  ret void
}

declare { i64, i8 } @_ZN6google8protobuf2io16CodedInputStream20ReadVarint64FallbackEv(ptr noundef nonnull align 8 dereferenceable(80)) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #1

declare noundef zeroext i1 @_ZN6google8protobuf2io16CodedInputStream26ReadLittleEndian64FallbackEPm(ptr noundef nonnull align 8 dereferenceable(80), ptr noundef) local_unnamed_addr #2

declare noundef i64 @_ZN6google8protobuf2io16CodedInputStream20ReadVarint32FallbackEj(ptr noundef nonnull align 8 dereferenceable(80), i32 noundef) local_unnamed_addr #2

declare noundef zeroext i1 @_ZN6google8protobuf2io16CodedInputStream12SkipFallbackEii(ptr noundef nonnull align 8 dereferenceable(80), i32 noundef, i32 noundef) local_unnamed_addr #2

declare noundef zeroext i1 @_ZN6google8protobuf2io16CodedInputStream26ReadLittleEndian32FallbackEPj(ptr noundef nonnull align 8 dereferenceable(80), ptr noundef) local_unnamed_addr #2

declare noundef ptr @_ZN6google8protobuf2io19EpsCopyOutputStream19EnsureSpaceFallbackEPh(ptr noundef nonnull align 8 dereferenceable(59), ptr noundef) local_unnamed_addr #2

declare noundef ptr @_ZN6google8protobuf2io19EpsCopyOutputStream16WriteRawFallbackEPKviPh(ptr noundef nonnull align 8 dereferenceable(59), ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

declare noundef i32 @_ZN6google8protobuf2io16CodedInputStream15ReadTagFallbackEj(ptr noundef nonnull align 8 dereferenceable(80), i32 noundef) local_unnamed_addr #2

declare noundef ptr @_ZN6google8protobuf2io19EpsCopyOutputStream15WriteAliasedRawEPKviPh(ptr noundef nonnull align 8 dereferenceable(59), ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.ctlz.i64(i64, i1 immarg) #8

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPvm(ptr noundef, i64 noundef) local_unnamed_addr #9

declare void @_ZN6google8protobuf13RepeatedFieldIiE7ReserveEi(ptr noundef nonnull align 8 dereferenceable(16), i32 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #10

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.vector.reduce.add.v4i32(<4 x i32>) #11

attributes #0 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nobuiltin allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #9 = { nobuiltin nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #11 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #12 = { nounwind }
attributes #13 = { builtin nounwind }
attributes #14 = { builtin allocsize(0) memory(inaccessiblemem: readwrite, errnomem: write) }

!llvm.module.flags = !{!2, !3}
!llvm.ident = !{!4}
!llvm.errno.tbaa = !{!9}

!0 = distinct !{!0, !33}
!1 = distinct !{null}
!2 = !{i32 8, !"PIC Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{!"Ubuntu clang version 24.0.0 (++20260903081701+7ece48b9e5bb-1~exp1~20260903201841.1826)"}
!5 = !{!"Simple C++ TBAA"}
!6 = !{!"omnipotent char", !5, i64 0}
!7 = !{!"int", !6, i64 0}
!8 = !{!"__libc_errno", !7, i64 0}
!9 = !{!8, !7, i64 0}
!10 = !{!"any pointer", !6, i64 0}
!11 = !{!"p1 omnipotent char", !10, i64 0}
!12 = !{!"p1 _ZTSN6google8protobuf2io19ZeroCopyInputStreamE", !10, i64 0}
!13 = !{!"bool", !6, i64 0}
!14 = !{!"p1 _ZTSN6google8protobuf14DescriptorPoolE", !10, i64 0}
!15 = !{!"p1 _ZTSN6google8protobuf14MessageFactoryE", !10, i64 0}
!16 = !{!"_ZTSN6google8protobuf2io16CodedInputStreamE", !11, i64 0, !11, i64 8, !12, i64 16, !7, i64 24, !7, i64 28, !7, i64 32, !13, i64 36, !13, i64 37, !7, i64 40, !7, i64 44, !7, i64 48, !7, i64 52, !7, i64 56, !14, i64 64, !15, i64 72}
!17 = !{!16, !11, i64 0}
!18 = !{!16, !11, i64 8}
!19 = !{!"branch_weights", !"expected", i32 2000, i32 1}
!20 = !{!6, !6, i64 0}
!21 = !{!16, !7, i64 52}
!22 = !{ptr @_ZN6google8protobuf8internal14WireFormatLite11SkipMessageEPNS0_2io16CodedInputStreamE}
!23 = !{!16, !7, i64 32}
!24 = !{!16, !7, i64 56}
!25 = !{!"p1 _ZTSN6google8protobuf2io20ZeroCopyOutputStreamE", !10, i64 0}
!26 = !{!"_ZTSN6google8protobuf2io19EpsCopyOutputStreamE", !11, i64 0, !11, i64 8, !6, i64 16, !25, i64 48, !13, i64 56, !13, i64 57, !13, i64 58}
!27 = !{!"long", !6, i64 0}
!28 = !{!"_ZTSN6google8protobuf2io17CodedOutputStreamE", !26, i64 0, !11, i64 64, !27, i64 72}
!29 = !{!28, !11, i64 64}
!30 = !{!26, !11, i64 0}
!31 = !{!"branch_weights", i32 1073205, i32 2146410443}
!32 = !{!"branch_weights", !"expected", i32 1, i32 2000}
!33 = !{!"llvm.loop.mustprogress"}
!34 = !{!27, !27, i64 0}
!35 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_Alloc_hiderE", !11, i64 0}
!36 = !{!35, !11, i64 0}
!37 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE", !35, i64 0, !27, i64 8, !6, i64 16}
!38 = !{!37, !27, i64 8}
!39 = !{!37, !11, i64 0}
!40 = !{!7, !7, i64 0}
!41 = !{!"_ZTSN6google8protobuf8internal12FieldSkipperE"}
!42 = !{!"p1 _ZTSN6google8protobuf2io17CodedOutputStreamE", !10, i64 0}
!43 = !{!"_ZTSN6google8protobuf8internal29CodedOutputStreamFieldSkipperE", !41, i64 0, !42, i64 8}
!44 = !{!43, !42, i64 8}
!45 = !{!"_ZTSN6google8protobuf13RepeatedFieldIiEE", !7, i64 0, !7, i64 4, !10, i64 8}
!46 = !{!45, !7, i64 0}
!47 = !{!45, !10, i64 8}
!48 = !{!26, !13, i64 57}
!49 = !{i8 0, i8 2}
!50 = !{}
!51 = !{!"vtable pointer", !5, i64 0}
!52 = !{!51, !51, i64 0}
!53 = !{ptr @_ZN6google8protobuf8internal14WireFormatLite27WriteSubMessageMaybeToArrayEiRKNS0_11MessageLiteEPNS0_2io17CodedOutputStreamE}
!54 = !{!"llvm.loop.isvectorized", i32 1}
!55 = !{!"llvm.loop.unroll.runtime.disable"}
!56 = !{!"_ZTSN6google8protobuf13RepeatedFieldIlEE", !7, i64 0, !7, i64 4, !10, i64 8}
!57 = !{!56, !7, i64 0}
!58 = !{!56, !10, i64 8}
!59 = !{ptr @_ZN6google8protobuf8internal14WireFormatLite11SkipMessageEPNS0_2io16CodedInputStreamEPNS3_17CodedOutputStreamE}
!60 = distinct !{!60, !33}
!61 = !{!45, !7, i64 4}
!62 = !{!"p1 _ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE", !10, i64 0}
!63 = !{!62, !62, i64 0}
!64 = distinct !{!64, !33, !54, !55}
!65 = distinct !{!65, !33, !55, !54}
!66 = distinct !{!66, !33, !54, !55}
!67 = distinct !{!67, !33, !55, !54}
!68 = !{!"_ZTSN6google8protobuf13RepeatedFieldIjEE", !7, i64 0, !7, i64 4, !10, i64 8}
!69 = !{!68, !10, i64 8}
!70 = !{!68, !7, i64 0}
!71 = distinct !{!71, !33, !54, !55}
!72 = distinct !{!72, !33, !55, !54}
!73 = distinct !{!73, !33, !54, !55}
!74 = distinct !{!74, !33, !55, !54}
!75 = distinct !{!75, !33}
!76 = distinct !{!76, !33}
!77 = !{!"_ZTSN6google8protobuf13RepeatedFieldImEE", !7, i64 0, !7, i64 4, !10, i64 8}
!78 = !{!77, !7, i64 0}
!79 = !{!77, !10, i64 8}
!80 = distinct !{!80, !33}
end_hunk_0

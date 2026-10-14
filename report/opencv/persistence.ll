Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/opencv/original/persistence?download=true
inline.NumInlined: 2260
inline.NumDeleted: 815
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumRuntimeUnrolled: 3
loop-unroll.NumUnrolled: 5
begin_hunk_0_@_ZNK2cv11FileStorage20getFirstTopLevelNodeEv:bb.a
bb.d:                                             ; preds = %bb.c, %bb.b, %bb.a
  call void @_ZN2cv8FileNodeC1Ev(ptr noundef nonnull align 8 dereferenceable(24) %2)
  br label %_ZNK2cv11FileStorage4rootEi.exit

bb.e:                                             ; preds = %bb.c
  call void @_ZN2cv8FileNodeC1ERKS0_(ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef nonnull align 8 dereferenceable(24) %i.e)
  br label %_ZNK2cv11FileStorage4rootEi.exit

_ZNK2cv11FileStorage4rootEi.exit:                 ; preds = %bb.d, %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #38
  call void @_ZN2cv16FileNodeIteratorC1ERKNS_8FileNodeEb(ptr noundef nonnull align 8 dereferenceable(48) %3, ptr noundef nonnull align 8 dereferenceable(24) %2, i1 noundef zeroext false)
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #38
  call void @_ZN2cv16FileNodeIteratorC1ERKNS_8FileNodeEb(ptr noundef nonnull align 8 dereferenceable(48) %4, ptr noundef nonnull align 8 dereferenceable(24) %2, i1 noundef zeroext true)
  %i.n = load ptr, ptr %3, align 8, !tbaa !205    ; 2 uses
  %i.o = load ptr, ptr %4, align 8, !tbaa !205
  %i.p = icmp eq ptr %i.n, %i.o
  %i.q = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.r = load i64, ptr %i.q, align 8, !tbaa !202  ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.t = load i64, ptr %i.s, align 8
  %i.u = icmp eq i64 %i.r, %i.t
  %or.cond = select i1 %i.p, i1 %i.u, i1 false
  br i1 %or.cond, label %bb.f, label %_ZN2cvneERKNS_16FileNodeIteratorES2_.exit.thread

bb.f:                                             ; preds = %_ZNK2cv11FileStorage4rootEi.exit
  %i.v = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.w = load i64, ptr %i.v, align 8, !tbaa !203
  %i.x = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.y = load i64, ptr %i.x, align 8, !tbaa !203
  %i.z = icmp eq i64 %i.w, %i.y
  br i1 %i.z, label %bb.g, label %_ZN2cvneERKNS_16FileNodeIteratorES2_.exit.thread

bb.g:                                             ; preds = %bb.f
  %i.aa = getelementptr inbounds nuw i8, ptr %3, i64 40
  %i.ab = load i64, ptr %i.aa, align 8, !tbaa !200
  %i.ac = getelementptr inbounds nuw i8, ptr %4, i64 40
  %i.ad = load i64, ptr %i.ac, align 8, !tbaa !200
  %i.ae = icmp eq i64 %i.ab, %i.ad
  br i1 %i.ae, label %_ZN2cvneERKNS_16FileNodeIteratorES2_.exit, label %_ZN2cvneERKNS_16FileNodeIteratorES2_.exit.thread

_ZN2cvneERKNS_16FileNodeIteratorES2_.exit:        ; preds = %bb.g
  %i.af = getelementptr inbounds nuw i8, ptr %3, i64 32
  %i.ag = load i64, ptr %i.af, align 8, !tbaa !201
  %i.ah = getelementptr inbounds nuw i8, ptr %4, i64 32
  %i.ai = load i64, ptr %i.ah, align 8, !tbaa !201
  %.not = icmp eq i64 %i.ag, %i.ai
  br i1 %.not, label %bb.h, label %_ZN2cvneERKNS_16FileNodeIteratorES2_.exit.thread

_ZN2cvneERKNS_16FileNodeIteratorES2_.exit.thread: ; preds = %_ZNK2cv11FileStorage4rootEi.exit, %bb.f, %bb.g, %_ZN2cvneERKNS_16FileNodeIteratorES2_.exit
  %i.aj = getelementptr inbounds nuw i8, ptr %3, i64 40
  %i.ak = load i64, ptr %i.aj, align 8, !tbaa !200, !noalias !402
  %i.al = getelementptr inbounds nuw i8, ptr %3, i64 32
  %i.am = load i64, ptr %i.al, align 8, !tbaa !201, !noalias !402
  %i.an = icmp ult i64 %i.ak, %i.am
  %spec.select.i = select i1 %i.an, ptr %i.n, ptr null
  %i.ao = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.ap = load i64, ptr %i.ao, align 8, !tbaa !203, !noalias !402
  call void @_ZN2cv8FileNodeC1EPNS_11FileStorage4ImplEmm(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef %spec.select.i, i64 noundef %i.r, i64 noundef %i.ap)
  br label %bb.i

bb.h:                                             ; preds = %_ZN2cvneERKNS_16FileNodeIteratorES2_.exit
  call void @_ZN2cv8FileNodeC1Ev(ptr noundef nonnull align 8 dereferenceable(24) %0)
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %_ZN2cvneERKNS_16FileNodeIteratorES2_.exit.thread
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #38
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #38
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #38
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define noundef zeroext i1 @_ZN2cvneERKNS_16FileNodeIteratorES2_(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(48) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(48) %1) local_unnamed_addr #23 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !205
  %i.b = load ptr, ptr %1, align 8, !tbaa !205
  %i.c = icmp eq ptr %i.a, %i.b
  br i1 %i.c, label %bb.b, label %_ZNK2cv16FileNodeIterator7equalToERKS0_.exit

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.e = load i64, ptr %i.d, align 8, !tbaa !202
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.g = load i64, ptr %i.f, align 8, !tbaa !202
  %i.h = icmp eq i64 %i.e, %i.g
  br i1 %i.h, label %bb.c, label %_ZNK2cv16FileNodeIterator7equalToERKS0_.exit

bb.c:                                             ; preds = %bb.b
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.j = load i64, ptr %i.i, align 8, !tbaa !203
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.l = load i64, ptr %i.k, align 8, !tbaa !203
  %i.m = icmp eq i64 %i.j, %i.l
  br i1 %i.m, label %bb.d, label %_ZNK2cv16FileNodeIterator7equalToERKS0_.exit

bb.d:                                             ; preds = %bb.c
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.o = load i64, ptr %i.n, align 8, !tbaa !200
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.q = load i64, ptr %i.p, align 8, !tbaa !200
  %i.r = icmp eq i64 %i.o, %i.q
  br i1 %i.r, label %bb.e, label %_ZNK2cv16FileNodeIterator7equalToERKS0_.exit

bb.e:                                             ; preds = %bb.d
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.t = load i64, ptr %i.s, align 8, !tbaa !201
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.v = load i64, ptr %i.u, align 8, !tbaa !201
  %i.w = icmp ne i64 %i.t, %i.v
  br label %_ZNK2cv16FileNodeIterator7equalToERKS0_.exit

_ZNK2cv16FileNodeIterator7equalToERKS0_.exit:     ; preds = %bb.a, %bb.b, %bb.c, %bb.d, %bb.e
  %i.x = phi i1 [ true, %bb.d ], [ true, %bb.c ], [ true, %bb.b ], [ true, %bb.a ], [ %i.w, %bb.e ]
  ret i1 %i.x
}

; Function Attrs: mustprogress uwtable
define void @_ZNK2cv8FileNode3endEv(ptr dead_on_unwind noalias writable sret(%"class.cv::FileNodeIterator") align 8 %0, ptr noundef nonnull align 8 dereferenceable(24) %1) local_unnamed_addr #9 align 2 {
bb.a:
  tail call void @_ZN2cv16FileNodeIteratorC1ERKNS_8FileNodeEb(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, i1 noundef zeroext true)
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN2cv11FileStorage20getDefaultObjectNameERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %1) local_unnamed_addr #9 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %2 = alloca %"class.cv::AutoBuffer", align 8    ; 10 uses
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %4 = alloca %"class.std::allocator", align 1    ; 3 uses
  %i.b = load ptr, ptr %1, align 8, !tbaa !37     ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.d = load i64, ptr %i.c, align 8, !tbaa !42   ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.d ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #38
  %i.f = add i64 %i.d, 1                          ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 4 uses
  store ptr %i.g, ptr %2, align 8, !tbaa !408
  %i.h = getelementptr inbounds nuw i8, ptr %2, i64 8
  %.not.i.i = icmp ugt i64 %i.f, 1032
  store i64 %i.f, ptr %i.h, align 8, !tbaa !409
  br i1 %.not.i.i, label %bb.b, label %_ZN2cv10AutoBufferIcLm1032EEC2Em.exit

bb.b:                                             ; preds = %bb.a
  %i.i = call noalias noundef nonnull ptr @_Znam(i64 noundef %i.f) #42 ; 2 uses
  store ptr %i.i, ptr %2, align 8, !tbaa !408
  br label %_ZN2cv10AutoBufferIcLm1032EEC2Em.exit

_ZN2cv10AutoBufferIcLm1032EEC2Em.exit:            ; preds = %bb.a, %bb.b
  %i.j = phi ptr [ %i.g, %bb.a ], [ %i.i, %bb.b ] ; 3 uses
  %.not4969 = icmp slt i64 %i.d, 1
  br i1 %.not4969, label %.critedge.thread, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %_ZN2cv10AutoBufferIcLm1032EEC2Em.exit
  %.04368 = getelementptr inbounds i8, ptr %i.e, i64 -1
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %.tail.thread
  %.04372 = phi ptr [ %.043, %.tail.thread ], [ %.04368, %.lr.ph.preheader ] ; 5 uses
  %.pn5771 = phi ptr [ %.04372, %.tail.thread ], [ %i.e, %.lr.ph.preheader ] ; 3 uses
  %.04570 = phi ptr [ %.146, %.tail.thread ], [ %i.e, %.lr.ph.preheader ] ; 10 uses
  %i.k = load i8, ptr %.04372, align 1, !tbaa !31
  switch i8 %i.k, label %.tail.thread [
    i8 92, label %.critedge
    i8 47, label %.critedge
    i8 58, label %.critedge
    i8 46, label %bb.c
  ]

bb.c:                                             ; preds = %.lr.ph
  %i.l = load i8, ptr %.04570, align 1, !tbaa !31
  switch i8 %i.l, label %.tail.thread [
    i8 0, label %bb.d
    i8 46, label %sub_1
  ]

sub_1:                                            ; preds = %bb.c
  %i.m = getelementptr inbounds nuw i8, ptr %.04570, i64 1
  %i.n = load i8, ptr %i.m, align 1
  %.not88 = icmp eq i8 %i.n, 103
  br i1 %.not88, label %.tail, label %.tail.thread

.tail:                                            ; preds = %sub_1
  %i.o = getelementptr inbounds nuw i8, ptr %.04570, i64 2
  %i.p = load i8, ptr %i.o, align 1
  %i.q = icmp eq i8 %i.p, 122
  br i1 %i.q, label %bb.d, label %.tail.thread

bb.d:                                             ; preds = %bb.c, %.tail
  br label %.tail.thread

.tail.thread:                                     ; preds = %bb.c, %sub_1, %.lr.ph, %bb.d, %.tail
  %.146 = phi ptr [ %.04372, %bb.d ], [ %.04570, %.tail ], [ %.04570, %.lr.ph ], [ %.04570, %bb.c ], [ %.04570, %sub_1 ] ; 2 uses
  %.043 = getelementptr inbounds i8, ptr %.04372, i64 -1 ; 2 uses
  %.not49 = icmp ult ptr %.043, %i.b
  br i1 %.not49, label %.critedge, label %.lr.ph, !llvm.loop !403

.critedge:                                        ; preds = %.tail.thread, %.lr.ph, %.lr.ph, %.lr.ph
  %.045.lcssa = phi ptr [ %.04570, %.lr.ph ], [ %.146, %.tail.thread ], [ %.04570, %.lr.ph ], [ %.04570, %.lr.ph ] ; 4 uses
  %.pn57.lcssa = phi ptr [ %.pn5771, %.lr.ph ], [ %.04372, %.tail.thread ], [ %.pn5771, %.lr.ph ], [ %.pn5771, %.lr.ph ] ; 9 uses
  %.045.lcssa102 = ptrtoaddr ptr %.pn57.lcssa to i64 ; 2 uses
  %.pn57.lcssa101 = ptrtoaddr ptr %.045.lcssa to i64 ; 3 uses
  %i.r = icmp eq ptr %.pn57.lcssa, %.045.lcssa
  br i1 %i.r, label %.critedge.thread, label %bb.i

.critedge.thread:                                 ; preds = %_ZN2cv10AutoBufferIcLm1032EEC2Em.exit, %.critedge
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #38
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #38
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull @.str.103, ptr noundef nonnull align 1 dereferenceable(1) %4)
          to label %bb.e unwind label %bb.g

bb.e:                                             ; preds = %.critedge.thread
  invoke void @_ZN2cv5errorENS_5Error4CodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSB_i(i32 noundef -5, ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull @__func__._ZN2cv11FileStorage20getDefaultObjectNameERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE, ptr noundef nonnull @.str.11, i32 noundef 2064) #39
          to label %bb.f unwind label %bb.h

bb.f:                                             ; preds = %bb.e
  unreachable

bb.g:                                             ; preds = %.critedge.thread
  %i.s = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

bb.h:                                             ; preds = %bb.e
  %i.t = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.u = load ptr, ptr %3, align 8, !tbaa !37     ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.w = icmp eq ptr %i.u, %i.v
  br i1 %i.w, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.h
  %i.x = load i64, ptr %i.v, align 8, !tbaa !31
  %i.y = add i64 %i.x, 1
  call void @_ZdlPvm(ptr noundef %i.u, i64 noundef %i.y) #40
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.h, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %bb.g
  %.pn = phi { ptr, i32 } [ %i.s, %bb.g ], [ %i.t, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ], [ %i.t, %bb.h ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #38
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #38
  br label %bb.r

bb.i:                                             ; preds = %.critedge
  %i.z = load i8, ptr %.pn57.lcssa, align 1, !tbaa !31 ; 2 uses
  %i.aa = and i8 %i.z, -33
  %i.ab = add i8 %i.aa, -65
  %i.ac = icmp ult i8 %i.ab, 26
  %.not53 = icmp eq i8 %i.z, 95
  %or.cond = or i1 %.not53, %i.ac
  br i1 %or.cond, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ad = getelementptr inbounds nuw i8, ptr %i.j, i64 1
  store i8 95, ptr %i.j, align 1, !tbaa !31
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i
  %.0 = phi ptr [ %i.j, %bb.i ], [ %i.ad, %bb.j ] ; 7 uses
  %i.ae = icmp ult ptr %.pn57.lcssa, %.045.lcssa
  br i1 %i.ae, label %iter.check, label %sub_065

iter.check:                                       ; preds = %bb.k
  %.0100 = ptrtoaddr ptr %.0 to i64
  %i.af = sub i64 %.pn57.lcssa101, %.045.lcssa102 ; 7 uses
  %min.iters.check = icmp ult i64 %i.af, 8
  %i.ag = sub i64 %.045.lcssa102, %.0100
  %diff.check = icmp ugt i64 %i.ag, -32
  %or.cond116 = select i1 %min.iters.check, i1 true, i1 %diff.check
  br i1 %or.cond116, label %.lr.ph85.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check103 = icmp ult i64 %i.af, 32
  br i1 %min.iters.check103, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.ah = and i64 %i.af, 24
  %n.vec = and i64 %i.af, -32                     ; 5 uses
  %i.ai = getelementptr i8, ptr %.0, i64 %n.vec   ; 2 uses
  %i.aj = getelementptr i8, ptr %.pn57.lcssa, i64 %n.vec
  br label %vector.body

vector.body:                                      ; preds = %vector.ph, %vector.body
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %next.gep = getelementptr i8, ptr %.0, i64 %index ; 2 uses
  %next.gep104 = getelementptr i8, ptr %.pn57.lcssa, i64 %index ; 2 uses
  %i.ak = getelementptr i8, ptr %next.gep104, i64 16
  %wide.load = load <16 x i8>, ptr %next.gep104, align 1, !tbaa !31 ; 4 uses
  %wide.load105 = load <16 x i8>, ptr %i.ak, align 1, !tbaa !31 ; 4 uses
  %i.al = add <16 x i8> %wide.load, splat (i8 -48)
  %i.am = add <16 x i8> %wide.load105, splat (i8 -48)
  %i.an = icmp ult <16 x i8> %i.al, splat (i8 10)
  %i.ao = icmp ult <16 x i8> %i.am, splat (i8 10)
  %i.ap = and <16 x i8> %wide.load, splat (i8 -33)
  %i.aq = and <16 x i8> %wide.load105, splat (i8 -33)
  %i.ar = add <16 x i8> %i.ap, splat (i8 -65)
  %i.as = add <16 x i8> %i.aq, splat (i8 -65)
  %i.at = icmp ult <16 x i8> %i.ar, splat (i8 26)
  %i.au = icmp ult <16 x i8> %i.as, splat (i8 26)
  %i.av = or <16 x i1> %i.an, %i.at
  %i.aw = or <16 x i1> %i.ao, %i.au
  %i.ax = icmp eq <16 x i8> %wide.load, splat (i8 45)
  %i.ay = icmp eq <16 x i8> %wide.load105, splat (i8 45)
  %i.az = or <16 x i1> %i.ax, %i.av
  %i.ba = or <16 x i1> %i.ay, %i.aw
  %i.bb = select <16 x i1> %i.az, <16 x i8> %wide.load, <16 x i8> splat (i8 95)
  %i.bc = select <16 x i1> %i.ba, <16 x i8> %wide.load105, <16 x i8> splat (i8 95)
  %i.bd = getelementptr i8, ptr %next.gep, i64 16
  store <16 x i8> %i.bb, ptr %next.gep, align 1, !tbaa !31
  store <16 x i8> %i.bc, ptr %i.bd, align 1, !tbaa !31
  %index.next = add nuw i64 %index, 32            ; 2 uses
  %i.be = icmp eq i64 %index.next, %n.vec
  br i1 %i.be, label %middle.block, label %vector.body, !llvm.loop !404

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.af, %n.vec
  br i1 %cmp.n, label %sub_065, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.ah, 0
  br i1 %min.epilog.iters.check, label %.lr.ph85.preheader, label %vec.epilog.ph, !prof !410

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec107 = and i64 %i.af, -8                   ; 4 uses
  %i.bf = getelementptr i8, ptr %.0, i64 %n.vec107 ; 2 uses
  %i.bg = getelementptr i8, ptr %.pn57.lcssa, i64 %n.vec107
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index108 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next112, %vec.epilog.vector.body ] ; 3 uses
  %next.gep109 = getelementptr i8, ptr %.0, i64 %index108
  %next.gep110 = getelementptr i8, ptr %.pn57.lcssa, i64 %index108
  %wide.load111 = load <8 x i8>, ptr %next.gep110, align 1, !tbaa !31 ; 4 uses
  %i.bh = add <8 x i8> %wide.load111, splat (i8 -48)
  %i.bi = icmp ult <8 x i8> %i.bh, splat (i8 10)
  %i.bj = and <8 x i8> %wide.load111, splat (i8 -33)
  %i.bk = add <8 x i8> %i.bj, splat (i8 -65)
  %i.bl = icmp ult <8 x i8> %i.bk, splat (i8 26)
  %i.bm = or <8 x i1> %i.bi, %i.bl
  %i.bn = icmp eq <8 x i8> %wide.load111, splat (i8 45)
  %i.bo = or <8 x i1> %i.bn, %i.bm
  %i.bp = select <8 x i1> %i.bo, <8 x i8> %wide.load111, <8 x i8> splat (i8 95)
  store <8 x i8> %i.bp, ptr %next.gep109, align 1, !tbaa !31
  %index.next112 = add nuw i64 %index108, 8       ; 2 uses
  %i.bq = icmp eq i64 %index.next112, %n.vec107
  br i1 %i.bq, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !405

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n113 = icmp eq i64 %i.af, %n.vec107
  br i1 %cmp.n113, label %sub_065, label %.lr.ph85.preheader

.lr.ph85.preheader:                               ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.184.ph = phi ptr [ %.0, %iter.check ], [ %i.ai, %vec.epilog.iter.check ], [ %i.bf, %vec.epilog.middle.block ] ; 3 uses
  %.14483.ph = phi ptr [ %.pn57.lcssa, %iter.check ], [ %i.aj, %vec.epilog.iter.check ], [ %i.bg, %vec.epilog.middle.block ] ; 4 uses
  %.14483.ph117 = ptrtoaddr ptr %.14483.ph to i64 ; 2 uses
  %i.br = sub i64 %.pn57.lcssa101, %.14483.ph117
  %xtraiter = and i64 %i.br, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph85.prol.loopexit, label %.lr.ph85.prol

.lr.ph85.prol:                                    ; preds = %.lr.ph85.preheader
  %i.bs = getelementptr inbounds nuw i8, ptr %.14483.ph, i64 1
  %i.bt = load i8, ptr %.14483.ph, align 1, !tbaa !31 ; 4 uses
  %i.bu = add i8 %i.bt, -48
  %or.cond.i.prol = icmp ult i8 %i.bu, 10
  %i.bv = and i8 %i.bt, -33
  %i.bw = add i8 %i.bv, -65
  %i.bx = icmp ult i8 %i.bw, 26
  %i.by = or i1 %or.cond.i.prol, %i.bx
  %i.bz = icmp eq i8 %i.bt, 45
  %or.cond.not.prol = or i1 %i.bz, %i.by
  %spec.store.select.prol = select i1 %or.cond.not.prol, i8 %i.bt, i8 95
  %i.ca = getelementptr inbounds nuw i8, ptr %.184.ph, i64 1 ; 2 uses
  store i8 %spec.store.select.prol, ptr %.184.ph, align 1, !tbaa !31
  br label %.lr.ph85.prol.loopexit

.lr.ph85.prol.loopexit:                           ; preds = %.lr.ph85.prol, %.lr.ph85.preheader
  %.lcssa.unr = phi ptr [ poison, %.lr.ph85.preheader ], [ %i.ca, %.lr.ph85.prol ]
  %.184.unr = phi ptr [ %.184.ph, %.lr.ph85.preheader ], [ %i.ca, %.lr.ph85.prol ]
  %.14483.unr = phi ptr [ %.14483.ph, %.lr.ph85.preheader ], [ %i.bs, %.lr.ph85.prol ]
  %i.cb = add i64 %.pn57.lcssa101, -1
  %i.cc = icmp eq i64 %i.cb, %.14483.ph117
  br i1 %i.cc, label %sub_065, label %.lr.ph85

.lr.ph85:                                         ; preds = %.lr.ph85.prol.loopexit, %.lr.ph85
  %.184 = phi ptr [ %i.cu, %.lr.ph85 ], [ %.184.unr, %.lr.ph85.prol.loopexit ] ; 3 uses
  %.14483 = phi ptr [ %i.cm, %.lr.ph85 ], [ %.14483.unr, %.lr.ph85.prol.loopexit ] ; 3 uses
  %i.cd = getelementptr inbounds nuw i8, ptr %.14483, i64 1
  %i.ce = load i8, ptr %.14483, align 1, !tbaa !31 ; 4 uses
  %i.cf = add i8 %i.ce, -48
  %or.cond.i = icmp ult i8 %i.cf, 10
  %i.cg = and i8 %i.ce, -33
  %i.ch = add i8 %i.cg, -65
  %i.ci = icmp ult i8 %i.ch, 26
  %i.cj = or i1 %or.cond.i, %i.ci
  %i.ck = icmp eq i8 %i.ce, 45
  %or.cond.not = or i1 %i.ck, %i.cj
  %spec.store.select = select i1 %or.cond.not, i8 %i.ce, i8 95
  %i.cl = getelementptr inbounds nuw i8, ptr %.184, i64 1
  store i8 %spec.store.select, ptr %.184, align 1, !tbaa !31
  %i.cm = getelementptr inbounds nuw i8, ptr %.14483, i64 2 ; 2 uses
  %i.cn = load i8, ptr %i.cd, align 1, !tbaa !31  ; 4 uses
  %i.co = add i8 %i.cn, -48
  %or.cond.i.1 = icmp ult i8 %i.co, 10
  %i.cp = and i8 %i.cn, -33
  %i.cq = add i8 %i.cp, -65
  %i.cr = icmp ult i8 %i.cq, 26
  %i.cs = or i1 %or.cond.i.1, %i.cr
  %i.ct = icmp eq i8 %i.cn, 45
  %or.cond.not.1 = or i1 %i.ct, %i.cs
  %spec.store.select.1 = select i1 %or.cond.not.1, i8 %i.cn, i8 95
  %i.cu = getelementptr inbounds nuw i8, ptr %.184, i64 2 ; 2 uses
  store i8 %spec.store.select.1, ptr %i.cl, align 1, !tbaa !31
  %exitcond.not.1 = icmp eq ptr %i.cm, %.045.lcssa
  br i1 %exitcond.not.1, label %sub_065, label %.lr.ph85, !llvm.loop !406

sub_065:                                          ; preds = %.lr.ph85.prol.loopexit, %.lr.ph85, %middle.block, %vec.epilog.middle.block, %bb.k
  %.1.lcssa = phi ptr [ %.0, %bb.k ], [ %i.bf, %vec.epilog.middle.block ], [ %i.ai, %middle.block ], [ %.lcssa.unr, %.lr.ph85.prol.loopexit ], [ %i.cu, %.lr.ph85 ]
  store i8 0, ptr %.1.lcssa, align 1, !tbaa !31
  %i.cv = load ptr, ptr %2, align 8, !tbaa !408   ; 6 uses
  %i.cw = load i8, ptr %i.cv, align 1
  %.not89 = icmp eq i8 %i.cw, 95
  br i1 %.not89, label %.tail64, label %.tail64.thread

.tail64:                                          ; preds = %sub_065
  %i.cx = getelementptr inbounds nuw i8, ptr %i.cv, i64 1
  %i.cy = load i8, ptr %i.cx, align 1
  %i.cz = icmp eq i8 %i.cy, 0
  br i1 %i.cz, label %bb.l, label %.tail64.thread

bb.l:                                             ; preds = %.tail64
  store i64 28259018131533429, ptr %i.cv, align 1
  br label %.tail64.thread

.tail64.thread:                                   ; preds = %sub_065, %.tail64, %bb.l
  %i.da = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  store ptr %i.da, ptr %0, align 8, !tbaa !40
  %i.db = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.cv) #38 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #38
  store i64 %i.db, ptr %i.a, align 8, !tbaa !41
  %i.dc = icmp ugt i64 %i.db, 15
  br i1 %i.dc, label %.noexc.i, label %._crit_edge.i.i

.noexc.i:                                         ; preds = %.tail64.thread
  %i.dd = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0)
          to label %.noexc58 unwind label %bb.q   ; 2 uses

.noexc58:                                         ; preds = %.noexc.i
  store ptr %i.dd, ptr %0, align 8, !tbaa !37
  %i.de = load i64, ptr %i.a, align 8, !tbaa !41
  store i64 %i.de, ptr %i.da, align 8, !tbaa !31
  br label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %.noexc58, %.tail64.thread
  %i.df = phi ptr [ %i.dd, %.noexc58 ], [ %i.da, %.tail64.thread ] ; 2 uses
  switch i64 %i.db, label %bb.n [
    i64 1, label %bb.m
    i64 0, label %bb.o
  ]

bb.m:                                             ; preds = %._crit_edge.i.i
  %i.dg = load i8, ptr %i.cv, align 1, !tbaa !31
  store i8 %i.dg, ptr %i.df, align 1, !tbaa !31
  br label %bb.o

bb.n:                                             ; preds = %._crit_edge.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.df, ptr nonnull align 1 %i.cv, i64 %i.db, i1 false)
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.m, %._crit_edge.i.i
  %i.dh = load i64, ptr %i.a, align 8, !tbaa !41  ; 2 uses
  %i.di = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.dh, ptr %i.di, align 8, !tbaa !42
  %i.dj = load ptr, ptr %0, align 8, !tbaa !37
  %i.dk = getelementptr inbounds nuw i8, ptr %i.dj, i64 %i.dh
  store i8 0, ptr %i.dk, align 1, !tbaa !31
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #38
  %i.dl = load ptr, ptr %2, align 8, !tbaa !408   ; 3 uses
  %.not.i.i59 = icmp eq ptr %i.dl, %i.g
  %i.dm = icmp eq ptr %i.dl, null
  %or.cond.i60 = or i1 %.not.i.i59, %i.dm
  br i1 %or.cond.i60, label %_ZN2cv10AutoBufferIcLm1032EED2Ev.exit, label %bb.p

bb.p:                                             ; preds = %bb.o
  call void @_ZdaPv(ptr noundef nonnull %i.dl) #40
  br label %_ZN2cv10AutoBufferIcLm1032EED2Ev.exit

_ZN2cv10AutoBufferIcLm1032EED2Ev.exit:            ; preds = %bb.o, %bb.p
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #38
  ret void

bb.q:                                             ; preds = %.noexc.i
  %i.dn = landingpad { ptr, i32 }
          cleanup
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %.pn.pn = phi { ptr, i32 } [ %.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %i.dn, %bb.q ]
  %i.do = load ptr, ptr %2, align 8, !tbaa !408   ; 3 uses
  %.not.i.i61 = icmp eq ptr %i.do, %i.g
  %i.dp = icmp eq ptr %i.do, null
  %or.cond.i62 = or i1 %.not.i.i61, %i.dp
  br i1 %or.cond.i62, label %_ZN2cv10AutoBufferIcLm1032EED2Ev.exit63, label %bb.s

bb.s:                                             ; preds = %bb.r
  call void @_ZdaPv(ptr noundef nonnull %i.do) #40
  br label %_ZN2cv10AutoBufferIcLm1032EED2Ev.exit63

_ZN2cv10AutoBufferIcLm1032EED2Ev.exit63:          ; preds = %bb.r, %bb.s
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #38
  resume { ptr, i32 } %.pn.pn
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define noundef i32 @_ZNK2cv11FileStorage9getFormatEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(64) %0) local_unnamed_addr #26 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !233
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 76
  %i.d = load i32, ptr %i.c, align 4, !tbaa !121
  ret i32 %i.d
}

; Function Attrs: mustprogress uwtable
define void @_ZNK2cv11FileStorageixEPKc(ptr dead_on_unwind noalias writable sret(%"class.cv::FileNode") align 8 %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(64) %1, ptr nofree noundef readonly captures(address_is_null) %2) local_unnamed_addr #9 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.cv::FileNode", align 8      ; 5 uses
  %i.a = alloca i64, align 8                      ; 6 uses
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #38
  %i.b = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 7 uses
  store ptr %i.b, ptr %4, align 8, !tbaa !40
  %i.c = icmp eq ptr %2, null
  br i1 %i.c, label %.noexc, label %bb.b

.noexc:                                           ; preds = %bb.a
  call void @_ZSt19__throw_logic_errorPKc(ptr noundef nonnull @.str.128) #39
  unreachable

bb.b:                                             ; preds = %bb.a
  %i.d = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %2) #38 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #38
  store i64 %i.d, ptr %i.a, align 8, !tbaa !41
  %i.e = icmp ugt i64 %i.d, 15
  br i1 %i.e, label %.noexc.i, label %._crit_edge.i.i

.noexc.i:                                         ; preds = %bb.b
  %i.f = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0) ; 2 uses
  store ptr %i.f, ptr %4, align 8, !tbaa !37
  %i.g = load i64, ptr %i.a, align 8, !tbaa !41
  store i64 %i.g, ptr %i.b, align 8, !tbaa !31
  br label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %.noexc.i, %bb.b
  %i.h = phi ptr [ %i.f, %.noexc.i ], [ %i.b, %bb.b ] ; 2 uses
  switch i64 %i.d, label %bb.d [
    i64 1, label %bb.c
    i64 0, label %bb.e
  ]

bb.c:                                             ; preds = %._crit_edge.i.i
  %i.i = load i8, ptr %2, align 1, !tbaa !31
  store i8 %i.i, ptr %i.h, align 1, !tbaa !31
  br label %bb.e

bb.d:                                             ; preds = %._crit_edge.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.h, ptr nonnull align 1 %2, i64 %i.d, i1 false)
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c, %._crit_edge.i.i
  %i.j = load i64, ptr %i.a, align 8, !tbaa !41   ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i64 %i.j, ptr %i.k, align 8, !tbaa !42
  %i.l = load ptr, ptr %4, align 8, !tbaa !37
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 %i.j
  store i8 0, ptr %i.m, align 1, !tbaa !31
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #38
  call void @llvm.experimental.noalias.scope.decl(metadata !413)
  invoke void @_ZN2cv8FileNodeC1Ev(ptr noundef nonnull align 8 dereferenceable(24) %0)
          to label %.noexc6 unwind label %.loopexit.split-lp

end_hunk_0

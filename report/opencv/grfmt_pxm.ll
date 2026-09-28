Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/opencv/original/grfmt_pxm?download=true
inline.NumInlined: 466
inline.NumDeleted: 254
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 3
loop-unroll.NumUnrolled: 4
begin_hunk_0_@_ZN2cvL10ReadNumberERNS_12RLByteStreamEi:bb.a

.lr.ph47:                                         ; preds = %bb.a, %.loopexit
  %.02746 = phi i32 [ %.2, %.loopexit ], [ %i.a, %bb.a ] ; 4 uses
  %i.i = icmp eq i32 %.02746, 35
  br i1 %i.i, label %.preheader40, label %bb.d

.preheader40:                                     ; preds = %.lr.ph47, %.preheader40
  %i.j = tail call noundef i32 @_ZN2cv12RLByteStream7getByteEv(ptr noundef nonnull align 8 dereferenceable(65) %0)
  switch i32 %i.j, label %.preheader40 [
    i32 13, label %bb.c
    i32 10, label %bb.c
  ]

bb.c:                                             ; preds = %.preheader40, %.preheader40
  %i.k = tail call noundef i32 @_ZN2cv12RLByteStream7getByteEv(ptr noundef nonnull align 8 dereferenceable(65) %0)
  br label %.loopexit

bb.d:                                             ; preds = %.lr.ph47
  %i.l = tail call i32 @isspace(i32 noundef %.02746) #26
  %.not33 = icmp eq i32 %i.l, 0
  br i1 %.not33, label %bb.e, label %.lr.ph

.lr.ph:                                           ; preds = %bb.d, %.lr.ph
  %i.m = tail call noundef i32 @_ZN2cv12RLByteStream7getByteEv(ptr noundef nonnull align 8 dereferenceable(65) %0) ; 2 uses
  %i.n = tail call i32 @isspace(i32 noundef %i.m) #26
  %.not36 = icmp eq i32 %i.n, 0
  br i1 %.not36, label %.loopexit, label %.lr.ph, !llvm.loop !130

bb.e:                                             ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #23
  call void (ptr, ptr, ...) @_ZN2cv6formatB5cxx11EPKcz(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %2, ptr noundef nonnull @.str.24, i32 noundef %.02746, i32 noundef %.02746)
  invoke void @_ZN2cv5errorENS_5Error4CodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSB_i(i32 noundef -2, ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull @__func__._ZN2cvL10ReadNumberERNS_12RLByteStreamEi, ptr noundef nonnull @.str.1, i32 noundef 82) #28
          to label %bb.f unwind label %bb.g

bb.f:                                             ; preds = %bb.e
  unreachable

bb.g:                                             ; preds = %bb.e
  %i.o = landingpad { ptr, i32 }
          cleanup
  %i.p = load ptr, ptr %2, align 8, !tbaa !75     ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.r = icmp eq ptr %i.p, %i.q
  br i1 %i.r, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.g
  %i.s = load i64, ptr %i.q, align 8, !tbaa !76
  %i.t = add i64 %i.s, 1
  call void @_ZdlPvm(ptr noundef %i.p, i64 noundef %i.t) #24
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.g, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #23
  br label %bb.l

.loopexit:                                        ; preds = %.lr.ph, %bb.c
  %.2 = phi i32 [ %i.k, %bb.c ], [ %i.m, %.lr.ph ] ; 3 uses
  %i.u = add i32 %.2, -58
  %isdigit = icmp ult i32 %i.u, -10
  br i1 %isdigit, label %.lr.ph47, label %.preheader, !llvm.loop !131

.preheader.split:                                 ; preds = %.preheader
  %i.v = add nsw i32 %.027.lcssa, -48
  br label %.split50.us

.split.us:                                        ; preds = %.preheader.split.us
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #23
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #23
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull @.str.25, ptr noundef nonnull align 1 dereferenceable(1) %4)
          to label %bb.h unwind label %bb.j

bb.h:                                             ; preds = %.split.us
  invoke void @_ZN2cv5errorENS_5Error4CodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSB_i(i32 noundef -215, ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull @__func__._ZN2cvL10ReadNumberERNS_12RLByteStreamEi, ptr noundef nonnull @.str.1, i32 noundef 92) #28
          to label %bb.i unwind label %bb.k

bb.i:                                             ; preds = %bb.h
  unreachable

bb.j:                                             ; preds = %.split.us
  %i.w = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit39

bb.k:                                             ; preds = %bb.h
  %i.x = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.y = load ptr, ptr %3, align 8, !tbaa !75     ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.aa = icmp eq ptr %i.y, %i.z
  br i1 %i.aa, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit39, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i37

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i37: ; preds = %bb.k
  %i.ab = load i64, ptr %i.z, align 8, !tbaa !76
  %i.ac = add i64 %i.ab, 1
  call void @_ZdlPvm(ptr noundef %i.y, i64 noundef %i.ac) #24
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit39

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit39: ; preds = %bb.k, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i37, %bb.j
  %.pn = phi { ptr, i32 } [ %i.w, %bb.j ], [ %i.x, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i37 ], [ %i.x, %bb.k ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #23
  br label %bb.l

.split50.us.loopexit:                             ; preds = %bb.b
  %i.ad = trunc nuw nsw i64 %i.f to i32
  br label %.split50.us

.split50.us:                                      ; preds = %.preheader.split, %.split50.us.loopexit
  %.us-phi = phi i32 [ %i.v, %.preheader.split ], [ %i.ad, %.split50.us.loopexit ]
  ret i32 %.us-phi

bb.l:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit39, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %.pn34 = phi { ptr, i32 } [ %i.o, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit39 ]
  resume { ptr, i32 } %.pn34
}

declare noundef i64 @_ZN2cv11RBaseStream6getPosEv(ptr noundef nonnull align 8 dereferenceable(65)) local_unnamed_addr #1

; Function Attrs: nounwind memory(none)
declare i32 @llvm.eh.typeid.for.p0(ptr) #12

declare noundef ptr @_ZN2cv5utils7logging8internal15getGlobalLogTagEv() local_unnamed_addr #1

; Function Attrs: mustprogress uwtable
declare void @_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEC1Ev(ptr noundef nonnull align 8 dereferenceable(128)) unnamed_addr #0 align 2

declare void @_ZN2cv5utils7logging8internal17writeLogMessageExENS1_8LogLevelEPKcS5_iS5_S5_(i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress uwtable
declare void @_ZNKSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8, ptr noundef nonnull align 8 dereferenceable(128)) local_unnamed_addr #0 align 2

; Function Attrs: mustprogress nounwind uwtable
declare void @_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev(ptr noundef nonnull align 8 dereferenceable(128)) unnamed_addr #2 align 2

declare void @__cxa_rethrow() local_unnamed_addr

declare void @__cxa_end_catch() local_unnamed_addr

; Function Attrs: mustprogress uwtable
define hidden noundef zeroext i1 @_ZN2cv10PxMDecoder8readDataERNS_3MatE(ptr noundef nonnull align 8 dereferenceable(1840) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(208) %1) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca [256 x %"struct.cv::PaletteEntry"], align 16 ; 6 uses
  %i.a = alloca [256 x i8], align 16              ; 10 uses
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %4 = alloca %"class.std::allocator", align 1    ; 3 uses
  %5 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %6 = alloca %"class.std::allocator", align 1    ; 3 uses
  %7 = alloca %"class.cv::AutoBuffer", align 8    ; 9 uses
  %8 = alloca %"class.cv::AutoBuffer", align 8    ; 9 uses
  %9 = alloca %"class.cv::AutoBuffer", align 8    ; 9 uses
  %10 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %11 = alloca %"class.std::allocator", align 1   ; 3 uses
  %12 = alloca %"class.std::__cxx11::basic_stringstream", align 8 ; 8 uses
  %13 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %i.b = load i32, ptr %1, align 8, !tbaa !93
  %.fr291 = freeze i32 %i.b
  %i.c = and i32 %.fr291, 4064
  %.not241 = icmp eq i32 %i.c, 0                  ; 4 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !94   ; 5 uses
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 128 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #23
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.h = load i32, ptr %i.g, align 8, !tbaa !84   ; 2 uses
  %i.i = shl i32 %i.h, 2
  %i.j = and i32 %i.i, 124
  %i.k = zext nneg i32 %i.j to i64
  %i.l = lshr i64 1275511473185297, %i.k
  %i.m = trunc i64 %i.l to i32
  %i.n = and i32 %i.m, 15                         ; 4 uses
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 13 uses
  %i.p = load i32, ptr %i.o, align 8, !tbaa !85   ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 1816 ; 4 uses
  %i.r = load i32, ptr %i.q, align 8, !tbaa !64
  %i.s = mul nsw i32 %i.r, %i.p
  %i.t = mul nsw i32 %i.s, %i.n
  %i.u = add i32 %i.t, 7                          ; 2 uses
  %i.v = lshr i32 %i.u, 3                         ; 5 uses
  %i.w = lshr i32 %i.h, 5
  %i.x = and i32 %i.w, 127
  %i.y = add nuw nsw i32 %i.x, 1
  %i.z = mul i32 %i.y, %i.p                       ; 9 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 1824 ; 2 uses
  %i.ab = load i64, ptr %i.aa, align 8, !tbaa !62
  %i.ac = icmp slt i64 %i.ab, 0
  br i1 %i.ac, label %bb.cu, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 720 ; 8 uses
  %i.ae = tail call noundef zeroext i1 @_ZN2cv11RBaseStream8isOpenedEv(ptr noundef nonnull align 8 dereferenceable(65) %i.ad)
  br i1 %i.ae, label %bb.c, label %bb.cu

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #23
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(256) %i.a, i8 0, i64 256, i1 false)
  %i.af = icmp eq i32 %i.n, 1                     ; 2 uses
  br i1 %i.af, label %bb.d, label %bb.k

bb.d:                                             ; preds = %bb.c
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 1836
  %i.ah = load i32, ptr %i.ag, align 4, !tbaa !66 ; 5 uses
  %i.ai = add i32 %i.ah, -1
  %or.cond195 = icmp ult i32 %i.ai, 255
  br i1 %or.cond195, label %.lr.ph, label %bb.e

.lr.ph:                                           ; preds = %bb.d
  %i.aj = load i32, ptr %i.q, align 8, !tbaa !64  ; 2 uses
  %i.ak = icmp eq i32 %i.aj, 1
  %i.al = select i1 %i.ak, i32 255, i32 0         ; 3 uses
  %i.am = add nuw nsw i32 %i.ah, 1                ; 2 uses
  %wide.trip.count = zext nneg i32 %i.am to i64   ; 2 uses
  %xtraiter = and i64 %wide.trip.count, 1
  %unroll_iter = and i64 %wide.trip.count, 510
  br label %bb.j

bb.e:                                             ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #23
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #23
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull @.str.3, ptr noundef nonnull align 1 dereferenceable(1) %4)
          to label %bb.f unwind label %bb.h

bb.f:                                             ; preds = %bb.e
  invoke void @_ZN2cv5errorENS_5Error4CodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSB_i(i32 noundef -215, ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull @__func__._ZN2cv10PxMDecoder8readDataERNS_3MatE, ptr noundef nonnull @.str.1, i32 noundef 227) #28
          to label %bb.g unwind label %bb.i

bb.g:                                             ; preds = %bb.f
  unreachable

bb.h:                                             ; preds = %bb.e
  %i.an = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

bb.i:                                             ; preds = %bb.f
  %i.ao = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ap = load ptr, ptr %3, align 8, !tbaa !75    ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.ar = icmp eq ptr %i.ap, %i.aq
  br i1 %i.ar, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.i
  %i.as = load i64, ptr %i.aq, align 8, !tbaa !76
  %i.at = add i64 %i.as, 1
  call void @_ZdlPvm(ptr noundef %i.ap, i64 noundef %i.at) #24
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %bb.h
  %.pn = phi { ptr, i32 } [ %i.an, %bb.h ], [ %i.ao, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ], [ %i.ao, %bb.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #23
  br label %bb.ct

._crit_edge.unr-lcssa:                            ; preds = %bb.j
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge.unr-lcssa
  %lcmp.mod375 = trunc i32 %i.am to i1
  tail call void @llvm.assume(i1 %lcmp.mod375)
  %i.au = trunc i64 %indvars.iv.next.1 to i32
  %i.av = mul i32 %i.au, 255
  %i.aw = udiv i32 %i.av, %i.ah
  %i.ax = xor i32 %i.al, %i.aw
  %i.ay = trunc i32 %i.ax to i8
  %i.az = getelementptr inbounds nuw i8, ptr %i.a, i64 %indvars.iv.next.1
  store i8 %i.ay, ptr %i.az, align 1, !tbaa !76
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.unr-lcssa, %.epil.preheader
  %i.ba = icmp eq i32 %i.aj, 1                    ; 2 uses
  %i.bb = select i1 %i.ba, i32 1, i32 8
  call void @_ZN2cv15FillGrayPaletteEPNS_12PaletteEntryEib(ptr noundef nonnull %2, i32 noundef %i.bb, i1 noundef zeroext %i.ba)
  br label %bb.k

bb.j:                                             ; preds = %bb.j, %.lr.ph
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next.1, %bb.j ] ; 4 uses
  %niter = phi i64 [ 0, %.lr.ph ], [ %niter.next.1, %bb.j ]
  %i.bc = trunc i64 %indvars.iv to i32
  %i.bd = mul i32 %i.bc, 255
  %i.be = udiv i32 %i.bd, %i.ah
  %i.bf = xor i32 %i.al, %i.be
  %i.bg = trunc i32 %i.bf to i8
  %i.bh = getelementptr inbounds nuw i8, ptr %i.a, i64 %indvars.iv
  store i8 %i.bg, ptr %i.bh, align 2, !tbaa !76
  %indvars.iv.next = or disjoint i64 %indvars.iv, 1 ; 2 uses
  %i.bi = trunc i64 %indvars.iv.next to i32
  %i.bj = mul i32 %i.bi, 255
  %i.bk = udiv i32 %i.bj, %i.ah
  %i.bl = xor i32 %i.al, %i.bk
  %i.bm = trunc i32 %i.bl to i8
  %i.bn = getelementptr inbounds nuw i8, ptr %i.a, i64 %indvars.iv.next
  store i8 %i.bm, ptr %i.bn, align 1, !tbaa !76
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 3 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge.unr-lcssa, label %bb.j, !llvm.loop !132

bb.k:                                             ; preds = %._crit_edge, %bb.c
  %i.bo = load i64, ptr %i.aa, align 8, !tbaa !62
  invoke void @_ZN2cv11RBaseStream6setPosEl(ptr noundef nonnull align 8 dereferenceable(65) %i.ad, i64 noundef %i.bo)
          to label %bb.l unwind label %bb.m

bb.l:                                             ; preds = %bb.k
  %i.bp = load i32, ptr %i.q, align 8, !tbaa !64
  switch i32 %i.bp, label %bb.br [
    i32 1, label %bb.n
    i32 8, label %bb.ao
    i32 24, label %bb.ao
  ]

bb.m:                                             ; preds = %bb.k
  %i.bq = landingpad { ptr, i32 }
          catch ptr @_ZTIN2cv9ExceptionE
          catch ptr null
  br label %bb.bw

bb.n:                                             ; preds = %bb.l
  %i.br = load i32, ptr %i.g, align 8, !tbaa !84
  %i.bs = and i32 %i.br, 31
  %i.bt = icmp eq i32 %i.bs, 0
  br i1 %i.bt, label %bb.t, label %bb.o

bb.o:                                             ; preds = %bb.n
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #23
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #23
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull @.str.4, ptr noundef nonnull align 1 dereferenceable(1) %6)
          to label %bb.p unwind label %bb.r

bb.p:                                             ; preds = %bb.o
  invoke void @_ZN2cv5errorENS_5Error4CodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSB_i(i32 noundef -215, ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull @__func__._ZN2cv10PxMDecoder8readDataERNS_3MatE, ptr noundef nonnull @.str.1, i32 noundef 243) #28
          to label %bb.q unwind label %bb.s

bb.q:                                             ; preds = %bb.p
  unreachable

bb.r:                                             ; preds = %bb.o
  %i.bu = landingpad { ptr, i32 }
          catch ptr @_ZTIN2cv9ExceptionE
          catch ptr null
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit198

bb.s:                                             ; preds = %bb.p
  %i.bv = landingpad { ptr, i32 }
          catch ptr @_ZTIN2cv9ExceptionE
          catch ptr null                          ; 2 uses
  %i.bw = load ptr, ptr %5, align 8, !tbaa !75    ; 2 uses
  %i.bx = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  %i.by = icmp eq ptr %i.bw, %i.bx
  br i1 %i.by, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit198, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i196

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i196: ; preds = %bb.s
  %i.bz = load i64, ptr %i.bx, align 8, !tbaa !76
  %i.ca = add i64 %i.bz, 1
  call void @_ZdlPvm(ptr noundef %i.bw, i64 noundef %i.ca) #24
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit198

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit198: ; preds = %bb.s, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i196, %bb.r
  %.pn175 = phi { ptr, i32 } [ %i.bu, %bb.r ], [ %i.bv, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i196 ], [ %i.bv, %bb.s ]
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #23
  br label %bb.bw

bb.t:                                             ; preds = %bb.n
  %i.cb = getelementptr inbounds nuw i8, ptr %0, i64 1832
  %i.cc = load i8, ptr %i.cb, align 8, !tbaa !65, !range !144, !noundef !145
  %i.cd = trunc nuw i8 %i.cc to i1
  br i1 %i.cd, label %bb.ae, label %bb.u

bb.u:                                             ; preds = %bb.t
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #23
  %i.ce = load i32, ptr %i.o, align 8, !tbaa !85  ; 2 uses
  %i.cf = sext i32 %i.ce to i64                   ; 2 uses
  %i.cg = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 4 uses
  store ptr %i.cg, ptr %7, align 8, !tbaa !147
  %i.ch = getelementptr inbounds nuw i8, ptr %7, i64 8
  %.not.i.i = icmp ugt i32 %i.ce, 1032
  store i64 %i.cf, ptr %i.ch, align 8, !tbaa !148
  br i1 %.not.i.i, label %bb.v, label %_ZN2cv10AutoBufferIhLm1032EEC2Em.exit

bb.v:                                             ; preds = %bb.u
  %i.ci = invoke noalias noundef nonnull ptr @_Znam(i64 noundef %i.cf) #27
          to label %.noexc unwind label %bb.z     ; 2 uses

.noexc:                                           ; preds = %bb.v
  store ptr %i.ci, ptr %7, align 8, !tbaa !147
  br label %_ZN2cv10AutoBufferIhLm1032EEC2Em.exit

_ZN2cv10AutoBufferIhLm1032EEC2Em.exit:            ; preds = %.noexc, %bb.u
  %i.cj = phi ptr [ %i.ci, %.noexc ], [ %i.cg, %bb.u ] ; 4 uses
  %i.ck = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 3 uses
  %i.cl = load i32, ptr %i.ck, align 4, !tbaa !86
  %i.cm = icmp sgt i32 %i.cl, 0
  br i1 %i.cm, label %.preheader.lr.ph, label %._crit_edge276

.preheader.lr.ph:                                 ; preds = %_ZN2cv10AutoBufferIhLm1032EEC2Em.exit
  br i1 %.not241, label %.preheader.us, label %.preheader

.preheader.us:                                    ; preds = %.preheader.lr.ph, %bb.x
  %.0144275.us = phi i32 [ %i.cx, %bb.x ], [ 0, %.preheader.lr.ph ]
  %.0163274.us = phi ptr [ %i.cz, %bb.x ], [ %i.e, %.preheader.lr.ph ] ; 2 uses
  %i.cn = load i32, ptr %i.o, align 8, !tbaa !85  ; 2 uses
  %i.co = icmp sgt i32 %i.cn, 0
  br i1 %i.co, label %.lr.ph272.us, label %._crit_edge273.us

.lr.ph272.us:                                     ; preds = %.preheader.us, %bb.w
  %indvars.iv317 = phi i64 [ %indvars.iv.next318, %bb.w ], [ 0, %.preheader.us ] ; 2 uses
  %i.cp = invoke fastcc noundef i32 @_ZN2cvL10ReadNumberERNS_12RLByteStreamEi(ptr noundef nonnull align 8 dereferenceable(65) %i.ad, i32 noundef 1)
          to label %bb.w unwind label %.split.us

bb.w:                                             ; preds = %.lr.ph272.us
  %i.cq = icmp ne i32 %i.cp, 0
  %i.cr = zext i1 %i.cq to i8
  %i.cs = getelementptr inbounds nuw i8, ptr %i.cj, i64 %indvars.iv317
  store i8 %i.cr, ptr %i.cs, align 1, !tbaa !76
  %indvars.iv.next318 = add nuw nsw i64 %indvars.iv317, 1 ; 2 uses
  %i.ct = load i32, ptr %i.o, align 8, !tbaa !85  ; 2 uses
  %i.cu = sext i32 %i.ct to i64
  %i.cv = icmp slt i64 %indvars.iv.next318, %i.cu
  br i1 %i.cv, label %.lr.ph272.us, label %._crit_edge273.us, !llvm.loop !133

._crit_edge273.us:                                ; preds = %bb.w, %.preheader.us
  %.lcssa.us = phi i32 [ %i.cn, %.preheader.us ], [ %i.ct, %bb.w ]
  %i.cw = invoke noundef ptr @_ZN2cv12FillGrayRow8EPhS0_iS0_(ptr noundef %.0163274.us, ptr noundef nonnull %i.cj, i32 noundef %.lcssa.us, ptr noundef nonnull %i.a)
          to label %bb.x unwind label %.split278.us ; 0 uses

bb.x:                                             ; preds = %._crit_edge273.us
  %i.cx = add nuw nsw i32 %.0144275.us, 1         ; 2 uses
  %i.cy = load i64, ptr %i.f, align 8, !tbaa !92
  %i.cz = getelementptr inbounds nuw i8, ptr %.0163274.us, i64 %i.cy
  %i.da = load i32, ptr %i.ck, align 4, !tbaa !86
  %i.db = icmp slt i32 %i.cx, %i.da
  br i1 %i.db, label %.preheader.us, label %._crit_edge276, !llvm.loop !134

.split.us:                                        ; preds = %.lr.ph272.us
  %i.dc = landingpad { ptr, i32 }
          catch ptr @_ZTIN2cv9ExceptionE
          catch ptr null
  br label %bb.ac

.split278.us:                                     ; preds = %._crit_edge273.us
  %i.dd = landingpad { ptr, i32 }
          catch ptr @_ZTIN2cv9ExceptionE
          catch ptr null
  br label %bb.ac

.preheader:                                       ; preds = %.preheader.lr.ph, %bb.ab
  %.0144275 = phi i32 [ %i.dt, %bb.ab ], [ 0, %.preheader.lr.ph ]
  %.0163274 = phi ptr [ %i.dv, %bb.ab ], [ %i.e, %.preheader.lr.ph ] ; 2 uses
  %i.de = load i32, ptr %i.o, align 8, !tbaa !85  ; 2 uses
  %i.df = icmp sgt i32 %i.de, 0
  br i1 %i.df, label %.lr.ph272, label %._crit_edge273

._crit_edge276:                                   ; preds = %bb.ab, %bb.x, %_ZN2cv10AutoBufferIhLm1032EEC2Em.exit
  %i.dg = load ptr, ptr %7, align 8, !tbaa !147   ; 3 uses
  %.not.i.i199 = icmp eq ptr %i.dg, %i.cg
  %i.dh = icmp eq ptr %i.dg, null
  %or.cond.i = or i1 %.not.i.i199, %i.dh
  br i1 %or.cond.i, label %_ZN2cv10AutoBufferIhLm1032EED2Ev.exit, label %bb.y

bb.y:                                             ; preds = %._crit_edge276
  call void @_ZdaPv(ptr noundef nonnull %i.dg) #24
  br label %_ZN2cv10AutoBufferIhLm1032EED2Ev.exit

_ZN2cv10AutoBufferIhLm1032EED2Ev.exit:            ; preds = %._crit_edge276, %bb.y
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #23
  br label %bb.cs

bb.z:                                             ; preds = %bb.v
  %i.di = landingpad { ptr, i32 }
          catch ptr @_ZTIN2cv9ExceptionE
          catch ptr null
  br label %_ZN2cv10AutoBufferIhLm1032EED2Ev.exit202

._crit_edge273:                                   ; preds = %bb.aa, %.preheader
  %.lcssa = phi i32 [ %i.de, %.preheader ], [ %i.do, %bb.aa ]
  %i.dj = invoke noundef ptr @_ZN2cv13FillColorRow8EPhS0_iPNS_12PaletteEntryE(ptr noundef %.0163274, ptr noundef nonnull %i.cj, i32 noundef %.lcssa, ptr noundef nonnull %2)
          to label %bb.ab unwind label %.split278 ; 0 uses

.lr.ph272:                                        ; preds = %.preheader, %bb.aa
  %indvars.iv314 = phi i64 [ %indvars.iv.next315, %bb.aa ], [ 0, %.preheader ] ; 2 uses
  %i.dk = invoke fastcc noundef i32 @_ZN2cvL10ReadNumberERNS_12RLByteStreamEi(ptr noundef nonnull align 8 dereferenceable(65) %i.ad, i32 noundef 1)
          to label %bb.aa unwind label %.split

bb.aa:                                            ; preds = %.lr.ph272
  %i.dl = icmp ne i32 %i.dk, 0
  %i.dm = zext i1 %i.dl to i8
  %i.dn = getelementptr inbounds nuw i8, ptr %i.cj, i64 %indvars.iv314
  store i8 %i.dm, ptr %i.dn, align 1, !tbaa !76
  %indvars.iv.next315 = add nuw nsw i64 %indvars.iv314, 1 ; 2 uses
  %i.do = load i32, ptr %i.o, align 8, !tbaa !85  ; 2 uses
  %i.dp = sext i32 %i.do to i64
  %i.dq = icmp slt i64 %indvars.iv.next315, %i.dp
  br i1 %i.dq, label %.lr.ph272, label %._crit_edge273, !llvm.loop !133
end_hunk_0

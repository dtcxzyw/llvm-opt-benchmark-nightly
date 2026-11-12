Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/cvc5/original/node_value?download=true
inline.NumInlined: 398
inline.NumDeleted: 224
begin_hunk_0_@_ZNK4cvc58internal4expr9NodeValue8toStringB5cxx11Ev:bb.a
  %i.am = getelementptr inbounds nuw i8, ptr %3, i64 96
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %i.am)
          to label %_ZNKSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv.exit unwind label %bb.j

_ZNKSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv.exit: ; preds = %bb.k, %bb.i
  %i.an = load ptr, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, align 8 ; 2 uses
  store ptr %i.an, ptr %3, align 8, !tbaa !13
  %i.ao = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 64), align 8
  %i.ap = getelementptr i8, ptr %i.an, i64 -24
  %i.aq = load i64, ptr %i.ap, align 8
  %i.ar = getelementptr inbounds i8, ptr %3, i64 %i.aq
  store ptr %i.ao, ptr %i.ar, align 8, !tbaa !13
  %i.as = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 72), align 8
  store ptr %i.as, ptr %i.a, align 8, !tbaa !13
  %i.at = getelementptr inbounds nuw i8, ptr %3, i64 24 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEEE, i64 16), ptr %i.at, align 8, !tbaa !13
  %i.au = getelementptr inbounds nuw i8, ptr %3, i64 96
  %i.av = load ptr, ptr %i.au, align 8, !tbaa !53 ; 2 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %3, i64 112 ; 2 uses
  %i.ax = icmp eq ptr %i.av, %i.aw
  br i1 %i.ax, label %_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i: ; preds = %_ZNKSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv.exit
  %i.ay = load i64, ptr %i.aw, align 8, !tbaa !15
  %i.az = add i64 %i.ay, 1
  call void @_ZdlPvm(ptr noundef %i.av, i64 noundef %i.az) #16
  br label %_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev.exit

_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev.exit: ; preds = %_ZNKSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVSt15basic_streambufIcSt11char_traitsIcEE, i64 16), ptr %i.at, align 8, !tbaa !13
  %i.ba = getelementptr inbounds nuw i8, ptr %3, i64 80
  call void @_ZNSt6localeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.ba) #15
  %i.bb = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 16), align 8 ; 2 uses
  store ptr %i.bb, ptr %3, align 8, !tbaa !13
  %i.bc = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 24), align 8
  %i.bd = getelementptr i8, ptr %i.bb, i64 -24
  %i.be = load i64, ptr %i.bd, align 8
  %i.bf = getelementptr inbounds i8, ptr %3, i64 %i.be
  store ptr %i.bc, ptr %i.bf, align 8, !tbaa !13
  %i.bg = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i64 0, ptr %i.bg, align 8, !tbaa !55
  %i.bh = getelementptr inbounds nuw i8, ptr %3, i64 128
  call void @_ZNSt8ios_baseD2Ev(ptr noundef nonnull align 8 dead_on_return(264) dereferenceable(264) %i.bh) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #15
  ret void

.body:                                            ; preds = %bb.j, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i, %bb.f, %bb.g
  %eh.lpad-body = phi { ptr, i32 } [ %i.o, %bb.f ], [ %i.o, %bb.g ], [ %i.ah, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i ], [ %i.ah, %bb.j ]
  call void @_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev(ptr noundef nonnull align 8 dereferenceable(128) %3) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #15
  resume { ptr, i32 } %eh.lpad-body
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

; Function Attrs: mustprogress uwtable
declare void @_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEC1Ev(ptr noundef nonnull align 8 dereferenceable(128)) unnamed_addr #0 align 2

; Function Attrs: mustprogress uwtable
define void @_ZNK4cvc58internal4expr9NodeValue8toStreamERSo(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.cvc5::internal::NodeTemplate", align 8 ; 2 uses
  %i.a = load i64, ptr %0, align 8                ; 2 uses
  %i.b = and i64 %i.a, 1152920405095219200
  %i.c = icmp eq i64 %i.b, 0                      ; 3 uses
  br i1 %i.c, label %bb.b, label %_ZN4cvc58internal4expr9NodeValue13RefCountGuardC2EPKS2_.exit

bb.b:                                             ; preds = %bb.a
  %i.d = or disjoint i64 %i.a, 1099511627776
  store i64 %i.d, ptr %0, align 8
  br label %_ZN4cvc58internal4expr9NodeValue13RefCountGuardC2EPKS2_.exit

_ZN4cvc58internal4expr9NodeValue13RefCountGuardC2EPKS2_.exit: ; preds = %bb.a, %bb.b
  %i.e = invoke noundef ptr @_ZN4cvc58internal7Printer10getPrinterERSo(ptr noundef nonnull align 8 dereferenceable(8) %1)
          to label %bb.c unwind label %bb.f       ; 2 uses

bb.c:                                             ; preds = %_ZN4cvc58internal4expr9NodeValue13RefCountGuardC2EPKS2_.exit
  store ptr %0, ptr %2, align 8, !tbaa !11
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !13
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  %i.h = load ptr, ptr %i.g, align 8
  invoke void %i.h(ptr noundef nonnull align 8 dereferenceable(8) %i.e, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 %2)
          to label %bb.d unwind label %bb.f

bb.d:                                             ; preds = %bb.c
  br i1 %i.c, label %bb.e, label %_ZN4cvc58internal4expr9NodeValue13RefCountGuardD2Ev.exit

bb.e:                                             ; preds = %bb.d
  %i.i = load i64, ptr %0, align 8                ; 2 uses
  %i.j = add i64 %i.i, 1152920405095219200
  %i.k = and i64 %i.j, 1152920405095219200
  %i.l = and i64 %i.i, -1152920405095219201
  %i.m = or disjoint i64 %i.k, %i.l
  store i64 %i.m, ptr %0, align 8
  br label %_ZN4cvc58internal4expr9NodeValue13RefCountGuardD2Ev.exit

_ZN4cvc58internal4expr9NodeValue13RefCountGuardD2Ev.exit: ; preds = %bb.d, %bb.e
  ret void

bb.f:                                             ; preds = %_ZN4cvc58internal4expr9NodeValue13RefCountGuardC2EPKS2_.exit, %bb.c
  %i.n = landingpad { ptr, i32 }
          cleanup
  br i1 %i.c, label %bb.g, label %_ZN4cvc58internal4expr9NodeValue13RefCountGuardD2Ev.exit6

bb.g:                                             ; preds = %bb.f
  %i.o = load i64, ptr %0, align 8                ; 2 uses
  %i.p = add i64 %i.o, 1152920405095219200
  %i.q = and i64 %i.p, 1152920405095219200
  %i.r = and i64 %i.o, -1152920405095219201
  %i.s = or disjoint i64 %i.q, %i.r
  store i64 %i.s, ptr %0, align 8
  br label %_ZN4cvc58internal4expr9NodeValue13RefCountGuardD2Ev.exit6

_ZN4cvc58internal4expr9NodeValue13RefCountGuardD2Ev.exit6: ; preds = %bb.f, %bb.g
  resume { ptr, i32 } %i.n
}

declare i32 @__gxx_personality_v0(...)

; Function Attrs: mustprogress nounwind uwtable
declare void @_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev(ptr noundef nonnull align 8 dereferenceable(128)) unnamed_addr #2 align 2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

declare noundef ptr @_ZN4cvc58internal7Printer10getPrinterERSo(ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #3

; Function Attrs: mustprogress uwtable
define void @_ZNK4cvc58internal4expr9NodeValue8printAstERSoi(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, i32 noundef %2) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i8, align 1                       ; 4 uses
  %i.b = alloca i8, align 1                       ; 4 uses
  %i.c = alloca i8, align 1                       ; 4 uses
  %i.d = alloca i8, align 1                       ; 4 uses
  %i.e = alloca i8, align 1                       ; 4 uses
  %i.f = alloca i8, align 1                       ; 4 uses
  %i.g = load i64, ptr %0, align 8                ; 2 uses
  %i.h = and i64 %i.g, 1152920405095219200
  %i.i = icmp eq i64 %i.h, 0                      ; 3 uses
  br i1 %i.i, label %bb.b, label %_ZN4cvc58internal4expr9NodeValue13RefCountGuardC2EPKS2_.exit

bb.b:                                             ; preds = %bb.a
  %i.j = or disjoint i64 %i.g, 1099511627776
  store i64 %i.j, ptr %0, align 8
  br label %_ZN4cvc58internal4expr9NodeValue13RefCountGuardC2EPKS2_.exit

_ZN4cvc58internal4expr9NodeValue13RefCountGuardC2EPKS2_.exit: ; preds = %bb.a, %bb.b
  %i.k = icmp sgt i32 %2, 0                       ; 2 uses
  br i1 %i.k, label %.lr.ph.i, label %_ZN4cvc58internal4expr9NodeValue6indentERSoi.exit

.lr.ph.i:                                         ; preds = %_ZN4cvc58internal4expr9NodeValue13RefCountGuardC2EPKS2_.exit, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit.i
  %.03.i = phi i32 [ %i.t, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit.i ], [ 0, %_ZN4cvc58internal4expr9NodeValue13RefCountGuardC2EPKS2_.exit ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  store i8 32, ptr %i.f, align 1, !tbaa !15
  %i.l = load ptr, ptr %1, align 8, !tbaa !13
  %i.m = getelementptr i8, ptr %i.l, i64 -24
  %i.n = load i64, ptr %i.m, align 8
  %i.o = getelementptr inbounds i8, ptr %1, i64 %i.n
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 16
  %i.q = load i64, ptr %i.p, align 8, !tbaa !65
  %.not.i.i = icmp eq i64 %i.q, 0
  br i1 %.not.i.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %.lr.ph.i
  %i.r = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull %i.f, i64 noundef 1)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 0 uses

bb.d:                                             ; preds = %.lr.ph.i
  %i.s = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %1, i8 noundef signext 32)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit.i: ; preds = %bb.d, %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  %i.t = add nuw nsw i32 %.03.i, 1                ; 2 uses
  %exitcond.not.i = icmp eq i32 %i.t, %2
  br i1 %exitcond.not.i, label %_ZN4cvc58internal4expr9NodeValue6indentERSoi.exit, label %.lr.ph.i, !llvm.loop !56

_ZN4cvc58internal4expr9NodeValue6indentERSoi.exit: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit.i, %_ZN4cvc58internal4expr9NodeValue13RefCountGuardC2EPKS2_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  store i8 40, ptr %i.e, align 1, !tbaa !15
  %i.u = load ptr, ptr %1, align 8, !tbaa !13
  %i.v = getelementptr i8, ptr %i.u, i64 -24
  %i.w = load i64, ptr %i.v, align 8
  %i.x = getelementptr inbounds i8, ptr %1, i64 %i.w
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 16
  %i.z = load i64, ptr %i.y, align 8, !tbaa !65
  %.not.i = icmp eq i64 %i.z, 0
  br i1 %.not.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %_ZN4cvc58internal4expr9NodeValue6indentERSoi.exit
  %i.aa = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull %i.e, i64 noundef 1)
          to label %bb.g unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 0 uses

bb.f:                                             ; preds = %_ZN4cvc58internal4expr9NodeValue6indentERSoi.exit
  %i.ab = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %1, i8 noundef signext 40)
          to label %bb.g unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 0 uses

bb.g:                                             ; preds = %bb.f, %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 6 uses
  %i.ad = load i64, ptr %i.ac, align 8
  %i.ae = trunc i64 %i.ad to i32
  %i.af = and i32 %i.ae, 1023                     ; 2 uses
  %i.ag = icmp eq i32 %i.af, 1023
  %i.ah = select i1 %i.ag, i32 -1, i32 %i.af
  %i.ai = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN4cvc58internal4kindlsERSoNS1_6Kind_tE(ptr noundef nonnull align 8 dereferenceable(8) %1, i32 noundef %i.ah)
          to label %bb.h unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 0 uses

bb.h:                                             ; preds = %bb.g
  %i.aj = load i64, ptr %i.ac, align 8
  %i.ak = trunc i64 %i.aj to i32
  %i.al = and i32 %i.ak, 1023                     ; 2 uses
  %i.am = icmp eq i32 %i.al, 1023
  %i.an = select i1 %i.am, i32 -1, i32 %i.al
  %i.ao = invoke noundef i32 @_ZN4cvc58internal4kind10metaKindOfENS1_6Kind_tE(i32 noundef %i.an)
          to label %_ZNK4cvc58internal4expr9NodeValue11getMetaKindEv.exit unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

_ZNK4cvc58internal4expr9NodeValue11getMetaKindEv.exit: ; preds = %bb.h
  %i.ap = icmp eq i32 %i.ao, 0
  br i1 %i.ap, label %bb.j, label %bb.i

bb.i:                                             ; preds = %_ZNK4cvc58internal4expr9NodeValue11getMetaKindEv.exit
  %i.aq = load i64, ptr %i.ac, align 8
  %i.ar = trunc i64 %i.aq to i32
  %i.as = and i32 %i.ar, 1023                     ; 2 uses
  %i.at = icmp eq i32 %i.as, 1023
  %i.au = select i1 %i.at, i32 -1, i32 %i.as
  %i.av = invoke noundef i32 @_ZN4cvc58internal4kind10metaKindOfENS1_6Kind_tE(i32 noundef %i.au)
          to label %_ZNK4cvc58internal4expr9NodeValue11getMetaKindEv.exit28 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

_ZNK4cvc58internal4expr9NodeValue11getMetaKindEv.exit28: ; preds = %bb.i
  %i.aw = icmp eq i32 %i.av, 4
  br i1 %i.aw, label %bb.j, label %bb.n

bb.j:                                             ; preds = %_ZNK4cvc58internal4expr9NodeValue11getMetaKindEv.exit28, %_ZNK4cvc58internal4expr9NodeValue11getMetaKindEv.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  store i8 32, ptr %i.d, align 1, !tbaa !15
  %i.ax = load ptr, ptr %1, align 8, !tbaa !13
  %i.ay = getelementptr i8, ptr %i.ax, i64 -24
  %i.az = load i64, ptr %i.ay, align 8
  %i.ba = getelementptr inbounds i8, ptr %1, i64 %i.az
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ba, i64 16
  %i.bc = load i64, ptr %i.bb, align 8, !tbaa !65
  %.not.i29 = icmp eq i64 %i.bc, 0
  br i1 %.not.i29, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.bd = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull %i.d, i64 noundef 1)
          to label %bb.m unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.l:                                             ; preds = %bb.j
  %i.be = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %1, i8 noundef signext 32)
          to label %bb.m unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 0 uses

bb.m:                                             ; preds = %bb.k, %bb.l
  %.0.i30 = phi ptr [ %i.bd, %bb.k ], [ %1, %bb.l ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  %i.bf = load i64, ptr %0, align 8
  %i.bg = and i64 %i.bf, 1099511627775
  %i.bh = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertImEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %.0.i30, i64 noundef %i.bg)
          to label %_ZNSolsEm.exit unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 0 uses

bb.n:                                             ; preds = %_ZNK4cvc58internal4expr9NodeValue11getMetaKindEv.exit28
  %i.bi = load i64, ptr %i.ac, align 8
  %i.bj = trunc i64 %i.bi to i32
  %i.bk = and i32 %i.bj, 1023                     ; 2 uses
  %i.bl = icmp eq i32 %i.bk, 1023
  %i.bm = select i1 %i.bl, i32 -1, i32 %i.bk
  %i.bn = invoke noundef i32 @_ZN4cvc58internal4kind10metaKindOfENS1_6Kind_tE(i32 noundef %i.bm)
          to label %_ZNK4cvc58internal4expr9NodeValue11getMetaKindEv.exit36 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

_ZNK4cvc58internal4expr9NodeValue11getMetaKindEv.exit36: ; preds = %bb.n
  %i.bo = icmp eq i32 %i.bn, 3
  br i1 %i.bo, label %bb.o, label %bb.s

bb.o:                                             ; preds = %_ZNK4cvc58internal4expr9NodeValue11getMetaKindEv.exit36
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  store i8 32, ptr %i.c, align 1, !tbaa !15
  %i.bp = load ptr, ptr %1, align 8, !tbaa !13
  %i.bq = getelementptr i8, ptr %i.bp, i64 -24
  %i.br = load i64, ptr %i.bq, align 8
  %i.bs = getelementptr inbounds i8, ptr %1, i64 %i.br
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bs, i64 16
  %i.bu = load i64, ptr %i.bt, align 8, !tbaa !65
  %.not.i37 = icmp eq i64 %i.bu, 0
  br i1 %.not.i37, label %bb.q, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.bv = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull %i.c, i64 noundef 1)
          to label %bb.r unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 0 uses

bb.q:                                             ; preds = %bb.o
  %i.bw = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %1, i8 noundef signext 32)
          to label %bb.r unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 0 uses

bb.r:                                             ; preds = %bb.p, %bb.q
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  invoke void @_ZN4cvc58internal4kind8metakind25nodeValueConstantToStreamERSoPKNS0_4expr9NodeValueE(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull %0)
          to label %_ZNSolsEm.exit unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.s:                                             ; preds = %_ZNK4cvc58internal4expr9NodeValue11getMetaKindEv.exit36
  %i.bx = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %3 = load i64, ptr %i.ac, align 8
  %4 = and i64 %3, 288230371856744448
  %.not = icmp eq i64 %4, 0
  br i1 %.not, label %_ZNSolsEm.exit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.s
  %i.by = add nsw i32 %2, 1
  br label %bb.w

._crit_edge:                                      ; preds = %bb.z
  %i.bz = load ptr, ptr %1, align 8, !tbaa !13
  %i.ca = getelementptr i8, ptr %i.bz, i64 -24
  %i.cb = load i64, ptr %i.ca, align 8
  %i.cc = getelementptr inbounds i8, ptr %1, i64 %i.cb
  %i.cd = getelementptr inbounds nuw i8, ptr %i.cc, i64 240
  %i.ce = load ptr, ptr %i.cd, align 8, !tbaa !73 ; 6 uses
  %.not.i.i.i = icmp eq ptr %i.ce, null
  br i1 %.not.i.i.i, label %.invoke, label %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i

_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i: ; preds = %._crit_edge
  %i.cf = getelementptr inbounds nuw i8, ptr %i.ce, i64 56
  %i.cg = load i8, ptr %i.cf, align 8, !tbaa !79
  %.not.i1.i.i = icmp eq i8 %i.cg, 0
  br i1 %.not.i1.i.i, label %bb.u, label %bb.t

bb.t:                                             ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i
  %i.ch = getelementptr inbounds nuw i8, ptr %i.ce, i64 67
  %i.ci = load i8, ptr %i.ch, align 1, !tbaa !15
  br label %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i

bb.u:                                             ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i
  invoke void @_ZNKSt5ctypeIcE13_M_widen_initEv(ptr noundef nonnull align 8 dereferenceable(570) %i.ce)
          to label %.noexc60 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc60:                                         ; preds = %bb.u
  %i.cj = load ptr, ptr %i.ce, align 8, !tbaa !13
  %i.ck = getelementptr inbounds nuw i8, ptr %i.cj, i64 48
  %i.cl = load ptr, ptr %i.ck, align 8
  %i.cm = invoke noundef signext i8 %i.cl(ptr noundef nonnull align 8 dereferenceable(570) %i.ce, i8 noundef signext 10)
          to label %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !inline_history !57

_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i: ; preds = %.noexc60, %bb.t
  %.0.i.i.i = phi i8 [ %i.ci, %bb.t ], [ %i.cm, %.noexc60 ]
  %i.cn = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %1, i8 noundef signext %.0.i.i.i)
          to label %.noexc62 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc62:                                         ; preds = %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i
  %i.co = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8) %i.cn)
          to label %_ZNSolsEPFRSoS_E.exit unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 0 uses

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %.noexc72, %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i67, %.noexc70, %bb.y, %_ZNSolsEPFRSoS_E.exit44, %bb.ab, %bb.aa, %bb.d, %bb.c, %.invoke, %.noexc62, %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i, %.noexc60, %bb.u, %bb.ad, %bb.ac, %bb.q, %bb.p, %bb.n, %bb.m, %bb.l, %bb.k, %bb.i, %bb.h, %bb.f, %bb.e, %bb.g, %bb.r
  %lpad.loopexit.split-lp104 = landingpad { ptr, i32 }
          cleanup
  br i1 %i.i, label %bb.v, label %_ZN4cvc58internal4expr9NodeValue13RefCountGuardD2Ev.exit

bb.v:                                             ; preds = %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp
  %i.cp = load i64, ptr %0, align 8               ; 2 uses
  %i.cq = add i64 %i.cp, 1152920405095219200
  %i.cr = and i64 %i.cq, 1152920405095219200
  %i.cs = and i64 %i.cp, -1152920405095219201
  %i.ct = or disjoint i64 %i.cr, %i.cs
  store i64 %i.ct, ptr %0, align 8
  br label %_ZN4cvc58internal4expr9NodeValue13RefCountGuardD2Ev.exit

_ZN4cvc58internal4expr9NodeValue13RefCountGuardD2Ev.exit: ; preds = %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %bb.v
  resume { ptr, i32 } %lpad.loopexit.split-lp104

bb.w:                                             ; preds = %.lr.ph, %bb.z
  %.083 = phi ptr [ %i.bx, %.lr.ph ], [ %i.dl, %bb.z ] ; 2 uses
  %i.cu = load ptr, ptr %1, align 8, !tbaa !13
  %i.cv = getelementptr i8, ptr %i.cu, i64 -24
  %i.cw = load i64, ptr %i.cv, align 8
  %i.cx = getelementptr inbounds i8, ptr %1, i64 %i.cw
  %i.cy = getelementptr inbounds nuw i8, ptr %i.cx, i64 240
  %i.cz = load ptr, ptr %i.cy, align 8, !tbaa !73 ; 6 uses
  %.not.i.i.i64 = icmp eq ptr %i.cz, null
  br i1 %.not.i.i.i64, label %.invoke, label %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i65

.invoke:                                          ; preds = %bb.w, %._crit_edge
  invoke void @_ZSt16__throw_bad_castv() #17
          to label %.cont unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.cont:                                            ; preds = %.invoke
  unreachable

_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i65: ; preds = %bb.w
  %i.da = getelementptr inbounds nuw i8, ptr %i.cz, i64 56
  %i.db = load i8, ptr %i.da, align 8, !tbaa !79
  %.not.i1.i.i66 = icmp eq i8 %i.db, 0
  br i1 %.not.i1.i.i66, label %bb.y, label %bb.x

bb.x:                                             ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i65
  %i.dc = getelementptr inbounds nuw i8, ptr %i.cz, i64 67
  %i.dd = load i8, ptr %i.dc, align 1, !tbaa !15
  br label %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i67

bb.y:                                             ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i65
  invoke void @_ZNKSt5ctypeIcE13_M_widen_initEv(ptr noundef nonnull align 8 dereferenceable(570) %i.cz)
          to label %.noexc70 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc70:                                         ; preds = %bb.y
  %i.de = load ptr, ptr %i.cz, align 8, !tbaa !13
  %i.df = getelementptr inbounds nuw i8, ptr %i.de, i64 48
  %i.dg = load ptr, ptr %i.df, align 8
  %i.dh = invoke noundef signext i8 %i.dg(ptr noundef nonnull align 8 dereferenceable(570) %i.cz, i8 noundef signext 10)
          to label %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i67 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !inline_history !57

_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i67: ; preds = %.noexc70, %bb.x
  %.0.i.i.i68 = phi i8 [ %i.dd, %bb.x ], [ %i.dh, %.noexc70 ]
  %i.di = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %1, i8 noundef signext %.0.i.i.i68)
          to label %.noexc72 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc72:                                         ; preds = %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i67
  %i.dj = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8) %i.di)
          to label %_ZNSolsEPFRSoS_E.exit44 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 0 uses

_ZNSolsEPFRSoS_E.exit44:                          ; preds = %.noexc72
  %i.dk = load ptr, ptr %.083, align 8, !tbaa !19
  invoke void @_ZNK4cvc58internal4expr9NodeValue8printAstERSoi(ptr noundef nonnull align 8 dereferenceable(24) %i.dk, ptr noundef nonnull align 8 dereferenceable(8) %1, i32 noundef %i.by)
          to label %bb.z unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.z:                                             ; preds = %_ZNSolsEPFRSoS_E.exit44
  %i.dl = getelementptr inbounds nuw i8, ptr %.083, i64 8 ; 2 uses
  %5 = load i64, ptr %i.ac, align 8
  %6 = lshr i64 %5, 32
  %7 = and i64 %6, 67108863
  %i.dm = getelementptr inbounds nuw [8 x i8], ptr %i.bx, i64 %7
  %.not21 = icmp eq ptr %i.dl, %i.dm
  br i1 %.not21, label %._crit_edge, label %bb.w, !llvm.loop !58

_ZNSolsEPFRSoS_E.exit:                            ; preds = %.noexc62
  br i1 %i.k, label %.lr.ph.i45, label %_ZNSolsEm.exit

.lr.ph.i45:                                       ; preds = %_ZNSolsEPFRSoS_E.exit, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit.i48
  %.03.i46 = phi i32 [ %i.dv, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit.i48 ], [ 0, %_ZNSolsEPFRSoS_E.exit ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store i8 32, ptr %i.b, align 1, !tbaa !15
  %i.dn = load ptr, ptr %1, align 8, !tbaa !13
  %i.do = getelementptr i8, ptr %i.dn, i64 -24
  %i.dp = load i64, ptr %i.do, align 8
  %i.dq = getelementptr inbounds i8, ptr %1, i64 %i.dp
  %i.dr = getelementptr inbounds nuw i8, ptr %i.dq, i64 16
  %i.ds = load i64, ptr %i.dr, align 8, !tbaa !65
  %.not.i.i47 = icmp eq i64 %i.ds, 0
  br i1 %.not.i.i47, label %bb.ab, label %bb.aa

bb.aa:                                            ; preds = %.lr.ph.i45
  %i.dt = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull %i.b, i64 noundef 1)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit.i48 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 0 uses

bb.ab:                                            ; preds = %.lr.ph.i45
  %i.du = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %1, i8 noundef signext 32)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit.i48 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit.i48: ; preds = %bb.ab, %bb.aa
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %i.dv = add nuw nsw i32 %.03.i46, 1             ; 2 uses
  %exitcond.not.i49 = icmp eq i32 %i.dv, %2
  br i1 %exitcond.not.i49, label %_ZNSolsEm.exit, label %.lr.ph.i45, !llvm.loop !56

_ZNSolsEm.exit:                                   ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit.i48, %_ZNSolsEPFRSoS_E.exit, %bb.m, %bb.r, %bb.s
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i8 41, ptr %i.a, align 1, !tbaa !15
  %i.dw = load ptr, ptr %1, align 8, !tbaa !13
  %i.dx = getelementptr i8, ptr %i.dw, i64 -24
  %i.dy = load i64, ptr %i.dx, align 8
  %i.dz = getelementptr inbounds i8, ptr %1, i64 %i.dy
  %i.ea = getelementptr inbounds nuw i8, ptr %i.dz, i64 16
  %i.eb = load i64, ptr %i.ea, align 8, !tbaa !65
  %.not.i53 = icmp eq i64 %i.eb, 0
  br i1 %.not.i53, label %bb.ad, label %bb.ac

bb.ac:                                            ; preds = %_ZNSolsEm.exit
  %i.ec = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull %i.a, i64 noundef 1)
          to label %bb.ae unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 0 uses

bb.ad:                                            ; preds = %_ZNSolsEm.exit
  %i.ed = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %1, i8 noundef signext 41)
          to label %bb.ae unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 0 uses

bb.ae:                                            ; preds = %bb.ac, %bb.ad
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br i1 %i.i, label %bb.af, label %_ZN4cvc58internal4expr9NodeValue13RefCountGuardD2Ev.exit58

bb.af:                                            ; preds = %bb.ae
  %i.ee = load i64, ptr %0, align 8               ; 2 uses
  %i.ef = add i64 %i.ee, 1152920405095219200
  %i.eg = and i64 %i.ef, 1152920405095219200
  %i.eh = and i64 %i.ee, -1152920405095219201
  %i.ei = or disjoint i64 %i.eg, %i.eh
  store i64 %i.ei, ptr %0, align 8
  br label %_ZN4cvc58internal4expr9NodeValue13RefCountGuardD2Ev.exit58

_ZN4cvc58internal4expr9NodeValue13RefCountGuardD2Ev.exit58: ; preds = %bb.ae, %bb.af
  ret void
}

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZN4cvc58internal4kindlsERSoNS1_6Kind_tE(ptr noundef nonnull align 8 dereferenceable(8), i32 noundef) local_unnamed_addr #3

declare void @_ZN4cvc58internal4kind8metakind25nodeValueConstantToStreamERSoPKNS0_4expr9NodeValueE(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define hidden ptr @_ZN4cvc58internal4exprplElNS1_9NodeValue8iteratorINS0_12NodeTemplateILb1EEEEE(i64 noundef %0, ptr nofree readnone captures(ret: address, provenance) %1) local_unnamed_addr #4 {
bb.a:
  %i.a = getelementptr inbounds [8 x i8], ptr %1, i64 %0
  ret ptr %i.a
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define hidden ptr @_ZN4cvc58internal4exprplElNS1_9NodeValue8iteratorINS0_12NodeTemplateILb0EEEEE(i64 noundef %0, ptr nofree readnone captures(ret: address, provenance) %1) local_unnamed_addr #4 {
bb.a:
  %i.a = getelementptr inbounds [8 x i8], ptr %1, i64 %0
  ret ptr %i.a
}

; Function Attrs: mustprogress uwtable
define hidden noundef nonnull align 8 dereferenceable(8) ptr @_ZN4cvc58internal4exprlsERSoRKNS1_9NodeValueE(ptr noundef nonnull returned align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) local_unnamed_addr #0 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.cvc5::internal::NodeTemplate", align 8 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2)
  %i.a = load i64, ptr %1, align 8                ; 2 uses
  %i.b = and i64 %i.a, 1152920405095219200
  %i.c = icmp eq i64 %i.b, 0                      ; 3 uses
  br i1 %i.c, label %bb.b, label %_ZN4cvc58internal4expr9NodeValue13RefCountGuardC2EPKS2_.exit.i

bb.b:                                             ; preds = %bb.a
  %i.d = or disjoint i64 %i.a, 1099511627776
  store i64 %i.d, ptr %1, align 8
  br label %_ZN4cvc58internal4expr9NodeValue13RefCountGuardC2EPKS2_.exit.i

_ZN4cvc58internal4expr9NodeValue13RefCountGuardC2EPKS2_.exit.i: ; preds = %bb.b, %bb.a
  %i.e = invoke noundef ptr @_ZN4cvc58internal7Printer10getPrinterERSo(ptr noundef nonnull align 8 dereferenceable(8) %0)
          to label %bb.c unwind label %bb.f       ; 2 uses

bb.c:                                             ; preds = %_ZN4cvc58internal4expr9NodeValue13RefCountGuardC2EPKS2_.exit.i
  store ptr %1, ptr %2, align 8, !tbaa !11
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !13
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  %i.h = load ptr, ptr %i.g, align 8
  invoke void %i.h(ptr noundef nonnull align 8 dereferenceable(8) %i.e, ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 %2)
          to label %bb.d unwind label %bb.f

bb.d:                                             ; preds = %bb.c
  br i1 %i.c, label %bb.e, label %_ZNK4cvc58internal4expr9NodeValue8toStreamERSo.exit

bb.e:                                             ; preds = %bb.d
  %i.i = load i64, ptr %1, align 8                ; 2 uses
  %i.j = add i64 %i.i, 1152920405095219200
  %i.k = and i64 %i.j, 1152920405095219200
  %i.l = and i64 %i.i, -1152920405095219201
  %i.m = or disjoint i64 %i.k, %i.l
  store i64 %i.m, ptr %1, align 8
  br label %_ZNK4cvc58internal4expr9NodeValue8toStreamERSo.exit

bb.f:                                             ; preds = %bb.c, %_ZN4cvc58internal4expr9NodeValue13RefCountGuardC2EPKS2_.exit.i
  %i.n = landingpad { ptr, i32 }
          cleanup
  br i1 %i.c, label %bb.g, label %_ZN4cvc58internal4expr9NodeValue13RefCountGuardD2Ev.exit6.i

bb.g:                                             ; preds = %bb.f
  %i.o = load i64, ptr %1, align 8                ; 2 uses
  %i.p = add i64 %i.o, 1152920405095219200
  %i.q = and i64 %i.p, 1152920405095219200
  %i.r = and i64 %i.o, -1152920405095219201
  %i.s = or disjoint i64 %i.q, %i.r
  store i64 %i.s, ptr %1, align 8
  br label %_ZN4cvc58internal4expr9NodeValue13RefCountGuardD2Ev.exit6.i

_ZN4cvc58internal4expr9NodeValue13RefCountGuardD2Ev.exit6.i: ; preds = %bb.g, %bb.f
  resume { ptr, i32 } %i.n

_ZNK4cvc58internal4expr9NodeValue8toStreamERSo.exit: ; preds = %bb.d, %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %2)
  ret ptr %0
}

; Function Attrs: mustprogress uwtable
define void @_ZN4cvc58internal4expr9NodeValue20markRefCountMaxedOutEv(ptr noundef nonnull align 8 dereferenceable(24) %0) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !22   ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 160 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 168 ; 3 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !82   ; 4 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 176 ; 3 uses
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !83
  %.not.i31.i = icmp eq ptr %i.e, %i.g
  br i1 %.not.i31.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  store ptr %0, ptr %i.e, align 8, !tbaa !19
  %i.h = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  store ptr %i.h, ptr %i.d, align 8, !tbaa !82
  br label %_ZN4cvc58internal11NodeManager20markRefCountMaxedOutEPNS0_4expr9NodeValueE.exit

bb.c:                                             ; preds = %bb.a
  %i.i = load ptr, ptr %i.c, align 8, !tbaa !84   ; 4 uses
  %i.j = ptrtoint ptr %i.e to i64
  %i.k = ptrtoint ptr %i.i to i64                 ; 2 uses
  %i.l = sub i64 %i.j, %i.k                       ; 5 uses
  %i.m = icmp eq i64 %i.l, 9223372036854775800
  br i1 %i.m, label %bb.d, label %_ZNKSt6vectorIPN4cvc58internal4expr9NodeValueESaIS4_EE12_M_check_lenEmPKc.exit.i.i.i

bb.d:                                             ; preds = %bb.c
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.5) #17
  unreachable

_ZNKSt6vectorIPN4cvc58internal4expr9NodeValueESaIS4_EE12_M_check_lenEmPKc.exit.i.i.i: ; preds = %bb.c
  %i.n = ashr exact i64 %i.l, 3                   ; 3 uses
  %.sroa.speculated.i.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.n, i64 1)
  %i.o = add nsw i64 %.sroa.speculated.i.i.i.i, %i.n ; 2 uses
  %i.p = icmp ult i64 %i.o, %i.n
  %i.q = tail call i64 @llvm.umin.i64(i64 %i.o, i64 1152921504606846975)
  %i.r = select i1 %i.p, i64 1152921504606846975, i64 %i.q ; 3 uses
  %.not.i.i.i.i = icmp ne i64 %i.r, 0
  tail call void @llvm.assume(i1 %.not.i.i.i.i)
  %i.s = shl nuw nsw i64 %i.r, 3
  %i.t = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.s) #18 ; 4 uses
  %i.u = getelementptr inbounds i8, ptr %i.t, i64 %i.l ; 2 uses
  store ptr %0, ptr %i.u, align 8, !tbaa !19
  %i.v = icmp sgt i64 %i.l, 0
  br i1 %i.v, label %bb.e, label %_ZNSt6vectorIPN4cvc58internal4expr9NodeValueESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit16.i.i.i

bb.e:                                             ; preds = %_ZNKSt6vectorIPN4cvc58internal4expr9NodeValueESaIS4_EE12_M_check_lenEmPKc.exit.i.i.i
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.t, ptr align 8 %i.i, i64 %i.l, i1 false)
  br label %_ZNSt6vectorIPN4cvc58internal4expr9NodeValueESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit16.i.i.i

end_hunk_0

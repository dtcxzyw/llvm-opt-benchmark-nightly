Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/protobuf/original/tokenizer?download=true
inline.NumInlined: 657
inline.NumDeleted: 223
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@_ZN6google8protobuf2io9Tokenizer19ConsumeBlockCommentEPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE:bb.a
  store i8 0, ptr %i.eg, align 1, !tbaa !19
  br label %bb.bf

bb.ax:                                            ; preds = %_ZN6google8protobuf2io9Tokenizer8NextCharEv.exit
  call void @_ZN6google8protobuf2io9Tokenizer8NextCharEv(ptr noundef nonnull align 8 dereferenceable(192) %0)
  %i.eh = load i8, ptr %i.n, align 8, !tbaa !44   ; 2 uses
  %i.ei = icmp eq i8 %i.eh, 42
  br i1 %i.ei, label %.noexc.i, label %_ZN6google8protobuf2io9Tokenizer10TryConsumeEc.exit35.thread

.noexc.i:                                         ; preds = %bb.ax
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #24
  store ptr %i.v, ptr %2, align 8, !tbaa !15
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #24
  store i64 60, ptr %i.c, align 8, !tbaa !56
  %i.ej = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull align 8 dereferenceable(8) %i.c, i64 noundef 0)
          to label %.noexc unwind label %bb.ay    ; 3 uses

.noexc:                                           ; preds = %.noexc.i
  store ptr %i.ej, ptr %2, align 8, !tbaa !53
  %i.ek = load i64, ptr %i.c, align 8, !tbaa !56  ; 3 uses
  store i64 %i.ek, ptr %i.v, align 8, !tbaa !19
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(60) %i.ej, ptr noundef nonnull align 1 dereferenceable(60) @.str.12, i64 60, i1 false)
  store i64 %i.ek, ptr %i.w, align 8, !tbaa !18
  %i.el = getelementptr inbounds nuw i8, ptr %i.ej, i64 %i.ek
  store i8 0, ptr %i.el, align 1, !tbaa !19
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #24
  %i.em = load ptr, ptr %i.x, align 8, !tbaa !29  ; 2 uses
  %i.en = load i32, ptr %i.e, align 4, !tbaa !30
  %i.eo = load i32, ptr %i.g, align 8, !tbaa !31
  %i.ep = load ptr, ptr %2, align 8, !tbaa !53
  %i.eq = load i64, ptr %i.w, align 8, !tbaa !18
  %i.er = load ptr, ptr %i.em, align 8, !tbaa !50
  %i.es = getelementptr inbounds nuw i8, ptr %i.er, i64 16
  %i.et = load ptr, ptr %i.es, align 8
  invoke void %i.et(ptr noundef nonnull align 8 dereferenceable(8) %i.em, i32 noundef %i.en, i32 noundef %i.eo, i64 %i.eq, ptr %i.ep)
          to label %_ZN6google8protobuf2io9Tokenizer8AddErrorERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit unwind label %bb.az, !inline_history !1

_ZN6google8protobuf2io9Tokenizer8AddErrorERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit: ; preds = %.noexc
  %i.eu = load ptr, ptr %2, align 8, !tbaa !53    ; 2 uses
  %i.ev = icmp eq ptr %i.eu, %i.v
  br i1 %i.ev, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZN6google8protobuf2io9Tokenizer8AddErrorERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit
  %i.ew = load i64, ptr %i.v, align 8, !tbaa !19
  %i.ex = add i64 %i.ew, 1
  call void @_ZdlPvm(ptr noundef %i.eu, i64 noundef %i.ex) #25
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZN6google8protobuf2io9Tokenizer8AddErrorERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #24
  br label %.backedge

bb.ay:                                            ; preds = %.noexc.i
  %i.ey = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit39

bb.az:                                            ; preds = %.noexc
  %i.ez = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.fa = load ptr, ptr %2, align 8, !tbaa !53    ; 2 uses
  %i.fb = icmp eq ptr %i.fa, %i.v
  br i1 %i.fb, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit39, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i37

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i37: ; preds = %bb.az
  %i.fc = load i64, ptr %i.v, align 8, !tbaa !19
  %i.fd = add i64 %i.fc, 1
  call void @_ZdlPvm(ptr noundef %i.fa, i64 noundef %i.fd) #25
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit39

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit39: ; preds = %bb.az, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i37, %bb.ay
  %.pn25 = phi { ptr, i32 } [ %i.ey, %bb.ay ], [ %i.ez, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i37 ], [ %i.ez, %bb.az ]
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #24
  br label %bb.bg

_ZN6google8protobuf2io9Tokenizer10TryConsumeEc.exit35.thread: ; preds = %_ZN6google8protobuf2io9Tokenizer8NextCharEv.exit, %bb.ar, %bb.ax
  %i.fe = phi i8 [ %i.eh, %bb.ax ], [ %i.dm, %bb.ar ], [ %i.y, %_ZN6google8protobuf2io9Tokenizer8NextCharEv.exit ]
  %i.ff = icmp eq i8 %i.fe, 0
  br i1 %i.ff, label %.noexc.i41, label %.backedge

.backedge:                                        ; preds = %_ZN6google8protobuf2io9Tokenizer10TryConsumeEc.exit35.thread, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %_ZN6google8protobuf2io9Tokenizer10TryConsumeEc.exit28, %bb.aq
  br label %bb.d, !llvm.loop !84

.noexc.i41:                                       ; preds = %_ZN6google8protobuf2io9Tokenizer10TryConsumeEc.exit35.thread
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #24
  %i.fg = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 6 uses
  store ptr %i.fg, ptr %3, align 8, !tbaa !15
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #24
  store i64 33, ptr %i.b, align 8, !tbaa !56
  %i.fh = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(8) %i.b, i64 noundef 0)
          to label %.noexc42 unwind label %bb.bd  ; 3 uses

.noexc42:                                         ; preds = %.noexc.i41
  store ptr %i.fh, ptr %3, align 8, !tbaa !53
  %i.fi = load i64, ptr %i.b, align 8, !tbaa !56  ; 3 uses
  store i64 %i.fi, ptr %i.fg, align 8, !tbaa !19
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(33) %i.fh, ptr noundef nonnull align 1 dereferenceable(33) @.str.13, i64 33, i1 false)
  %i.fj = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  store i64 %i.fi, ptr %i.fj, align 8, !tbaa !18
  %i.fk = getelementptr inbounds nuw i8, ptr %i.fh, i64 %i.fi
  store i8 0, ptr %i.fk, align 1, !tbaa !19
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #24
  %i.fl = load ptr, ptr %i.x, align 8, !tbaa !29  ; 2 uses
  %i.fm = load i32, ptr %i.e, align 4, !tbaa !30
  %i.fn = load i32, ptr %i.g, align 8, !tbaa !31
  %i.fo = load ptr, ptr %3, align 8, !tbaa !53
  %i.fp = load i64, ptr %i.fj, align 8, !tbaa !18
  %i.fq = load ptr, ptr %i.fl, align 8, !tbaa !50
  %i.fr = getelementptr inbounds nuw i8, ptr %i.fq, i64 16
  %i.fs = load ptr, ptr %i.fr, align 8
  invoke void %i.fs(ptr noundef nonnull align 8 dereferenceable(8) %i.fl, i32 noundef %i.fm, i32 noundef %i.fn, i64 %i.fp, ptr %i.fo)
          to label %_ZN6google8protobuf2io9Tokenizer8AddErrorERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit45 unwind label %bb.be, !inline_history !1

_ZN6google8protobuf2io9Tokenizer8AddErrorERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit45: ; preds = %.noexc42
  %i.ft = load ptr, ptr %3, align 8, !tbaa !53    ; 2 uses
  %i.fu = icmp eq ptr %i.ft, %i.fg
  br i1 %i.fu, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit48, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i46

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i46: ; preds = %_ZN6google8protobuf2io9Tokenizer8AddErrorERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit45
  %i.fv = load i64, ptr %i.fg, align 8, !tbaa !19
  %i.fw = add i64 %i.fv, 1
  call void @_ZdlPvm(ptr noundef %i.ft, i64 noundef %i.fw) #25
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit48

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit48: ; preds = %_ZN6google8protobuf2io9Tokenizer8AddErrorERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit45, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i46
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #24
  %i.fx = load ptr, ptr %i.x, align 8, !tbaa !29  ; 2 uses
  %i.fy = load ptr, ptr %i.fx, align 8, !tbaa !50
  %i.fz = getelementptr inbounds nuw i8, ptr %i.fy, i64 16
  %i.ga = load ptr, ptr %i.fz, align 8
  call void %i.ga(ptr noundef nonnull align 8 dereferenceable(8) %i.fx, i32 noundef %i.f, i32 noundef %i.i, i64 23, ptr nonnull @.str.14)
  br i1 %.not, label %bb.bf, label %bb.ba

bb.ba:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit48
  %i.gb = load i32, ptr %i.o, align 4, !tbaa !48  ; 2 uses
  %i.gc = load i32, ptr %i.s, align 8, !tbaa !33  ; 3 uses
  %.not.i49 = icmp eq i32 %i.gb, %i.gc
  br i1 %.not.i49, label %_ZN6google8protobuf2io9Tokenizer13StopRecordingEv.exit51, label %bb.bb

bb.bb:                                            ; preds = %bb.ba
  %i.gd = load ptr, ptr %i.r, align 8, !tbaa !32  ; 2 uses
  %i.ge = sub nsw i32 %i.gb, %i.gc
  %i.gf = sext i32 %i.ge to i64                   ; 2 uses
  %i.gg = getelementptr inbounds nuw i8, ptr %i.gd, i64 8
  %i.gh = load i64, ptr %i.gg, align 8, !tbaa !18
  %i.gi = sub i64 4611686018427387903, %i.gh
  %i.gj = icmp ult i64 %i.gi, %i.gf
  br i1 %i.gj, label %bb.bc, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit.i50

bb.bc:                                            ; preds = %bb.bb
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.28) #23
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit.i50: ; preds = %bb.bb
  %i.gk = load ptr, ptr %i.t, align 8, !tbaa !46
  %i.gl = sext i32 %i.gc to i64
  %i.gm = getelementptr inbounds i8, ptr %i.gk, i64 %i.gl
  %i.gn = call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %i.gd, ptr noundef %i.gm, i64 noundef %i.gf) ; 0 uses
  br label %_ZN6google8protobuf2io9Tokenizer13StopRecordingEv.exit51

_ZN6google8protobuf2io9Tokenizer13StopRecordingEv.exit51: ; preds = %bb.ba, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit.i50
  store ptr null, ptr %i.r, align 8, !tbaa !32
  store i32 -1, ptr %i.s, align 8, !tbaa !33
  br label %bb.bf

bb.bd:                                            ; preds = %.noexc.i41
  %i.go = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit54

bb.be:                                            ; preds = %.noexc42
  %i.gp = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.gq = load ptr, ptr %3, align 8, !tbaa !53    ; 2 uses
  %i.gr = icmp eq ptr %i.gq, %i.fg
  br i1 %i.gr, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit54, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i52

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i52: ; preds = %bb.be
  %i.gs = load i64, ptr %i.fg, align 8, !tbaa !19
  %i.gt = add i64 %i.gs, 1
  call void @_ZdlPvm(ptr noundef %i.gq, i64 noundef %i.gt) #25
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit54

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit54: ; preds = %bb.be, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i52, %bb.bd
  %.pn = phi { ptr, i32 } [ %i.go, %bb.bd ], [ %i.gp, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i52 ], [ %i.gp, %bb.be ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #24
  br label %bb.bg

bb.bf:                                            ; preds = %_ZN6google8protobuf2io9Tokenizer10TryConsumeEc.exit29.thread, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit48, %_ZN6google8protobuf2io9Tokenizer13StopRecordingEv.exit51, %bb.as, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE5eraseEmm.exit
  ret void

bb.bg:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit54, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit39
  %.pn25.pn = phi { ptr, i32 } [ %.pn25, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit39 ], [ %.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit54 ]
  resume { ptr, i32 } %.pn25.pn
}

; Function Attrs: mustprogress uwtable
define noundef range(i32 0, 4) i32 @_ZN6google8protobuf2io9Tokenizer22TryConsumeCommentStartEv(ptr noundef nonnull align 8 dereferenceable(192) %0) local_unnamed_addr #3 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 184
  %i.b = load i32, ptr %i.a, align 8, !tbaa !35
  switch i32 %i.b, label %_ZN6google8protobuf2io9Tokenizer10TryConsumeEc.exit3 [
    i32 0, label %bb.b
    i32 1, label %bb.d
  ]

bb.b:                                             ; preds = %bb.a
  %1 = getelementptr inbounds nuw i8, ptr %0, i64 128 ; 2 uses
  %2 = load i8, ptr %1, align 8, !tbaa !44
  %i.c = icmp eq i8 %2, 47
  br i1 %i.c, label %bb.c, label %_ZN6google8protobuf2io9Tokenizer10TryConsumeEc.exit3

bb.c:                                             ; preds = %bb.b
  tail call void @_ZN6google8protobuf2io9Tokenizer8NextCharEv(ptr noundef nonnull align 8 dereferenceable(192) %0)
  %i.d = load i8, ptr %1, align 8, !tbaa !44
  switch i8 %i.d, label %_ZN6google8protobuf2io9Tokenizer10TryConsumeEc.exit2 [
    i8 47, label %_ZN6google8protobuf2io9Tokenizer10TryConsumeEc.exit1.thread
    i8 42, label %_ZN6google8protobuf2io9Tokenizer10TryConsumeEc.exit2.thread
  ]

_ZN6google8protobuf2io9Tokenizer10TryConsumeEc.exit1.thread: ; preds = %bb.c
  tail call void @_ZN6google8protobuf2io9Tokenizer8NextCharEv(ptr noundef nonnull align 8 dereferenceable(192) %0)
  br label %_ZN6google8protobuf2io9Tokenizer10TryConsumeEc.exit3

_ZN6google8protobuf2io9Tokenizer10TryConsumeEc.exit2.thread: ; preds = %bb.c
  tail call void @_ZN6google8protobuf2io9Tokenizer8NextCharEv(ptr noundef nonnull align 8 dereferenceable(192) %0)
  br label %_ZN6google8protobuf2io9Tokenizer10TryConsumeEc.exit3

_ZN6google8protobuf2io9Tokenizer10TryConsumeEc.exit2: ; preds = %bb.c
  store i32 6, ptr %0, align 8, !tbaa !39
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.g = load i64, ptr %i.f, align 8, !tbaa !18
  %i.h = tail call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %i.e, i64 noundef 0, i64 noundef %i.g, ptr noundef nonnull @.str.15, i64 noundef 1) ; 0 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 156
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 160
  %i.l = load i32, ptr %i.k, align 8, !tbaa !31
  %i.m = load <2 x i32>, ptr %i.i, align 4, !tbaa !11
  %i.n = add nsw <2 x i32> %i.m, <i32 0, i32 -1>
  store <2 x i32> %i.n, ptr %i.j, align 8, !tbaa !11
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 48
  store i32 %i.l, ptr %i.o, align 8, !tbaa !38
  br label %_ZN6google8protobuf2io9Tokenizer10TryConsumeEc.exit3

bb.d:                                             ; preds = %bb.a
  %3 = getelementptr inbounds nuw i8, ptr %0, i64 128
  %4 = load i8, ptr %3, align 8, !tbaa !44
  %5 = icmp eq i8 %4, 35
  br i1 %5, label %_ZN6google8protobuf2io9Tokenizer10TryConsumeEc.exit3.thread, label %_ZN6google8protobuf2io9Tokenizer10TryConsumeEc.exit3

_ZN6google8protobuf2io9Tokenizer10TryConsumeEc.exit3.thread: ; preds = %bb.d
  tail call void @_ZN6google8protobuf2io9Tokenizer8NextCharEv(ptr noundef nonnull align 8 dereferenceable(192) %0)
  br label %_ZN6google8protobuf2io9Tokenizer10TryConsumeEc.exit3

_ZN6google8protobuf2io9Tokenizer10TryConsumeEc.exit3: ; preds = %bb.a, %bb.b, %bb.d, %_ZN6google8protobuf2io9Tokenizer10TryConsumeEc.exit3.thread, %_ZN6google8protobuf2io9Tokenizer10TryConsumeEc.exit2.thread, %_ZN6google8protobuf2io9Tokenizer10TryConsumeEc.exit1.thread, %_ZN6google8protobuf2io9Tokenizer10TryConsumeEc.exit2
  %.0 = phi i32 [ 0, %_ZN6google8protobuf2io9Tokenizer10TryConsumeEc.exit3.thread ], [ 0, %_ZN6google8protobuf2io9Tokenizer10TryConsumeEc.exit1.thread ], [ 2, %_ZN6google8protobuf2io9Tokenizer10TryConsumeEc.exit2 ], [ 1, %_ZN6google8protobuf2io9Tokenizer10TryConsumeEc.exit2.thread ], [ 3, %bb.d ], [ 3, %bb.a ], [ 3, %bb.b ]
  ret i32 %.0
}

; Function Attrs: mustprogress uwtable
define noundef zeroext i1 @_ZN6google8protobuf2io9Tokenizer20TryConsumeWhitespaceEv(ptr noundef nonnull align 8 dereferenceable(192) %0) local_unnamed_addr #3 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 191
  %i.b = load i8, ptr %i.a, align 1, !tbaa !55, !range !42, !noundef !43
  %i.c = trunc nuw i8 %i.b to i1
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 128 ; 3 uses
  %i.e = load i8, ptr %i.d, align 8, !tbaa !44    ; 2 uses
  br i1 %i.c, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  switch i8 %i.e, label %_ZN6google8protobuf2io9Tokenizer13TryConsumeOneINS1_12_GLOBAL__N_119WhitespaceNoNewlineEEEbv.exit [
    i8 32, label %.preheader
    i8 13, label %.preheader
    i8 11, label %.preheader
    i8 9, label %.preheader
    i8 12, label %.preheader
  ]

.preheader:                                       ; preds = %bb.b, %bb.b, %bb.b, %bb.b, %bb.b
  br label %bb.c

bb.c:                                             ; preds = %.backedge, %.preheader
  tail call void @_ZN6google8protobuf2io9Tokenizer8NextCharEv(ptr noundef nonnull align 8 dereferenceable(192) %0)
  %i.f = load i8, ptr %i.d, align 8, !tbaa !44
  switch i8 %i.f, label %_ZN6google8protobuf2io9Tokenizer17ConsumeZeroOrMoreINS1_12_GLOBAL__N_119WhitespaceNoNewlineEEEvv.exit [
    i8 32, label %.backedge
    i8 13, label %.backedge
    i8 11, label %.backedge
    i8 9, label %.backedge
    i8 12, label %.backedge
  ]

.backedge:                                        ; preds = %bb.c, %bb.c, %bb.c, %bb.c, %bb.c
  br label %bb.c, !llvm.loop !3

_ZN6google8protobuf2io9Tokenizer17ConsumeZeroOrMoreINS1_12_GLOBAL__N_119WhitespaceNoNewlineEEEvv.exit: ; preds = %bb.c
  store i32 7, ptr %0, align 8, !tbaa !39
  br label %_ZN6google8protobuf2io9Tokenizer13TryConsumeOneINS1_12_GLOBAL__N_119WhitespaceNoNewlineEEEbv.exit

bb.d:                                             ; preds = %bb.a
  switch i8 %i.e, label %_ZN6google8protobuf2io9Tokenizer13TryConsumeOneINS1_12_GLOBAL__N_119WhitespaceNoNewlineEEEbv.exit [
    i8 32, label %.preheader2
    i8 13, label %.preheader2
    i8 11, label %.preheader2
    i8 10, label %.preheader2
    i8 9, label %.preheader2
    i8 12, label %.preheader2
  ]

.preheader2:                                      ; preds = %bb.d, %bb.d, %bb.d, %bb.d, %bb.d, %bb.d
  br label %bb.e

bb.e:                                             ; preds = %.backedge3, %.preheader2
  tail call void @_ZN6google8protobuf2io9Tokenizer8NextCharEv(ptr noundef nonnull align 8 dereferenceable(192) %0)
  %i.g = load i8, ptr %i.d, align 8, !tbaa !44
  switch i8 %i.g, label %_ZN6google8protobuf2io9Tokenizer17ConsumeZeroOrMoreINS1_12_GLOBAL__N_110WhitespaceEEEvv.exit [
    i8 32, label %.backedge3
    i8 13, label %.backedge3
    i8 11, label %.backedge3
    i8 10, label %.backedge3
    i8 9, label %.backedge3
    i8 12, label %.backedge3
  ]

.backedge3:                                       ; preds = %bb.e, %bb.e, %bb.e, %bb.e, %bb.e, %bb.e
  br label %bb.e, !llvm.loop !85

_ZN6google8protobuf2io9Tokenizer17ConsumeZeroOrMoreINS1_12_GLOBAL__N_110WhitespaceEEEvv.exit: ; preds = %bb.e
  store i32 7, ptr %0, align 8, !tbaa !39
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 190
  %i.i = load i8, ptr %i.h, align 2, !tbaa !54, !range !42, !noundef !43
  %i.j = trunc nuw i8 %i.i to i1
  br label %_ZN6google8protobuf2io9Tokenizer13TryConsumeOneINS1_12_GLOBAL__N_119WhitespaceNoNewlineEEEbv.exit

_ZN6google8protobuf2io9Tokenizer13TryConsumeOneINS1_12_GLOBAL__N_119WhitespaceNoNewlineEEEbv.exit: ; preds = %bb.d, %bb.b, %_ZN6google8protobuf2io9Tokenizer17ConsumeZeroOrMoreINS1_12_GLOBAL__N_110WhitespaceEEEvv.exit, %_ZN6google8protobuf2io9Tokenizer17ConsumeZeroOrMoreINS1_12_GLOBAL__N_119WhitespaceNoNewlineEEEvv.exit
  %.0 = phi i1 [ true, %_ZN6google8protobuf2io9Tokenizer17ConsumeZeroOrMoreINS1_12_GLOBAL__N_119WhitespaceNoNewlineEEEvv.exit ], [ false, %bb.b ], [ %i.j, %_ZN6google8protobuf2io9Tokenizer17ConsumeZeroOrMoreINS1_12_GLOBAL__N_110WhitespaceEEEvv.exit ], [ false, %bb.d ]
  ret i1 %.0
}

; Function Attrs: mustprogress uwtable
define noundef zeroext i1 @_ZN6google8protobuf2io9Tokenizer17TryConsumeNewlineEv(ptr noundef nonnull align 8 dereferenceable(192) %0) local_unnamed_addr #3 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 190
  %i.b = load i8, ptr %i.a, align 2, !tbaa !54, !range !42, !noundef !43
  %i.c = trunc nuw i8 %i.b to i1
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 191
  %i.e = load i8, ptr %i.d, align 1, !range !42
  %i.f = trunc nuw i8 %i.e to i1
  %or.cond = select i1 %i.c, i1 %i.f, i1 false
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.h = load i8, ptr %i.g, align 8
  %i.i = icmp eq i8 %i.h, 10
  %or.cond6 = select i1 %or.cond, i1 %i.i, i1 false ; 2 uses
  br i1 %or.cond6, label %bb.b, label %_ZN6google8protobuf2io9Tokenizer10TryConsumeEc.exit

bb.b:                                             ; preds = %bb.a
  tail call void @_ZN6google8protobuf2io9Tokenizer8NextCharEv(ptr noundef nonnull align 8 dereferenceable(192) %0)
  store i32 8, ptr %0, align 8, !tbaa !39
  br label %_ZN6google8protobuf2io9Tokenizer10TryConsumeEc.exit

_ZN6google8protobuf2io9Tokenizer10TryConsumeEc.exit: ; preds = %bb.a, %bb.b
  ret i1 %or.cond6
}

; Function Attrs: mustprogress uwtable
define noundef zeroext i1 @_ZN6google8protobuf2io9Tokenizer4NextEv(ptr noundef nonnull align 8 dereferenceable(192) initializes((56, 60)) %0) local_unnamed_addr #3 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 5 uses
  %i.b = alloca ptr, align 8                      ; 5 uses
  %1 = alloca [1 x %"class.absl::lts_20250512::str_format_internal::FormatArgImpl"], align 8 ; 5 uses
  %i.c = alloca i64, align 8                      ; 5 uses
  %2 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.e = load i32, ptr %0, align 8, !tbaa !40
  store i32 %i.e, ptr %i.d, align 8, !tbaa !40
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 6 uses
  tail call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %i.f, ptr noundef nonnull align 8 dereferenceable(32) %i.g)
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 5 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(12) %i.h, ptr noundef nonnull align 8 dereferenceable(12) %i.i, i64 12, i1 false)
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 152 ; 8 uses
  %i.k = load i8, ptr %i.j, align 8, !tbaa !41, !range !42, !noundef !43
  %i.l = trunc nuw i8 %i.k to i1
  br i1 %i.l, label %.critedge2.thread50, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 156 ; 8 uses
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 160 ; 12 uses
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 44 ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 168 ; 10 uses
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 148 ; 11 uses
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 176 ; 12 uses
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 191
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 128 ; 14 uses
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 144 ; 8 uses
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 136 ; 11 uses
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 112 ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 190 ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 3 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 6 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 120 ; 3 uses
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %.critedge2
  store i32 0, ptr %0, align 8, !tbaa !39
  store i64 0, ptr %i.m, align 8, !tbaa !18
  %i.ad = load ptr, ptr %i.g, align 8, !tbaa !53
  store i8 0, ptr %i.ad, align 1, !tbaa !19
  %i.ae = load <2 x i32>, ptr %i.n, align 4, !tbaa !11
  store <2 x i32> %i.ae, ptr %i.i, align 8, !tbaa !11
  store ptr %i.g, ptr %i.q, align 8, !tbaa !32
  %i.af = load i32, ptr %i.r, align 4, !tbaa !48
  store i32 %i.af, ptr %i.s, align 8, !tbaa !33
  %i.ag = load i8, ptr %i.t, align 1, !tbaa !55, !range !42, !noundef !43
  %i.ah = trunc nuw i8 %i.ag to i1
  %i.ai = load i8, ptr %i.u, align 8, !tbaa !44   ; 2 uses
  %switch.tableidx = add i8 %i.ai, -9             ; 5 uses
  %i.aj = icmp ult i8 %switch.tableidx, 24        ; 2 uses
  br i1 %i.ah, label %bb.c, label %bb.t

bb.c:                                             ; preds = %bb.b
  br i1 %i.aj, label %switch.hole_check, label %_ZN6google8protobuf2io9Tokenizer20TryConsumeWhitespaceEv.exit.thread

switch.hole_check:                                ; preds = %bb.c
  %switch.maskindex = zext nneg i8 %switch.tableidx to i32
  %switch.shifted = lshr i32 8388637, %switch.maskindex
  %switch.lobit = trunc i32 %switch.shifted to i1
  br i1 %switch.lobit, label %switch.lookup, label %_ZN6google8protobuf2io9Tokenizer20TryConsumeWhitespaceEv.exit.thread

switch.hole_check202:                             ; preds = %_ZN6google8protobuf2io9Tokenizer8NextCharEv.exit43
  %switch.maskindex204 = zext nneg i8 %switch.tableidx200 to i32
  %switch.shifted205 = lshr i32 8388637, %switch.maskindex204
  %switch.lobit206 = trunc i32 %switch.shifted205 to i1
  br i1 %switch.lobit206, label %switch.lookup, label %_ZN6google8protobuf2io9Tokenizer20TryConsumeWhitespaceEv.exit.thread47

switch.lookup:                                    ; preds = %switch.hole_check, %switch.hole_check202
  %switch.tableidx200.sink = phi i8 [ %switch.tableidx200, %switch.hole_check202 ], [ %switch.tableidx, %switch.hole_check ]
  %switch.table._ZN6google8protobuf2io9Tokenizer4NextEv.7.sink = phi ptr [ @switch.table._ZN6google8protobuf2io9Tokenizer4NextEv.7, %switch.hole_check202 ], [ @switch.table._ZN6google8protobuf2io9Tokenizer4NextEv.7, %switch.hole_check ]
  %i.ak = zext nneg i8 %switch.tableidx200.sink to i64
  %switch.gep207 = getelementptr inbounds nuw i8, ptr %switch.table._ZN6google8protobuf2io9Tokenizer4NextEv.7.sink, i64 %i.ak
  %switch.load208 = load i8, ptr %switch.gep207, align 1
  switch i8 %switch.load208, label %bb.f [
    i8 10, label %bb.d
    i8 9, label %bb.e
  ]

bb.d:                                             ; preds = %switch.lookup
  %i.al = load i32, ptr %i.n, align 4, !tbaa !30
  %i.am = add nsw i32 %i.al, 1
  store i32 %i.am, ptr %i.n, align 4, !tbaa !30
  br label %bb.g

end_hunk_0

Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ncnn/original/ncnn2int8?download=true
inline.NumInlined: 1198
inline.NumDeleted: 366
loop-unroll.NumRuntimeUnrolled: 6
loop-unroll.NumUnrolled: 11
begin_hunk_0_@_ZN11NetQuantize27quantize_multiheadattentionEv:bb.a
_ZN4ncnn3MataSERKS0_.exit:                        ; preds = %bb.gf, %.noexc, %bb.ho, %_ZNK4ncnn3Mat5emptyEv.exit
  %i.acb = phi i1 [ true, %_ZNK4ncnn3Mat5emptyEv.exit ], [ false, %.noexc ], [ false, %bb.ho ], [ true, %bb.gf ]
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #25
  %i.acc = load ptr, ptr %i.by, align 8, !tbaa !79 ; 2 uses
  %.not.i252 = icmp eq ptr %i.acc, null
  br i1 %.not.i252, label %_ZN4ncnn3MatD2Ev.exit118, label %bb.hx

bb.hx:                                            ; preds = %_ZN4ncnn3MataSERKS0_.exit
  %i.acd = atomicrmw add ptr %i.acc, i32 -1 acq_rel, align 4
  %i.ace = icmp eq i32 %i.acd, 1
  br i1 %i.ace, label %bb.hy, label %_ZN4ncnn3MatD2Ev.exit118

bb.hy:                                            ; preds = %bb.hx
  %i.acf = load ptr, ptr %i.cb, align 16, !tbaa !80 ; 3 uses
  %.not3.i253 = icmp eq ptr %i.acf, null
  %i.acg = load ptr, ptr %18, align 16, !tbaa !81 ; 3 uses
  br i1 %.not3.i253, label %bb.ia, label %bb.hz

bb.hz:                                            ; preds = %bb.hy
  %i.ach = load ptr, ptr %i.acf, align 8, !tbaa !30
  %i.aci = getelementptr inbounds nuw i8, ptr %i.ach, i64 24
  %i.acj = load ptr, ptr %i.aci, align 8
  invoke void %i.acj(ptr noundef nonnull align 8 dereferenceable(8) %i.acf, ptr noundef %i.acg)
          to label %_ZN4ncnn3MatD2Ev.exit118 unwind label %bb.ic, !inline_history !1

bb.ia:                                            ; preds = %bb.hy
  %.not.i267 = icmp eq ptr %i.acg, null
  br i1 %.not.i267, label %_ZN4ncnn3MatD2Ev.exit118, label %bb.ib

bb.ib:                                            ; preds = %bb.ia
  call void @free(ptr noundef nonnull %i.acg) #25
  br label %_ZN4ncnn3MatD2Ev.exit118

bb.ic:                                            ; preds = %bb.hz
  %i.ack = landingpad { ptr, i32 }
          catch ptr null
  %i.acl = extractvalue { ptr, i32 } %i.ack, 0
  call void @__clang_call_terminate(ptr %i.acl) #30
  unreachable

_ZN4ncnn3MatD2Ev.exit118:                         ; preds = %bb.hx, %_ZN4ncnn3MataSERKS0_.exit, %bb.hz, %bb.ia, %bb.ib
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #25
  %i.acm = load ptr, ptr %i.br, align 8, !tbaa !79 ; 2 uses
  %.not.i256 = icmp eq ptr %i.acm, null
  br i1 %.not.i256, label %_ZN4ncnn3MatD2Ev.exit117, label %bb.id

bb.id:                                            ; preds = %_ZN4ncnn3MatD2Ev.exit118
  %i.acn = atomicrmw add ptr %i.acm, i32 -1 acq_rel, align 4
  %i.aco = icmp eq i32 %i.acn, 1
  br i1 %i.aco, label %bb.ie, label %_ZN4ncnn3MatD2Ev.exit117

bb.ie:                                            ; preds = %bb.id
  %i.acp = load ptr, ptr %i.bu, align 8, !tbaa !80 ; 3 uses
  %.not3.i257 = icmp eq ptr %i.acp, null
  %i.acq = load ptr, ptr %17, align 8, !tbaa !81  ; 3 uses
  br i1 %.not3.i257, label %bb.ig, label %bb.if

bb.if:                                            ; preds = %bb.ie
  %i.acr = load ptr, ptr %i.acp, align 8, !tbaa !30
  %i.acs = getelementptr inbounds nuw i8, ptr %i.acr, i64 24
  %i.act = load ptr, ptr %i.acs, align 8
  invoke void %i.act(ptr noundef nonnull align 8 dereferenceable(8) %i.acp, ptr noundef %i.acq)
          to label %_ZN4ncnn3MatD2Ev.exit117 unwind label %bb.ii, !inline_history !1

bb.ig:                                            ; preds = %bb.ie
  %.not.i265 = icmp eq ptr %i.acq, null
  br i1 %.not.i265, label %_ZN4ncnn3MatD2Ev.exit117, label %bb.ih

bb.ih:                                            ; preds = %bb.ig
  call void @free(ptr noundef nonnull %i.acq) #25
  br label %_ZN4ncnn3MatD2Ev.exit117

bb.ii:                                            ; preds = %bb.if
  %i.acu = landingpad { ptr, i32 }
          catch ptr null
  %i.acv = extractvalue { ptr, i32 } %i.acu, 0
  call void @__clang_call_terminate(ptr %i.acv) #30
  unreachable

_ZN4ncnn3MatD2Ev.exit117:                         ; preds = %bb.id, %_ZN4ncnn3MatD2Ev.exit118, %bb.if, %bb.ig, %bb.ih
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #25
  br i1 %i.acb, label %.thread476, label %bb.ij

.thread476:                                       ; preds = %_ZN4ncnn3MatD2Ev.exit117, %_ZN4ncnn3MatD2Ev.exit123, %_ZN4ncnn3MatD2Ev.exit129, %_ZN4ncnn3MatD2Ev.exit135, %bb.z
  %.685.ph = phi i32 [ -1, %bb.z ], [ -100, %_ZN4ncnn3MatD2Ev.exit135 ], [ -100, %_ZN4ncnn3MatD2Ev.exit129 ], [ -100, %_ZN4ncnn3MatD2Ev.exit123 ], [ -100, %_ZN4ncnn3MatD2Ev.exit117 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #25
  br label %.thread480.sink.split

bb.ij:                                            ; preds = %_ZN4ncnn3MatD2Ev.exit117
  %i.acw = getelementptr inbounds nuw i8, ptr %i.it, i64 240
  store i32 2, ptr %i.acw, align 8, !tbaa !174
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #25
  br label %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread

_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread: ; preds = %bb.b, %bb.ij, %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit
  %i.acx = add nuw i64 %.0781052, 1               ; 2 uses
  %i.acy = load ptr, ptr %i.i, align 8, !tbaa !42, !nonnull !41, !align !43 ; 2 uses
  %i.acz = getelementptr inbounds nuw i8, ptr %i.acy, i64 8
  %i.ada = load ptr, ptr %i.acz, align 8, !tbaa !47
  %i.adb = load ptr, ptr %i.acy, align 8, !tbaa !48 ; 2 uses
  %i.adc = ptrtoint ptr %i.ada to i64
  %i.add = ptrtoint ptr %i.adb to i64
  %i.ade = sub i64 %i.adc, %i.add
  %i.adf = ashr exact i64 %i.ade, 3
  %i.adg = icmp ult i64 %i.acx, %i.adf
  br i1 %i.adg, label %bb.b, label %.thread480, !llvm.loop !862

bb.ik:                                            ; preds = %_ZN4ncnn3MatD2Ev.exit132, %_ZN4ncnn3MatD2Ev.exit126, %_ZN4ncnn3MatD2Ev.exit120, %_ZN4ncnn3MatD2Ev.exit
  %.pn108.pn = phi { ptr, i32 } [ %.pn99.pn, %_ZN4ncnn3MatD2Ev.exit132 ], [ %i.aai, %_ZN4ncnn3MatD2Ev.exit ], [ %.pn105.pn, %_ZN4ncnn3MatD2Ev.exit120 ], [ %.pn102.pn, %_ZN4ncnn3MatD2Ev.exit126 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #25
  resume { ptr, i32 } %.pn108.pn

.thread480.sink.split:                            ; preds = %.thread476, %.thread, %.thread470, %.thread473
  %.ph = phi i32 [ -1, %.thread ], [ -1, %.thread470 ], [ -1, %.thread473 ], [ %.685.ph, %.thread476 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #25
  br label %.thread480

.thread480:                                       ; preds = %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread, %.thread480.sink.split, %bb.a
  %i.adh = phi i32 [ 0, %bb.a ], [ %.ph, %.thread480.sink.split ], [ 0, %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread ]
  ret i32 %i.adh
}

; Function Attrs: mustprogress nofree nounwind uwtable
define dso_local noundef i32 @_ZN11NetQuantize13quantize_sdpaEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(216) %0) local_unnamed_addr #16 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !42, !nonnull !41, !align !43 ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !47
  %i.e = load ptr, ptr %i.b, align 8, !tbaa !48   ; 2 uses
  %.not8 = icmp eq ptr %i.d, %i.e
  br i1 %.not8, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread, %bb.a
  ret i32 0

.lr.ph:                                           ; preds = %bb.a, %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread
  %i.f = phi ptr [ %i.w, %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread ], [ %i.e, %bb.a ] ; 3 uses
  %i.g = phi ptr [ %i.x, %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread ], [ %i.b, %bb.a ] ; 2 uses
  %.07 = phi i64 [ %i.y, %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread ], [ 0, %bb.a ] ; 2 uses
  %i.h = getelementptr inbounds nuw [8 x i8], ptr %i.f, i64 %.07
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !55   ; 4 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 56
  %i.k = load i64, ptr %i.j, align 8, !tbaa !60
  %i.l = icmp eq i64 %i.k, 4
  br i1 %i.l, label %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit, label %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread

_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit: ; preds = %.lr.ph
  %i.m = getelementptr inbounds nuw i8, ptr %i.i, i64 48
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !59
  %i.o = load i32, ptr %i.n, align 1
  %i.p = icmp ne i32 %i.o, 1095779411
  %i.q = zext i1 %i.p to i32
  %.not = icmp eq i32 %i.q, 0
  br i1 %.not, label %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread6, label %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread

_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread6: ; preds = %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit
  %i.r = load ptr, ptr @stderr, align 8, !tbaa !19
  %i.s = getelementptr inbounds nuw i8, ptr %i.i, i64 80
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !59
  %i.u = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.r, ptr noundef nonnull @.str.183, ptr noundef %i.t) #27 ; 0 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.i, i64 220
  store i32 2, ptr %i.v, align 4, !tbaa !182
  %.pre = load ptr, ptr %i.a, align 8, !tbaa !42  ; 2 uses
  %.pre9 = load ptr, ptr %.pre, align 8, !tbaa !48
  br label %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread

_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread: ; preds = %.lr.ph, %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit, %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread6
  %i.w = phi ptr [ %i.f, %.lr.ph ], [ %i.f, %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit ], [ %.pre9, %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread6 ] ; 2 uses
  %i.x = phi ptr [ %i.g, %.lr.ph ], [ %i.g, %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit ], [ %.pre, %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread6 ] ; 2 uses
  %i.y = add nuw i64 %.07, 1                      ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %i.x, i64 8
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !47
  %i.ab = ptrtoint ptr %i.aa to i64
  %i.ac = ptrtoint ptr %i.w to i64
  %i.ad = sub i64 %i.ab, %i.ac
  %i.ae = ashr exact i64 %i.ad, 3
  %i.af = icmp ult i64 %i.y, %i.ae
  br i1 %i.af, label %.lr.ph, label %._crit_edge, !llvm.loop !6
}

; Function Attrs: mustprogress uwtable
define dso_local noundef i32 @_ZN11NetQuantize15fuse_requantizeEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(216) %0) local_unnamed_addr #3 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 11 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !42, !nonnull !41, !align !43 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !47   ; 2 uses
  %i.e = load ptr, ptr %i.b, align 8, !tbaa !48   ; 2 uses
  %i.f = ptrtoint ptr %i.d to i64
  %i.g = ptrtoint ptr %i.e to i64
  %i.h = sub i64 %i.f, %i.g
  %i.i = ashr exact i64 %i.h, 3                   ; 11 uses
  %.not390 = icmp eq ptr %i.d, %i.e
  br i1 %.not390, label %._crit_edge389, label %.lr.ph363

.lr.ph388:                                        ; preds = %_ZN4ncnn3MataSERKS0_.exit212
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 80
  br label %bb.an

.lr.ph363:                                        ; preds = %bb.a, %_ZN4ncnn3MataSERKS0_.exit212
  %.0167361 = phi i64 [ %i.np, %_ZN4ncnn3MataSERKS0_.exit212 ], [ 0, %bb.a ] ; 7 uses
  %i.k = load ptr, ptr %i.a, align 8, !tbaa !42, !nonnull !41, !align !43
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !48   ; 3 uses
  %i.m = getelementptr inbounds nuw [8 x i8], ptr %i.l, i64 %.0167361
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !55   ; 4 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 48 ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.n, i64 56
  %i.q = load i64, ptr %i.p, align 8, !tbaa !60
  switch i64 %i.q, label %_ZN4ncnn3MataSERKS0_.exit212 [
    i64 11, label %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit
    i64 20, label %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit257
  ]

_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit: ; preds = %.lr.ph363
  %i.r = load ptr, ptr %i.o, align 8, !tbaa !59   ; 2 uses
  %i.s = load i64, ptr %i.r, align 1
  %i.t = xor i64 %i.s, 8391732706658905923
  %i.u = getelementptr i8, ptr %i.r, i64 3
  %i.v = load i64, ptr %i.u, align 1
  %i.w = xor i64 %i.v, 7957695015494119286
  %i.x = or i64 %i.t, %i.w
  %i.y = icmp ne i64 %i.x, 0
  %i.z = zext i1 %i.y to i32
  %.not350 = icmp eq i32 %i.z, 0
  br i1 %.not350, label %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread306, label %_ZN4ncnn3MataSERKS0_.exit212

_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit257: ; preds = %.lr.ph363
  %i.aa = load ptr, ptr %i.o, align 8, !tbaa !59  ; 2 uses
  %i.ab = load i128, ptr %i.aa, align 1
  %i.ac = xor i128 %i.ab, 138844297650319802350679583742711721795
  %i.ad = getelementptr i8, ptr %i.aa, i64 16
  %i.ae = load i32, ptr %i.ad, align 1
  %i.af = zext i32 %i.ae to i128
  %i.ag = xor i128 %i.af, 1702062423
  %i.ah = or i128 %i.ac, %i.ag
  %i.ai = icmp ne i128 %i.ah, 0
  %i.aj = zext i1 %i.ai to i32
  %.not351 = icmp eq i32 %i.aj, 0
  br i1 %.not351, label %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread306, label %_ZN4ncnn3MataSERKS0_.exit212

_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread306: ; preds = %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit257, %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit
  %i.ak = getelementptr inbounds nuw i8, ptr %i.n, i64 136
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !82
  %i.am = load i32, ptr %i.al, align 4, !tbaa !83
  %.0159357 = add nuw i64 %.0167361, 1            ; 3 uses
  %i.an = icmp ult i64 %.0159357, %i.i
  br i1 %i.an, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread306, %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit261.thread
  %.0159358 = phi i64 [ %.0159, %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit261.thread ], [ %.0159357, %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread306 ] ; 3 uses
  %i.ao = getelementptr inbounds nuw [8 x i8], ptr %i.l, i64 %.0159358
  %i.ap = load ptr, ptr %i.ao, align 8, !tbaa !55 ; 4 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ap, i64 48 ; 2 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %i.ap, i64 56
  %i.as = load i64, ptr %i.ar, align 8, !tbaa !60
  switch i64 %i.as, label %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit261.thread [
    i64 11, label %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit259
    i64 20, label %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit261
  ]

_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit259: ; preds = %.lr.ph
  %i.at = load ptr, ptr %i.aq, align 8, !tbaa !59 ; 2 uses
  %i.au = load i64, ptr %i.at, align 1
  %i.av = xor i64 %i.au, 8391732706658905923
  %i.aw = getelementptr i8, ptr %i.at, i64 3
  %i.ax = load i64, ptr %i.aw, align 1
  %i.ay = xor i64 %i.ax, 7957695015494119286
  %i.az = or i64 %i.av, %i.ay
  %i.ba = icmp ne i64 %i.az, 0
  %i.bb = zext i1 %i.ba to i32
  %.not352 = icmp eq i32 %i.bb, 0
  br i1 %.not352, label %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit259.thread308, label %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit261.thread

_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit261: ; preds = %.lr.ph
  %i.bc = load ptr, ptr %i.aq, align 8, !tbaa !59 ; 2 uses
  %i.bd = load i128, ptr %i.bc, align 1
  %i.be = xor i128 %i.bd, 138844297650319802350679583742711721795
  %i.bf = getelementptr i8, ptr %i.bc, i64 16
  %i.bg = load i32, ptr %i.bf, align 1
  %i.bh = zext i32 %i.bg to i128
  %i.bi = xor i128 %i.bh, 1702062423
  %i.bj = or i128 %i.be, %i.bi
  %i.bk = icmp ne i128 %i.bj, 0
  %i.bl = zext i1 %i.bk to i32
  %.not353 = icmp eq i32 %i.bl, 0
  br i1 %.not353, label %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit259.thread308, label %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit261.thread

_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit259.thread308: ; preds = %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit261, %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit259
  %i.bm = getelementptr inbounds nuw i8, ptr %i.ap, i64 112
  %i.bn = getelementptr inbounds nuw i8, ptr %i.ap, i64 120
  %i.bo = load ptr, ptr %i.bn, align 8, !tbaa !93
  %i.bp = load ptr, ptr %i.bm, align 8, !tbaa !82 ; 2 uses
  %i.bq = ptrtoint ptr %i.bo to i64
  %i.br = ptrtoint ptr %i.bp to i64
  %i.bs = sub i64 %i.bq, %i.br
  %.not181 = icmp eq i64 %i.bs, 4
  br i1 %.not181, label %bb.b, label %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit261.thread

bb.b:                                             ; preds = %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit259.thread308
  %i.bt = load i32, ptr %i.bp, align 4, !tbaa !83
  %i.bu = icmp eq i32 %i.bt, %i.am
  br i1 %i.bu, label %._crit_edge, label %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit261.thread

_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit261.thread: ; preds = %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit259, %.lr.ph, %bb.b, %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit259.thread308, %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit261
  %.0159 = add nuw i64 %.0159358, 1               ; 2 uses
  %exitcond.not = icmp eq i64 %.0159, %i.i
  br i1 %exitcond.not, label %_ZN4ncnn3MataSERKS0_.exit212, label %.lr.ph, !llvm.loop !864

._crit_edge:                                      ; preds = %bb.b, %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread306
  %.0159.lcssa = phi i64 [ %.0159357, %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread306 ], [ %.0159358, %bb.b ] ; 6 uses
  %i.bv = icmp eq i64 %.0159.lcssa, %i.i
  br i1 %i.bv, label %_ZN4ncnn3MataSERKS0_.exit212, label %bb.c

bb.c:                                             ; preds = %._crit_edge
  %i.bw = load ptr, ptr @stderr, align 8, !tbaa !19
  %i.bx = getelementptr inbounds nuw i8, ptr %i.n, i64 80
  %i.by = load ptr, ptr %i.bx, align 8, !tbaa !59
  %i.bz = getelementptr inbounds nuw [8 x i8], ptr %i.l, i64 %.0159.lcssa
  %i.ca = load ptr, ptr %i.bz, align 8, !tbaa !55
  %i.cb = getelementptr inbounds nuw i8, ptr %i.ca, i64 80
  %i.cc = load ptr, ptr %i.cb, align 8, !tbaa !59
  %i.cd = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.bw, ptr noundef nonnull @.str.184, ptr noundef %i.by, ptr noundef %i.cc) #27 ; 0 uses
  %i.ce = load ptr, ptr %i.a, align 8, !tbaa !42, !nonnull !41, !align !43
  %i.cf = load ptr, ptr %i.ce, align 8, !tbaa !48 ; 7 uses
  %i.cg = getelementptr inbounds nuw [8 x i8], ptr %i.cf, i64 %.0167361
  %i.ch = load ptr, ptr %i.cg, align 8, !tbaa !55 ; 18 uses
  %i.ci = getelementptr inbounds nuw i8, ptr %i.ch, i64 56
  %i.cj = load i64, ptr %i.ci, align 8, !tbaa !60 ; 2 uses
  %i.ck = icmp eq i64 %i.cj, 11
  br i1 %i.ck, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit, label %_ZN4ncnn3MataSERKS0_.exit216

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit: ; preds = %bb.c
  %i.cl = getelementptr inbounds nuw i8, ptr %i.ch, i64 48
  %i.cm = load ptr, ptr %i.cl, align 8, !tbaa !59 ; 2 uses
  %i.cn = load i64, ptr %i.cm, align 1
  %i.co = xor i64 %i.cn, 8391732706658905923
  %i.cp = getelementptr i8, ptr %i.cm, i64 3
  %i.cq = load i64, ptr %i.cp, align 1
  %i.cr = xor i64 %i.cq, 7957695015494119286
  %i.cs = or i64 %i.co, %i.cr
  %i.ct = icmp ne i64 %i.cs, 0
  %i.cu = zext i1 %i.ct to i32
  %i.cv = icmp eq i32 %i.cu, 0
  br i1 %i.cv, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit265

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit
  %i.cw = getelementptr inbounds nuw [8 x i8], ptr %i.cf, i64 %.0159.lcssa
  %i.cx = load ptr, ptr %i.cw, align 8, !tbaa !55 ; 11 uses
  %i.cy = getelementptr inbounds nuw i8, ptr %i.cx, i64 56
  %i.cz = load i64, ptr %i.cy, align 8, !tbaa !60
  %i.da = icmp eq i64 %i.cz, 11
  br i1 %i.da, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit263, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit265

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit263: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread
  %i.db = getelementptr inbounds nuw i8, ptr %i.cx, i64 48
  %i.dc = load ptr, ptr %i.db, align 8, !tbaa !59 ; 2 uses
  %i.dd = load i64, ptr %i.dc, align 1
  %i.de = xor i64 %i.dd, 8391732706658905923
  %i.df = getelementptr i8, ptr %i.dc, i64 3
  %i.dg = load i64, ptr %i.df, align 1
  %i.dh = xor i64 %i.dg, 7957695015494119286
  %i.di = or i64 %i.de, %i.dh
  %i.dj = icmp ne i64 %i.di, 0
  %i.dk = zext i1 %i.dj to i32
  %i.dl = icmp eq i32 %i.dk, 0
  br i1 %i.dl, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit263.thread, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit265

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit263.thread: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit263
  %i.dm = getelementptr inbounds nuw i8, ptr %i.ch, i64 368
  %i.dn = load i64, ptr %i.dm, align 8, !tbaa !870
  %.not182 = icmp eq i64 %i.dn, 1
  br i1 %.not182, label %bb.d, label %_ZN4ncnn3MataSERKS0_.exit212

bb.d:                                             ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit263.thread
  %i.do = getelementptr inbounds nuw i8, ptr %i.cx, i64 368
  %i.dp = load i64, ptr %i.do, align 8, !tbaa !870
  %.not183 = icmp eq i64 %i.dp, 1
  br i1 %.not183, label %.critedge, label %_ZN4ncnn3MataSERKS0_.exit212

.critedge:                                        ; preds = %bb.d
  %i.dq = getelementptr inbounds nuw i8, ptr %i.ch, i64 264 ; 2 uses
  %i.dr = load i32, ptr %i.dq, align 8, !tbaa !136
  %i.ds = add nsw i32 %i.dr, 100
  store i32 %i.ds, ptr %i.dq, align 8, !tbaa !136
  %i.dt = getelementptr inbounds nuw i8, ptr %i.cx, i64 568 ; 2 uses
  %i.du = getelementptr inbounds nuw i8, ptr %i.ch, i64 640 ; 4 uses
  %i.dv = icmp eq ptr %i.du, %i.dt
  br i1 %i.dv, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit265, label %bb.e

bb.e:                                             ; preds = %.critedge
  %i.dw = getelementptr inbounds nuw i8, ptr %i.cx, i64 576
  %i.dx = load ptr, ptr %i.dw, align 8, !tbaa !79 ; 2 uses
end_hunk_0
begin_hunk_1_@_ZN11NetQuantize15fuse_requantizeEv:bb.a
bb.ab:                                            ; preds = %bb.aa
  %i.jx = load ptr, ptr %i.jv, align 8, !tbaa !30
  %i.jy = getelementptr inbounds nuw i8, ptr %i.jx, i64 24
  %i.jz = load ptr, ptr %i.jy, align 8
  tail call void %i.jz(ptr noundef nonnull align 8 dereferenceable(8) %i.jv, ptr noundef %i.jw), !inline_history !1
  br label %_ZN4ncnn3MataSERKS0_.exit214

bb.ac:                                            ; preds = %bb.aa
  %.not.i250 = icmp eq ptr %i.jw, null
  br i1 %.not.i250, label %_ZN4ncnn3MataSERKS0_.exit214, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  tail call void @free(ptr noundef nonnull %i.jw) #25
  br label %_ZN4ncnn3MataSERKS0_.exit214

_ZN4ncnn3MataSERKS0_.exit214:                     ; preds = %bb.ab, %bb.z, %bb.y, %bb.ac, %bb.ad
  %i.ka = getelementptr inbounds nuw i8, ptr %i.hy, i64 664
  %i.kb = getelementptr inbounds nuw i8, ptr %i.hy, i64 672
  %i.kc = getelementptr inbounds nuw i8, ptr %i.hy, i64 688 ; 2 uses
  %i.kd = getelementptr inbounds nuw i8, ptr %i.hy, i64 704
  %i.ke = getelementptr inbounds nuw i8, ptr %i.hy, i64 712 ; 2 uses
  store i64 0, ptr %i.ke, align 8, !tbaa !78
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(28) %i.jl, i8 0, i64 28, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(20) %i.kc, i8 0, i64 20, i1 false)
  %i.kf = load <2 x ptr>, ptr %i.jk, align 8, !tbaa !94
  store <2 x ptr> %i.kf, ptr %i.jl, align 8, !tbaa !94
  %i.kg = getelementptr inbounds nuw i8, ptr %i.io, i64 584
  %i.kh = load i64, ptr %i.kg, align 8, !tbaa !95
  store i64 %i.kh, ptr %i.ka, align 8, !tbaa !95
  %i.ki = getelementptr inbounds nuw i8, ptr %i.io, i64 592
  %i.kj = load i32, ptr %i.ki, align 8, !tbaa !96
  store i32 %i.kj, ptr %i.kb, align 8, !tbaa !96
  %i.kk = getelementptr inbounds nuw i8, ptr %i.io, i64 600
  %i.kl = load ptr, ptr %i.kk, align 8, !tbaa !80
  %i.km = getelementptr inbounds nuw i8, ptr %i.hy, i64 680
  store ptr %i.kl, ptr %i.km, align 8, !tbaa !80
  %i.kn = getelementptr inbounds nuw i8, ptr %i.io, i64 608
  %i.ko = load <4 x i32>, ptr %i.kn, align 8, !tbaa !83
  store <4 x i32> %i.ko, ptr %i.kc, align 8, !tbaa !83
  %i.kp = getelementptr inbounds nuw i8, ptr %i.io, i64 624
  %i.kq = load i32, ptr %i.kp, align 8, !tbaa !90
  store i32 %i.kq, ptr %i.kd, align 8, !tbaa !90
  %i.kr = getelementptr inbounds nuw i8, ptr %i.io, i64 632
  %i.ks = load i64, ptr %i.kr, align 8, !tbaa !78
  store i64 %i.ks, ptr %i.ke, align 8, !tbaa !78
  %.pre409 = load ptr, ptr %i.a, align 8, !tbaa !42
  %.pre410 = load ptr, ptr %.pre409, align 8, !tbaa !48 ; 2 uses
  %.phi.trans.insert411 = getelementptr inbounds nuw [8 x i8], ptr %.pre410, i64 %.0167361
  %.pre412 = load ptr, ptr %.phi.trans.insert411, align 8, !tbaa !55 ; 2 uses
  %.phi.trans.insert413 = getelementptr inbounds nuw i8, ptr %.pre412, i64 56
  %.pre414 = load i64, ptr %.phi.trans.insert413, align 8, !tbaa !60
  %i.kt = icmp eq i64 %.pre414, 20
  br i1 %i.kt, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit273, label %_ZN4ncnn3MataSERKS0_.exit212

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit273: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit269, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit271, %.critedge193, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit269.thread, %_ZN4ncnn3MataSERKS0_.exit214
  %i.ku = phi ptr [ %.pre410, %_ZN4ncnn3MataSERKS0_.exit214 ], [ %i.hz, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit269.thread ], [ %i.hz, %.critedge193 ], [ %i.hz, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit271 ], [ %i.hz, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit269 ]
  %i.kv = phi ptr [ %.pre412, %_ZN4ncnn3MataSERKS0_.exit214 ], [ %i.hy, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit269.thread ], [ %i.hy, %.critedge193 ], [ %i.hy, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit271 ], [ %i.hy, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit269 ] ; 12 uses
  %i.kw = getelementptr inbounds nuw i8, ptr %i.kv, i64 48
  %i.kx = load ptr, ptr %i.kw, align 8, !tbaa !59 ; 2 uses
  %i.ky = load i128, ptr %i.kx, align 1
  %i.kz = xor i128 %i.ky, 138844297650319802350679583742711721795
  %i.la = getelementptr i8, ptr %i.kx, i64 16
  %i.lb = load i32, ptr %i.la, align 1
  %i.lc = zext i32 %i.lb to i128
  %i.ld = xor i128 %i.lc, 1702062423
  %i.le = or i128 %i.kz, %i.ld
  %i.lf = icmp ne i128 %i.le, 0
  %i.lg = zext i1 %i.lf to i32
  %i.lh = icmp eq i32 %i.lg, 0
  br i1 %i.lh, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit273.thread, label %_ZN4ncnn3MataSERKS0_.exit212

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit273.thread: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit273
  %i.li = getelementptr inbounds nuw [8 x i8], ptr %i.ku, i64 %.0159.lcssa
  %i.lj = load ptr, ptr %i.li, align 8, !tbaa !55 ; 11 uses
  %i.lk = getelementptr inbounds nuw i8, ptr %i.lj, i64 56
  %i.ll = load i64, ptr %i.lk, align 8, !tbaa !60
  %i.lm = icmp eq i64 %i.ll, 20
  br i1 %i.lm, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit275, label %_ZN4ncnn3MataSERKS0_.exit212

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit275: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit273.thread
  %i.ln = getelementptr inbounds nuw i8, ptr %i.lj, i64 48
  %i.lo = load ptr, ptr %i.ln, align 8, !tbaa !59 ; 2 uses
  %i.lp = load i128, ptr %i.lo, align 1
  %i.lq = xor i128 %i.lp, 138844297650319802350679583742711721795
  %i.lr = getelementptr i8, ptr %i.lo, i64 16
  %i.ls = load i32, ptr %i.lr, align 1
  %i.lt = zext i32 %i.ls to i128
  %i.lu = xor i128 %i.lt, 1702062423
  %i.lv = or i128 %i.lq, %i.lu
  %i.lw = icmp ne i128 %i.lv, 0
  %i.lx = zext i1 %i.lw to i32
  %i.ly = icmp eq i32 %i.lx, 0
  br i1 %i.ly, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit275.thread, label %_ZN4ncnn3MataSERKS0_.exit212

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit275.thread: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit275
  %i.lz = getelementptr inbounds nuw i8, ptr %i.kv, i64 376
  %i.ma = load i64, ptr %i.lz, align 8, !tbaa !871
  %.not188 = icmp eq i64 %i.ma, 1
  br i1 %.not188, label %bb.ae, label %_ZN4ncnn3MataSERKS0_.exit212

bb.ae:                                            ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit275.thread
  %i.mb = getelementptr inbounds nuw i8, ptr %i.lj, i64 376
  %i.mc = load i64, ptr %i.mb, align 8, !tbaa !871
  %.not189 = icmp eq i64 %i.mc, 1
  br i1 %.not189, label %.critedge195, label %_ZN4ncnn3MataSERKS0_.exit212

.critedge195:                                     ; preds = %bb.ae
  %i.md = getelementptr inbounds nuw i8, ptr %i.kv, i64 268 ; 2 uses
  %i.me = load i32, ptr %i.md, align 4, !tbaa !140
  %i.mf = add nsw i32 %i.me, 100
  store i32 %i.mf, ptr %i.md, align 4, !tbaa !140
  %i.mg = getelementptr inbounds nuw i8, ptr %i.lj, i64 576 ; 2 uses
  %i.mh = getelementptr inbounds nuw i8, ptr %i.kv, i64 648 ; 4 uses
  %i.mi = icmp eq ptr %i.mh, %i.mg
  br i1 %i.mi, label %_ZN4ncnn3MataSERKS0_.exit212, label %bb.af

bb.af:                                            ; preds = %.critedge195
  %i.mj = getelementptr inbounds nuw i8, ptr %i.lj, i64 584
  %i.mk = load ptr, ptr %i.mj, align 8, !tbaa !79 ; 2 uses
  %.not.i211 = icmp eq ptr %i.mk, null
  br i1 %.not.i211, label %bb.ah, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  %i.ml = atomicrmw add ptr %i.mk, i32 1 acq_rel, align 4 ; 0 uses
  br label %bb.ah

bb.ah:                                            ; preds = %bb.ag, %bb.af
  %i.mm = getelementptr inbounds nuw i8, ptr %i.kv, i64 656
  %i.mn = load ptr, ptr %i.mm, align 8, !tbaa !79 ; 2 uses
  %.not.i226 = icmp eq ptr %i.mn, null
  br i1 %.not.i226, label %_ZN4ncnn3Mat7releaseEv.exit228, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  %i.mo = atomicrmw add ptr %i.mn, i32 -1 acq_rel, align 4
  %i.mp = icmp eq i32 %i.mo, 1
  br i1 %i.mp, label %bb.aj, label %_ZN4ncnn3Mat7releaseEv.exit228

bb.aj:                                            ; preds = %bb.ai
  %i.mq = getelementptr inbounds nuw i8, ptr %i.kv, i64 680
  %i.mr = load ptr, ptr %i.mq, align 8, !tbaa !80 ; 3 uses
  %.not3.i227 = icmp eq ptr %i.mr, null
  %i.ms = load ptr, ptr %i.mh, align 8, !tbaa !81 ; 3 uses
  br i1 %.not3.i227, label %bb.al, label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  %i.mt = load ptr, ptr %i.mr, align 8, !tbaa !30
  %i.mu = getelementptr inbounds nuw i8, ptr %i.mt, i64 24
  %i.mv = load ptr, ptr %i.mu, align 8
  tail call void %i.mv(ptr noundef nonnull align 8 dereferenceable(8) %i.mr, ptr noundef %i.ms), !inline_history !1
  br label %_ZN4ncnn3Mat7releaseEv.exit228

bb.al:                                            ; preds = %bb.aj
  %.not.i248 = icmp eq ptr %i.ms, null
  br i1 %.not.i248, label %_ZN4ncnn3Mat7releaseEv.exit228, label %bb.am

bb.am:                                            ; preds = %bb.al
  tail call void @free(ptr noundef nonnull %i.ms) #25
  br label %_ZN4ncnn3Mat7releaseEv.exit228

_ZN4ncnn3Mat7releaseEv.exit228:                   ; preds = %bb.am, %bb.al, %bb.ah, %bb.ai, %bb.ak
  %i.mw = getelementptr inbounds nuw i8, ptr %i.kv, i64 664
  %i.mx = getelementptr inbounds nuw i8, ptr %i.kv, i64 672
  %i.my = getelementptr inbounds nuw i8, ptr %i.kv, i64 688 ; 2 uses
  %i.mz = getelementptr inbounds nuw i8, ptr %i.kv, i64 704
  %i.na = getelementptr inbounds nuw i8, ptr %i.kv, i64 712 ; 2 uses
  store i64 0, ptr %i.na, align 8, !tbaa !78
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(28) %i.mh, i8 0, i64 28, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(20) %i.my, i8 0, i64 20, i1 false)
  %i.nb = load <2 x ptr>, ptr %i.mg, align 8, !tbaa !94
  store <2 x ptr> %i.nb, ptr %i.mh, align 8, !tbaa !94
  %i.nc = getelementptr inbounds nuw i8, ptr %i.lj, i64 592
  %i.nd = load i64, ptr %i.nc, align 8, !tbaa !95
  store i64 %i.nd, ptr %i.mw, align 8, !tbaa !95
  %i.ne = getelementptr inbounds nuw i8, ptr %i.lj, i64 600
  %i.nf = load i32, ptr %i.ne, align 8, !tbaa !96
  store i32 %i.nf, ptr %i.mx, align 8, !tbaa !96
  %i.ng = getelementptr inbounds nuw i8, ptr %i.lj, i64 608
  %i.nh = load ptr, ptr %i.ng, align 8, !tbaa !80
  %i.ni = getelementptr inbounds nuw i8, ptr %i.kv, i64 680
  store ptr %i.nh, ptr %i.ni, align 8, !tbaa !80
  %i.nj = getelementptr inbounds nuw i8, ptr %i.lj, i64 616
  %i.nk = load <4 x i32>, ptr %i.nj, align 8, !tbaa !83
  store <4 x i32> %i.nk, ptr %i.my, align 8, !tbaa !83
  %i.nl = getelementptr inbounds nuw i8, ptr %i.lj, i64 632
  %i.nm = load i32, ptr %i.nl, align 8, !tbaa !90
  store i32 %i.nm, ptr %i.mz, align 8, !tbaa !90
  %i.nn = getelementptr inbounds nuw i8, ptr %i.lj, i64 640
  %i.no = load i64, ptr %i.nn, align 8, !tbaa !78
  store i64 %i.no, ptr %i.na, align 8, !tbaa !78
  br label %_ZN4ncnn3MataSERKS0_.exit212

_ZN4ncnn3MataSERKS0_.exit212:                     ; preds = %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit261.thread, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit265, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit267, %.critedge191, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit265.thread, %_ZN4ncnn3MataSERKS0_.exit216, %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit, %.lr.ph363, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit273.thread, %_ZN4ncnn3MataSERKS0_.exit214, %_ZN4ncnn3Mat7releaseEv.exit228, %.critedge195, %._crit_edge, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit263.thread, %bb.d, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit267.thread, %bb.m, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit271.thread, %bb.v, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit275.thread, %bb.ae, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit275, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit273, %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit257
  %i.np = add nuw i64 %.0167361, 1                ; 2 uses
  %exitcond392.not = icmp eq i64 %i.np, %i.i
  br i1 %exitcond392.not, label %.lr.ph388, label %.lr.ph363, !llvm.loop !865

._crit_edge389:                                   ; preds = %_ZN4ncnn3MataSERKS0_.exit, %bb.a
  ret i32 0

bb.an:                                            ; preds = %.lr.ph388, %_ZN4ncnn3MataSERKS0_.exit
  %.0158386 = phi i64 [ 0, %.lr.ph388 ], [ %i.aev, %_ZN4ncnn3MataSERKS0_.exit ] ; 9 uses
  %i.nq = load ptr, ptr %i.a, align 8, !tbaa !42, !nonnull !41, !align !43
  %i.nr = load ptr, ptr %i.nq, align 8, !tbaa !48 ; 5 uses
  %i.ns = getelementptr inbounds nuw [8 x i8], ptr %i.nr, i64 %.0158386
  %i.nt = load ptr, ptr %i.ns, align 8, !tbaa !55 ; 4 uses
  %i.nu = getelementptr inbounds nuw i8, ptr %i.nt, i64 48 ; 2 uses
  %i.nv = getelementptr inbounds nuw i8, ptr %i.nt, i64 56
  %i.nw = load i64, ptr %i.nv, align 8, !tbaa !60
  switch i64 %i.nw, label %_ZN4ncnn3MataSERKS0_.exit [
    i64 11, label %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit277
    i64 20, label %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit279
  ]

_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit277: ; preds = %bb.an
  %i.nx = load ptr, ptr %i.nu, align 8, !tbaa !59 ; 2 uses
  %i.ny = load i64, ptr %i.nx, align 1
  %i.nz = xor i64 %i.ny, 8391732706658905923
  %i.oa = getelementptr i8, ptr %i.nx, i64 3
  %i.ob = load i64, ptr %i.oa, align 1
  %i.oc = xor i64 %i.ob, 7957695015494119286
  %i.od = or i64 %i.nz, %i.oc
  %i.oe = icmp ne i64 %i.od, 0
  %i.of = zext i1 %i.oe to i32
  %.not344 = icmp eq i32 %i.of, 0
  br i1 %.not344, label %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit277.thread318, label %_ZN4ncnn3MataSERKS0_.exit

_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit279: ; preds = %bb.an
  %i.og = load ptr, ptr %i.nu, align 8, !tbaa !59 ; 2 uses
  %i.oh = load i128, ptr %i.og, align 1
  %i.oi = xor i128 %i.oh, 138844297650319802350679583742711721795
  %i.oj = getelementptr i8, ptr %i.og, i64 16
  %i.ok = load i32, ptr %i.oj, align 1
  %i.ol = zext i32 %i.ok to i128
  %i.om = xor i128 %i.ol, 1702062423
  %i.on = or i128 %i.oi, %i.om
  %i.oo = icmp ne i128 %i.on, 0
  %i.op = zext i1 %i.oo to i32
  %.not345 = icmp eq i32 %i.op, 0
  br i1 %.not345, label %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit277.thread318, label %_ZN4ncnn3MataSERKS0_.exit

_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit277.thread318: ; preds = %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit279, %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit277
  %i.oq = getelementptr inbounds nuw i8, ptr %i.nt, i64 136
  %i.or = load ptr, ptr %i.oq, align 8, !tbaa !82
  %i.os = load i32, ptr %i.or, align 4, !tbaa !83
  %.0157364 = add nuw i64 %.0158386, 1            ; 3 uses
  %i.ot = icmp ult i64 %.0157364, %i.i
  br i1 %i.ot, label %.lr.ph367, label %._crit_edge368

.lr.ph367:                                        ; preds = %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit277.thread318, %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit281.thread
  %.0157366 = phi i64 [ %.0157, %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit281.thread ], [ %.0157364, %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit277.thread318 ] ; 4 uses
  %.0157.in365 = phi i64 [ %.0157366, %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit281.thread ], [ %.0158386, %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit277.thread318 ]
  %i.ou = getelementptr inbounds nuw [8 x i8], ptr %i.nr, i64 %.0157366
  %i.ov = load ptr, ptr %i.ou, align 8, !tbaa !55 ; 4 uses
  %i.ow = getelementptr inbounds nuw i8, ptr %i.ov, i64 56
  %i.ox = load i64, ptr %i.ow, align 8, !tbaa !60
  %i.oy = icmp eq i64 %i.ox, 5
  br i1 %i.oy, label %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit281, label %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit281.thread

_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit281: ; preds = %.lr.ph367
  %i.oz = getelementptr inbounds nuw i8, ptr %i.ov, i64 48
  %i.pa = load ptr, ptr %i.oz, align 8, !tbaa !59 ; 2 uses
  %i.pb = load i32, ptr %i.pa, align 1
  %i.pc = xor i32 %i.pb, 1768714323
  %i.pd = getelementptr i8, ptr %i.pa, i64 4
  %i.pe = load i8, ptr %i.pd, align 1
  %i.pf = zext i8 %i.pe to i32
  %i.pg = xor i32 %i.pf, 116
  %i.ph = or i32 %i.pc, %i.pg
  %i.pi = icmp ne i32 %i.ph, 0
  %i.pj = zext i1 %i.pi to i32
  %.not346 = icmp eq i32 %i.pj, 0
  br i1 %.not346, label %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit281.thread320, label %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit281.thread

_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit281.thread320: ; preds = %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit281
  %i.pk = getelementptr inbounds nuw i8, ptr %i.ov, i64 112
  %i.pl = getelementptr inbounds nuw i8, ptr %i.ov, i64 120
  %i.pm = load ptr, ptr %i.pl, align 8, !tbaa !93
  %i.pn = load ptr, ptr %i.pk, align 8, !tbaa !82 ; 2 uses
  %i.po = ptrtoint ptr %i.pm to i64
  %i.pp = ptrtoint ptr %i.pn to i64
  %i.pq = sub i64 %i.po, %i.pp
  %.not = icmp eq i64 %i.pq, 4
  br i1 %.not, label %bb.ao, label %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit281.thread

bb.ao:                                            ; preds = %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit281.thread320
  %i.pr = load i32, ptr %i.pn, align 4, !tbaa !83
  %i.ps = icmp eq i32 %i.pr, %i.os
  br i1 %i.ps, label %._crit_edge368, label %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit281.thread

_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit281.thread: ; preds = %.lr.ph367, %bb.ao, %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit281.thread320, %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit281
  %.0157 = add nuw i64 %.0157366, 1               ; 2 uses
  %exitcond393.not = icmp eq i64 %.0157, %i.i
  br i1 %exitcond393.not, label %_ZN4ncnn3MataSERKS0_.exit, label %.lr.ph367, !llvm.loop !866

._crit_edge368:                                   ; preds = %bb.ao, %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit277.thread318
  %.0157.in.lcssa = phi i64 [ %.0158386, %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit277.thread318 ], [ %.0157.in365, %bb.ao ]
  %.0157.lcssa = phi i64 [ %.0157364, %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit277.thread318 ], [ %.0157366, %bb.ao ] ; 2 uses
  %i.pt = icmp eq i64 %.0157.lcssa, %i.i
  br i1 %i.pt, label %_ZN4ncnn3MataSERKS0_.exit, label %bb.ap

bb.ap:                                            ; preds = %._crit_edge368
  %i.pu = getelementptr inbounds nuw [8 x i8], ptr %i.nr, i64 %.0157.lcssa
  %i.pv = load ptr, ptr %i.pu, align 8, !tbaa !55 ; 3 uses
  %i.pw = getelementptr inbounds nuw i8, ptr %i.pv, i64 136
  %i.px = getelementptr inbounds nuw i8, ptr %i.pv, i64 144
  %i.py = load ptr, ptr %i.px, align 8, !tbaa !93 ; 2 uses
  %i.pz = load ptr, ptr %i.pw, align 8, !tbaa !82 ; 4 uses
  %.not349381.not = icmp eq ptr %i.py, %i.pz
  br i1 %.not349381.not, label %.critedge354.loopexit, label %.lr.ph384

.lr.ph384:                                        ; preds = %bb.ap
  %i.qa = ptrtoint ptr %i.py to i64
  %i.qb = ptrtoint ptr %i.pz to i64
  %i.qc = sub i64 %i.qa, %i.qb
  %i.qd = ashr exact i64 %i.qc, 2
  %i.qe = add i64 %.0157.in.lcssa, 2              ; 3 uses
  %i.qf = icmp ult i64 %i.qe, %i.i
  br label %bb.aq

bb.aq:                                            ; preds = %.lr.ph384, %.thread
  %.0155382 = phi i64 [ 0, %.lr.ph384 ], [ %i.sv, %.thread ] ; 2 uses
  %i.qg = getelementptr inbounds nuw [4 x i8], ptr %i.pz, i64 %.0155382
  %i.qh = load i32, ptr %i.qg, align 4, !tbaa !83
  br i1 %i.qf, label %.lr.ph376, label %._crit_edge377

.lr.ph376:                                        ; preds = %bb.aq, %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit285.thread
  %.0374 = phi i64 [ %i.rp, %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit285.thread ], [ %i.qe, %bb.aq ] ; 3 uses
  %i.qi = getelementptr inbounds nuw [8 x i8], ptr %i.nr, i64 %.0374
  %i.qj = load ptr, ptr %i.qi, align 8, !tbaa !55 ; 4 uses
  %i.qk = getelementptr inbounds nuw i8, ptr %i.qj, i64 48 ; 2 uses
  %i.ql = getelementptr inbounds nuw i8, ptr %i.qj, i64 56
  %i.qm = load i64, ptr %i.ql, align 8, !tbaa !60
  switch i64 %i.qm, label %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit285.thread [
    i64 11, label %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit283
    i64 20, label %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit285
  ]

_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit283: ; preds = %.lr.ph376
  %i.qn = load ptr, ptr %i.qk, align 8, !tbaa !59 ; 2 uses
  %i.qo = load i64, ptr %i.qn, align 1
  %i.qp = xor i64 %i.qo, 8391732706658905923
  %i.qq = getelementptr i8, ptr %i.qn, i64 3
  %i.qr = load i64, ptr %i.qq, align 1
  %i.qs = xor i64 %i.qr, 7957695015494119286
  %i.qt = or i64 %i.qp, %i.qs
  %i.qu = icmp ne i64 %i.qt, 0
  %i.qv = zext i1 %i.qu to i32
  %.not347 = icmp eq i32 %i.qv, 0
  br i1 %.not347, label %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit283.thread321, label %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit285.thread

_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit285: ; preds = %.lr.ph376
  %i.qw = load ptr, ptr %i.qk, align 8, !tbaa !59 ; 2 uses
  %i.qx = load i128, ptr %i.qw, align 1
  %i.qy = xor i128 %i.qx, 138844297650319802350679583742711721795
  %i.qz = getelementptr i8, ptr %i.qw, i64 16
  %i.ra = load i32, ptr %i.qz, align 1
  %i.rb = zext i32 %i.ra to i128
  %i.rc = xor i128 %i.rb, 1702062423
  %i.rd = or i128 %i.qy, %i.rc
  %i.re = icmp ne i128 %i.rd, 0
  %i.rf = zext i1 %i.re to i32
  %.not348 = icmp eq i32 %i.rf, 0
  br i1 %.not348, label %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit283.thread321, label %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit285.thread

_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit283.thread321: ; preds = %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit285, %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit283
  %i.rg = getelementptr inbounds nuw i8, ptr %i.qj, i64 112
  %i.rh = getelementptr inbounds nuw i8, ptr %i.qj, i64 120
  %i.ri = load ptr, ptr %i.rh, align 8, !tbaa !93
  %i.rj = load ptr, ptr %i.rg, align 8, !tbaa !82 ; 2 uses
  %i.rk = ptrtoint ptr %i.ri to i64
  %i.rl = ptrtoint ptr %i.rj to i64
  %i.rm = sub i64 %i.rk, %i.rl
  %.not170 = icmp eq i64 %i.rm, 4
  br i1 %.not170, label %bb.ar, label %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit285.thread

bb.ar:                                            ; preds = %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit283.thread321
  %i.rn = load i32, ptr %i.rj, align 4, !tbaa !83
  %i.ro = icmp eq i32 %i.rn, %i.qh
  br i1 %i.ro, label %._crit_edge377, label %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit285.thread

_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit285.thread: ; preds = %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit283, %.lr.ph376, %bb.ar, %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit283.thread321, %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit285
  %i.rp = add nuw i64 %.0374, 1                   ; 2 uses
  %exitcond394.not = icmp eq i64 %i.rp, %i.i
  br i1 %exitcond394.not, label %_ZN4ncnn3MataSERKS0_.exit, label %.lr.ph376, !llvm.loop !867

._crit_edge377:                                   ; preds = %bb.ar, %bb.aq
  %.0.lcssa = phi i64 [ %i.qe, %bb.aq ], [ %.0374, %bb.ar ] ; 2 uses
  %i.rq = icmp eq i64 %.0.lcssa, %i.i
  br i1 %i.rq, label %_ZN4ncnn3MataSERKS0_.exit, label %bb.as

bb.as:                                            ; preds = %._crit_edge377
  %i.rr = getelementptr inbounds nuw [8 x i8], ptr %i.nr, i64 %.0.lcssa
  %i.rs = load ptr, ptr %i.rr, align 8, !tbaa !55 ; 4 uses
  %i.rt = getelementptr inbounds nuw i8, ptr %i.rs, i64 48 ; 2 uses
  %i.ru = getelementptr inbounds nuw i8, ptr %i.rs, i64 56
  %i.rv = load i64, ptr %i.ru, align 8, !tbaa !60
  switch i64 %i.rv, label %.thread [
    i64 11, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit287
    i64 20, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit289
  ]

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit287: ; preds = %bb.as
  %i.rw = load ptr, ptr %i.rt, align 8, !tbaa !59 ; 2 uses
  %i.rx = load i64, ptr %i.rw, align 1
  %i.ry = xor i64 %i.rx, 8391732706658905923
  %i.rz = getelementptr i8, ptr %i.rw, i64 3
  %i.sa = load i64, ptr %i.rz, align 1
  %i.sb = xor i64 %i.sa, 7957695015494119286
  %i.sc = or i64 %i.ry, %i.sb
  %i.sd = icmp ne i64 %i.sc, 0
  %i.se = zext i1 %i.sd to i32
  %i.sf = icmp eq i32 %i.se, 0
  br i1 %i.sf, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit287.thread, label %.thread

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit287.thread: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit287
  %i.sg = getelementptr inbounds nuw i8, ptr %i.rs, i64 368
  %i.sh = load i64, ptr %i.sg, align 8, !tbaa !870
  %.not171 = icmp eq i64 %i.sh, 1
  br i1 %.not171, label %.thread, label %_ZN4ncnn3MataSERKS0_.exit

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit289: ; preds = %bb.as
  %i.si = load ptr, ptr %i.rt, align 8, !tbaa !59 ; 2 uses
  %i.sj = load i128, ptr %i.si, align 1
  %i.sk = xor i128 %i.sj, 138844297650319802350679583742711721795
  %i.sl = getelementptr i8, ptr %i.si, i64 16
  %i.sm = load i32, ptr %i.sl, align 1
  %i.sn = zext i32 %i.sm to i128
  %i.so = xor i128 %i.sn, 1702062423
  %i.sp = or i128 %i.sk, %i.so
  %i.sq = icmp ne i128 %i.sp, 0
  %i.sr = zext i1 %i.sq to i32
  %i.ss = icmp eq i32 %i.sr, 0
  br i1 %i.ss, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit289.thread, label %.thread

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit289.thread: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit289
  %i.st = getelementptr inbounds nuw i8, ptr %i.rs, i64 376
  %i.su = load i64, ptr %i.st, align 8, !tbaa !871
  %.not172 = icmp eq i64 %i.su, 1
  br i1 %.not172, label %.thread, label %_ZN4ncnn3MataSERKS0_.exit

.thread:                                          ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit287, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit287.thread, %bb.as, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit289.thread, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit289
  %i.sv = add nuw i64 %.0155382, 1                ; 2 uses
  %exitcond396.not = icmp eq i64 %i.sv, %i.qd
  br i1 %exitcond396.not, label %.critedge354.loopexit, label %bb.aq, !llvm.loop !868

.critedge354.loopexit:                            ; preds = %.thread, %bb.ap
  %i.sw = load ptr, ptr %i.j, align 8, !tbaa !49, !nonnull !41, !align !43
  %i.sx = load i32, ptr %i.pz, align 4, !tbaa !83
  %i.sy = sext i32 %i.sx to i64
  %i.sz = load ptr, ptr %i.sw, align 8, !tbaa !53
  %i.ta = getelementptr inbounds nuw [112 x i8], ptr %i.sz, i64 %i.sy
  %i.tb = getelementptr inbounds nuw i8, ptr %i.ta, i64 36
  %i.tc = load i32, ptr %i.tb, align 4, !tbaa !872
  %i.td = sext i32 %i.tc to i64                   ; 4 uses
  %i.te = load ptr, ptr @stderr, align 8, !tbaa !19
  %i.tf = getelementptr inbounds nuw i8, ptr %i.nt, i64 80
  %i.tg = load ptr, ptr %i.tf, align 8, !tbaa !59
  %i.th = getelementptr inbounds nuw i8, ptr %i.pv, i64 80
  %i.ti = load ptr, ptr %i.th, align 8, !tbaa !59
  %i.tj = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.te, ptr noundef nonnull @.str.184, ptr noundef %i.tg, ptr noundef %i.ti) #27 ; 0 uses
  %i.tk = load ptr, ptr %i.a, align 8, !tbaa !42, !nonnull !41, !align !43
  %i.tl = load ptr, ptr %i.tk, align 8, !tbaa !48 ; 7 uses
  %i.tm = getelementptr inbounds nuw [8 x i8], ptr %i.tl, i64 %.0158386
  %i.tn = load ptr, ptr %i.tm, align 8, !tbaa !55 ; 18 uses
  %i.to = getelementptr inbounds nuw i8, ptr %i.tn, i64 56
  %i.tp = load i64, ptr %i.to, align 8, !tbaa !60 ; 2 uses
  %i.tq = icmp eq i64 %i.tp, 11
  br i1 %i.tq, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit291, label %_ZN4ncnn3MataSERKS0_.exit208

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit291: ; preds = %.critedge354.loopexit
  %i.tr = getelementptr inbounds nuw i8, ptr %i.tn, i64 48
  %i.ts = load ptr, ptr %i.tr, align 8, !tbaa !59 ; 2 uses
  %i.tt = load i64, ptr %i.ts, align 1
  %i.tu = xor i64 %i.tt, 8391732706658905923
  %i.tv = getelementptr i8, ptr %i.ts, i64 3
  %i.tw = load i64, ptr %i.tv, align 1
  %i.tx = xor i64 %i.tw, 7957695015494119286
  %i.ty = or i64 %i.tu, %i.tx
  %i.tz = icmp ne i64 %i.ty, 0
  %i.ua = zext i1 %i.tz to i32
  %i.ub = icmp eq i32 %i.ua, 0
  br i1 %i.ub, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit291.thread, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit295

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit291.thread: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit291
  %i.uc = getelementptr inbounds nuw [8 x i8], ptr %i.tl, i64 %i.td
  %i.ud = load ptr, ptr %i.uc, align 8, !tbaa !55 ; 11 uses
  %i.ue = getelementptr inbounds nuw i8, ptr %i.ud, i64 56
  %i.uf = load i64, ptr %i.ue, align 8, !tbaa !60
  %i.ug = icmp eq i64 %i.uf, 11
  br i1 %i.ug, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit293, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit295

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit293: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit291.thread
  %i.uh = getelementptr inbounds nuw i8, ptr %i.ud, i64 48
  %i.ui = load ptr, ptr %i.uh, align 8, !tbaa !59 ; 2 uses
  %i.uj = load i64, ptr %i.ui, align 1
  %i.uk = xor i64 %i.uj, 8391732706658905923
  %i.ul = getelementptr i8, ptr %i.ui, i64 3
end_hunk_1
begin_hunk_2_@_ZN11NetQuantize15fuse_requantizeEv:bb.a
  br i1 %i.aaz, label %bb.bq, label %_ZN4ncnn3MataSERKS0_.exit206

bb.bq:                                            ; preds = %bb.bp
  %i.aba = getelementptr inbounds nuw i8, ptr %i.ze, i64 680
  %i.abb = load ptr, ptr %i.aba, align 8, !tbaa !80 ; 3 uses
  %.not3.i236 = icmp eq ptr %i.abb, null
  %i.abc = load ptr, ptr %i.aar, align 8, !tbaa !81 ; 3 uses
  br i1 %.not3.i236, label %bb.bs, label %bb.br

bb.br:                                            ; preds = %bb.bq
  %i.abd = load ptr, ptr %i.abb, align 8, !tbaa !30
  %i.abe = getelementptr inbounds nuw i8, ptr %i.abd, i64 24
  %i.abf = load ptr, ptr %i.abe, align 8
  tail call void %i.abf(ptr noundef nonnull align 8 dereferenceable(8) %i.abb, ptr noundef %i.abc), !inline_history !1
  br label %_ZN4ncnn3MataSERKS0_.exit206

bb.bs:                                            ; preds = %bb.bq
  %.not.i242 = icmp eq ptr %i.abc, null
  br i1 %.not.i242, label %_ZN4ncnn3MataSERKS0_.exit206, label %bb.bt

bb.bt:                                            ; preds = %bb.bs
  tail call void @free(ptr noundef nonnull %i.abc) #25
  br label %_ZN4ncnn3MataSERKS0_.exit206

_ZN4ncnn3MataSERKS0_.exit206:                     ; preds = %bb.br, %bb.bp, %bb.bo, %bb.bs, %bb.bt
  %i.abg = getelementptr inbounds nuw i8, ptr %i.ze, i64 664
  %i.abh = getelementptr inbounds nuw i8, ptr %i.ze, i64 672
  %i.abi = getelementptr inbounds nuw i8, ptr %i.ze, i64 688 ; 2 uses
  %i.abj = getelementptr inbounds nuw i8, ptr %i.ze, i64 704
  %i.abk = getelementptr inbounds nuw i8, ptr %i.ze, i64 712 ; 2 uses
  store i64 0, ptr %i.abk, align 8, !tbaa !78
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(28) %i.aar, i8 0, i64 28, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(20) %i.abi, i8 0, i64 20, i1 false)
  %i.abl = load <2 x ptr>, ptr %i.aaq, align 8, !tbaa !94
  store <2 x ptr> %i.abl, ptr %i.aar, align 8, !tbaa !94
  %i.abm = getelementptr inbounds nuw i8, ptr %i.zu, i64 584
  %i.abn = load i64, ptr %i.abm, align 8, !tbaa !95
  store i64 %i.abn, ptr %i.abg, align 8, !tbaa !95
  %i.abo = getelementptr inbounds nuw i8, ptr %i.zu, i64 592
  %i.abp = load i32, ptr %i.abo, align 8, !tbaa !96
  store i32 %i.abp, ptr %i.abh, align 8, !tbaa !96
  %i.abq = getelementptr inbounds nuw i8, ptr %i.zu, i64 600
  %i.abr = load ptr, ptr %i.abq, align 8, !tbaa !80
  %i.abs = getelementptr inbounds nuw i8, ptr %i.ze, i64 680
  store ptr %i.abr, ptr %i.abs, align 8, !tbaa !80
  %i.abt = getelementptr inbounds nuw i8, ptr %i.zu, i64 608
  %i.abu = load <4 x i32>, ptr %i.abt, align 8, !tbaa !83
  store <4 x i32> %i.abu, ptr %i.abi, align 8, !tbaa !83
  %i.abv = getelementptr inbounds nuw i8, ptr %i.zu, i64 624
  %i.abw = load i32, ptr %i.abv, align 8, !tbaa !90
  store i32 %i.abw, ptr %i.abj, align 8, !tbaa !90
  %i.abx = getelementptr inbounds nuw i8, ptr %i.zu, i64 632
  %i.aby = load i64, ptr %i.abx, align 8, !tbaa !78
  store i64 %i.aby, ptr %i.abk, align 8, !tbaa !78
  %.pre427 = load ptr, ptr %i.a, align 8, !tbaa !42
  %.pre428 = load ptr, ptr %.pre427, align 8, !tbaa !48 ; 2 uses
  %.phi.trans.insert429 = getelementptr inbounds nuw [8 x i8], ptr %.pre428, i64 %.0158386
  %.pre430 = load ptr, ptr %.phi.trans.insert429, align 8, !tbaa !55 ; 2 uses
  %.phi.trans.insert431 = getelementptr inbounds nuw i8, ptr %.pre430, i64 56
  %.pre432 = load i64, ptr %.phi.trans.insert431, align 8, !tbaa !60
  %i.abz = icmp eq i64 %.pre432, 20
  br i1 %i.abz, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit303, label %_ZN4ncnn3MataSERKS0_.exit

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit303: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit299, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit301, %.critedge202, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit299.thread, %_ZN4ncnn3MataSERKS0_.exit206
  %i.aca = phi ptr [ %.pre428, %_ZN4ncnn3MataSERKS0_.exit206 ], [ %i.zf, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit299.thread ], [ %i.zf, %.critedge202 ], [ %i.zf, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit301 ], [ %i.zf, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit299 ]
  %i.acb = phi ptr [ %.pre430, %_ZN4ncnn3MataSERKS0_.exit206 ], [ %i.ze, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit299.thread ], [ %i.ze, %.critedge202 ], [ %i.ze, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit301 ], [ %i.ze, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit299 ] ; 12 uses
  %i.acc = getelementptr inbounds nuw i8, ptr %i.acb, i64 48
  %i.acd = load ptr, ptr %i.acc, align 8, !tbaa !59 ; 2 uses
  %i.ace = load i128, ptr %i.acd, align 1
  %i.acf = xor i128 %i.ace, 138844297650319802350679583742711721795
  %i.acg = getelementptr i8, ptr %i.acd, i64 16
  %i.ach = load i32, ptr %i.acg, align 1
  %i.aci = zext i32 %i.ach to i128
  %i.acj = xor i128 %i.aci, 1702062423
  %i.ack = or i128 %i.acf, %i.acj
  %i.acl = icmp ne i128 %i.ack, 0
  %i.acm = zext i1 %i.acl to i32
  %i.acn = icmp eq i32 %i.acm, 0
  br i1 %i.acn, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit303.thread, label %_ZN4ncnn3MataSERKS0_.exit

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit303.thread: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit303
  %i.aco = getelementptr inbounds nuw [8 x i8], ptr %i.aca, i64 %i.td
  %i.acp = load ptr, ptr %i.aco, align 8, !tbaa !55 ; 11 uses
  %i.acq = getelementptr inbounds nuw i8, ptr %i.acp, i64 56
  %i.acr = load i64, ptr %i.acq, align 8, !tbaa !60
  %i.acs = icmp eq i64 %i.acr, 20
  br i1 %i.acs, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit305, label %_ZN4ncnn3MataSERKS0_.exit

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit305: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit303.thread
  %i.act = getelementptr inbounds nuw i8, ptr %i.acp, i64 48
  %i.acu = load ptr, ptr %i.act, align 8, !tbaa !59 ; 2 uses
  %i.acv = load i128, ptr %i.acu, align 1
  %i.acw = xor i128 %i.acv, 138844297650319802350679583742711721795
  %i.acx = getelementptr i8, ptr %i.acu, i64 16
  %i.acy = load i32, ptr %i.acx, align 1
  %i.acz = zext i32 %i.acy to i128
  %i.ada = xor i128 %i.acz, 1702062423
  %i.adb = or i128 %i.acw, %i.ada
  %i.adc = icmp ne i128 %i.adb, 0
  %i.add = zext i1 %i.adc to i32
  %i.ade = icmp eq i32 %i.add, 0
  br i1 %i.ade, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit305.thread, label %_ZN4ncnn3MataSERKS0_.exit

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit305.thread: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit305
  %i.adf = getelementptr inbounds nuw i8, ptr %i.acb, i64 376
  %i.adg = load i64, ptr %i.adf, align 8, !tbaa !871
  %.not179 = icmp eq i64 %i.adg, 1
  br i1 %.not179, label %bb.bu, label %_ZN4ncnn3MataSERKS0_.exit

bb.bu:                                            ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit305.thread
  %i.adh = getelementptr inbounds nuw i8, ptr %i.acp, i64 376
  %i.adi = load i64, ptr %i.adh, align 8, !tbaa !871
  %.not180 = icmp eq i64 %i.adi, 1
  br i1 %.not180, label %.critedge204, label %_ZN4ncnn3MataSERKS0_.exit

.critedge204:                                     ; preds = %bb.bu
  %i.adj = getelementptr inbounds nuw i8, ptr %i.acb, i64 268 ; 2 uses
  %i.adk = load i32, ptr %i.adj, align 4, !tbaa !140
  %i.adl = add nsw i32 %i.adk, 100
  store i32 %i.adl, ptr %i.adj, align 4, !tbaa !140
  %i.adm = getelementptr inbounds nuw i8, ptr %i.acp, i64 576 ; 2 uses
  %i.adn = getelementptr inbounds nuw i8, ptr %i.acb, i64 648 ; 4 uses
  %i.ado = icmp eq ptr %i.adn, %i.adm
  br i1 %i.ado, label %_ZN4ncnn3MataSERKS0_.exit, label %bb.bv

bb.bv:                                            ; preds = %.critedge204
  %i.adp = getelementptr inbounds nuw i8, ptr %i.acp, i64 584
  %i.adq = load ptr, ptr %i.adp, align 8, !tbaa !79 ; 2 uses
  %.not.i = icmp eq ptr %i.adq, null
  br i1 %.not.i, label %bb.bx, label %bb.bw

bb.bw:                                            ; preds = %bb.bv
  %i.adr = atomicrmw add ptr %i.adq, i32 1 acq_rel, align 4 ; 0 uses
  br label %bb.bx

bb.bx:                                            ; preds = %bb.bw, %bb.bv
  %i.ads = getelementptr inbounds nuw i8, ptr %i.acb, i64 656
  %i.adt = load ptr, ptr %i.ads, align 8, !tbaa !79 ; 2 uses
  %.not.i238 = icmp eq ptr %i.adt, null
  br i1 %.not.i238, label %_ZN4ncnn3Mat7releaseEv.exit240, label %bb.by

bb.by:                                            ; preds = %bb.bx
  %i.adu = atomicrmw add ptr %i.adt, i32 -1 acq_rel, align 4
  %i.adv = icmp eq i32 %i.adu, 1
  br i1 %i.adv, label %bb.bz, label %_ZN4ncnn3Mat7releaseEv.exit240

bb.bz:                                            ; preds = %bb.by
  %i.adw = getelementptr inbounds nuw i8, ptr %i.acb, i64 680
  %i.adx = load ptr, ptr %i.adw, align 8, !tbaa !80 ; 3 uses
  %.not3.i239 = icmp eq ptr %i.adx, null
  %i.ady = load ptr, ptr %i.adn, align 8, !tbaa !81 ; 3 uses
  br i1 %.not3.i239, label %bb.cb, label %bb.ca

bb.ca:                                            ; preds = %bb.bz
  %i.adz = load ptr, ptr %i.adx, align 8, !tbaa !30
  %i.aea = getelementptr inbounds nuw i8, ptr %i.adz, i64 24
  %i.aeb = load ptr, ptr %i.aea, align 8
  tail call void %i.aeb(ptr noundef nonnull align 8 dereferenceable(8) %i.adx, ptr noundef %i.ady), !inline_history !1
  br label %_ZN4ncnn3Mat7releaseEv.exit240

bb.cb:                                            ; preds = %bb.bz
  %.not.i241 = icmp eq ptr %i.ady, null
  br i1 %.not.i241, label %_ZN4ncnn3Mat7releaseEv.exit240, label %bb.cc

bb.cc:                                            ; preds = %bb.cb
  tail call void @free(ptr noundef nonnull %i.ady) #25
  br label %_ZN4ncnn3Mat7releaseEv.exit240

_ZN4ncnn3Mat7releaseEv.exit240:                   ; preds = %bb.cc, %bb.cb, %bb.bx, %bb.by, %bb.ca
  %i.aec = getelementptr inbounds nuw i8, ptr %i.acb, i64 664
  %i.aed = getelementptr inbounds nuw i8, ptr %i.acb, i64 672
  %i.aee = getelementptr inbounds nuw i8, ptr %i.acb, i64 688 ; 2 uses
  %i.aef = getelementptr inbounds nuw i8, ptr %i.acb, i64 704
  %i.aeg = getelementptr inbounds nuw i8, ptr %i.acb, i64 712 ; 2 uses
  store i64 0, ptr %i.aeg, align 8, !tbaa !78
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(28) %i.adn, i8 0, i64 28, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(20) %i.aee, i8 0, i64 20, i1 false)
  %i.aeh = load <2 x ptr>, ptr %i.adm, align 8, !tbaa !94
  store <2 x ptr> %i.aeh, ptr %i.adn, align 8, !tbaa !94
  %i.aei = getelementptr inbounds nuw i8, ptr %i.acp, i64 592
  %i.aej = load i64, ptr %i.aei, align 8, !tbaa !95
  store i64 %i.aej, ptr %i.aec, align 8, !tbaa !95
  %i.aek = getelementptr inbounds nuw i8, ptr %i.acp, i64 600
  %i.ael = load i32, ptr %i.aek, align 8, !tbaa !96
  store i32 %i.ael, ptr %i.aed, align 8, !tbaa !96
  %i.aem = getelementptr inbounds nuw i8, ptr %i.acp, i64 608
  %i.aen = load ptr, ptr %i.aem, align 8, !tbaa !80
  %i.aeo = getelementptr inbounds nuw i8, ptr %i.acb, i64 680
  store ptr %i.aen, ptr %i.aeo, align 8, !tbaa !80
  %i.aep = getelementptr inbounds nuw i8, ptr %i.acp, i64 616
  %i.aeq = load <4 x i32>, ptr %i.aep, align 8, !tbaa !83
  store <4 x i32> %i.aeq, ptr %i.aee, align 8, !tbaa !83
  %i.aer = getelementptr inbounds nuw i8, ptr %i.acp, i64 632
  %i.aes = load i32, ptr %i.aer, align 8, !tbaa !90
  store i32 %i.aes, ptr %i.aef, align 8, !tbaa !90
  %i.aet = getelementptr inbounds nuw i8, ptr %i.acp, i64 640
  %i.aeu = load i64, ptr %i.aet, align 8, !tbaa !78
  store i64 %i.aeu, ptr %i.aeg, align 8, !tbaa !78
  br label %_ZN4ncnn3MataSERKS0_.exit

_ZN4ncnn3MataSERKS0_.exit:                        ; preds = %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit281.thread, %._crit_edge377, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit289.thread, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit287.thread, %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit285.thread, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit295, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit297, %.critedge200, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit295.thread, %_ZN4ncnn3MataSERKS0_.exit208, %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit277, %bb.an, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit303.thread, %_ZN4ncnn3MataSERKS0_.exit206, %_ZN4ncnn3Mat7releaseEv.exit240, %.critedge204, %._crit_edge368, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit303, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit305, %bb.bu, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit305.thread, %bb.bl, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit301.thread, %bb.bc, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit297.thread, %bb.at, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit293.thread, %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit279
  %i.aev = add nuw i64 %.0158386, 1               ; 2 uses
  %exitcond398.not = icmp eq i64 %i.aev, %i.i
  br i1 %exitcond398.not, label %._crit_edge389, label %bb.an, !llvm.loop !869
}

; Function Attrs: mustprogress norecurse uwtable
define dso_local noundef range(i32 -1, 1) i32 @main(i32 noundef %0, ptr nofree noundef readonly captures(none) %1) local_unnamed_addr #19 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.std::__cxx11::basic_string", align 8 ; 13 uses
  %i.a = alloca float, align 4                    ; 8 uses
  %i.b = alloca [256 x i8], align 16              ; 7 uses
  %3 = alloca %"class.ncnn::Mat", align 16        ; 17 uses
  %4 = alloca %"class.ncnn::Mat", align 8         ; 17 uses
  %5 = alloca %"class.ncnn::Mat", align 16        ; 17 uses
  %6 = alloca %"class.ncnn::Mat", align 8         ; 17 uses
  %7 = alloca %class.NetQuantize, align 8         ; 40 uses
  %8 = alloca %class.DataReaderFromEmpty, align 8 ; 8 uses
  %i.c = add i32 %0, -7
  %or.cond = icmp ult i32 %i.c, -2
  br i1 %or.cond, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.d = load ptr, ptr @stderr, align 8, !tbaa !19
  %i.e = load ptr, ptr %1, align 8, !tbaa !874
  %i.f = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.d, ptr noundef nonnull @.str.186, ptr noundef %i.e) #27 ; 0 uses
  br label %bb.dq

bb.c:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !874
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !874  ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !874
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !874
  %i.o = icmp eq i32 %0, 6
  br i1 %i.o, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !874
  br label %bb.e

bb.e:                                             ; preds = %bb.c, %bb.d
  %i.r = phi ptr [ %i.q, %bb.d ], [ null, %bb.c ] ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #25
  call void @_ZN11ModelWriterC2Ev(ptr noundef nonnull align 8 dereferenceable(216) %7)
  store ptr getelementptr inbounds nuw inrange(-16, 56) (i8, ptr @_ZTV11NetQuantize, i64 16), ptr %7, align 8, !tbaa !30
  %i.s = getelementptr inbounds nuw i8, ptr %7, i64 128 ; 5 uses
  store i32 0, ptr %i.s, align 8, !tbaa !105
  %i.t = getelementptr inbounds nuw i8, ptr %7, i64 136 ; 3 uses
  store ptr null, ptr %i.t, align 8, !tbaa !106
  %i.u = getelementptr inbounds nuw i8, ptr %7, i64 144 ; 2 uses
  store ptr %i.s, ptr %i.u, align 8, !tbaa !107
  %i.v = getelementptr inbounds nuw i8, ptr %7, i64 152 ; 2 uses
  store ptr %i.s, ptr %i.v, align 8, !tbaa !108
  %i.w = getelementptr inbounds nuw i8, ptr %7, i64 160 ; 2 uses
  store i64 0, ptr %i.w, align 8, !tbaa !109
  %i.x = getelementptr inbounds nuw i8, ptr %7, i64 176 ; 5 uses
  store i32 0, ptr %i.x, align 8, !tbaa !105
  %i.y = getelementptr inbounds nuw i8, ptr %7, i64 184 ; 4 uses
  store ptr null, ptr %i.y, align 8, !tbaa !106
  %i.z = getelementptr inbounds nuw i8, ptr %7, i64 192 ; 2 uses
  store ptr %i.x, ptr %i.z, align 8, !tbaa !107
  %i.aa = getelementptr inbounds nuw i8, ptr %7, i64 200 ; 2 uses
  store ptr %i.x, ptr %i.aa, align 8, !tbaa !108
  %i.ab = getelementptr inbounds nuw i8, ptr %7, i64 208 ; 2 uses
  store i64 0, ptr %i.ab, align 8, !tbaa !109
  %i.ac = getelementptr inbounds nuw i8, ptr %7, i64 100
  store i32 1, ptr %i.ac, align 4, !tbaa !127
  %.not = icmp eq ptr %i.r, null
  br i1 %.not, label %bb.cr, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.ad = getelementptr inbounds nuw i8, ptr %7, i64 120 ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %7, i64 168 ; 2 uses
  invoke void @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N4ncnn3MatEESt10_Select1stISA_ESt4lessIS5_ESaISA_EE8_M_eraseEPSt13_Rb_tree_nodeISA_E(ptr noundef nonnull align 8 dereferenceable(48) %i.ad, ptr noundef null)
          to label %_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN4ncnn3MatESt4lessIS5_ESaISt4pairIKS5_S7_EEE5clearEv.exit.i unwind label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.af = landingpad { ptr, i32 }
          catch ptr null
  %i.ag = extractvalue { ptr, i32 } %i.af, 0
  call void @__clang_call_terminate(ptr %i.ag) #30
  unreachable

_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN4ncnn3MatESt4lessIS5_ESaISt4pairIKS5_S7_EEE5clearEv.exit.i: ; preds = %bb.f
  store ptr null, ptr %i.t, align 8, !tbaa !106
  store ptr %i.s, ptr %i.u, align 8, !tbaa !107
  store ptr %i.s, ptr %i.v, align 8, !tbaa !108
  store i64 0, ptr %i.w, align 8, !tbaa !109
  %i.ah = load ptr, ptr %i.y, align 8, !tbaa !106
  invoke void @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N4ncnn3MatEESt10_Select1stISA_ESt4lessIS5_ESaISA_EE8_M_eraseEPSt13_Rb_tree_nodeISA_E(ptr noundef nonnull align 8 dereferenceable(48) %i.ae, ptr noundef %i.ah)
          to label %_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN4ncnn3MatESt4lessIS5_ESaISt4pairIKS5_S7_EEE5clearEv.exit108.i unwind label %bb.h

bb.h:                                             ; preds = %_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN4ncnn3MatESt4lessIS5_ESaISt4pairIKS5_S7_EEE5clearEv.exit.i
  %i.ai = landingpad { ptr, i32 }
          catch ptr null
  %i.aj = extractvalue { ptr, i32 } %i.ai, 0
  call void @__clang_call_terminate(ptr %i.aj) #30
  unreachable

_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN4ncnn3MatESt4lessIS5_ESaISt4pairIKS5_S7_EEE5clearEv.exit108.i: ; preds = %_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN4ncnn3MatESt4lessIS5_ESaISt4pairIKS5_S7_EEE5clearEv.exit.i
  store ptr null, ptr %i.y, align 8, !tbaa !106
  store ptr %i.x, ptr %i.z, align 8, !tbaa !107
  store ptr %i.x, ptr %i.aa, align 8, !tbaa !108
  store i64 0, ptr %i.ab, align 8, !tbaa !109
  %i.ak = call noalias ptr @fopen(ptr noundef nonnull %i.r, ptr noundef nonnull @.str.189) ; 5 uses
  %.not.i.not = icmp eq ptr %i.ak, null
  br i1 %.not.i.not, label %bb.cq, label %bb.i

bb.i:                                             ; preds = %_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN4ncnn3MatESt4lessIS5_ESaISt4pairIKS5_S7_EEE5clearEv.exit108.i
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #25
  %i.al = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 4 uses
  store ptr %i.al, ptr %2, align 8, !tbaa !183
  %i.am = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 3 uses
  store i64 0, ptr %i.am, align 8, !tbaa !60
  store i8 0, ptr %i.al, align 8, !tbaa !130
  %i.an = invoke noalias noundef nonnull dereferenceable(10240000) ptr @_Znwm(i64 noundef 10240000) #28
          to label %bb.j unwind label %.thread150.i ; 7 uses

bb.j:                                             ; preds = %bb.i
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(10240000) %i.an, i8 0, i64 10240000, i1 false)
  %i.ao = call i32 @feof(ptr noundef nonnull %i.ak) #25
  %.not31269.i = icmp eq i32 %i.ao, 0
  br i1 %.not31269.i, label %.lr.ph.i, label %_ZNSt6vectorIcSaIcEED2Ev.exit116.i

.lr.ph.i:                                         ; preds = %bb.j
  %i.ap = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 3 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.ar = getelementptr inbounds nuw i8, ptr %4, i64 24
  %i.as = getelementptr inbounds nuw i8, ptr %4, i64 32 ; 3 uses
  %i.at = getelementptr inbounds nuw i8, ptr %4, i64 40
  %i.au = getelementptr inbounds nuw i8, ptr %4, i64 44
  %i.av = getelementptr inbounds nuw i8, ptr %4, i64 48
  %i.aw = getelementptr inbounds nuw i8, ptr %4, i64 52
  %i.ax = getelementptr inbounds nuw i8, ptr %4, i64 56
  %i.ay = getelementptr inbounds nuw i8, ptr %4, i64 64
  %i.az = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 3 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.bb = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.bc = getelementptr inbounds nuw i8, ptr %3, i64 32 ; 3 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %3, i64 40 ; 3 uses
  %i.be = getelementptr inbounds nuw i8, ptr %3, i64 56
  %i.bf = getelementptr inbounds nuw i8, ptr %3, i64 64 ; 3 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 3 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %6, i64 16
  %i.bi = getelementptr inbounds nuw i8, ptr %6, i64 24
  %i.bj = getelementptr inbounds nuw i8, ptr %6, i64 32 ; 3 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %6, i64 40
  %i.bl = getelementptr inbounds nuw i8, ptr %6, i64 44
  %i.bm = getelementptr inbounds nuw i8, ptr %6, i64 48
  %i.bn = getelementptr inbounds nuw i8, ptr %6, i64 52
  %i.bo = getelementptr inbounds nuw i8, ptr %6, i64 56
  %i.bp = getelementptr inbounds nuw i8, ptr %6, i64 64
  %i.bq = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 3 uses
  %i.br = getelementptr inbounds nuw i8, ptr %5, i64 16
  %i.bs = getelementptr inbounds nuw i8, ptr %5, i64 24
  %i.bt = getelementptr inbounds nuw i8, ptr %5, i64 32 ; 3 uses
  %i.bu = getelementptr inbounds nuw i8, ptr %5, i64 40 ; 3 uses
  %i.bv = getelementptr inbounds nuw i8, ptr %5, i64 56
  %i.bw = getelementptr inbounds nuw i8, ptr %5, i64 64 ; 3 uses
  br label %bb.k

bb.k:                                             ; preds = %_ZSt8_DestroyIPffEvT_S1_RSaIT0_E.exit.i.i.i, %.lr.ph.i
  %.sroa.0130.0272.i = phi ptr [ null, %.lr.ph.i ], [ %.sroa.0130.2.lcssa.i, %_ZSt8_DestroyIPffEvT_S1_RSaIT0_E.exit.i.i.i ] ; 5 uses
  %.sroa.20.0271.i = phi ptr [ null, %.lr.ph.i ], [ %.sroa.20.2.lcssa.i, %_ZSt8_DestroyIPffEvT_S1_RSaIT0_E.exit.i.i.i ] ; 2 uses
  %.sroa.13.0270.i = phi ptr [ null, %.lr.ph.i ], [ %spec.select.i, %_ZSt8_DestroyIPffEvT_S1_RSaIT0_E.exit.i.i.i ] ; 2 uses
  %i.bx = call ptr @fgets(ptr noundef nonnull %i.an, i32 noundef 10240000, ptr noundef nonnull %i.ak)
  %.not32.i = icmp eq ptr %i.bx, null
  br i1 %.not32.i, label %_ZNSt6vectorIcSaIcEED2Ev.exit116.i, label %bb.l

.thread150.i:                                     ; preds = %bb.i
  %i.by = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIfSaIfEED2Ev.exit119.i

bb.l:                                             ; preds = %bb.k
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #25
  store float 1.000000e+00, ptr %i.a, align 4, !tbaa !92
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #25
  %i.bz = call i64 @strcspn(ptr noundef nonnull %i.an, ptr noundef nonnull @.str.191) #32
  %i.ca = getelementptr inbounds nuw i8, ptr %i.an, i64 %i.bz
  store i8 0, ptr %i.ca, align 1, !tbaa !130
  %i.cb = call ptr @strtok(ptr noundef nonnull %i.an, ptr noundef nonnull @.str.192) #25 ; 2 uses
  %i.cc = icmp eq ptr %i.cb, null
  br i1 %i.cc, label %.thread145.i, label %.preheader.preheader.i

.preheader.preheader.i:                           ; preds = %bb.l
  %i.cd = call i32 (ptr, ptr, ...) @__isoc23_sscanf(ptr noundef nonnull %i.cb, ptr noundef nonnull @.str.193, ptr noundef nonnull %i.b) #25 ; 0 uses
  %i.ce = load i64, ptr %i.am, align 8, !tbaa !60
  %i.cf = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.b) #25
  %i.cg = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %2, i64 noundef 0, i64 noundef %i.ce, ptr noundef nonnull %i.b, i64 noundef %i.cf)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEPKc.exit.peel.i unwind label %.loopexit.loopexit.split-lp.i ; 0 uses

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEPKc.exit.peel.i: ; preds = %.preheader.preheader.i
  %i.ch = call ptr @strtok(ptr noundef null, ptr noundef nonnull @.str.192) #25 ; 2 uses
  %.not33.peel.i = icmp eq ptr %i.ch, null
  br i1 %.not33.peel.i, label %.loopexit302.i, label %.preheader.peel.next.i
end_hunk_2

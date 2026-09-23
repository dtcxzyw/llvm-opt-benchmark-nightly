Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/luau/original/Compiler?download=true
inline.NumInlined: 3176
inline.NumDeleted: 1468
loop-unroll.NumRuntimeUnrolled: 14
loop-unroll.NumUnrolled: 14
begin_hunk_0_@_ZN4Luau8Compiler19compileExprFunctionEPNS_15AstExprFunctionEh:bb.a
          cleanup
  br label %bb.bk

.loopexit.split-lp205:                            ; preds = %bb.au
  %lpad.loopexit.split-lp207 = landingpad { ptr, i32 }
          cleanup
  br label %bb.bk

_ZNSt6vectorIN4Luau8Compiler7CaptureESaIS2_EE9push_backEOS2_.exit: ; preds = %bb.as, %_ZNSt6vectorIN4Luau8Compiler7CaptureESaIS2_EE17_M_realloc_insertIJS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i96, %bb.am, %_ZNSt6vectorIN4Luau8Compiler7CaptureESaIS2_EE17_M_realloc_insertIJS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i86, %bb.x, %_ZNSt6vectorIN4Luau8Compiler7CaptureESaIS2_EE17_M_realloc_insertIJS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i
  %i.hl = phi ptr [ %i.gq, %bb.as ], [ %i.hf, %_ZNSt6vectorIN4Luau8Compiler7CaptureESaIS2_EE17_M_realloc_insertIJS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i96 ], [ %i.fs, %bb.am ], [ %i.gh, %_ZNSt6vectorIN4Luau8Compiler7CaptureESaIS2_EE17_M_realloc_insertIJS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i86 ], [ %i.dv, %bb.x ], [ %i.ek, %_ZNSt6vectorIN4Luau8Compiler7CaptureESaIS2_EE17_M_realloc_insertIJS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i ]
  %i.hm = getelementptr inbounds nuw i8, ptr %.sroa.0166.0219, i64 8 ; 2 uses
  %.not = icmp eq ptr %i.hm, %i.bn
  br i1 %.not, label %._crit_edge221, label %bb.k

bb.ay:                                            ; preds = %._crit_edge221
  %i.hn = invoke noundef zeroext i1 @_ZN4Luau8Compiler18shouldShareClosureEPNS_15AstExprFunctionE(ptr noundef nonnull align 8 dereferenceable(1904) %0, ptr noundef %1)
          to label %bb.az unwind label %bb.bd

bb.az:                                            ; preds = %bb.ay
  br i1 %i.hn, label %bb.ba, label %bb.bf

bb.ba:                                            ; preds = %bb.az
  %i.ho = getelementptr inbounds nuw i8, ptr %0, i64 1577
  %i.hp = load i8, ptr %i.ho, align 1, !tbaa !309, !range !86, !noundef !87
  %i.hq = trunc nuw i8 %i.hp to i1
  br i1 %i.hq, label %bb.bf, label %bb.bb

bb.bb:                                            ; preds = %bb.ba
  %i.hr = load ptr, ptr %0, align 8, !tbaa !265, !nonnull !87, !align !266
  %i.hs = load i32, ptr %i.y, align 8, !tbaa !311
  %i.ht = invoke noundef i32 @_ZN4Luau15BytecodeBuilder18addConstantClosureEj(ptr noundef nonnull align 8 dereferenceable(1048) %i.hr, i32 noundef %i.hs)
          to label %bb.bc unwind label %bb.be     ; 2 uses

bb.bc:                                            ; preds = %bb.bb
  %or.cond = icmp ult i32 %i.ht, 32768
  br i1 %or.cond, label %bb.bg, label %bb.bf

bb.bd:                                            ; preds = %.invoke, %bb.bf, %bb.ay
  %i.hu = landingpad { ptr, i32 }
          cleanup
  br label %bb.bk

bb.be:                                            ; preds = %bb.bb
  %i.hv = landingpad { ptr, i32 }
          cleanup
  br label %bb.bk

bb.bf:                                            ; preds = %bb.ba, %bb.bc, %bb.az, %._crit_edge221
  %i.hw = load ptr, ptr %0, align 8, !tbaa !265, !nonnull !87, !align !266
  %i.hx = load ptr, ptr %i.ah, align 8, !tbaa !815
  %i.hy = load ptr, ptr %i.af, align 8, !tbaa !230
  %i.hz = ptrtoint ptr %i.hx to i64
  %i.ia = ptrtoint ptr %i.hy to i64
  %i.ib = sub i64 %i.hz, %i.ia
  %i.ic = lshr exact i64 %i.ib, 3
  %i.id = trunc i64 %i.ic to i32
  invoke void (ptr, ptr, ...) @_ZN4Luau15BytecodeBuilder14addDebugRemarkEPKcz(ptr noundef nonnull align 8 dereferenceable(1048) %i.hw, ptr noundef nonnull @.str.176, i32 noundef %i.id)
          to label %.invoke unwind label %bb.bd

bb.bg:                                            ; preds = %bb.bc
  %i.ie = trunc nuw nsw i32 %i.ht to i16
  br label %.invoke

.invoke:                                          ; preds = %bb.bf, %bb.bg
  %i.if = phi i32 [ 64, %bb.bg ], [ 19, %bb.bf ]
  %i.ig = phi i16 [ %i.ie, %bb.bg ], [ %i.ab, %bb.bf ]
  %i.ih = load ptr, ptr %0, align 8, !tbaa !265, !nonnull !87, !align !266
  invoke void @_ZN4Luau15BytecodeBuilder6emitADE10LuauOpcodehs(ptr noundef nonnull align 8 dereferenceable(1048) %i.ih, i32 noundef %i.if, i8 noundef zeroext %2, i16 noundef signext %i.ig)
          to label %bb.bh unwind label %bb.bd

bb.bh:                                            ; preds = %.invoke
  %i.ii = load ptr, ptr %i.af, align 8, !tbaa !816 ; 2 uses
  %i.ij = load ptr, ptr %i.ah, align 8, !tbaa !816 ; 2 uses
  %.not192222 = icmp eq ptr %i.ii, %i.ij
  br i1 %.not192222, label %._crit_edge226, label %.lr.ph225

._crit_edge226:                                   ; preds = %bb.bi, %bb.bh
  store i32 %i.b, ptr %i.a, align 4, !tbaa !220
  ret void

.lr.ph225:                                        ; preds = %bb.bh, %bb.bi
  %.sroa.0100.0223 = phi ptr [ %i.ip, %bb.bi ], [ %i.ii, %bb.bh ] ; 3 uses
  %i.ik = load ptr, ptr %0, align 8, !tbaa !265, !nonnull !87, !align !266
  %i.il = load i32, ptr %.sroa.0100.0223, align 4, !tbaa !819
  %i.im = trunc i32 %i.il to i8
  %i.in = getelementptr inbounds nuw i8, ptr %.sroa.0100.0223, i64 4
  %i.io = load i8, ptr %i.in, align 4, !tbaa !820
  invoke void @_ZN4Luau15BytecodeBuilder7emitABCE10LuauOpcodehhh(ptr noundef nonnull align 8 dereferenceable(1048) %i.ik, i32 noundef 70, i8 noundef zeroext %i.im, i8 noundef zeroext %i.io, i8 noundef zeroext 0)
          to label %bb.bi unwind label %bb.bj

bb.bi:                                            ; preds = %.lr.ph225
  %i.ip = getelementptr inbounds nuw i8, ptr %.sroa.0100.0223, i64 8 ; 2 uses
  %.not192 = icmp eq ptr %i.ip, %i.ij
  br i1 %.not192, label %._crit_edge226, label %.lr.ph225

bb.bj:                                            ; preds = %.lr.ph225
  %i.iq = landingpad { ptr, i32 }
          cleanup
  br label %bb.bk

bb.bk:                                            ; preds = %.loopexit204, %.loopexit.split-lp205, %.loopexit199, %.loopexit.split-lp200, %.loopexit194, %.loopexit.split-lp195, %.loopexit, %.loopexit.split-lp, %bb.ax, %bb.e, %bb.bj, %bb.be, %bb.bd
  %.pn59.pn = phi { ptr, i32 } [ %i.hk, %bb.ax ], [ %i.ae, %bb.e ], [ %i.hv, %bb.be ], [ %i.iq, %bb.bj ], [ %i.hu, %bb.bd ], [ %lpad.loopexit.split-lp202, %.loopexit.split-lp200 ], [ %lpad.loopexit.split-lp197, %.loopexit.split-lp195 ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ], [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit196, %.loopexit194 ], [ %lpad.loopexit201, %.loopexit199 ], [ %lpad.loopexit206, %.loopexit204 ], [ %lpad.loopexit.split-lp207, %.loopexit.split-lp205 ]
  store i32 %i.b, ptr %i.a, align 4, !tbaa !220
  resume { ptr, i32 } %.pn59.pn
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef zeroext i8 @_ZN4Luau8Compiler17getExportTableRegEPNS_7AstNodeE(ptr noundef nonnull align 8 dereferenceable(1904) %0, ptr noundef %1) local_unnamed_addr #2 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 1728 ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 144
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 160
  %i.d = load i64, ptr %i.c, align 8, !tbaa !439
  %i.e = icmp eq i64 %i.d, 0
  br i1 %i.e, label %_ZN4Luau8Compiler11getLocalRegEPNS_8AstLocalE.exit.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 168
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !272  ; 2 uses
  %i.h = icmp eq ptr %i.a, %i.g
  br i1 %i.h, label %_ZN4Luau8Compiler11getLocalRegEPNS_8AstLocalE.exit.thread, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 152
  %i.j = load i64, ptr %i.i, align 8, !tbaa !289
  %i.k = add i64 %i.j, -1                         ; 2 uses
  %i.l = ptrtoint ptr %i.a to i64
  %i.m = mul i64 %i.l, -4658895280553007687       ; 2 uses
  %i.n = lshr i64 %i.m, 31
  %i.o = xor i64 %i.n, %i.m
  %i.p = load ptr, ptr %i.b, align 8, !tbaa !250
  br label %bb.d

bb.d:                                             ; preds = %bb.f, %bb.c
  %.pn.i.i.i = phi i64 [ %i.o, %bb.c ], [ %i.v, %bb.f ]
  %.01828.i.i.i = phi i64 [ 0, %bb.c ], [ %i.u, %bb.f ]
  %.01929.i.i.i = and i64 %.pn.i.i.i, %i.k        ; 2 uses
  %i.q = getelementptr inbounds nuw [24 x i8], ptr %i.p, i64 %.01929.i.i.i ; 3 uses
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !272  ; 2 uses
  %i.s = icmp eq ptr %i.r, %i.a
  br i1 %i.s, label %bb.g, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.t = icmp eq ptr %i.r, %i.g
  br i1 %i.t, label %_ZN4Luau8Compiler11getLocalRegEPNS_8AstLocalE.exit.thread, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.u = add i64 %.01828.i.i.i, 1                 ; 3 uses
  %i.v = add i64 %i.u, %.01929.i.i.i
  %.not.i.i.i = icmp ugt i64 %i.u, %i.k
  br i1 %.not.i.i.i, label %_ZN4Luau8Compiler11getLocalRegEPNS_8AstLocalE.exit.thread, label %bb.d, !llvm.loop !13

bb.g:                                             ; preds = %bb.d
  %i.w = getelementptr inbounds nuw i8, ptr %i.q, i64 9
  %i.x = load i8, ptr %i.w, align 1, !tbaa !422, !range !86, !noundef !87
  %i.y = trunc nuw i8 %i.x to i1
  br i1 %i.y, label %_ZN4Luau8Compiler11getLocalRegEPNS_8AstLocalE.exit, label %_ZN4Luau8Compiler11getLocalRegEPNS_8AstLocalE.exit.thread

_ZN4Luau8Compiler11getLocalRegEPNS_8AstLocalE.exit: ; preds = %bb.g
  %i.z = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  %i.aa = load i8, ptr %i.z, align 4, !tbaa !421
  br label %bb.i

_ZN4Luau8Compiler11getLocalRegEPNS_8AstLocalE.exit.thread: ; preds = %bb.e, %bb.f, %bb.a, %bb.b, %bb.g
  %i.ab = tail call noundef zeroext i8 @_ZN4Luau8Compiler8getUpvalEPNS_8AstLocalE(ptr noundef nonnull align 8 dereferenceable(1904) %0, ptr noundef nonnull %i.a)
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 1532 ; 2 uses
  %i.ad = load i32, ptr %i.ac, align 4, !tbaa !220 ; 2 uses
  %i.ae = add i32 %i.ad, 1                        ; 3 uses
  %i.af = icmp ugt i32 %i.ae, 255
  br i1 %i.af, label %bb.h, label %_ZN4Luau8Compiler8allocRegEPNS_7AstNodeEj.exit

bb.h:                                             ; preds = %_ZN4Luau8Compiler11getLocalRegEPNS_8AstLocalE.exit.thread
  %i.ag = getelementptr inbounds nuw i8, ptr %1, i64 12
  tail call void (ptr, ptr, ...) @_ZN4Luau12CompileError5raiseERKNS_8LocationEPKcz(ptr noundef nonnull align 4 dereferenceable(16) %i.ag, ptr noundef nonnull @.str.135, i32 noundef 1, i32 noundef 255) #28
  unreachable

_ZN4Luau8Compiler8allocRegEPNS_7AstNodeEj.exit:   ; preds = %_ZN4Luau8Compiler11getLocalRegEPNS_8AstLocalE.exit.thread
  store i32 %i.ae, ptr %i.ac, align 4, !tbaa !220
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 1536 ; 2 uses
  %i.ai = load i32, ptr %i.ah, align 8, !tbaa !40
  %i.aj = tail call i32 @llvm.umax.i32(i32 %i.ai, i32 %i.ae)
  store i32 %i.aj, ptr %i.ah, align 8, !tbaa !221
  %i.ak = trunc i32 %i.ad to i8                   ; 2 uses
  %i.al = load ptr, ptr %0, align 8, !tbaa !265, !nonnull !87, !align !266
  tail call void @_ZN4Luau15BytecodeBuilder7emitABCE10LuauOpcodehhh(ptr noundef nonnull align 8 dereferenceable(1048) %i.al, i32 noundef 9, i8 noundef zeroext %i.ak, i8 noundef zeroext %i.ab, i8 noundef zeroext 0)
  br label %bb.i

bb.i:                                             ; preds = %_ZN4Luau8Compiler11getLocalRegEPNS_8AstLocalE.exit, %_ZN4Luau8Compiler8allocRegEPNS_7AstNodeEj.exit
  %.1 = phi i8 [ %i.ak, %_ZN4Luau8Compiler8allocRegEPNS_7AstNodeEj.exit ], [ %i.aa, %_ZN4Luau8Compiler11getLocalRegEPNS_8AstLocalE.exit ]
  ret i8 %.1
}

declare noundef i32 @_ZN4Luau15BytecodeBuilder13getStringHashENS0_9StringRefE(ptr, i64) local_unnamed_addr #12

declare void @_ZN4Luau15BytecodeBuilder7emitAuxEj(ptr noundef nonnull align 8 dereferenceable(1048), i32 noundef) local_unnamed_addr #12

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN4Luau8Compiler23compileClassDeclarationEPNS_12AstStatClassE(ptr noundef nonnull align 8 dereferenceable(1904) %0, ptr noundef %1) local_unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i8, align 1                       ; 5 uses
  %2 = alloca %"struct.Luau::BytecodeBuilder::ClassShape", align 8 ; 13 uses
  %i.b = alloca i8, align 1                       ; 5 uses
  %3 = alloca %"struct.Luau::overloaded", align 8 ; 10 uses
  %4 = alloca %"struct.Luau::BytecodeBuilder::ClassShape", align 8 ; 7 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 624
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 4 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !283
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 648
  %i.g = load ptr, ptr %i.e, align 8, !tbaa !211  ; 4 uses
  %i.h = load ptr, ptr %i.f, align 8, !tbaa !211
  %i.i = icmp ne ptr %i.g, %i.h
  tail call void @llvm.assume(i1 %i.i)
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 632
  %i.k = load i64, ptr %i.j, align 8, !tbaa !332
  %i.l = add i64 %i.k, -1                         ; 3 uses
  %i.m = ptrtoint ptr %i.g to i64                 ; 2 uses
  %i.n = lshr i64 %i.m, 4
  %i.o = lshr i64 %i.m, 9
  %i.p = xor i64 %i.n, %i.o
  %i.q = load ptr, ptr %i.c, align 8, !tbaa !241  ; 3 uses
  %.01929.i.i70 = and i64 %i.p, %i.l              ; 3 uses
  %i.r = getelementptr inbounds nuw [16 x i8], ptr %i.q, i64 %.01929.i.i70
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !211
  %i.t = icmp eq ptr %i.s, %i.g
  br i1 %i.t, label %_ZN4Luau12DenseHashMapINS_7AstNameEPNS_8AstLocalESt4hashIS1_ESt8equal_toIS1_EE4findERKS1_.exit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %.lr.ph
  %.01929.i.i72 = phi i64 [ %.01929.i.i, %.lr.ph ], [ %.01929.i.i70, %bb.a ]
  %.01828.i.i71 = phi i64 [ %i.u, %.lr.ph ], [ 0, %bb.a ]
  %i.u = add i64 %.01828.i.i71, 1                 ; 3 uses
  %i.v = add i64 %i.u, %.01929.i.i72
  %.not.i.i = icmp ule i64 %i.u, %i.l
  tail call void @llvm.assume(i1 %.not.i.i)
  %.01929.i.i = and i64 %i.v, %i.l                ; 3 uses
  %i.w = getelementptr inbounds nuw [16 x i8], ptr %i.q, i64 %.01929.i.i
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !211
  %i.y = icmp eq ptr %i.x, %i.g
  br i1 %i.y, label %_ZN4Luau12DenseHashMapINS_7AstNameEPNS_8AstLocalESt4hashIS1_ESt8equal_toIS1_EE4findERKS1_.exit, label %.lr.ph

_ZN4Luau12DenseHashMapINS_7AstNameEPNS_8AstLocalESt4hashIS1_ESt8equal_toIS1_EE4findERKS1_.exit: ; preds = %.lr.ph, %bb.a
  %i.z = phi i64 [ %.01929.i.i70, %bb.a ], [ %.01929.i.i, %.lr.ph ]
  %i.aa = getelementptr inbounds nuw [16 x i8], ptr %i.q, i64 %i.z
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 8
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !272 ; 3 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 144
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 160
  %i.af = load i64, ptr %i.ae, align 8, !tbaa !439
  %i.ag = icmp eq i64 %i.af, 0
  br i1 %i.ag, label %_ZN4Luau8Compiler11getLocalRegEPNS_8AstLocalE.exit, label %bb.b

bb.b:                                             ; preds = %_ZN4Luau12DenseHashMapINS_7AstNameEPNS_8AstLocalESt4hashIS1_ESt8equal_toIS1_EE4findERKS1_.exit
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 168
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !272 ; 2 uses
  %i.aj = icmp eq ptr %i.ac, %i.ai
  br i1 %i.aj, label %_ZN4Luau8Compiler11getLocalRegEPNS_8AstLocalE.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 152
  %i.al = load i64, ptr %i.ak, align 8, !tbaa !289
  %i.am = add i64 %i.al, -1                       ; 2 uses
  %i.an = ptrtoint ptr %i.ac to i64
  %i.ao = mul i64 %i.an, -4658895280553007687     ; 2 uses
  %i.ap = lshr i64 %i.ao, 31
  %i.aq = xor i64 %i.ap, %i.ao
  %i.ar = load ptr, ptr %i.ad, align 8, !tbaa !250
  br label %bb.d

bb.d:                                             ; preds = %bb.f, %bb.c
  %.pn.i.i.i = phi i64 [ %i.aq, %bb.c ], [ %i.ax, %bb.f ]
  %.01828.i.i.i = phi i64 [ 0, %bb.c ], [ %i.aw, %bb.f ]
  %.01929.i.i.i = and i64 %.pn.i.i.i, %i.am       ; 2 uses
  %i.as = getelementptr inbounds nuw [24 x i8], ptr %i.ar, i64 %.01929.i.i.i ; 3 uses
  %i.at = load ptr, ptr %i.as, align 8, !tbaa !272 ; 2 uses
  %i.au = icmp eq ptr %i.at, %i.ac
  br i1 %i.au, label %bb.g, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.av = icmp eq ptr %i.at, %i.ai
  br i1 %i.av, label %_ZN4Luau8Compiler11getLocalRegEPNS_8AstLocalE.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.aw = add i64 %.01828.i.i.i, 1                ; 3 uses
  %i.ax = add i64 %i.aw, %.01929.i.i.i
  %.not.i.i.i = icmp ugt i64 %i.aw, %i.am
  br i1 %.not.i.i.i, label %_ZN4Luau8Compiler11getLocalRegEPNS_8AstLocalE.exit, label %bb.d, !llvm.loop !13

bb.g:                                             ; preds = %bb.d
  %i.ay = getelementptr inbounds nuw i8, ptr %i.as, i64 9
  %i.az = load i8, ptr %i.ay, align 1, !tbaa !422, !range !86, !noundef !87
  %i.ba = trunc nuw i8 %i.az to i1
  br i1 %i.ba, label %bb.h, label %_ZN4Luau8Compiler11getLocalRegEPNS_8AstLocalE.exit

bb.h:                                             ; preds = %bb.g
  %i.bb = getelementptr inbounds nuw i8, ptr %i.as, i64 8
  %i.bc = load i8, ptr %i.bb, align 4, !tbaa !421
  br label %_ZN4Luau8Compiler11getLocalRegEPNS_8AstLocalE.exit

_ZN4Luau8Compiler11getLocalRegEPNS_8AstLocalE.exit: ; preds = %bb.e, %bb.f, %_ZN4Luau12DenseHashMapINS_7AstNameEPNS_8AstLocalESt4hashIS1_ESt8equal_toIS1_EE4findERKS1_.exit, %bb.b, %bb.g, %bb.h
  %i.bd = phi i8 [ %i.bc, %bb.h ], [ -1, %bb.g ], [ -1, %bb.b ], [ -1, %_ZN4Luau12DenseHashMapINS_7AstNameEPNS_8AstLocalESt4hashIS1_ESt8equal_toIS1_EE4findERKS1_.exit ], [ -1, %bb.f ], [ -1, %bb.e ] ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #30
  store i8 %i.bd, ptr %i.a, align 1, !tbaa !41
  %i.be = load i8, ptr @_ZN5FFlag21LuauExportValueSyntaxE, align 8, !tbaa !91, !range !86, !noundef !87
  %i.bf = trunc nuw i8 %i.be to i1
  br i1 %i.bf, label %bb.i, label %bb.k

bb.i:                                             ; preds = %_ZN4Luau8Compiler11getLocalRegEPNS_8AstLocalE.exit
  %i.bg = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.bh = load i8, ptr %i.bg, align 8, !tbaa !821, !range !86, !noundef !87
  %i.bi = trunc nuw i8 %i.bh to i1
  br i1 %i.bi, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  tail call void @_ZN4Luau8Compiler17ensureExportTableEPNS_7AstNodeE(ptr noundef nonnull align 8 dereferenceable(1904) %0, ptr noundef nonnull %1)
  %i.bj = getelementptr inbounds nuw i8, ptr %0, i64 1792
  %i.bk = tail call noundef nonnull align 1 dereferenceable(1) ptr @_ZN4Luau12DenseHashMapIPNS_8AstLocalEhNS_16DenseHashPointerESt8equal_toIS2_EEixERKS2_(ptr noundef nonnull align 8 dereferenceable(40) %i.bj, ptr noundef nonnull align 8 dereferenceable(8) %i.d)
  store i8 %i.bd, ptr %i.bk, align 1, !tbaa !41
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i, %_ZN4Luau8Compiler11getLocalRegEPNS_8AstLocalE.exit
  %i.bl = getelementptr inbounds nuw i8, ptr %0, i64 1532 ; 7 uses
  %i.bm = load i32, ptr %i.bl, align 4, !tbaa !220 ; 2 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 2 uses
  %i.bo = load ptr, ptr %i.bn, align 8, !tbaa !822 ; 2 uses
  %.not = icmp eq ptr %i.bo, null
  br i1 %.not, label %bb.t, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.bp = invoke noundef i32 @_ZN4Luau8Compiler15getExprLocalRegEPNS_7AstExprE(ptr noundef nonnull align 8 dereferenceable(1904) %0, ptr noundef nonnull %i.bo)
          to label %bb.m unwind label %bb.q       ; 3 uses

bb.m:                                             ; preds = %bb.l
  %i.bq = load ptr, ptr %i.bn, align 8, !tbaa !822 ; 2 uses
  %i.br = icmp ne ptr %i.bq, null
  %i.bs = icmp slt i32 %i.bp, 0
  %i.bt = and i1 %i.bs, %i.br
  %i.bu = zext i1 %i.bt to i32                    ; 2 uses
  %i.bv = load i32, ptr %i.bl, align 4, !tbaa !220 ; 2 uses
  %i.bw = add i32 %i.bv, %i.bu                    ; 3 uses
  %i.bx = icmp ugt i32 %i.bw, 255
  br i1 %i.bx, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  %i.by = getelementptr inbounds nuw i8, ptr %1, i64 12
  invoke void (ptr, ptr, ...) @_ZN4Luau12CompileError5raiseERKNS_8LocationEPKcz(ptr noundef nonnull align 4 dereferenceable(16) %i.by, ptr noundef nonnull @.str.135, i32 noundef %i.bu, i32 noundef 255) #28
          to label %.noexc unwind label %bb.r

.noexc:                                           ; preds = %bb.n
  unreachable

bb.o:                                             ; preds = %bb.m
  store i32 %i.bw, ptr %i.bl, align 4, !tbaa !220
  %i.bz = getelementptr inbounds nuw i8, ptr %0, i64 1536 ; 2 uses
  %i.ca = load i32, ptr %i.bz, align 8, !tbaa !40
  %i.cb = tail call i32 @llvm.umax.i32(i32 %i.ca, i32 %i.bw)
  store i32 %i.cb, ptr %i.bz, align 8, !tbaa !221
  %i.cc = icmp sgt i32 %i.bp, -1
  br i1 %i.cc, label %bb.p, label %bb.s

bb.p:                                             ; preds = %bb.o
  %i.cd = trunc i32 %i.bp to i8
  br label %.invoke

bb.q:                                             ; preds = %bb.l
  %i.ce = landingpad { ptr, i32 }
          cleanup
  br label %bb.as

bb.r:                                             ; preds = %.invoke, %bb.n, %bb.s
  %i.cf = landingpad { ptr, i32 }
          cleanup
  br label %bb.as

bb.s:                                             ; preds = %bb.o
  %i.cg = trunc i32 %i.bv to i8                   ; 2 uses
  invoke void @_ZN4Luau8Compiler11compileExprEPNS_7AstExprEhb(ptr noundef nonnull align 8 dereferenceable(1904) %0, ptr noundef %i.bq, i8 noundef zeroext %i.cg, i1 noundef zeroext false)
          to label %.invoke unwind label %bb.r

.invoke:                                          ; preds = %bb.s, %bb.p
  %i.ch = phi i8 [ %i.cd, %bb.p ], [ %i.cg, %bb.s ]
  %i.ci = load ptr, ptr %0, align 8, !tbaa !265, !nonnull !87, !align !266
  invoke void @_ZN4Luau15BytecodeBuilder7emitABCE10LuauOpcodehhh(ptr noundef nonnull align 8 dereferenceable(1048) %i.ci, i32 noundef 89, i8 noundef zeroext %i.bd, i8 noundef zeroext %i.ch, i8 noundef zeroext 0)
          to label %bb.v unwind label %bb.r

bb.t:                                             ; preds = %bb.k
  %i.cj = load ptr, ptr %0, align 8, !tbaa !265, !nonnull !87, !align !266
  invoke void @_ZN4Luau15BytecodeBuilder7emitABCE10LuauOpcodehhh(ptr noundef nonnull align 8 dereferenceable(1048) %i.cj, i32 noundef 89, i8 noundef zeroext %i.bd, i8 noundef zeroext -1, i8 noundef zeroext 0)
          to label %bb.v unwind label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.ck = landingpad { ptr, i32 }
          cleanup
  br label %bb.as

bb.v:                                             ; preds = %.invoke, %bb.t
  %i.cl = load ptr, ptr %0, align 8, !tbaa !265, !nonnull !87, !align !266
  %i.cm = invoke noundef i64 @_ZN4Luau15BytecodeBuilder9emitLabelEv(ptr noundef nonnull align 8 dereferenceable(1048) %i.cl)
          to label %bb.w unwind label %bb.ac

bb.w:                                             ; preds = %bb.v
  %i.cn = load ptr, ptr %0, align 8, !tbaa !265, !nonnull !87, !align !266
  invoke void @_ZN4Luau15BytecodeBuilder7emitAuxEj(ptr noundef nonnull align 8 dereferenceable(1048) %i.cn, i32 noundef -559038737)
          to label %bb.x unwind label %bb.ac

bb.x:                                             ; preds = %bb.w
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #30
  %i.co = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 4 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.co, i8 0, i64 48, i1 false)
  %i.cp = load ptr, ptr %0, align 8, !tbaa !265, !nonnull !87, !align !266
  %i.cq = load ptr, ptr %i.d, align 8, !tbaa !283
  %.sroa.010.0.copyload = load ptr, ptr %i.cq, align 8, !tbaa !55 ; 2 uses
  %i.cr = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %.sroa.010.0.copyload) #27
  %i.cs = invoke noundef i32 @_ZN4Luau15BytecodeBuilder17addConstantStringENS0_9StringRefE(ptr noundef nonnull align 8 dereferenceable(1048) %i.cp, ptr nonnull %.sroa.010.0.copyload, i64 %i.cr)
          to label %bb.y unwind label %bb.ad      ; 3 uses

bb.y:                                             ; preds = %bb.x
  store i32 %i.cs, ptr %2, align 8, !tbaa !824
  %i.ct = icmp slt i32 %i.cs, 0
  br i1 %i.ct, label %bb.z, label %_ZN4Luau8Compiler13checkConstantEiRKNS_8LocationE.exit

bb.z:                                             ; preds = %bb.y
  %i.cu = load ptr, ptr %i.d, align 8, !tbaa !283
  %i.cv = getelementptr inbounds nuw i8, ptr %i.cu, i64 8
  invoke void (ptr, ptr, ...) @_ZN4Luau12CompileError5raiseERKNS_8LocationEPKcz(ptr noundef nonnull align 4 dereferenceable(16) %i.cv, ptr noundef nonnull @.str.134) #28
          to label %.noexc55 unwind label %bb.ad

.noexc55:                                         ; preds = %bb.z
  unreachable

_ZN4Luau8Compiler13checkConstantEiRKNS_8LocationE.exit: ; preds = %bb.y
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #30
  %i.cw = load i32, ptr %i.bl, align 4, !tbaa !220 ; 2 uses
  %i.cx = add i32 %i.cw, 1                        ; 3 uses
  %i.cy = icmp ugt i32 %i.cx, 255
  br i1 %i.cy, label %bb.aa, label %bb.ab

bb.aa:                                            ; preds = %_ZN4Luau8Compiler13checkConstantEiRKNS_8LocationE.exit
  %i.cz = getelementptr inbounds nuw i8, ptr %1, i64 12
  invoke void (ptr, ptr, ...) @_ZN4Luau12CompileError5raiseERKNS_8LocationEPKcz(ptr noundef nonnull align 4 dereferenceable(16) %i.cz, ptr noundef nonnull @.str.135, i32 noundef 1, i32 noundef 255) #28
          to label %.noexc56 unwind label %bb.ae

.noexc56:                                         ; preds = %bb.aa
  unreachable

bb.ab:                                            ; preds = %_ZN4Luau8Compiler13checkConstantEiRKNS_8LocationE.exit
  store i32 %i.cx, ptr %i.bl, align 4, !tbaa !220
  %i.da = getelementptr inbounds nuw i8, ptr %0, i64 1536 ; 2 uses
  %i.db = load i32, ptr %i.da, align 8, !tbaa !40
  %i.dc = tail call i32 @llvm.umax.i32(i32 %i.db, i32 %i.cx)
  store i32 %i.dc, ptr %i.da, align 8, !tbaa !221
  %i.dd = trunc i32 %i.cw to i8
  store i8 %i.dd, ptr %i.b, align 1, !tbaa !41
  %i.de = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.df = load ptr, ptr %i.de, align 8, !tbaa !825 ; 2 uses
  %i.dg = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.dh = load i64, ptr %i.dg, align 8, !tbaa !826 ; 2 uses
  %.idx = mul nuw nsw i64 %i.dh, 80
  %i.di = getelementptr inbounds nuw i8, ptr %i.df, i64 %.idx
  %.not4773 = icmp eq i64 %i.dh, 0
  br i1 %.not4773, label %._crit_edge, label %.lr.ph75

.lr.ph75:                                         ; preds = %bb.ab
  %.sroa.53.0..sroa_idx = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.dj = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %3, i64 24
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %3, i64 32
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %3, i64 40
  br label %bb.af

._crit_edge.loopexit:                             ; preds = %_ZN4Luau5visitINS_10overloadedIJZNS_8Compiler23compileClassDeclarationEPNS_12AstStatClassEEUlRKNS_16AstClassPropertyEE_ZNS2_23compileClassDeclarationES4_EUlRKNS_14AstClassMethodEE_EEEJS5_S9_EEEDaOT_RKNS_7VariantIJDpT0_EEE.exit
  %.pre = load i32, ptr %2, align 8, !tbaa !824
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %bb.ab
  %i.dk = phi i32 [ %.pre, %._crit_edge.loopexit ], [ %i.cs, %bb.ab ]
  %i.dl = load ptr, ptr %0, align 8, !tbaa !265, !nonnull !87, !align !266
  store i32 %i.dk, ptr %4, align 8, !tbaa !824
  %i.dm = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  %i.dn = load <2 x ptr>, ptr %i.co, align 8, !tbaa !827
  store <2 x ptr> %i.dn, ptr %i.dm, align 8, !tbaa !827
  %i.do = getelementptr inbounds nuw i8, ptr %4, i64 24 ; 2 uses
  %i.dp = getelementptr inbounds nuw i8, ptr %2, i64 24 ; 2 uses
  %5 = getelementptr inbounds nuw i8, ptr %2, i64 32 ; 3 uses
  %6 = getelementptr inbounds nuw i8, ptr %2, i64 40
  %7 = getelementptr inbounds nuw i8, ptr %4, i64 48
  %i.dq = getelementptr inbounds nuw i8, ptr %2, i64 48
  %8 = load ptr, ptr %i.dp, align 8, !tbaa !395
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.co, i8 0, i64 24, i1 false)
  %9 = load ptr, ptr %5, align 8, !tbaa !394
  %i.dr = load <2 x ptr>, ptr %6, align 8, !tbaa !827
  %10 = insertelement <4 x ptr> poison, ptr %8, i64 0
  %11 = insertelement <4 x ptr> %10, ptr %9, i64 1
  %12 = shufflevector <2 x ptr> %i.dr, <2 x ptr> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %13 = shufflevector <4 x ptr> %11, <4 x ptr> %12, <4 x i32> <i32 0, i32 1, i32 4, i32 5>
  store <4 x ptr> %13, ptr %i.do, align 8, !tbaa !827
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %5, i8 0, i64 24, i1 false)
  %i.ds = invoke noundef i32 @_ZN4Luau15BytecodeBuilder13addClassShapeENS0_10ClassShapeE(ptr noundef nonnull align 8 dereferenceable(1048) %i.dl, ptr noundef nonnull align 8 %4)
          to label %bb.ah unwind label %bb.ao     ; 2 uses

bb.ac:                                            ; preds = %bb.w, %bb.v
  %i.dt = landingpad { ptr, i32 }
          cleanup
  br label %bb.as

bb.ad:                                            ; preds = %bb.z, %bb.x
  %i.du = landingpad { ptr, i32 }
          cleanup
  br label %bb.ar

bb.ae:                                            ; preds = %bb.aa
  %i.dv = landingpad { ptr, i32 }
          cleanup
  br label %bb.aq

bb.af:                                            ; preds = %.lr.ph75, %_ZN4Luau5visitINS_10overloadedIJZNS_8Compiler23compileClassDeclarationEPNS_12AstStatClassEEUlRKNS_16AstClassPropertyEE_ZNS2_23compileClassDeclarationES4_EUlRKNS_14AstClassMethodEE_EEEJS5_S9_EEEDaOT_RKNS_7VariantIJDpT0_EEE.exit
  %.074 = phi ptr [ %i.df, %.lr.ph75 ], [ %i.dz, %_ZN4Luau5visitINS_10overloadedIJZNS_8Compiler23compileClassDeclarationEPNS_12AstStatClassEEUlRKNS_16AstClassPropertyEE_ZNS2_23compileClassDeclarationES4_EUlRKNS_14AstClassMethodEE_EEEJS5_S9_EEEDaOT_RKNS_7VariantIJDpT0_EEE.exit ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #30
  store ptr %0, ptr %3, align 8, !tbaa !828
  store ptr %2, ptr %.sroa.53.0..sroa_idx, align 8, !tbaa !829
  store ptr %0, ptr %i.dj, align 8, !tbaa !828
  store ptr %i.b, ptr %.sroa.5.0..sroa_idx, align 8, !tbaa !55
  store ptr %2, ptr %.sroa.6.0..sroa_idx, align 8, !tbaa !829
  store ptr %i.a, ptr %.sroa.7.0..sroa_idx, align 8, !tbaa !55
  %i.dw = load i32, ptr %.074, align 8, !tbaa !831
  %i.dx = getelementptr inbounds nuw i8, ptr %.074, i64 8 ; 2 uses
  %i.dy = icmp eq i32 %i.dw, 0
  br i1 %i.dy, label %call.0.i, label %call.1.i

call.0.i:                                         ; preds = %bb.af
  invoke void @_ZZN4Luau8Compiler23compileClassDeclarationEPNS_12AstStatClassEENKUlRKNS_16AstClassPropertyEE_clES5_(ptr noundef nonnull align 8 dereferenceable(48) %3, ptr noundef nonnull align 8 dereferenceable(72) %i.dx)
          to label %_ZN4Luau5visitINS_10overloadedIJZNS_8Compiler23compileClassDeclarationEPNS_12AstStatClassEEUlRKNS_16AstClassPropertyEE_ZNS2_23compileClassDeclarationES4_EUlRKNS_14AstClassMethodEE_EEEJS5_S9_EEEDaOT_RKNS_7VariantIJDpT0_EEE.exit unwind label %bb.ag

call.1.i:                                         ; preds = %bb.af
  invoke void @_ZZN4Luau8Compiler23compileClassDeclarationEPNS_12AstStatClassEENKUlRKNS_14AstClassMethodEE_clES5_(ptr noundef nonnull align 8 dereferenceable(32) %i.dj, ptr noundef nonnull align 8 dereferenceable(72) %i.dx)
          to label %_ZN4Luau5visitINS_10overloadedIJZNS_8Compiler23compileClassDeclarationEPNS_12AstStatClassEEUlRKNS_16AstClassPropertyEE_ZNS2_23compileClassDeclarationES4_EUlRKNS_14AstClassMethodEE_EEEJS5_S9_EEEDaOT_RKNS_7VariantIJDpT0_EEE.exit unwind label %bb.ag

_ZN4Luau5visitINS_10overloadedIJZNS_8Compiler23compileClassDeclarationEPNS_12AstStatClassEEUlRKNS_16AstClassPropertyEE_ZNS2_23compileClassDeclarationES4_EUlRKNS_14AstClassMethodEE_EEEJS5_S9_EEEDaOT_RKNS_7VariantIJDpT0_EEE.exit: ; preds = %call.0.i, %call.1.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #30
  %i.dz = getelementptr inbounds nuw i8, ptr %.074, i64 80 ; 2 uses
  %.not47 = icmp eq ptr %i.dz, %i.di
  br i1 %.not47, label %._crit_edge.loopexit, label %bb.af

bb.ag:                                            ; preds = %call.1.i, %call.0.i
  %i.ea = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #30
  br label %bb.aq

bb.ah:                                            ; preds = %._crit_edge
  %14 = getelementptr inbounds nuw i8, ptr %4, i64 32
  %i.eb = load ptr, ptr %14, align 8, !tbaa !394  ; 3 uses
  %.not.i.i.i.i = icmp eq ptr %i.eb, null
  br i1 %.not.i.i.i.i, label %_ZNSt6vectorIiSaIiEED2Ev.exit.i, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  %i.ec = load ptr, ptr %7, align 8, !tbaa !395
  %i.ed = ptrtoint ptr %i.ec to i64
  %i.ee = ptrtoint ptr %i.eb to i64
  %i.ef = sub i64 %i.ed, %i.ee
  call void @_ZdlPvm(ptr noundef nonnull %i.eb, i64 noundef %i.ef) #29
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit.i

_ZNSt6vectorIiSaIiEED2Ev.exit.i:                  ; preds = %bb.ai, %bb.ah
  %i.eg = load ptr, ptr %i.dm, align 8, !tbaa !394 ; 3 uses
  %.not.i.i.i1.i = icmp eq ptr %i.eg, null
  br i1 %.not.i.i.i1.i, label %_ZN4Luau15BytecodeBuilder10ClassShapeD2Ev.exit, label %bb.aj

bb.aj:                                            ; preds = %_ZNSt6vectorIiSaIiEED2Ev.exit.i
  %i.eh = load ptr, ptr %i.do, align 8, !tbaa !395
  %i.ei = ptrtoint ptr %i.eh to i64
  %i.ej = ptrtoint ptr %i.eg to i64
  %i.ek = sub i64 %i.ei, %i.ej
  call void @_ZdlPvm(ptr noundef nonnull %i.eg, i64 noundef %i.ek) #29
  br label %_ZN4Luau15BytecodeBuilder10ClassShapeD2Ev.exit

_ZN4Luau15BytecodeBuilder10ClassShapeD2Ev.exit:   ; preds = %_ZNSt6vectorIiSaIiEED2Ev.exit.i, %bb.aj
  %i.el = icmp slt i32 %i.ds, 0
  br i1 %i.el, label %bb.ak, label %_ZN4Luau8Compiler13checkConstantEiRKNS_8LocationE.exit61

bb.ak:                                            ; preds = %_ZN4Luau15BytecodeBuilder10ClassShapeD2Ev.exit
  %i.em = getelementptr inbounds nuw i8, ptr %1, i64 12
  invoke void (ptr, ptr, ...) @_ZN4Luau12CompileError5raiseERKNS_8LocationEPKcz(ptr noundef nonnull align 4 dereferenceable(16) %i.em, ptr noundef nonnull @.str.134) #28
          to label %.noexc60 unwind label %bb.ap

.noexc60:                                         ; preds = %bb.ak
  unreachable

_ZN4Luau8Compiler13checkConstantEiRKNS_8LocationE.exit61: ; preds = %_ZN4Luau15BytecodeBuilder10ClassShapeD2Ev.exit
  %i.en = load ptr, ptr %0, align 8, !tbaa !265, !nonnull !87, !align !266
  invoke void @_ZN4Luau15BytecodeBuilder8patchAuxEmi(ptr noundef nonnull align 8 dereferenceable(1048) %i.en, i64 noundef %i.cm, i32 noundef %i.ds)
          to label %bb.al unwind label %bb.ap

bb.al:                                            ; preds = %_ZN4Luau8Compiler13checkConstantEiRKNS_8LocationE.exit61
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #30
  %i.eo = load ptr, ptr %5, align 8, !tbaa !394   ; 3 uses
  %.not.i.i.i.i62 = icmp eq ptr %i.eo, null
  br i1 %.not.i.i.i.i62, label %_ZNSt6vectorIiSaIiEED2Ev.exit.i63, label %bb.am

bb.am:                                            ; preds = %bb.al
  %i.ep = load ptr, ptr %i.dq, align 8, !tbaa !395
  %i.eq = ptrtoint ptr %i.ep to i64
  %i.er = ptrtoint ptr %i.eo to i64
  %i.es = sub i64 %i.eq, %i.er
  call void @_ZdlPvm(ptr noundef nonnull %i.eo, i64 noundef %i.es) #29
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit.i63

_ZNSt6vectorIiSaIiEED2Ev.exit.i63:                ; preds = %bb.am, %bb.al
  %i.et = load ptr, ptr %i.co, align 8, !tbaa !394 ; 3 uses
  %.not.i.i.i1.i64 = icmp eq ptr %i.et, null
  br i1 %.not.i.i.i1.i64, label %_ZN4Luau15BytecodeBuilder10ClassShapeD2Ev.exit65, label %bb.an

bb.an:                                            ; preds = %_ZNSt6vectorIiSaIiEED2Ev.exit.i63
  %i.eu = load ptr, ptr %i.dp, align 8, !tbaa !395
  %i.ev = ptrtoint ptr %i.eu to i64
  %i.ew = ptrtoint ptr %i.et to i64
  %i.ex = sub i64 %i.ev, %i.ew
  call void @_ZdlPvm(ptr noundef nonnull %i.et, i64 noundef %i.ex) #29
  br label %_ZN4Luau15BytecodeBuilder10ClassShapeD2Ev.exit65

_ZN4Luau15BytecodeBuilder10ClassShapeD2Ev.exit65: ; preds = %_ZNSt6vectorIiSaIiEED2Ev.exit.i63, %bb.an
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #30
  store i32 %i.bm, ptr %i.bl, align 4, !tbaa !220
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #30
  ret void

bb.ao:                                            ; preds = %._crit_edge
  %i.ey = landingpad { ptr, i32 }
          cleanup
  call void @_ZN4Luau15BytecodeBuilder10ClassShapeD2Ev(ptr noundef nonnull align 8 dead_on_return(56) dereferenceable(56) %4) #30
  br label %bb.aq

bb.ap:                                            ; preds = %bb.ak, %_ZN4Luau8Compiler13checkConstantEiRKNS_8LocationE.exit61
  %i.ez = landingpad { ptr, i32 }
          cleanup
  br label %bb.aq

bb.aq:                                            ; preds = %bb.ao, %bb.ap, %bb.ag, %bb.ae
  %.pn50 = phi { ptr, i32 } [ %i.ea, %bb.ag ], [ %i.dv, %bb.ae ], [ %i.ez, %bb.ap ], [ %i.ey, %bb.ao ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #30
  br label %bb.ar

bb.ar:                                            ; preds = %bb.aq, %bb.ad
  %.pn50.pn = phi { ptr, i32 } [ %.pn50, %bb.aq ], [ %i.du, %bb.ad ]
  call void @_ZN4Luau15BytecodeBuilder10ClassShapeD2Ev(ptr noundef nonnull align 8 dead_on_return(56) dereferenceable(56) %2) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #30
  br label %bb.as

bb.as:                                            ; preds = %bb.ac, %bb.ar, %bb.q, %bb.r, %bb.u
  %.pn50.pn.pn.pn = phi { ptr, i32 } [ %i.ce, %bb.q ], [ %i.ck, %bb.u ], [ %i.cf, %bb.r ], [ %.pn50.pn, %bb.ar ], [ %i.dt, %bb.ac ]
  store i32 %i.bm, ptr %i.bl, align 4, !tbaa !220
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #30
  resume { ptr, i32 } %.pn50.pn.pn.pn
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN4Luau8Compiler21compileConditionValueEPNS_7AstExprEPKhRSt6vectorImSaImEEb(ptr noundef nonnull align 8 dereferenceable(1904) %0, ptr noundef %1, ptr noundef %2, ptr noundef nonnull align 8 dereferenceable(24) %3, i1 noundef zeroext %4) local_unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %5 = alloca %"class.std::vector.277", align 8   ; 11 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 264
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 280
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 288
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 272
  br label %tailrecurse.outer

tailrecurse.outer:                                ; preds = %bb.al, %bb.a
  %.tr112.ph = phi ptr [ %i.eb, %bb.al ], [ %1, %bb.a ]
  %.tr113.ph = phi ptr [ null, %bb.al ], [ %2, %bb.a ] ; 8 uses
  %.tr115.ph = phi i1 [ %i.ec, %bb.al ], [ %4, %bb.a ] ; 11 uses
  %i.e = icmp ne ptr %.tr113.ph, null             ; 2 uses
  br label %tailrecurse

tailrecurse:                                      ; preds = %tailrecurse.backedge, %tailrecurse.outer
  %.tr112 = phi ptr [ %.tr112.ph, %tailrecurse.outer ], [ %.tr112.be, %tailrecurse.backedge ] ; 19 uses
  %i.f = load i64, ptr %i.b, align 8, !tbaa !446
  %i.g = icmp eq i64 %i.f, 0
  br i1 %i.g, label %_ZN4Luau12DenseHashMapIPNS_7AstExprENS_7Compile8ConstantENS_16DenseHashPointerESt8equal_toIS2_EE4findERKS2_.exit.thread, label %bb.b

bb.b:                                             ; preds = %tailrecurse
  %i.h = load ptr, ptr %i.c, align 8, !tbaa !447  ; 2 uses
  %i.i = icmp eq ptr %.tr112, %i.h
  br i1 %i.i, label %_ZN4Luau12DenseHashMapIPNS_7AstExprENS_7Compile8ConstantENS_16DenseHashPointerESt8equal_toIS2_EE4findERKS2_.exit.thread, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.j = load i64, ptr %i.d, align 8, !tbaa !448
  %i.k = add i64 %i.j, -1                         ; 2 uses
  %i.l = ptrtoint ptr %.tr112 to i64
  %i.m = mul i64 %i.l, -4658895280553007687       ; 2 uses
  %i.n = lshr i64 %i.m, 31
  %i.o = xor i64 %i.n, %i.m
  %i.p = load ptr, ptr %i.a, align 8, !tbaa !248
  br label %bb.d

bb.d:                                             ; preds = %bb.f, %bb.c
  %.pn.i.i = phi i64 [ %i.o, %bb.c ], [ %i.v, %bb.f ]
  %.01828.i.i = phi i64 [ 0, %bb.c ], [ %i.u, %bb.f ]
  %.01929.i.i = and i64 %.pn.i.i, %i.k            ; 2 uses
  %i.q = getelementptr inbounds nuw [48 x i8], ptr %i.p, i64 %.01929.i.i ; 3 uses
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !447  ; 2 uses
  %i.s = icmp eq ptr %i.r, %.tr112
  br i1 %i.s, label %bb.g, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.t = icmp eq ptr %i.r, %i.h
  br i1 %i.t, label %_ZN4Luau12DenseHashMapIPNS_7AstExprENS_7Compile8ConstantENS_16DenseHashPointerESt8equal_toIS2_EE4findERKS2_.exit.thread, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.u = add i64 %.01828.i.i, 1                   ; 3 uses
  %i.v = add i64 %i.u, %.01929.i.i
  %.not.i.i = icmp ugt i64 %i.u, %i.k
  br i1 %.not.i.i, label %_ZN4Luau12DenseHashMapIPNS_7AstExprENS_7Compile8ConstantENS_16DenseHashPointerESt8equal_toIS2_EE4findERKS2_.exit.thread, label %bb.d, !llvm.loop !15

bb.g:                                             ; preds = %bb.d
  %i.w = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  %i.x = load i32, ptr %i.w, align 8, !tbaa !406
  switch i32 %i.x, label %.split [
    i32 0, label %_ZN4Luau12DenseHashMapIPNS_7AstExprENS_7Compile8ConstantENS_16DenseHashPointerESt8equal_toIS2_EE4findERKS2_.exit.thread
    i32 1, label %._ZNK4Luau7Compile8Constant10isTruthfulEv.exit_crit_edge
    i32 2, label %_ZNK4Luau7Compile8Constant10isTruthfulEv.exit
  ]

._ZNK4Luau7Compile8Constant10isTruthfulEv.exit_crit_edge: ; preds = %bb.g
  br i1 %.tr115.ph, label %.thread, label %bb.h

.split:                                           ; preds = %bb.g
  br i1 %.tr115.ph, label %bb.h, label %.thread

_ZNK4Luau7Compile8Constant10isTruthfulEv.exit:    ; preds = %bb.g
  %i.y = getelementptr inbounds nuw i8, ptr %i.q, i64 16
  %i.z = load i8, ptr %i.y, align 8, !tbaa !41, !range !86, !noundef !87
  %i.aa = icmp ne i8 %i.z, 0
  %i.ab = xor i1 %.tr115.ph, %i.aa
  br i1 %i.ab, label %.thread, label %bb.h

bb.h:                                             ; preds = %.split, %._ZNK4Luau7Compile8Constant10isTruthfulEv.exit_crit_edge, %_ZNK4Luau7Compile8Constant10isTruthfulEv.exit
  %.not74 = icmp eq ptr %.tr113.ph, null
  br i1 %.not74, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ac = load i8, ptr %.tr113.ph, align 1, !tbaa !41
  tail call void @_ZN4Luau8Compiler11compileExprEPNS_7AstExprEhb(ptr noundef nonnull align 8 dereferenceable(1904) %0, ptr noundef %.tr112, i8 noundef zeroext %i.ac, i1 noundef zeroext true), !inline_history !19
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  %i.ad = load ptr, ptr %0, align 8, !tbaa !265, !nonnull !87, !align !266
  %i.ae = tail call noundef i64 @_ZN4Luau15BytecodeBuilder9emitLabelEv(ptr noundef nonnull align 8 dereferenceable(1048) %i.ad) ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 3 uses
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !461 ; 4 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 3 uses
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !326
  %.not.i.i82 = icmp eq ptr %i.ag, %i.ai
  br i1 %.not.i.i82, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  store i64 %i.ae, ptr %i.ag, align 8, !tbaa !54
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ag, i64 8
  store ptr %i.aj, ptr %i.af, align 8, !tbaa !461
  br label %_ZNSt6vectorImSaImEE9push_backEOm.exit

bb.l:                                             ; preds = %bb.j
  %i.ak = load ptr, ptr %3, align 8, !tbaa !325   ; 4 uses
  %i.al = ptrtoint ptr %i.ag to i64
  %i.am = ptrtoint ptr %i.ak to i64               ; 2 uses
  %i.an = sub i64 %i.al, %i.am                    ; 5 uses
  %i.ao = icmp eq i64 %i.an, 9223372036854775800
  br i1 %i.ao, label %bb.m, label %_ZNKSt6vectorImSaImEE12_M_check_lenEmPKc.exit.i.i.i

bb.m:                                             ; preds = %bb.l
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.125) #28
  unreachable

_ZNKSt6vectorImSaImEE12_M_check_lenEmPKc.exit.i.i.i: ; preds = %bb.l
  %i.ap = ashr exact i64 %i.an, 3                 ; 3 uses
  %.sroa.speculated.i.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.ap, i64 1)
  %i.aq = add nsw i64 %.sroa.speculated.i.i.i.i, %i.ap ; 2 uses
  %i.ar = icmp ult i64 %i.aq, %i.ap
  %i.as = tail call i64 @llvm.umin.i64(i64 %i.aq, i64 1152921504606846975)
  %i.at = select i1 %i.ar, i64 1152921504606846975, i64 %i.as ; 3 uses
  %.not.i.i.i.i = icmp ne i64 %i.at, 0
  tail call void @llvm.assume(i1 %.not.i.i.i.i)
  %i.au = shl nuw nsw i64 %i.at, 3
  %i.av = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.au) #31 ; 4 uses
  %i.aw = getelementptr inbounds i8, ptr %i.av, i64 %i.an ; 2 uses
  store i64 %i.ae, ptr %i.aw, align 8, !tbaa !54
  %i.ax = icmp sgt i64 %i.an, 0
  br i1 %i.ax, label %bb.n, label %_ZNSt6vectorImSaImEE11_S_relocateEPmS2_S2_RS0_.exit16.i.i.i

bb.n:                                             ; preds = %_ZNKSt6vectorImSaImEE12_M_check_lenEmPKc.exit.i.i.i
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.av, ptr align 8 %i.ak, i64 %i.an, i1 false)
  br label %_ZNSt6vectorImSaImEE11_S_relocateEPmS2_S2_RS0_.exit16.i.i.i

_ZNSt6vectorImSaImEE11_S_relocateEPmS2_S2_RS0_.exit16.i.i.i: ; preds = %bb.n, %_ZNKSt6vectorImSaImEE12_M_check_lenEmPKc.exit.i.i.i
  %i.ay = getelementptr inbounds nuw i8, ptr %i.aw, i64 8
  %.not.i17.i.i.i = icmp eq ptr %i.ak, null
  br i1 %.not.i17.i.i.i, label %_ZNSt6vectorImSaImEE17_M_realloc_insertIJmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i.i, label %bb.o

bb.o:                                             ; preds = %_ZNSt6vectorImSaImEE11_S_relocateEPmS2_S2_RS0_.exit16.i.i.i
  %i.az = load ptr, ptr %i.ah, align 8, !tbaa !326
  %i.ba = ptrtoint ptr %i.az to i64
  %i.bb = sub i64 %i.ba, %i.am
  tail call void @_ZdlPvm(ptr noundef nonnull %i.ak, i64 noundef %i.bb) #29
end_hunk_0

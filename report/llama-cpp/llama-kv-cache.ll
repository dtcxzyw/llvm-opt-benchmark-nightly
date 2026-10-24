Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llama-cpp/original/llama-kv-cache?download=true
inline.NumInlined: 4941
inline.NumDeleted: 2050
loop-unroll.NumCompletelyUnrolled: 34
loop-unroll.NumRuntimeUnrolled: 41
loop-unroll.NumUnrolled: 81
begin_hunk_0_@_ZNSt6vectorIN14llama_kv_cache9slot_infoESaIS1_EED2Ev:bb.a
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZNSt6vectorI12llama_ubatchSaIS0_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %0) unnamed_addr #9 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !326    ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !315  ; 2 uses
  %.not4.i.i = icmp eq ptr %i.a, %i.c
  br i1 %.not4.i.i, label %_ZSt8_DestroyIP12llama_ubatchS0_EvT_S2_RSaIT0_E.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.a, %_ZSt8_DestroyI12llama_ubatchEvPT_.exit.i.i
  %.05.i.i = phi ptr [ %i.u, %_ZSt8_DestroyI12llama_ubatchEvPT_.exit.i.i ], [ %i.a, %bb.a ] ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %.05.i.i, i64 96
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !108  ; 8 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.e, null
  br i1 %.not.i.i.i.i.i.i, label %_ZSt8_DestroyI12llama_ubatchEvPT_.exit.i.i, label %bb.b

bb.b:                                             ; preds = %.lr.ph.i.i
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 8 ; 4 uses
  %i.g = load atomic i64, ptr %i.f acquire, align 8 ; 2 uses
  %i.h = icmp eq i64 %i.g, 4294967297
  %i.i = trunc i64 %i.g to i32                    ; 2 uses
  br i1 %i.h, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  store i32 0, ptr %i.f, align 8, !tbaa !112
  %i.j = getelementptr inbounds nuw i8, ptr %i.e, i64 12
  store i32 0, ptr %i.j, align 4, !tbaa !113
  %i.k = load ptr, ptr %i.e, align 8, !tbaa !54
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 16
  %i.m = load ptr, ptr %i.l, align 8
  tail call void %i.m(ptr noundef nonnull align 8 dereferenceable(16) %i.e) #30, !inline_history !530
  %i.n = load ptr, ptr %i.e, align 8, !tbaa !54
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 24
  %i.p = load ptr, ptr %i.o, align 8
  tail call void %i.p(ptr noundef nonnull align 8 dereferenceable(16) %i.e) #30, !inline_history !530
  br label %_ZSt8_DestroyI12llama_ubatchEvPT_.exit.i.i

bb.d:                                             ; preds = %bb.b
  %i.q = load i8, ptr @__libc_single_threaded, align 1, !tbaa !109
  %.not.i.i.i.i.i.i.i = icmp eq i8 %i.q, 0
  br i1 %.not.i.i.i.i.i.i.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.r = add nsw i32 %i.i, -1
  store i32 %i.r, ptr %i.f, align 8, !tbaa !110
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i

bb.f:                                             ; preds = %bb.d
  %i.s = atomicrmw volatile add ptr %i.f, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i: ; preds = %bb.f, %bb.e
  %.0.i.i.i.i.i.i.i.i = phi i32 [ %i.i, %bb.e ], [ %i.s, %bb.f ]
  %i.t = icmp eq i32 %.0.i.i.i.i.i.i.i.i, 1
  br i1 %i.t, label %bb.g, label %_ZSt8_DestroyI12llama_ubatchEvPT_.exit.i.i, !prof !193

bb.g:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.e) #30
  br label %_ZSt8_DestroyI12llama_ubatchEvPT_.exit.i.i

_ZSt8_DestroyI12llama_ubatchEvPT_.exit.i.i:       ; preds = %bb.g, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i, %bb.c, %.lr.ph.i.i
  %i.u = getelementptr inbounds nuw i8, ptr %.05.i.i, i64 104 ; 2 uses
  %.not.i.i = icmp eq ptr %i.u, %i.c
  br i1 %.not.i.i, label %_ZSt8_DestroyIP12llama_ubatchS0_EvT_S2_RSaIT0_E.exitthread-pre-split, label %.lr.ph.i.i, !llvm.loop !23

_ZSt8_DestroyIP12llama_ubatchS0_EvT_S2_RSaIT0_E.exitthread-pre-split: ; preds = %_ZSt8_DestroyI12llama_ubatchEvPT_.exit.i.i
  %.pr = load ptr, ptr %0, align 8, !tbaa !326
  br label %_ZSt8_DestroyIP12llama_ubatchS0_EvT_S2_RSaIT0_E.exit

_ZSt8_DestroyIP12llama_ubatchS0_EvT_S2_RSaIT0_E.exit: ; preds = %_ZSt8_DestroyIP12llama_ubatchS0_EvT_S2_RSaIT0_E.exitthread-pre-split, %bb.a
  %i.v = phi ptr [ %.pr, %_ZSt8_DestroyIP12llama_ubatchS0_EvT_S2_RSaIT0_E.exitthread-pre-split ], [ %i.a, %bb.a ] ; 3 uses
  %.not.i.i1 = icmp eq ptr %i.v, null
  br i1 %.not.i.i1, label %_ZNSt12_Vector_baseI12llama_ubatchSaIS0_EED2Ev.exit, label %bb.h

bb.h:                                             ; preds = %_ZSt8_DestroyIP12llama_ubatchS0_EvT_S2_RSaIT0_E.exit
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !316
  %i.y = ptrtoint ptr %i.x to i64
  %i.z = ptrtoint ptr %i.v to i64
  %i.aa = sub i64 %i.y, %i.z
  tail call void @_ZdlPvm(ptr noundef nonnull %i.v, i64 noundef %i.aa) #31
  br label %_ZNSt12_Vector_baseI12llama_ubatchSaIS0_EED2Ev.exit

_ZNSt12_Vector_baseI12llama_ubatchSaIS0_EED2Ev.exit: ; preds = %_ZSt8_DestroyIP12llama_ubatchS0_EvT_S2_RSaIT0_E.exit, %bb.h
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN14llama_kv_cache9init_fullEv(ptr dead_on_unwind noalias nofree writable writeonly sret(%"class.std::unique_ptr.185") align 8 captures(none) %0, ptr noundef nonnull align 8 dereferenceable(352) %1) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = tail call noalias noundef nonnull dereferenceable(152) ptr @_Znwm(i64 noundef 152) #28, !noalias !533 ; 3 uses
  invoke void @_ZN22llama_kv_cache_contextC1EP14llama_kv_cache(ptr noundef nonnull align 8 dereferenceable(148) %i.a, ptr noundef nonnull %1)
          to label %_ZNSt10unique_ptrI22llama_kv_cache_contextSt14default_deleteIS0_EED2Ev.exit unwind label %bb.b, !noalias !533

bb.b:                                             ; preds = %bb.a
  %i.b = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPvm(ptr noundef nonnull %i.a, i64 noundef 152) #31, !noalias !533
  resume { ptr, i32 } %i.b

_ZNSt10unique_ptrI22llama_kv_cache_contextSt14default_deleteIS0_EED2Ev.exit: ; preds = %bb.a
  store ptr %i.a, ptr %0, align 8, !tbaa !325
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN14llama_kv_cache11init_updateEP13llama_contextb(ptr dead_on_unwind noalias nofree writable writeonly sret(%"class.std::unique_ptr.185") align 8 captures(none) %0, ptr noundef nonnull align 8 dereferenceable(352) %1, ptr noundef %2, i1 zeroext %3) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"struct.llama_kv_cache::stream_copy_info", align 16 ; 9 uses
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.b = load i32, ptr %i.a, align 8, !tbaa !98   ; 4 uses
  %.not.i = icmp eq i32 %i.b, 0
  br i1 %.not.i, label %_ZNK14llama_kv_cache13get_has_shiftEv.exit, label %iter.check

iter.check:                                       ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 192
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !117, !nonnull !118, !align !119
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !123  ; 49 uses
  %wide.trip.count.i = zext i32 %i.b to i64       ; 6 uses
  %min.iters.check = icmp ult i32 %i.b, 16
  br i1 %min.iters.check, label %vec.epilog.scalar.ph.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check6 = icmp ult i32 %i.b, 32
  br i1 %min.iters.check6, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.f = and i64 %wide.trip.count.i, 16
  %n.vec = and i64 %wide.trip.count.i, 4294967264 ; 4 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.ph, %vector.body
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 33 uses
  %vec.phi = phi <16 x i1> [ zeroinitializer, %vector.ph ], [ %i.ef, %vector.body ]
  %vec.phi7 = phi <16 x i1> [ zeroinitializer, %vector.ph ], [ %i.eg, %vector.body ]
  %i.g = getelementptr inbounds nuw [12440 x i8], ptr %i.e, i64 %index
  %i.h = getelementptr inbounds nuw [12440 x i8], ptr %i.e, i64 %index
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 12440
  %i.j = getelementptr inbounds nuw [12440 x i8], ptr %i.e, i64 %index
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 24880
  %i.l = getelementptr inbounds nuw [12440 x i8], ptr %i.e, i64 %index
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 37320
  %i.n = getelementptr inbounds nuw [12440 x i8], ptr %i.e, i64 %index
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 49760
  %i.p = getelementptr inbounds nuw [12440 x i8], ptr %i.e, i64 %index
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 62200
  %i.r = getelementptr inbounds nuw [12440 x i8], ptr %i.e, i64 %index
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 74640
  %i.t = getelementptr inbounds nuw [12440 x i8], ptr %i.e, i64 %index
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 87080
  %i.v = getelementptr inbounds nuw [12440 x i8], ptr %i.e, i64 %index
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 99520
  %i.x = getelementptr inbounds nuw [12440 x i8], ptr %i.e, i64 %index
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 111960
  %i.z = getelementptr inbounds nuw [12440 x i8], ptr %i.e, i64 %index
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 124400
  %i.ab = getelementptr inbounds nuw [12440 x i8], ptr %i.e, i64 %index
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 136840
  %i.ad = getelementptr inbounds nuw [12440 x i8], ptr %i.e, i64 %index
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 149280
  %i.af = getelementptr inbounds nuw [12440 x i8], ptr %i.e, i64 %index
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 161720
  %i.ah = getelementptr inbounds nuw [12440 x i8], ptr %i.e, i64 %index
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 174160
  %i.aj = getelementptr inbounds nuw [12440 x i8], ptr %i.e, i64 %index
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 186600
  %i.al = getelementptr inbounds nuw [12440 x i8], ptr %i.e, i64 %index
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 199040
  %i.an = getelementptr inbounds nuw [12440 x i8], ptr %i.e, i64 %index
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 211480
  %i.ap = getelementptr inbounds nuw [12440 x i8], ptr %i.e, i64 %index
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ap, i64 223920
  %i.ar = getelementptr inbounds nuw [12440 x i8], ptr %i.e, i64 %index
  %i.as = getelementptr inbounds nuw i8, ptr %i.ar, i64 236360
  %i.at = getelementptr inbounds nuw [12440 x i8], ptr %i.e, i64 %index
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 248800
  %i.av = getelementptr inbounds nuw [12440 x i8], ptr %i.e, i64 %index
  %i.aw = getelementptr inbounds nuw i8, ptr %i.av, i64 261240
  %i.ax = getelementptr inbounds nuw [12440 x i8], ptr %i.e, i64 %index
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ax, i64 273680
  %i.az = getelementptr inbounds nuw [12440 x i8], ptr %i.e, i64 %index
  %i.ba = getelementptr inbounds nuw i8, ptr %i.az, i64 286120
  %i.bb = getelementptr inbounds nuw [12440 x i8], ptr %i.e, i64 %index
  %i.bc = getelementptr inbounds nuw i8, ptr %i.bb, i64 298560
  %i.bd = getelementptr inbounds nuw [12440 x i8], ptr %i.e, i64 %index
  %i.be = getelementptr inbounds nuw i8, ptr %i.bd, i64 311000
  %i.bf = getelementptr inbounds nuw [12440 x i8], ptr %i.e, i64 %index
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bf, i64 323440
  %i.bh = getelementptr inbounds nuw [12440 x i8], ptr %i.e, i64 %index
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bh, i64 335880
  %i.bj = getelementptr inbounds nuw [12440 x i8], ptr %i.e, i64 %index
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bj, i64 348320
  %i.bl = getelementptr inbounds nuw [12440 x i8], ptr %i.e, i64 %index
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bl, i64 360760
  %i.bn = getelementptr inbounds nuw [12440 x i8], ptr %i.e, i64 %index
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bn, i64 373200
  %i.bp = getelementptr inbounds nuw [12440 x i8], ptr %i.e, i64 %index
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bp, i64 385640
  %i.br = load i8, ptr %i.g, align 8, !tbaa !300
  %i.bs = load i8, ptr %i.i, align 8, !tbaa !300
  %i.bt = load i8, ptr %i.k, align 8, !tbaa !300
  %i.bu = load i8, ptr %i.m, align 8, !tbaa !300
  %i.bv = load i8, ptr %i.o, align 8, !tbaa !300
  %i.bw = load i8, ptr %i.q, align 8, !tbaa !300
  %i.bx = load i8, ptr %i.s, align 8, !tbaa !300
  %i.by = load i8, ptr %i.u, align 8, !tbaa !300
  %i.bz = load i8, ptr %i.w, align 8, !tbaa !300
  %i.ca = load i8, ptr %i.y, align 8, !tbaa !300
  %i.cb = load i8, ptr %i.aa, align 8, !tbaa !300
  %i.cc = load i8, ptr %i.ac, align 8, !tbaa !300
  %i.cd = load i8, ptr %i.ae, align 8, !tbaa !300
  %i.ce = load i8, ptr %i.ag, align 8, !tbaa !300
  %i.cf = load i8, ptr %i.ai, align 8, !tbaa !300
  %i.cg = load i8, ptr %i.ak, align 8, !tbaa !300
  %i.ch = insertelement <16 x i8> poison, i8 %i.br, i64 0
  %i.ci = insertelement <16 x i8> %i.ch, i8 %i.bs, i64 1
  %i.cj = insertelement <16 x i8> %i.ci, i8 %i.bt, i64 2
  %i.ck = insertelement <16 x i8> %i.cj, i8 %i.bu, i64 3
  %i.cl = insertelement <16 x i8> %i.ck, i8 %i.bv, i64 4
  %i.cm = insertelement <16 x i8> %i.cl, i8 %i.bw, i64 5
  %i.cn = insertelement <16 x i8> %i.cm, i8 %i.bx, i64 6
  %i.co = insertelement <16 x i8> %i.cn, i8 %i.by, i64 7
  %i.cp = insertelement <16 x i8> %i.co, i8 %i.bz, i64 8
  %i.cq = insertelement <16 x i8> %i.cp, i8 %i.ca, i64 9
  %i.cr = insertelement <16 x i8> %i.cq, i8 %i.cb, i64 10
  %i.cs = insertelement <16 x i8> %i.cr, i8 %i.cc, i64 11
  %i.ct = insertelement <16 x i8> %i.cs, i8 %i.cd, i64 12
  %i.cu = insertelement <16 x i8> %i.ct, i8 %i.ce, i64 13
  %i.cv = insertelement <16 x i8> %i.cu, i8 %i.cf, i64 14
  %i.cw = insertelement <16 x i8> %i.cv, i8 %i.cg, i64 15
  %i.cx = load i8, ptr %i.am, align 8, !tbaa !300
  %i.cy = load i8, ptr %i.ao, align 8, !tbaa !300
  %i.cz = load i8, ptr %i.aq, align 8, !tbaa !300
  %i.da = load i8, ptr %i.as, align 8, !tbaa !300
  %i.db = load i8, ptr %i.au, align 8, !tbaa !300
  %i.dc = load i8, ptr %i.aw, align 8, !tbaa !300
  %i.dd = load i8, ptr %i.ay, align 8, !tbaa !300
  %i.de = load i8, ptr %i.ba, align 8, !tbaa !300
  %i.df = load i8, ptr %i.bc, align 8, !tbaa !300
  %i.dg = load i8, ptr %i.be, align 8, !tbaa !300
  %i.dh = load i8, ptr %i.bg, align 8, !tbaa !300
  %i.di = load i8, ptr %i.bi, align 8, !tbaa !300
  %i.dj = load i8, ptr %i.bk, align 8, !tbaa !300
  %i.dk = load i8, ptr %i.bm, align 8, !tbaa !300
  %i.dl = load i8, ptr %i.bo, align 8, !tbaa !300
  %i.dm = load i8, ptr %i.bq, align 8, !tbaa !300
  %i.dn = insertelement <16 x i8> poison, i8 %i.cx, i64 0
  %i.do = insertelement <16 x i8> %i.dn, i8 %i.cy, i64 1
  %i.dp = insertelement <16 x i8> %i.do, i8 %i.cz, i64 2
  %i.dq = insertelement <16 x i8> %i.dp, i8 %i.da, i64 3
  %i.dr = insertelement <16 x i8> %i.dq, i8 %i.db, i64 4
  %i.ds = insertelement <16 x i8> %i.dr, i8 %i.dc, i64 5
  %i.dt = insertelement <16 x i8> %i.ds, i8 %i.dd, i64 6
  %i.du = insertelement <16 x i8> %i.dt, i8 %i.de, i64 7
  %i.dv = insertelement <16 x i8> %i.du, i8 %i.df, i64 8
  %i.dw = insertelement <16 x i8> %i.dv, i8 %i.dg, i64 9
  %i.dx = insertelement <16 x i8> %i.dw, i8 %i.dh, i64 10
  %i.dy = insertelement <16 x i8> %i.dx, i8 %i.di, i64 11
  %i.dz = insertelement <16 x i8> %i.dy, i8 %i.dj, i64 12
  %i.ea = insertelement <16 x i8> %i.dz, i8 %i.dk, i64 13
  %i.eb = insertelement <16 x i8> %i.ea, i8 %i.dl, i64 14
  %i.ec = insertelement <16 x i8> %i.eb, i8 %i.dm, i64 15
  %i.ed = trunc nuw <16 x i8> %i.cw to <16 x i1>
  %i.ee = trunc nuw <16 x i8> %i.ec to <16 x i1>
  %i.ef = or <16 x i1> %vec.phi, %i.ed            ; 2 uses
  %i.eg = or <16 x i1> %vec.phi7, %i.ee           ; 2 uses
  %index.next = add nuw i64 %index, 32            ; 2 uses
  %i.eh = icmp eq i64 %index.next, %n.vec
  br i1 %i.eh, label %middle.block, label %vector.body, !llvm.loop !534

middle.block:                                     ; preds = %vector.body
  %bin.rdx = or <16 x i1> %i.eg, %i.ef
  %i.ei = bitcast <16 x i1> %bin.rdx to i16
  %i.ej = icmp ne i16 %i.ei, 0                    ; 3 uses
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count.i
  br i1 %cmp.n, label %_ZNK14llama_kv_cache13get_has_shiftEv.exit, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check.not.not = icmp eq i64 %i.f, 0
  br i1 %min.epilog.iters.check.not.not, label %vec.epilog.scalar.ph.preheader, label %vec.epilog.ph, !prof !355

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %bc.merge.rdx = phi i1 [ %i.ej, %vec.epilog.iter.check ], [ false, %vector.main.loop.iter.check ]
  %n.vec8 = and i64 %wide.trip.count.i, 4294967280 ; 3 uses
  %i.ek = insertelement <16 x i1> <i1 poison, i1 false, i1 false, i1 false, i1 false, i1 false, i1 false, i1 false, i1 false, i1 false, i1 false, i1 false, i1 false, i1 false, i1 false, i1 false>, i1 %bc.merge.rdx, i64 0
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index9 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next11, %vec.epilog.vector.body ] ; 17 uses
  %vec.phi10 = phi <16 x i1> [ %i.ek, %vec.epilog.ph ], [ %i.gx, %vec.epilog.vector.body ]
  %i.el = getelementptr inbounds nuw [12440 x i8], ptr %i.e, i64 %index9
  %i.em = getelementptr inbounds nuw [12440 x i8], ptr %i.e, i64 %index9
  %i.en = getelementptr inbounds nuw i8, ptr %i.em, i64 12440
  %i.eo = getelementptr inbounds nuw [12440 x i8], ptr %i.e, i64 %index9
  %i.ep = getelementptr inbounds nuw i8, ptr %i.eo, i64 24880
  %i.eq = getelementptr inbounds nuw [12440 x i8], ptr %i.e, i64 %index9
  %i.er = getelementptr inbounds nuw i8, ptr %i.eq, i64 37320
  %i.es = getelementptr inbounds nuw [12440 x i8], ptr %i.e, i64 %index9
  %i.et = getelementptr inbounds nuw i8, ptr %i.es, i64 49760
  %i.eu = getelementptr inbounds nuw [12440 x i8], ptr %i.e, i64 %index9
  %i.ev = getelementptr inbounds nuw i8, ptr %i.eu, i64 62200
  %i.ew = getelementptr inbounds nuw [12440 x i8], ptr %i.e, i64 %index9
  %i.ex = getelementptr inbounds nuw i8, ptr %i.ew, i64 74640
  %i.ey = getelementptr inbounds nuw [12440 x i8], ptr %i.e, i64 %index9
  %i.ez = getelementptr inbounds nuw i8, ptr %i.ey, i64 87080
  %i.fa = getelementptr inbounds nuw [12440 x i8], ptr %i.e, i64 %index9
  %i.fb = getelementptr inbounds nuw i8, ptr %i.fa, i64 99520
  %i.fc = getelementptr inbounds nuw [12440 x i8], ptr %i.e, i64 %index9
  %i.fd = getelementptr inbounds nuw i8, ptr %i.fc, i64 111960
  %i.fe = getelementptr inbounds nuw [12440 x i8], ptr %i.e, i64 %index9
  %i.ff = getelementptr inbounds nuw i8, ptr %i.fe, i64 124400
  %i.fg = getelementptr inbounds nuw [12440 x i8], ptr %i.e, i64 %index9
  %i.fh = getelementptr inbounds nuw i8, ptr %i.fg, i64 136840
  %i.fi = getelementptr inbounds nuw [12440 x i8], ptr %i.e, i64 %index9
  %i.fj = getelementptr inbounds nuw i8, ptr %i.fi, i64 149280
  %i.fk = getelementptr inbounds nuw [12440 x i8], ptr %i.e, i64 %index9
  %i.fl = getelementptr inbounds nuw i8, ptr %i.fk, i64 161720
  %i.fm = getelementptr inbounds nuw [12440 x i8], ptr %i.e, i64 %index9
  %i.fn = getelementptr inbounds nuw i8, ptr %i.fm, i64 174160
  %i.fo = getelementptr inbounds nuw [12440 x i8], ptr %i.e, i64 %index9
  %i.fp = getelementptr inbounds nuw i8, ptr %i.fo, i64 186600
  %i.fq = load i8, ptr %i.el, align 8, !tbaa !300
  %i.fr = load i8, ptr %i.en, align 8, !tbaa !300
  %i.fs = load i8, ptr %i.ep, align 8, !tbaa !300
  %i.ft = load i8, ptr %i.er, align 8, !tbaa !300
  %i.fu = load i8, ptr %i.et, align 8, !tbaa !300
  %i.fv = load i8, ptr %i.ev, align 8, !tbaa !300
  %i.fw = load i8, ptr %i.ex, align 8, !tbaa !300
  %i.fx = load i8, ptr %i.ez, align 8, !tbaa !300
  %i.fy = load i8, ptr %i.fb, align 8, !tbaa !300
  %i.fz = load i8, ptr %i.fd, align 8, !tbaa !300
  %i.ga = load i8, ptr %i.ff, align 8, !tbaa !300
  %i.gb = load i8, ptr %i.fh, align 8, !tbaa !300
  %i.gc = load i8, ptr %i.fj, align 8, !tbaa !300
  %i.gd = load i8, ptr %i.fl, align 8, !tbaa !300
  %i.ge = load i8, ptr %i.fn, align 8, !tbaa !300
  %i.gf = load i8, ptr %i.fp, align 8, !tbaa !300
  %i.gg = insertelement <16 x i8> poison, i8 %i.fq, i64 0
  %i.gh = insertelement <16 x i8> %i.gg, i8 %i.fr, i64 1
  %i.gi = insertelement <16 x i8> %i.gh, i8 %i.fs, i64 2
  %i.gj = insertelement <16 x i8> %i.gi, i8 %i.ft, i64 3
  %i.gk = insertelement <16 x i8> %i.gj, i8 %i.fu, i64 4
  %i.gl = insertelement <16 x i8> %i.gk, i8 %i.fv, i64 5
  %i.gm = insertelement <16 x i8> %i.gl, i8 %i.fw, i64 6
  %i.gn = insertelement <16 x i8> %i.gm, i8 %i.fx, i64 7
  %i.go = insertelement <16 x i8> %i.gn, i8 %i.fy, i64 8
  %i.gp = insertelement <16 x i8> %i.go, i8 %i.fz, i64 9
  %i.gq = insertelement <16 x i8> %i.gp, i8 %i.ga, i64 10
  %i.gr = insertelement <16 x i8> %i.gq, i8 %i.gb, i64 11
  %i.gs = insertelement <16 x i8> %i.gr, i8 %i.gc, i64 12
  %i.gt = insertelement <16 x i8> %i.gs, i8 %i.gd, i64 13
  %i.gu = insertelement <16 x i8> %i.gt, i8 %i.ge, i64 14
  %i.gv = insertelement <16 x i8> %i.gu, i8 %i.gf, i64 15
  %i.gw = trunc nuw <16 x i8> %i.gv to <16 x i1>
  %i.gx = or <16 x i1> %vec.phi10, %i.gw          ; 2 uses
  %index.next11 = add nuw i64 %index9, 16         ; 2 uses
  %i.gy = icmp eq i64 %index.next11, %n.vec8
  br i1 %i.gy, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !535

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %i.gz = bitcast <16 x i1> %i.gx to i16
  %i.ha = icmp ne i16 %i.gz, 0                    ; 2 uses
  %cmp.n12 = icmp eq i64 %n.vec8, %wide.trip.count.i
  br i1 %cmp.n12, label %_ZNK14llama_kv_cache13get_has_shiftEv.exit, label %vec.epilog.scalar.ph.preheader

vec.epilog.scalar.ph.preheader:                   ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %indvars.iv.i.ph = phi i64 [ 0, %iter.check ], [ %n.vec, %vec.epilog.iter.check ], [ %n.vec8, %vec.epilog.middle.block ]
  %.056.i.ph = phi i1 [ false, %iter.check ], [ %i.ej, %vec.epilog.iter.check ], [ %i.ha, %vec.epilog.middle.block ]
  br label %vec.epilog.scalar.ph

vec.epilog.scalar.ph:                             ; preds = %vec.epilog.scalar.ph.preheader, %vec.epilog.scalar.ph
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %vec.epilog.scalar.ph ], [ %indvars.iv.i.ph, %vec.epilog.scalar.ph.preheader ] ; 2 uses
  %.056.i = phi i1 [ %i.he, %vec.epilog.scalar.ph ], [ %.056.i.ph, %vec.epilog.scalar.ph.preheader ]
  %i.hb = getelementptr inbounds nuw [12440 x i8], ptr %i.e, i64 %indvars.iv.i
  %i.hc = load i8, ptr %i.hb, align 8, !tbaa !300, !range !200, !noundef !118
  %i.hd = trunc nuw i8 %i.hc to i1
  %i.he = or i1 %.056.i, %i.hd                    ; 2 uses
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %wide.trip.count.i
  br i1 %exitcond.not.i, label %_ZNK14llama_kv_cache13get_has_shiftEv.exit, label %vec.epilog.scalar.ph, !llvm.loop !536

_ZNK14llama_kv_cache13get_has_shiftEv.exit:       ; preds = %vec.epilog.scalar.ph, %middle.block, %vec.epilog.middle.block, %bb.a
  %.05.lcssa.i = phi i1 [ false, %bb.a ], [ %i.ha, %vec.epilog.middle.block ], [ %i.ej, %middle.block ], [ %i.he, %vec.epilog.scalar.ph ]
  %i.hf = getelementptr inbounds nuw i8, ptr %1, i64 224 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4)
  %i.hg = tail call noalias noundef nonnull dereferenceable(152) ptr @_Znwm(i64 noundef 152) #28, !noalias !539 ; 3 uses
  %i.hh = load <2 x ptr>, ptr %i.hf, align 8, !tbaa !336, !noalias !539
  store <2 x ptr> %i.hh, ptr %4, align 16, !tbaa !336, !noalias !539
  %i.hi = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %i.hj = getelementptr inbounds nuw i8, ptr %1, i64 240
  %i.hk = getelementptr inbounds nuw i8, ptr %1, i64 248 ; 2 uses
  %i.hl = getelementptr inbounds nuw i8, ptr %1, i64 256
  %i.hm = getelementptr inbounds nuw i8, ptr %4, i64 40
  %i.hn = load ptr, ptr %i.hj, align 8, !tbaa !275, !noalias !539
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.hf, i8 0, i64 24, i1 false), !noalias !539
  %i.ho = load ptr, ptr %i.hk, align 8, !tbaa !120, !noalias !539
  %i.hp = load <2 x ptr>, ptr %i.hl, align 8, !tbaa !336, !noalias !539
  %i.hq = insertelement <4 x ptr> poison, ptr %i.hn, i64 0
  %i.hr = insertelement <4 x ptr> %i.hq, ptr %i.ho, i64 1
  %i.hs = shufflevector <2 x ptr> %i.hp, <2 x ptr> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.ht = shufflevector <4 x ptr> %i.hr, <4 x ptr> %i.hs, <4 x i32> <i32 0, i32 1, i32 4, i32 5>
  store <4 x ptr> %i.ht, ptr %i.hi, align 16, !tbaa !336, !noalias !539
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.hk, i8 0, i64 24, i1 false), !noalias !539
  invoke void @_ZN22llama_kv_cache_contextC1EP14llama_kv_cacheP13llama_contextbNS0_16stream_copy_infoE(ptr noundef nonnull align 8 dereferenceable(148) %i.hg, ptr noundef nonnull %1, ptr noundef %2, i1 noundef zeroext %.05.lcssa.i, ptr nofreeobj noundef nonnull align 8 dereferenceable(48) %4)
          to label %bb.b unwind label %bb.e, !noalias !539

bb.b:                                             ; preds = %_ZNK14llama_kv_cache13get_has_shiftEv.exit
  %i.hu = getelementptr inbounds nuw i8, ptr %4, i64 24
  %i.hv = load ptr, ptr %i.hu, align 8, !tbaa !120, !noalias !539 ; 3 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.hv, null
  br i1 %.not.i.i.i.i.i, label %_ZNSt6vectorIjSaIjEED2Ev.exit.i.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.hw = load ptr, ptr %i.hm, align 8, !tbaa !275, !noalias !539
  %i.hx = ptrtoint ptr %i.hw to i64
  %i.hy = ptrtoint ptr %i.hv to i64
  %i.hz = sub i64 %i.hx, %i.hy
  call void @_ZdlPvm(ptr noundef nonnull %i.hv, i64 noundef %i.hz) #31, !noalias !539
  br label %_ZNSt6vectorIjSaIjEED2Ev.exit.i.i

_ZNSt6vectorIjSaIjEED2Ev.exit.i.i:                ; preds = %bb.c, %bb.b
  %i.ia = load ptr, ptr %4, align 16, !tbaa !120, !noalias !539 ; 3 uses
  %.not.i.i.i1.i.i = icmp eq ptr %i.ia, null
  br i1 %.not.i.i.i1.i.i, label %_ZNSt10unique_ptrI22llama_kv_cache_contextSt14default_deleteIS0_EED2Ev.exit, label %bb.d

bb.d:                                             ; preds = %_ZNSt6vectorIjSaIjEED2Ev.exit.i.i
  %i.ib = load ptr, ptr %i.hi, align 16, !tbaa !275, !noalias !539
  %i.ic = ptrtoint ptr %i.ib to i64
  %i.id = ptrtoint ptr %i.ia to i64
  %i.ie = sub i64 %i.ic, %i.id
  call void @_ZdlPvm(ptr noundef nonnull %i.ia, i64 noundef %i.ie) #31, !noalias !539
  br label %_ZNSt10unique_ptrI22llama_kv_cache_contextSt14default_deleteIS0_EED2Ev.exit

bb.e:                                             ; preds = %_ZNK14llama_kv_cache13get_has_shiftEv.exit
  %i.if = landingpad { ptr, i32 }
          cleanup
  call void @_ZN14llama_kv_cache16stream_copy_infoD2Ev(ptr noundef nonnull align 8 dead_on_return(48) dereferenceable(48) %4) #30, !noalias !539
  call void @_ZdlPvm(ptr noundef nonnull %i.hg, i64 noundef 152) #31, !noalias !539
  resume { ptr, i32 } %i.if

_ZNSt10unique_ptrI22llama_kv_cache_contextSt14default_deleteIS0_EED2Ev.exit: ; preds = %bb.d, %_ZNSt6vectorIjSaIjEED2Ev.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4)
  store ptr %i.hg, ptr %0, align 8, !tbaa !325
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define noundef zeroext i1 @_ZNK14llama_kv_cache13get_has_shiftEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(352) %0) local_unnamed_addr #2 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.b = load i32, ptr %i.a, align 8, !tbaa !98   ; 4 uses
  %.not = icmp eq i32 %i.b, 0
  br i1 %.not, label %._crit_edge, label %iter.check

iter.check:                                       ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 192
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !117, !nonnull !118, !align !119
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !123  ; 49 uses
  %wide.trip.count = zext i32 %i.b to i64         ; 6 uses
  %min.iters.check = icmp ult i32 %i.b, 16
  br i1 %min.iters.check, label %vec.epilog.scalar.ph.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check8 = icmp ult i32 %i.b, 32
  br i1 %min.iters.check8, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.f = and i64 %wide.trip.count, 16
  %n.vec = and i64 %wide.trip.count, 4294967264   ; 4 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.ph, %vector.body
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 33 uses
  %vec.phi = phi <16 x i1> [ zeroinitializer, %vector.ph ], [ %i.ef, %vector.body ]
  %vec.phi9 = phi <16 x i1> [ zeroinitializer, %vector.ph ], [ %i.eg, %vector.body ]
  %i.g = getelementptr inbounds nuw [12440 x i8], ptr %i.e, i64 %index
  %i.h = getelementptr inbounds nuw [12440 x i8], ptr %i.e, i64 %index
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 12440
  %i.j = getelementptr inbounds nuw [12440 x i8], ptr %i.e, i64 %index
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 24880
  %i.l = getelementptr inbounds nuw [12440 x i8], ptr %i.e, i64 %index
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 37320
  %i.n = getelementptr inbounds nuw [12440 x i8], ptr %i.e, i64 %index
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 49760
  %i.p = getelementptr inbounds nuw [12440 x i8], ptr %i.e, i64 %index
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 62200
  %i.r = getelementptr inbounds nuw [12440 x i8], ptr %i.e, i64 %index
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 74640
  %i.t = getelementptr inbounds nuw [12440 x i8], ptr %i.e, i64 %index
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 87080
  %i.v = getelementptr inbounds nuw [12440 x i8], ptr %i.e, i64 %index
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 99520
  %i.x = getelementptr inbounds nuw [12440 x i8], ptr %i.e, i64 %index
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 111960
  %i.z = getelementptr inbounds nuw [12440 x i8], ptr %i.e, i64 %index
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 124400
  %i.ab = getelementptr inbounds nuw [12440 x i8], ptr %i.e, i64 %index
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 136840
  %i.ad = getelementptr inbounds nuw [12440 x i8], ptr %i.e, i64 %index
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 149280
  %i.af = getelementptr inbounds nuw [12440 x i8], ptr %i.e, i64 %index
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 161720
  %i.ah = getelementptr inbounds nuw [12440 x i8], ptr %i.e, i64 %index
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 174160
  %i.aj = getelementptr inbounds nuw [12440 x i8], ptr %i.e, i64 %index
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 186600
  %i.al = getelementptr inbounds nuw [12440 x i8], ptr %i.e, i64 %index
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 199040
  %i.an = getelementptr inbounds nuw [12440 x i8], ptr %i.e, i64 %index
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 211480
  %i.ap = getelementptr inbounds nuw [12440 x i8], ptr %i.e, i64 %index
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ap, i64 223920
  %i.ar = getelementptr inbounds nuw [12440 x i8], ptr %i.e, i64 %index
  %i.as = getelementptr inbounds nuw i8, ptr %i.ar, i64 236360
  %i.at = getelementptr inbounds nuw [12440 x i8], ptr %i.e, i64 %index
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 248800
  %i.av = getelementptr inbounds nuw [12440 x i8], ptr %i.e, i64 %index
  %i.aw = getelementptr inbounds nuw i8, ptr %i.av, i64 261240
  %i.ax = getelementptr inbounds nuw [12440 x i8], ptr %i.e, i64 %index
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ax, i64 273680
  %i.az = getelementptr inbounds nuw [12440 x i8], ptr %i.e, i64 %index
  %i.ba = getelementptr inbounds nuw i8, ptr %i.az, i64 286120
  %i.bb = getelementptr inbounds nuw [12440 x i8], ptr %i.e, i64 %index
  %i.bc = getelementptr inbounds nuw i8, ptr %i.bb, i64 298560
  %i.bd = getelementptr inbounds nuw [12440 x i8], ptr %i.e, i64 %index
  %i.be = getelementptr inbounds nuw i8, ptr %i.bd, i64 311000
  %i.bf = getelementptr inbounds nuw [12440 x i8], ptr %i.e, i64 %index
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bf, i64 323440
  %i.bh = getelementptr inbounds nuw [12440 x i8], ptr %i.e, i64 %index
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bh, i64 335880
  %i.bj = getelementptr inbounds nuw [12440 x i8], ptr %i.e, i64 %index
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bj, i64 348320
  %i.bl = getelementptr inbounds nuw [12440 x i8], ptr %i.e, i64 %index
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bl, i64 360760
  %i.bn = getelementptr inbounds nuw [12440 x i8], ptr %i.e, i64 %index
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bn, i64 373200
  %i.bp = getelementptr inbounds nuw [12440 x i8], ptr %i.e, i64 %index
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bp, i64 385640
  %i.br = load i8, ptr %i.g, align 8, !tbaa !300
  %i.bs = load i8, ptr %i.i, align 8, !tbaa !300
  %i.bt = load i8, ptr %i.k, align 8, !tbaa !300
  %i.bu = load i8, ptr %i.m, align 8, !tbaa !300
  %i.bv = load i8, ptr %i.o, align 8, !tbaa !300
  %i.bw = load i8, ptr %i.q, align 8, !tbaa !300
  %i.bx = load i8, ptr %i.s, align 8, !tbaa !300
  %i.by = load i8, ptr %i.u, align 8, !tbaa !300
  %i.bz = load i8, ptr %i.w, align 8, !tbaa !300
  %i.ca = load i8, ptr %i.y, align 8, !tbaa !300
  %i.cb = load i8, ptr %i.aa, align 8, !tbaa !300
  %i.cc = load i8, ptr %i.ac, align 8, !tbaa !300
  %i.cd = load i8, ptr %i.ae, align 8, !tbaa !300
  %i.ce = load i8, ptr %i.ag, align 8, !tbaa !300
  %i.cf = load i8, ptr %i.ai, align 8, !tbaa !300
  %i.cg = load i8, ptr %i.ak, align 8, !tbaa !300
  %i.ch = insertelement <16 x i8> poison, i8 %i.br, i64 0
  %i.ci = insertelement <16 x i8> %i.ch, i8 %i.bs, i64 1
  %i.cj = insertelement <16 x i8> %i.ci, i8 %i.bt, i64 2
  %i.ck = insertelement <16 x i8> %i.cj, i8 %i.bu, i64 3
  %i.cl = insertelement <16 x i8> %i.ck, i8 %i.bv, i64 4
  %i.cm = insertelement <16 x i8> %i.cl, i8 %i.bw, i64 5
  %i.cn = insertelement <16 x i8> %i.cm, i8 %i.bx, i64 6
  %i.co = insertelement <16 x i8> %i.cn, i8 %i.by, i64 7
  %i.cp = insertelement <16 x i8> %i.co, i8 %i.bz, i64 8
  %i.cq = insertelement <16 x i8> %i.cp, i8 %i.ca, i64 9
  %i.cr = insertelement <16 x i8> %i.cq, i8 %i.cb, i64 10
  %i.cs = insertelement <16 x i8> %i.cr, i8 %i.cc, i64 11
  %i.ct = insertelement <16 x i8> %i.cs, i8 %i.cd, i64 12
  %i.cu = insertelement <16 x i8> %i.ct, i8 %i.ce, i64 13
  %i.cv = insertelement <16 x i8> %i.cu, i8 %i.cf, i64 14
  %i.cw = insertelement <16 x i8> %i.cv, i8 %i.cg, i64 15
  %i.cx = load i8, ptr %i.am, align 8, !tbaa !300
  %i.cy = load i8, ptr %i.ao, align 8, !tbaa !300
  %i.cz = load i8, ptr %i.aq, align 8, !tbaa !300
  %i.da = load i8, ptr %i.as, align 8, !tbaa !300
  %i.db = load i8, ptr %i.au, align 8, !tbaa !300
  %i.dc = load i8, ptr %i.aw, align 8, !tbaa !300
  %i.dd = load i8, ptr %i.ay, align 8, !tbaa !300
  %i.de = load i8, ptr %i.ba, align 8, !tbaa !300
  %i.df = load i8, ptr %i.bc, align 8, !tbaa !300
  %i.dg = load i8, ptr %i.be, align 8, !tbaa !300
  %i.dh = load i8, ptr %i.bg, align 8, !tbaa !300
  %i.di = load i8, ptr %i.bi, align 8, !tbaa !300
  %i.dj = load i8, ptr %i.bk, align 8, !tbaa !300
  %i.dk = load i8, ptr %i.bm, align 8, !tbaa !300
  %i.dl = load i8, ptr %i.bo, align 8, !tbaa !300
  %i.dm = load i8, ptr %i.bq, align 8, !tbaa !300
  %i.dn = insertelement <16 x i8> poison, i8 %i.cx, i64 0
  %i.do = insertelement <16 x i8> %i.dn, i8 %i.cy, i64 1
  %i.dp = insertelement <16 x i8> %i.do, i8 %i.cz, i64 2
  %i.dq = insertelement <16 x i8> %i.dp, i8 %i.da, i64 3
  %i.dr = insertelement <16 x i8> %i.dq, i8 %i.db, i64 4
  %i.ds = insertelement <16 x i8> %i.dr, i8 %i.dc, i64 5
  %i.dt = insertelement <16 x i8> %i.ds, i8 %i.dd, i64 6
  %i.du = insertelement <16 x i8> %i.dt, i8 %i.de, i64 7
  %i.dv = insertelement <16 x i8> %i.du, i8 %i.df, i64 8
  %i.dw = insertelement <16 x i8> %i.dv, i8 %i.dg, i64 9
  %i.dx = insertelement <16 x i8> %i.dw, i8 %i.dh, i64 10
  %i.dy = insertelement <16 x i8> %i.dx, i8 %i.di, i64 11
  %i.dz = insertelement <16 x i8> %i.dy, i8 %i.dj, i64 12
  %i.ea = insertelement <16 x i8> %i.dz, i8 %i.dk, i64 13
  %i.eb = insertelement <16 x i8> %i.ea, i8 %i.dl, i64 14
  %i.ec = insertelement <16 x i8> %i.eb, i8 %i.dm, i64 15
  %i.ed = trunc nuw <16 x i8> %i.cw to <16 x i1>
  %i.ee = trunc nuw <16 x i8> %i.ec to <16 x i1>
  %i.ef = or <16 x i1> %vec.phi, %i.ed            ; 2 uses
  %i.eg = or <16 x i1> %vec.phi9, %i.ee           ; 2 uses
  %index.next = add nuw i64 %index, 32            ; 2 uses
  %i.eh = icmp eq i64 %index.next, %n.vec
  br i1 %i.eh, label %middle.block, label %vector.body, !llvm.loop !540

middle.block:                                     ; preds = %vector.body
  %bin.rdx = or <16 x i1> %i.eg, %i.ef
  %i.ei = bitcast <16 x i1> %bin.rdx to i16
  %i.ej = icmp ne i16 %i.ei, 0                    ; 3 uses
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count
  br i1 %cmp.n, label %._crit_edge, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check.not.not = icmp eq i64 %i.f, 0
  br i1 %min.epilog.iters.check.not.not, label %vec.epilog.scalar.ph.preheader, label %vec.epilog.ph, !prof !355

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %bc.merge.rdx = phi i1 [ %i.ej, %vec.epilog.iter.check ], [ false, %vector.main.loop.iter.check ]
  %n.vec10 = and i64 %wide.trip.count, 4294967280 ; 3 uses
  %i.ek = insertelement <16 x i1> <i1 poison, i1 false, i1 false, i1 false, i1 false, i1 false, i1 false, i1 false, i1 false, i1 false, i1 false, i1 false, i1 false, i1 false, i1 false, i1 false>, i1 %bc.merge.rdx, i64 0
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index11 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next13, %vec.epilog.vector.body ] ; 17 uses
  %vec.phi12 = phi <16 x i1> [ %i.ek, %vec.epilog.ph ], [ %i.gx, %vec.epilog.vector.body ]
  %i.el = getelementptr inbounds nuw [12440 x i8], ptr %i.e, i64 %index11
  %i.em = getelementptr inbounds nuw [12440 x i8], ptr %i.e, i64 %index11
  %i.en = getelementptr inbounds nuw i8, ptr %i.em, i64 12440
  %i.eo = getelementptr inbounds nuw [12440 x i8], ptr %i.e, i64 %index11
  %i.ep = getelementptr inbounds nuw i8, ptr %i.eo, i64 24880
  %i.eq = getelementptr inbounds nuw [12440 x i8], ptr %i.e, i64 %index11
  %i.er = getelementptr inbounds nuw i8, ptr %i.eq, i64 37320
  %i.es = getelementptr inbounds nuw [12440 x i8], ptr %i.e, i64 %index11
  %i.et = getelementptr inbounds nuw i8, ptr %i.es, i64 49760
  %i.eu = getelementptr inbounds nuw [12440 x i8], ptr %i.e, i64 %index11
  %i.ev = getelementptr inbounds nuw i8, ptr %i.eu, i64 62200
  %i.ew = getelementptr inbounds nuw [12440 x i8], ptr %i.e, i64 %index11
  %i.ex = getelementptr inbounds nuw i8, ptr %i.ew, i64 74640
  %i.ey = getelementptr inbounds nuw [12440 x i8], ptr %i.e, i64 %index11
  %i.ez = getelementptr inbounds nuw i8, ptr %i.ey, i64 87080
  %i.fa = getelementptr inbounds nuw [12440 x i8], ptr %i.e, i64 %index11
  %i.fb = getelementptr inbounds nuw i8, ptr %i.fa, i64 99520
  %i.fc = getelementptr inbounds nuw [12440 x i8], ptr %i.e, i64 %index11
  %i.fd = getelementptr inbounds nuw i8, ptr %i.fc, i64 111960
  %i.fe = getelementptr inbounds nuw [12440 x i8], ptr %i.e, i64 %index11
  %i.ff = getelementptr inbounds nuw i8, ptr %i.fe, i64 124400
  %i.fg = getelementptr inbounds nuw [12440 x i8], ptr %i.e, i64 %index11
  %i.fh = getelementptr inbounds nuw i8, ptr %i.fg, i64 136840
  %i.fi = getelementptr inbounds nuw [12440 x i8], ptr %i.e, i64 %index11
  %i.fj = getelementptr inbounds nuw i8, ptr %i.fi, i64 149280
  %i.fk = getelementptr inbounds nuw [12440 x i8], ptr %i.e, i64 %index11
  %i.fl = getelementptr inbounds nuw i8, ptr %i.fk, i64 161720
  %i.fm = getelementptr inbounds nuw [12440 x i8], ptr %i.e, i64 %index11
  %i.fn = getelementptr inbounds nuw i8, ptr %i.fm, i64 174160
  %i.fo = getelementptr inbounds nuw [12440 x i8], ptr %i.e, i64 %index11
  %i.fp = getelementptr inbounds nuw i8, ptr %i.fo, i64 186600
  %i.fq = load i8, ptr %i.el, align 8, !tbaa !300
  %i.fr = load i8, ptr %i.en, align 8, !tbaa !300
  %i.fs = load i8, ptr %i.ep, align 8, !tbaa !300
  %i.ft = load i8, ptr %i.er, align 8, !tbaa !300
  %i.fu = load i8, ptr %i.et, align 8, !tbaa !300
  %i.fv = load i8, ptr %i.ev, align 8, !tbaa !300
  %i.fw = load i8, ptr %i.ex, align 8, !tbaa !300
  %i.fx = load i8, ptr %i.ez, align 8, !tbaa !300
  %i.fy = load i8, ptr %i.fb, align 8, !tbaa !300
  %i.fz = load i8, ptr %i.fd, align 8, !tbaa !300
  %i.ga = load i8, ptr %i.ff, align 8, !tbaa !300
  %i.gb = load i8, ptr %i.fh, align 8, !tbaa !300
  %i.gc = load i8, ptr %i.fj, align 8, !tbaa !300
  %i.gd = load i8, ptr %i.fl, align 8, !tbaa !300
  %i.ge = load i8, ptr %i.fn, align 8, !tbaa !300
  %i.gf = load i8, ptr %i.fp, align 8, !tbaa !300
  %i.gg = insertelement <16 x i8> poison, i8 %i.fq, i64 0
  %i.gh = insertelement <16 x i8> %i.gg, i8 %i.fr, i64 1
  %i.gi = insertelement <16 x i8> %i.gh, i8 %i.fs, i64 2
  %i.gj = insertelement <16 x i8> %i.gi, i8 %i.ft, i64 3
  %i.gk = insertelement <16 x i8> %i.gj, i8 %i.fu, i64 4
  %i.gl = insertelement <16 x i8> %i.gk, i8 %i.fv, i64 5
  %i.gm = insertelement <16 x i8> %i.gl, i8 %i.fw, i64 6
  %i.gn = insertelement <16 x i8> %i.gm, i8 %i.fx, i64 7
  %i.go = insertelement <16 x i8> %i.gn, i8 %i.fy, i64 8
  %i.gp = insertelement <16 x i8> %i.go, i8 %i.fz, i64 9
  %i.gq = insertelement <16 x i8> %i.gp, i8 %i.ga, i64 10
  %i.gr = insertelement <16 x i8> %i.gq, i8 %i.gb, i64 11
  %i.gs = insertelement <16 x i8> %i.gr, i8 %i.gc, i64 12
  %i.gt = insertelement <16 x i8> %i.gs, i8 %i.gd, i64 13
  %i.gu = insertelement <16 x i8> %i.gt, i8 %i.ge, i64 14
  %i.gv = insertelement <16 x i8> %i.gu, i8 %i.gf, i64 15
  %i.gw = trunc nuw <16 x i8> %i.gv to <16 x i1>
  %i.gx = or <16 x i1> %vec.phi12, %i.gw          ; 2 uses
  %index.next13 = add nuw i64 %index11, 16        ; 2 uses
  %i.gy = icmp eq i64 %index.next13, %n.vec10
  br i1 %i.gy, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !541

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %i.gz = bitcast <16 x i1> %i.gx to i16
  %i.ha = icmp ne i16 %i.gz, 0                    ; 2 uses
  %cmp.n14 = icmp eq i64 %n.vec10, %wide.trip.count
  br i1 %cmp.n14, label %._crit_edge, label %vec.epilog.scalar.ph.preheader

vec.epilog.scalar.ph.preheader:                   ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %indvars.iv.ph = phi i64 [ 0, %iter.check ], [ %n.vec, %vec.epilog.iter.check ], [ %n.vec10, %vec.epilog.middle.block ]
  %.056.ph = phi i1 [ false, %iter.check ], [ %i.ej, %vec.epilog.iter.check ], [ %i.ha, %vec.epilog.middle.block ]
  br label %vec.epilog.scalar.ph

._crit_edge:                                      ; preds = %vec.epilog.scalar.ph, %middle.block, %vec.epilog.middle.block, %bb.a
  %.05.lcssa = phi i1 [ false, %bb.a ], [ %i.ha, %vec.epilog.middle.block ], [ %i.ej, %middle.block ], [ %i.he, %vec.epilog.scalar.ph ]
  ret i1 %.05.lcssa

vec.epilog.scalar.ph:                             ; preds = %vec.epilog.scalar.ph.preheader, %vec.epilog.scalar.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %vec.epilog.scalar.ph ], [ %indvars.iv.ph, %vec.epilog.scalar.ph.preheader ] ; 2 uses
  %.056 = phi i1 [ %i.he, %vec.epilog.scalar.ph ], [ %.056.ph, %vec.epilog.scalar.ph.preheader ]
  %i.hb = getelementptr inbounds nuw [12440 x i8], ptr %i.e, i64 %indvars.iv
  %i.hc = load i8, ptr %i.hb, align 8, !tbaa !300, !range !200, !noundef !118
  %i.hd = trunc nuw i8 %i.hc to i1
  %i.he = or i1 %.056, %i.hd                      ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %vec.epilog.scalar.ph, !llvm.loop !542
}

; Function Attrs: mustprogress uwtable
define void @_ZNK14llama_kv_cache9find_slotERK12llama_ubatchb(ptr dead_on_unwind noalias nofree writable writeonly sret(%"struct.llama_kv_cache::slot_info") align 8 captures(none) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(352) %1, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(104) %2, i1 noundef zeroext %3) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 23 uses
  %5 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  %6 = alloca %"class.std::__cxx11::basic_string", align 8 ; 15 uses
  %7 = alloca %"class.std::__cxx11::basic_string", align 8 ; 18 uses
  %8 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  %9 = alloca %"struct.llama_kv_cache::slot_info", align 8 ; 14 uses
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 112 ; 3 uses
  %i.b = load i32, ptr %i.a, align 8, !tbaa !274
  %i.c = icmp sgt i32 %i.b, 0
  br i1 %i.c, label %.preheader322, label %.loopexit323

.preheader322:                                    ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.e = load i32, ptr %i.d, align 8, !tbaa !558
  %.not420 = icmp eq i32 %i.e, 0
  br i1 %.not420, label %.loopexit323, label %.lr.ph402

.lr.ph402:                                        ; preds = %.preheader322
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 64
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 200
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 192
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 144
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 3 uses
  %i.k = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 13 uses
  %i.l = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 9 uses
  %i.m = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 5 uses
  %i.n = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.o = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 9 uses
  %i.p = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 5 uses
  %i.q = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 10 uses
  %i.r = getelementptr inbounds nuw i8, ptr %7, i64 8 ; 8 uses
  %i.s = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 7 uses
  %i.t = getelementptr inbounds nuw i8, ptr %8, i64 8 ; 5 uses
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph402, %bb.bi
  %indvars.iv462 = phi i64 [ 0, %.lr.ph402 ], [ %indvars.iv.next463, %bb.bi ] ; 2 uses
  %i.u = load ptr, ptr %i.f, align 8, !tbaa !356
  %i.v = getelementptr inbounds nuw [4 x i8], ptr %i.u, i64 %indvars.iv462
  %i.w = load i32, ptr %i.v, align 4, !tbaa !110
  %i.x = sext i32 %i.w to i64
  %i.y = load ptr, ptr %i.g, align 8, !tbaa !120  ; 2 uses
  %i.z = getelementptr inbounds nuw [4 x i8], ptr %i.y, i64 %i.x
  %i.aa = load i32, ptr %i.z, align 4, !tbaa !110 ; 3 uses
  %i.ab = load ptr, ptr %i.h, align 8, !tbaa !117, !nonnull !118, !align !119
  %i.ac = zext i32 %i.aa to i64                   ; 2 uses
  %i.ad = load ptr, ptr %i.ab, align 8, !tbaa !123 ; 2 uses
  %i.ae = getelementptr inbounds nuw [12440 x i8], ptr %i.ad, i64 %i.ac ; 6 uses
  %i.af = load ptr, ptr %i.i, align 8, !tbaa !120
  %i.ag = getelementptr inbounds nuw [4 x i8], ptr %i.af, i64 %i.ac
  %i.ah = load i32, ptr %i.ag, align 4, !tbaa !110
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ae, i64 48
  %i.aj = load i64, ptr %i.ai, align 8, !tbaa !151 ; 2 uses
  %i.ak = icmp eq i64 %i.aj, 0
  br i1 %i.ak, label %_ZNK14llama_kv_cells11used_max_p1Ev.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.al = getelementptr inbounds nuw i8, ptr %i.ae, i64 16
  %i.am = call noundef ptr @_ZSt18_Rb_tree_decrementPKSt18_Rb_tree_node_base(ptr noundef nonnull %i.al) #32
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 32
  %i.ao = load i32, ptr %i.an, align 4, !tbaa !110
  %i.ap = add i32 %i.ao, 1
  br label %_ZNK14llama_kv_cells11used_max_p1Ev.exit

_ZNK14llama_kv_cells11used_max_p1Ev.exit:         ; preds = %bb.b, %bb.c
  %i.aq = phi i32 [ %i.ap, %bb.c ], [ 0, %bb.b ]
  %i.ar = trunc i64 %i.aj to i32
  %i.as = load i32, ptr %i.y, align 4, !tbaa !110
  %i.at = zext i32 %i.as to i64
  %i.au = getelementptr inbounds nuw [12440 x i8], ptr %i.ad, i64 %i.at ; 2 uses
  %i.av = getelementptr inbounds nuw i8, ptr %i.au, i64 56
  %i.aw = getelementptr inbounds nuw i8, ptr %i.au, i64 64
  %i.ax = load ptr, ptr %i.aw, align 8, !tbaa !125
  %i.ay = load ptr, ptr %i.av, align 8, !tbaa !126
  %i.az = ptrtoint ptr %i.ax to i64
  %i.ba = ptrtoint ptr %i.ay to i64
  %i.bb = sub i64 %i.az, %i.ba
  %i.bc = lshr exact i64 %i.bb, 2
  %i.bd = trunc i64 %i.bc to i32
  %i.be = load i32, ptr %i.j, align 8, !tbaa !99
  call void (i32, ptr, ...) @_Z18llama_log_internal14ggml_log_levelPKcz(i32 noundef 1, ptr noundef nonnull @.str.41, ptr noundef nonnull @__func__._ZNK14llama_kv_cache9find_slotERK12llama_ubatchb, i32 noundef %i.aa, i32 noundef %i.aq, i32 noundef %i.ar, i32 noundef %i.ah, i32 noundef %i.bd, i32 noundef %i.be)
  %i.bf = load i32, ptr %i.a, align 8, !tbaa !274 ; 2 uses
  %i.bg = icmp eq i32 %i.bf, 2
  br i1 %i.bg, label %bb.d, label %bb.e

bb.d:                                             ; preds = %_ZNK14llama_kv_cells11used_max_p1Ev.exit
  %i.bh = load i32, ptr %i.j, align 8, !tbaa !99
  %.not164 = icmp eq i32 %i.bh, 0
  br i1 %.not164, label %.thread293, label %bb.f

bb.e:                                             ; preds = %_ZNK14llama_kv_cells11used_max_p1Ev.exit
  %i.bi = icmp sgt i32 %i.bf, 2
  br i1 %i.bi, label %bb.f, label %.thread293

bb.f:                                             ; preds = %bb.e, %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #30
  store ptr %i.k, ptr %4, align 8, !tbaa !559
  store i64 0, ptr %i.l, align 8, !tbaa !560
  store i8 0, ptr %i.k, align 8, !tbaa !109
  %i.bj = getelementptr inbounds nuw i8, ptr %i.ae, i64 56 ; 6 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %i.ae, i64 64 ; 4 uses
  %i.bl = load ptr, ptr %i.bk, align 8, !tbaa !125
  %i.bm = load ptr, ptr %i.bj, align 8, !tbaa !126 ; 2 uses
  %i.bn = ptrtoint ptr %i.bl to i64
  %i.bo = ptrtoint ptr %i.bm to i64
  %i.bp = sub i64 %i.bn, %i.bo
  %i.bq = and i64 %i.bp, 17179869180
  %.not421 = icmp eq i64 %i.bq, 0
  br i1 %.not421, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.f
  %i.br = getelementptr inbounds nuw i8, ptr %i.ae, i64 128 ; 2 uses
  br label %bb.g

._crit_edge.loopexit:                             ; preds = %bb.ad
  %.pre = load ptr, ptr %4, align 8, !tbaa !561
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %bb.f
  %i.bs = phi ptr [ %.pre, %._crit_edge.loopexit ], [ %i.k, %bb.f ]
  invoke void (i32, ptr, ...) @_Z18llama_log_internal14ggml_log_levelPKcz(i32 noundef 1, ptr noundef nonnull @.str.43, ptr noundef %i.bs)
          to label %bb.ae unwind label %.loopexit.split-lp314.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.loopexit.split-lp314.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %bb.ac, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i, %bb.y, %bb.i, %._crit_edge, %bb.ab
  %lpad.loopexit.split-lp644 = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp314

bb.g:                                             ; preds = %.lr.ph, %bb.ad
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.ad ] ; 5 uses
  %i.bt = phi ptr [ %i.bm, %.lr.ph ], [ %i.go, %bb.ad ]
  %i.bu = getelementptr inbounds nuw [4 x i8], ptr %i.bt, i64 %indvars.iv
  %i.bv = load i32, ptr %i.bu, align 4, !tbaa !110
  %i.bw = icmp eq i32 %i.bv, -1
  br i1 %i.bw, label %bb.h, label %bb.j

bb.h:                                             ; preds = %bb.g
  %i.bx = load i64, ptr %i.l, align 8, !tbaa !560 ; 4 uses
  %i.by = add i64 %i.bx, 1                        ; 3 uses
  %i.bz = load ptr, ptr %4, align 8, !tbaa !561   ; 2 uses
  %i.ca = icmp eq ptr %i.bz, %i.k
  br i1 %i.ca, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i: ; preds = %bb.h
  %i.cb = icmp ult i64 %i.bx, 16
  call void @llvm.assume(i1 %i.cb)
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i

end_hunk_0

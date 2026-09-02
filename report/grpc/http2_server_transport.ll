Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/grpc/original/http2_server_transport?download=true
inline.NumInlined: 18827
inline.NumDeleted: 9060
loop-unroll.NumCompletelyUnrolled: 32
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 34
begin_hunk_0_@_ZNK9grpc_core14promise_detail8SeqStateINS0_12TrySeqTraitsENS_5SleepEJZNS_22SettingsPromiseManager22WaitForSettingsTimeoutEvEUlvE0_EE7ToProtoE40grpc_channelz_v2_Promise_CompositionKindP24grpc_channelz_v2_PromiseP9upb_Arena:bb.a
  %i.ag = icmp ult i64 %i.af, %i.y
  br i1 %i.ag, label %upb_Arena_Malloc.exit.i.i23, label %upb_Arena_Malloc.exit.thread.i.i21, !prof !166

upb_Arena_Malloc.exit.thread.i.i21:               ; preds = %grpc_channelz_v2_Promise_mutable_seq_promise.exit
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ac, i64 %i.y
  store ptr %i.ah, ptr %3, align 8, !tbaa !1055
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.ac) ]
  br label %bb.c

upb_Arena_Malloc.exit.i.i23:                      ; preds = %grpc_channelz_v2_Promise_mutable_seq_promise.exit
  %i.ai = call ptr @_upb_Arena_SlowMalloc_dont_copy_me__upb_internal_use_only(ptr noundef nonnull %3, i64 noundef %i.y) ; 2 uses
  %.not.i.i24 = icmp eq ptr %i.ai, null
  br i1 %.not.i.i24, label %grpc_channelz_v2_Promise_SeqStep_new.exit, label %bb.c, !prof !1056

bb.c:                                             ; preds = %upb_Arena_Malloc.exit.i.i23, %upb_Arena_Malloc.exit.thread.i.i21
  %.0.i11.i.i22 = phi ptr [ %i.ac, %upb_Arena_Malloc.exit.thread.i.i21 ], [ %i.ai, %upb_Arena_Malloc.exit.i.i23 ] ; 2 uses
  call void @llvm.memset.p0.i64(ptr nonnull align 8 %.0.i11.i.i22, i8 0, i64 %i.y, i1 false)
  br label %grpc_channelz_v2_Promise_SeqStep_new.exit

grpc_channelz_v2_Promise_SeqStep_new.exit:        ; preds = %upb_Arena_Malloc.exit.i.i23, %bb.c
  %.0.i.i = phi ptr [ %.0.i11.i.i22, %bb.c ], [ null, %upb_Arena_Malloc.exit.i.i23 ]
  store ptr %.0.i.i, ptr %i.v, align 8, !tbaa !1364
  %i.aj = load i16, ptr getelementptr inbounds nuw (i8, ptr @grpc__channelz__v2__Promise__SeqStep_msg_init, i64 8), align 8, !tbaa !1052
  %i.ak = zext i16 %i.aj to i64                   ; 5 uses
  %i.al = and i64 %i.ak, 7
  %i.am = icmp eq i64 %i.al, 0
  call void @llvm.assume(i1 %i.am)
  %i.an = load ptr, ptr %i.w, align 8, !tbaa !1054
  %i.ao = load ptr, ptr %3, align 8, !tbaa !1055  ; 4 uses
  %i.ap = ptrtoint ptr %i.an to i64
  %i.aq = ptrtoint ptr %i.ao to i64
  %i.ar = sub i64 %i.ap, %i.aq
  %i.as = icmp ult i64 %i.ar, %i.ak
  br i1 %i.as, label %upb_Arena_Malloc.exit.i.i23.1, label %upb_Arena_Malloc.exit.thread.i.i21.1, !prof !166

upb_Arena_Malloc.exit.thread.i.i21.1:             ; preds = %grpc_channelz_v2_Promise_SeqStep_new.exit
  %i.at = getelementptr inbounds nuw i8, ptr %i.ao, i64 %i.ak
  store ptr %i.at, ptr %3, align 8, !tbaa !1055
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.ao) ]
  br label %bb.d

upb_Arena_Malloc.exit.i.i23.1:                    ; preds = %grpc_channelz_v2_Promise_SeqStep_new.exit
  %i.au = call ptr @_upb_Arena_SlowMalloc_dont_copy_me__upb_internal_use_only(ptr noundef nonnull %3, i64 noundef %i.ak) ; 2 uses
  %.not.i.i24.1 = icmp eq ptr %i.au, null
  br i1 %.not.i.i24.1, label %grpc_channelz_v2_Promise_SeqStep_new.exit.1, label %bb.d, !prof !1056

bb.d:                                             ; preds = %upb_Arena_Malloc.exit.i.i23.1, %upb_Arena_Malloc.exit.thread.i.i21.1
  %.0.i11.i.i22.1 = phi ptr [ %i.ao, %upb_Arena_Malloc.exit.thread.i.i21.1 ], [ %i.au, %upb_Arena_Malloc.exit.i.i23.1 ] ; 2 uses
  call void @llvm.memset.p0.i64(ptr nonnull align 8 %.0.i11.i.i22.1, i8 0, i64 %i.ak, i1 false)
  br label %grpc_channelz_v2_Promise_SeqStep_new.exit.1

grpc_channelz_v2_Promise_SeqStep_new.exit.1:      ; preds = %bb.d, %upb_Arena_Malloc.exit.i.i23.1
  %.0.i.i.1 = phi ptr [ %.0.i11.i.i22.1, %bb.d ], [ null, %upb_Arena_Malloc.exit.i.i23.1 ]
  %i.av = getelementptr inbounds nuw i8, ptr %i.v, i64 8 ; 3 uses
  store ptr %.0.i.i.1, ptr %i.av, align 8, !tbaa !1364
  %i.aw = load ptr, ptr %i.v, align 8, !tbaa !1364 ; 2 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %i.aw, i64 16
  store ptr getelementptr inbounds nuw (i8, ptr @.str.342, i64 45), ptr %i.ax, align 1
  %.sroa.56.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.aw, i64 24
  store i64 16, ptr %.sroa.56.0..sroa_idx.i, align 1
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.az = load i8, ptr %i.ay, align 8, !tbaa !753
  %i.ba = icmp eq i8 %i.az, 0
  br i1 %i.ba, label %bb.e, label %bb.h

bb.e:                                             ; preds = %grpc_channelz_v2_Promise_SeqStep_new.exit.1
  %i.bb = load ptr, ptr %i.v, align 8, !tbaa !1364 ; 2 uses
  call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(ptr nonnull @grpc__channelz__v2__Promise_msg_init) #44, !srcloc !1075
  %i.bc = getelementptr inbounds nuw i8, ptr %i.bb, i64 32 ; 2 uses
  %i.bd = load i64, ptr %i.bc, align 1            ; 2 uses
  %i.be = inttoptr i64 %i.bd to ptr
  %i.bf = icmp eq i64 %i.bd, 0
  br i1 %i.bf, label %bb.f, label %grpc_channelz_v2_Promise_SeqStep_mutable_polling_promise.exit

bb.f:                                             ; preds = %bb.e
  %i.bg = load i16, ptr getelementptr inbounds nuw (i8, ptr @grpc__channelz__v2__Promise_msg_init, i64 8), align 8, !tbaa !1052
  %i.bh = zext i16 %i.bg to i64                   ; 5 uses
  %i.bi = and i64 %i.bh, 7
  %i.bj = icmp eq i64 %i.bi, 0
  call void @llvm.assume(i1 %i.bj)
  %i.bk = load ptr, ptr %i.w, align 8, !tbaa !1054
  %i.bl = load ptr, ptr %3, align 8, !tbaa !1055  ; 4 uses
  %i.bm = ptrtoint ptr %i.bk to i64
  %i.bn = ptrtoint ptr %i.bl to i64               ; 2 uses
  %i.bo = sub i64 %i.bm, %i.bn
  %i.bp = icmp ult i64 %i.bo, %i.bh
  br i1 %i.bp, label %upb_Arena_Malloc.exit.i.i29, label %upb_Arena_Malloc.exit.thread.i.i26, !prof !166

upb_Arena_Malloc.exit.thread.i.i26:               ; preds = %bb.f
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bl, i64 %i.bh
  store ptr %i.bq, ptr %3, align 8, !tbaa !1055
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.bl) ]
  br label %bb.g

upb_Arena_Malloc.exit.i.i29:                      ; preds = %bb.f
  %i.br = call ptr @_upb_Arena_SlowMalloc_dont_copy_me__upb_internal_use_only(ptr noundef nonnull %3, i64 noundef %i.bh) ; 3 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.br) ]
  %.pre.i32 = ptrtoint ptr %i.br to i64
  br label %bb.g

bb.g:                                             ; preds = %upb_Arena_Malloc.exit.i.i29, %upb_Arena_Malloc.exit.thread.i.i26
  %.pre-phi.i27 = phi i64 [ %.pre.i32, %upb_Arena_Malloc.exit.i.i29 ], [ %i.bn, %upb_Arena_Malloc.exit.thread.i.i26 ]
  %.0.i11.i.i28 = phi ptr [ %i.br, %upb_Arena_Malloc.exit.i.i29 ], [ %i.bl, %upb_Arena_Malloc.exit.thread.i.i26 ] ; 2 uses
  call void @llvm.memset.p0.i64(ptr nonnull align 8 %.0.i11.i.i28, i8 0, i64 %i.bh, i1 false)
  call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(ptr nonnull @grpc__channelz__v2__Promise_msg_init) #44, !srcloc !1075
  %i.bs = getelementptr inbounds nuw i8, ptr %i.bb, i64 8 ; 2 uses
  %i.bt = load i8, ptr %i.bs, align 1, !tbaa !156
  %i.bu = or i8 %i.bt, 1
  store i8 %i.bu, ptr %i.bs, align 1, !tbaa !156
  store i64 %.pre-phi.i27, ptr %i.bc, align 1
  br label %grpc_channelz_v2_Promise_SeqStep_mutable_polling_promise.exit

grpc_channelz_v2_Promise_SeqStep_mutable_polling_promise.exit: ; preds = %bb.e, %bb.g
  %.0.i25 = phi ptr [ %.0.i11.i.i28, %bb.g ], [ %i.be, %bb.e ] ; 3 uses
  %i.bv = getelementptr inbounds nuw i8, ptr %.0.i25, i64 8
  store i32 2, ptr %i.bv, align 4, !tbaa !165
  %i.bw = getelementptr inbounds nuw i8, ptr %.0.i25, i64 16
  store ptr getelementptr inbounds nuw (i8, ptr @.str.342, i64 45), ptr %i.bw, align 4
  %.sroa.56.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %.0.i25, i64 24
  store i64 16, ptr %.sroa.56.0..sroa_idx.i.i.i.i, align 4
  br label %bb.h

bb.h:                                             ; preds = %grpc_channelz_v2_Promise_SeqStep_mutable_polling_promise.exit, %grpc_channelz_v2_Promise_SeqStep_new.exit.1
  %i.bx = load ptr, ptr %i.av, align 8, !tbaa !1364 ; 2 uses
  %i.by = getelementptr inbounds nuw i8, ptr %i.bx, i64 16
  store ptr getelementptr inbounds nuw (i8, ptr @.str.343, i64 45), ptr %i.by, align 1
  %.sroa.56.0..sroa_idx.i35 = getelementptr inbounds nuw i8, ptr %i.bx, i64 24
  store i64 110, ptr %.sroa.56.0..sroa_idx.i35, align 1
  %i.bz = load i8, ptr %i.ay, align 8, !tbaa !753
  %i.ca = icmp eq i8 %i.bz, 1
  br i1 %i.ca, label %bb.i, label %bb.l

bb.i:                                             ; preds = %bb.h
  %i.cb = load ptr, ptr %i.av, align 8, !tbaa !1364 ; 2 uses
  call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(ptr nonnull @grpc__channelz__v2__Promise_msg_init) #44, !srcloc !1075
  %i.cc = getelementptr inbounds nuw i8, ptr %i.cb, i64 32 ; 2 uses
  %i.cd = load i64, ptr %i.cc, align 1            ; 2 uses
  %i.ce = inttoptr i64 %i.cd to ptr
  %i.cf = icmp eq i64 %i.cd, 0
  br i1 %i.cf, label %bb.j, label %grpc_channelz_v2_Promise_SeqStep_mutable_polling_promise.exit44

bb.j:                                             ; preds = %bb.i
  %i.cg = load i16, ptr getelementptr inbounds nuw (i8, ptr @grpc__channelz__v2__Promise_msg_init, i64 8), align 8, !tbaa !1052
  %i.ch = zext i16 %i.cg to i64                   ; 5 uses
  %i.ci = and i64 %i.ch, 7
  %i.cj = icmp eq i64 %i.ci, 0
  call void @llvm.assume(i1 %i.cj)
  %i.ck = load ptr, ptr %i.w, align 8, !tbaa !1054
  %i.cl = load ptr, ptr %3, align 8, !tbaa !1055  ; 4 uses
  %i.cm = ptrtoint ptr %i.ck to i64
  %i.cn = ptrtoint ptr %i.cl to i64               ; 2 uses
  %i.co = sub i64 %i.cm, %i.cn
  %i.cp = icmp ult i64 %i.co, %i.ch
  br i1 %i.cp, label %upb_Arena_Malloc.exit.i.i40, label %upb_Arena_Malloc.exit.thread.i.i37, !prof !166

upb_Arena_Malloc.exit.thread.i.i37:               ; preds = %bb.j
  %i.cq = getelementptr inbounds nuw i8, ptr %i.cl, i64 %i.ch
  store ptr %i.cq, ptr %3, align 8, !tbaa !1055
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.cl) ]
  br label %bb.k

upb_Arena_Malloc.exit.i.i40:                      ; preds = %bb.j
  %i.cr = call ptr @_upb_Arena_SlowMalloc_dont_copy_me__upb_internal_use_only(ptr noundef nonnull %3, i64 noundef %i.ch) ; 3 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.cr) ]
  %.pre.i43 = ptrtoint ptr %i.cr to i64
  br label %bb.k

bb.k:                                             ; preds = %upb_Arena_Malloc.exit.i.i40, %upb_Arena_Malloc.exit.thread.i.i37
  %.pre-phi.i38 = phi i64 [ %.pre.i43, %upb_Arena_Malloc.exit.i.i40 ], [ %i.cn, %upb_Arena_Malloc.exit.thread.i.i37 ]
  %.0.i11.i.i39 = phi ptr [ %i.cr, %upb_Arena_Malloc.exit.i.i40 ], [ %i.cl, %upb_Arena_Malloc.exit.thread.i.i37 ] ; 2 uses
  call void @llvm.memset.p0.i64(ptr nonnull align 8 %.0.i11.i.i39, i8 0, i64 %i.ch, i1 false)
  call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(ptr nonnull @grpc__channelz__v2__Promise_msg_init) #44, !srcloc !1075
  %i.cs = getelementptr inbounds nuw i8, ptr %i.cb, i64 8 ; 2 uses
  %i.ct = load i8, ptr %i.cs, align 1, !tbaa !156
  %i.cu = or i8 %i.ct, 1
  store i8 %i.cu, ptr %i.cs, align 1, !tbaa !156
  store i64 %.pre-phi.i38, ptr %i.cc, align 1
  br label %grpc_channelz_v2_Promise_SeqStep_mutable_polling_promise.exit44

grpc_channelz_v2_Promise_SeqStep_mutable_polling_promise.exit44: ; preds = %bb.i, %bb.k
  %.0.i36 = phi ptr [ %.0.i11.i.i39, %bb.k ], [ %i.ce, %bb.i ] ; 3 uses
  %i.cv = getelementptr inbounds nuw i8, ptr %.0.i36, i64 8
  store i32 2, ptr %i.cv, align 4, !tbaa !165
  %i.cw = getelementptr inbounds nuw i8, ptr %.0.i36, i64 16
  store ptr getelementptr inbounds nuw (i8, ptr @.str.91, i64 45), ptr %i.cw, align 4
  %.sroa.56.0..sroa_idx.i.i.i.i45 = getelementptr inbounds nuw i8, ptr %.0.i36, i64 24
  store i64 90, ptr %.sroa.56.0..sroa_idx.i.i.i.i45, align 4
  br label %bb.l

bb.l:                                             ; preds = %grpc_channelz_v2_Promise_SeqStep_mutable_polling_promise.exit44, %bb.h
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyIjN9grpc_core13RefCountedPtrINS4_5http26StreamEEEEENS0_13hash_internal4HashIjEESt8equal_toIjESaISt4pairIKjS8_EEE19transfer_n_slots_fnEPvSK_SK_m(ptr noundef %0, ptr noundef %1, ptr noundef %2, i64 noundef %3) #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %.not11 = icmp eq i64 %3, 0
  br i1 %.not11, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.a
  %xtraiter = and i64 %3, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.prol.loopexit, label %.lr.ph.prol

.lr.ph.prol:                                      ; preds = %.lr.ph.preheader
  %i.a = load i32, ptr %2, align 8, !tbaa !774
  store i32 %i.a, ptr %1, align 8, !tbaa !774
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  store ptr null, ptr %i.b, align 8, !tbaa !414
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !414
  store ptr %i.d, ptr %i.b, align 8, !tbaa !414
  store ptr null, ptr %i.c, align 8, !tbaa !414
  %i.e = add nsw i64 %3, -1
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 16
  br label %.lr.ph.prol.loopexit

.lr.ph.prol.loopexit:                             ; preds = %.lr.ph.prol, %.lr.ph.preheader
  %.014.unr = phi ptr [ %1, %.lr.ph.preheader ], [ %i.g, %.lr.ph.prol ]
  %.0913.unr = phi ptr [ %2, %.lr.ph.preheader ], [ %i.f, %.lr.ph.prol ]
  %.01012.unr = phi i64 [ %3, %.lr.ph.preheader ], [ %i.e, %.lr.ph.prol ]
  %i.h = icmp eq i64 %3, 1
  br i1 %i.h, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.prol.loopexit, %.lr.ph
  %.014 = phi ptr [ %i.u, %.lr.ph ], [ %.014.unr, %.lr.ph.prol.loopexit ] ; 5 uses
  %.0913 = phi ptr [ %i.t, %.lr.ph ], [ %.0913.unr, %.lr.ph.prol.loopexit ] ; 5 uses
  %.01012 = phi i64 [ %i.s, %.lr.ph ], [ %.01012.unr, %.lr.ph.prol.loopexit ]
  %i.i = load i32, ptr %.0913, align 8, !tbaa !774
  store i32 %i.i, ptr %.014, align 8, !tbaa !774
  %i.j = getelementptr inbounds nuw i8, ptr %.014, i64 8 ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %.0913, i64 8 ; 2 uses
  store ptr null, ptr %i.j, align 8, !tbaa !414
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !414
  store ptr %i.l, ptr %i.j, align 8, !tbaa !414
  store ptr null, ptr %i.k, align 8, !tbaa !414
  %i.m = getelementptr inbounds nuw i8, ptr %.0913, i64 16
  %i.n = getelementptr inbounds nuw i8, ptr %.014, i64 16
  %i.o = load i32, ptr %i.m, align 8, !tbaa !774
  store i32 %i.o, ptr %i.n, align 8, !tbaa !774
  %i.p = getelementptr inbounds nuw i8, ptr %.014, i64 24 ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %.0913, i64 24 ; 2 uses
  store ptr null, ptr %i.p, align 8, !tbaa !414
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !414
  store ptr %i.r, ptr %i.p, align 8, !tbaa !414
  store ptr null, ptr %i.q, align 8, !tbaa !414
  %i.s = add i64 %.01012, -2                      ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %.0913, i64 32
  %i.u = getelementptr inbounds nuw i8, ptr %.014, i64 32
  %.not.1 = icmp eq i64 %i.s, 0
  br i1 %.not.1, label %._crit_edge, label %.lr.ph, !llvm.loop !3412

._crit_edge:                                      ; preds = %.lr.ph.prol.loopexit, %.lr.ph, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyIjN9grpc_core13RefCountedPtrINS4_5http26StreamEEEEENS0_13hash_internal4HashIjEESt8equal_toIjESaISt4pairIKjS8_EEE46transfer_unprobed_elements_to_next_capacity_fnERNS1_12CommonFieldsEPKNS1_6ctrl_tEPvSP_PFvSP_hmmE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4) #10 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load i64, ptr %0, align 8, !tbaa !422    ; 4 uses
  %i.b = lshr i64 %i.a, 1                         ; 4 uses
  %i.c = and i64 %i.a, 30
  %i.d = icmp eq i64 %i.c, 30
  tail call void @llvm.assume(i1 %i.d)
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !156  ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 24
  %.sroa.0.0.copyload.i.i.i = load ptr, ptr %i.g, align 8, !tbaa !156
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.i = load i64, ptr %i.h, align 8, !tbaa !423
  %i.j = and i64 %i.i, 65535
  %i.k = and i64 %i.b, 9223372036854775792
  br label %bb.c

bb.b:                                             ; preds = %._crit_edge
  ret void

bb.c:                                             ; preds = %bb.a, %._crit_edge
  %.05162 = phi i64 [ 0, %bb.a ], [ %i.s, %._crit_edge ] ; 4 uses
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 %.05162
  %i.m = load <16 x i8>, ptr %i.l, align 1, !tbaa !156
  %i.n = getelementptr inbounds nuw i8, ptr %i.f, i64 %.05162 ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %i.n, i8 -128, i64 16, i1 false)
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 %i.b
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 1
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %i.p, i8 -128, i64 16, i1 false)
  %i.q = icmp sgt <16 x i8> %i.m, splat (i8 -1)
  %i.r = bitcast <16 x i1> %i.q to i16            ; 2 uses
  %.not60 = icmp eq i16 %i.r, 0
  br i1 %.not60, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %bb.i, %bb.c
  %i.s = add nuw i64 %.05162, 16                  ; 2 uses
  %i.t = icmp ult i64 %i.s, %i.b
  br i1 %i.t, label %bb.c, label %bb.b, !llvm.loop !3413

.lr.ph:                                           ; preds = %bb.c, %bb.i
  %.sroa.054.061 = phi i16 [ %i.bc, %bb.i ], [ %i.r, %bb.c ] ; 3 uses
  %i.u = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.sroa.054.061, i1 true)
  %i.v = zext nneg i16 %i.u to i64
  %i.w = or disjoint i64 %.05162, %i.v            ; 4 uses
  %i.x = getelementptr inbounds nuw [16 x i8], ptr %2, i64 %i.w ; 2 uses
  %i.y = load i32, ptr %i.x, align 4, !tbaa !165  ; 2 uses
  %i.z = zext i32 %i.y to i64
  %i.aa = xor i64 %i.z, ptrtoint (ptr @_ZN4absl12lts_2025051213hash_internal15MixingHashState5kSeedE to i64)
  %i.ab = mul i64 %i.aa, -2543921745674291987
  %i.ac = tail call noundef i64 @llvm.bswap.i64(i64 %i.ab) ; 2 uses
  %i.ad = lshr i64 %i.ac, 7
  %i.ae = xor i64 %i.ad, %i.j                     ; 5 uses
  %i.af = trunc i64 %i.ac to i8
  %i.ag = and i8 %i.af, 127                       ; 2 uses
  %i.ah = sub i64 %i.w, %i.ae                     ; 2 uses
  %i.ai = and i64 %i.k, %i.ah
  %i.aj = icmp eq i64 %i.ai, 0
  br i1 %i.aj, label %bb.d, label %bb.e, !prof !179

bb.d:                                             ; preds = %.lr.ph
  %i.ak = and i64 %i.ah, 15
  %i.al = add nuw nsw i64 %i.ak, %i.ae
  %i.am = and i64 %i.al, %i.a
  br label %_ZN4absl12lts_2025051218container_internal29TryFindNewIndexWithoutProbingIvEEmmmmPNS1_6ctrl_tEm.exit

bb.e:                                             ; preds = %.lr.ph
  %i.an = and i64 %i.ae, %i.b
  %.not.i = icmp ult i64 %i.an, %i.w
  br i1 %.not.i, label %bb.f, label %bb.h, !prof !179

bb.f:                                             ; preds = %bb.e
  %i.ao = and i64 %i.ae, %i.a                     ; 2 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %i.f, i64 %i.ao
  %i.aq = load <16 x i8>, ptr %i.ap, align 1, !tbaa !156
  %i.ar = icmp slt <16 x i8> %i.aq, zeroinitializer
  %i.as = bitcast <16 x i1> %i.ar to i16          ; 2 uses
  %.not26.i = icmp eq i16 %i.as, 0
  br i1 %.not26.i, label %bb.h, label %bb.g, !prof !166

bb.g:                                             ; preds = %bb.f
  %i.at = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %i.as, i1 true)
  %i.au = zext nneg i16 %i.at to i64
  %i.av = add nuw nsw i64 %i.ao, %i.au
  br label %_ZN4absl12lts_2025051218container_internal29TryFindNewIndexWithoutProbingIvEEmmmmPNS1_6ctrl_tEm.exit

bb.h:                                             ; preds = %bb.f, %bb.e
  tail call void %4(ptr noundef %3, i8 noundef zeroext %i.ag, i64 noundef %i.w, i64 noundef %i.ae)
  br label %bb.i

_ZN4absl12lts_2025051218container_internal29TryFindNewIndexWithoutProbingIvEEmmmmPNS1_6ctrl_tEm.exit: ; preds = %bb.g, %bb.d
  %.2.i = phi i64 [ %i.av, %bb.g ], [ %i.am, %bb.d ] ; 2 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %i.f, i64 %.2.i
  store i8 %i.ag, ptr %i.aw, align 1, !tbaa !734
  %i.ax = getelementptr inbounds nuw [16 x i8], ptr %.sroa.0.0.copyload.i.i.i, i64 %.2.i ; 2 uses
  store i32 %i.y, ptr %i.ax, align 8, !tbaa !774
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ax, i64 8 ; 2 uses
  %i.az = getelementptr inbounds nuw i8, ptr %i.x, i64 8 ; 2 uses
  store ptr null, ptr %i.ay, align 8, !tbaa !414
  %i.ba = load ptr, ptr %i.az, align 8, !tbaa !414
  store ptr %i.ba, ptr %i.ay, align 8, !tbaa !414
  store ptr null, ptr %i.az, align 8, !tbaa !414
  br label %bb.i

bb.i:                                             ; preds = %_ZN4absl12lts_2025051218container_internal29TryFindNewIndexWithoutProbingIvEEmmmmPNS1_6ctrl_tEm.exit, %bb.h
  %i.bb = add i16 %.sroa.054.061, -1
  %i.bc = and i16 %i.bb, %.sroa.054.061           ; 2 uses
  %.not = icmp eq i16 %i.bc, 0
  br i1 %.not, label %._crit_edge, label %.lr.ph
}

; Function Attrs: nounwind uwtable
define linkonce_odr void @_ZN9grpc_core14filters_detail11NextMessageIXadL_ZNS_9CallState31FinishPullServerToClientMessageEvEEED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %0) unnamed_addr #29 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"class.absl::lts_20250512::log_internal::LogMessageFatal", align 8 ; 6 uses
  %2 = alloca %"class.grpc_core::dump_args_detail::DumpArgs", align 8 ; 7 uses
  %i.a = alloca i16, align 2                      ; 5 uses
  %i.b = alloca i16, align 2                      ; 5 uses
  %3 = alloca %"class.absl::lts_20250512::log_internal::LogMessageFatal", align 8 ; 6 uses
  %4 = alloca %"class.grpc_core::dump_args_detail::DumpArgs", align 8 ; 7 uses
  %i.c = alloca i16, align 2                      ; 5 uses
  %i.d = alloca i16, align 2                      ; 5 uses
  %5 = alloca %"class.absl::lts_20250512::log_internal::LogMessageFatal", align 8 ; 7 uses
  %6 = alloca %"class.grpc_core::dump_args_detail::DumpArgs", align 8 ; 7 uses
  %i.e = alloca i16, align 2                      ; 5 uses
  %i.f = alloca i16, align 2                      ; 5 uses
  %7 = alloca %"class.absl::lts_20250512::log_internal::LogMessageFatal", align 8 ; 6 uses
  %8 = alloca %"class.grpc_core::dump_args_detail::DumpArgs", align 8 ; 7 uses
  %i.g = alloca i16, align 2                      ; 5 uses
  %i.h = alloca i16, align 2                      ; 5 uses
  %9 = alloca %"class.absl::lts_20250512::log_internal::LogMessageFatal", align 8 ; 6 uses
  %10 = alloca %"class.grpc_core::dump_args_detail::DumpArgs", align 8 ; 7 uses
  %i.i = alloca i16, align 2                      ; 5 uses
  %i.j = alloca i16, align 2                      ; 5 uses
  %11 = alloca %"class.absl::lts_20250512::log_internal::LogMessageFatal", align 8 ; 6 uses
  %12 = alloca %"class.grpc_core::dump_args_detail::DumpArgs", align 8 ; 7 uses
  %i.k = alloca i16, align 2                      ; 5 uses
  %i.l = alloca i16, align 2                      ; 5 uses
  %i.m = load ptr, ptr %0, align 8, !tbaa !1367   ; 3 uses
  %switch = icmp ult ptr %i.m, inttoptr (i64 3 to ptr)
  br i1 %switch, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  invoke void @grpc_slice_buffer_destroy(ptr noundef nonnull align 8 dereferenceable(140) %i.m)
          to label %_ZN9grpc_core7MessageD2Ev.exit unwind label %bb.c

end_hunk_0

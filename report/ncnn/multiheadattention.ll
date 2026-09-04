Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ncnn/original/multiheadattention?download=true
inline.NumInlined: 35
inline.NumDeleted: 8
loop-unroll.NumRuntimeUnrolled: 17
loop-unroll.NumUnrolled: 17
begin_hunk_0_@_ZN4ncnn18MultiHeadAttention10load_modelERKNS_8ModelBinE:bb.a
  %.not.i136 = icmp eq ptr %i.zs, null
  br i1 %.not.i136, label %_ZN4ncnn3MatD2Ev.exit23, label %bb.hq

bb.hq:                                            ; preds = %bb.hp
  call void @free(ptr noundef nonnull %i.zs) #11
  br label %_ZN4ncnn3MatD2Ev.exit23

bb.hr:                                            ; preds = %bb.ho
  %i.zw = landingpad { ptr, i32 }
          catch ptr null
  %i.zx = extractvalue { ptr, i32 } %i.zw, 0
  call void @__clang_call_terminate(ptr %i.zx) #16
  unreachable

_ZN4ncnn3MatD2Ev.exit23:                          ; preds = %bb.hm, %_ZN4ncnn3MatD2Ev.exit24, %bb.ho, %bb.hp, %bb.hq
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #11
  br label %_ZNK4ncnn3Mat5emptyEv.exit254.thread

bb.hs:                                            ; preds = %bb.ga
  %i.zy = landingpad { ptr, i32 }
          cleanup
  %i.zz = load ptr, ptr %i.ua, align 8, !tbaa !18 ; 2 uses
  %.not.i119 = icmp eq ptr %i.zz, null
  br i1 %.not.i119, label %_ZN4ncnn3MatD2Ev.exit22, label %bb.ht

bb.ht:                                            ; preds = %bb.hs
  %i.aaa = atomicrmw add ptr %i.zz, i32 -1 acq_rel, align 4
  %i.aab = icmp eq i32 %i.aaa, 1
  br i1 %i.aab, label %bb.hu, label %_ZN4ncnn3MatD2Ev.exit22

bb.hu:                                            ; preds = %bb.ht
  %i.aac = getelementptr inbounds nuw i8, ptr %10, i64 32
  %i.aad = load ptr, ptr %i.aac, align 16, !tbaa !19 ; 3 uses
  %.not3.i120 = icmp eq ptr %i.aad, null
  %i.aae = load ptr, ptr %10, align 16, !tbaa !20 ; 3 uses
  br i1 %.not3.i120, label %bb.hw, label %bb.hv

bb.hv:                                            ; preds = %bb.hu
  %i.aaf = load ptr, ptr %i.aad, align 8, !tbaa !12
  %i.aag = getelementptr inbounds nuw i8, ptr %i.aaf, i64 24
  %i.aah = load ptr, ptr %i.aag, align 8
  invoke void %i.aah(ptr noundef nonnull align 8 dereferenceable(8) %i.aad, ptr noundef %i.aae)
          to label %_ZN4ncnn3MatD2Ev.exit22 unwind label %bb.hy, !inline_history !0

bb.hw:                                            ; preds = %bb.hu
  %.not.i134 = icmp eq ptr %i.aae, null
  br i1 %.not.i134, label %_ZN4ncnn3MatD2Ev.exit22, label %bb.hx

bb.hx:                                            ; preds = %bb.hw
  call void @free(ptr noundef nonnull %i.aae) #11
  br label %_ZN4ncnn3MatD2Ev.exit22

bb.hy:                                            ; preds = %bb.hv
  %i.aai = landingpad { ptr, i32 }
          catch ptr null
  %i.aaj = extractvalue { ptr, i32 } %i.aai, 0
  call void @__clang_call_terminate(ptr %i.aaj) #16
  unreachable

_ZN4ncnn3MatD2Ev.exit22:                          ; preds = %bb.ht, %bb.hs, %bb.hv, %bb.hw, %bb.hx
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #11
  br label %bb.in

bb.hz:                                            ; preds = %bb.go
  %i.aak = landingpad { ptr, i32 }
          cleanup
  %i.aal = load ptr, ptr %i.vv, align 8, !tbaa !18 ; 2 uses
  %.not.i123 = icmp eq ptr %i.aal, null
  br i1 %.not.i123, label %_ZN4ncnn3MatD2Ev.exit21, label %bb.ia

bb.ia:                                            ; preds = %bb.hz
  %i.aam = atomicrmw add ptr %i.aal, i32 -1 acq_rel, align 4
  %i.aan = icmp eq i32 %i.aam, 1
  br i1 %i.aan, label %bb.ib, label %_ZN4ncnn3MatD2Ev.exit21

bb.ib:                                            ; preds = %bb.ia
  %i.aao = getelementptr inbounds nuw i8, ptr %11, i64 32
  %i.aap = load ptr, ptr %i.aao, align 16, !tbaa !19 ; 3 uses
  %.not3.i124 = icmp eq ptr %i.aap, null
  %i.aaq = load ptr, ptr %11, align 16, !tbaa !20 ; 3 uses
  br i1 %.not3.i124, label %bb.id, label %bb.ic

bb.ic:                                            ; preds = %bb.ib
  %i.aar = load ptr, ptr %i.aap, align 8, !tbaa !12
  %i.aas = getelementptr inbounds nuw i8, ptr %i.aar, i64 24
  %i.aat = load ptr, ptr %i.aas, align 8
  invoke void %i.aat(ptr noundef nonnull align 8 dereferenceable(8) %i.aap, ptr noundef %i.aaq)
          to label %_ZN4ncnn3MatD2Ev.exit21 unwind label %bb.if, !inline_history !0

bb.id:                                            ; preds = %bb.ib
  %.not.i132 = icmp eq ptr %i.aaq, null
  br i1 %.not.i132, label %_ZN4ncnn3MatD2Ev.exit21, label %bb.ie

bb.ie:                                            ; preds = %bb.id
  call void @free(ptr noundef nonnull %i.aaq) #11
  br label %_ZN4ncnn3MatD2Ev.exit21

bb.if:                                            ; preds = %bb.ic
  %i.aau = landingpad { ptr, i32 }
          catch ptr null
  %i.aav = extractvalue { ptr, i32 } %i.aau, 0
  call void @__clang_call_terminate(ptr %i.aav) #16
  unreachable

_ZN4ncnn3MatD2Ev.exit21:                          ; preds = %bb.ia, %bb.hz, %bb.ic, %bb.id, %bb.ie
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #11
  br label %bb.in

bb.ig:                                            ; preds = %bb.hc
  %i.aaw = landingpad { ptr, i32 }
          cleanup
  %i.aax = load ptr, ptr %i.xq, align 8, !tbaa !18 ; 2 uses
  %.not.i127 = icmp eq ptr %i.aax, null
  br i1 %.not.i127, label %_ZN4ncnn3MatD2Ev.exit, label %bb.ih

bb.ih:                                            ; preds = %bb.ig
  %i.aay = atomicrmw add ptr %i.aax, i32 -1 acq_rel, align 4
  %i.aaz = icmp eq i32 %i.aay, 1
  br i1 %i.aaz, label %bb.ii, label %_ZN4ncnn3MatD2Ev.exit

bb.ii:                                            ; preds = %bb.ih
  %i.aba = getelementptr inbounds nuw i8, ptr %12, i64 32
  %i.abb = load ptr, ptr %i.aba, align 16, !tbaa !19 ; 3 uses
  %.not3.i128 = icmp eq ptr %i.abb, null
  %i.abc = load ptr, ptr %12, align 16, !tbaa !20 ; 3 uses
  br i1 %.not3.i128, label %bb.ik, label %bb.ij

bb.ij:                                            ; preds = %bb.ii
  %i.abd = load ptr, ptr %i.abb, align 8, !tbaa !12
  %i.abe = getelementptr inbounds nuw i8, ptr %i.abd, i64 24
  %i.abf = load ptr, ptr %i.abe, align 8
  invoke void %i.abf(ptr noundef nonnull align 8 dereferenceable(8) %i.abb, ptr noundef %i.abc)
          to label %_ZN4ncnn3MatD2Ev.exit unwind label %bb.im, !inline_history !0

bb.ik:                                            ; preds = %bb.ii
  %.not.i131 = icmp eq ptr %i.abc, null
  br i1 %.not.i131, label %_ZN4ncnn3MatD2Ev.exit, label %bb.il

bb.il:                                            ; preds = %bb.ik
  call void @free(ptr noundef nonnull %i.abc) #11
  br label %_ZN4ncnn3MatD2Ev.exit

bb.im:                                            ; preds = %bb.ij
  %i.abg = landingpad { ptr, i32 }
          catch ptr null
  %i.abh = extractvalue { ptr, i32 } %i.abg, 0
  call void @__clang_call_terminate(ptr %i.abh) #16
  unreachable

_ZN4ncnn3MatD2Ev.exit:                            ; preds = %bb.ih, %bb.ig, %bb.ij, %bb.ik, %bb.il
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #11
  br label %bb.in

_ZNK4ncnn3Mat5emptyEv.exit254.thread:             ; preds = %_ZN4ncnn3MatD2Ev.exit28, %_ZN4ncnn3MatD2Ev.exit30, %_ZN4ncnn3MatD2Ev.exit32, %_ZN4ncnn3MatD2Ev.exit34, %_ZN4ncnn3MatD2Ev.exit36, %_ZN4ncnn3MatD2Ev.exit38, %_ZN4ncnn3MatD2Ev.exit40, %_ZN4ncnn3MatD2Ev.exit42, %bb.fu, %_ZN4ncnn3MatD2Ev.exit23, %_ZNK4ncnn3Mat5emptyEv.exit, %_ZNK4ncnn3Mat5emptyEv.exit248, %_ZNK4ncnn3Mat5emptyEv.exit249, %_ZNK4ncnn3Mat5emptyEv.exit250, %_ZNK4ncnn3Mat5emptyEv.exit251, %_ZNK4ncnn3Mat5emptyEv.exit252, %_ZNK4ncnn3Mat5emptyEv.exit253, %_ZNK4ncnn3Mat5emptyEv.exit254
  %.019 = phi i32 [ -100, %_ZNK4ncnn3Mat5emptyEv.exit ], [ -100, %_ZNK4ncnn3Mat5emptyEv.exit254 ], [ -100, %_ZNK4ncnn3Mat5emptyEv.exit253 ], [ -100, %_ZNK4ncnn3Mat5emptyEv.exit252 ], [ -100, %_ZNK4ncnn3Mat5emptyEv.exit251 ], [ -100, %_ZNK4ncnn3Mat5emptyEv.exit250 ], [ -100, %_ZNK4ncnn3Mat5emptyEv.exit249 ], [ -100, %_ZNK4ncnn3Mat5emptyEv.exit248 ], [ 0, %_ZN4ncnn3MatD2Ev.exit23 ], [ 0, %bb.fu ], [ -100, %_ZN4ncnn3MatD2Ev.exit30 ], [ -100, %_ZN4ncnn3MatD2Ev.exit42 ], [ -100, %_ZN4ncnn3MatD2Ev.exit40 ], [ -100, %_ZN4ncnn3MatD2Ev.exit38 ], [ -100, %_ZN4ncnn3MatD2Ev.exit36 ], [ -100, %_ZN4ncnn3MatD2Ev.exit34 ], [ -100, %_ZN4ncnn3MatD2Ev.exit32 ], [ -100, %_ZN4ncnn3MatD2Ev.exit28 ]
  ret i32 %.019

bb.in:                                            ; preds = %_ZN4ncnn3MatD2Ev.exit, %_ZN4ncnn3MatD2Ev.exit21, %_ZN4ncnn3MatD2Ev.exit22, %_ZN4ncnn3MatD2Ev.exit27, %_ZN4ncnn3MatD2Ev.exit29, %_ZN4ncnn3MatD2Ev.exit31, %_ZN4ncnn3MatD2Ev.exit33, %_ZN4ncnn3MatD2Ev.exit35, %_ZN4ncnn3MatD2Ev.exit37, %_ZN4ncnn3MatD2Ev.exit39, %_ZN4ncnn3MatD2Ev.exit41
  %.pn = phi { ptr, i32 } [ %i.aaw, %_ZN4ncnn3MatD2Ev.exit ], [ %i.aak, %_ZN4ncnn3MatD2Ev.exit21 ], [ %i.zy, %_ZN4ncnn3MatD2Ev.exit22 ], [ %i.th, %_ZN4ncnn3MatD2Ev.exit27 ], [ %i.qu, %_ZN4ncnn3MatD2Ev.exit29 ], [ %i.of, %_ZN4ncnn3MatD2Ev.exit31 ], [ %i.lr, %_ZN4ncnn3MatD2Ev.exit33 ], [ %i.ja, %_ZN4ncnn3MatD2Ev.exit35 ], [ %i.gm, %_ZN4ncnn3MatD2Ev.exit37 ], [ %i.dv, %_ZN4ncnn3MatD2Ev.exit39 ], [ %i.bh, %_ZN4ncnn3MatD2Ev.exit41 ]
  resume { ptr, i32 } %.pn
}

declare noundef i32 @_ZN4ncnn5Layer15create_pipelineERKNS_6OptionE(ptr noundef nonnull align 8 dereferenceable(208), ptr noundef nonnull align 8 dereferenceable(64)) unnamed_addr #2

declare noundef i32 @_ZN4ncnn5Layer16destroy_pipelineERKNS_6OptionE(ptr noundef nonnull align 8 dereferenceable(208), ptr noundef nonnull align 8 dereferenceable(64)) unnamed_addr #2

; Function Attrs: mustprogress uwtable
define hidden noundef range(i32 -100, 1) i32 @_ZNK4ncnn18MultiHeadAttention7forwardERKSt6vectorINS_3MatESaIS2_EERS4_RKNS_6OptionE(ptr noundef nonnull align 8 dereferenceable(1044) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %1, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %2, ptr noundef nonnull align 8 dereferenceable(64) %3) unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"class.ncnn::Mat", align 16        ; 21 uses
  %5 = alloca %"class.ncnn::Mat", align 16        ; 32 uses
  %6 = alloca %"class.ncnn::Mat", align 16        ; 30 uses
  %i.a = alloca i32, align 4                      ; 13 uses
  %i.b = alloca i32, align 4                      ; 6 uses
  %i.c = alloca i32, align 4                      ; 11 uses
  %i.d = alloca i32, align 4                      ; 14 uses
  %i.e = alloca i32, align 4                      ; 6 uses
  %i.f = alloca i32, align 4                      ; 7 uses
  %7 = alloca %"class.ncnn::Mat", align 8         ; 14 uses
  %8 = alloca %"class.ncnn::Mat", align 16        ; 22 uses
  %9 = alloca %"class.ncnn::Mat", align 16        ; 22 uses
  %10 = alloca %"class.ncnn::Mat", align 8        ; 16 uses
  %11 = alloca %"class.ncnn::Mat", align 8        ; 14 uses
  %i.g = tail call i32 @__kmpc_global_thread_num(ptr nonnull @2) ; 10 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 240
  %i.i = load i32, ptr %i.h, align 8, !tbaa !46
  %.not = icmp eq i32 %i.i, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.j = tail call noundef i32 @_ZNK4ncnn18MultiHeadAttention12forward_int8ERKSt6vectorINS_3MatESaIS2_EERS4_RKNS_6OptionE(ptr noundef nonnull align 8 dereferenceable(1044) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef nonnull align 8 dereferenceable(64) %3)
  br label %bb.fz

bb.c:                                             ; preds = %bb.a
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !54
  %i.m = load ptr, ptr %1, align 8, !tbaa !55     ; 8 uses
  %i.n = ptrtoint ptr %i.l to i64
  %i.o = ptrtoint ptr %i.m to i64
  %i.p = sub i64 %i.n, %i.o
  %i.q = sdiv exact i64 %i.p, 72                  ; 7 uses
  %i.r = trunc i64 %i.q to i32                    ; 4 uses
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 236 ; 5 uses
  %i.t = load i32, ptr %i.s, align 4, !tbaa !45   ; 3 uses
  %.not.i222 = icmp eq i32 %i.t, 0
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 228 ; 2 uses
  %i.v = load i32, ptr %i.u, align 4, !tbaa !43
  %.not66.i = icmp eq i32 %i.v, 0                 ; 2 uses
  br i1 %.not.i222, label %bb.g, label %bb.d

bb.d:                                             ; preds = %bb.c
  br i1 %.not66.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %switch.tableidx = add i32 %i.r, -4             ; 3 uses
  %i.w = icmp ult i32 %switch.tableidx, 3
  br i1 %i.w, label %switch.lookup, label %bb.l

bb.f:                                             ; preds = %bb.d
  %switch.tableidx344 = add i32 %i.r, -3          ; 3 uses
  %i.x = icmp ult i32 %switch.tableidx344, 3
  br i1 %i.x, label %switch.lookup345, label %bb.n

bb.g:                                             ; preds = %bb.c
  br i1 %.not66.i, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %switch.tableidx351 = add i32 %i.r, -2          ; 3 uses
  %i.y = icmp ult i32 %switch.tableidx351, 3
  br i1 %i.y, label %switch.lookup352, label %bb.l

bb.i:                                             ; preds = %bb.g
  switch i32 %i.r, label %bb.n [
    i32 3, label %bb.k
    i32 2, label %bb.j
  ]

bb.j:                                             ; preds = %bb.i
  br label %bb.n

bb.k:                                             ; preds = %bb.i
  br label %bb.n

switch.lookup:                                    ; preds = %bb.e
  %i.z = zext nneg i32 %switch.tableidx to i64
  %switch.gep = getelementptr inbounds nuw i8, ptr @switch.table._ZNK4ncnn18MultiHeadAttention12forward_int8ERKSt6vectorINS_3MatESaIS2_EERS4_RKNS_6OptionE.5, i64 %i.z
  %switch.load = load i8, ptr %switch.gep, align 1
  %narrow = add nsw i64 %i.q, 4294967293
  %switch.offset = and i64 %narrow, 4294967295
  %narrow362 = add nsw i64 %i.q, 4294967294
  %switch.offset.a = and i64 %narrow362, 4294967295
  %narrow363 = add nsw i64 %i.q, 4294967295
  %switch.offset345 = and i64 %narrow363, 4294967295
  br label %bb.l

switch.lookup352:                                 ; preds = %bb.h
  %i.aa = zext nneg i32 %switch.tableidx351 to i64
  %switch.gep353 = getelementptr inbounds nuw i8, ptr @switch.table._ZNK4ncnn18MultiHeadAttention12forward_int8ERKSt6vectorINS_3MatESaIS2_EERS4_RKNS_6OptionE.5, i64 %i.aa
  %switch.load354 = load i8, ptr %switch.gep353, align 1
  %narrow358 = add nsw i64 %i.q, 4294967295
  %switch.offset357 = and i64 %narrow358, 4294967295
  br label %bb.l

bb.l:                                             ; preds = %switch.lookup352, %bb.h, %switch.lookup, %bb.e
  %.0237.ph.shrunk = phi i8 [ 0, %bb.h ], [ %switch.load, %switch.lookup ], [ 0, %bb.e ], [ %switch.load354, %switch.lookup352 ] ; 2 uses
  %.0236.ph = phi i32 [ 0, %bb.h ], [ %switch.tableidx, %switch.lookup ], [ 0, %bb.e ], [ %switch.tableidx351, %switch.lookup352 ] ; 3 uses
  %.0235.ph = phi i64 [ 0, %bb.h ], [ %switch.offset, %switch.lookup ], [ 0, %bb.e ], [ %switch.offset357, %switch.lookup352 ]
  %.0234.ph = phi i64 [ 0, %bb.h ], [ %switch.offset.a, %switch.lookup ], [ 0, %bb.e ], [ 0, %switch.lookup352 ] ; 2 uses
  %.0.ph = phi i64 [ 0, %bb.h ], [ %switch.offset345, %switch.lookup ], [ 0, %bb.e ], [ 0, %switch.lookup352 ] ; 2 uses
  %.0237.ph = zext i8 %.0237.ph.shrunk to i32     ; 2 uses
  %i.ab = zext i8 %.0237.ph.shrunk to i64
  %i.ac = getelementptr inbounds nuw [72 x i8], ptr %i.m, i64 %i.ab ; 2 uses
  %i.ad = zext nneg i32 %.0236.ph to i64
  %i.ae = getelementptr inbounds nuw [72 x i8], ptr %i.m, i64 %i.ad ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #11
  %i.af = getelementptr inbounds nuw [72 x i8], ptr %i.m, i64 %.0235.ph ; 8 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 8
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !18 ; 2 uses
  %i.ai = load <2 x ptr>, ptr %i.af, align 8, !tbaa !47
  store <2 x ptr> %i.ai, ptr %4, align 16, !tbaa !47
  %i.aj = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.ak = getelementptr inbounds nuw i8, ptr %i.af, i64 16
  %i.al = load i64, ptr %i.ak, align 8, !tbaa !48
  store i64 %i.al, ptr %i.aj, align 16, !tbaa !48
  %i.am = getelementptr inbounds nuw i8, ptr %4, i64 24
  %i.an = getelementptr inbounds nuw i8, ptr %i.af, i64 24
  %i.ao = load i32, ptr %i.an, align 8, !tbaa !49
  store i32 %i.ao, ptr %i.am, align 8, !tbaa !49
  %i.ap = getelementptr inbounds nuw i8, ptr %4, i64 32
  %i.aq = getelementptr inbounds nuw i8, ptr %i.af, i64 32
  %i.ar = load ptr, ptr %i.aq, align 8, !tbaa !19
  store ptr %i.ar, ptr %i.ap, align 16, !tbaa !19
  %i.as = getelementptr inbounds nuw i8, ptr %4, i64 40
  %i.at = getelementptr inbounds nuw i8, ptr %i.af, i64 40
  %i.au = load <4 x i32>, ptr %i.at, align 8, !tbaa !50
  store <4 x i32> %i.au, ptr %i.as, align 8, !tbaa !50
  %i.av = getelementptr inbounds nuw i8, ptr %4, i64 56
  %i.aw = getelementptr inbounds nuw i8, ptr %i.af, i64 56
  %i.ax = load i32, ptr %i.aw, align 8, !tbaa !51
  store i32 %i.ax, ptr %i.av, align 8, !tbaa !51
  %i.ay = getelementptr inbounds nuw i8, ptr %4, i64 64
  %i.az = getelementptr inbounds nuw i8, ptr %i.af, i64 64
  %i.ba = load i64, ptr %i.az, align 8, !tbaa !21
  store i64 %i.ba, ptr %i.ay, align 16, !tbaa !21
  %.not.i217 = icmp eq ptr %i.ah, null
  br i1 %.not.i217, label %_ZN4ncnn3Mat6addrefEv.exit, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.bb = atomicrmw add ptr %i.ah, i32 1 acq_rel, align 4 ; 0 uses
  %.pre = load i32, ptr %i.s, align 4, !tbaa !45
  br label %_ZN4ncnn3Mat6addrefEv.exit

switch.lookup345:                                 ; preds = %bb.f
  %i.bc = zext nneg i32 %switch.tableidx344 to i64
  %switch.gep346 = getelementptr inbounds nuw i8, ptr @switch.table._ZNK4ncnn18MultiHeadAttention12forward_int8ERKSt6vectorINS_3MatESaIS2_EERS4_RKNS_6OptionE.5, i64 %i.bc
  %switch.load347 = load i8, ptr %switch.gep346, align 1
  %switch.ext348 = zext i8 %switch.load347 to i32
  %narrow364 = add nsw i64 %i.q, 4294967294
  %switch.offset352 = and i64 %narrow364, 4294967295
  %narrow365 = add nsw i64 %i.q, 4294967295
  %switch.offset354 = and i64 %narrow365, 4294967295
  br label %bb.n

bb.n:                                             ; preds = %switch.lookup345, %bb.f, %bb.k, %bb.j, %bb.i
  %.0237 = phi i32 [ 0, %bb.i ], [ 0, %bb.f ], [ 1, %bb.j ], [ 1, %bb.k ], [ %switch.ext348, %switch.lookup345 ] ; 2 uses
  %.0236 = phi i32 [ 0, %bb.i ], [ 0, %bb.f ], [ 1, %bb.j ], [ 2, %bb.k ], [ %switch.tableidx344, %switch.lookup345 ] ; 2 uses
  %.0234 = phi i64 [ 0, %bb.i ], [ 0, %bb.f ], [ 0, %bb.j ], [ 0, %bb.k ], [ %switch.offset352, %switch.lookup345 ]
  %.0 = phi i64 [ 0, %bb.i ], [ 0, %bb.f ], [ 0, %bb.j ], [ 0, %bb.k ], [ %switch.offset354, %switch.lookup345 ]
  %i.bd = zext nneg i32 %.0237 to i64
  %i.be = getelementptr inbounds nuw [72 x i8], ptr %i.m, i64 %i.bd
  %i.bf = zext nneg i32 %.0236 to i64
  %i.bg = getelementptr inbounds nuw [72 x i8], ptr %i.m, i64 %i.bf
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #11
  %i.bh = getelementptr inbounds nuw i8, ptr %4, i64 32
  %i.bi = getelementptr inbounds nuw i8, ptr %4, i64 64
  store i64 0, ptr %i.bi, align 16, !tbaa !21
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(28) %4, i8 0, i64 28, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(28) %i.bh, i8 0, i64 28, i1 false)
  br label %_ZN4ncnn3Mat6addrefEv.exit

_ZN4ncnn3Mat6addrefEv.exit:                       ; preds = %bb.m, %bb.l, %bb.n
  %i.bj = phi i32 [ %i.t, %bb.n ], [ %i.t, %bb.l ], [ %.pre, %bb.m ]
  %i.bk = phi ptr [ %i.bg, %bb.n ], [ %i.ae, %bb.l ], [ %i.ae, %bb.m ]
  %i.bl = phi ptr [ %i.be, %bb.n ], [ %i.ac, %bb.l ], [ %i.ac, %bb.m ] ; 2 uses
  %.0251 = phi i64 [ %.0, %bb.n ], [ %.0.ph, %bb.l ], [ %.0.ph, %bb.m ]
  %.0234249 = phi i64 [ %.0234, %bb.n ], [ %.0234.ph, %bb.l ], [ %.0234.ph, %bb.m ]
  %.0236246 = phi i32 [ %.0236, %bb.n ], [ %.0236.ph, %bb.l ], [ %.0236.ph, %bb.m ]
  %.0237244 = phi i32 [ %.0237, %bb.n ], [ %.0237.ph, %bb.l ], [ %.0237.ph, %bb.m ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #11
  %.not64 = icmp eq i32 %i.bj, 0
  br i1 %.not64, label %_ZN4ncnn3Mat6addrefEv.exit219.thread, label %bb.o

bb.o:                                             ; preds = %_ZN4ncnn3Mat6addrefEv.exit
  %i.bm = load ptr, ptr %1, align 8, !tbaa !55
  %i.bn = getelementptr inbounds nuw [72 x i8], ptr %i.bm, i64 %.0234249 ; 8 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bn, i64 8
  %i.bp = load ptr, ptr %i.bo, align 8, !tbaa !18 ; 2 uses
  %i.bq = load <2 x ptr>, ptr %i.bn, align 8, !tbaa !47
  store <2 x ptr> %i.bq, ptr %5, align 16, !tbaa !47
  %i.br = getelementptr inbounds nuw i8, ptr %5, i64 16
  %i.bs = getelementptr inbounds nuw i8, ptr %i.bn, i64 16
  %i.bt = load i64, ptr %i.bs, align 8, !tbaa !48
  store i64 %i.bt, ptr %i.br, align 16, !tbaa !48
  %i.bu = getelementptr inbounds nuw i8, ptr %5, i64 24
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bn, i64 24
  %i.bw = load i32, ptr %i.bv, align 8, !tbaa !49
  store i32 %i.bw, ptr %i.bu, align 8, !tbaa !49
  %i.bx = getelementptr inbounds nuw i8, ptr %5, i64 32
  %i.by = getelementptr inbounds nuw i8, ptr %i.bn, i64 32
  %i.bz = load ptr, ptr %i.by, align 8, !tbaa !19
  store ptr %i.bz, ptr %i.bx, align 16, !tbaa !19
  %i.ca = getelementptr inbounds nuw i8, ptr %5, i64 40
  %i.cb = getelementptr inbounds nuw i8, ptr %i.bn, i64 40
  %i.cc = load <4 x i32>, ptr %i.cb, align 8, !tbaa !50
  store <4 x i32> %i.cc, ptr %i.ca, align 8, !tbaa !50
  %i.cd = getelementptr inbounds nuw i8, ptr %5, i64 56
  %i.ce = getelementptr inbounds nuw i8, ptr %i.bn, i64 56
  %i.cf = load i32, ptr %i.ce, align 8, !tbaa !51
  store i32 %i.cf, ptr %i.cd, align 8, !tbaa !51
  %i.cg = getelementptr inbounds nuw i8, ptr %5, i64 64
  %i.ch = getelementptr inbounds nuw i8, ptr %i.bn, i64 64
  %i.ci = load i64, ptr %i.ch, align 8, !tbaa !21
  store i64 %i.ci, ptr %i.cg, align 16, !tbaa !21
  %.not.i218 = icmp eq ptr %i.bp, null
  br i1 %.not.i218, label %_ZN4ncnn3Mat6addrefEv.exit219.thread336, label %_ZN4ncnn3Mat6addrefEv.exit219

_ZN4ncnn3Mat6addrefEv.exit219.thread336:          ; preds = %bb.o
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #11
  br label %bb.p

_ZN4ncnn3Mat6addrefEv.exit219.thread:             ; preds = %_ZN4ncnn3Mat6addrefEv.exit
  %i.cj = getelementptr inbounds nuw i8, ptr %5, i64 32
  %i.ck = getelementptr inbounds nuw i8, ptr %5, i64 64
  store i64 0, ptr %i.ck, align 16, !tbaa !21
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(28) %5, i8 0, i64 28, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(28) %i.cj, i8 0, i64 28, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #11
  br label %bb.r

_ZN4ncnn3Mat6addrefEv.exit219:                    ; preds = %bb.o
  %i.cl = atomicrmw add ptr %i.bp, i32 1 acq_rel, align 4 ; 0 uses
  %.pre256 = load i32, ptr %i.s, align 4, !tbaa !45
  %i.cm = icmp eq i32 %.pre256, 0
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #11
  br i1 %i.cm, label %bb.r, label %bb.p

bb.p:                                             ; preds = %_ZN4ncnn3Mat6addrefEv.exit219.thread336, %_ZN4ncnn3Mat6addrefEv.exit219
  %i.cn = load ptr, ptr %1, align 8, !tbaa !55
  %i.co = getelementptr inbounds nuw [72 x i8], ptr %i.cn, i64 %.0251 ; 8 uses
  %i.cp = getelementptr inbounds nuw i8, ptr %i.co, i64 8
  %i.cq = load ptr, ptr %i.cp, align 8, !tbaa !18 ; 2 uses
  %i.cr = load <2 x ptr>, ptr %i.co, align 8, !tbaa !47
  store <2 x ptr> %i.cr, ptr %6, align 16, !tbaa !47
  %i.cs = getelementptr inbounds nuw i8, ptr %6, i64 16
  %i.ct = getelementptr inbounds nuw i8, ptr %i.co, i64 16
  %i.cu = load i64, ptr %i.ct, align 8, !tbaa !48
  store i64 %i.cu, ptr %i.cs, align 16, !tbaa !48
  %i.cv = getelementptr inbounds nuw i8, ptr %6, i64 24
  %i.cw = getelementptr inbounds nuw i8, ptr %i.co, i64 24
  %i.cx = load i32, ptr %i.cw, align 8, !tbaa !49
  store i32 %i.cx, ptr %i.cv, align 8, !tbaa !49
  %i.cy = getelementptr inbounds nuw i8, ptr %6, i64 32
  %i.cz = getelementptr inbounds nuw i8, ptr %i.co, i64 32
  %i.da = load ptr, ptr %i.cz, align 8, !tbaa !19
  store ptr %i.da, ptr %i.cy, align 16, !tbaa !19
  %i.db = getelementptr inbounds nuw i8, ptr %6, i64 40
  %i.dc = getelementptr inbounds nuw i8, ptr %i.co, i64 40
  %i.dd = load <4 x i32>, ptr %i.dc, align 8, !tbaa !50
  store <4 x i32> %i.dd, ptr %i.db, align 8, !tbaa !50
  %i.de = getelementptr inbounds nuw i8, ptr %6, i64 56
  %i.df = getelementptr inbounds nuw i8, ptr %i.co, i64 56
  %i.dg = load i32, ptr %i.df, align 8, !tbaa !51
  store i32 %i.dg, ptr %i.de, align 8, !tbaa !51
  %i.dh = getelementptr inbounds nuw i8, ptr %6, i64 64
  %i.di = getelementptr inbounds nuw i8, ptr %i.co, i64 64
  %i.dj = load i64, ptr %i.di, align 8, !tbaa !21
  store i64 %i.dj, ptr %i.dh, align 16, !tbaa !21
  %.not.i220 = icmp eq ptr %i.cq, null
  br i1 %.not.i220, label %_ZN4ncnn3Mat6addrefEv.exit221, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.dk = atomicrmw add ptr %i.cq, i32 1 acq_rel, align 4 ; 0 uses
  %.pre257 = load i32, ptr %i.s, align 4, !tbaa !45
  %i.dl = icmp eq i32 %.pre257, 0
  br label %_ZN4ncnn3Mat6addrefEv.exit221

bb.r:                                             ; preds = %_ZN4ncnn3Mat6addrefEv.exit219.thread, %_ZN4ncnn3Mat6addrefEv.exit219
  %i.dm = getelementptr inbounds nuw i8, ptr %6, i64 32
  %i.dn = getelementptr inbounds nuw i8, ptr %6, i64 64
  store i64 0, ptr %i.dn, align 16, !tbaa !21
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(28) %6, i8 0, i64 28, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(28) %i.dm, i8 0, i64 28, i1 false)
  br label %_ZN4ncnn3Mat6addrefEv.exit221

_ZN4ncnn3Mat6addrefEv.exit221:                    ; preds = %bb.q, %bb.p, %bb.r
  %.not66 = phi i1 [ %i.dl, %bb.q ], [ false, %bb.p ], [ true, %bb.r ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #11
  %i.do = getelementptr inbounds nuw i8, ptr %i.m, i64 48
  %i.dp = load i32, ptr %i.do, align 8, !tbaa !56 ; 2 uses
  store i32 %i.dp, ptr %i.a, align 4, !tbaa !50
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #11
  %i.dq = getelementptr inbounds nuw i8, ptr %i.bl, i64 48
  %i.dr = load i32, ptr %i.dq, align 8, !tbaa !56 ; 4 uses
  store i32 %i.dr, ptr %i.b, align 4, !tbaa !50
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #11
  %i.ds = load ptr, ptr %5, align 16
  %i.dt = icmp eq ptr %i.ds, null
  %or.cond = select i1 %.not66, i1 true, i1 %i.dt
  br i1 %or.cond, label %.thread, label %_ZNK4ncnn3Mat5emptyEv.exit216

_ZNK4ncnn3Mat5emptyEv.exit216:                    ; preds = %_ZN4ncnn3Mat6addrefEv.exit221
  %i.du = getelementptr inbounds nuw i8, ptr %5, i64 64
  %i.dv = load i64, ptr %i.du, align 16, !tbaa !21
  %i.dw = getelementptr inbounds nuw i8, ptr %5, i64 56
  %i.dx = load i32, ptr %i.dw, align 8, !tbaa !51
  %i.dy = sext i32 %i.dx to i64
  %i.dz = mul i64 %i.dv, %i.dy
  %i.ea = icmp eq i64 %i.dz, 0
  br i1 %i.ea, label %.thread, label %bb.s

.thread:                                          ; preds = %_ZNK4ncnn3Mat5emptyEv.exit216, %_ZN4ncnn3Mat6addrefEv.exit221
  store i32 0, ptr %i.c, align 4, !tbaa !50
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #11
  br label %bb.u

bb.s:                                             ; preds = %_ZNK4ncnn3Mat5emptyEv.exit216
  %i.eb = getelementptr inbounds nuw i8, ptr %5, i64 44
  %i.ec = load i32, ptr %i.eb, align 4, !tbaa !57 ; 3 uses
  store i32 %i.ec, ptr %i.c, align 4, !tbaa !50
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #11
  %i.ed = icmp sgt i32 %i.ec, 0
  br i1 %i.ed, label %bb.t, label %bb.u

bb.t:                                             ; preds = %bb.s
  %i.ee = icmp eq i32 %.0237244, 0
  %i.ef = select i1 %i.ee, i32 %i.dr, i32 0
  %i.eg = add nsw i32 %i.ec, %i.ef
  br label %bb.u

bb.u:                                             ; preds = %bb.s, %.thread, %bb.t
  %i.eh = phi i32 [ %i.eg, %bb.t ], [ %i.dr, %.thread ], [ %i.dr, %bb.s ]
  store i32 %i.eh, ptr %i.d, align 4, !tbaa !50
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #11
  %i.ei = getelementptr inbounds nuw i8, ptr %0, i64 208 ; 4 uses
  %i.ej = load i32, ptr %i.ei, align 8, !tbaa !38 ; 3 uses
  %i.ek = getelementptr inbounds nuw i8, ptr %0, i64 212 ; 2 uses
  %i.el = load i32, ptr %i.ek, align 4, !tbaa !39
  %i.em = sdiv i32 %i.ej, %i.el
  store i32 %i.em, ptr %i.e, align 4, !tbaa !50
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #11
  %i.en = getelementptr inbounds nuw i8, ptr %0, i64 216
  %i.eo = load i32, ptr %i.en, align 8, !tbaa !40
  %i.ep = sdiv i32 %i.eo, %i.ej
  store i32 %i.ep, ptr %i.f, align 4, !tbaa !50
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #11
  %i.eq = getelementptr inbounds nuw i8, ptr %7, i64 8 ; 2 uses
  %i.er = getelementptr inbounds nuw i8, ptr %7, i64 32 ; 3 uses
  %i.es = getelementptr inbounds nuw i8, ptr %7, i64 56
  %i.et = getelementptr inbounds nuw i8, ptr %7, i64 64 ; 2 uses
  store i64 0, ptr %i.et, align 8, !tbaa !21
  %i.eu = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 5 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(28) %7, i8 0, i64 28, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(28) %i.er, i8 0, i64 28, i1 false)
  %i.ev = load ptr, ptr %i.eu, align 8, !tbaa !59
  invoke void @_ZN4ncnn3Mat6createEiimPNS_9AllocatorE(ptr noundef nonnull align 8 dereferenceable(72) %7, i32 noundef %i.dp, i32 noundef %i.ej, i64 noundef 4, ptr noundef %i.ev)
          to label %bb.v unwind label %bb.w

bb.v:                                             ; preds = %bb.u
  %i.ew = load ptr, ptr %7, align 8, !tbaa !20
  %i.ex = icmp eq ptr %i.ew, null
  br i1 %i.ex, label %_ZNK4ncnn3Mat5emptyEv.exit215.thread, label %_ZNK4ncnn3Mat5emptyEv.exit215

_ZNK4ncnn3Mat5emptyEv.exit215:                    ; preds = %bb.v
  %i.ey = load i64, ptr %i.et, align 8, !tbaa !21
  %i.ez = load i32, ptr %i.es, align 8, !tbaa !51
  %i.fa = sext i32 %i.ez to i64
  %i.fb = mul i64 %i.ey, %i.fa
  %i.fc = icmp eq i64 %i.fb, 0
  br i1 %i.fc, label %_ZNK4ncnn3Mat5emptyEv.exit215.thread, label %bb.x

bb.w:                                             ; preds = %bb.u
  %i.fd = landingpad { ptr, i32 }
          cleanup
  br label %bb.fa

bb.x:                                             ; preds = %_ZNK4ncnn3Mat5emptyEv.exit215
  %i.fe = getelementptr inbounds nuw i8, ptr %3, i64 4 ; 10 uses
  %i.ff = load i32, ptr %i.fe, align 4, !tbaa !60
  call void @__kmpc_push_num_threads(ptr nonnull @2, i32 %i.g, i32 %i.ff)
  call void (ptr, i32, ptr, ...) @__kmpc_fork_call(ptr nonnull @2, i32 5, ptr nonnull @_ZNK4ncnn18MultiHeadAttention7forwardERKSt6vectorINS_3MatESaIS2_EERS4_RKNS_6OptionE.omp_outlined, ptr nonnull %i.a, ptr nonnull %0, ptr nonnull %i.m, ptr nonnull %i.f, ptr nonnull %7)
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #11
  %i.fg = getelementptr inbounds nuw i8, ptr %8, i64 8 ; 4 uses
  %i.fh = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 2 uses
  %i.fi = getelementptr inbounds nuw i8, ptr %8, i64 24 ; 2 uses
  %i.fj = getelementptr inbounds nuw i8, ptr %8, i64 32 ; 6 uses
  %i.fk = getelementptr inbounds nuw i8, ptr %8, i64 40 ; 2 uses
  %i.fl = getelementptr inbounds nuw i8, ptr %8, i64 56 ; 3 uses
  %i.fm = getelementptr inbounds nuw i8, ptr %8, i64 64 ; 4 uses
  store i64 0, ptr %i.fm, align 16, !tbaa !21
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(28) %8, i8 0, i64 28, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(28) %i.fj, i8 0, i64 28, i1 false)
  %i.fn = load i32, ptr %i.c, align 4, !tbaa !50
  %i.fo = icmp slt i32 %i.fn, 1
  %.not67 = icmp eq i32 %.0237244, 0
  %or.cond254 = or i1 %.not67, %i.fo
  br i1 %or.cond254, label %bb.ag, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.fp = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.fq = load ptr, ptr %i.fp, align 8, !tbaa !18 ; 2 uses
  %.not.i203 = icmp eq ptr %i.fq, null
  br i1 %.not.i203, label %_ZN4ncnn3MataSERKS0_.exit210, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.fr = atomicrmw add ptr %i.fq, i32 1 acq_rel, align 4 ; 0 uses
  %.pre258 = load ptr, ptr %i.fg, align 8, !tbaa !18 ; 2 uses
  %.not.i.i204 = icmp eq ptr %.pre258, null
  br i1 %.not.i.i204, label %_ZN4ncnn3MataSERKS0_.exit210, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.fs = atomicrmw add ptr %.pre258, i32 -1 acq_rel, align 4
  %i.ft = icmp eq i32 %i.fs, 1
  br i1 %i.ft, label %bb.ab, label %_ZN4ncnn3MataSERKS0_.exit210

bb.ab:                                            ; preds = %bb.aa
  %i.fu = load ptr, ptr %i.fj, align 16, !tbaa !19 ; 3 uses
  %.not3.i.i206 = icmp eq ptr %i.fu, null
  %i.fv = load ptr, ptr %8, align 16, !tbaa !20   ; 3 uses
  br i1 %.not3.i.i206, label %bb.ad, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.fw = load ptr, ptr %i.fu, align 8, !tbaa !12
  %i.fx = getelementptr inbounds nuw i8, ptr %i.fw, i64 24
  %i.fy = load ptr, ptr %i.fx, align 8
  invoke void %i.fy(ptr noundef nonnull align 8 dereferenceable(8) %i.fu, ptr noundef %i.fv)
          to label %_ZN4ncnn3MataSERKS0_.exit210 unwind label %bb.af, !inline_history !1

bb.ad:                                            ; preds = %bb.ab
  %.not.i18.i207 = icmp eq ptr %i.fv, null
  br i1 %.not.i18.i207, label %_ZN4ncnn3MataSERKS0_.exit210, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  call void @free(ptr noundef nonnull %i.fv) #11
  br label %_ZN4ncnn3MataSERKS0_.exit210

_ZN4ncnn3MataSERKS0_.exit210:                     ; preds = %bb.y, %bb.ad, %bb.ae, %bb.ac, %bb.z, %bb.aa
  %i.fz = load <2 x ptr>, ptr %5, align 16, !tbaa !47
  store <2 x ptr> %i.fz, ptr %8, align 16, !tbaa !47
  %i.ga = getelementptr inbounds nuw i8, ptr %5, i64 16
end_hunk_0
begin_hunk_1_@_ZNK4ncnn18MultiHeadAttention7forwardERKSt6vectorINS_3MatESaIS2_EERS4_RKNS_6OptionE:bb.a
bb.fp:                                            ; preds = %bb.fo
  %i.ta = load ptr, ptr %i.sy, align 8, !tbaa !12
  %i.tb = getelementptr inbounds nuw i8, ptr %i.ta, i64 24
  %i.tc = load ptr, ptr %i.tb, align 8
  invoke void %i.tc(ptr noundef nonnull align 8 dereferenceable(8) %i.sy, ptr noundef %i.sz)
          to label %_ZN4ncnn3MatD2Ev.exit79 unwind label %bb.fs, !inline_history !0

bb.fq:                                            ; preds = %bb.fo
  %.not.i155 = icmp eq ptr %i.sz, null
  br i1 %.not.i155, label %_ZN4ncnn3MatD2Ev.exit79, label %bb.fr

bb.fr:                                            ; preds = %bb.fq
  call void @free(ptr noundef nonnull %i.sz) #11
  br label %_ZN4ncnn3MatD2Ev.exit79

bb.fs:                                            ; preds = %bb.fp
  %i.td = landingpad { ptr, i32 }
          catch ptr null
  %i.te = extractvalue { ptr, i32 } %i.td, 0
  call void @__clang_call_terminate(ptr %i.te) #16
  unreachable

_ZN4ncnn3MatD2Ev.exit79:                          ; preds = %bb.fn, %_ZN4ncnn3MatD2Ev.exit80, %bb.fp, %bb.fq, %bb.fr
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #11
  %i.tf = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.tg = load ptr, ptr %i.tf, align 8, !tbaa !18 ; 2 uses
  %.not.i150 = icmp eq ptr %i.tg, null
  br i1 %.not.i150, label %_ZN4ncnn3MatD2Ev.exit, label %bb.ft

bb.ft:                                            ; preds = %_ZN4ncnn3MatD2Ev.exit79
  %i.th = atomicrmw add ptr %i.tg, i32 -1 acq_rel, align 4
  %i.ti = icmp eq i32 %i.th, 1
  br i1 %i.ti, label %bb.fu, label %_ZN4ncnn3MatD2Ev.exit

bb.fu:                                            ; preds = %bb.ft
  %i.tj = getelementptr inbounds nuw i8, ptr %4, i64 32
  %i.tk = load ptr, ptr %i.tj, align 16, !tbaa !19 ; 3 uses
  %.not3.i151 = icmp eq ptr %i.tk, null
  %i.tl = load ptr, ptr %4, align 16, !tbaa !20   ; 3 uses
  br i1 %.not3.i151, label %bb.fw, label %bb.fv

bb.fv:                                            ; preds = %bb.fu
  %i.tm = load ptr, ptr %i.tk, align 8, !tbaa !12
  %i.tn = getelementptr inbounds nuw i8, ptr %i.tm, i64 24
  %i.to = load ptr, ptr %i.tn, align 8
  invoke void %i.to(ptr noundef nonnull align 8 dereferenceable(8) %i.tk, ptr noundef %i.tl)
          to label %_ZN4ncnn3MatD2Ev.exit unwind label %bb.fy, !inline_history !0

bb.fw:                                            ; preds = %bb.fu
  %.not.i154 = icmp eq ptr %i.tl, null
  br i1 %.not.i154, label %_ZN4ncnn3MatD2Ev.exit, label %bb.fx

bb.fx:                                            ; preds = %bb.fw
  call void @free(ptr noundef nonnull %i.tl) #11
  br label %_ZN4ncnn3MatD2Ev.exit

bb.fy:                                            ; preds = %bb.fv
  %i.tp = landingpad { ptr, i32 }
          catch ptr null
  %i.tq = extractvalue { ptr, i32 } %i.tp, 0
  call void @__clang_call_terminate(ptr %i.tq) #16
  unreachable

_ZN4ncnn3MatD2Ev.exit:                            ; preds = %bb.ft, %_ZN4ncnn3MatD2Ev.exit79, %bb.fv, %bb.fw, %bb.fx
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #11
  resume { ptr, i32 } %.pn.pn.pn.pn.pn

bb.fz:                                            ; preds = %_ZN4ncnn3MatD2Ev.exit82, %bb.b
  %.661 = phi i32 [ %i.j, %bb.b ], [ %.560, %_ZN4ncnn3MatD2Ev.exit82 ]
  ret i32 %.661
}

declare noundef i32 @_ZNK4ncnn5Layer7forwardERKNS_3MatERS1_RKNS_6OptionE(ptr noundef nonnull align 8 dereferenceable(208), ptr noundef nonnull align 8 dereferenceable(72), ptr noundef nonnull align 8 dereferenceable(72), ptr noundef nonnull align 8 dereferenceable(64)) unnamed_addr #2

declare noundef i32 @_ZNK4ncnn5Layer15forward_inplaceERSt6vectorINS_3MatESaIS2_EERKNS_6OptionE(ptr noundef nonnull align 8 dereferenceable(208), ptr noundef nonnull align 8 dereferenceable(24), ptr noundef nonnull align 8 dereferenceable(64)) unnamed_addr #2

declare noundef i32 @_ZNK4ncnn5Layer15forward_inplaceERNS_3MatERKNS_6OptionE(ptr noundef nonnull align 8 dereferenceable(208), ptr noundef nonnull align 8 dereferenceable(72), ptr noundef nonnull align 8 dereferenceable(64)) unnamed_addr #2

; Function Attrs: mustprogress uwtable
define hidden void @_ZN4ncnn18MultiHeadAttentionC2Ev(ptr noundef nonnull align 8 dereferenceable(1044) %0) unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  tail call void @_ZN4ncnn5LayerC2Ev(ptr noundef nonnull align 8 dereferenceable(208) %0)
  store ptr getelementptr inbounds nuw inrange(-16, 80) (i8, ptr @_ZTVN4ncnn18MultiHeadAttentionE, i64 16), ptr %0, align 8, !tbaa !12
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 248
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 280
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 312
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 352
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 384
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 424
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 456
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 496
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 528
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 568
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 600
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 640
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 672
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 712
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 744
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 784
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 816
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 856
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 888
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 928
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 960
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 1000
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 1032
  store i64 0, ptr %i.w, align 8, !tbaa !21
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(28) %i.a, i8 0, i64 28, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(28) %i.b, i8 0, i64 28, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(36) %i.c, i8 0, i64 36, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(28) %i.d, i8 0, i64 28, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(36) %i.e, i8 0, i64 36, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(28) %i.f, i8 0, i64 28, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(36) %i.g, i8 0, i64 36, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(28) %i.h, i8 0, i64 28, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(36) %i.i, i8 0, i64 36, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(28) %i.j, i8 0, i64 28, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(36) %i.k, i8 0, i64 36, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(28) %i.l, i8 0, i64 28, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(36) %i.m, i8 0, i64 36, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(28) %i.n, i8 0, i64 28, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(36) %i.o, i8 0, i64 36, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(28) %i.p, i8 0, i64 28, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(36) %i.q, i8 0, i64 36, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(28) %i.r, i8 0, i64 28, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(36) %i.s, i8 0, i64 36, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(28) %i.t, i8 0, i64 28, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(36) %i.u, i8 0, i64 36, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(28) %i.v, i8 0, i64 28, i1 false)
  ret void
}

declare void @_ZN4ncnn5LayerC2Ev(ptr noundef nonnull align 8 dereferenceable(208)) unnamed_addr #2

declare i32 @__gxx_personality_v0(...)

; Function Attrs: nounwind
declare void @_ZN4ncnn5LayerD2Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208)) unnamed_addr #3

; Function Attrs: noinline noreturn nounwind uwtable
define linkonce_odr hidden void @__clang_call_terminate(ptr noundef %0) local_unnamed_addr #4 comdat {
bb.a:
  %i.a = tail call ptr @__cxa_begin_catch(ptr %0) #11 ; 0 uses
  tail call void @_ZSt9terminatev() #16
  unreachable
}

declare ptr @__cxa_begin_catch(ptr) local_unnamed_addr

; Function Attrs: cold nofree noreturn
declare void @_ZSt9terminatev() local_unnamed_addr #5

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr noundef captures(none)) local_unnamed_addr #6

declare noundef i32 @_ZNK4ncnn9ParamDict3getEii(ptr noundef nonnull align 8 dereferenceable(16), i32 noundef, i32 noundef) local_unnamed_addr #2

declare noundef nofpclass(nan inf) float @_ZNK4ncnn9ParamDict3getEif(ptr noundef nonnull align 8 dereferenceable(16), i32 noundef, float noundef nofpclass(nan inf)) local_unnamed_addr #2

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.sqrt.f32(float) #7

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #8

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #8

; Function Attrs: mustprogress uwtable
define hidden noundef range(i32 -100, 1) i32 @_ZNK4ncnn18MultiHeadAttention12forward_int8ERKSt6vectorINS_3MatESaIS2_EERS4_RKNS_6OptionE(ptr noundef nonnull align 8 dereferenceable(1044) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %1, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %2, ptr noundef nonnull align 8 dereferenceable(64) %3) local_unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"class.ncnn::Mat", align 16        ; 21 uses
  %5 = alloca %"class.ncnn::Mat", align 16        ; 32 uses
  %6 = alloca %"class.ncnn::Mat", align 16        ; 30 uses
  %i.a = alloca i32, align 4                      ; 13 uses
  %i.b = alloca i32, align 4                      ; 6 uses
  %i.c = alloca i32, align 4                      ; 11 uses
  %i.d = alloca i32, align 4                      ; 14 uses
  %i.e = alloca i32, align 4                      ; 6 uses
  %i.f = alloca i32, align 4                      ; 7 uses
  %7 = alloca %"class.ncnn::Mat", align 8         ; 14 uses
  %8 = alloca %"class.ncnn::Mat", align 8         ; 11 uses
  %i.g = alloca float, align 4                    ; 5 uses
  %9 = alloca %"class.ncnn::Mat", align 16        ; 22 uses
  %10 = alloca %"class.ncnn::Mat", align 8        ; 11 uses
  %i.h = alloca float, align 4                    ; 5 uses
  %11 = alloca %"class.ncnn::Mat", align 16       ; 22 uses
  %12 = alloca %"class.ncnn::Mat", align 8        ; 11 uses
  %i.i = alloca float, align 4                    ; 5 uses
  %13 = alloca %"class.ncnn::Mat", align 8        ; 16 uses
  %14 = alloca %"class.ncnn::Mat", align 8        ; 14 uses
  %15 = alloca %"class.ncnn::Mat", align 8        ; 13 uses
  %16 = alloca %"class.ncnn::Mat", align 8        ; 13 uses
  %i.j = tail call i32 @__kmpc_global_thread_num(ptr nonnull @2) ; 10 uses
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !54
  %i.m = load ptr, ptr %1, align 8, !tbaa !55     ; 8 uses
  %i.n = ptrtoint ptr %i.l to i64
  %i.o = ptrtoint ptr %i.m to i64
  %i.p = sub i64 %i.n, %i.o
  %i.q = sdiv exact i64 %i.p, 72                  ; 7 uses
  %i.r = trunc i64 %i.q to i32                    ; 4 uses
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 236 ; 5 uses
  %i.t = load i32, ptr %i.s, align 4, !tbaa !45   ; 3 uses
  %.not.i314 = icmp eq i32 %i.t, 0
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 228 ; 2 uses
  %i.v = load i32, ptr %i.u, align 4, !tbaa !43
  %.not66.i = icmp eq i32 %i.v, 0                 ; 2 uses
  br i1 %.not.i314, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  br i1 %.not66.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %switch.tableidx = add i32 %i.r, -4             ; 3 uses
  %i.w = icmp ult i32 %switch.tableidx, 3
  br i1 %i.w, label %switch.lookup, label %bb.j

bb.d:                                             ; preds = %bb.b
  %switch.tableidx472 = add i32 %i.r, -3          ; 3 uses
  %i.x = icmp ult i32 %switch.tableidx472, 3
  br i1 %i.x, label %switch.lookup473, label %bb.l

bb.e:                                             ; preds = %bb.a
  br i1 %.not66.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %switch.tableidx479 = add i32 %i.r, -2          ; 3 uses
  %i.y = icmp ult i32 %switch.tableidx479, 3
  br i1 %i.y, label %switch.lookup480, label %bb.j

bb.g:                                             ; preds = %bb.e
  switch i32 %i.r, label %bb.l [
    i32 3, label %bb.i
    i32 2, label %bb.h
  ]

bb.h:                                             ; preds = %bb.g
  br label %bb.l

bb.i:                                             ; preds = %bb.g
  br label %bb.l

switch.lookup:                                    ; preds = %bb.c
  %i.z = zext nneg i32 %switch.tableidx to i64
  %switch.gep = getelementptr inbounds nuw i8, ptr @switch.table._ZNK4ncnn18MultiHeadAttention12forward_int8ERKSt6vectorINS_3MatESaIS2_EERS4_RKNS_6OptionE.5, i64 %i.z
  %switch.load = load i8, ptr %switch.gep, align 1
  %narrow = add nsw i64 %i.q, 4294967293
  %switch.offset = and i64 %narrow, 4294967295
  %narrow490 = add nsw i64 %i.q, 4294967294
  %switch.offset.a = and i64 %narrow490, 4294967295
  %narrow491 = add nsw i64 %i.q, 4294967295
  %switch.offset473 = and i64 %narrow491, 4294967295
  br label %bb.j

switch.lookup480:                                 ; preds = %bb.f
  %i.aa = zext nneg i32 %switch.tableidx479 to i64
  %switch.gep481 = getelementptr inbounds nuw i8, ptr @switch.table._ZNK4ncnn18MultiHeadAttention12forward_int8ERKSt6vectorINS_3MatESaIS2_EERS4_RKNS_6OptionE.5, i64 %i.aa
  %switch.load482 = load i8, ptr %switch.gep481, align 1
  %narrow486 = add nsw i64 %i.q, 4294967295
  %switch.offset485 = and i64 %narrow486, 4294967295
  br label %bb.j

bb.j:                                             ; preds = %switch.lookup480, %bb.f, %switch.lookup, %bb.c
  %.0329.ph.shrunk = phi i8 [ 0, %bb.f ], [ %switch.load, %switch.lookup ], [ 0, %bb.c ], [ %switch.load482, %switch.lookup480 ] ; 2 uses
  %.0328.ph = phi i32 [ 0, %bb.f ], [ %switch.tableidx, %switch.lookup ], [ 0, %bb.c ], [ %switch.tableidx479, %switch.lookup480 ] ; 3 uses
  %.0327.ph = phi i64 [ 0, %bb.f ], [ %switch.offset, %switch.lookup ], [ 0, %bb.c ], [ %switch.offset485, %switch.lookup480 ]
  %.0326.ph = phi i64 [ 0, %bb.f ], [ %switch.offset.a, %switch.lookup ], [ 0, %bb.c ], [ 0, %switch.lookup480 ] ; 2 uses
  %.0.ph = phi i64 [ 0, %bb.f ], [ %switch.offset473, %switch.lookup ], [ 0, %bb.c ], [ 0, %switch.lookup480 ] ; 2 uses
  %.0329.ph = zext i8 %.0329.ph.shrunk to i32     ; 2 uses
  %i.ab = zext i8 %.0329.ph.shrunk to i64
  %i.ac = getelementptr inbounds nuw [72 x i8], ptr %i.m, i64 %i.ab ; 2 uses
  %i.ad = zext nneg i32 %.0328.ph to i64
  %i.ae = getelementptr inbounds nuw [72 x i8], ptr %i.m, i64 %i.ad ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #11
  %i.af = getelementptr inbounds nuw [72 x i8], ptr %i.m, i64 %.0327.ph ; 8 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 8
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !18 ; 2 uses
  %i.ai = load <2 x ptr>, ptr %i.af, align 8, !tbaa !47
  store <2 x ptr> %i.ai, ptr %4, align 16, !tbaa !47
  %i.aj = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.ak = getelementptr inbounds nuw i8, ptr %i.af, i64 16
  %i.al = load i64, ptr %i.ak, align 8, !tbaa !48
  store i64 %i.al, ptr %i.aj, align 16, !tbaa !48
  %i.am = getelementptr inbounds nuw i8, ptr %4, i64 24
  %i.an = getelementptr inbounds nuw i8, ptr %i.af, i64 24
  %i.ao = load i32, ptr %i.an, align 8, !tbaa !49
  store i32 %i.ao, ptr %i.am, align 8, !tbaa !49
  %i.ap = getelementptr inbounds nuw i8, ptr %4, i64 32
  %i.aq = getelementptr inbounds nuw i8, ptr %i.af, i64 32
  %i.ar = load ptr, ptr %i.aq, align 8, !tbaa !19
  store ptr %i.ar, ptr %i.ap, align 16, !tbaa !19
  %i.as = getelementptr inbounds nuw i8, ptr %4, i64 40
  %i.at = getelementptr inbounds nuw i8, ptr %i.af, i64 40
  %i.au = load <4 x i32>, ptr %i.at, align 8, !tbaa !50
  store <4 x i32> %i.au, ptr %i.as, align 8, !tbaa !50
  %i.av = getelementptr inbounds nuw i8, ptr %4, i64 56
  %i.aw = getelementptr inbounds nuw i8, ptr %i.af, i64 56
  %i.ax = load i32, ptr %i.aw, align 8, !tbaa !51
  store i32 %i.ax, ptr %i.av, align 8, !tbaa !51
  %i.ay = getelementptr inbounds nuw i8, ptr %4, i64 64
  %i.az = getelementptr inbounds nuw i8, ptr %i.af, i64 64
  %i.ba = load i64, ptr %i.az, align 8, !tbaa !21
  store i64 %i.ba, ptr %i.ay, align 16, !tbaa !21
  %.not.i307 = icmp eq ptr %i.ah, null
  br i1 %.not.i307, label %_ZN4ncnn3Mat6addrefEv.exit, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.bb = atomicrmw add ptr %i.ah, i32 1 acq_rel, align 4 ; 0 uses
  %.pre = load i32, ptr %i.s, align 4, !tbaa !45
  br label %_ZN4ncnn3Mat6addrefEv.exit

switch.lookup473:                                 ; preds = %bb.d
  %i.bc = zext nneg i32 %switch.tableidx472 to i64
  %switch.gep474 = getelementptr inbounds nuw i8, ptr @switch.table._ZNK4ncnn18MultiHeadAttention12forward_int8ERKSt6vectorINS_3MatESaIS2_EERS4_RKNS_6OptionE.5, i64 %i.bc
  %switch.load475 = load i8, ptr %switch.gep474, align 1
  %switch.ext476 = zext i8 %switch.load475 to i32
  %narrow492 = add nsw i64 %i.q, 4294967294
  %switch.offset480 = and i64 %narrow492, 4294967295
  %narrow493 = add nsw i64 %i.q, 4294967295
  %switch.offset482 = and i64 %narrow493, 4294967295
  br label %bb.l

bb.l:                                             ; preds = %switch.lookup473, %bb.d, %bb.i, %bb.h, %bb.g
  %.0329 = phi i32 [ 0, %bb.g ], [ 0, %bb.d ], [ 1, %bb.h ], [ 1, %bb.i ], [ %switch.ext476, %switch.lookup473 ] ; 2 uses
  %.0328 = phi i32 [ 0, %bb.g ], [ 0, %bb.d ], [ 1, %bb.h ], [ 2, %bb.i ], [ %switch.tableidx472, %switch.lookup473 ] ; 2 uses
  %.0326 = phi i64 [ 0, %bb.g ], [ 0, %bb.d ], [ 0, %bb.h ], [ 0, %bb.i ], [ %switch.offset480, %switch.lookup473 ]
  %.0 = phi i64 [ 0, %bb.g ], [ 0, %bb.d ], [ 0, %bb.h ], [ 0, %bb.i ], [ %switch.offset482, %switch.lookup473 ]
  %i.bd = zext nneg i32 %.0329 to i64
  %i.be = getelementptr inbounds nuw [72 x i8], ptr %i.m, i64 %i.bd
  %i.bf = zext nneg i32 %.0328 to i64
  %i.bg = getelementptr inbounds nuw [72 x i8], ptr %i.m, i64 %i.bf
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #11
  %i.bh = getelementptr inbounds nuw i8, ptr %4, i64 32
  %i.bi = getelementptr inbounds nuw i8, ptr %4, i64 64
  store i64 0, ptr %i.bi, align 16, !tbaa !21
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(28) %4, i8 0, i64 28, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(28) %i.bh, i8 0, i64 28, i1 false)
  br label %_ZN4ncnn3Mat6addrefEv.exit

_ZN4ncnn3Mat6addrefEv.exit:                       ; preds = %bb.k, %bb.j, %bb.l
  %i.bj = phi i32 [ %i.t, %bb.l ], [ %i.t, %bb.j ], [ %.pre, %bb.k ]
  %i.bk = phi ptr [ %i.bg, %bb.l ], [ %i.ae, %bb.j ], [ %i.ae, %bb.k ]
  %i.bl = phi ptr [ %i.be, %bb.l ], [ %i.ac, %bb.j ], [ %i.ac, %bb.k ] ; 2 uses
  %.0343 = phi i64 [ %.0, %bb.l ], [ %.0.ph, %bb.j ], [ %.0.ph, %bb.k ]
  %.0326341 = phi i64 [ %.0326, %bb.l ], [ %.0326.ph, %bb.j ], [ %.0326.ph, %bb.k ]
  %.0328338 = phi i32 [ %.0328, %bb.l ], [ %.0328.ph, %bb.j ], [ %.0328.ph, %bb.k ]
  %.0329336 = phi i32 [ %.0329, %bb.l ], [ %.0329.ph, %bb.j ], [ %.0329.ph, %bb.k ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #11
  %.not69 = icmp eq i32 %i.bj, 0
  br i1 %.not69, label %_ZN4ncnn3Mat6addrefEv.exit309.thread, label %bb.m

bb.m:                                             ; preds = %_ZN4ncnn3Mat6addrefEv.exit
  %i.bm = load ptr, ptr %1, align 8, !tbaa !55
  %i.bn = getelementptr inbounds nuw [72 x i8], ptr %i.bm, i64 %.0326341 ; 8 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bn, i64 8
  %i.bp = load ptr, ptr %i.bo, align 8, !tbaa !18 ; 2 uses
  %i.bq = load <2 x ptr>, ptr %i.bn, align 8, !tbaa !47
  store <2 x ptr> %i.bq, ptr %5, align 16, !tbaa !47
  %i.br = getelementptr inbounds nuw i8, ptr %5, i64 16
  %i.bs = getelementptr inbounds nuw i8, ptr %i.bn, i64 16
  %i.bt = load i64, ptr %i.bs, align 8, !tbaa !48
  store i64 %i.bt, ptr %i.br, align 16, !tbaa !48
  %i.bu = getelementptr inbounds nuw i8, ptr %5, i64 24
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bn, i64 24
  %i.bw = load i32, ptr %i.bv, align 8, !tbaa !49
  store i32 %i.bw, ptr %i.bu, align 8, !tbaa !49
  %i.bx = getelementptr inbounds nuw i8, ptr %5, i64 32
  %i.by = getelementptr inbounds nuw i8, ptr %i.bn, i64 32
  %i.bz = load ptr, ptr %i.by, align 8, !tbaa !19
  store ptr %i.bz, ptr %i.bx, align 16, !tbaa !19
  %i.ca = getelementptr inbounds nuw i8, ptr %5, i64 40
  %i.cb = getelementptr inbounds nuw i8, ptr %i.bn, i64 40
  %i.cc = load <4 x i32>, ptr %i.cb, align 8, !tbaa !50
  store <4 x i32> %i.cc, ptr %i.ca, align 8, !tbaa !50
  %i.cd = getelementptr inbounds nuw i8, ptr %5, i64 56
  %i.ce = getelementptr inbounds nuw i8, ptr %i.bn, i64 56
  %i.cf = load i32, ptr %i.ce, align 8, !tbaa !51
  store i32 %i.cf, ptr %i.cd, align 8, !tbaa !51
  %i.cg = getelementptr inbounds nuw i8, ptr %5, i64 64
  %i.ch = getelementptr inbounds nuw i8, ptr %i.bn, i64 64
  %i.ci = load i64, ptr %i.ch, align 8, !tbaa !21
  store i64 %i.ci, ptr %i.cg, align 16, !tbaa !21
  %.not.i308 = icmp eq ptr %i.bp, null
  br i1 %.not.i308, label %_ZN4ncnn3Mat6addrefEv.exit309.thread464, label %_ZN4ncnn3Mat6addrefEv.exit309

_ZN4ncnn3Mat6addrefEv.exit309.thread464:          ; preds = %bb.m
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #11
  br label %bb.n

_ZN4ncnn3Mat6addrefEv.exit309.thread:             ; preds = %_ZN4ncnn3Mat6addrefEv.exit
  %i.cj = getelementptr inbounds nuw i8, ptr %5, i64 32
  %i.ck = getelementptr inbounds nuw i8, ptr %5, i64 64
  store i64 0, ptr %i.ck, align 16, !tbaa !21
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(28) %5, i8 0, i64 28, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(28) %i.cj, i8 0, i64 28, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #11
  br label %bb.p

_ZN4ncnn3Mat6addrefEv.exit309:                    ; preds = %bb.m
  %i.cl = atomicrmw add ptr %i.bp, i32 1 acq_rel, align 4 ; 0 uses
  %.pre348 = load i32, ptr %i.s, align 4, !tbaa !45
  %i.cm = icmp eq i32 %.pre348, 0
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #11
  br i1 %i.cm, label %bb.p, label %bb.n

bb.n:                                             ; preds = %_ZN4ncnn3Mat6addrefEv.exit309.thread464, %_ZN4ncnn3Mat6addrefEv.exit309
  %i.cn = load ptr, ptr %1, align 8, !tbaa !55
  %i.co = getelementptr inbounds nuw [72 x i8], ptr %i.cn, i64 %.0343 ; 8 uses
  %i.cp = getelementptr inbounds nuw i8, ptr %i.co, i64 8
  %i.cq = load ptr, ptr %i.cp, align 8, !tbaa !18 ; 2 uses
  %i.cr = load <2 x ptr>, ptr %i.co, align 8, !tbaa !47
  store <2 x ptr> %i.cr, ptr %6, align 16, !tbaa !47
  %i.cs = getelementptr inbounds nuw i8, ptr %6, i64 16
  %i.ct = getelementptr inbounds nuw i8, ptr %i.co, i64 16
  %i.cu = load i64, ptr %i.ct, align 8, !tbaa !48
  store i64 %i.cu, ptr %i.cs, align 16, !tbaa !48
  %i.cv = getelementptr inbounds nuw i8, ptr %6, i64 24
  %i.cw = getelementptr inbounds nuw i8, ptr %i.co, i64 24
  %i.cx = load i32, ptr %i.cw, align 8, !tbaa !49
  store i32 %i.cx, ptr %i.cv, align 8, !tbaa !49
  %i.cy = getelementptr inbounds nuw i8, ptr %6, i64 32
  %i.cz = getelementptr inbounds nuw i8, ptr %i.co, i64 32
  %i.da = load ptr, ptr %i.cz, align 8, !tbaa !19
  store ptr %i.da, ptr %i.cy, align 16, !tbaa !19
  %i.db = getelementptr inbounds nuw i8, ptr %6, i64 40
  %i.dc = getelementptr inbounds nuw i8, ptr %i.co, i64 40
  %i.dd = load <4 x i32>, ptr %i.dc, align 8, !tbaa !50
  store <4 x i32> %i.dd, ptr %i.db, align 8, !tbaa !50
  %i.de = getelementptr inbounds nuw i8, ptr %6, i64 56
  %i.df = getelementptr inbounds nuw i8, ptr %i.co, i64 56
  %i.dg = load i32, ptr %i.df, align 8, !tbaa !51
  store i32 %i.dg, ptr %i.de, align 8, !tbaa !51
  %i.dh = getelementptr inbounds nuw i8, ptr %6, i64 64
  %i.di = getelementptr inbounds nuw i8, ptr %i.co, i64 64
  %i.dj = load i64, ptr %i.di, align 8, !tbaa !21
  store i64 %i.dj, ptr %i.dh, align 16, !tbaa !21
  %.not.i310 = icmp eq ptr %i.cq, null
  br i1 %.not.i310, label %_ZN4ncnn3Mat6addrefEv.exit311, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.dk = atomicrmw add ptr %i.cq, i32 1 acq_rel, align 4 ; 0 uses
  %.pre349 = load i32, ptr %i.s, align 4, !tbaa !45
  %i.dl = icmp eq i32 %.pre349, 0
  br label %_ZN4ncnn3Mat6addrefEv.exit311

bb.p:                                             ; preds = %_ZN4ncnn3Mat6addrefEv.exit309.thread, %_ZN4ncnn3Mat6addrefEv.exit309
  %i.dm = getelementptr inbounds nuw i8, ptr %6, i64 32
  %i.dn = getelementptr inbounds nuw i8, ptr %6, i64 64
  store i64 0, ptr %i.dn, align 16, !tbaa !21
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(28) %6, i8 0, i64 28, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(28) %i.dm, i8 0, i64 28, i1 false)
  br label %_ZN4ncnn3Mat6addrefEv.exit311

_ZN4ncnn3Mat6addrefEv.exit311:                    ; preds = %bb.o, %bb.n, %bb.p
  %.not71 = phi i1 [ %i.dl, %bb.o ], [ false, %bb.n ], [ true, %bb.p ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #11
  %i.do = getelementptr inbounds nuw i8, ptr %i.m, i64 48
  %i.dp = load i32, ptr %i.do, align 8, !tbaa !56 ; 2 uses
  store i32 %i.dp, ptr %i.a, align 4, !tbaa !50
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #11
  %i.dq = getelementptr inbounds nuw i8, ptr %i.bl, i64 48
  %i.dr = load i32, ptr %i.dq, align 8, !tbaa !56 ; 4 uses
  store i32 %i.dr, ptr %i.b, align 4, !tbaa !50
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #11
  %i.ds = load ptr, ptr %5, align 16
  %i.dt = icmp eq ptr %i.ds, null
  %or.cond = select i1 %.not71, i1 true, i1 %i.dt
  br i1 %or.cond, label %.thread, label %_ZNK4ncnn3Mat5emptyEv.exit306

_ZNK4ncnn3Mat5emptyEv.exit306:                    ; preds = %_ZN4ncnn3Mat6addrefEv.exit311
  %i.du = getelementptr inbounds nuw i8, ptr %5, i64 64
  %i.dv = load i64, ptr %i.du, align 16, !tbaa !21
  %i.dw = getelementptr inbounds nuw i8, ptr %5, i64 56
  %i.dx = load i32, ptr %i.dw, align 8, !tbaa !51
  %i.dy = sext i32 %i.dx to i64
  %i.dz = mul i64 %i.dv, %i.dy
  %i.ea = icmp eq i64 %i.dz, 0
  br i1 %i.ea, label %.thread, label %bb.q

.thread:                                          ; preds = %_ZNK4ncnn3Mat5emptyEv.exit306, %_ZN4ncnn3Mat6addrefEv.exit311
  store i32 0, ptr %i.c, align 4, !tbaa !50
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #11
  br label %bb.s

bb.q:                                             ; preds = %_ZNK4ncnn3Mat5emptyEv.exit306
  %i.eb = getelementptr inbounds nuw i8, ptr %5, i64 44
  %i.ec = load i32, ptr %i.eb, align 4, !tbaa !57 ; 3 uses
  store i32 %i.ec, ptr %i.c, align 4, !tbaa !50
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #11
  %i.ed = icmp sgt i32 %i.ec, 0
  br i1 %i.ed, label %bb.r, label %bb.s

bb.r:                                             ; preds = %bb.q
  %i.ee = icmp eq i32 %.0329336, 0
  %i.ef = select i1 %i.ee, i32 %i.dr, i32 0
  %i.eg = add nsw i32 %i.ec, %i.ef
  br label %bb.s

bb.s:                                             ; preds = %bb.q, %.thread, %bb.r
  %i.eh = phi i32 [ %i.eg, %bb.r ], [ %i.dr, %.thread ], [ %i.dr, %bb.q ]
  store i32 %i.eh, ptr %i.d, align 4, !tbaa !50
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #11
  %i.ei = getelementptr inbounds nuw i8, ptr %0, i64 208 ; 4 uses
  %i.ej = load i32, ptr %i.ei, align 8, !tbaa !38 ; 3 uses
  %i.ek = getelementptr inbounds nuw i8, ptr %0, i64 212 ; 2 uses
  %i.el = load i32, ptr %i.ek, align 4, !tbaa !39
  %i.em = sdiv i32 %i.ej, %i.el
  store i32 %i.em, ptr %i.e, align 4, !tbaa !50
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #11
  %i.en = getelementptr inbounds nuw i8, ptr %0, i64 216
  %i.eo = load i32, ptr %i.en, align 8, !tbaa !40
  %i.ep = sdiv i32 %i.eo, %i.ej
  store i32 %i.ep, ptr %i.f, align 4, !tbaa !50
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #11
  %i.eq = getelementptr inbounds nuw i8, ptr %7, i64 8 ; 2 uses
  %i.er = getelementptr inbounds nuw i8, ptr %7, i64 32 ; 3 uses
  %i.es = getelementptr inbounds nuw i8, ptr %7, i64 56
  %i.et = getelementptr inbounds nuw i8, ptr %7, i64 64 ; 2 uses
  store i64 0, ptr %i.et, align 8, !tbaa !21
  %i.eu = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 8 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(28) %7, i8 0, i64 28, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(28) %i.er, i8 0, i64 28, i1 false)
  %i.ev = load ptr, ptr %i.eu, align 8, !tbaa !59
  invoke void @_ZN4ncnn3Mat6createEiimPNS_9AllocatorE(ptr noundef nonnull align 8 dereferenceable(72) %7, i32 noundef %i.dp, i32 noundef %i.ej, i64 noundef 4, ptr noundef %i.ev)
          to label %bb.t unwind label %bb.u

bb.t:                                             ; preds = %bb.s
  %i.ew = load ptr, ptr %7, align 8, !tbaa !20
  %i.ex = icmp eq ptr %i.ew, null
  br i1 %i.ex, label %_ZNK4ncnn3Mat5emptyEv.exit305.thread, label %_ZNK4ncnn3Mat5emptyEv.exit305

_ZNK4ncnn3Mat5emptyEv.exit305:                    ; preds = %bb.t
  %i.ey = load i64, ptr %i.et, align 8, !tbaa !21
  %i.ez = load i32, ptr %i.es, align 8, !tbaa !51
  %i.fa = sext i32 %i.ez to i64
  %i.fb = mul i64 %i.ey, %i.fa
  %i.fc = icmp eq i64 %i.fb, 0
  br i1 %i.fc, label %_ZNK4ncnn3Mat5emptyEv.exit305.thread, label %bb.v

bb.u:                                             ; preds = %bb.s
  %i.fd = landingpad { ptr, i32 }
          cleanup
  br label %bb.ia

bb.v:                                             ; preds = %_ZNK4ncnn3Mat5emptyEv.exit305
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #11
  %i.fe = getelementptr inbounds nuw i8, ptr %8, i64 8 ; 2 uses
  %i.ff = getelementptr inbounds nuw i8, ptr %8, i64 32 ; 3 uses
  %i.fg = getelementptr inbounds nuw i8, ptr %8, i64 64
  store i64 0, ptr %i.fg, align 8, !tbaa !21
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(28) %8, i8 0, i64 28, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(28) %i.ff, i8 0, i64 28, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g) #11
  %.val313 = load ptr, ptr %i.eu, align 8, !tbaa !59
  invoke fastcc void @_ZN4ncnnL19dynamic_quantize_2dERKNS_3MatERS0_RfRKNS_6OptionE(ptr noundef nonnull align 8 dereferenceable(72) %i.m, ptr noundef nonnull align 8 dereferenceable(72) %8, ptr noundef nonnull align 4 dereferenceable(4) %i.g, ptr %.val313)
          to label %bb.w unwind label %bb.ak

bb.w:                                             ; preds = %bb.v
  %i.fh = getelementptr inbounds nuw i8, ptr %3, i64 4 ; 10 uses
  %i.fi = load i32, ptr %i.fh, align 4, !tbaa !60
  call void @__kmpc_push_num_threads(ptr nonnull @2, i32 %i.j, i32 %i.fi)
  call void (ptr, i32, ptr, ...) @__kmpc_fork_call(ptr nonnull @2, i32 6, ptr nonnull @_ZNK4ncnn18MultiHeadAttention12forward_int8ERKSt6vectorINS_3MatESaIS2_EERS4_RKNS_6OptionE.omp_outlined, ptr nonnull %i.a, ptr nonnull %0, ptr nonnull %8, ptr nonnull %i.f, ptr nonnull %i.g, ptr nonnull %7)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #11
  %i.fj = load ptr, ptr %i.fe, align 8, !tbaa !18 ; 2 uses
  %.not.i = icmp eq ptr %i.fj, null
  br i1 %.not.i, label %_ZN4ncnn3MatD2Ev.exit111, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.fk = atomicrmw add ptr %i.fj, i32 -1 acq_rel, align 4
  %i.fl = icmp eq i32 %i.fk, 1
  br i1 %i.fl, label %bb.y, label %_ZN4ncnn3MatD2Ev.exit111

bb.y:                                             ; preds = %bb.x
  %i.fm = load ptr, ptr %i.ff, align 8, !tbaa !19 ; 3 uses
  %.not3.i = icmp eq ptr %i.fm, null
  %i.fn = load ptr, ptr %8, align 8, !tbaa !20    ; 3 uses
  br i1 %.not3.i, label %bb.aa, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.fo = load ptr, ptr %i.fm, align 8, !tbaa !12
  %i.fp = getelementptr inbounds nuw i8, ptr %i.fo, i64 24
  %i.fq = load ptr, ptr %i.fp, align 8
  invoke void %i.fq(ptr noundef nonnull align 8 dereferenceable(8) %i.fm, ptr noundef %i.fn)
          to label %_ZN4ncnn3MatD2Ev.exit111 unwind label %bb.ac, !inline_history !0

bb.aa:                                            ; preds = %bb.y
  %.not.i273 = icmp eq ptr %i.fn, null
  br i1 %.not.i273, label %_ZN4ncnn3MatD2Ev.exit111, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  call void @free(ptr noundef nonnull %i.fn) #11
  br label %_ZN4ncnn3MatD2Ev.exit111

bb.ac:                                            ; preds = %bb.z
  %i.fr = landingpad { ptr, i32 }
          catch ptr null
  %i.fs = extractvalue { ptr, i32 } %i.fr, 0
  call void @__clang_call_terminate(ptr %i.fs) #16
  unreachable

_ZN4ncnn3MatD2Ev.exit111:                         ; preds = %bb.x, %bb.w, %bb.z, %bb.aa, %bb.ab
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #11
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #11
  %i.ft = getelementptr inbounds nuw i8, ptr %9, i64 8 ; 4 uses
  %i.fu = getelementptr inbounds nuw i8, ptr %9, i64 16 ; 2 uses
  %i.fv = getelementptr inbounds nuw i8, ptr %9, i64 24 ; 2 uses
  %i.fw = getelementptr inbounds nuw i8, ptr %9, i64 32 ; 6 uses
  %i.fx = getelementptr inbounds nuw i8, ptr %9, i64 40 ; 2 uses
end_hunk_1

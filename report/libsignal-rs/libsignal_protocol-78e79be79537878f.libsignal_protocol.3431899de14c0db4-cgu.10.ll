Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/libsignal-rs/original/libsignal_protocol-78e79be79537878f.libsignal_protocol.3431899de14c0db4-cgu.10?download=true
inline.NumInlined: 186
inline.NumDeleted: 96
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0_@_RNvMs7_NtCs4tP8yUXWbFU_18libsignal_protocol13sealed_senderNtB5_25SealedSenderV2SentMessage5parse:bb.a
  %i.g = alloca [32 x i8], align 8                ; 6 uses
  %i.h = alloca [48 x i8], align 8                ; 8 uses
  %i.i = alloca [48 x i8], align 8                ; 7 uses
  %i.j = alloca [24 x i8], align 8                ; 6 uses
  %i.k = alloca [32 x i8], align 8                ; 5 uses
  %i.l = alloca [48 x i8], align 8                ; 5 uses
  %i.m = alloca [32 x i8], align 8                ; 7 uses
  %i.n = alloca [24 x i8], align 8                ; 6 uses
  %i.o = alloca [24 x i8], align 8                ; 6 uses
  %i.p = alloca [40 x i8], align 8                ; 8 uses
  %i.q = alloca [24 x i8], align 8                ; 14 uses
  %i.r = alloca [17 x i8], align 1                ; 3 uses
  %i.s = alloca [48 x i8], align 8                ; 7 uses
  %.sroa.10 = alloca [16 x i8], align 1           ; 6 uses
  %.sroa.7.sroa.8 = alloca [16 x i8], align 1     ; 6 uses
  %i.t = alloca [16 x i8], align 1                ; 5 uses
  %i.u = alloca [72 x i8], align 8                ; 23 uses
  %i.v = icmp eq i64 %2, 0
  br i1 %i.v, label %bb.b, label %bb.f

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o)
  call void @_RNvMs5_NtCs6i54tJFfzR_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs4tP8yUXWbFU_18libsignal_protocol(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.o, i64 noundef 17, i1 noundef zeroext false, i64 noundef 1, i64 noundef 1)
  %i.w = load i64, ptr %i.o, align 8, !range !10, !noundef !5
  %i.x = trunc nuw i64 %i.w to i1
  %i.y = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  %i.z = load i64, ptr %i.y, align 8, !range !13, !noundef !5 ; 3 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %i.o, i64 16 ; 2 uses
  br i1 %i.x, label %bb.c, label %bb.d, !prof !11

bb.c:                                             ; preds = %bb.b
  %i.ab = load i64, ptr %i.aa, align 8
  tail call void @_RNvNtCs6i54tJFfzR_5alloc7raw_vec12handle_error(i64 noundef %i.z, i64 %i.ab) #22
  unreachable

bb.d:                                             ; preds = %bb.b
  %i.ac = load ptr, ptr %i.aa, align 8, !nonnull !5, !noundef !5 ; 2 uses
  %i.ad = icmp samesign ugt i64 %i.z, 16
  tail call void @llvm.assume(i1 %i.ad)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o)
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(17) %i.ac, ptr noundef nonnull align 1 dereferenceable(17) @12, i64 17, i1 false)
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 -9223372036854775781, ptr %i.ae, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.z, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.4.sroa.4.0..sroa.4.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr %i.ac, ptr %.sroa.4.sroa.4.0..sroa.4.0..sroa_idx.sroa_idx, align 8
  %.sroa.4.sroa.5.0..sroa.4.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i64 17, ptr %.sroa.4.sroa.5.0..sroa.4.0..sroa_idx.sroa_idx, align 8
  store i64 -1, ptr %0, align 8
  br label %bb.e

bb.e:                                             ; preds = %bb.m, %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtCsbPnb37KEv9e_8indexmap3map8IndexMapNtNtCsbwPL7qM37dJ_14libsignal_core7address9ServiceIdNtNtCs4tP8yUXWbFU_18libsignal_protocol13sealed_sender34SealedSenderV2SentMessageRecipientEEB2a_.exit, %bb.g, %bb.v, %bb.d
  ret void

bb.f:                                             ; preds = %bb.a
  %i.af = load i8, ptr %1, align 1, !noundef !5   ; 4 uses
  %i.ag = and i8 %i.af, -2
  %switch = icmp eq i8 %i.ag, 34
  br i1 %switch, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 -9223372036854775780, ptr %i.ah, align 8
  %.sroa.42.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i8 %i.af, ptr %.sroa.42.0..sroa_idx, align 8
  store i64 -1, ptr %0, align 8
  br label %bb.e

bb.h:                                             ; preds = %bb.f
  %i.ai = add nsw i64 %2, -1                      ; 5 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %1, i64 1 ; 2 uses
  %i.ak = tail call { i64, ptr } @_RINvNtNtCs43OB2dM8s8d_5prost8encoding16length_delimiter23decode_length_delimiterRShECs4tP8yUXWbFU_18libsignal_protocol(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.aj, i64 noundef %i.ai), !noalias !118 ; 2 uses
  %i.al = extractvalue { i64, ptr } %i.ak, 0
  %i.am = extractvalue { i64, ptr } %i.ak, 1      ; 5 uses
  %i.an = ptrtoint ptr %i.am to i64               ; 3 uses
  %i.ao = trunc nuw i64 %i.al to i1
  br i1 %i.ao, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.am) ]
  tail call fastcc void @_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtCs43OB2dM8s8d_5prost5error11DecodeErrorECs4tP8yUXWbFU_18libsignal_protocol(ptr nonnull %i.am), !noalias !118
  br label %bb.m

bb.j:                                             ; preds = %bb.h
  %i.ap = tail call noundef i64 @_RNvNtNtCs43OB2dM8s8d_5prost8encoding16length_delimiter20length_delimiter_len(i64 noundef %i.an), !noalias !118 ; 4 uses
  %i.aq = icmp ugt i64 %i.ap, %i.ai
  br i1 %i.aq, label %bb.l, label %bb.k, !prof !11

bb.k:                                             ; preds = %bb.j
  %i.ar = sub nuw nsw i64 %i.ai, %i.ap            ; 2 uses
  %i.as = getelementptr inbounds nuw i8, ptr %i.aj, i64 %i.ap ; 2 uses
  %i.at = icmp ugt ptr %i.am, inttoptr (i64 4294967295 to ptr)
  br i1 %i.at, label %bb.m, label %bb.n

bb.l:                                             ; preds = %bb.j
  tail call void @_RNvNtNtCsgxBkk5gSRhY_4core5slice5index16slice_index_fail(i64 noundef %i.ap, i64 noundef %i.ai, i64 noundef %i.ai, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @43) #21, !noalias !118
  unreachable

bb.m:                                             ; preds = %bb.i, %bb.k
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 -9223372036854775806, ptr %i.au, align 8
  store i64 -1, ptr %0, align 8
  br label %bb.e

bb.n:                                             ; preds = %bb.k
  call void @llvm.lifetime.start.p0(ptr nonnull %i.u)
  %.sroa.0.0.i = tail call noundef i64 @llvm.umin.i64(i64 %i.an, i64 6000) ; 3 uses
  %i.av = tail call { i64, i64 } @_RINvMs2_NtNtCs9k3SxhrAWiO_3std6thread5localINtB6_8LocalKeyINtNtCsgxBkk5gSRhY_4core4cell4CellTyyEEE4withNCNvMNtNtBa_4hash6randomNtB1I_11RandomState3new0B21_ECs4tP8yUXWbFU_18libsignal_protocol(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8) @32) ; 2 uses
  %i.aw = extractvalue { i64, i64 } %i.av, 0      ; 2 uses
  %i.ax = extractvalue { i64, i64 } %i.av, 1      ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !119)
  %i.ay = icmp eq ptr %i.am, null
  br i1 %i.ay, label %_RNvMs1_NtCsbPnb37KEv9e_8indexmap3mapINtB5_8IndexMapNtNtCsbwPL7qM37dJ_14libsignal_core7address9ServiceIdNtNtCs4tP8yUXWbFU_18libsignal_protocol13sealed_sender34SealedSenderV2SentMessageRecipientE24with_capacity_and_hasherB1H_.exit.thread, label %bb.o

_RNvMs1_NtCsbPnb37KEv9e_8indexmap3mapINtB5_8IndexMapNtNtCsbwPL7qM37dJ_14libsignal_core7address9ServiceIdNtNtCs4tP8yUXWbFU_18libsignal_protocol13sealed_sender34SealedSenderV2SentMessageRecipientE24with_capacity_and_hasherB1H_.exit.thread: ; preds = %bb.n
  store i64 0, ptr %i.u, align 8, !alias.scope !119
  %.sroa.42.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.u, i64 8
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.42.0..sroa_idx.i, align 8, !alias.scope !119
  %.sroa.53.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.u, i64 16
  store i64 0, ptr %.sroa.53.0..sroa_idx.i, align 8, !alias.scope !119
  %.sroa.6.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.u, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.6.0..sroa_idx.i, ptr noundef nonnull align 8 dereferenceable(32) @21, i64 32, i1 false)
  %i.az = getelementptr inbounds nuw i8, ptr %i.u, i64 56
  store i64 %i.aw, ptr %i.az, align 8, !alias.scope !119
  %i.ba = getelementptr inbounds nuw i8, ptr %i.u, i64 64
  store i64 %i.ax, ptr %i.ba, align 8, !alias.scope !119
  br label %._crit_edge

bb.o:                                             ; preds = %bb.n
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k), !noalias !120
  call void @_RNvMs6_NtCs454tfXuUxcf_9hashbrown3rawINtB5_8RawTablejE16with_capacity_inCs4tP8yUXWbFU_18libsignal_protocol(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %i.k, i64 noundef range(i64 1, 0) %.sroa.0.0.i), !noalias !120
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j), !noalias !120
  invoke void @_RNvMs5_NtCs6i54tJFfzR_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs4tP8yUXWbFU_18libsignal_protocol(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.j, i64 noundef range(i64 1, 0) %.sroa.0.0.i, i1 noundef zeroext false, i64 noundef 8, i64 noundef 72)
          to label %bb.q unwind label %bb.p, !noalias !120

bb.p:                                             ; preds = %bb.r, %bb.o
  %i.bb = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXsf_NtCs454tfXuUxcf_9hashbrown3rawINtB5_8RawTablejENtNtNtCsgxBkk5gSRhY_4core3ops4drop4Drop4dropCs4tP8yUXWbFU_18libsignal_protocol(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.k)
          to label %common.resume unwind label %bb.t, !noalias !120

bb.q:                                             ; preds = %bb.o
  %i.bc = load i64, ptr %i.j, align 8, !range !10, !noalias !120, !noundef !5
  %i.bd = trunc nuw i64 %i.bc to i1
  %i.be = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  %i.bf = load i64, ptr %i.be, align 8, !range !13, !noalias !120, !noundef !5 ; 3 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %i.j, i64 16 ; 2 uses
  br i1 %i.bd, label %bb.r, label %.lr.ph, !prof !11

bb.r:                                             ; preds = %bb.q
  %i.bh = load i64, ptr %i.bg, align 8, !noalias !120
  invoke void @_RNvNtCs6i54tJFfzR_5alloc7raw_vec12handle_error(i64 noundef %i.bf, i64 %i.bh) #22
          to label %bb.s unwind label %bb.p, !noalias !120

bb.s:                                             ; preds = %bb.r
  unreachable

bb.t:                                             ; preds = %bb.p
  %i.bi = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsgxBkk5gSRhY_4core9panicking16panic_in_cleanup() #18, !noalias !120
  unreachable

common.resume:                                    ; preds = %.body268, %bb.y, %bb.z, %bb.p
  %common.resume.op = phi { ptr, i32 } [ %i.cf, %bb.y ], [ %i.bb, %bb.p ], [ %i.cg, %bb.z ], [ %.pn, %.body268 ]
  resume { ptr, i32 } %common.resume.op

.lr.ph:                                           ; preds = %bb.q
  %i.bj = load ptr, ptr %i.bg, align 8, !noalias !120, !nonnull !5, !noundef !5
  %i.bk = icmp ule i64 %.sroa.0.0.i, %i.bf
  tail call void @llvm.assume(i1 %i.bk)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !noalias !120
  %.sroa.6.0..sroa_idx7.i = getelementptr inbounds nuw i8, ptr %i.u, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.6.0..sroa_idx7.i, ptr noundef nonnull align 8 dereferenceable(32) %i.k, i64 32, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k), !noalias !120
  store i64 %i.bf, ptr %i.u, align 8, !alias.scope !119
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.u, i64 8
  store ptr %i.bj, ptr %.sroa.4.0..sroa_idx.i, align 8, !alias.scope !119
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.u, i64 16
  store i64 0, ptr %.sroa.5.0..sroa_idx.i, align 8, !alias.scope !119
  %i.bl = getelementptr inbounds nuw i8, ptr %i.u, i64 56
  store i64 %i.aw, ptr %i.bl, align 8, !alias.scope !119
  %i.bm = getelementptr inbounds nuw i8, ptr %i.u, i64 64
  store i64 %i.ax, ptr %i.bm, align 8, !alias.scope !119
  %i.bn = icmp eq i8 %i.af, 34
  %i.bo = getelementptr inbounds nuw i8, ptr %i.g, i64 4
  %.sroa.624.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.r, i64 1 ; 2 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %i.q, i64 8 ; 3 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %i.q, i64 16 ; 5 uses
  %i.br = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  %i.bs = getelementptr inbounds nuw i8, ptr %i.l, i64 16
  %i.bt = getelementptr inbounds nuw i8, ptr %i.m, i64 16
  %i.bu = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  %i.bv = getelementptr inbounds nuw i8, ptr %i.m, i64 24
  %i.bw = getelementptr inbounds nuw i8, ptr %i.l, i64 24
  %i.bx = getelementptr inbounds nuw i8, ptr %i.p, i64 24
  %i.by = getelementptr inbounds nuw i8, ptr %i.p, i64 32
  %i.bz = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  %i.ca = getelementptr inbounds nuw i8, ptr %i.a, i64 48
  %smax = tail call i64 @llvm.smax.i64(i64 %i.an, i64 1)
  br label %bb.u

._crit_edge:                                      ; preds = %bb.ch, %_RNvMs1_NtCsbPnb37KEv9e_8indexmap3mapINtB5_8IndexMapNtNtCsbwPL7qM37dJ_14libsignal_core7address9ServiceIdNtNtCs4tP8yUXWbFU_18libsignal_protocol13sealed_sender34SealedSenderV2SentMessageRecipientE24with_capacity_and_hasherB1H_.exit.thread
  %.sroa.17.0.lcssa = phi i64 [ %i.ar, %_RNvMs1_NtCsbPnb37KEv9e_8indexmap3mapINtB5_8IndexMapNtNtCsbwPL7qM37dJ_14libsignal_core7address9ServiceIdNtNtCs4tP8yUXWbFU_18libsignal_protocol13sealed_sender34SealedSenderV2SentMessageRecipientE24with_capacity_and_hasherB1H_.exit.thread ], [ %.sroa.17.4, %bb.ch ] ; 2 uses
  %.sroa.0.0.lcssa = phi ptr [ %i.as, %_RNvMs1_NtCsbPnb37KEv9e_8indexmap3mapINtB5_8IndexMapNtNtCsbwPL7qM37dJ_14libsignal_core7address9ServiceIdNtNtCs4tP8yUXWbFU_18libsignal_protocol13sealed_sender34SealedSenderV2SentMessageRecipientE24with_capacity_and_hasherB1H_.exit.thread ], [ %.sroa.0.4, %bb.ch ]
  %i.cb = icmp ult i64 %.sroa.17.0.lcssa, 32
  br i1 %i.cb, label %bb.w, label %bb.v

bb.u:                                             ; preds = %.lr.ph, %bb.ch
  %.sroa.0202.0485 = phi i64 [ 0, %.lr.ph ], [ %i.cc, %bb.ch ]
  %.sroa.0.0484 = phi ptr [ %i.as, %.lr.ph ], [ %.sroa.0.4, %bb.ch ] ; 5 uses
  %.sroa.17.0483 = phi i64 [ %i.ar, %.lr.ph ], [ %.sroa.17.4, %bb.ch ] ; 4 uses
  %i.cc = add nuw nsw i64 %.sroa.0202.0485, 1     ; 2 uses
  br i1 %i.bn, label %bb.ac, label %bb.ae

bb.v:                                             ; preds = %._crit_edge
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %0, ptr noundef nonnull align 8 dereferenceable(72) %i.u, i64 72, i1 false)
  %.sroa.4103.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 72
  store ptr %1, ptr %.sroa.4103.0..sroa_idx, align 8
  %.sroa.5104.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 80
  store i64 %2, ptr %.sroa.5104.0..sroa_idx, align 8
  %.sroa.6105.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 88
  store ptr %.sroa.0.0.lcssa, ptr %.sroa.6105.0..sroa_idx, align 8
  %.sroa.7106.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 96
  store i64 %.sroa.17.0.lcssa, ptr %.sroa.7106.0..sroa_idx, align 8
  %.sroa.8107.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 104
  store i8 %i.af, ptr %.sroa.8107.0..sroa_idx, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.u)
  br label %bb.e

bb.w:                                             ; preds = %._crit_edge
  %i.cd = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 -9223372036854775806, ptr %i.cd, align 8
  store i64 -1, ptr %0, align 8
  br label %bb.x

bb.x:                                             ; preds = %bb.aj, %.loopexit396, %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtCs6i54tJFfzR_5alloc3vec3VecTNtNtCsbwPL7qM37dJ_14libsignal_core7address8DeviceIdtEEECs4tP8yUXWbFU_18libsignal_protocol.exit, %bb.ag, %bb.w
  %i.ce = getelementptr inbounds nuw i8, ptr %i.u, i64 24
  invoke void @_RNvXsf_NtCs454tfXuUxcf_9hashbrown3rawINtB5_8RawTablejENtNtNtCsgxBkk5gSRhY_4core3ops4drop4Drop4dropCs4tP8yUXWbFU_18libsignal_protocol(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.ce)
          to label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtCs454tfXuUxcf_9hashbrown5table9HashTablejEECs4tP8yUXWbFU_18libsignal_protocol.exit.i.i219 unwind label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.cf = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtCs6i54tJFfzR_5alloc3vec3VecINtCsbPnb37KEv9e_8indexmap6BucketNtNtCsbwPL7qM37dJ_14libsignal_core7address9ServiceIdNtNtCs4tP8yUXWbFU_18libsignal_protocol13sealed_sender34SealedSenderV2SentMessageRecipientEEEB2y_(ptr noalias nofree noundef nonnull align 8 dereferenceable(72) %i.u) #19
          to label %common.resume unwind label %bb.ab

_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtCs454tfXuUxcf_9hashbrown5table9HashTablejEECs4tP8yUXWbFU_18libsignal_protocol.exit.i.i219: ; preds = %bb.x
  invoke void @_RNvXso_NtCs6i54tJFfzR_5alloc3vecINtB5_3VecINtCsbPnb37KEv9e_8indexmap6BucketNtNtCsbwPL7qM37dJ_14libsignal_core7address9ServiceIdNtNtCs4tP8yUXWbFU_18libsignal_protocol13sealed_sender34SealedSenderV2SentMessageRecipientEENtNtNtCsgxBkk5gSRhY_4core3ops4drop4Drop4dropB25_(ptr noalias nofree noundef nonnull align 8 dereferenceable(72) %i.u)
          to label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtCsbPnb37KEv9e_8indexmap3map8IndexMapNtNtCsbwPL7qM37dJ_14libsignal_core7address9ServiceIdNtNtCs4tP8yUXWbFU_18libsignal_protocol13sealed_sender34SealedSenderV2SentMessageRecipientEEB2a_.exit unwind label %bb.z

bb.z:                                             ; preds = %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtCs454tfXuUxcf_9hashbrown5table9HashTablejEECs4tP8yUXWbFU_18libsignal_protocol.exit.i.i219
  %i.cg = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs6i54tJFfzR_5alloc7raw_vecINtB5_6RawVecINtCsbPnb37KEv9e_8indexmap6BucketNtNtCsbwPL7qM37dJ_14libsignal_core7address9ServiceIdNtNtCs4tP8yUXWbFU_18libsignal_protocol13sealed_sender34SealedSenderV2SentMessageRecipientEENtNtNtCsgxBkk5gSRhY_4core3ops4drop4Drop4dropB2c_(ptr noalias nofree noundef nonnull align 8 dereferenceable(72) %i.u)
          to label %common.resume unwind label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.ch = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsgxBkk5gSRhY_4core9panicking16panic_in_cleanup() #18
  unreachable

bb.ab:                                            ; preds = %bb.y
  %i.ci = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsgxBkk5gSRhY_4core9panicking16panic_in_cleanup() #18
  unreachable

_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtCsbPnb37KEv9e_8indexmap3map8IndexMapNtNtCsbwPL7qM37dJ_14libsignal_core7address9ServiceIdNtNtCs4tP8yUXWbFU_18libsignal_protocol13sealed_sender34SealedSenderV2SentMessageRecipientEEB2a_.exit: ; preds = %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtCs454tfXuUxcf_9hashbrown5table9HashTablejEECs4tP8yUXWbFU_18libsignal_protocol.exit.i.i219
  call void @_RNvXs1_NtCs6i54tJFfzR_5alloc7raw_vecINtB5_6RawVecINtCsbPnb37KEv9e_8indexmap6BucketNtNtCsbwPL7qM37dJ_14libsignal_core7address9ServiceIdNtNtCs4tP8yUXWbFU_18libsignal_protocol13sealed_sender34SealedSenderV2SentMessageRecipientEENtNtNtCsgxBkk5gSRhY_4core3ops4drop4Drop4dropB2c_(ptr noalias nofree noundef nonnull align 8 dereferenceable(72) %i.u)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.u)
  br label %bb.e

bb.ac:                                            ; preds = %bb.u
  call void @llvm.lifetime.start.p0(ptr nonnull %i.t)
  %i.cj = icmp ugt i64 %.sroa.17.0483, 15
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !noalias !121
  br i1 %i.cj, label %bb.ad, label %bb.ag

bb.ad:                                            ; preds = %bb.ac
  store i64 -9223372036854775806, ptr %i.i, align 8, !noalias !121
  invoke fastcc void @_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtCs4tP8yUXWbFU_18libsignal_protocol5error19SignalProtocolErrorEBF_(ptr noalias nofree noundef align 8 dereferenceable(48) %i.i)
          to label %bb.ah unwind label %.loopexit391

bb.ae:                                            ; preds = %bb.u
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.7.sroa.8)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.10)
  %i.ck = icmp ugt i64 %.sroa.17.0483, 16
  br i1 %i.ck, label %bb.af, label %bb.aj

bb.af:                                            ; preds = %bb.ae
  %i.cl = getelementptr inbounds nuw i8, ptr %.sroa.0.0484, i64 17
  %i.cm = add i64 %.sroa.17.0483, -17
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !noalias !122
  store i64 -9223372036854775806, ptr %i.h, align 8, !noalias !122
  invoke fastcc void @_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtCs4tP8yUXWbFU_18libsignal_protocol5error19SignalProtocolErrorEBF_(ptr noalias nofree noundef align 8 dereferenceable(48) %i.h)
          to label %bb.ak unwind label %.loopexit391

.body268:                                         ; preds = %.body.loopexit, %.body.loopexit.split-lp, %.loopexit391, %.loopexit.split-lp392, %bb.cj, %bb.bu, %bb.bq, %bb.bo, %.loopexit.split-lp
  %.pn = phi { ptr, i32 } [ %lpad.loopexit.split-lp394, %.loopexit.split-lp392 ], [ %lpad.phi, %.loopexit.split-lp ], [ %i.go, %bb.cj ], [ %lpad.phi406, %bb.bq ], [ %i.fm, %bb.bu ], [ %i.ff, %bb.bo ], [ %lpad.loopexit393, %.loopexit391 ], [ %lpad.loopexit400, %.body.loopexit ], [ %lpad.loopexit.split-lp, %.body.loopexit.split-lp ]
  invoke fastcc void @_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtCsbPnb37KEv9e_8indexmap3map8IndexMapNtNtCsbwPL7qM37dJ_14libsignal_core7address9ServiceIdNtNtCs4tP8yUXWbFU_18libsignal_protocol13sealed_sender34SealedSenderV2SentMessageRecipientEEB2a_(ptr noalias nofree noundef align 8 dereferenceable(72) %i.u) #19
          to label %common.resume unwind label %bb.cm

.loopexit391:                                     ; preds = %bb.an, %bb.ad, %bb.af, %bb.ak
  %lpad.loopexit393 = landingpad { ptr, i32 }
          cleanup
  br label %.body268

.loopexit.split-lp392:                            ; preds = %bb.ck
  %lpad.loopexit.split-lp394 = landingpad { ptr, i32 }
          cleanup
  br label %.body268

bb.ag:                                            ; preds = %bb.ac
  %.sroa.433.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  %.sroa.635.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.i, i64 24
  %.sroa.635.0.copyload.i = load i64, ptr %.sroa.635.0..sroa_idx.i, align 8, !noalias !121
  %i.cn = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.sroa.4132.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.co = load <2 x ptr>, ptr %.sroa.433.0..sroa_idx.i, align 8, !noalias !121
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !noalias !121
  store i64 -9223372036854775806, ptr %i.cn, align 8
  store <2 x ptr> %i.co, ptr %.sroa.4132.0..sroa_idx, align 8
  %.sroa.5133.sroa.4.0..sroa.5133.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i64 %.sroa.635.0.copyload.i, ptr %.sroa.5133.sroa.4.0..sroa.5133.0..sroa_idx.sroa_idx, align 8
  store i64 -1, ptr %0, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t)
  br label %bb.x

bb.ah:                                            ; preds = %bb.ad
  %i.cp = add i64 %.sroa.17.0483, -16
  %i.cq = getelementptr inbounds nuw i8, ptr %.sroa.0.0484, i64 16
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !noalias !121
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %i.t, ptr noundef nonnull align 1 dereferenceable(16) %.sroa.0.0484, i64 16, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %.sroa.624.sroa.7.0..sroa_idx, ptr noundef nonnull align 1 dereferenceable(16) %i.t, i64 16, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t)
  br label %bb.ai

bb.ai:                                            ; preds = %bb.ao, %bb.ah
  %.sink = phi i8 [ %i.cv, %bb.ao ], [ 0, %bb.ah ]
  %.sroa.17.1 = phi i64 [ %i.cm, %bb.ao ], [ %i.cp, %bb.ah ] ; 2 uses
  %.sroa.0.1 = phi ptr [ %i.cl, %bb.ao ], [ %i.cq, %bb.ah ]
  store i8 %.sink, ptr %i.r, align 1
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q)
  store i64 0, ptr %i.q, align 8
  store ptr inttoptr (i64 2 to ptr), ptr %i.bp, align 8
  store i64 0, ptr %i.bq, align 8
  %.not.i232672 = icmp eq i64 %.sroa.17.1, 0
  br i1 %.not.i232672, label %._crit_edge677, label %.lr.ph676

bb.aj:                                            ; preds = %bb.ae
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !noalias !122
  %.sroa.433.0..sroa_idx.i220 = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  %.sroa.635.0..sroa_idx.i224 = getelementptr inbounds nuw i8, ptr %i.h, i64 24
  %.sroa.635.0.copyload.i225 = load i64, ptr %.sroa.635.0..sroa_idx.i224, align 8, !noalias !122
  %i.cr = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.sroa.4141.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.cs = load <2 x ptr>, ptr %.sroa.433.0..sroa_idx.i220, align 8, !noalias !122
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !122
  store i64 -9223372036854775806, ptr %i.cr, align 8
  store <2 x ptr> %i.cs, ptr %.sroa.4141.0..sroa_idx, align 8
  %.sroa.5142.sroa.4.0..sroa.5142.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i64 %.sroa.635.0.copyload.i225, ptr %.sroa.5142.sroa.4.0..sroa.5142.0..sroa_idx.sroa_idx, align 8
  store i64 -1, ptr %0, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.10)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.7.sroa.8)
  br label %bb.x

bb.ak:                                            ; preds = %bb.af
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !122
  call void @llvm.experimental.noalias.scope.decl(metadata !123)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !124
  %i.ct = getelementptr inbounds nuw i8, ptr %.sroa.0.0484, i64 1
  invoke void @_RNvMNtCsS4eg1WQ3uw_4uuid7builderNtB4_4Uuid10from_slice(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %i.g, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.ct, i64 noundef 16)
          to label %.noexc231 unwind label %.loopexit391

.noexc231:                                        ; preds = %bb.ak
  %i.cu = load i32, ptr %i.g, align 8, !range !15, !noalias !124, !noundef !5
  %.not.i = icmp eq i32 %i.cu, -1
  br i1 %.not.i, label %bb.am, label %bb.al

bb.al:                                            ; preds = %.noexc231
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !124
  br label %.loopexit396

bb.am:                                            ; preds = %.noexc231
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %i.f, ptr noundef nonnull align 4 dereferenceable(16) %i.bo, i64 16, i1 false), !noalias !124
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !124
  %i.cv = load i8, ptr %.sroa.0.0484, align 1, !alias.scope !123, !noalias !125, !noundef !5 ; 2 uses
  %switch610 = icmp ult i8 %i.cv, 2
  br i1 %switch610, label %bb.an, label %.loopexit396

bb.an:                                            ; preds = %bb.am
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %.sroa.10, ptr noundef nonnull align 1 dereferenceable(16) %i.f, i64 16, i1 false), !noalias !123
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.s)
  store i64 -9223372036854775806, ptr %i.s, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %.sroa.7.sroa.8, ptr noundef nonnull align 1 dereferenceable(16) %.sroa.10, i64 16, i1 false)
  invoke fastcc void @_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtCs4tP8yUXWbFU_18libsignal_protocol5error19SignalProtocolErrorEBF_(ptr noalias nofree noundef align 8 dereferenceable(48) %i.s)
          to label %bb.ao unwind label %.loopexit391

.loopexit396:                                     ; preds = %bb.am, %bb.al
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.s)
  %.sroa.4144.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.s, i64 8
  %.sroa.4144.sroa.0.0.copyload = load i8, ptr %.sroa.4144.0..sroa_idx, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.10)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.7.sroa.8)
  %i.cw = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 -9223372036854775806, ptr %i.cw, align 8
end_hunk_0
begin_hunk_1_@_RNvMs7_NtCs4tP8yUXWbFU_18libsignal_protocol13sealed_senderNtB5_25SealedSenderV2SentMessage5parse:bb.a

bb.bi:                                            ; preds = %bb.bh
  %.sroa.0.0.i.i.i.i = call noundef i64 @llvm.umin.i64(i64 %i.et, i64 128102389400760775)
  %i.ev = sub nsw i64 %.sroa.0.0.i.i.i.i, %i.em   ; 2 uses
  %i.ew = icmp ult i64 %i.et, %i.em
  br i1 %i.ew, label %bb.bl, label %bb.bk

bb.bj:                                            ; preds = %bb.bh
  invoke void @_RNvNtNtCsgxBkk5gSRhY_4core9panicking11panic_const24panic_const_add_overflow(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @39) #21
          to label %.noexc.i.i unwind label %.loopexit.split-lp403, !noalias !138

.noexc.i.i:                                       ; preds = %bb.bj
  unreachable

bb.bk:                                            ; preds = %bb.bi
  %i.ex = icmp ugt i64 %i.ev, 1
  br i1 %i.ex, label %bb.bm, label %._crit_edge.i.i.i

bb.bl:                                            ; preds = %bb.bi
  invoke void @_RNvNtNtCsgxBkk5gSRhY_4core9panicking11panic_const24panic_const_sub_overflow(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @40) #21
          to label %.noexc4.i.i unwind label %.loopexit.split-lp403, !noalias !138

.noexc4.i.i:                                      ; preds = %bb.bl
  unreachable

._crit_edge.i.i.i:                                ; preds = %.noexc6.i.i, %bb.bk
  %i.ey = phi i64 [ %i.em, %bb.bk ], [ %.pre11.i.i, %.noexc6.i.i ]
  invoke void @_RNvMs2_NtCs6i54tJFfzR_5alloc7raw_vecNtB5_11RawVecInner13reserve_exactCs4tP8yUXWbFU_18libsignal_protocol(ptr noalias nofree noundef nonnull align 8 dereferenceable(56) %i.ec, i64 noundef %i.ey, i64 noundef 1, i64 noundef 8, i64 noundef 72)
          to label %._RNvMs_NtCsbPnb37KEv9e_8indexmap5innerINtB4_4CoreNtNtCsbwPL7qM37dJ_14libsignal_core7address9ServiceIdNtNtCs4tP8yUXWbFU_18libsignal_protocol13sealed_sender34SealedSenderV2SentMessageRecipientE15reserve_entriesB1E_.exit_crit_edge.i.i unwind label %.loopexit402, !noalias !136

._RNvMs_NtCsbPnb37KEv9e_8indexmap5innerINtB4_4CoreNtNtCsbwPL7qM37dJ_14libsignal_core7address9ServiceIdNtNtCs4tP8yUXWbFU_18libsignal_protocol13sealed_sender34SealedSenderV2SentMessageRecipientE15reserve_entriesB1E_.exit_crit_edge.i.i: ; preds = %._crit_edge.i.i.i
  %.pre.i.i = load i64, ptr %i.ej, align 8, !alias.scope !139, !noalias !140
  br label %_RNvMs_NtCsbPnb37KEv9e_8indexmap5innerINtB4_4CoreNtNtCsbwPL7qM37dJ_14libsignal_core7address9ServiceIdNtNtCs4tP8yUXWbFU_18libsignal_protocol13sealed_sender34SealedSenderV2SentMessageRecipientE15reserve_entriesB1E_.exit.i.i

bb.bm:                                            ; preds = %bb.bk
  %i.ez = invoke { i64, i64 } @_RNvMs2_NtCs6i54tJFfzR_5alloc7raw_vecNtB5_11RawVecInner17try_reserve_exactCs4tP8yUXWbFU_18libsignal_protocol(ptr noalias nofree noundef nonnull align 8 dereferenceable(56) %i.ec, i64 noundef %i.em, i64 noundef %i.ev, i64 noundef 8, i64 noundef 72)
          to label %.noexc6.i.i unwind label %.loopexit402, !noalias !136

.noexc6.i.i:                                      ; preds = %bb.bm
  %i.fa = extractvalue { i64, i64 } %i.ez, 0
  %i.fb = icmp eq i64 %i.fa, -1
  %.pre11.i.i = load i64, ptr %i.ej, align 8, !alias.scope !135, !noalias !136 ; 2 uses
  br i1 %i.fb, label %_RNvMs_NtCsbPnb37KEv9e_8indexmap5innerINtB4_4CoreNtNtCsbwPL7qM37dJ_14libsignal_core7address9ServiceIdNtNtCs4tP8yUXWbFU_18libsignal_protocol13sealed_sender34SealedSenderV2SentMessageRecipientE15reserve_entriesB1E_.exit.i.i, label %._crit_edge.i.i.i

_RNvMs_NtCsbPnb37KEv9e_8indexmap5innerINtB4_4CoreNtNtCsbwPL7qM37dJ_14libsignal_core7address9ServiceIdNtNtCs4tP8yUXWbFU_18libsignal_protocol13sealed_sender34SealedSenderV2SentMessageRecipientE15reserve_entriesB1E_.exit.i.i: ; preds = %.noexc6.i.i, %._RNvMs_NtCsbPnb37KEv9e_8indexmap5innerINtB4_4CoreNtNtCsbwPL7qM37dJ_14libsignal_core7address9ServiceIdNtNtCs4tP8yUXWbFU_18libsignal_protocol13sealed_sender34SealedSenderV2SentMessageRecipientE15reserve_entriesB1E_.exit_crit_edge.i.i, %bb.bg
  %i.fc = phi i64 [ %.pre.i.i, %._RNvMs_NtCsbPnb37KEv9e_8indexmap5innerINtB4_4CoreNtNtCsbwPL7qM37dJ_14libsignal_core7address9ServiceIdNtNtCs4tP8yUXWbFU_18libsignal_protocol13sealed_sender34SealedSenderV2SentMessageRecipientE15reserve_entriesB1E_.exit_crit_edge.i.i ], [ %.pre11.i.i, %.noexc6.i.i ], [ %i.em, %bb.bg ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !141
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.a, ptr noundef nonnull align 8 dereferenceable(40) %i.p, i64 40, i1 false), !noalias !133
  store i64 %i.ed, ptr %i.bz, align 8, !noalias !141
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(17) %i.ca, ptr noundef nonnull align 8 dereferenceable(17) %i.bw, i64 17, i1 false)
  %i.fd = load i64, ptr %i.ec, align 8, !range !9, !alias.scope !139, !noalias !140, !noundef !5
  %i.fe = icmp eq i64 %i.fc, %i.fd
  br i1 %i.fe, label %bb.bn, label %bb.bs

bb.bn:                                            ; preds = %_RNvMs_NtCsbPnb37KEv9e_8indexmap5innerINtB4_4CoreNtNtCsbwPL7qM37dJ_14libsignal_core7address9ServiceIdNtNtCs4tP8yUXWbFU_18libsignal_protocol13sealed_sender34SealedSenderV2SentMessageRecipientE15reserve_entriesB1E_.exit.i.i
  invoke void @_RNvMs4_NtCs6i54tJFfzR_5alloc7raw_vecINtB5_6RawVecINtCsbPnb37KEv9e_8indexmap6BucketNtNtCsbwPL7qM37dJ_14libsignal_core7address9ServiceIdNtNtCs4tP8yUXWbFU_18libsignal_protocol13sealed_sender34SealedSenderV2SentMessageRecipientEE8grow_oneB2c_(ptr noalias nofree noundef nonnull align 8 dereferenceable(56) %i.ec)
          to label %bb.bs unwind label %bb.bo, !noalias !140

bb.bo:                                            ; preds = %bb.bn
  %i.ff = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtCsbPnb37KEv9e_8indexmap6BucketNtNtCsbwPL7qM37dJ_14libsignal_core7address9ServiceIdNtNtCs4tP8yUXWbFU_18libsignal_protocol13sealed_sender34SealedSenderV2SentMessageRecipientEEB22_(ptr noalias nofree noundef nonnull align 8 dereferenceable(72) %i.a) #19
          to label %.body268 unwind label %bb.bp, !noalias !136

bb.bp:                                            ; preds = %bb.bo
  %i.fg = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsgxBkk5gSRhY_4core9panicking16panic_in_cleanup() #18, !noalias !136
  unreachable

.loopexit402:                                     ; preds = %._crit_edge.i.i.i, %bb.bm
  %lpad.loopexit404 = landingpad { ptr, i32 }
          cleanup
  br label %bb.bq

.loopexit.split-lp403:                            ; preds = %bb.bj, %bb.bl
  %lpad.loopexit.split-lp405 = landingpad { ptr, i32 }
          cleanup
  br label %bb.bq

bb.bq:                                            ; preds = %.loopexit.split-lp403, %.loopexit402
  %lpad.phi406 = phi { ptr, i32 } [ %lpad.loopexit404, %.loopexit402 ], [ %lpad.loopexit.split-lp405, %.loopexit.split-lp403 ]
  invoke fastcc void @_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtCs4tP8yUXWbFU_18libsignal_protocol13sealed_sender34SealedSenderV2SentMessageRecipientEBF_(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %i.b) #19
          to label %.body268 unwind label %bb.br, !noalias !142

bb.br:                                            ; preds = %bb.bq
  %i.fh = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsgxBkk5gSRhY_4core9panicking16panic_in_cleanup() #18, !noalias !142
  unreachable

bb.bs:                                            ; preds = %bb.bn, %_RNvMs_NtCsbPnb37KEv9e_8indexmap5innerINtB4_4CoreNtNtCsbwPL7qM37dJ_14libsignal_core7address9ServiceIdNtNtCs4tP8yUXWbFU_18libsignal_protocol13sealed_sender34SealedSenderV2SentMessageRecipientE15reserve_entriesB1E_.exit.i.i
  %i.fi = load ptr, ptr %i.eh, align 8, !alias.scope !139, !noalias !140, !nonnull !5, !noundef !5
  %i.fj = getelementptr inbounds nuw [72 x i8], ptr %i.fi, i64 %i.fc
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.fj, ptr noundef nonnull align 8 dereferenceable(72) %i.a, i64 72, i1 false), !noalias !136
  %i.fk = add i64 %i.fc, 1                        ; 3 uses
  store i64 %i.fk, ptr %i.ej, align 8, !alias.scope !139, !noalias !140
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !141
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !132
  %i.fl = icmp ult i64 %i.eg, %i.fk
  br i1 %i.fl, label %bb.ci, label %bb.bt

bb.bt:                                            ; preds = %bb.bs
  invoke void @_RNvNtCsgxBkk5gSRhY_4core9panicking18panic_bounds_check(i64 noundef %i.eg, i64 noundef %i.fk, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @37) #22
          to label %.noexc266 unwind label %.body.loopexit.split-lp

.noexc266:                                        ; preds = %bb.bt
  unreachable

bb.bu:                                            ; preds = %bb.bf
  %i.fm = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtCs4tP8yUXWbFU_18libsignal_protocol13sealed_sender34SealedSenderV2SentMessageRecipientEBF_(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %i.p) #19
          to label %.body268 unwind label %bb.bv, !noalias !143

bb.bv:                                            ; preds = %bb.bu
  %i.fn = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsgxBkk5gSRhY_4core9panicking16panic_in_cleanup() #18, !noalias !143
  unreachable

bb.bw:                                            ; preds = %bb.be
  %i.fo = getelementptr inbounds nuw i8, ptr %i.ec, i64 16
  %i.fp = load i64, ptr %i.fo, align 8, !noundef !5 ; 2 uses
  %i.fq = icmp ult i64 %i.ed, %i.fp
  br i1 %i.fq, label %bb.bx, label %bb.by

bb.bx:                                            ; preds = %bb.bw
  %i.fr = getelementptr inbounds nuw i8, ptr %i.ec, i64 8
  %i.fs = load ptr, ptr %i.fr, align 8, !nonnull !5, !noundef !5
  %i.ft = getelementptr inbounds nuw [72 x i8], ptr %i.fs, i64 %i.ed ; 2 uses
  %i.fu = getelementptr inbounds nuw i8, ptr %i.ft, i64 16
  %i.fv = load i64, ptr %i.fu, align 8, !noundef !5 ; 2 uses
  %i.fw = icmp ult i64 %i.fv, 2305843009213693952
  call void @llvm.assume(i1 %i.fw)
  %i.fx = icmp eq i64 %i.fv, 0
  br i1 %i.fx, label %bb.cb, label %bb.ca

bb.by:                                            ; preds = %bb.bw
  invoke void @_RNvNtCsgxBkk5gSRhY_4core9panicking18panic_bounds_check(i64 noundef %i.ed, i64 noundef %i.fp, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @34) #22
          to label %bb.bz unwind label %.loopexit.split-lp.loopexit.split-lp

bb.bz:                                            ; preds = %bb.cd, %bb.by
  unreachable

bb.ca:                                            ; preds = %bb.bx
  %i.fy = load i64, ptr %i.bq, align 8, !noundef !5 ; 3 uses
  %i.fz = icmp ult i64 %i.fy, 2305843009213693952
  call void @llvm.assume(i1 %i.fz)
  %i.ga = icmp eq i64 %i.fy, 0
  br i1 %i.ga, label %bb.cb, label %bb.cf

bb.cb:                                            ; preds = %bb.ca, %bb.bx
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n)
  invoke void @_RNvMs5_NtCs6i54tJFfzR_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs4tP8yUXWbFU_18libsignal_protocol(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.n, i64 noundef 38, i1 noundef zeroext false, i64 noundef 1, i64 noundef 1)
          to label %bb.cc unwind label %.loopexit.split-lp.loopexit.split-lp

bb.cc:                                            ; preds = %bb.cb
  %i.gb = load i64, ptr %i.n, align 8, !range !10, !noundef !5
  %i.gc = trunc nuw i64 %i.gb to i1
  %i.gd = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  %i.ge = load i64, ptr %i.gd, align 8, !range !13, !noundef !5 ; 3 uses
  %i.gf = getelementptr inbounds nuw i8, ptr %i.n, i64 16 ; 2 uses
  br i1 %i.gc, label %bb.cd, label %bb.ce, !prof !11

bb.cd:                                            ; preds = %bb.cc
  %i.gg = load i64, ptr %i.gf, align 8
  invoke void @_RNvNtCs6i54tJFfzR_5alloc7raw_vec12handle_error(i64 noundef %i.ge, i64 %i.gg) #22
          to label %bb.bz unwind label %.loopexit.split-lp.loopexit.split-lp

bb.ce:                                            ; preds = %bb.cc
  %i.gh = load ptr, ptr %i.gf, align 8, !nonnull !5, !noundef !5 ; 2 uses
  %i.gi = icmp samesign ugt i64 %i.ge, 37
  call void @llvm.assume(i1 %i.gi)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(38) %i.gh, ptr noundef nonnull align 1 dereferenceable(38) @35, i64 38, i1 false)
  %i.gj = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 -9223372036854775781, ptr %i.gj, align 8
  %.sroa.498.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.ge, ptr %.sroa.498.0..sroa_idx, align 8
  br label %.sink.split

bb.cf:                                            ; preds = %bb.ca
  %i.gk = load ptr, ptr %i.bp, align 8, !nonnull !5, !noundef !5 ; 3 uses
  %i.gl = load i64, ptr %i.q, align 8, !range !9, !noundef !5
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m)
  %i.gm = getelementptr inbounds nuw [4 x i8], ptr %i.gk, i64 %i.fy
  store ptr %i.gk, ptr %i.m, align 8
  store i64 %i.gl, ptr %i.bt, align 8
  store ptr %i.gk, ptr %i.bu, align 8
  store ptr %i.gm, ptr %i.bv, align 8
  invoke void @_RNvXs0_NtNtCs6i54tJFfzR_5alloc3vec11spec_extendINtB7_3VecTNtNtCsbwPL7qM37dJ_14libsignal_core7address8DeviceIdtEEINtB5_10SpecExtendBT_INtNtB7_9into_iter8IntoIterBT_EE11spec_extendCs4tP8yUXWbFU_18libsignal_protocol(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.ft, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(32) %i.m)
          to label %bb.cg unwind label %.body.loopexit

bb.cg:                                            ; preds = %bb.cf
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m)
  br label %bb.ch

bb.ch:                                            ; preds = %bb.ci, %bb.cg
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q)
  %exitcond.not = icmp eq i64 %i.cc, %smax
  br i1 %exitcond.not, label %._crit_edge, label %bb.u

bb.ci:                                            ; preds = %bb.bs
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p)
  br label %bb.ch

.sink.split:                                      ; preds = %._crit_edge677, %bb.ce, %bb.bc, %bb.aw
  %.sroa.534.0.copyload.i246.sink = phi ptr [ %.sroa.534.0.copyload.i246, %bb.aw ], [ %.sroa.534.0.copyload.i258, %bb.bc ], [ %i.gh, %bb.ce ], [ %.sroa.534.0.copyload.i237, %._crit_edge677 ]
  %.sink607.ph = phi i64 [ %.sroa.635.0.copyload.i248, %bb.aw ], [ %.sroa.635.0.copyload.i260, %bb.bc ], [ 38, %bb.ce ], [ %.sroa.635.0.copyload.i239, %._crit_edge677 ]
  %.sroa.5186.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr %.sroa.534.0.copyload.i246.sink, ptr %.sroa.5186.0..sroa_idx, align 8
  br label %.loopexit611

.loopexit611:                                     ; preds = %bb.ar, %bb.at, %.sink.split
  %.sink609 = phi i64 [ 8, %bb.at ], [ 32, %.sink.split ], [ 8, %bb.ar ]
  %.sink607 = phi i64 [ -9223372036854775806, %bb.at ], [ %.sink607.ph, %.sink.split ], [ -9223372036854775806, %bb.ar ]
  %i.gn = getelementptr inbounds nuw i8, ptr %0, i64 %.sink609
  store i64 %.sink607, ptr %i.gn, align 8
  store i64 -1, ptr %0, align 8
  invoke void @_RNvXso_NtCs6i54tJFfzR_5alloc3vecINtB5_3VecTNtNtCsbwPL7qM37dJ_14libsignal_core7address8DeviceIdtEENtNtNtCsgxBkk5gSRhY_4core3ops4drop4Drop4dropCs4tP8yUXWbFU_18libsignal_protocol(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.q)
          to label %bb.ck unwind label %bb.cj

bb.cj:                                            ; preds = %.loopexit611
  %i.go = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs6i54tJFfzR_5alloc7raw_vecINtB5_6RawVecTNtNtCsbwPL7qM37dJ_14libsignal_core7address8DeviceIdtEENtNtNtCsgxBkk5gSRhY_4core3ops4drop4Drop4dropCs4tP8yUXWbFU_18libsignal_protocol(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.q)
          to label %.body268 unwind label %bb.cl

bb.ck:                                            ; preds = %.loopexit611
  invoke void @_RNvXs1_NtCs6i54tJFfzR_5alloc7raw_vecINtB5_6RawVecTNtNtCsbwPL7qM37dJ_14libsignal_core7address8DeviceIdtEENtNtNtCsgxBkk5gSRhY_4core3ops4drop4Drop4dropCs4tP8yUXWbFU_18libsignal_protocol(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.q)
          to label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtCs6i54tJFfzR_5alloc3vec3VecTNtNtCsbwPL7qM37dJ_14libsignal_core7address8DeviceIdtEEECs4tP8yUXWbFU_18libsignal_protocol.exit unwind label %.loopexit.split-lp392

bb.cl:                                            ; preds = %bb.cj
  %i.gp = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsgxBkk5gSRhY_4core9panicking16panic_in_cleanup() #18
  unreachable

_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtCs6i54tJFfzR_5alloc3vec3VecTNtNtCsbwPL7qM37dJ_14libsignal_core7address8DeviceIdtEEECs4tP8yUXWbFU_18libsignal_protocol.exit: ; preds = %bb.ck
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q)
  br label %bb.x

.loopexit:                                        ; preds = %bb.av, %bb.ay, %.lr.ph676
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp

.loopexit.split-lp.loopexit:                      ; preds = %.thread368, %bb.bb
  %lpad.loopexit397 = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp

.loopexit.split-lp.loopexit.split-lp:             ; preds = %bb.cd, %bb.cb, %bb.by
  %lpad.loopexit.split-lp398 = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp

.loopexit.split-lp:                               ; preds = %.loopexit.split-lp.loopexit, %.loopexit.split-lp.loopexit.split-lp, %.loopexit
  %lpad.phi = phi { ptr, i32 } [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit397, %.loopexit.split-lp.loopexit ], [ %lpad.loopexit.split-lp398, %.loopexit.split-lp.loopexit.split-lp ]
  invoke fastcc void @_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtCs6i54tJFfzR_5alloc3vec3VecTNtNtCsbwPL7qM37dJ_14libsignal_core7address8DeviceIdtEEECs4tP8yUXWbFU_18libsignal_protocol(ptr noalias nofree noundef align 8 dereferenceable(24) %i.q) #19
          to label %.body268 unwind label %bb.cm

bb.cm:                                            ; preds = %.loopexit.split-lp, %.body268
  %i.gq = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsgxBkk5gSRhY_4core9panicking16panic_in_cleanup() #18
  unreachable
}

; Function Attrs: nonlazybind uwtable
define void @_RNvMs_NtCs4tP8yUXWbFU_18libsignal_protocol13sealed_senderNtB4_17SenderCertificate11deserialize(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([280 x i8]) align 8 captures(none) dereferenceable(280) %0, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef range(i64 0, -9223372036854775808) %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %i.b = alloca [24 x i8], align 8                ; 5 uses
  %i.c = alloca [24 x i8], align 8                ; 5 uses
  %i.d = alloca [112 x i8], align 8               ; 5 uses
  %.sroa.0425 = alloca [7 x i8], align 1          ; 2 uses
  %.sroa.4428 = alloca [6 x i8], align 1          ; 2 uses
  %.sroa.6430 = alloca [9 x i8], align 1          ; 2 uses
  %i.e = alloca [48 x i8], align 8                ; 6 uses
  %.sroa.6182.sroa.7 = alloca [16 x i8], align 8  ; 5 uses
  %i.f = alloca [24 x i8], align 8                ; 9 uses
  %i.g = alloca [40 x i8], align 8                ; 15 uses
  %.sroa.5172.sroa.8 = alloca [6 x i8], align 2   ; 5 uses
  %i.h = alloca [24 x i8], align 8                ; 7 uses
  %i.i = alloca [32 x i8], align 8                ; 6 uses
  %i.j = alloca [16 x i8], align 8                ; 5 uses
  %i.k = alloca [24 x i8], align 8                ; 9 uses
  %.sroa.2153 = alloca [24 x i8], align 8         ; 3 uses
  %i.l = alloca [48 x i8], align 8                ; 7 uses
  %.sroa.6140.sroa.7 = alloca [24 x i8], align 8  ; 5 uses
  %i.m = alloca [24 x i8], align 8                ; 9 uses
  %i.n = alloca [112 x i8], align 8               ; 7 uses
  %.sroa.6125 = alloca [48 x i8], align 8         ; 6 uses
  %i.o = alloca [24 x i8], align 8                ; 10 uses
  %.sroa.4118 = alloca [12 x i8], align 4         ; 2 uses
  %i.p = alloca [48 x i8], align 8                ; 7 uses
  %.sroa.6104.sroa.7.sroa.7 = alloca [12 x i8], align 4 ; 5 uses
  %i.q = alloca [112 x i8], align 8               ; 14 uses
  %i.r = alloca [48 x i8], align 8                ; 6 uses
  %i.s = alloca [48 x i8], align 8                ; 7 uses
  %i.t = alloca [128 x i8], align 8               ; 8 uses
  %i.u = alloca [128 x i8], align 8               ; 26 uses
  %i.v = alloca [48 x i8], align 8                ; 6 uses
  %.sroa.627.sroa.7 = alloca [16 x i8], align 8   ; 5 uses
  %i.w = alloca [24 x i8], align 8                ; 10 uses
  %i.x = alloca [48 x i8], align 8                ; 6 uses
  %.sroa.69.sroa.7 = alloca [16 x i8], align 8    ; 5 uses
  %i.y = alloca [24 x i8], align 8                ; 12 uses
  %i.z = alloca [48 x i8], align 8                ; 6 uses
  %i.aa = alloca [48 x i8], align 8               ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aa)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.z)
  call void @_RINvYNtNtNtCs4tP8yUXWbFU_18libsignal_protocol5proto13sealed_sender17SenderCertificateNtNtCs43OB2dM8s8d_5prost7message7Message6decodeRShEB9_(ptr noalias nofree noundef nonnull sret([48 x i8]) align 8 captures(none) dereferenceable(48) %i.z, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef %2)
  %i.ab = load i64, ptr %i.z, align 8, !range !7, !noundef !5 ; 4 uses
  %i.ac = icmp eq i64 %i.ab, -2
  %i.ad = getelementptr inbounds nuw i8, ptr %i.z, i64 8 ; 2 uses
  br i1 %i.ac, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.ae = load ptr, ptr %i.ad, align 8, !nonnull !5, !align !8, !noundef !5
  tail call fastcc void @_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtCs43OB2dM8s8d_5prost5error11DecodeErrorECs4tP8yUXWbFU_18libsignal_protocol(ptr nonnull %i.ae)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.z)
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 -9223372036854775806, ptr %i.af, align 8
  store i64 -1, ptr %0, align 8
  br label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs6i54tJFfzR_5alloc3vec3VechEEECs4tP8yUXWbFU_18libsignal_protocol.exit

bb.c:                                             ; preds = %bb.a
  %.sroa.4226.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.aa, i64 8 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.4226.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(40) %i.ad, i64 40, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.z)
  store i64 %i.ab, ptr %i.aa, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.y)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.69.sroa.7)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.x)
  store i64 -9223372036854775806, ptr %i.x, align 8
  %.not = icmp eq i64 %i.ab, -1
  br i1 %.not, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.69.sroa.7, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.4226.0..sroa_idx, i64 16, i1 false)
  invoke fastcc void @_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtCs4tP8yUXWbFU_18libsignal_protocol5error19SignalProtocolErrorEBF_(ptr noalias nofree noundef align 8 dereferenceable(48) %i.x)
          to label %bb.i unwind label %bb.dl

bb.e:                                             ; preds = %bb.c
  %.sroa.4238.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.x, i64 8
  %.sroa.4238.0.copyload = load i64, ptr %.sroa.4238.0..sroa_idx, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.x)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.69.sroa.7)
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 -9223372036854775806, ptr %i.ag, align 8
  %.sroa.4265.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %.sroa.4238.0.copyload, ptr %.sroa.4265.0..sroa_idx, align 8
  store i64 -1, ptr %0, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.y)
  %i.ah = getelementptr inbounds nuw i8, ptr %i.aa, i64 24 ; 4 uses
  %i.ai = load i64, ptr %i.ah, align 8, !range !4, !alias.scope !152, !noundef !5
  %i.aj = icmp eq i64 %i.ai, -1
  br i1 %i.aj, label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs6i54tJFfzR_5alloc3vec3VechEEECs4tP8yUXWbFU_18libsignal_protocol.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  invoke void @_RNvXso_NtCs6i54tJFfzR_5alloc3vecINtB5_3VechENtNtNtCsgxBkk5gSRhY_4core3ops4drop4Drop4dropCs4tP8yUXWbFU_18libsignal_protocol(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.ah)
          to label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtCs6i54tJFfzR_5alloc3vec3VechEECs4tP8yUXWbFU_18libsignal_protocol.exit.i unwind label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ak = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs6i54tJFfzR_5alloc7raw_vecINtB5_6RawVechENtNtNtCsgxBkk5gSRhY_4core3ops4drop4Drop4dropCs4tP8yUXWbFU_18libsignal_protocol(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.ah)
          to label %common.resume unwind label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.al = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsgxBkk5gSRhY_4core9panicking16panic_in_cleanup() #18
  unreachable

common.resume:                                    ; preds = %bb.dl, %bb.l, %.body496, %bb.g
  %common.resume.op = phi { ptr, i32 } [ %i.ak, %bb.g ], [ %i.ao, %bb.l ], [ %i.en, %bb.dl ], [ %.pn481, %.body496 ]
  resume { ptr, i32 } %common.resume.op

_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtCs6i54tJFfzR_5alloc3vec3VechEECs4tP8yUXWbFU_18libsignal_protocol.exit.i: ; preds = %bb.f
  call void @_RNvXs1_NtCs6i54tJFfzR_5alloc7raw_vecINtB5_6RawVechENtNtNtCsgxBkk5gSRhY_4core3ops4drop4Drop4dropCs4tP8yUXWbFU_18libsignal_protocol(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.ah)
  br label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs6i54tJFfzR_5alloc3vec3VechEEECs4tP8yUXWbFU_18libsignal_protocol.exit

bb.i:                                             ; preds = %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %i.x)
  %.sroa.4.0..sroa_idx247 = getelementptr inbounds nuw i8, ptr %i.y, i64 8 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.4.0..sroa_idx247, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.69.sroa.7, i64 16, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.69.sroa.7)
  store i64 %i.ab, ptr %i.y, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.w)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.627.sroa.7)
  %i.am = getelementptr inbounds nuw i8, ptr %i.aa, i64 24
  %.sroa.031.0.copyload = load i64, ptr %i.am, align 8 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.v)
  store i64 -9223372036854775806, ptr %i.v, align 8
  %.not462 = icmp eq i64 %.sroa.031.0.copyload, -1
  br i1 %.not462, label %bb.k, label %bb.j

end_hunk_1
begin_hunk_2_@_RNvXso_NtCs6i54tJFfzR_5alloc3vecINtB5_3VechENtNtNtCsgxBkk5gSRhY_4core3ops4drop4Drop4dropCs4tP8yUXWbFU_18libsignal_protocol
declare hidden void @_RNvXso_NtCs6i54tJFfzR_5alloc3vecINtB5_3VechENtNtNtCsgxBkk5gSRhY_4core3ops4drop4Drop4dropCs4tP8yUXWbFU_18libsignal_protocol(ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs1_NtCs6i54tJFfzR_5alloc7raw_vecINtB5_6RawVecINtCsbPnb37KEv9e_8indexmap6BucketNtNtCsbwPL7qM37dJ_14libsignal_core7address9ServiceIdNtNtCs4tP8yUXWbFU_18libsignal_protocol13sealed_sender34SealedSenderV2SentMessageRecipientEENtNtNtCsgxBkk5gSRhY_4core3ops4drop4Drop4dropB2c_(ptr noalias nofree noundef align 8 dereferenceable(16)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs1_NtCs6i54tJFfzR_5alloc7raw_vecINtB5_6RawVecTNtNtCsbwPL7qM37dJ_14libsignal_core7address8DeviceIdtEENtNtNtCsgxBkk5gSRhY_4core3ops4drop4Drop4dropCs4tP8yUXWbFU_18libsignal_protocol(ptr noalias nofree noundef align 8 dereferenceable(16)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs1_NtCs6i54tJFfzR_5alloc7raw_vecINtB5_6RawVecTReBM_EENtNtNtCsgxBkk5gSRhY_4core3ops4drop4Drop4dropCs4tP8yUXWbFU_18libsignal_protocol(ptr noalias nofree noundef align 8 dereferenceable(16)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs1_NtCs6i54tJFfzR_5alloc7raw_vecINtB5_6RawVechENtNtNtCsgxBkk5gSRhY_4core3ops4drop4Drop4dropCs4tP8yUXWbFU_18libsignal_protocol(ptr noalias nofree noundef align 8 dereferenceable(16)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef align 8 ptr @_RINvNtNtCs43OB2dM8s8d_5prost8encoding5bytes14merge_one_copyINtNtCs6i54tJFfzR_5alloc3vec3VechEQRShECs4tP8yUXWbFU_18libsignal_protocol(i8 noundef range(i8 0, 6), ptr noalias nofree noundef align 8 dereferenceable(24), ptr noalias nofree noundef align 8 dereferenceable(8), i32 noundef) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare void @_RNvNtNtCsgxBkk5gSRhY_4core3str8converts9from_utf8(ptr dead_on_unwind noalias nofree noundef writable sret([24 x i8]) align 8 captures(none) dereferenceable(24), ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef range(i64 0, -9223372036854775808)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef nonnull align 8 ptr @_RNvXs1_NtCs43OB2dM8s8d_5prost5errorNtB5_11DecodeErrorINtNtCsgxBkk5gSRhY_4core7convert4FromNtB5_15DecodeErrorKindE4from(ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(48)) unnamed_addr #0

; Function Attrs: cold noinline noreturn nonlazybind uwtable
declare void @_RNvNtCsgxBkk5gSRhY_4core9panicking9panic_fmt(ptr noundef nonnull, ptr noundef nonnull, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #10

; Function Attrs: cold noinline noreturn nonlazybind uwtable
declare void @_RNvNtNtCsgxBkk5gSRhY_4core9panicking11panic_const24panic_const_sub_overflow(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #10

; Function Attrs: cold minsize noinline noreturn nonlazybind optsize uwtable
declare void @_RNvNtCsgxBkk5gSRhY_4core9panicking18panic_bounds_check(i64 noundef, i64 noundef, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #11

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare <2 x i64> @llvm.x86.aesni.aesimc(<2 x i64>) #12

; Function Attrs: cold noinline noreturn nonlazybind uwtable
declare void @_RNvNtCsgxBkk5gSRhY_4core6option13unwrap_failed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #10

; Function Attrs: nonlazybind uwtable
declare hidden noundef zeroext i1 @_RNvXCsfBDUjroi3FF_9hashbrownmINtB2_10EquivalentmE10equivalentCs4tP8yUXWbFU_18libsignal_protocol(ptr noalias nofree noundef readonly align 4 captures(address, read_provenance) dereferenceable(4), ptr noalias nofree noundef readonly align 4 captures(address, read_provenance) dereferenceable(4)) unnamed_addr #0

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare nonnull ptr @llvm.threadlocal.address.p0(ptr nonnull) #13

; Function Attrs: cold noinline noreturn nonlazybind uwtable
declare void @_RNvNtNtCs9k3SxhrAWiO_3std4sync9lazy_lock14panic_poisoned() unnamed_addr #10

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvMs5_NtCs6i54tJFfzR_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs4tP8yUXWbFU_18libsignal_protocol(ptr dead_on_unwind noalias nofree noundef writable sret([24 x i8]) align 8 captures(none) dereferenceable(24), i64 noundef, i1 noundef zeroext, i64 noundef range(i64 1, -9223372036854775807), i64 noundef) unnamed_addr #0

; Function Attrs: cold minsize noreturn nonlazybind optsize uwtable
declare void @_RNvNtCs6i54tJFfzR_5alloc7raw_vec12handle_error(i64 noundef range(i64 0, -9223372036854775807), i64) unnamed_addr #14

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvXs1c_NtNtNtCs9k3SxhrAWiO_3std11collections4hash3mapINtB7_7HashMapmTNtNtCsbwPL7qM37dJ_14libsignal_core5curve9PublicKeyNtNtCs4tP8yUXWbFU_18libsignal_protocol13sealed_sender17ServerCertificateEEINtNtNtNtCsgxBkk5gSRhY_4core4iter6traits7collect12FromIteratorTmB16_EE9from_iterINtNtNtB3e_8adapters3map3MapINtNtNtB3g_5slice4iter4IterTmAhj21_RShEENCNCNvNvMs_B1X_NtB1X_17SenderCertificate6signer8CERT_MAP00EEB1Z_(ptr dead_on_unwind noalias nofree noundef writable sret([48 x i8]) align 8 captures(none) dereferenceable(48), ptr noundef nonnull, ptr noundef) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvYNtNtNtCs4tP8yUXWbFU_18libsignal_protocol5proto13sealed_sender17ServerCertificateNtNtCs43OB2dM8s8d_5prost7message7Message6decodeRShEB9_(ptr dead_on_unwind noalias nofree noundef writable sret([48 x i8]) align 8 captures(none) dereferenceable(48), ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef range(i64 0, -9223372036854775808)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvYNtNtNtNtCs4tP8yUXWbFU_18libsignal_protocol5proto13sealed_sender18server_certificate11CertificateNtNtCs43OB2dM8s8d_5prost7message7Message6decodeRShEBb_(ptr dead_on_unwind noalias nofree noundef writable sret([32 x i8]) align 8 captures(none) dereferenceable(32), ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef range(i64 0, -9223372036854775808)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare void @_RNvXs4_NtCsbwPL7qM37dJ_14libsignal_core5curveNtB5_9PublicKeyINtNtCsgxBkk5gSRhY_4core7convert7TryFromRShE8try_from(ptr dead_on_unwind noalias nofree noundef writable sret([40 x i8]) align 8 captures(address) dereferenceable(40), ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef range(i64 0, -9223372036854775808)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvXsu_NtNtCsgxBkk5gSRhY_4core3fmt3nummNtB7_8LowerHex3fmt(ptr noalias nofree noundef readonly align 4 captures(address, read_provenance) dereferenceable(4), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvMs_NtCs6i54tJFfzR_5alloc3vecINtB4_3VechE7reserveCs4tP8yUXWbFU_18libsignal_protocol(ptr noalias nofree noundef align 8 dereferenceable(24), i64 noundef) unnamed_addr #0

; Function Attrs: cold noinline noreturn nonlazybind uwtable
declare void @_RNvNtCsgxBkk5gSRhY_4core6result13unwrap_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef, ptr noundef nonnull, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #10

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvYNtNtNtNtCs4tP8yUXWbFU_18libsignal_protocol5proto13sealed_sender27unidentified_sender_message7MessageNtNtCs43OB2dM8s8d_5prost7message7Message6decodeRShEBb_(ptr dead_on_unwind noalias nofree noundef writable sret([88 x i8]) align 8 captures(none) dereferenceable(88), ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef range(i64 0, -9223372036854775808)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef range(i8 2, 9) i8 @_RNvXs0_NtCs4tP8yUXWbFU_18libsignal_protocol13sealed_senderNtNtB7_8protocol21CiphertextMessageTypeINtNtCsgxBkk5gSRhY_4core7convert4FromNtNtNtNtNtB7_5proto13sealed_sender27unidentified_sender_message7message4TypeE4from(i32 noundef range(i32 1, 9)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef zeroext i1 @_RNvXs1i_NtCsgxBkk5gSRhY_4core3fmtReNtB6_7Display3fmtCs4tP8yUXWbFU_18libsignal_protocol(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(16), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvXsj_NtCsbwPL7qM37dJ_14libsignal_core7addressNtB5_8DeviceIdNtNtCsgxBkk5gSRhY_4core3fmt7Display3fmt(ptr noalias nofree noundef readonly captures(address, read_provenance) dereferenceable(1), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef range(i32 1, 9) i32 @_RNvXs1_NtCs4tP8yUXWbFU_18libsignal_protocol13sealed_senderNtNtNtNtNtB7_5proto13sealed_sender27unidentified_sender_message7message4TypeINtNtCsgxBkk5gSRhY_4core7convert4FromNtNtB7_8protocol21CiphertextMessageTypeE4from(i8 noundef range(i8 2, 9)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXsa_NtCs6i54tJFfzR_5alloc3vecINtB5_3VechENtNtCsgxBkk5gSRhY_4core5clone5Clone5cloneCs4tP8yUXWbFU_18libsignal_protocol(ptr dead_on_unwind noalias nofree noundef writable sret([24 x i8]) align 8 captures(address) dereferenceable(24), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvYNtNtNtNtCs4tP8yUXWbFU_18libsignal_protocol5proto13sealed_sender27unidentified_sender_message7MessageNtNtCs43OB2dM8s8d_5prost7message7Message13encode_to_vecBa_(ptr dead_on_unwind noalias nofree noundef writable sret([24 x i8]) align 8 captures(none) dereferenceable(24), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(88)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvXNtNtNtCsgxBkk5gSRhY_4core3fmt3num3imphNtB6_7Display3fmt(ptr noalias nofree noundef readonly captures(address, read_provenance) dereferenceable(1), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvYNtNtNtCs4tP8yUXWbFU_18libsignal_protocol5proto13sealed_sender25UnidentifiedSenderMessageNtNtCs43OB2dM8s8d_5prost7message7Message6decodeRShEB9_(ptr dead_on_unwind noalias nofree noundef writable sret([72 x i8]) align 8 captures(none) dereferenceable(72), ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef range(i64 0, -9223372036854775808)) unnamed_addr #0

; Function Attrs: cold noinline noreturn nonlazybind uwtable
declare void @_RNvNtCsgxBkk5gSRhY_4core6option13expect_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #10

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.uadd.sat.i64(i64, i64) #15

; Function Attrs: nonlazybind uwtable
declare hidden { i64, i64 } @_RINvMs2_NtNtCs9k3SxhrAWiO_3std6thread5localINtB6_8LocalKeyINtNtCsgxBkk5gSRhY_4core4cell4CellTyyEEE4withNCNvMNtNtBa_4hash6randomNtB1I_11RandomState3new0B21_ECs4tP8yUXWbFU_18libsignal_protocol(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8)) unnamed_addr #0

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i16 @llvm.bswap.i16(i16) #15

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvMs2_NtCsbPnb37KEv9e_8indexmap3mapINtB5_8IndexMapNtNtCsbwPL7qM37dJ_14libsignal_core7address9ServiceIdNtNtCs4tP8yUXWbFU_18libsignal_protocol13sealed_sender34SealedSenderV2SentMessageRecipientE5entryB1H_(ptr dead_on_unwind noalias nofree noundef writable sret([48 x i8]) align 8 captures(address) dereferenceable(48), ptr noalias nofree noundef align 8 dereferenceable(72), ptr noalias nofree noundef readonly align 1 captures(address) dead_on_return dereferenceable(17)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs0_NtNtCs6i54tJFfzR_5alloc3vec11spec_extendINtB7_3VecTNtNtCsbwPL7qM37dJ_14libsignal_core7address8DeviceIdtEEINtB5_10SpecExtendBT_INtNtB7_9into_iter8IntoIterBT_EE11spec_extendCs4tP8yUXWbFU_18libsignal_protocol(ptr noalias nofree noundef align 8 dereferenceable(24), ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(32)) unnamed_addr #0

; Function Attrs: cold noinline noreturn nonlazybind uwtable
declare void @_RNvNtNtCsgxBkk5gSRhY_4core5slice5index16slice_index_fail(i64 noundef, i64 noundef, i64 noundef, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #10

; Function Attrs: nonlazybind uwtable
declare void @_RNvMNtCsS4eg1WQ3uw_4uuid7builderNtB4_4Uuid10from_slice(ptr dead_on_unwind noalias nofree noundef writable sret([32 x i8]) align 8 captures(none) dereferenceable(32), ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef range(i64 0, -9223372036854775808)) unnamed_addr #0

; Function Attrs: noinline nonlazybind uwtable
declare void @_RNvMs4_NtCs6i54tJFfzR_5alloc7raw_vecINtB5_6RawVecINtCsbPnb37KEv9e_8indexmap6BucketNtNtCsbwPL7qM37dJ_14libsignal_core7address9ServiceIdNtNtCs4tP8yUXWbFU_18libsignal_protocol13sealed_sender34SealedSenderV2SentMessageRecipientEE8grow_oneB2c_(ptr noalias nofree noundef align 8 dereferenceable(16)) unnamed_addr #8

; Function Attrs: noinline nonlazybind uwtable
declare void @_RNvMs4_NtCs6i54tJFfzR_5alloc7raw_vecINtB5_6RawVecTNtNtCsbwPL7qM37dJ_14libsignal_core7address8DeviceIdtEE8grow_oneCs4tP8yUXWbFU_18libsignal_protocol(ptr noalias nofree noundef align 8 dereferenceable(16)) unnamed_addr #8

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvYNtNtNtCs4tP8yUXWbFU_18libsignal_protocol5proto13sealed_sender17SenderCertificateNtNtCs43OB2dM8s8d_5prost7message7Message6decodeRShEB9_(ptr dead_on_unwind noalias nofree noundef writable sret([48 x i8]) align 8 captures(none) dereferenceable(48), ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef range(i64 0, -9223372036854775808)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvYNtNtNtNtCs4tP8yUXWbFU_18libsignal_protocol5proto13sealed_sender18sender_certificate11CertificateNtNtCs43OB2dM8s8d_5prost7message7Message6decodeRShEBb_(ptr dead_on_unwind noalias nofree noundef writable sret([128 x i8]) align 8 captures(none) dereferenceable(128), ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef range(i64 0, -9223372036854775808)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef nonnull ptr @_RINvMs6_NtCs454tfXuUxcf_9hashbrown3rawINtB6_8RawTablejE6insertNCINvNtCsbPnb37KEv9e_8indexmap5inner8get_hashNtNtCsbwPL7qM37dJ_14libsignal_core7address9ServiceIdNtNtCs4tP8yUXWbFU_18libsignal_protocol13sealed_sender34SealedSenderV2SentMessageRecipientE0EB2B_(ptr noalias nofree noundef align 8 dereferenceable(32), i64 noundef, i64 noundef, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance), i64 noundef) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvMs6_NtCs454tfXuUxcf_9hashbrown3rawINtB5_8RawTablejE16with_capacity_inCs4tP8yUXWbFU_18libsignal_protocol(ptr dead_on_unwind noalias nofree noundef writable sret([32 x i8]) align 8 captures(none) dereferenceable(32), i64 noundef) unnamed_addr #0

; Function Attrs: cold noinline noreturn nonlazybind uwtable
declare void @_RNvNtNtCsgxBkk5gSRhY_4core9panicking11panic_const24panic_const_add_overflow(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #10

; Function Attrs: nonlazybind uwtable
declare hidden { i64, i64 } @_RNvMs2_NtCs6i54tJFfzR_5alloc7raw_vecNtB5_11RawVecInner17try_reserve_exactCs4tP8yUXWbFU_18libsignal_protocol(ptr noalias nofree noundef align 8 dereferenceable(16), i64 noundef, i64 noundef, i64 noundef range(i64 1, -9223372036854775807), i64 noundef) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvMs2_NtCs6i54tJFfzR_5alloc7raw_vecNtB5_11RawVecInner13reserve_exactCs4tP8yUXWbFU_18libsignal_protocol(ptr noalias nofree noundef align 8 dereferenceable(16), i64 noundef, i64 noundef, i64 noundef range(i64 1, -9223372036854775807), i64 noundef) unnamed_addr #0

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i16 @llvm.cttz.i16(i16, i1 immarg) #13

; Function Attrs: nonlazybind uwtable
declare hidden { i64, ptr } @_RINvNtNtCs43OB2dM8s8d_5prost8encoding16length_delimiter23decode_length_delimiterRShECs4tP8yUXWbFU_18libsignal_protocol(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef range(i64 0, -9223372036854775808)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef i64 @_RNvNtNtCs43OB2dM8s8d_5prost8encoding16length_delimiter20length_delimiter_len(i64 noundef) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef i64 @_RNvYINtNtNtCsgxBkk5gSRhY_4core5slice4iter14ChunksExactMuthENtNtNtNtB9_4iter8adapters3zip27TrustedRandomAccessNoCoerce4sizeCs4tP8yUXWbFU_18libsignal_protocol(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(40)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef i64 @_RNvYINtNtNtCsgxBkk5gSRhY_4core5slice4iter4ItermENtNtNtNtB9_4iter8adapters3zip27TrustedRandomAccessNoCoerce4sizeCs4tP8yUXWbFU_18libsignal_protocol(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(16)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef i64 @_RNvYINtNtNtCsgxBkk5gSRhY_4core5slice4iter4IteryENtNtNtNtB9_4iter8adapters3zip27TrustedRandomAccessNoCoerce4sizeCs4tP8yUXWbFU_18libsignal_protocol(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(16)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef i64 @_RNvYINtNtNtCsgxBkk5gSRhY_4core5slice4iter4IterhENtNtNtNtB9_4iter8adapters3zip27TrustedRandomAccessNoCoerce4sizeCs4tP8yUXWbFU_18libsignal_protocol(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(16)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef i64 @_RNvYINtNtNtCsgxBkk5gSRhY_4core5slice4iter7IterMuthENtNtNtNtB9_4iter8adapters3zip27TrustedRandomAccessNoCoerce4sizeCs4tP8yUXWbFU_18libsignal_protocol(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(16)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef zeroext i1 @_RNvYNtNtCs6i54tJFfzR_5alloc6string6StringNtNtCsgxBkk5gSRhY_4core3fmt5Write9write_fmtCs4tP8yUXWbFU_18libsignal_protocol(ptr noalias nofree noundef align 8 dereferenceable(24), ptr noundef nonnull, ptr noundef nonnull) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvXs_NtCsS4eg1WQ3uw_4uuid3fmtNtB6_4UuidNtNtCsgxBkk5gSRhY_4core3fmt7Display3fmt(ptr noalias nofree noundef readonly captures(address, read_provenance) dereferenceable(16), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvMsa_NtCsgxBkk5gSRhY_4core3fmtNtB5_9Formatter9write_str(ptr noalias nofree noundef align 8 dereferenceable(24), ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare { i64, i32 } @_RNvXs6_NtCs9k3SxhrAWiO_3std4timeNtB5_10SystemTimeINtNtNtCsgxBkk5gSRhY_4core3ops5arith3AddNtNtBS_4time8DurationE3add(i64 noundef, i32 noundef range(i32 0, 1000000000), i64 noundef, i32 noundef range(i32 0, 1000000000), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #0

; Function Attrs: nounwind nonlazybind allockind("free") uwtable
declare void @_RNvCs1njKG4L9aB3_7___rustc14___rust_dealloc(ptr allocptr noundef nonnull captures(address), i64 noundef, i64 noundef range(i64 1, -9223372036854775807)) unnamed_addr #16

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #17

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umin.i32(i32, i32) #15

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #15

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smax.i64(i64, i64) #15

attributes #0 = { nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #1 = { mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #2 = { mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" "target-features"="+aes,+sse,+sse2" }
attributes #3 = { inlinehint nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #4 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #5 = { nounwind nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #6 = { cold nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #7 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #8 = { noinline nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #9 = { cold minsize noinline noreturn nounwind nonlazybind optsize uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #10 = { cold noinline noreturn nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #11 = { cold minsize noinline noreturn nonlazybind optsize uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #12 = { nocallback nofree nosync nounwind willreturn memory(none) }
attributes #13 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #14 = { cold minsize noreturn nonlazybind optsize uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #15 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #16 = { nounwind nonlazybind allockind("free") uwtable "alloc-family"="__rust_alloc" "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #17 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #18 = { cold noreturn nounwind }
attributes #19 = { cold }
attributes #20 = { nounwind }
attributes #21 = { noinline noreturn }
attributes #22 = { noreturn }
attributes #23 = { noinline }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 2, !"RtLibUseGOT", i32 1}
!2 = !{i32 7, !"uwtable", i32 2}
!3 = !{!"rustc version 1.98.1 (48a229cea 2026-09-01)"}
!4 = !{i64 -1, i64 -9223372036854775808}
!5 = !{}
!6 = !{i64 0, i64 3}
!7 = !{i64 -2, i64 -9223372036854775808}
!8 = !{i64 8}
!9 = !{i64 0, i64 -9223372036854775808}
!10 = !{i64 0, i64 2}
!11 = !{!"branch_weights", !"expected", i32 1, i32 2000}
!12 = !{i8 0, i8 2}
!13 = !{i64 0, i64 -9223372036854775807}
!14 = !{i32 0, i32 2}
!15 = !{i32 -1, i32 9}
!16 = !{!"branch_weights", !"expected", i32 2000, i32 1}
!17 = distinct !{!17, !"_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtCs43OB2dM8s8d_5prost5error5InnerECs4tP8yUXWbFU_18libsignal_protocol"}
!18 = distinct !{!18, !17, !"_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtCs43OB2dM8s8d_5prost5error5InnerECs4tP8yUXWbFU_18libsignal_protocol: argument 0"}
!19 = distinct !{!19, !"_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtCs43OB2dM8s8d_5prost5error15DecodeErrorKindECs4tP8yUXWbFU_18libsignal_protocol"}
!20 = distinct !{!20, !19, !"_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtCs43OB2dM8s8d_5prost5error15DecodeErrorKindECs4tP8yUXWbFU_18libsignal_protocol: argument 0"}
!21 = distinct !{!21, !"_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtCs6i54tJFfzR_5alloc6borrow3CoweEECs4tP8yUXWbFU_18libsignal_protocol"}
!22 = distinct !{!22, !21, !"_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtCs6i54tJFfzR_5alloc6borrow3CoweEECs4tP8yUXWbFU_18libsignal_protocol: argument 0"}
!23 = !{i64 0, i64 -9223372036854775795}
!24 = !{!20, !18}
!25 = !{!22, !20, !18}
!26 = distinct !{!26, !"_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs6i54tJFfzR_5alloc6string6StringEECs4tP8yUXWbFU_18libsignal_protocol"}
!27 = distinct !{!27, !26, !"_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs6i54tJFfzR_5alloc6string6StringEECs4tP8yUXWbFU_18libsignal_protocol: argument 0"}
!28 = !{!27}
!29 = !{i64 -1, i64 -9223372036854775773}
!30 = !{i64 1, i64 536870913}
!31 = distinct !{!31, !"_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs6i54tJFfzR_5alloc3vec3VechEEECs4tP8yUXWbFU_18libsignal_protocol"}
!32 = distinct !{!32, !31, !"_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs6i54tJFfzR_5alloc3vec3VechEEECs4tP8yUXWbFU_18libsignal_protocol: argument 0"}
!33 = distinct !{!33, !"_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs6i54tJFfzR_5alloc3vec3VechEEECs4tP8yUXWbFU_18libsignal_protocol"}
!34 = distinct !{!34, !33, !"_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs6i54tJFfzR_5alloc3vec3VechEEECs4tP8yUXWbFU_18libsignal_protocol: argument 0"}
!35 = distinct !{!35, !"_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs6i54tJFfzR_5alloc3vec3VechEEECs4tP8yUXWbFU_18libsignal_protocol"}
!36 = distinct !{!36, !35, !"_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs6i54tJFfzR_5alloc3vec3VechEEECs4tP8yUXWbFU_18libsignal_protocol: argument 0"}
!37 = !{!32}
!38 = !{!34}
!39 = !{!36}
!40 = distinct !{!40, !"_RNvNtNtCsgxBkk5gSRhY_4core5slice5index16into_slice_range"}
!41 = distinct !{!41, !40, !"_RNvNtNtCsgxBkk5gSRhY_4core5slice5index16into_slice_range: argument 0"}
!42 = !{!41}
!43 = distinct !{null}
!44 = distinct !{!44, !"_RNvYNCINvMs0_NtNtCs9k3SxhrAWiO_3std4sync4onceNtBb_4Once15call_once_forceNCNvMNtBd_9lazy_lockINtB1d_8LazyLockINtNtNtNtBf_11collections4hash3map7HashMapmTNtNtCsbwPL7qM37dJ_14libsignal_core5curve9PublicKeyNtNtCs4tP8yUXWbFU_18libsignal_protocol13sealed_sender17ServerCertificateEEE5force0E0INtNtNtCsgxBkk5gSRhY_4core3ops8function6FnOnceTRNtBb_9OnceStateEE9call_onceB3i_"}
!45 = distinct !{!45, !44, !"_RNvYNCINvMs0_NtNtCs9k3SxhrAWiO_3std4sync4onceNtBb_4Once15call_once_forceNCNvMNtBd_9lazy_lockINtB1d_8LazyLockINtNtNtNtBf_11collections4hash3map7HashMapmTNtNtCsbwPL7qM37dJ_14libsignal_core5curve9PublicKeyNtNtCs4tP8yUXWbFU_18libsignal_protocol13sealed_sender17ServerCertificateEEE5force0E0INtNtNtCsgxBkk5gSRhY_4core3ops8function6FnOnceTRNtBb_9OnceStateEE9call_onceB3i_: argument 0"}
!46 = distinct !{!46, !"_RNCINvMs0_NtNtCs9k3SxhrAWiO_3std4sync4onceNtB8_4Once15call_once_forceNCNvMNtBa_9lazy_lockINtB1a_8LazyLockINtNtNtNtBc_11collections4hash3map7HashMapmTNtNtCsbwPL7qM37dJ_14libsignal_core5curve9PublicKeyNtNtCs4tP8yUXWbFU_18libsignal_protocol13sealed_sender17ServerCertificateEEE5force0E0B3f_"}
!47 = distinct !{!47, !46, !"_RNCINvMs0_NtNtCs9k3SxhrAWiO_3std4sync4onceNtB8_4Once15call_once_forceNCNvMNtBa_9lazy_lockINtB1a_8LazyLockINtNtNtNtBc_11collections4hash3map7HashMapmTNtNtCsbwPL7qM37dJ_14libsignal_core5curve9PublicKeyNtNtCs4tP8yUXWbFU_18libsignal_protocol13sealed_sender17ServerCertificateEEE5force0E0B3f_: argument 0"}
!48 = distinct !{null, ptr @_RNCINvMs0_NtNtCs9k3SxhrAWiO_3std4sync4onceNtB8_4Once15call_once_forceNCNvMNtBa_9lazy_lockINtB1a_8LazyLockINtNtNtNtBc_11collections4hash3map7HashMapmTNtNtCsbwPL7qM37dJ_14libsignal_core5curve9PublicKeyNtNtCs4tP8yUXWbFU_18libsignal_protocol13sealed_sender17ServerCertificateEEE5force0E0B3f_, null}
!49 = !{!45}
!50 = !{!47}
!51 = !{!47, !45}
!52 = distinct !{!52, !"_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs6i54tJFfzR_5alloc3vec3VechEEECs4tP8yUXWbFU_18libsignal_protocol"}
!53 = distinct !{!53, !52, !"_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs6i54tJFfzR_5alloc3vec3VechEEECs4tP8yUXWbFU_18libsignal_protocol: argument 0"}
!54 = !{!53}
!55 = distinct !{!55, !"_RNCNvMs5_NtCs4tP8yUXWbFU_18libsignal_protocol13sealed_senderNtB7_32UnidentifiedSenderMessageContent11deserialize0B9_"}
!56 = distinct !{!56, !55, !"_RNCNvMs5_NtCs4tP8yUXWbFU_18libsignal_protocol13sealed_senderNtB7_32UnidentifiedSenderMessageContent11deserialize0B9_: argument 0"}
!57 = distinct !{!57, !"_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs6i54tJFfzR_5alloc3vec3VechEEECs4tP8yUXWbFU_18libsignal_protocol"}
!58 = distinct !{!58, !57, !"_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs6i54tJFfzR_5alloc3vec3VechEEECs4tP8yUXWbFU_18libsignal_protocol: argument 0"}
!59 = distinct !{!59, !"_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs6i54tJFfzR_5alloc3vec3VechEEECs4tP8yUXWbFU_18libsignal_protocol"}
!60 = distinct !{!60, !59, !"_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs6i54tJFfzR_5alloc3vec3VechEEECs4tP8yUXWbFU_18libsignal_protocol: argument 0"}
!61 = distinct !{!61, !"_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs6i54tJFfzR_5alloc3vec3VechEEECs4tP8yUXWbFU_18libsignal_protocol"}
!62 = distinct !{!62, !61, !"_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs6i54tJFfzR_5alloc3vec3VechEEECs4tP8yUXWbFU_18libsignal_protocol: argument 0"}
!63 = !{!56}
!64 = !{!58}
!65 = !{!"address", !"read_provenance"}
!66 = !{i8 1, i8 0}
!67 = !{!60}
!68 = !{!62}
!69 = distinct !{!69, !"_RNCNvMs6_NtCs4tP8yUXWbFU_18libsignal_protocol13sealed_senderNtB7_25UnidentifiedSenderMessage11deserialize0B9_"}
!70 = distinct !{!70, !69, !"_RNCNvMs6_NtCs4tP8yUXWbFU_18libsignal_protocol13sealed_senderNtB7_25UnidentifiedSenderMessage11deserialize0B9_: argument 0"}
!71 = distinct !{!71, !"_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs6i54tJFfzR_5alloc3vec3VechEEECs4tP8yUXWbFU_18libsignal_protocol"}
!72 = distinct !{!72, !71, !"_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs6i54tJFfzR_5alloc3vec3VechEEECs4tP8yUXWbFU_18libsignal_protocol: argument 0"}
!73 = distinct !{!73, !"_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs6i54tJFfzR_5alloc3vec3VechEEECs4tP8yUXWbFU_18libsignal_protocol"}
!74 = distinct !{!74, !73, !"_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs6i54tJFfzR_5alloc3vec3VechEEECs4tP8yUXWbFU_18libsignal_protocol: argument 0"}
!75 = !{!70}
!76 = !{!72}
!77 = !{!74}
!78 = distinct !{!78, !"_RNvNvMs7_NtCs4tP8yUXWbFU_18libsignal_protocol13sealed_senderNtB7_25SealedSenderV2SentMessage5parse13decode_varint"}
!79 = distinct !{!79, !78, !"_RNvNvMs7_NtCs4tP8yUXWbFU_18libsignal_protocol13sealed_senderNtB7_25SealedSenderV2SentMessage5parse13decode_varint: argument 1"}
!80 = distinct !{!80, !78, !"_RNvNvMs7_NtCs4tP8yUXWbFU_18libsignal_protocol13sealed_senderNtB7_25SealedSenderV2SentMessage5parse13decode_varint: argument 0"}
!81 = distinct !{!81, !"_RNvMs1_NtCsbPnb37KEv9e_8indexmap3mapINtB5_8IndexMapNtNtCsbwPL7qM37dJ_14libsignal_core7address9ServiceIdNtNtCs4tP8yUXWbFU_18libsignal_protocol13sealed_sender34SealedSenderV2SentMessageRecipientE24with_capacity_and_hasherB1H_"}
!82 = distinct !{!82, !81, !"_RNvMs1_NtCsbPnb37KEv9e_8indexmap3mapINtB5_8IndexMapNtNtCsbwPL7qM37dJ_14libsignal_core7address9ServiceIdNtNtCs4tP8yUXWbFU_18libsignal_protocol13sealed_sender34SealedSenderV2SentMessageRecipientE24with_capacity_and_hasherB1H_: argument 0"}
!83 = distinct !{!83, !"_RNvMs_NtCsbPnb37KEv9e_8indexmap5innerINtB4_4CoreNtNtCsbwPL7qM37dJ_14libsignal_core7address9ServiceIdNtNtCs4tP8yUXWbFU_18libsignal_protocol13sealed_sender34SealedSenderV2SentMessageRecipientE13with_capacityB1E_"}
!84 = distinct !{!84, !83, !"_RNvMs_NtCsbPnb37KEv9e_8indexmap5innerINtB4_4CoreNtNtCsbwPL7qM37dJ_14libsignal_core7address9ServiceIdNtNtCs4tP8yUXWbFU_18libsignal_protocol13sealed_sender34SealedSenderV2SentMessageRecipientE13with_capacityB1E_: argument 0"}
!85 = distinct !{!85, !"_RINvNvMs7_NtCs4tP8yUXWbFU_18libsignal_protocol13sealed_senderNtB8_25SealedSenderV2SentMessage5parse7advanceKj10_EBa_"}
!86 = distinct !{!86, !85, !"_RINvNvMs7_NtCs4tP8yUXWbFU_18libsignal_protocol13sealed_senderNtB8_25SealedSenderV2SentMessage5parse7advanceKj10_EBa_: argument 1"}
!87 = distinct !{!87, !85, !"_RINvNvMs7_NtCs4tP8yUXWbFU_18libsignal_protocol13sealed_senderNtB8_25SealedSenderV2SentMessage5parse7advanceKj10_EBa_: argument 0"}
!88 = distinct !{!88, !"_RINvNvMs7_NtCs4tP8yUXWbFU_18libsignal_protocol13sealed_senderNtB8_25SealedSenderV2SentMessage5parse7advanceKj11_EBa_"}
!89 = distinct !{!89, !88, !"_RINvNvMs7_NtCs4tP8yUXWbFU_18libsignal_protocol13sealed_senderNtB8_25SealedSenderV2SentMessage5parse7advanceKj11_EBa_: argument 1"}
!90 = distinct !{!90, !88, !"_RINvNvMs7_NtCs4tP8yUXWbFU_18libsignal_protocol13sealed_senderNtB8_25SealedSenderV2SentMessage5parse7advanceKj11_EBa_: argument 0"}
!91 = distinct !{!91, !"_RNvMs7_NtCsbwPL7qM37dJ_14libsignal_core7addressNtB5_9ServiceId40parse_from_service_id_fixed_width_binary"}
!92 = distinct !{!92, !91, !"_RNvMs7_NtCsbwPL7qM37dJ_14libsignal_core7addressNtB5_9ServiceId40parse_from_service_id_fixed_width_binary: argument 1"}
!93 = distinct !{!93, !91, !"_RNvMs7_NtCsbwPL7qM37dJ_14libsignal_core7addressNtB5_9ServiceId40parse_from_service_id_fixed_width_binary: argument 0"}
!94 = distinct !{!94, !"_RINvNvMs7_NtCs4tP8yUXWbFU_18libsignal_protocol13sealed_senderNtB8_25SealedSenderV2SentMessage5parse7advanceKj1_EBa_"}
!95 = distinct !{!95, !94, !"_RINvNvMs7_NtCs4tP8yUXWbFU_18libsignal_protocol13sealed_senderNtB8_25SealedSenderV2SentMessage5parse7advanceKj1_EBa_: argument 1"}
!96 = distinct !{!96, !94, !"_RINvNvMs7_NtCs4tP8yUXWbFU_18libsignal_protocol13sealed_senderNtB8_25SealedSenderV2SentMessage5parse7advanceKj1_EBa_: argument 0"}
!97 = distinct !{!97, !"_RINvNvMs7_NtCs4tP8yUXWbFU_18libsignal_protocol13sealed_senderNtB8_25SealedSenderV2SentMessage5parse7advanceKj2_EBa_"}
!98 = distinct !{!98, !97, !"_RINvNvMs7_NtCs4tP8yUXWbFU_18libsignal_protocol13sealed_senderNtB8_25SealedSenderV2SentMessage5parse7advanceKj2_EBa_: argument 1"}
!99 = distinct !{!99, !97, !"_RINvNvMs7_NtCs4tP8yUXWbFU_18libsignal_protocol13sealed_senderNtB8_25SealedSenderV2SentMessage5parse7advanceKj2_EBa_: argument 0"}
!100 = distinct !{!100, !"_RNvMsF_NtCs6i54tJFfzR_5alloc3vecINtB5_3VecTNtNtCsbwPL7qM37dJ_14libsignal_core7address8DeviceIdtEE8push_mutCs4tP8yUXWbFU_18libsignal_protocol"}
!101 = distinct !{!101, !100, !"_RNvMsF_NtCs6i54tJFfzR_5alloc3vecINtB5_3VecTNtNtCsbwPL7qM37dJ_14libsignal_core7address8DeviceIdtEE8push_mutCs4tP8yUXWbFU_18libsignal_protocol: argument 0"}
!102 = distinct !{!102, !"_RINvNvMs7_NtCs4tP8yUXWbFU_18libsignal_protocol13sealed_senderNtB8_25SealedSenderV2SentMessage5parse7advanceKj30_EBa_"}
!103 = distinct !{!103, !102, !"_RINvNvMs7_NtCs4tP8yUXWbFU_18libsignal_protocol13sealed_senderNtB8_25SealedSenderV2SentMessage5parse7advanceKj30_EBa_: argument 1"}
!104 = distinct !{!104, !102, !"_RINvNvMs7_NtCs4tP8yUXWbFU_18libsignal_protocol13sealed_senderNtB8_25SealedSenderV2SentMessage5parse7advanceKj30_EBa_: argument 0"}
!105 = distinct !{!105, !"_RNvMs_NtCsbPnb37KEv9e_8indexmap5innerINtB4_4CoreNtNtCsbwPL7qM37dJ_14libsignal_core7address9ServiceIdNtNtCs4tP8yUXWbFU_18libsignal_protocol13sealed_sender34SealedSenderV2SentMessageRecipientE13insert_uniqueB1E_"}
!106 = distinct !{!106, !105, !"_RNvMs_NtCsbPnb37KEv9e_8indexmap5innerINtB4_4CoreNtNtCsbwPL7qM37dJ_14libsignal_core7address9ServiceIdNtNtCs4tP8yUXWbFU_18libsignal_protocol13sealed_sender34SealedSenderV2SentMessageRecipientE13insert_uniqueB1E_: argument 0"}
!107 = distinct !{!107, !105, !"_RNvMs_NtCsbPnb37KEv9e_8indexmap5innerINtB4_4CoreNtNtCsbwPL7qM37dJ_14libsignal_core7address9ServiceIdNtNtCs4tP8yUXWbFU_18libsignal_protocol13sealed_sender34SealedSenderV2SentMessageRecipientE13insert_uniqueB1E_: argument 2"}
!108 = distinct !{!108, !105, !"_RNvMs_NtCsbPnb37KEv9e_8indexmap5innerINtB4_4CoreNtNtCsbwPL7qM37dJ_14libsignal_core7address9ServiceIdNtNtCs4tP8yUXWbFU_18libsignal_protocol13sealed_sender34SealedSenderV2SentMessageRecipientE13insert_uniqueB1E_: argument 1"}
!109 = distinct !{!109, !"_RNvMs_NtCsbPnb37KEv9e_8indexmap5innerINtB4_4CoreNtNtCsbwPL7qM37dJ_14libsignal_core7address9ServiceIdNtNtCs4tP8yUXWbFU_18libsignal_protocol13sealed_sender34SealedSenderV2SentMessageRecipientE10push_entryB1E_"}
!110 = distinct !{!110, !109, !"_RNvMs_NtCsbPnb37KEv9e_8indexmap5innerINtB4_4CoreNtNtCsbwPL7qM37dJ_14libsignal_core7address9ServiceIdNtNtCs4tP8yUXWbFU_18libsignal_protocol13sealed_sender34SealedSenderV2SentMessageRecipientE10push_entryB1E_: argument 0"}
!111 = distinct !{!111, !109, !"_RNvMs_NtCsbPnb37KEv9e_8indexmap5innerINtB4_4CoreNtNtCsbwPL7qM37dJ_14libsignal_core7address9ServiceIdNtNtCs4tP8yUXWbFU_18libsignal_protocol13sealed_sender34SealedSenderV2SentMessageRecipientE10push_entryB1E_: argument 2"}
!112 = distinct !{!112, !109, !"_RNvMs_NtCsbPnb37KEv9e_8indexmap5innerINtB4_4CoreNtNtCsbwPL7qM37dJ_14libsignal_core7address9ServiceIdNtNtCs4tP8yUXWbFU_18libsignal_protocol13sealed_sender34SealedSenderV2SentMessageRecipientE10push_entryB1E_: argument 1"}
!113 = distinct !{!113, !"_RNvMs_NtCsbPnb37KEv9e_8indexmap5innerINtB4_4CoreNtNtCsbwPL7qM37dJ_14libsignal_core7address9ServiceIdNtNtCs4tP8yUXWbFU_18libsignal_protocol13sealed_sender34SealedSenderV2SentMessageRecipientE15reserve_entriesB1E_"}
!114 = distinct !{!114, !113, !"_RNvMs_NtCsbPnb37KEv9e_8indexmap5innerINtB4_4CoreNtNtCsbwPL7qM37dJ_14libsignal_core7address9ServiceIdNtNtCs4tP8yUXWbFU_18libsignal_protocol13sealed_sender34SealedSenderV2SentMessageRecipientE15reserve_entriesB1E_: argument 0"}
!115 = distinct !{!115, !"_RNvMsF_NtCs6i54tJFfzR_5alloc3vecINtB5_3VecINtCsbPnb37KEv9e_8indexmap6BucketNtNtCsbwPL7qM37dJ_14libsignal_core7address9ServiceIdNtNtCs4tP8yUXWbFU_18libsignal_protocol13sealed_sender34SealedSenderV2SentMessageRecipientEE8push_mutB25_"}
!116 = distinct !{!116, !115, !"_RNvMsF_NtCs6i54tJFfzR_5alloc3vecINtB5_3VecINtCsbPnb37KEv9e_8indexmap6BucketNtNtCsbwPL7qM37dJ_14libsignal_core7address9ServiceIdNtNtCs4tP8yUXWbFU_18libsignal_protocol13sealed_sender34SealedSenderV2SentMessageRecipientEE8push_mutB25_: argument 0"}
!117 = distinct !{!117, !115, !"_RNvMsF_NtCs6i54tJFfzR_5alloc3vecINtB5_3VecINtCsbPnb37KEv9e_8indexmap6BucketNtNtCsbwPL7qM37dJ_14libsignal_core7address9ServiceIdNtNtCs4tP8yUXWbFU_18libsignal_protocol13sealed_sender34SealedSenderV2SentMessageRecipientEE8push_mutB25_: argument 1"}
!118 = !{!80, !79}
!119 = !{!82}
!120 = !{!84, !82}
!121 = !{!87, !86}
!122 = !{!90, !89}
!123 = !{!92}
!124 = !{!93, !92}
!125 = !{!93}
!126 = !{!96, !95}
!127 = !{!99, !98}
!128 = !{!101}
!129 = !{!104, !103}
!130 = !{!106}
!131 = !{!108, !107}
!132 = !{!106, !108, !107}
!133 = !{!106, !108}
!134 = !{!110}
!135 = !{!110, !106}
!136 = !{!112, !111, !108, !107}
!137 = !{!114, !110, !106}
!138 = !{!110, !112, !111, !108, !107}
!139 = !{!116, !110, !106}
!140 = !{!117, !112, !111, !108, !107}
!141 = !{!110, !112, !111, !106, !108, !107}
!142 = !{!112, !108, !107}
!143 = !{!108}
!144 = distinct !{!144, !"_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs6i54tJFfzR_5alloc3vec3VechEEECs4tP8yUXWbFU_18libsignal_protocol"}
!145 = distinct !{!145, !144, !"_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs6i54tJFfzR_5alloc3vec3VechEEECs4tP8yUXWbFU_18libsignal_protocol: argument 0"}
!146 = distinct !{!146, !"_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs6i54tJFfzR_5alloc6string6StringEECs4tP8yUXWbFU_18libsignal_protocol"}
!147 = distinct !{!147, !146, !"_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs6i54tJFfzR_5alloc6string6StringEECs4tP8yUXWbFU_18libsignal_protocol: argument 0"}
!148 = distinct !{!148, !"_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs6i54tJFfzR_5alloc3vec3VechEEECs4tP8yUXWbFU_18libsignal_protocol"}
!149 = distinct !{!149, !148, !"_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs6i54tJFfzR_5alloc3vec3VechEEECs4tP8yUXWbFU_18libsignal_protocol: argument 0"}
!150 = distinct !{!150, !"_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtNtNtCs4tP8yUXWbFU_18libsignal_protocol5proto13sealed_sender18sender_certificate11certificate6SignerEEB17_"}
!151 = distinct !{!151, !150, !"_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtNtNtCs4tP8yUXWbFU_18libsignal_protocol5proto13sealed_sender18sender_certificate11certificate6SignerEEB17_: argument 0"}
!152 = !{!145}
!153 = !{!147}
!154 = !{!149}
!155 = !{!151}
!156 = distinct !{!156, !"_RINvMs1_NtCsfBDUjroi3FF_9hashbrown3mapINtB6_7HashMapmTNtNtCsbwPL7qM37dJ_14libsignal_core5curve9PublicKeyNtNtCs4tP8yUXWbFU_18libsignal_protocol13sealed_sender17ServerCertificateENtNtNtCs9k3SxhrAWiO_3std4hash6random11RandomStateE3getmEB1I_"}
!157 = distinct !{!157, !156, !"_RINvMs1_NtCsfBDUjroi3FF_9hashbrown3mapINtB6_7HashMapmTNtNtCsbwPL7qM37dJ_14libsignal_core5curve9PublicKeyNtNtCs4tP8yUXWbFU_18libsignal_protocol13sealed_sender17ServerCertificateENtNtNtCs9k3SxhrAWiO_3std4hash6random11RandomStateE3getmEB1I_: argument 0"}
!158 = distinct !{!158, !"_RINvMs6_NtCsfBDUjroi3FF_9hashbrown3rawINtB6_8RawTableTmTNtNtCsbwPL7qM37dJ_14libsignal_core5curve9PublicKeyNtNtCs4tP8yUXWbFU_18libsignal_protocol13sealed_sender17ServerCertificateEEE4findNCINvNtB8_3map14equivalent_keymmBR_E0EB1K_"}
!159 = distinct !{!159, !158, !"_RINvMs6_NtCsfBDUjroi3FF_9hashbrown3rawINtB6_8RawTableTmTNtNtCsbwPL7qM37dJ_14libsignal_core5curve9PublicKeyNtNtCs4tP8yUXWbFU_18libsignal_protocol13sealed_sender17ServerCertificateEEE4findNCINvNtB8_3map14equivalent_keymmBR_E0EB1K_: argument 0"}
!160 = distinct !{!160, !"_RNvNtNtNtCsgxBkk5gSRhY_4core9core_arch3x864sse215__mm_loadu_si128"}
!161 = distinct !{!161, !160, !"_RNvNtNtNtCsgxBkk5gSRhY_4core9core_arch3x864sse215__mm_loadu_si128: argument 0"}
!162 = distinct !{!162, !"_RNCINvMs6_NtCsfBDUjroi3FF_9hashbrown3rawINtB8_8RawTableTmTNtNtCsbwPL7qM37dJ_14libsignal_core5curve9PublicKeyNtNtCs4tP8yUXWbFU_18libsignal_protocol13sealed_sender17ServerCertificateEEE4findNCINvNtBa_3map14equivalent_keymmBT_E0E0B1M_"}
!163 = distinct !{!163, !162, !"_RNCINvMs6_NtCsfBDUjroi3FF_9hashbrown3rawINtB8_8RawTableTmTNtNtCsbwPL7qM37dJ_14libsignal_core5curve9PublicKeyNtNtCs4tP8yUXWbFU_18libsignal_protocol13sealed_sender17ServerCertificateEEE4findNCINvNtBa_3map14equivalent_keymmBT_E0E0B1M_: argument 0"}
!164 = !{!157}
!165 = !{!159, !157}
!166 = !{!161}
!167 = !{!163, !159, !157}
!168 = !{!163}
!169 = distinct !{!169, !"_RINvMs_NtCs4tP8yUXWbFU_18libsignal_protocol13sealed_senderNtB5_17SenderCertificate25validate_with_trust_rootsRNtNtCsbwPL7qM37dJ_14libsignal_core5curve9PublicKeyEB7_"}
!170 = distinct !{!170, !169, !"_RINvMs_NtCs4tP8yUXWbFU_18libsignal_protocol13sealed_senderNtB5_17SenderCertificate25validate_with_trust_rootsRNtNtCsbwPL7qM37dJ_14libsignal_core5curve9PublicKeyEB7_: argument 0"}
!171 = distinct !{!171, !169, !"_RINvMs_NtCs4tP8yUXWbFU_18libsignal_protocol13sealed_senderNtB5_17SenderCertificate25validate_with_trust_rootsRNtNtCsbwPL7qM37dJ_14libsignal_core5curve9PublicKeyEB7_: argument 1"}
end_hunk_2

Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/pingora-rs/original/pingora_load_balancing-58aa6fa8707f0f42.pingora_load_balancing.21c3f6b127470a61-cgu.15?download=true
inline.NumInlined: 290
inline.NumDeleted: 158
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 3
begin_hunk_0_@_RINvMNtNtCs84JG9zk80ZV_4http6header5valueNtB3_11HeaderValue16try_from_genericRShNvMNtCs1eA6bChxBZF_5bytes5bytesNtB1j_5Bytes15copy_from_sliceECs2TJrahNLnPN_22pingora_load_balancing:bb.a
  %min.epilog.iters.check = icmp eq i64 %i.c, 0
  br i1 %min.epilog.iters.check, label %.lr.ph.preheader, label %vec.epilog.ph, !prof !9

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %bc.merge.rdx = phi i1 [ %i.t, %vec.epilog.iter.check ], [ false, %vector.main.loop.iter.check ]
  %n.vec14 = and i64 %2, 9223372036854775800      ; 3 uses
  %i.u = getelementptr i8, ptr %1, i64 %n.vec14
  %i.v = insertelement <8 x i1> <i1 poison, i1 false, i1 false, i1 false, i1 false, i1 false, i1 false, i1 false>, i1 %bc.merge.rdx, i64 0
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index15 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next19, %vec.epilog.vector.body ] ; 2 uses
  %vec.phi16 = phi <8 x i1> [ %i.v, %vec.epilog.ph ], [ %i.ab, %vec.epilog.vector.body ]
  %next.gep17 = getelementptr i8, ptr %1, i64 %index15
  %wide.load18 = load <8 x i8>, ptr %next.gep17, align 1 ; 3 uses
  %i.w = icmp ult <8 x i8> %wide.load18, splat (i8 32)
  %i.x = icmp eq <8 x i8> %wide.load18, splat (i8 127)
  %i.y = or <8 x i1> %i.w, %i.x
  %i.z = icmp ne <8 x i8> %wide.load18, splat (i8 9)
  %i.aa = and <8 x i1> %i.y, %i.z
  %i.ab = or <8 x i1> %vec.phi16, %i.aa           ; 2 uses
  %index.next19 = add nuw i64 %index15, 8         ; 2 uses
  %i.ac = icmp eq i64 %index.next19, %n.vec14
  br i1 %i.ac, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !29

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %i.ad = bitcast <8 x i1> %i.ab to i8
  %i.ae = icmp ne i8 %i.ad, 0                     ; 2 uses
  %cmp.n20 = icmp eq i64 %2, %n.vec14
  br i1 %cmp.n20, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.sroa.0.010.ph = phi i1 [ false, %iter.check ], [ %i.t, %vec.epilog.iter.check ], [ %i.ae, %vec.epilog.middle.block ]
  %.sroa.02.09.ph = phi ptr [ %1, %iter.check ], [ %i.d, %vec.epilog.iter.check ], [ %i.u, %vec.epilog.middle.block ]
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.c
  %.sroa.0.010 = phi i1 [ %.sroa.04.0, %bb.c ], [ %.sroa.0.010.ph, %.lr.ph.preheader ] ; 2 uses
  %.sroa.02.09 = phi ptr [ %i.af, %bb.c ], [ %.sroa.02.09.ph, %.lr.ph.preheader ] ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %.sroa.02.09, i64 1 ; 2 uses
  %i.ag = load i8, ptr %.sroa.02.09, align 1, !noundef !6 ; 3 uses
  %i.ah = icmp ult i8 %i.ag, 32
  %i.ai = icmp eq i8 %i.ag, 127
  %or.cond = or i1 %i.ah, %i.ai
  br i1 %or.cond, label %bb.b, label %bb.c

._crit_edge:                                      ; preds = %bb.c, %vec.epilog.middle.block, %middle.block
  %.sroa.04.0.lcssa = phi i1 [ %i.ae, %vec.epilog.middle.block ], [ %i.t, %middle.block ], [ %.sroa.04.0, %bb.c ]
  br i1 %.sroa.04.0.lcssa, label %bb.d, label %.critedge

bb.b:                                             ; preds = %.lr.ph
  %i.aj = icmp ne i8 %i.ag, 9
  %i.ak = or i1 %.sroa.0.010, %i.aj
  br label %bb.c

bb.c:                                             ; preds = %.lr.ph, %bb.b
  %.sroa.04.0 = phi i1 [ %i.ak, %bb.b ], [ %.sroa.0.010, %.lr.ph ] ; 2 uses
  %i.al = icmp eq ptr %i.af, %i.a
  br i1 %i.al, label %._crit_edge, label %.lr.ph, !llvm.loop !30

.critedge:                                        ; preds = %bb.a, %._crit_edge
  tail call void @_RNvMNtCs1eA6bChxBZF_5bytes5bytesNtB2_5Bytes15copy_from_slice(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(address) dereferenceable(32) %0, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef range(i64 0, -9223372036854775808) %2)
  br label %bb.d

bb.d:                                             ; preds = %._crit_edge, %.critedge
  %.sink = phi i8 [ 0, %.critedge ], [ 2, %._crit_edge ]
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i8 %.sink, ptr %i.am, align 8
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvMNtNtCs84JG9zk80ZV_4http6header5valueNtB3_11HeaderValue16try_from_genericReNCNvB2_8from_str0ECs2TJrahNLnPN_22pingora_load_balancing(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([40 x i8]) align 8 captures(none) dereferenceable(40) %0, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef %2) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 %2
  %i.b = icmp samesign eq i64 %2, 0
  br i1 %i.b, label %.critedge, label %iter.check

iter.check:                                       ; preds = %bb.a
  %min.iters.check = icmp ult i64 %2, 8
  br i1 %min.iters.check, label %.lr.ph.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check11 = icmp ult i64 %2, 32
  br i1 %min.iters.check11, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.c = and i64 %2, 24
  %n.vec = and i64 %2, -32                        ; 4 uses
  %i.d = getelementptr i8, ptr %1, i64 %n.vec
  br label %vector.body

vector.body:                                      ; preds = %vector.ph, %vector.body
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.phi = phi <16 x i1> [ zeroinitializer, %vector.ph ], [ %i.o, %vector.body ]
  %vec.phi12 = phi <16 x i1> [ zeroinitializer, %vector.ph ], [ %i.q, %vector.body ]
  %next.gep = getelementptr i8, ptr %1, i64 %index ; 2 uses
  %i.e = getelementptr i8, ptr %next.gep, i64 16
  %wide.load = load <16 x i8>, ptr %next.gep, align 1 ; 3 uses
  %wide.load13 = load <16 x i8>, ptr %i.e, align 1 ; 3 uses
  %i.f = icmp ult <16 x i8> %wide.load, splat (i8 32)
  %i.g = icmp ult <16 x i8> %wide.load13, splat (i8 32)
  %i.h = icmp eq <16 x i8> %wide.load, splat (i8 127)
  %i.i = icmp eq <16 x i8> %wide.load13, splat (i8 127)
  %i.j = or <16 x i1> %i.f, %i.h
  %i.k = or <16 x i1> %i.g, %i.i
  %i.l = icmp ne <16 x i8> %wide.load, splat (i8 9)
  %i.m = icmp ne <16 x i8> %wide.load13, splat (i8 9)
  %i.n = and <16 x i1> %i.j, %i.l
  %i.o = or <16 x i1> %vec.phi, %i.n              ; 2 uses
  %i.p = and <16 x i1> %i.k, %i.m
  %i.q = or <16 x i1> %vec.phi12, %i.p            ; 2 uses
  %index.next = add nuw i64 %index, 32            ; 2 uses
  %i.r = icmp eq i64 %index.next, %n.vec
  br i1 %i.r, label %middle.block, label %vector.body, !llvm.loop !31

middle.block:                                     ; preds = %vector.body
  %bin.rdx = or <16 x i1> %i.q, %i.o
  %i.s = bitcast <16 x i1> %bin.rdx to i16
  %i.t = icmp ne i16 %i.s, 0                      ; 3 uses
  %cmp.n = icmp eq i64 %2, %n.vec
  br i1 %cmp.n, label %._crit_edge, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.c, 0
  br i1 %min.epilog.iters.check, label %.lr.ph.preheader, label %vec.epilog.ph, !prof !9

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %bc.merge.rdx = phi i1 [ %i.t, %vec.epilog.iter.check ], [ false, %vector.main.loop.iter.check ]
  %n.vec14 = and i64 %2, -8                       ; 3 uses
  %i.u = getelementptr i8, ptr %1, i64 %n.vec14
  %i.v = insertelement <8 x i1> <i1 poison, i1 false, i1 false, i1 false, i1 false, i1 false, i1 false, i1 false>, i1 %bc.merge.rdx, i64 0
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index15 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next19, %vec.epilog.vector.body ] ; 2 uses
  %vec.phi16 = phi <8 x i1> [ %i.v, %vec.epilog.ph ], [ %i.ab, %vec.epilog.vector.body ]
  %next.gep17 = getelementptr i8, ptr %1, i64 %index15
  %wide.load18 = load <8 x i8>, ptr %next.gep17, align 1 ; 3 uses
  %i.w = icmp ult <8 x i8> %wide.load18, splat (i8 32)
  %i.x = icmp eq <8 x i8> %wide.load18, splat (i8 127)
  %i.y = or <8 x i1> %i.w, %i.x
  %i.z = icmp ne <8 x i8> %wide.load18, splat (i8 9)
  %i.aa = and <8 x i1> %i.y, %i.z
  %i.ab = or <8 x i1> %vec.phi16, %i.aa           ; 2 uses
  %index.next19 = add nuw i64 %index15, 8         ; 2 uses
  %i.ac = icmp eq i64 %index.next19, %n.vec14
  br i1 %i.ac, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !32

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %i.ad = bitcast <8 x i1> %i.ab to i8
  %i.ae = icmp ne i8 %i.ad, 0                     ; 2 uses
  %cmp.n20 = icmp eq i64 %2, %n.vec14
  br i1 %cmp.n20, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.sroa.0.010.ph = phi i1 [ false, %iter.check ], [ %i.t, %vec.epilog.iter.check ], [ %i.ae, %vec.epilog.middle.block ]
  %.sroa.02.09.ph = phi ptr [ %1, %iter.check ], [ %i.d, %vec.epilog.iter.check ], [ %i.u, %vec.epilog.middle.block ]
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.c
  %.sroa.0.010 = phi i1 [ %.sroa.04.0, %bb.c ], [ %.sroa.0.010.ph, %.lr.ph.preheader ] ; 2 uses
  %.sroa.02.09 = phi ptr [ %i.af, %bb.c ], [ %.sroa.02.09.ph, %.lr.ph.preheader ] ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %.sroa.02.09, i64 1 ; 2 uses
  %i.ag = load i8, ptr %.sroa.02.09, align 1, !noundef !6 ; 3 uses
  %i.ah = icmp ult i8 %i.ag, 32
  %i.ai = icmp eq i8 %i.ag, 127
  %or.cond = or i1 %i.ah, %i.ai
  br i1 %or.cond, label %bb.b, label %bb.c

._crit_edge:                                      ; preds = %bb.c, %vec.epilog.middle.block, %middle.block
  %.sroa.04.0.lcssa = phi i1 [ %i.ae, %vec.epilog.middle.block ], [ %i.t, %middle.block ], [ %.sroa.04.0, %bb.c ]
  br i1 %.sroa.04.0.lcssa, label %bb.d, label %.critedge

bb.b:                                             ; preds = %.lr.ph
  %i.aj = icmp ne i8 %i.ag, 9
  %i.ak = or i1 %.sroa.0.010, %i.aj
  br label %bb.c

bb.c:                                             ; preds = %.lr.ph, %bb.b
  %.sroa.04.0 = phi i1 [ %i.ak, %bb.b ], [ %.sroa.0.010, %.lr.ph ] ; 2 uses
  %i.al = icmp eq ptr %i.af, %i.a
  br i1 %i.al, label %._crit_edge, label %.lr.ph, !llvm.loop !33

.critedge:                                        ; preds = %bb.a, %._crit_edge
  tail call void @_RNvMNtCs1eA6bChxBZF_5bytes5bytesNtB2_5Bytes15copy_from_slice(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(address) dereferenceable(32) %0, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef %2)
  br label %bb.d

bb.d:                                             ; preds = %._crit_edge, %.critedge
  %.sink = phi i8 [ 0, %.critedge ], [ 2, %._crit_edge ]
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i8 %.sink, ptr %i.am, align 8
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvMNtNtCs84JG9zk80ZV_4http6header5valueNtB3_11HeaderValue27from_maybe_shared_uncheckedNtNtCs1eA6bChxBZF_5bytes5bytes5BytesECs2TJrahNLnPN_22pingora_load_balancing(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([40 x i8]) align 8 captures(none) dereferenceable(40) %0, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(32) %1) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %.sroa.016.0.copyload = load ptr, ptr %1, align 8 ; 2 uses
  %.not = icmp eq ptr %.sroa.016.0.copyload, null
  br i1 %.not, label %bb.b, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs1eA6bChxBZF_5bytes5bytes5BytesEECs2TJrahNLnPN_22pingora_load_balancing.exit10, !prof !10

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs1eA6bChxBZF_5bytes5bytes5BytesEECs2TJrahNLnPN_22pingora_load_balancing.exit10: ; preds = %bb.a
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 24
  %.sroa.6.0.copyload = load ptr, ptr %.sroa.6.0..sroa_idx, align 8
  %.sroa.518.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.sroa.518.0.copyload = load i64, ptr %.sroa.518.0..sroa_idx, align 8
  %.sroa.417.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.sroa.417.0.copyload = load ptr, ptr %.sroa.417.0..sroa_idx, align 8
  store ptr %.sroa.016.0.copyload, ptr %0, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sroa.417.0.copyload, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.4.sroa.4.0..sroa.4.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %.sroa.518.0.copyload, ptr %.sroa.4.sroa.4.0..sroa.4.0..sroa_idx.sroa_idx, align 8
  %.sroa.4.sroa.5.0..sroa.4.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr %.sroa.6.0.copyload, ptr %.sroa.4.sroa.5.0..sroa.4.0..sroa_idx.sroa_idx, align 8
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i8 0, ptr %i.a, align 8
  ret void

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvNtCskKLDkoKarTP_4core6option13unwrap_failed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1) #25
  unreachable
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvMNtNtNtNtCsG258MDvU3F_3std2os4unix3net4addrNtB3_10SocketAddr13from_pathnameRNtNtBb_4path4PathECs2TJrahNLnPN_22pingora_load_balancing(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([120 x i8]) align 8 captures(none) dereferenceable(120) initializes((0, 4), (8, 16)) %0, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef %2) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [120 x i8], align 8               ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @_RNvNtNtNtNtCsG258MDvU3F_3std2os4unix3net4addr11sockaddr_un(ptr noalias nofree noundef nonnull sret([120 x i8]) align 8 captures(none) dereferenceable(120) %i.a, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef %2)
  %i.b = load i32, ptr %i.a, align 8, !range !11, !noundef !6
  %i.c = trunc nuw i32 %i.b to i1
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.e = load ptr, ptr %i.d, align 8, !nonnull !6, !noundef !6
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.e, ptr %i.f, align 8
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(110) %.sroa.4.0..sroa_idx, ptr noundef nonnull align 4 dereferenceable(110) %i.g, i64 110, i1 false)
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 116
  %i.i = load i32, ptr %i.h, align 4, !noundef !6
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i32 %i.i, ptr %i.j, align 4
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.sink = phi i32 [ 1, %bb.b ], [ 0, %bb.c ]
  store i32 %.sink, ptr %0, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvMs0_NtNtNtCsifUeDn7Bu1H_3nix3sys6socket4addrNtB6_8UnixAddr3newNtNtCsG258MDvU3F_3std4path4PathECs2TJrahNLnPN_22pingora_load_balancing(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([116 x i8]) align 4 captures(none) dereferenceable(116) initializes((0, 2), (4, 8)) %0, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef %2) unnamed_addr #1 {
bb.a:
  %i.a = alloca [116 x i8], align 4               ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @_RINvXs2_CsifUeDn7Bu1H_3nixNtNtCsG258MDvU3F_3std4path4PathNtB6_7NixPath13with_nix_pathINtNtCskKLDkoKarTP_4core6result6ResultNtNtNtNtB6_3sys6socket4addr8UnixAddrNtNtNtB6_5errno6consts5ErrnoENCINvMs0_B1Z_B1X_3newBo_E0ECs2TJrahNLnPN_22pingora_load_balancing(ptr noalias nofree noundef nonnull sret([116 x i8]) align 4 captures(address) dereferenceable(116) %i.a, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef %2)
  %i.b = load i16, ptr %i.a, align 4, !range !34, !noundef !6 ; 2 uses
  %i.c = icmp eq i16 %i.b, 2
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  %i.e = load i32, ptr %i.d, align 4, !range !35, !noundef !6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 2
  %.sroa.4.0.copyload = load i16, ptr %.sroa.4.0..sroa_idx, align 2
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  %.sroa.5.0.copyload = load i32, ptr %.sroa.5.0..sroa_idx, align 4
  %.sroa.69.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %.sroa.8.0..sroa_idx7 = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(108) %.sroa.8.0..sroa_idx7, ptr noundef nonnull align 4 dereferenceable(108) %.sroa.69.0..sroa_idx, i64 108, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %.sroa.6.0..sroa_idx2 = getelementptr inbounds nuw i8, ptr %0, i64 2
  store i16 %.sroa.4.0.copyload, ptr %.sroa.6.0..sroa_idx2, align 2
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.sroa.5.0.copyload.sink = phi i32 [ %i.e, %bb.b ], [ %.sroa.5.0.copyload, %bb.c ]
  %.sink = phi i16 [ 1, %bb.b ], [ %i.b, %bb.c ]
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i32 %.sroa.5.0.copyload.sink, ptr %i.f, align 4
  store i16 %.sink, ptr %0, align 4
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden { i64, i64 } @_RINvMs2_NtNtCsG258MDvU3F_3std6thread5localINtB6_8LocalKeyINtNtCskKLDkoKarTP_4core4cell4CellINtNtBY_6option6OptionNtNtCse0v0U5LqnG1_12thread_local9thread_id6ThreadEEE4withNCNvB1P_3get0B1N_ECs2TJrahNLnPN_22pingora_load_balancing(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %0) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %.val = load ptr, ptr %0, align 8, !nonnull !6, !noundef !6
  %i.a = tail call noundef ptr %.val(ptr noalias nofree noundef align 8 dereferenceable_or_null(32) null), !noalias !39, !inline_history !38 ; 5 uses
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  %.sroa.01.0.copyload.i.i = load i64, ptr %i.a, align 8, !noalias !39
  %i.c = trunc nuw i64 %.sroa.01.0.copyload.i.i to i1
  br i1 %i.c, label %bb.c, label %bb.d, !prof !40

bb.c:                                             ; preds = %bb.b
  %.sroa.5.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %.sroa.5.0.copyload.i.i = load i64, ptr %.sroa.5.0..sroa_idx.i.i, align 8, !noalias !39
  %.sroa.4.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %.sroa.4.0.copyload.i.i = load i64, ptr %.sroa.4.0..sroa_idx.i.i, align 8, !noalias !39
  %i.d = insertvalue { i64, i64 } poison, i64 %.sroa.4.0.copyload.i.i, 0
  %i.e = insertvalue { i64, i64 } %i.d, i64 %.sroa.5.0.copyload.i.i, 1
  br label %bb.f

bb.d:                                             ; preds = %bb.b
  %i.f = tail call { i64, i64 } @_RNvNtCse0v0U5LqnG1_12thread_local9thread_id8get_slow(ptr noundef nonnull align 8 %i.a), !noalias !39
  br label %bb.f

bb.e:                                             ; preds = %bb.a
  tail call void @_RNvNtNtCsG258MDvU3F_3std6thread5local18panic_access_error(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @6) #26
  unreachable

bb.f:                                             ; preds = %bb.d, %bb.c
  %.merged.i.i = phi { i64, i64 } [ %i.e, %bb.c ], [ %i.f, %bb.d ]
  ret { i64, i64 } %.merged.i.i
}

; Function Attrs: nonlazybind uwtable
define hidden { i64, i64 } @_RINvMs2_NtNtCsG258MDvU3F_3std6thread5localINtB6_8LocalKeyINtNtCskKLDkoKarTP_4core4cell4CellTyyEEE4withNCNvMNtNtBa_4hash6randomNtB1H_11RandomState3new0B20_ECs2TJrahNLnPN_22pingora_load_balancing(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %0) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %.val = load ptr, ptr %0, align 8, !nonnull !6, !noundef !6
  %i.a = tail call noundef ptr %.val(ptr noalias nofree noundef align 8 dereferenceable_or_null(24) null), !noalias !44, !inline_history !43 ; 4 uses
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvNtNtCsG258MDvU3F_3std6thread5local18panic_access_error(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @6) #26
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.c = load i64, ptr %i.a, align 8, !noalias !44, !noundef !6 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.e = load i64, ptr %i.d, align 8, !noalias !44, !noundef !6
  %i.f = add i64 %i.c, 1
  store i64 %i.f, ptr %i.a, align 8, !noalias !44
  %i.g = insertvalue { i64, i64 } poison, i64 %i.c, 0
  %i.h = insertvalue { i64, i64 } %i.g, i64 %i.e, 1
  ret { i64, i64 } %i.h
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDNtNtB4_5error5ErrorNtNtB4_6marker4SendNtB1S_4SyncEL_EEECs2TJrahNLnPN_22pingora_load_balancing(ptr %.0.val, ptr nofree readonly captures(none) %.8.val) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = icmp eq ptr %.0.val, null
  br i1 %i.a, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDNtNtB4_5error5ErrorNtNtB4_6marker4SendNtB1w_4SyncEL_EECs2TJrahNLnPN_22pingora_load_balancing.exit, label %bb.b

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDNtNtB4_5error5ErrorNtNtB4_6marker4SendNtB1w_4SyncEL_EECs2TJrahNLnPN_22pingora_load_balancing.exit: ; preds = %bb.e, %bb.d, %bb.a
  ret void

bb.b:                                             ; preds = %bb.a
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.8.val) ]
  %i.b = load ptr, ptr %.8.val, align 8, !invariant.load !6 ; 2 uses
  %.not.i = icmp eq ptr %i.b, null
  br i1 %.not.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  invoke void %i.b(ptr noundef nonnull %.0.val)
          to label %bb.d unwind label %bb.f

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.c = getelementptr inbounds nuw i8, ptr %.8.val, i64 8
  %i.d = load i64, ptr %i.c, align 8, !range !12, !invariant.load !6 ; 2 uses
  %i.e = icmp eq i64 %i.d, 0
  br i1 %i.e, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDNtNtB4_5error5ErrorNtNtB4_6marker4SendNtB1w_4SyncEL_EECs2TJrahNLnPN_22pingora_load_balancing.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.f = getelementptr inbounds nuw i8, ptr %.8.val, i64 16
  %i.g = load i64, ptr %i.f, align 8, !range !13, !invariant.load !6
  tail call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %.0.val, i64 noundef range(i64 1, 0) %i.d, i64 noundef range(i64 1, 536870913) %i.g) #23
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDNtNtB4_5error5ErrorNtNtB4_6marker4SendNtB1w_4SyncEL_EECs2TJrahNLnPN_22pingora_load_balancing.exit

bb.f:                                             ; preds = %bb.c
  %i.h = landingpad { ptr, i32 }
          cleanup
  %i.i = getelementptr inbounds nuw i8, ptr %.8.val, i64 8
  %i.j = load i64, ptr %i.i, align 8, !range !12, !invariant.load !6 ; 2 uses
  %i.k = icmp eq i64 %i.j, 0
  br i1 %i.k, label %_RNvXs8_NtCsexYYUdYSQU6_5alloc5boxedINtB5_3BoxDNtNtCskKLDkoKarTP_4core5error5ErrorNtNtBM_6marker4SendNtB1j_4SyncEL_ENtNtNtBM_3ops4drop4Drop4dropCs2TJrahNLnPN_22pingora_load_balancing.exit4.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.l = getelementptr inbounds nuw i8, ptr %.8.val, i64 16
  %i.m = load i64, ptr %i.l, align 8, !range !13, !invariant.load !6
  tail call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %.0.val, i64 noundef range(i64 1, 0) %i.j, i64 noundef range(i64 1, 536870913) %i.m) #23
  br label %_RNvXs8_NtCsexYYUdYSQU6_5alloc5boxedINtB5_3BoxDNtNtCskKLDkoKarTP_4core5error5ErrorNtNtBM_6marker4SendNtB1j_4SyncEL_ENtNtNtBM_3ops4drop4Drop4dropCs2TJrahNLnPN_22pingora_load_balancing.exit4.i

_RNvXs8_NtCsexYYUdYSQU6_5alloc5boxedINtB5_3BoxDNtNtCskKLDkoKarTP_4core5error5ErrorNtNtBM_6marker4SendNtB1j_4SyncEL_ENtNtNtBM_3ops4drop4Drop4dropCs2TJrahNLnPN_22pingora_load_balancing.exit4.i: ; preds = %bb.g, %bb.f
  resume { ptr, i32 } %i.h
}

; Function Attrs: nounwind nonlazybind uwtable
define internal fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsfsXztIhCltD_13pingora_error9immut_str8ImmutStrEECs2TJrahNLnPN_22pingora_load_balancing(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %0) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  %i.a = load i64, ptr %0, align 8, !range !14, !noundef !6 ; 2 uses
  %i.b = icmp eq i64 %i.a, 2
  br i1 %i.b, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsfsXztIhCltD_13pingora_error9immut_str8ImmutStrECs2TJrahNLnPN_22pingora_load_balancing.exit, label %bb.b

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsfsXztIhCltD_13pingora_error9immut_str8ImmutStrECs2TJrahNLnPN_22pingora_load_balancing.exit: ; preds = %bb.d, %bb.c, %bb.b, %bb.a
end_hunk_0

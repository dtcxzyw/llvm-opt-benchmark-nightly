Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/tev/original/pixelimage?download=true
inline.NumInlined: 4522
inline.NumDeleted: 2364
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumRuntimeUnrolled: 34
loop-unroll.NumUnrolled: 36
begin_hunk_0_@_ZN14HeifPixelImage29allocate_buffer_for_componentEjPK20heif_security_limits:bb.a
  br i1 %.not, label %bb.m, label %.critedge

bb.l:                                             ; preds = %bb.w, %bb.t, %_ZNSt3__16vectorIjNS_9allocatorIjEEED2B8ne180100Ev.exit
  %i.as = landingpad { ptr, i32 }
          cleanup
  %.pre44 = load ptr, ptr %i.ae, align 8, !tbaa !42
  br label %.body

bb.m:                                             ; preds = %bb.k
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.au = load i8, ptr %i.at, align 8
  %i.av = trunc i8 %i.au to i1
  br i1 %i.av, label %bb.n, label %_ZN5ErrorD2Ev.exit

bb.n:                                             ; preds = %bb.m
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.ax = load ptr, ptr %i.aw, align 8, !tbaa !36
  %i.ay = load i64, ptr %i.at, align 8
  %i.az = and i64 %i.ay, -2
  tail call void @_ZdlPvm(ptr noundef %i.ax, i64 noundef %i.az) #29
  br label %_ZN5ErrorD2Ev.exit

_ZN5ErrorD2Ev.exit:                               ; preds = %bb.m, %bb.n
  %i.ba = getelementptr inbounds nuw i8, ptr %1, i64 392 ; 4 uses
  %i.bb = load ptr, ptr %i.ba, align 8, !tbaa !29 ; 8 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %1, i64 400
  %i.bd = load ptr, ptr %i.bc, align 8, !tbaa !45
  %i.be = icmp ult ptr %i.bb, %i.bd
  br i1 %i.be, label %bb.o, label %bb.t

bb.o:                                             ; preds = %_ZN5ErrorD2Ev.exit
  %i.bf = load i32, ptr %5, align 8, !tbaa !57
  store i32 %i.bf, ptr %i.bb, align 8, !tbaa !57
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bb, i64 8 ; 4 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bb, i64 16 ; 3 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bb, i64 24 ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.bg, i8 0, i64 24, i1 false)
  %i.bj = load ptr, ptr %i.ae, align 8, !tbaa !42 ; 4 uses
  %i.bk = load ptr, ptr %i.an, align 8, !tbaa !43 ; 2 uses
  %i.bl = ptrtoint ptr %i.bk to i64
  %i.bm = ptrtoint ptr %i.bj to i64
  %i.bn = sub i64 %i.bl, %i.bm                    ; 4 uses
  %.not.i.i.i.i.i.i.i.i = icmp eq ptr %i.bk, %i.bj
  br i1 %.not.i.i.i.i.i.i.i.i, label %_ZNSt3__16vectorIN14HeifPixelImage16ComponentStorageENS_9allocatorIS2_EEE22__construct_one_at_endB8ne180100IJRKS2_EEEvDpOT_.exit.i, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.bo = icmp slt i64 %i.bn, 0
  br i1 %i.bo, label %bb.q, label %_ZNSt3__119__allocate_at_leastB8ne180100INS_9allocatorIjEEEENS_19__allocation_resultINS_16allocator_traitsIT_E7pointerEEERS5_m.exit.i.i.i.i.i.i.i.i.i

bb.q:                                             ; preds = %bb.p
  invoke void @_ZNKSt3__16vectorIjNS_9allocatorIjEEE20__throw_length_errorB8ne180100Ev(ptr noundef nonnull align 8 dereferenceable(24) %i.bg) #33
          to label %.noexc.i.i.i.i.i.i.i.i unwind label %bb.r

.noexc.i.i.i.i.i.i.i.i:                           ; preds = %bb.q
  unreachable

_ZNSt3__119__allocate_at_leastB8ne180100INS_9allocatorIjEEEENS_19__allocation_resultINS_16allocator_traitsIT_E7pointerEEERS5_m.exit.i.i.i.i.i.i.i.i.i: ; preds = %bb.p
  %i.bp = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.bn) #32
          to label %_ZNSt3__16vectorIjNS_9allocatorIjEEE18__construct_at_endIPjS5_EEvT_T0_m.exit.i.i.i.i.i.i.i.i unwind label %bb.r ; 4 uses

_ZNSt3__16vectorIjNS_9allocatorIjEEE18__construct_at_endIPjS5_EEvT_T0_m.exit.i.i.i.i.i.i.i.i: ; preds = %_ZNSt3__119__allocate_at_leastB8ne180100INS_9allocatorIjEEEENS_19__allocation_resultINS_16allocator_traitsIT_E7pointerEEERS5_m.exit.i.i.i.i.i.i.i.i.i
  store ptr %i.bp, ptr %i.bg, align 8, !tbaa !42
  store ptr %i.bp, ptr %i.bh, align 8, !tbaa !43
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bp, i64 %i.bn ; 2 uses
  store ptr %i.bq, ptr %i.bi, align 8, !tbaa !44
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %i.bp, ptr align 4 %i.bj, i64 %i.bn, i1 false)
  store ptr %i.bq, ptr %i.bh, align 8, !tbaa !43
  br label %_ZNSt3__16vectorIN14HeifPixelImage16ComponentStorageENS_9allocatorIS2_EEE22__construct_one_at_endB8ne180100IJRKS2_EEEvDpOT_.exit.i

bb.r:                                             ; preds = %_ZNSt3__119__allocate_at_leastB8ne180100INS_9allocatorIjEEEENS_19__allocation_resultINS_16allocator_traitsIT_E7pointerEEERS5_m.exit.i.i.i.i.i.i.i.i.i, %bb.q
  %i.br = landingpad { ptr, i32 }
          cleanup
  %i.bs = load ptr, ptr %i.bg, align 8, !tbaa !42 ; 4 uses
  %.not.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.bs, null
  br i1 %.not.i.i.i.i.i.i.i.i.i.i, label %.body.i.i, label %bb.s

bb.s:                                             ; preds = %bb.r
  store ptr %i.bs, ptr %i.bh, align 8, !tbaa !43
  %i.bt = load ptr, ptr %i.bi, align 8, !tbaa !44
  %i.bu = ptrtoint ptr %i.bt to i64
  %i.bv = ptrtoint ptr %i.bs to i64
  %i.bw = sub i64 %i.bu, %i.bv
  tail call void @_ZdlPvm(ptr noundef nonnull %i.bs, i64 noundef %i.bw) #29
  br label %.body.i.i

.body.i.i:                                        ; preds = %bb.s, %bb.r
  store ptr %i.bb, ptr %i.ba, align 8, !tbaa !29
  br label %.body

_ZNSt3__16vectorIN14HeifPixelImage16ComponentStorageENS_9allocatorIS2_EEE22__construct_one_at_endB8ne180100IJRKS2_EEEvDpOT_.exit.i: ; preds = %_ZNSt3__16vectorIjNS_9allocatorIjEEE18__construct_at_endIPjS5_EEvT_T0_m.exit.i.i.i.i.i.i.i.i, %bb.o
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bb, i64 32
  %i.by = getelementptr inbounds nuw i8, ptr %5, i64 32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.bx, ptr noundef nonnull align 8 dereferenceable(56) %i.by, i64 56, i1 false)
  %i.bz = getelementptr inbounds nuw i8, ptr %i.bb, i64 88 ; 2 uses
  store ptr %i.bz, ptr %i.ba, align 8, !tbaa !29
  br label %bb.u

bb.t:                                             ; preds = %_ZN5ErrorD2Ev.exit
  %i.ca = getelementptr inbounds nuw i8, ptr %1, i64 384
  %i.cb = invoke noundef ptr @_ZNSt3__16vectorIN14HeifPixelImage16ComponentStorageENS_9allocatorIS2_EEE21__push_back_slow_pathIRKS2_EEPS2_OT_(ptr noundef nonnull align 8 dereferenceable(24) %i.ca, ptr noundef nonnull align 8 dereferenceable(88) %5)
          to label %bb.u unwind label %bb.l

bb.u:                                             ; preds = %_ZNSt3__16vectorIN14HeifPixelImage16ComponentStorageENS_9allocatorIS2_EEE22__construct_one_at_endB8ne180100IJRKS2_EEEvDpOT_.exit.i, %bb.t
  %.0.i = phi ptr [ %i.bz, %_ZNSt3__16vectorIN14HeifPixelImage16ComponentStorageENS_9allocatorIS2_EEE22__construct_one_at_endB8ne180100IJRKS2_EEEvDpOT_.exit.i ], [ %i.cb, %bb.t ]
  store ptr %.0.i, ptr %i.ba, align 8, !tbaa !29
  %i.cc = load i64, ptr @_ZN5Error2OkE, align 8
  store i64 %i.cc, ptr %0, align 8
  %i.cd = load i8, ptr getelementptr inbounds nuw (i8, ptr @_ZN5Error2OkE, i64 8), align 8
  %i.ce = trunc i8 %i.cd to i1
  br i1 %i.ce, label %bb.w, label %bb.v

bb.v:                                             ; preds = %bb.u
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.at, ptr noundef nonnull align 8 dereferenceable(24) getelementptr inbounds nuw (i8, ptr @_ZN5Error2OkE, i64 8), i64 24, i1 false), !tbaa.struct !165
  br label %.critedge

bb.w:                                             ; preds = %bb.u
  %i.cf = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZN5Error2OkE, i64 24), align 8, !tbaa !36
  %i.cg = load i64, ptr getelementptr inbounds nuw (i8, ptr @_ZN5Error2OkE, i64 16), align 8, !tbaa !36
  invoke void @_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE25__init_copy_ctor_externalEPKcm(ptr noundef nonnull align 8 dereferenceable(24) %i.at, ptr noundef %i.cf, i64 noundef %i.cg)
          to label %.critedge unwind label %bb.l

.critedge:                                        ; preds = %bb.v, %bb.w, %bb.k
  %i.ch = load ptr, ptr %i.ae, align 8, !tbaa !42 ; 4 uses
  %.not.i.i.i27 = icmp eq ptr %i.ch, null
  br i1 %.not.i.i.i27, label %_ZN14HeifPixelImage16ComponentStorageD2Ev.exit, label %bb.x

bb.x:                                             ; preds = %.critedge
  store ptr %i.ch, ptr %i.an, align 8, !tbaa !43
  %i.ci = load ptr, ptr %i.ao, align 8, !tbaa !44
  %i.cj = ptrtoint ptr %i.ci to i64
  %i.ck = ptrtoint ptr %i.ch to i64
  %i.cl = sub i64 %i.cj, %i.ck
  call void @_ZdlPvm(ptr noundef nonnull %i.ch, i64 noundef %i.cl) #29
  br label %_ZN14HeifPixelImage16ComponentStorageD2Ev.exit

_ZN14HeifPixelImage16ComponentStorageD2Ev.exit:   ; preds = %.critedge, %bb.x
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #31
  br label %_ZN5ErrorC2ERKS_.exit

.body:                                            ; preds = %bb.l, %.body.i.i
  %i.cm = phi ptr [ %.pre44, %bb.l ], [ %i.bj, %.body.i.i ] ; 4 uses
  %.pn = phi { ptr, i32 } [ %i.as, %bb.l ], [ %i.br, %.body.i.i ] ; 2 uses
  %.not.i.i.i28 = icmp eq ptr %i.cm, null
  br i1 %.not.i.i.i28, label %_ZN14HeifPixelImage16ComponentStorageD2Ev.exit29, label %bb.y

bb.y:                                             ; preds = %.body
  %i.cn = getelementptr inbounds nuw i8, ptr %5, i64 16
  store ptr %i.cm, ptr %i.cn, align 8, !tbaa !43
  %i.co = getelementptr inbounds nuw i8, ptr %5, i64 24
  %i.cp = load ptr, ptr %i.co, align 8, !tbaa !44
  %i.cq = ptrtoint ptr %i.cp to i64
  %i.cr = ptrtoint ptr %i.cm to i64
  %i.cs = sub i64 %i.cq, %i.cr
  call void @_ZdlPvm(ptr noundef nonnull %i.cm, i64 noundef %i.cs) #29
  br label %_ZN14HeifPixelImage16ComponentStorageD2Ev.exit29

_ZN14HeifPixelImage16ComponentStorageD2Ev.exit29: ; preds = %.body.thread, %.body, %bb.y
  %.pn56 = phi { ptr, i32 } [ %i.al, %.body.thread ], [ %.pn, %.body ], [ %.pn, %bb.y ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #31
  br label %bb.z

_ZN5ErrorC2ERKS_.exit:                            ; preds = %bb.i, %bb.h, %_ZN14HeifPixelImage16ComponentStorageD2Ev.exit, %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev.exit
  ret void

bb.z:                                             ; preds = %_ZN14HeifPixelImage16ComponentStorageD2Ev.exit29, %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev.exit21
  %.pn.pn = phi { ptr, i32 } [ %.pn56, %_ZN14HeifPixelImage16ComponentStorageD2Ev.exit29 ], [ %i.p, %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev.exit21 ]
  resume { ptr, i32 } %.pn.pn
}

; Function Attrs: mustprogress uwtable
define hidden void @_ZNK14HeifPixelImage22get_used_component_idsEv(ptr dead_on_unwind noalias writable sret(%"class.std::__1::vector.104") align 8 initializes((0, 24)) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(448) %1) local_unnamed_addr #7 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 160 ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, i8 0, i64 24, i1 false)
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 168 ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !147  ; 2 uses
  %i.d = load ptr, ptr %i.a, align 8, !tbaa !195  ; 2 uses
  %i.e = ptrtoint ptr %i.c to i64
  %i.f = ptrtoint ptr %i.d to i64
  %i.g = sub i64 %i.e, %i.f
  %i.h = sdiv exact i64 %i.g, 56                  ; 3 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 6 uses
  %.not40 = icmp eq ptr %i.c, %i.d
  br i1 %.not40, label %_ZNSt3__16vectorIjNS_9allocatorIjEEE7reserveEm.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.j = icmp ugt i64 %i.h, 4611686018427387903
  br i1 %i.j, label %bb.c, label %_ZNSt3__114__split_bufferIjRNS_9allocatorIjEEEC2EmmS3_.exit.i

bb.c:                                             ; preds = %bb.b
  invoke void @_ZNKSt3__16vectorIjNS_9allocatorIjEEE20__throw_length_errorB8ne180100Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) #33
          to label %.noexc unwind label %bb.e

.noexc:                                           ; preds = %bb.c
  unreachable

_ZNSt3__114__split_bufferIjRNS_9allocatorIjEEEC2EmmS3_.exit.i: ; preds = %bb.b
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.l = shl nuw nsw i64 %i.h, 2
  %i.m = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.l) #32
          to label %.noexc10 unwind label %bb.e   ; 7 uses

.noexc10:                                         ; preds = %_ZNSt3__114__split_bufferIjRNS_9allocatorIjEEEC2EmmS3_.exit.i
  %i.n = getelementptr inbounds nuw [4 x i8], ptr %i.m, i64 %i.h
  %i.o = load ptr, ptr %i.k, align 8, !tbaa !43   ; 5 uses
  %i.p = load ptr, ptr %0, align 8, !tbaa !42     ; 6 uses
  %.not4.i.i.i.i.i.i.i.i = icmp eq ptr %i.o, %i.p
  br i1 %.not4.i.i.i.i.i.i.i.i, label %_ZNSt3__114__split_bufferIjRNS_9allocatorIjEEE5clearB8ne180100Ev.exit.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.i.i.i.preheader:                 ; preds = %.noexc10
  %i.q = ptrtoaddr ptr %i.o to i64                ; 2 uses
  %2 = ptrtoaddr ptr %i.m to i64
  %i.r = ptrtoaddr ptr %i.p to i64
  %i.s = add i64 %i.q, -4
  %i.t = sub i64 %i.s, %i.r                       ; 2 uses
  %i.u = lshr i64 %i.t, 2
  %i.v = add nuw nsw i64 %i.u, 1                  ; 2 uses
  %min.iters.check = icmp ult i64 %i.t, 44
  %3 = sub i64 %2, %i.q
  %diff.check = icmp ugt i64 %3, -32
  %or.cond = or i1 %min.iters.check, %diff.check
  br i1 %or.cond, label %.lr.ph.i.i.i.i.i.i.i.i.preheader64, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i.i.i.i.i.i.i.i.preheader
  %n.vec = and i64 %i.v, 9223372036854775800      ; 3 uses
  %i.w = mul i64 %n.vec, -4                       ; 2 uses
  %i.x = getelementptr i8, ptr %i.m, i64 %i.w     ; 2 uses
  %i.y = getelementptr i8, ptr %i.o, i64 %i.w
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.z = mul i64 %index, -4                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.m, i64 %i.z ; 2 uses
  %next.gep43 = getelementptr i8, ptr %i.o, i64 %i.z ; 2 uses
  %i.aa = getelementptr inbounds i8, ptr %next.gep43, i64 -16
  %i.ab = getelementptr inbounds i8, ptr %next.gep43, i64 -32
  %wide.load = load <4 x i32>, ptr %i.aa, align 4, !tbaa !141, !noalias !724
  %wide.load44 = load <4 x i32>, ptr %i.ab, align 4, !tbaa !141, !noalias !724
  %i.ac = getelementptr inbounds i8, ptr %next.gep, i64 -16
  %i.ad = getelementptr inbounds i8, ptr %next.gep, i64 -32
  store <4 x i32> %wide.load, ptr %i.ac, align 4, !tbaa !141, !noalias !724
  store <4 x i32> %wide.load44, ptr %i.ad, align 4, !tbaa !141, !noalias !724
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.ae = icmp eq i64 %index.next, %n.vec
  br i1 %i.ae, label %middle.block, label %vector.body, !llvm.loop !712

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.v, %n.vec
  br i1 %cmp.n, label %_ZNSt3__114__split_bufferIjRNS_9allocatorIjEEE5clearB8ne180100Ev.exit.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.preheader64

.lr.ph.i.i.i.i.i.i.i.i.preheader64:               ; preds = %.lr.ph.i.i.i.i.i.i.i.i.preheader, %middle.block
  %.ph65 = phi ptr [ %i.m, %.lr.ph.i.i.i.i.i.i.i.i.preheader ], [ %i.x, %middle.block ]
  %.sroa.2.05.i.i.i.i.i.i.i.i.ph = phi ptr [ %i.o, %.lr.ph.i.i.i.i.i.i.i.i.preheader ], [ %i.y, %middle.block ]
  br label %.lr.ph.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i:                           ; preds = %.lr.ph.i.i.i.i.i.i.i.i.preheader64, %.lr.ph.i.i.i.i.i.i.i.i
  %i.af = phi ptr [ %i.ai, %.lr.ph.i.i.i.i.i.i.i.i ], [ %.ph65, %.lr.ph.i.i.i.i.i.i.i.i.preheader64 ]
  %.sroa.2.05.i.i.i.i.i.i.i.i = phi ptr [ %i.ag, %.lr.ph.i.i.i.i.i.i.i.i ], [ %.sroa.2.05.i.i.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.i.i.preheader64 ]
  %i.ag = getelementptr inbounds i8, ptr %.sroa.2.05.i.i.i.i.i.i.i.i, i64 -4 ; 3 uses
  %i.ah = load i32, ptr %i.ag, align 4, !tbaa !141, !noalias !724
  %i.ai = getelementptr inbounds i8, ptr %i.af, i64 -4 ; 3 uses
  store i32 %i.ah, ptr %i.ai, align 4, !tbaa !141, !noalias !724
  %.not.i.i.i.i.i.i.i.i = icmp eq ptr %i.ag, %i.p
  br i1 %.not.i.i.i.i.i.i.i.i, label %_ZNSt3__114__split_bufferIjRNS_9allocatorIjEEE5clearB8ne180100Ev.exit.i.i, label %.lr.ph.i.i.i.i.i.i.i.i, !llvm.loop !713

_ZNSt3__114__split_bufferIjRNS_9allocatorIjEEE5clearB8ne180100Ev.exit.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i.i, %middle.block, %.noexc10
  %.sroa.436.0.i.i.i.i.i.i.i = phi ptr [ %i.m, %.noexc10 ], [ %i.x, %middle.block ], [ %i.ai, %.lr.ph.i.i.i.i.i.i.i.i ]
  store ptr %.sroa.436.0.i.i.i.i.i.i.i, ptr %0, align 8, !tbaa !44
  store ptr %i.m, ptr %i.k, align 8, !tbaa !44
  %i.aj = load ptr, ptr %i.i, align 8, !tbaa !44
  store ptr %i.n, ptr %i.i, align 8, !tbaa !44
  %.not.i.i = icmp eq ptr %i.p, null
  br i1 %.not.i.i, label %_ZNSt3__16vectorIjNS_9allocatorIjEEE7reserveEm.exit, label %bb.d

bb.d:                                             ; preds = %_ZNSt3__114__split_bufferIjRNS_9allocatorIjEEE5clearB8ne180100Ev.exit.i.i
  %i.ak = ptrtoint ptr %i.aj to i64
  %i.al = ptrtoint ptr %i.p to i64
  %i.am = sub i64 %i.ak, %i.al
  tail call void @_ZdlPvm(ptr noundef nonnull %i.p, i64 noundef %i.am) #29
  br label %_ZNSt3__16vectorIjNS_9allocatorIjEEE7reserveEm.exit

_ZNSt3__16vectorIjNS_9allocatorIjEEE7reserveEm.exit: ; preds = %bb.d, %_ZNSt3__114__split_bufferIjRNS_9allocatorIjEEE5clearB8ne180100Ev.exit.i.i, %bb.a
  %i.an = load ptr, ptr %i.a, align 8, !tbaa !195 ; 2 uses
  %i.ao = load ptr, ptr %i.b, align 8, !tbaa !147 ; 2 uses
  %.not19 = icmp eq ptr %i.an, %i.ao
  br i1 %.not19, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %_ZNSt3__16vectorIjNS_9allocatorIjEEE7reserveEm.exit
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %.pre = load ptr, ptr %i.ap, align 8, !tbaa !43
  br label %bb.f

._crit_edge:                                      ; preds = %bb.l, %_ZNSt3__16vectorIjNS_9allocatorIjEEE7reserveEm.exit
  ret void

bb.e:                                             ; preds = %_ZNSt3__114__split_bufferIjRNS_9allocatorIjEEEC2EmmS3_.exit.i, %bb.c
  %i.aq = landingpad { ptr, i32 }
          cleanup
  br label %bb.m

bb.f:                                             ; preds = %.lr.ph, %bb.l
  %i.ar = phi ptr [ %.pre, %.lr.ph ], [ %.0.i, %bb.l ] ; 4 uses
  %.sroa.015.020 = phi ptr [ %i.an, %.lr.ph ], [ %i.cr, %bb.l ] ; 3 uses
  %i.as = load ptr, ptr %i.i, align 8, !tbaa !44  ; 2 uses
  %i.at = icmp ult ptr %i.ar, %i.as
  br i1 %i.at, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.au = load i32, ptr %.sroa.015.020, align 4, !tbaa !141
  store i32 %i.au, ptr %i.ar, align 4, !tbaa !141
  %i.av = getelementptr inbounds nuw i8, ptr %i.ar, i64 4
  br label %bb.l

bb.h:                                             ; preds = %bb.f
  %i.aw = load ptr, ptr %0, align 8, !tbaa !42
  %i.ax = ptrtoint ptr %i.ar to i64               ; 2 uses
  %i.ay = ptrtoint ptr %i.aw to i64               ; 3 uses
  %i.az = sub i64 %i.ax, %i.ay                    ; 2 uses
  %i.ba = ashr exact i64 %i.az, 2
  %i.bb = add nsw i64 %i.ba, 1                    ; 2 uses
  %i.bc = icmp ugt i64 %i.bb, 4611686018427387903
  br i1 %i.bc, label %bb.i, label %_ZNKSt3__16vectorIjNS_9allocatorIjEEE11__recommendB8ne180100Em.exit.i.i

bb.i:                                             ; preds = %bb.h
  invoke void @_ZNKSt3__16vectorIjNS_9allocatorIjEEE20__throw_length_errorB8ne180100Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) #33
          to label %.noexc11 unwind label %.loopexit.split-lp

.noexc11:                                         ; preds = %bb.i
  unreachable

_ZNKSt3__16vectorIjNS_9allocatorIjEEE11__recommendB8ne180100Em.exit.i.i: ; preds = %bb.h
  %i.bd = ptrtoint ptr %i.as to i64
  %i.be = sub i64 %i.bd, %i.ay                    ; 2 uses
  %.not.i.i.i = icmp ult i64 %i.be, 9223372036854775804
  %i.bf = ashr exact i64 %i.be, 1
  %.sroa.speculated.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.bf, i64 %i.bb)
  %.0.i.i.i = select i1 %.not.i.i.i, i64 %.sroa.speculated.i.i.i, i64 4611686018427387903 ; 4 uses
  %i.bg = icmp ne i64 %.0.i.i.i, 0
  tail call void @llvm.assume(i1 %i.bg)
  %i.bh = icmp ugt i64 %.0.i.i.i, 4611686018427387903
  br i1 %i.bh, label %bb.j, label %_ZNSt3__119__allocate_at_leastB8ne180100INS_9allocatorIjEEEENS_19__allocation_resultINS_16allocator_traitsIT_E7pointerEEERS5_m.exit.i.i.i

bb.j:                                             ; preds = %_ZNKSt3__16vectorIjNS_9allocatorIjEEE11__recommendB8ne180100Em.exit.i.i
  invoke void @_ZSt28__throw_bad_array_new_lengthB8ne180100v() #33
          to label %.noexc12 unwind label %.loopexit.split-lp

.noexc12:                                         ; preds = %bb.j
  unreachable

_ZNSt3__119__allocate_at_leastB8ne180100INS_9allocatorIjEEEENS_19__allocation_resultINS_16allocator_traitsIT_E7pointerEEERS5_m.exit.i.i.i: ; preds = %_ZNKSt3__16vectorIjNS_9allocatorIjEEE11__recommendB8ne180100Em.exit.i.i
  %i.bi = shl nuw i64 %.0.i.i.i, 2
  %i.bj = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.bi) #32
          to label %.noexc13 unwind label %.loopexit ; 3 uses

.noexc13:                                         ; preds = %_ZNSt3__119__allocate_at_leastB8ne180100INS_9allocatorIjEEEENS_19__allocation_resultINS_16allocator_traitsIT_E7pointerEEERS5_m.exit.i.i.i
  %i.bk = ptrtoaddr ptr %i.bj to i64
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bj, i64 %i.az ; 7 uses
  %i.bm = getelementptr inbounds nuw [4 x i8], ptr %i.bj, i64 %.0.i.i.i
  %i.bn = load i32, ptr %.sroa.015.020, align 4, !tbaa !141
  store i32 %i.bn, ptr %i.bl, align 4, !tbaa !141
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bl, i64 4 ; 3 uses
  %i.bp = load ptr, ptr %i.ap, align 8, !tbaa !43 ; 6 uses
  %i.bq = ptrtoaddr ptr %i.bp to i64              ; 2 uses
  %i.br = load ptr, ptr %0, align 8, !tbaa !42    ; 6 uses
  %.not4.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.bp, %i.br
  br i1 %.not4.i.i.i.i.i.i.i.i.i, label %_ZNSt3__114__split_bufferIjRNS_9allocatorIjEEE5clearB8ne180100Ev.exit.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.i.i.i.i.preheader:               ; preds = %.noexc13
  %i.bs = ptrtoaddr ptr %i.br to i64
  %i.bt = add i64 %i.bq, -4
  %i.bu = sub i64 %i.bt, %i.bs                    ; 2 uses
  %i.bv = lshr i64 %i.bu, 2
  %i.bw = add nuw nsw i64 %i.bv, 1                ; 2 uses
  %min.iters.check49 = icmp ult i64 %i.bu, 28
  br i1 %min.iters.check49, label %.lr.ph.i.i.i.i.i.i.i.i.i.preheader63, label %vector.memcheck46

vector.memcheck46:                                ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.preheader
  %i.bx = add i64 %i.ay, %i.bq
  %i.by = add i64 %i.ax, %i.bk
  %i.bz = sub i64 %i.by, %i.bx
  %diff.check47 = icmp ugt i64 %i.bz, -32
  br i1 %diff.check47, label %.lr.ph.i.i.i.i.i.i.i.i.i.preheader63, label %vector.ph50

vector.ph50:                                      ; preds = %vector.memcheck46
  %n.vec51 = and i64 %i.bw, 9223372036854775800   ; 3 uses
  %i.ca = mul i64 %n.vec51, -4                    ; 2 uses
  %i.cb = getelementptr i8, ptr %i.bl, i64 %i.ca  ; 2 uses
  %i.cc = getelementptr i8, ptr %i.bp, i64 %i.ca
  br label %vector.body52

vector.body52:                                    ; preds = %vector.body52, %vector.ph50
  %index53 = phi i64 [ 0, %vector.ph50 ], [ %index.next58, %vector.body52 ] ; 2 uses
  %i.cd = mul i64 %index53, -4                    ; 2 uses
  %next.gep54 = getelementptr i8, ptr %i.bl, i64 %i.cd ; 2 uses
  %next.gep55 = getelementptr i8, ptr %i.bp, i64 %i.cd ; 2 uses
  %i.ce = getelementptr inbounds i8, ptr %next.gep55, i64 -16
  %i.cf = getelementptr inbounds i8, ptr %next.gep55, i64 -32
  %wide.load56 = load <4 x i32>, ptr %i.ce, align 4, !tbaa !141, !noalias !725
  %wide.load57 = load <4 x i32>, ptr %i.cf, align 4, !tbaa !141, !noalias !725
  %i.cg = getelementptr inbounds i8, ptr %next.gep54, i64 -16
  %i.ch = getelementptr inbounds i8, ptr %next.gep54, i64 -32
  store <4 x i32> %wide.load56, ptr %i.cg, align 4, !tbaa !141, !noalias !725
  store <4 x i32> %wide.load57, ptr %i.ch, align 4, !tbaa !141, !noalias !725
  %index.next58 = add nuw i64 %index53, 8         ; 2 uses
  %i.ci = icmp eq i64 %index.next58, %n.vec51
  br i1 %i.ci, label %middle.block59, label %vector.body52, !llvm.loop !722

middle.block59:                                   ; preds = %vector.body52
  %cmp.n60 = icmp eq i64 %i.bw, %n.vec51
  br i1 %cmp.n60, label %_ZNSt3__114__split_bufferIjRNS_9allocatorIjEEE5clearB8ne180100Ev.exit.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i.preheader63

.lr.ph.i.i.i.i.i.i.i.i.i.preheader63:             ; preds = %vector.memcheck46, %.lr.ph.i.i.i.i.i.i.i.i.i.preheader, %middle.block59
  %.ph = phi ptr [ %i.bl, %vector.memcheck46 ], [ %i.bl, %.lr.ph.i.i.i.i.i.i.i.i.i.preheader ], [ %i.cb, %middle.block59 ]
  %.sroa.2.05.i.i.i.i.i.i.i.i.i.ph = phi ptr [ %i.bp, %vector.memcheck46 ], [ %i.bp, %.lr.ph.i.i.i.i.i.i.i.i.i.preheader ], [ %i.cc, %middle.block59 ]
  br label %.lr.ph.i.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i.i:                         ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.preheader63, %.lr.ph.i.i.i.i.i.i.i.i.i
  %i.cj = phi ptr [ %i.cm, %.lr.ph.i.i.i.i.i.i.i.i.i ], [ %.ph, %.lr.ph.i.i.i.i.i.i.i.i.i.preheader63 ]
  %.sroa.2.05.i.i.i.i.i.i.i.i.i = phi ptr [ %i.ck, %.lr.ph.i.i.i.i.i.i.i.i.i ], [ %.sroa.2.05.i.i.i.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.i.i.i.preheader63 ]
  %i.ck = getelementptr inbounds i8, ptr %.sroa.2.05.i.i.i.i.i.i.i.i.i, i64 -4 ; 3 uses
  %i.cl = load i32, ptr %i.ck, align 4, !tbaa !141, !noalias !725
end_hunk_0
begin_hunk_1_@llvm.umin.i64
!513 = distinct !{!513, !142}
!514 = !{!506}
!515 = !{!507}
!516 = distinct !{!516, !208}
!517 = distinct !{!517, !142}
!518 = distinct !{!518, !142}
!519 = distinct !{!519, i1 false, !"LVerDomain"}
!520 = distinct !{!520, !519}
!521 = distinct !{!521, !519}
!522 = distinct !{!522, !142, !143, !144}
!523 = distinct !{!523, !208}
!524 = distinct !{!524, !142}
!525 = distinct !{!525, !142, !143}
!526 = distinct !{!526, !142}
!527 = distinct !{!527, !142}
!528 = !{!520}
!529 = !{!521}
!530 = distinct !{!530, !142}
!531 = distinct !{!531, !142}
!532 = distinct !{!532, !142}
!533 = distinct !{!533, !142}
!534 = distinct !{!534, !142}
!535 = distinct !{!535, !142}
!536 = distinct !{!536, i1 false, !"_ZNSt3__123enable_shared_from_thisI14HeifPixelImageE16shared_from_thisB8ne180100Ev"}
!537 = distinct !{!537, !536, !"_ZNSt3__123enable_shared_from_thisI14HeifPixelImageE16shared_from_thisB8ne180100Ev: argument 0"}
!538 = distinct !{!538, !142}
!539 = distinct !{!539, !142}
!540 = distinct !{!540, !142}
!541 = distinct !{!541, !142}
!542 = distinct !{!542, !142}
!543 = distinct !{!543, !142}
!544 = distinct !{!544, i1 false, !"LVerDomain"}
!545 = distinct !{!545, !544}
!546 = distinct !{!546, !544}
!547 = distinct !{!547, !142, !143, !144}
!548 = distinct !{!548, !142, !143, !144}
!549 = distinct !{!549, !142}
!550 = distinct !{!550, !142, !143}
!551 = distinct !{!551, !142}
!552 = distinct !{!552, !142}
!553 = distinct !{!553, i1 false, !"LVerDomain"}
!554 = distinct !{!554, !553}
!555 = distinct !{!555, !553}
!556 = distinct !{!556, !142, !143, !144}
!557 = distinct !{!557, !142}
!558 = distinct !{!558, !142, !143}
!559 = distinct !{!559, !142}
!560 = distinct !{!560, !142}
!561 = distinct !{!561, !142}
!562 = distinct !{!562, !142}
!563 = distinct !{!563, !142}
!564 = distinct !{!564, !142}
!565 = distinct !{!565, !142}
!566 = distinct !{!566, !142}
!567 = distinct !{!567, i1 false, !"_ZNKRSt3__118basic_stringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEE3strB8ne180100Ev"}
!568 = distinct !{!568, !567, !"_ZNKRSt3__118basic_stringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEE3strB8ne180100Ev: argument 0"}
!569 = distinct !{!569, i1 false, !"_ZNKRSt3__115basic_stringbufIcNS_11char_traitsIcEENS_9allocatorIcEEE3strB8ne180100Ev"}
!570 = distinct !{!570, !569, !"_ZNKRSt3__115basic_stringbufIcNS_11char_traitsIcEENS_9allocatorIcEEE3strB8ne180100Ev: argument 0"}
!571 = distinct !{!571, i1 false, !"_ZNKSt3__115basic_stringbufIcNS_11char_traitsIcEENS_9allocatorIcEEE3strB8ne180100IS4_Qsr14__is_allocatorITL0__EE5valueEENS_12basic_stringIcS2_T_EERKS9_"}
!572 = distinct !{!572, !571, !"_ZNKSt3__115basic_stringbufIcNS_11char_traitsIcEENS_9allocatorIcEEE3strB8ne180100IS4_Qsr14__is_allocatorITL0__EE5valueEENS_12basic_stringIcS2_T_EERKS9_: argument 0"}
!573 = distinct !{!573, i1 false, !"_ZNSt3__123enable_shared_from_thisI14HeifPixelImageE16shared_from_thisB8ne180100Ev"}
!574 = distinct !{!574, !573, !"_ZNSt3__123enable_shared_from_thisI14HeifPixelImageE16shared_from_thisB8ne180100Ev: argument 0"}
!575 = !{!537}
!576 = !{!545}
!577 = !{!546}
!578 = !{!554}
!579 = !{!555}
!580 = !{!568}
!581 = !{!570}
!582 = !{!572}
!583 = !{!572, !570, !568}
!584 = !{!574}
!585 = distinct !{!585, i1 false, !"_ZNKSt3__123enable_shared_from_thisI14HeifPixelImageE16shared_from_thisB8ne180100Ev"}
!586 = distinct !{!586, !585, !"_ZNKSt3__123enable_shared_from_thisI14HeifPixelImageE16shared_from_thisB8ne180100Ev: argument 0"}
!587 = distinct !{!587, i1 false, !"_ZNSt3__111make_sharedB8ne180100I14HeifPixelImageJEvEENS_10shared_ptrIT_EEDpOT0_"}
!588 = distinct !{!588, !587, !"_ZNSt3__111make_sharedB8ne180100I14HeifPixelImageJEvEENS_10shared_ptrIT_EEDpOT0_: argument 0"}
!589 = distinct !{!589, i1 false, !"_ZNSt3__115allocate_sharedB8ne180100I14HeifPixelImageNS_9allocatorIS1_EEJEvEENS_10shared_ptrIT_EERKT0_DpOT1_"}
!590 = distinct !{!590, !589, !"_ZNSt3__115allocate_sharedB8ne180100I14HeifPixelImageNS_9allocatorIS1_EEJEvEENS_10shared_ptrIT_EERKT0_DpOT1_: argument 0"}
!591 = distinct !{!591, i1 false, !"_ZNSt3__110shared_ptrI14HeifPixelImageE27__create_with_control_blockB8ne180100IS1_NS_20__shared_ptr_emplaceIS1_NS_9allocatorIS1_EEEEEES2_PT_PT0_"}
!592 = distinct !{!592, !591, !"_ZNSt3__110shared_ptrI14HeifPixelImageE27__create_with_control_blockB8ne180100IS1_NS_20__shared_ptr_emplaceIS1_NS_9allocatorIS1_EEEEEES2_PT_PT0_: argument 0"}
!593 = distinct !{!593, i1 false, !"_ZNSt3__16__moveB8ne180100INS_17_ClassicAlgPolicyENS_16reverse_iteratorIPPK20ComponentDescriptionEES7_S7_EENS_4pairIT0_T2_EES9_T1_SA_"}
!594 = distinct !{!594, !593, !"_ZNSt3__16__moveB8ne180100INS_17_ClassicAlgPolicyENS_16reverse_iteratorIPPK20ComponentDescriptionEES7_S7_EENS_4pairIT0_T2_EES9_T1_SA_: argument 0"}
!595 = distinct !{!595, i1 false, !"_ZNSt3__123__dispatch_copy_or_moveB8ne180100INS_17_ClassicAlgPolicyENS_11__move_loopIS1_EENS_14__move_trivialENS_16reverse_iteratorIPPK20ComponentDescriptionEESA_SA_EENS_4pairIT2_T4_EESC_T3_SD_"}
!596 = distinct !{!596, !595, !"_ZNSt3__123__dispatch_copy_or_moveB8ne180100INS_17_ClassicAlgPolicyENS_11__move_loopIS1_EENS_14__move_trivialENS_16reverse_iteratorIPPK20ComponentDescriptionEESA_SA_EENS_4pairIT2_T4_EESC_T3_SD_: argument 0"}
!597 = distinct !{!597, i1 false, !"_ZNSt3__121__unwrap_and_dispatchB8ne180100INS_10__overloadINS_11__move_loopINS_17_ClassicAlgPolicyEEENS_14__move_trivialEEENS_16reverse_iteratorIPPK20ComponentDescriptionEESC_SC_TnNS_9enable_ifIXsr12__can_rewrapIT0_T1_T2_EE5valueEiE4typeELi0EEENS_4pairISE_SG_EESE_SF_SG_"}
!598 = distinct !{!598, !597, !"_ZNSt3__121__unwrap_and_dispatchB8ne180100INS_10__overloadINS_11__move_loopINS_17_ClassicAlgPolicyEEENS_14__move_trivialEEENS_16reverse_iteratorIPPK20ComponentDescriptionEESC_SC_TnNS_9enable_ifIXsr12__can_rewrapIT0_T1_T2_EE5valueEiE4typeELi0EEENS_4pairISE_SG_EESE_SF_SG_: argument 0"}
!599 = distinct !{!599, i1 false, !"_ZNKSt3__111__move_loopINS_17_ClassicAlgPolicyEEclB8ne180100INS_16reverse_iteratorIPPK20ComponentDescriptionEES9_S9_EENS_4pairIT_T1_EESB_T0_SC_"}
!600 = distinct !{!600, !599, !"_ZNKSt3__111__move_loopINS_17_ClassicAlgPolicyEEclB8ne180100INS_16reverse_iteratorIPPK20ComponentDescriptionEES9_S9_EENS_4pairIT_T1_EESB_T0_SC_: argument 0"}
!601 = distinct !{!601, i1 false, !"_ZNSt3__16__moveB8ne180100INS_17_ClassicAlgPolicyENS_16reverse_iteratorIPPK20ComponentDescriptionEES7_S7_EENS_4pairIT0_T2_EES9_T1_SA_"}
!602 = distinct !{!602, !601, !"_ZNSt3__16__moveB8ne180100INS_17_ClassicAlgPolicyENS_16reverse_iteratorIPPK20ComponentDescriptionEES7_S7_EENS_4pairIT0_T2_EES9_T1_SA_: argument 0"}
!603 = distinct !{!603, i1 false, !"_ZNSt3__123__dispatch_copy_or_moveB8ne180100INS_17_ClassicAlgPolicyENS_11__move_loopIS1_EENS_14__move_trivialENS_16reverse_iteratorIPPK20ComponentDescriptionEESA_SA_EENS_4pairIT2_T4_EESC_T3_SD_"}
!604 = distinct !{!604, !603, !"_ZNSt3__123__dispatch_copy_or_moveB8ne180100INS_17_ClassicAlgPolicyENS_11__move_loopIS1_EENS_14__move_trivialENS_16reverse_iteratorIPPK20ComponentDescriptionEESA_SA_EENS_4pairIT2_T4_EESC_T3_SD_: argument 0"}
!605 = distinct !{!605, i1 false, !"_ZNSt3__121__unwrap_and_dispatchB8ne180100INS_10__overloadINS_11__move_loopINS_17_ClassicAlgPolicyEEENS_14__move_trivialEEENS_16reverse_iteratorIPPK20ComponentDescriptionEESC_SC_TnNS_9enable_ifIXsr12__can_rewrapIT0_T1_T2_EE5valueEiE4typeELi0EEENS_4pairISE_SG_EESE_SF_SG_"}
!606 = distinct !{!606, !605, !"_ZNSt3__121__unwrap_and_dispatchB8ne180100INS_10__overloadINS_11__move_loopINS_17_ClassicAlgPolicyEEENS_14__move_trivialEEENS_16reverse_iteratorIPPK20ComponentDescriptionEESC_SC_TnNS_9enable_ifIXsr12__can_rewrapIT0_T1_T2_EE5valueEiE4typeELi0EEENS_4pairISE_SG_EESE_SF_SG_: argument 0"}
!607 = distinct !{!607, i1 false, !"_ZNKSt3__111__move_loopINS_17_ClassicAlgPolicyEEclB8ne180100INS_16reverse_iteratorIPPK20ComponentDescriptionEES9_S9_EENS_4pairIT_T1_EESB_T0_SC_"}
!608 = distinct !{!608, !607, !"_ZNKSt3__111__move_loopINS_17_ClassicAlgPolicyEEclB8ne180100INS_16reverse_iteratorIPPK20ComponentDescriptionEES9_S9_EENS_4pairIT_T1_EESB_T0_SC_: argument 0"}
!609 = !{!586}
!610 = !{!588}
!611 = !{!590}
!612 = !{!590, !588}
!613 = !{!592}
!614 = !{!592, !590, !588}
!615 = !{!600, !598, !596, !594}
!616 = !{!608, !606, !604, !602}
!617 = distinct !{!617, i1 false, !"LVerDomain"}
!618 = distinct !{!618, !617}
!619 = distinct !{!619, !617}
!620 = distinct !{!620, !617}
!621 = distinct !{!621, !142, !143, !144}
!622 = distinct !{!622, !142, !143, !144}
!623 = distinct !{!623, !142, !143}
!624 = distinct !{!624, !142}
!625 = distinct !{!625, !194}
!626 = !{!618}
!627 = !{!619}
!628 = !{!620}
!629 = !{!618, !619}
!630 = distinct !{!630, i1 false, !"_ZNSt3__111make_sharedB8ne180100I14HeifPixelImageJEvEENS_10shared_ptrIT_EEDpOT0_"}
!631 = distinct !{!631, !630, !"_ZNSt3__111make_sharedB8ne180100I14HeifPixelImageJEvEENS_10shared_ptrIT_EEDpOT0_: argument 0"}
!632 = distinct !{!632, i1 false, !"_ZNSt3__115allocate_sharedB8ne180100I14HeifPixelImageNS_9allocatorIS1_EEJEvEENS_10shared_ptrIT_EERKT0_DpOT1_"}
!633 = distinct !{!633, !632, !"_ZNSt3__115allocate_sharedB8ne180100I14HeifPixelImageNS_9allocatorIS1_EEJEvEENS_10shared_ptrIT_EERKT0_DpOT1_: argument 0"}
!634 = distinct !{!634, i1 false, !"_ZNSt3__110shared_ptrI14HeifPixelImageE27__create_with_control_blockB8ne180100IS1_NS_20__shared_ptr_emplaceIS1_NS_9allocatorIS1_EEEEEES2_PT_PT0_"}
!635 = distinct !{!635, !634, !"_ZNSt3__110shared_ptrI14HeifPixelImageE27__create_with_control_blockB8ne180100IS1_NS_20__shared_ptr_emplaceIS1_NS_9allocatorIS1_EEEEEES2_PT_PT0_: argument 0"}
!636 = distinct !{null, ptr @_ZNSt3__110shared_ptrI14HeifPixelImageED2B8ne180100Ev, null, null}
!637 = distinct !{!637, !142}
!638 = distinct !{!638, !208}
!639 = distinct !{!639, !142}
!640 = distinct !{!640, !142}
!641 = distinct !{!641, !142}
!642 = distinct !{!642, !208}
!643 = distinct !{!643, !142}
!644 = distinct !{!644, !142}
!645 = distinct !{!645, !142}
!646 = distinct !{!646, !142}
!647 = distinct !{!647, !142}
!648 = distinct !{!648, !142}
!649 = !{!633, !631}
!650 = !{!635, !633, !631}
!651 = distinct !{!651, !142}
!652 = distinct !{!652, !142}
!653 = distinct !{!653, i1 false, !"_ZNSt3__111make_sharedB8ne180100I14HeifPixelImageJEvEENS_10shared_ptrIT_EEDpOT0_"}
!654 = distinct !{!654, !653, !"_ZNSt3__111make_sharedB8ne180100I14HeifPixelImageJEvEENS_10shared_ptrIT_EEDpOT0_: argument 0"}
!655 = distinct !{!655, i1 false, !"_ZNSt3__115allocate_sharedB8ne180100I14HeifPixelImageNS_9allocatorIS1_EEJEvEENS_10shared_ptrIT_EERKT0_DpOT1_"}
!656 = distinct !{!656, !655, !"_ZNSt3__115allocate_sharedB8ne180100I14HeifPixelImageNS_9allocatorIS1_EEJEvEENS_10shared_ptrIT_EERKT0_DpOT1_: argument 0"}
!657 = distinct !{!657, i1 false, !"_ZNSt3__110shared_ptrI14HeifPixelImageE27__create_with_control_blockB8ne180100IS1_NS_20__shared_ptr_emplaceIS1_NS_9allocatorIS1_EEEEEES2_PT_PT0_"}
!658 = distinct !{!658, !657, !"_ZNSt3__110shared_ptrI14HeifPixelImageE27__create_with_control_blockB8ne180100IS1_NS_20__shared_ptr_emplaceIS1_NS_9allocatorIS1_EEEEEES2_PT_PT0_: argument 0"}
!659 = distinct !{!659, i1 false, !"_ZNKSt3__123enable_shared_from_thisI14HeifPixelImageE16shared_from_thisB8ne180100Ev"}
!660 = distinct !{!660, !659, !"_ZNKSt3__123enable_shared_from_thisI14HeifPixelImageE16shared_from_thisB8ne180100Ev: argument 0"}
!661 = distinct !{!661, !142}
!662 = !{!654}
!663 = !{!656}
!664 = !{!656, !654}
!665 = !{!658}
!666 = !{!658, !656, !654}
!667 = !{!660}
!668 = !{!"_ZTSNSt3__116__variant_detail6__baseILNS0_6_TraitE1EJj5ErrorEEE", !17, i64 0, !18, i64 32}
!669 = !{!668, !18, i64 32}
!670 = !{!"_ZTSNSt3__116__variant_detail5__altILm0EjEE", !18, i64 0}
!671 = !{!670, !18, i64 0}
!672 = distinct !{!672, !142}
!673 = distinct !{!673, !142}
!674 = distinct !{!674, i1 false, !"_ZNSt3__16__treeINS_12__value_typeI12heif_channel20ComponentDescriptionEENS_19__map_value_compareIS2_S4_NS_4lessIS2_EELb1EEENS_9allocatorIS4_EEE16__construct_nodeIJRKNS_21piecewise_construct_tENS_5tupleIJRKS2_EEENSG_IJEEEEEENS_10unique_ptrINS_11__tree_nodeIS4_PvEENS_22__tree_node_destructorINS9_ISO_EEEEEEDpOT_"}
!675 = distinct !{!675, !674, !"_ZNSt3__16__treeINS_12__value_typeI12heif_channel20ComponentDescriptionEENS_19__map_value_compareIS2_S4_NS_4lessIS2_EELb1EEENS_9allocatorIS4_EEE16__construct_nodeIJRKNS_21piecewise_construct_tENS_5tupleIJRKS2_EEENSG_IJEEEEEENS_10unique_ptrINS_11__tree_nodeIS4_PvEENS_22__tree_node_destructorINS9_ISO_EEEEEEDpOT_: argument 0"}
!676 = distinct !{!676, !142}
!677 = distinct !{!677, i1 false, !"_ZNSt3__16__treeINS_12__value_typeI12heif_channelNS_4pairIjjEEEENS_19__map_value_compareIS2_S5_NS_4lessIS2_EELb1EEENS_9allocatorIS5_EEE16__construct_nodeIJRKNS_21piecewise_construct_tENS_5tupleIJRKS2_EEENSH_IJEEEEEENS_10unique_ptrINS_11__tree_nodeIS5_PvEENS_22__tree_node_destructorINSA_ISP_EEEEEEDpOT_"}
!678 = distinct !{!678, !677, !"_ZNSt3__16__treeINS_12__value_typeI12heif_channelNS_4pairIjjEEEENS_19__map_value_compareIS2_S5_NS_4lessIS2_EELb1EEENS_9allocatorIS5_EEE16__construct_nodeIJRKNS_21piecewise_construct_tENS_5tupleIJRKS2_EEENSH_IJEEEEEENS_10unique_ptrINS_11__tree_nodeIS5_PvEENS_22__tree_node_destructorINSA_ISP_EEEEEEDpOT_: argument 0"}
!679 = distinct !{!679, !142}
!680 = distinct !{!680, !142}
!681 = distinct !{!681, i1 false, !"_ZNSt3__16__treeINS_12__value_typeI12heif_channeljEENS_19__map_value_compareIS2_S3_NS_4lessIS2_EELb1EEENS_9allocatorIS3_EEE16__construct_nodeIJRKNS_21piecewise_construct_tENS_5tupleIJRKS2_EEENSF_IJEEEEEENS_10unique_ptrINS_11__tree_nodeIS3_PvEENS_22__tree_node_destructorINS8_ISN_EEEEEEDpOT_"}
!682 = distinct !{!682, !681, !"_ZNSt3__16__treeINS_12__value_typeI12heif_channeljEENS_19__map_value_compareIS2_S3_NS_4lessIS2_EELb1EEENS_9allocatorIS3_EEE16__construct_nodeIJRKNS_21piecewise_construct_tENS_5tupleIJRKS2_EEENSF_IJEEEEEENS_10unique_ptrINS_11__tree_nodeIS3_PvEENS_22__tree_node_destructorINS8_ISN_EEEEEEDpOT_: argument 0"}
!683 = distinct !{!683, !142}
!684 = distinct !{!684, !142}
!685 = !{!675}
!686 = !{!"_ZTSNSt3__14pairIK12heif_channel20ComponentDescriptionEE", !50, i64 0, !156, i64 8}
!687 = !{!686, !50, i64 0}
!688 = !{!678}
!689 = !{!"_ZTSNSt3__14pairIjjEE", !18, i64 0, !18, i64 4}
!690 = !{!"_ZTSNSt3__14pairIK12heif_channelNS0_IjjEEEE", !50, i64 0, !689, i64 4}
!691 = !{!690, !50, i64 0}
!692 = !{!689, !18, i64 0}
!693 = !{!689, !18, i64 4}
!694 = !{!682}
!695 = !{!"_ZTSNSt3__14pairIK12heif_channeljEE", !50, i64 0, !18, i64 4}
!696 = !{!695, !50, i64 0}
!697 = !{!695, !18, i64 4}
!698 = distinct !{!698, !142, !143, !144}
!699 = distinct !{!699, !142, !144, !143}
!700 = distinct !{!700, !142, !143, !144}
!701 = distinct !{!701, !142, !144, !143}
!702 = distinct !{!702, !142, !143, !144}
!703 = distinct !{!703, !142, !144, !143}
!704 = distinct !{!704, i1 false, !"_ZNSt3__16__moveB8ne180100INS_17_ClassicAlgPolicyENS_16reverse_iteratorIPjEES4_S4_EENS_4pairIT0_T2_EES6_T1_S7_"}
!705 = distinct !{!705, !704, !"_ZNSt3__16__moveB8ne180100INS_17_ClassicAlgPolicyENS_16reverse_iteratorIPjEES4_S4_EENS_4pairIT0_T2_EES6_T1_S7_: argument 0"}
!706 = distinct !{!706, i1 false, !"_ZNSt3__123__dispatch_copy_or_moveB8ne180100INS_17_ClassicAlgPolicyENS_11__move_loopIS1_EENS_14__move_trivialENS_16reverse_iteratorIPjEES7_S7_EENS_4pairIT2_T4_EES9_T3_SA_"}
!707 = distinct !{!707, !706, !"_ZNSt3__123__dispatch_copy_or_moveB8ne180100INS_17_ClassicAlgPolicyENS_11__move_loopIS1_EENS_14__move_trivialENS_16reverse_iteratorIPjEES7_S7_EENS_4pairIT2_T4_EES9_T3_SA_: argument 0"}
!708 = distinct !{!708, i1 false, !"_ZNSt3__121__unwrap_and_dispatchB8ne180100INS_10__overloadINS_11__move_loopINS_17_ClassicAlgPolicyEEENS_14__move_trivialEEENS_16reverse_iteratorIPjEES9_S9_TnNS_9enable_ifIXsr12__can_rewrapIT0_T1_T2_EE5valueEiE4typeELi0EEENS_4pairISB_SD_EESB_SC_SD_"}
!709 = distinct !{!709, !708, !"_ZNSt3__121__unwrap_and_dispatchB8ne180100INS_10__overloadINS_11__move_loopINS_17_ClassicAlgPolicyEEENS_14__move_trivialEEENS_16reverse_iteratorIPjEES9_S9_TnNS_9enable_ifIXsr12__can_rewrapIT0_T1_T2_EE5valueEiE4typeELi0EEENS_4pairISB_SD_EESB_SC_SD_: argument 0"}
!710 = distinct !{!710, i1 false, !"_ZNKSt3__111__move_loopINS_17_ClassicAlgPolicyEEclB8ne180100INS_16reverse_iteratorIPjEES6_S6_EENS_4pairIT_T1_EES8_T0_S9_"}
!711 = distinct !{!711, !710, !"_ZNKSt3__111__move_loopINS_17_ClassicAlgPolicyEEclB8ne180100INS_16reverse_iteratorIPjEES6_S6_EENS_4pairIT_T1_EES8_T0_S9_: argument 0"}
!712 = distinct !{!712, !142, !143, !144}
!713 = distinct !{!713, !142, !143}
!714 = distinct !{!714, i1 false, !"_ZNSt3__16__moveB8ne180100INS_17_ClassicAlgPolicyENS_16reverse_iteratorIPjEES4_S4_EENS_4pairIT0_T2_EES6_T1_S7_"}
!715 = distinct !{!715, !714, !"_ZNSt3__16__moveB8ne180100INS_17_ClassicAlgPolicyENS_16reverse_iteratorIPjEES4_S4_EENS_4pairIT0_T2_EES6_T1_S7_: argument 0"}
!716 = distinct !{!716, i1 false, !"_ZNSt3__123__dispatch_copy_or_moveB8ne180100INS_17_ClassicAlgPolicyENS_11__move_loopIS1_EENS_14__move_trivialENS_16reverse_iteratorIPjEES7_S7_EENS_4pairIT2_T4_EES9_T3_SA_"}
!717 = distinct !{!717, !716, !"_ZNSt3__123__dispatch_copy_or_moveB8ne180100INS_17_ClassicAlgPolicyENS_11__move_loopIS1_EENS_14__move_trivialENS_16reverse_iteratorIPjEES7_S7_EENS_4pairIT2_T4_EES9_T3_SA_: argument 0"}
!718 = distinct !{!718, i1 false, !"_ZNSt3__121__unwrap_and_dispatchB8ne180100INS_10__overloadINS_11__move_loopINS_17_ClassicAlgPolicyEEENS_14__move_trivialEEENS_16reverse_iteratorIPjEES9_S9_TnNS_9enable_ifIXsr12__can_rewrapIT0_T1_T2_EE5valueEiE4typeELi0EEENS_4pairISB_SD_EESB_SC_SD_"}
!719 = distinct !{!719, !718, !"_ZNSt3__121__unwrap_and_dispatchB8ne180100INS_10__overloadINS_11__move_loopINS_17_ClassicAlgPolicyEEENS_14__move_trivialEEENS_16reverse_iteratorIPjEES9_S9_TnNS_9enable_ifIXsr12__can_rewrapIT0_T1_T2_EE5valueEiE4typeELi0EEENS_4pairISB_SD_EESB_SC_SD_: argument 0"}
!720 = distinct !{!720, i1 false, !"_ZNKSt3__111__move_loopINS_17_ClassicAlgPolicyEEclB8ne180100INS_16reverse_iteratorIPjEES6_S6_EENS_4pairIT_T1_EES8_T0_S9_"}
!721 = distinct !{!721, !720, !"_ZNKSt3__111__move_loopINS_17_ClassicAlgPolicyEEclB8ne180100INS_16reverse_iteratorIPjEES6_S6_EENS_4pairIT_T1_EES8_T0_S9_: argument 0"}
!722 = distinct !{!722, !142, !143, !144}
!723 = distinct !{!723, !142, !143}
!724 = !{!711, !709, !707, !705}
!725 = !{!721, !719, !717, !715}
!726 = distinct !{!726, i1 false, !"_ZNSt3__16__moveB8ne180100INS_17_ClassicAlgPolicyENS_16reverse_iteratorIPjEES4_S4_EENS_4pairIT0_T2_EES6_T1_S7_"}
!727 = distinct !{!727, !726, !"_ZNSt3__16__moveB8ne180100INS_17_ClassicAlgPolicyENS_16reverse_iteratorIPjEES4_S4_EENS_4pairIT0_T2_EES6_T1_S7_: argument 0"}
!728 = distinct !{!728, i1 false, !"_ZNSt3__123__dispatch_copy_or_moveB8ne180100INS_17_ClassicAlgPolicyENS_11__move_loopIS1_EENS_14__move_trivialENS_16reverse_iteratorIPjEES7_S7_EENS_4pairIT2_T4_EES9_T3_SA_"}
!729 = distinct !{!729, !728, !"_ZNSt3__123__dispatch_copy_or_moveB8ne180100INS_17_ClassicAlgPolicyENS_11__move_loopIS1_EENS_14__move_trivialENS_16reverse_iteratorIPjEES7_S7_EENS_4pairIT2_T4_EES9_T3_SA_: argument 0"}
!730 = distinct !{!730, i1 false, !"_ZNSt3__121__unwrap_and_dispatchB8ne180100INS_10__overloadINS_11__move_loopINS_17_ClassicAlgPolicyEEENS_14__move_trivialEEENS_16reverse_iteratorIPjEES9_S9_TnNS_9enable_ifIXsr12__can_rewrapIT0_T1_T2_EE5valueEiE4typeELi0EEENS_4pairISB_SD_EESB_SC_SD_"}
!731 = distinct !{!731, !730, !"_ZNSt3__121__unwrap_and_dispatchB8ne180100INS_10__overloadINS_11__move_loopINS_17_ClassicAlgPolicyEEENS_14__move_trivialEEENS_16reverse_iteratorIPjEES9_S9_TnNS_9enable_ifIXsr12__can_rewrapIT0_T1_T2_EE5valueEiE4typeELi0EEENS_4pairISB_SD_EESB_SC_SD_: argument 0"}
!732 = distinct !{!732, i1 false, !"_ZNKSt3__111__move_loopINS_17_ClassicAlgPolicyEEclB8ne180100INS_16reverse_iteratorIPjEES6_S6_EENS_4pairIT_T1_EES8_T0_S9_"}
!733 = distinct !{!733, !732, !"_ZNKSt3__111__move_loopINS_17_ClassicAlgPolicyEEclB8ne180100INS_16reverse_iteratorIPjEES6_S6_EENS_4pairIT_T1_EES8_T0_S9_: argument 0"}
!734 = distinct !{!734, !142, !143, !144}
!735 = distinct !{!735, !142, !143}
!736 = !{!733, !731, !729, !727}
!737 = !{!121, !59, i64 8}
!738 = !{!64, !59, i64 24}
!739 = !{!71, !59, i64 8}
!740 = !{!121, !85, i64 128}
!741 = !{!251, !251, i64 0}
!742 = distinct !{null, null, null, ptr @_ZNSt3__110shared_ptrI14HeifPixelImageED2B8ne180100Ev, null, null}
!743 = distinct !{!743, !142}
!744 = !{!258, !258, i64 0}
!745 = distinct !{null, null, null, ptr @_ZNSt3__110shared_ptrIK14HeifPixelImageED2B8ne180100Ev, null, null}
!746 = distinct !{!746, i1 false, !"_ZNSt3__122__make_exception_guardB8ne180100INS_6vectorI20ComponentDescriptionNS_9allocatorIS2_EEE16__destroy_vectorEEENS_28__exception_guard_exceptionsIT_EES8_"}
!747 = distinct !{!747, !746, !"_ZNSt3__122__make_exception_guardB8ne180100INS_6vectorI20ComponentDescriptionNS_9allocatorIS2_EEE16__destroy_vectorEEENS_28__exception_guard_exceptionsIT_EES8_: argument 0"}
!748 = distinct !{!748, i1 false, !"_ZNSt3__122__make_exception_guardB8ne180100INS_29_AllocatorDestroyRangeReverseINS_9allocatorI20ComponentDescriptionEEPS3_EEEENS_28__exception_guard_exceptionsIT_EES8_"}
!749 = distinct !{!749, !748, !"_ZNSt3__122__make_exception_guardB8ne180100INS_29_AllocatorDestroyRangeReverseINS_9allocatorI20ComponentDescriptionEEPS3_EEEENS_28__exception_guard_exceptionsIT_EES8_: argument 0"}
!750 = distinct !{!750, !142}
!751 = !{!265, !265, i64 0}
!752 = !{!747}
!753 = !{!749}
!754 = !{!266, !265, i64 0}
!755 = distinct !{!755, !142}
!756 = !{!269, !150, i64 16}
!757 = !{!269, !150, i64 8}
!758 = !{!244, !244, i64 0}
!759 = !{!94, !59, i64 32}
!760 = distinct !{!760, !142}
!761 = distinct !{!761, i1 false, !"_ZNSt3__122__make_exception_guardB8ne180100INS_29_AllocatorDestroyRangeReverseINS_9allocatorI19PolarizationPatternEEPS3_EEEENS_28__exception_guard_exceptionsIT_EES8_"}
!762 = distinct !{!762, !761, !"_ZNSt3__122__make_exception_guardB8ne180100INS_29_AllocatorDestroyRangeReverseINS_9allocatorI19PolarizationPatternEEPS3_EEEENS_28__exception_guard_exceptionsIT_EES8_: argument 0"}
!763 = distinct !{!763, !142}
!764 = distinct !{!764, i1 false, !"_ZNSt3__122__make_exception_guardB8ne180100INS_29_AllocatorDestroyRangeReverseINS_9allocatorI19PolarizationPatternEEPS3_EEEENS_28__exception_guard_exceptionsIT_EES8_"}
!765 = distinct !{!765, !764, !"_ZNSt3__122__make_exception_guardB8ne180100INS_29_AllocatorDestroyRangeReverseINS_9allocatorI19PolarizationPatternEEPS3_EEEENS_28__exception_guard_exceptionsIT_EES8_: argument 0"}
!766 = !{!762}
!767 = !{!765}
!768 = distinct !{!768, !142}
!769 = !{!288, !287, i64 16}
!770 = !{!288, !287, i64 8}
!771 = distinct !{!771, !142}
!772 = !{!286, !286, i64 0}
!773 = distinct !{!773, i1 false, !"_ZNSt3__122__make_exception_guardB8ne180100INS_29_AllocatorDestroyRangeReverseINS_9allocatorI18SensorBadPixelsMapEEPS3_EEEENS_28__exception_guard_exceptionsIT_EES8_"}
!774 = distinct !{!774, !773, !"_ZNSt3__122__make_exception_guardB8ne180100INS_29_AllocatorDestroyRangeReverseINS_9allocatorI18SensorBadPixelsMapEEPS3_EEEENS_28__exception_guard_exceptionsIT_EES8_: argument 0"}
!775 = distinct !{!775, !142}
!776 = distinct !{!776, i1 false, !"_ZNSt3__122__make_exception_guardB8ne180100INS_29_AllocatorDestroyRangeReverseINS_9allocatorI18SensorBadPixelsMapEEPS3_EEEENS_28__exception_guard_exceptionsIT_EES8_"}
!777 = distinct !{!777, !776, !"_ZNSt3__122__make_exception_guardB8ne180100INS_29_AllocatorDestroyRangeReverseINS_9allocatorI18SensorBadPixelsMapEEPS3_EEEENS_28__exception_guard_exceptionsIT_EES8_: argument 0"}
!778 = !{!774}
!779 = !{!777}
!780 = distinct !{!780, !142}
!781 = !{!300, !299, i64 16}
!782 = !{!300, !299, i64 8}
!783 = distinct !{!783, !142}
!784 = distinct !{!784, !142}
!785 = !{!298, !298, i64 0}
!786 = distinct !{!786, !142}
!787 = distinct !{!787, i1 false, !"_ZNSt3__122__make_exception_guardB8ne180100INS_29_AllocatorDestroyRangeReverseINS_9allocatorI29SensorNonUniformityCorrectionEEPS3_EEEENS_28__exception_guard_exceptionsIT_EES8_"}
!788 = distinct !{!788, !787, !"_ZNSt3__122__make_exception_guardB8ne180100INS_29_AllocatorDestroyRangeReverseINS_9allocatorI29SensorNonUniformityCorrectionEEPS3_EEEENS_28__exception_guard_exceptionsIT_EES8_: argument 0"}
!789 = distinct !{!789, !142}
!790 = distinct !{!790, i1 false, !"_ZNSt3__122__make_exception_guardB8ne180100INS_29_AllocatorDestroyRangeReverseINS_9allocatorI29SensorNonUniformityCorrectionEEPS3_EEEENS_28__exception_guard_exceptionsIT_EES8_"}
!791 = distinct !{!791, !790, !"_ZNSt3__122__make_exception_guardB8ne180100INS_29_AllocatorDestroyRangeReverseINS_9allocatorI29SensorNonUniformityCorrectionEEPS3_EEEENS_28__exception_guard_exceptionsIT_EES8_: argument 0"}
!792 = !{!788}
!793 = !{!791}
!794 = distinct !{!794, !142}
!795 = !{!320, !319, i64 16}
!796 = !{!320, !319, i64 8}
!797 = distinct !{!797, !142}
!798 = !{!318, !318, i64 0}
!799 = distinct !{null}
!800 = !{!"_ZTSNSt3__113basic_ostreamIcNS_11char_traitsIcEEE6sentryE", !59, i64 0, !182, i64 8}
!801 = !{!800, !59, i64 0}
!802 = !{!181, !23, i64 40}
!803 = !{!181, !18, i64 8}
!804 = !{!181, !18, i64 32}
!805 = distinct !{null}
!806 = !{!181, !54, i64 24}
!807 = distinct !{!807, !142}
!808 = !{!202, !59, i64 24}
!809 = !{ptr @_ZNSt3__120__shared_ptr_emplaceI14HeifPixelImageNS_9allocatorIS1_EEED2Ev}
!810 = distinct !{null, null, null}
end_hunk_1

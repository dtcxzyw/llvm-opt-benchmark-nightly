Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/bitwuzla/original/node_unique_table?download=true
inline.NumInlined: 241
inline.NumDeleted: 129
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumRuntimeUnrolled: 5
loop-unroll.NumUnrolled: 8
begin_hunk_0_@_ZNK4bzla4node15NodeUniqueTable4hashENS0_4KindERKSt6vectorINS_4NodeESaIS4_EERKS3_ImSaImEE:bb.a
  %i.f = ptrtoint ptr %i.d to i64
  %i.g = sub i64 %i.e, %i.f
  %i.h = ashr exact i64 %i.g, 3
  %.not.i = icmp eq ptr %i.c, %i.d
  br i1 %.not.i, label %_ZNK4bzla4node15NodeUniqueTable13hash_childrenEmmPKNS_4NodeE.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.a, %.lr.ph.i
  %.09.i = phi i64 [ %i.p, %.lr.ph.i ], [ 0, %bb.a ] ; 3 uses
  %.078.i = phi i64 [ %i.o, %.lr.ph.i ], [ %i.a, %bb.a ]
  %i.i = and i64 %.09.i, 3
  %i.j = getelementptr inbounds nuw [8 x i8], ptr @_ZN4bzla4node15NodeUniqueTable8s_primesE, i64 %i.i
  %i.k = load i64, ptr %i.j, align 8, !tbaa !35
  %i.l = getelementptr inbounds nuw [8 x i8], ptr %i.d, i64 %.09.i
  %i.m = tail call noundef i64 @_ZNK4bzla4Node2idEv(ptr noundef nonnull align 8 dereferenceable(8) %i.l)
  %i.n = mul i64 %i.m, %i.k
  %i.o = add i64 %i.n, %.078.i                    ; 2 uses
  %i.p = add nuw i64 %.09.i, 1                    ; 2 uses
  %exitcond.not.i = icmp eq i64 %i.p, %i.h
  br i1 %exitcond.not.i, label %_ZNK4bzla4node15NodeUniqueTable13hash_childrenEmmPKNS_4NodeE.exit, label %.lr.ph.i, !llvm.loop !0

_ZNK4bzla4node15NodeUniqueTable13hash_childrenEmmPKNS_4NodeE.exit: ; preds = %.lr.ph.i, %bb.a
  %.07.lcssa.i = phi i64 [ %i.a, %bb.a ], [ %i.o, %.lr.ph.i ] ; 4 uses
  %i.q = load ptr, ptr %3, align 8, !tbaa !37     ; 7 uses
  %i.r = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !37   ; 2 uses
  %i.t = icmp eq ptr %i.q, %i.s
  br i1 %i.t, label %_ZNK4bzla4node15NodeUniqueTable12hash_indicesEmmPKm.exit, label %bb.b

bb.b:                                             ; preds = %_ZNK4bzla4node15NodeUniqueTable13hash_childrenEmmPKNS_4NodeE.exit
  %i.u = ptrtoint ptr %i.s to i64
  %i.v = ptrtoint ptr %i.q to i64
  %i.w = sub i64 %i.u, %i.v                       ; 4 uses
  %i.x = ashr exact i64 %i.w, 3
  %or.cond.not = icmp eq i64 %i.w, 32
  br i1 %or.cond.not, label %vector.body, label %.lr.ph.i10.preheader

vector.body:                                      ; preds = %bb.b
  %i.y = insertelement <2 x i64> <i64 poison, i64 0>, i64 %.07.lcssa.i, i64 0
  %i.z = getelementptr inbounds nuw i8, ptr %i.q, i64 16
  %wide.load24 = load <2 x i64>, ptr %i.q, align 8, !tbaa !35
  %wide.load25 = load <2 x i64>, ptr %i.z, align 8, !tbaa !35
  %i.aa = mul <2 x i64> %wide.load24, <i64 333444569, i64 76891121>
  %i.ab = mul <2 x i64> %wide.load25, <i64 456790003, i64 111130391>
  %i.ac = add <2 x i64> %i.aa, %i.y
  %bin.rdx = add <2 x i64> %i.ab, %i.ac
  %i.ad = tail call i64 @llvm.vector.reduce.add.v2i64(<2 x i64> %bin.rdx)
  br label %_ZNK4bzla4node15NodeUniqueTable12hash_indicesEmmPKm.exit

.lr.ph.i10.preheader:                             ; preds = %bb.b
  %i.ae = and i64 %i.w, 8
  %lcmp.mod.not = icmp eq i64 %i.ae, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i10.prol.loopexit, label %.lr.ph.i10.prol

.lr.ph.i10.prol:                                  ; preds = %.lr.ph.i10.preheader
  %i.af = load i64, ptr %i.q, align 8, !tbaa !35
  %i.ag = mul i64 %i.af, 333444569
  %i.ah = add i64 %i.ag, %.07.lcssa.i             ; 2 uses
  br label %.lr.ph.i10.prol.loopexit

.lr.ph.i10.prol.loopexit:                         ; preds = %.lr.ph.i10.prol, %.lr.ph.i10.preheader
  %.lcssa.unr = phi i64 [ poison, %.lr.ph.i10.preheader ], [ %i.ah, %.lr.ph.i10.prol ]
  %.09.i11.unr = phi i64 [ 0, %.lr.ph.i10.preheader ], [ 1, %.lr.ph.i10.prol ]
  %.078.i12.unr = phi i64 [ %.07.lcssa.i, %.lr.ph.i10.preheader ], [ %i.ah, %.lr.ph.i10.prol ]
  %i.ai = icmp eq i64 %i.w, 8
  br i1 %i.ai, label %_ZNK4bzla4node15NodeUniqueTable12hash_indicesEmmPKm.exit, label %.lr.ph.i10

.lr.ph.i10:                                       ; preds = %.lr.ph.i10.prol.loopexit, %.lr.ph.i10
  %.09.i11 = phi i64 [ %i.ay, %.lr.ph.i10 ], [ %.09.i11.unr, %.lr.ph.i10.prol.loopexit ] ; 4 uses
  %.078.i12 = phi i64 [ %i.ax, %.lr.ph.i10 ], [ %.078.i12.unr, %.lr.ph.i10.prol.loopexit ]
  %i.aj = and i64 %.09.i11, 3
  %i.ak = getelementptr inbounds nuw [8 x i8], ptr @_ZN4bzla4node15NodeUniqueTable8s_primesE, i64 %i.aj
  %i.al = load i64, ptr %i.ak, align 8, !tbaa !35
  %i.am = getelementptr inbounds nuw [8 x i8], ptr %i.q, i64 %.09.i11
  %i.an = load i64, ptr %i.am, align 8, !tbaa !35
  %i.ao = mul i64 %i.an, %i.al
  %i.ap = add i64 %i.ao, %.078.i12
  %i.aq = add nuw i64 %.09.i11, 1                 ; 2 uses
  %i.ar = and i64 %i.aq, 3
  %i.as = getelementptr inbounds nuw [8 x i8], ptr @_ZN4bzla4node15NodeUniqueTable8s_primesE, i64 %i.ar
  %i.at = load i64, ptr %i.as, align 8, !tbaa !35
  %i.au = getelementptr inbounds nuw [8 x i8], ptr %i.q, i64 %i.aq
  %i.av = load i64, ptr %i.au, align 8, !tbaa !35
  %i.aw = mul i64 %i.av, %i.at
  %i.ax = add i64 %i.aw, %i.ap                    ; 2 uses
  %i.ay = add nuw i64 %.09.i11, 2                 ; 2 uses
  %exitcond.not.i13.1 = icmp eq i64 %i.ay, %i.x
  br i1 %exitcond.not.i13.1, label %_ZNK4bzla4node15NodeUniqueTable12hash_indicesEmmPKm.exit, label %.lr.ph.i10, !llvm.loop !54

_ZNK4bzla4node15NodeUniqueTable12hash_indicesEmmPKm.exit: ; preds = %.lr.ph.i10.prol.loopexit, %.lr.ph.i10, %vector.body, %_ZNK4bzla4node15NodeUniqueTable13hash_childrenEmmPKNS_4NodeE.exit
  %.0 = phi i64 [ %.07.lcssa.i, %_ZNK4bzla4node15NodeUniqueTable13hash_childrenEmmPKNS_4NodeE.exit ], [ %i.ad, %vector.body ], [ %.lcssa.unr, %.lr.ph.i10.prol.loopexit ], [ %i.ax, %.lr.ph.i10 ]
  ret i64 %.0
}

; Function Attrs: mustprogress uwtable
define noundef zeroext i1 @_ZNK4bzla4node15NodeUniqueTable6equalsERKNS0_8NodeDataENS0_4KindERKNS_4TypeERKSt6vectorINS_4NodeESaISA_EERKS9_ImSaImEE(ptr nofree noundef nonnull readnone align 8 captures(none) dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(41) %1, i8 noundef zeroext %2, ptr noundef nonnull align 8 dereferenceable(8) %3, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %4, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %5) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 36
  %i.b = load i8, ptr %i.a, align 4, !tbaa !39
  %.not = icmp eq i8 %i.b, %2
  br i1 %.not, label %bb.b, label %.thread

bb.b:                                             ; preds = %bb.a
  %i.c = load ptr, ptr %4, align 8, !tbaa !40     ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !40   ; 2 uses
  %i.f = icmp eq ptr %i.c, %i.e
  br i1 %i.f, label %bb.g, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.h = load i64, ptr %i.g, align 8, !tbaa !29   ; 3 uses
  %i.i = ptrtoint ptr %i.e to i64
  %i.j = ptrtoint ptr %i.c to i64
  %i.k = sub i64 %i.i, %i.j
  %i.l = ashr exact i64 %i.k, 3
  %.not43 = icmp eq i64 %i.h, %i.l
  br i1 %.not43, label %.preheader54, label %.thread

.preheader54:                                     ; preds = %bb.c
  %.not4456.not = icmp eq i64 %i.h, 0
  br i1 %.not4456.not, label %.critedge, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader54
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 48
  br label %bb.e

bb.d:                                             ; preds = %bb.e
  %i.n = add nuw i64 %.03457, 1                   ; 2 uses
  %exitcond.not = icmp eq i64 %i.n, %i.h
  br i1 %exitcond.not, label %.critedge, label %bb.e, !llvm.loop !1

bb.e:                                             ; preds = %.lr.ph, %bb.d
  %.03457 = phi i64 [ 0, %.lr.ph ], [ %i.n, %bb.d ] ; 3 uses
  %i.o = getelementptr inbounds nuw [8 x i8], ptr %i.m, i64 %.03457
  %i.p = load ptr, ptr %4, align 8, !tbaa !34
  %i.q = getelementptr inbounds nuw [8 x i8], ptr %i.p, i64 %.03457
  %i.r = tail call noundef zeroext i1 @_ZN4bzlaneERKNS_4NodeES2_(ptr noundef nonnull align 8 dereferenceable(8) %i.o, ptr noundef nonnull align 8 dereferenceable(8) %i.q)
  br i1 %i.r, label %.thread, label %bb.d

.critedge:                                        ; preds = %bb.d, %.preheader54
  %i.s = icmp eq i8 %2, 101
  br i1 %i.s, label %bb.f, label %bb.g

bb.f:                                             ; preds = %.critedge
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.u = tail call noundef zeroext i1 @_ZN4bzlaeqERKNS_4TypeES2_(ptr noundef nonnull align 8 dereferenceable(8) %i.t, ptr noundef nonnull align 8 dereferenceable(8) %3)
  br label %.thread

bb.g:                                             ; preds = %.critedge, %bb.b
  %i.v = load ptr, ptr %5, align 8, !tbaa !37     ; 3 uses
  %i.w = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !37   ; 2 uses
  %i.y = icmp eq ptr %i.v, %i.x
  br i1 %i.y, label %.thread, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.z = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.aa = load i64, ptr %i.z, align 8, !tbaa !29
  %i.ab = shl i64 %i.aa, 3
  %i.ac = getelementptr i8, ptr %1, i64 48
  %i.ad = getelementptr i8, ptr %i.ac, i64 %i.ab  ; 2 uses
  %i.ae = load i64, ptr %i.ad, align 8, !tbaa !42 ; 3 uses
  %i.af = ptrtoint ptr %i.x to i64
  %i.ag = ptrtoint ptr %i.v to i64
  %i.ah = sub i64 %i.af, %i.ag
  %i.ai = ashr exact i64 %i.ah, 3
  %.not45 = icmp eq i64 %i.ae, %i.ai
  br i1 %.not45, label %.preheader, label %.thread

.preheader:                                       ; preds = %bb.h
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ad, i64 8
  %.not4758.not = icmp eq i64 %i.ae, 0
  br i1 %.not4758.not, label %.thread, label %.lr.ph60

.lr.ph60:                                         ; preds = %.preheader, %.lr.ph60
  %.059 = phi i64 [ %i.ao, %.lr.ph60 ], [ 0, %.preheader ] ; 3 uses
  %i.ak = getelementptr inbounds nuw [8 x i8], ptr %i.aj, i64 %.059
  %i.al = load i64, ptr %i.ak, align 8, !tbaa !35
  %i.am = getelementptr inbounds nuw [8 x i8], ptr %i.v, i64 %.059
  %i.an = load i64, ptr %i.am, align 8, !tbaa !35
  %.not46 = icmp eq i64 %i.al, %i.an              ; 2 uses
  %i.ao = add nuw i64 %.059, 1                    ; 2 uses
  %exitcond64.not = icmp ne i64 %i.ao, %i.ae
  %or.cond.not = select i1 %.not46, i1 %exitcond64.not, i1 false
  br i1 %or.cond.not, label %.lr.ph60, label %.thread, !llvm.loop !2

.thread:                                          ; preds = %bb.e, %.lr.ph60, %.preheader, %bb.h, %bb.c, %bb.f, %bb.g, %bb.a
  %.5 = phi i1 [ true, %bb.g ], [ false, %bb.a ], [ %i.u, %bb.f ], [ false, %bb.h ], [ true, %.preheader ], [ false, %bb.c ], [ %.not46, %.lr.ph60 ], [ false, %bb.e ]
  ret i1 %.5
}

declare noundef ptr @_ZN4bzla4node8NodeData5allocENS0_4KindERKSt6vectorINS_4NodeESaIS4_EERKS3_ImSaImEE(i8 noundef zeroext, ptr noundef nonnull align 8 dereferenceable(24), ptr noundef nonnull align 8 dereferenceable(24)) local_unnamed_addr #3

; Function Attrs: mustprogress uwtable
define void @_ZN4bzla4node15NodeUniqueTable6resizeEv(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(32) %0) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !18   ; 2 uses
  %i.d = load ptr, ptr %i.a, align 8, !tbaa !17   ; 3 uses
  %i.e = ptrtoint ptr %i.c to i64
  %i.f = ptrtoint ptr %i.d to i64
  %i.g = sub i64 %i.e, %i.f                       ; 2 uses
  %i.h = ashr exact i64 %i.g, 2                   ; 3 uses
  %i.i = icmp ugt i64 %i.h, 1152921504606846975
  br i1 %i.i, label %.noexc, label %_ZNSt6vectorIPN4bzla4node8NodeDataESaIS3_EE17_S_check_init_lenEmRKS4_.exit.i

.noexc:                                           ; preds = %bb.a
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.1) #14
  unreachable

_ZNSt6vectorIPN4bzla4node8NodeDataESaIS3_EE17_S_check_init_lenEmRKS4_.exit.i: ; preds = %bb.a
  %.not.i.i.i.i = icmp eq ptr %i.c, %i.d
  br i1 %.not.i.i.i.i, label %_ZNSt6vectorIPN4bzla4node8NodeDataESaIS3_EEC2EmRKS3_RKS4_.exit, label %.noexc18

.noexc18:                                         ; preds = %_ZNSt6vectorIPN4bzla4node8NodeDataESaIS3_EE17_S_check_init_lenEmRKS4_.exit.i
  %i.j = shl nuw nsw i64 %i.g, 1                  ; 3 uses
  %i.k = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.j) #15 ; 4 uses
  %i.l = and i64 %i.j, 9223372036854775800
  tail call void @llvm.memset.p0.i64(ptr nonnull align 8 %i.k, i8 0, i64 %i.l, i1 false), !tbaa !13
  %i.m = getelementptr inbounds nuw [8 x i8], ptr %i.k, i64 %i.h
  %i.n = getelementptr inbounds nuw i8, ptr %i.k, i64 %i.j
  %.pre = load ptr, ptr %i.a, align 8, !tbaa !56
  br label %_ZNSt6vectorIPN4bzla4node8NodeDataESaIS3_EEC2EmRKS3_RKS4_.exit

_ZNSt6vectorIPN4bzla4node8NodeDataESaIS3_EEC2EmRKS3_RKS4_.exit: ; preds = %.noexc18, %_ZNSt6vectorIPN4bzla4node8NodeDataESaIS3_EE17_S_check_init_lenEmRKS4_.exit.i
  %i.o = phi ptr [ %i.d, %_ZNSt6vectorIPN4bzla4node8NodeDataESaIS3_EE17_S_check_init_lenEmRKS4_.exit.i ], [ %.pre, %.noexc18 ] ; 3 uses
  %.sroa.14.0 = phi ptr [ null, %_ZNSt6vectorIPN4bzla4node8NodeDataESaIS3_EE17_S_check_init_lenEmRKS4_.exit.i ], [ %i.m, %.noexc18 ] ; 2 uses
  %.sroa.025.0 = phi ptr [ null, %_ZNSt6vectorIPN4bzla4node8NodeDataESaIS3_EE17_S_check_init_lenEmRKS4_.exit.i ], [ %i.k, %.noexc18 ] ; 5 uses
  %.0.i.i.i.i.i.i.i = phi ptr [ null, %_ZNSt6vectorIPN4bzla4node8NodeDataESaIS3_EE17_S_check_init_lenEmRKS4_.exit.i ], [ %i.n, %.noexc18 ]
  %i.p = add nsw i64 %i.h, -1
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !56   ; 2 uses
  %.not3235 = icmp eq ptr %i.o, %i.r
  br i1 %.not3235, label %._crit_edge38, label %.lr.ph37

._crit_edge38.loopexit:                           ; preds = %._crit_edge
  %.pre39 = load ptr, ptr %i.a, align 8, !tbaa !17
  br label %._crit_edge38

._crit_edge38:                                    ; preds = %._crit_edge38.loopexit, %_ZNSt6vectorIPN4bzla4node8NodeDataESaIS3_EEC2EmRKS3_RKS4_.exit
  %i.s = phi ptr [ %.pre39, %._crit_edge38.loopexit ], [ %i.o, %_ZNSt6vectorIPN4bzla4node8NodeDataESaIS3_EEC2EmRKS3_RKS4_.exit ] ; 3 uses
  %i.t = load ptr, ptr %i.b, align 8, !tbaa !18
  store ptr %.sroa.025.0, ptr %i.a, align 8, !tbaa !17
  store ptr %.0.i.i.i.i.i.i.i, ptr %i.q, align 8, !tbaa !19
  store ptr %.sroa.14.0, ptr %i.b, align 8, !tbaa !18
  %.not.i.i.i.i.i = icmp eq ptr %i.s, null
  br i1 %.not.i.i.i.i.i, label %_ZNSt6vectorIPN4bzla4node8NodeDataESaIS3_EED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %._crit_edge38
  %i.u = ptrtoint ptr %i.t to i64
  %i.v = ptrtoint ptr %i.s to i64
  %i.w = sub i64 %i.u, %i.v
  tail call void @_ZdlPvm(ptr noundef nonnull %i.s, i64 noundef %i.w) #12
  br label %_ZNSt6vectorIPN4bzla4node8NodeDataESaIS3_EED2Ev.exit

_ZNSt6vectorIPN4bzla4node8NodeDataESaIS3_EED2Ev.exit: ; preds = %bb.b, %._crit_edge38
  ret void

.lr.ph37:                                         ; preds = %_ZNSt6vectorIPN4bzla4node8NodeDataESaIS3_EEC2EmRKS3_RKS4_.exit, %._crit_edge
  %.sroa.021.036 = phi ptr [ %i.ai, %._crit_edge ], [ %i.o, %_ZNSt6vectorIPN4bzla4node8NodeDataESaIS3_EEC2EmRKS3_RKS4_.exit ] ; 2 uses
  %i.x = load ptr, ptr %.sroa.021.036, align 8, !tbaa !13 ; 2 uses
  %.not33 = icmp eq ptr %i.x, null
  br i1 %.not33, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph37, %bb.c
  %.034 = phi ptr [ %i.ab, %bb.c ], [ %i.x, %.lr.ph37 ] ; 3 uses
  %i.y = invoke noundef i64 @_ZNK4bzla4node15NodeUniqueTable4hashEPKNS0_8NodeDataE(ptr nonnull align 8 poison, ptr noundef nonnull %.034)
          to label %bb.c unwind label %bb.d

bb.c:                                             ; preds = %.lr.ph
  %i.z = and i64 %i.y, %i.p
  %i.aa = getelementptr inbounds nuw i8, ptr %.034, i64 8 ; 2 uses
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !27 ; 2 uses
  %i.ac = getelementptr inbounds nuw [8 x i8], ptr %.sroa.025.0, i64 %i.z ; 2 uses
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !13
  store ptr %i.ad, ptr %i.aa, align 8, !tbaa !27
  store ptr %.034, ptr %i.ac, align 8, !tbaa !13
  %.not = icmp eq ptr %i.ab, null
  br i1 %.not, label %._crit_edge, label %.lr.ph, !llvm.loop !55

bb.d:                                             ; preds = %.lr.ph
  %i.ae = landingpad { ptr, i32 }
          cleanup
  %.not.i.i.i19 = icmp eq ptr %.sroa.025.0, null
  br i1 %.not.i.i.i19, label %_ZNSt6vectorIPN4bzla4node8NodeDataESaIS3_EED2Ev.exit20, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.af = ptrtoint ptr %.sroa.14.0 to i64
  %i.ag = ptrtoint ptr %.sroa.025.0 to i64
  %i.ah = sub i64 %i.af, %i.ag
  tail call void @_ZdlPvm(ptr noundef nonnull %.sroa.025.0, i64 noundef %i.ah) #12
  br label %_ZNSt6vectorIPN4bzla4node8NodeDataESaIS3_EED2Ev.exit20

._crit_edge:                                      ; preds = %bb.c, %.lr.ph37
  %i.ai = getelementptr inbounds nuw i8, ptr %.sroa.021.036, i64 8 ; 2 uses
  %.not32 = icmp eq ptr %i.ai, %i.r
  br i1 %.not32, label %._crit_edge38.loopexit, label %.lr.ph37

_ZNSt6vectorIPN4bzla4node8NodeDataESaIS3_EED2Ev.exit20: ; preds = %bb.e, %bb.d
  resume { ptr, i32 } %i.ae
}

; Function Attrs: mustprogress uwtable
define void @_ZN4bzla4node15NodeUniqueTable5eraseEPKNS0_8NodeDataE(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(32) %0, ptr noundef %1) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = tail call noundef i64 @_ZNK4bzla4node15NodeUniqueTable4hashEPKNS0_8NodeDataE(ptr nonnull align 8 poison, ptr noundef %1)
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !18
  %i.e = load ptr, ptr %i.b, align 8, !tbaa !17   ; 2 uses
  %i.f = ptrtoint ptr %i.d to i64
  %i.g = ptrtoint ptr %i.e to i64
  %i.h = sub i64 %i.f, %i.g
  %i.i = ashr exact i64 %i.h, 3
  %i.j = add nsw i64 %i.i, -1
  %i.k = and i64 %i.j, %i.a
  %i.l = getelementptr inbounds nuw [8 x i8], ptr %i.e, i64 %i.k ; 2 uses
  br label %bb.b

bb.b:                                             ; preds = %bb.b, %bb.a
  %.012.in = phi ptr [ %i.l, %bb.a ], [ %i.n, %bb.b ]
  %.0 = phi ptr [ null, %bb.a ], [ %.012, %bb.b ] ; 2 uses
  %.012 = load ptr, ptr %.012.in, align 8, !tbaa !13 ; 4 uses
  %.not = icmp eq ptr %.012, null
  %i.m = icmp eq ptr %.012, %1
  %or.cond = or i1 %.not, %i.m
  %i.n = getelementptr inbounds nuw i8, ptr %.012, i64 8 ; 2 uses
  br i1 %or.cond, label %bb.c, label %bb.b, !llvm.loop !57

bb.c:                                             ; preds = %bb.b
  %i.o = icmp eq ptr %.0, null
  %i.p = load ptr, ptr %i.n, align 8, !tbaa !27   ; 2 uses
  br i1 %i.o, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  store ptr %i.p, ptr %i.l, align 8, !tbaa !13
  br label %bb.f

bb.e:                                             ; preds = %bb.c
  %i.q = getelementptr inbounds nuw i8, ptr %.0, i64 8
  store ptr %i.p, ptr %i.q, align 8, !tbaa !27
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %i.r = load i64, ptr %0, align 8, !tbaa !47
  %i.s = add i64 %i.r, -1
  store i64 %i.s, ptr %0, align 8, !tbaa !47
  ret void
}

; Function Attrs: mustprogress uwtable
define noundef i64 @_ZNK4bzla4node15NodeUniqueTable4hashEPKNS0_8NodeDataE(ptr nofree nonnull readnone align 8 captures(none) %0, ptr noundef %1) local_unnamed_addr #0 align 2 {
bb.a:
  %2 = alloca %"struct.std::hash.11", align 1     ; 3 uses
  %3 = alloca %"struct.std::hash.16", align 1     ; 3 uses
  %4 = alloca %"struct.std::hash.22", align 1     ; 3 uses
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 36
  %i.b = load i8, ptr %i.a, align 4, !tbaa !39    ; 2 uses
  %i.c = zext i8 %i.b to i64                      ; 6 uses
  %i.d = icmp eq i8 %i.b, 2
  br i1 %i.d, label %bb.b, label %bb.l

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 5 uses
  %i.f = tail call noundef zeroext i1 @_ZNK4bzla4Type7is_boolEv(ptr noundef nonnull align 8 dereferenceable(8) %i.e)
  br i1 %i.f, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.h = load i8, ptr %i.g, align 4, !tbaa !61, !range !62, !noundef !63
  %i.i = or disjoint i8 %i.h, 2
  %i.j = zext nneg i8 %i.i to i64
  br label %_ZNK4bzla4node15NodeUniqueTable12hash_indicesEmmPKm.exit

bb.d:                                             ; preds = %bb.b
  %i.k = tail call noundef zeroext i1 @_ZNK4bzla4Type5is_bvEv(ptr noundef nonnull align 8 dereferenceable(8) %i.e)
  br i1 %i.k, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 40
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #11
  %i.m = call noundef i64 @_ZNKSt4hashIN4bzla9BitVectorEEclERKS1_(ptr noundef nonnull align 1 dereferenceable(1) %2, ptr noundef nonnull align 8 dereferenceable(24) %i.l)
  %i.n = add i64 %i.m, %i.c
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #11
  br label %_ZNK4bzla4node15NodeUniqueTable12hash_indicesEmmPKm.exit

bb.f:                                             ; preds = %bb.d
  %i.o = tail call noundef zeroext i1 @_ZNK4bzla4Type5is_rmEv(ptr noundef nonnull align 8 dereferenceable(8) %i.e)
  br i1 %i.o, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.q = load i32, ptr %i.p, align 4, !tbaa !66
  %i.r = sext i32 %i.q to i64
  %i.s = add nsw i64 %i.r, %i.c
  br label %_ZNK4bzla4node15NodeUniqueTable12hash_indicesEmmPKm.exit

bb.h:                                             ; preds = %bb.f
  %i.t = tail call noundef zeroext i1 @_ZNK4bzla4Type5is_fpEv(ptr noundef nonnull align 8 dereferenceable(8) %i.e)
  br i1 %i.t, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 40
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #11
  %i.v = call noundef i64 @_ZNKSt4hashIN4bzla13FloatingPointEEclERKS1_(ptr noundef nonnull align 1 dereferenceable(1) %3, ptr noundef nonnull align 8 dereferenceable(48) %i.u)
  %i.w = add i64 %i.v, %i.c
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #11
  br label %_ZNK4bzla4node15NodeUniqueTable12hash_indicesEmmPKm.exit

bb.j:                                             ; preds = %bb.h
  %i.x = tail call noundef zeroext i1 @_ZNK4bzla4Type16is_uninterpretedEv(ptr noundef nonnull align 8 dereferenceable(8) %i.e)
  br i1 %i.x, label %bb.k, label %_ZNK4bzla4node15NodeUniqueTable12hash_indicesEmmPKm.exit

bb.k:                                             ; preds = %bb.j
  %i.y = getelementptr inbounds nuw i8, ptr %1, i64 40
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #11
  %i.z = call noundef i64 @_ZNKSt15__str_hash_baseIcSaIcENSt7__cxx1112basic_stringIcSt11char_traitsIcES0_EEEclERKS5_(ptr noundef nonnull align 1 dereferenceable(1) %4, ptr noundef nonnull align 8 dereferenceable(32) %i.y) #11
  %i.aa = add i64 %i.z, %i.c
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #11
end_hunk_0

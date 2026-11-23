Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/lean4/original/name?download=true
inline.NumInlined: 642
inline.NumDeleted: 248
begin_hunk_0_@_ZN4lean4name8cmp_coreEP11lean_objectS2_:bb.a
  %i.ca = lshr i32 %.val.i67, 24
  %.not40 = icmp eq i32 %i.by, %i.ca
  %i.cb = icmp eq i32 %i.by, 1                    ; 2 uses
  br i1 %.not40, label %bb.q, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.cc = select i1 %i.cb, i32 1, i32 -1
  br label %.thread

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %bb.r, %bb.s, %.critedge.i.i.i, %.critedge.i.i.i77, %bb.h, %bb.b
  %lpad.loopexit.split-lp163 = landingpad { ptr, i32 }
          cleanup
  %i.cd = load ptr, ptr %3, align 8, !tbaa !25    ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.cd, %i.d
  br i1 %.not.i.i.i, label %_ZN4lean6bufferIP11lean_objectLm16EED2Ev.exit, label %bb.o

bb.o:                                             ; preds = %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp
  %i.ce = load i64, ptr %i.f, align 8, !tbaa !26
  %i.cf = shl i64 %i.ce, 3
  call void @_ZdaPvm(ptr noundef %i.cd, i64 noundef %i.cf) #20
  br label %_ZN4lean6bufferIP11lean_objectLm16EED2Ev.exit

_ZN4lean6bufferIP11lean_objectLm16EED2Ev.exit:    ; preds = %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %bb.o
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #20
  %i.cg = load ptr, ptr %2, align 8, !tbaa !25    ; 2 uses
  %.not.i.i.i68 = icmp eq ptr %i.cg, %i.a
  br i1 %.not.i.i.i68, label %_ZN4lean6bufferIP11lean_objectLm16EED2Ev.exit69, label %bb.p

bb.p:                                             ; preds = %_ZN4lean6bufferIP11lean_objectLm16EED2Ev.exit
  %i.ch = load i64, ptr %i.c, align 8, !tbaa !26
  %i.ci = shl i64 %i.ch, 3
  call void @_ZdaPvm(ptr noundef %i.cg, i64 noundef %i.ci) #20
  br label %_ZN4lean6bufferIP11lean_objectLm16EED2Ev.exit69

_ZN4lean6bufferIP11lean_objectLm16EED2Ev.exit69:  ; preds = %_ZN4lean6bufferIP11lean_objectLm16EED2Ev.exit, %bb.p
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #20
  resume { ptr, i32 } %lpad.loopexit.split-lp163

bb.q:                                             ; preds = %bb.m
  %i.cj = getelementptr inbounds nuw i8, ptr %i.bv, i64 16 ; 3 uses
  %i.ck = getelementptr inbounds nuw i8, ptr %i.bw, i64 16 ; 3 uses
  %i.cl = load ptr, ptr %i.cj, align 8, !tbaa !13 ; 5 uses
  %i.cm = load ptr, ptr %i.ck, align 8, !tbaa !13 ; 5 uses
  br i1 %i.cb, label %bb.r, label %bb.t

bb.r:                                             ; preds = %bb.q
  %i.cn = invoke noundef zeroext i1 @lean_string_lt(ptr noundef %i.cl, ptr noundef %i.cm)
          to label %_ZN4leanltERKNS_10string_refES2_.exit unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

_ZN4leanltERKNS_10string_refES2_.exit:            ; preds = %bb.r
  br i1 %i.cn, label %.thread.loopexit, label %bb.s

bb.s:                                             ; preds = %_ZN4leanltERKNS_10string_refES2_.exit
  %i.co = load ptr, ptr %i.ck, align 8, !tbaa !13
  %i.cp = load ptr, ptr %i.cj, align 8, !tbaa !13
  %i.cq = invoke noundef zeroext i1 @lean_string_lt(ptr noundef %i.co, ptr noundef %i.cp)
          to label %_ZN4leanltERKNS_10string_refES2_.exit72 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

_ZN4leanltERKNS_10string_refES2_.exit72:          ; preds = %bb.s
  br i1 %i.cq, label %.thread.loopexit, label %bb.v

bb.t:                                             ; preds = %bb.q
  %i.cr = ptrtoint ptr %i.cl to i64               ; 2 uses
  %i.cs = ptrtoint ptr %i.cm to i64               ; 2 uses
  %i.ct = and i64 %i.cr, 1
  %i.cu = and i64 %i.ct, %i.cs
  %or.cond.not.i.i = icmp eq i64 %i.cu, 0
  br i1 %or.cond.not.i.i, label %.critedge.i.i.i, label %.split, !prof !29

.split:                                           ; preds = %bb.t
  %i.cv = icmp ult ptr %i.cl, %i.cm
  br i1 %i.cv, label %.thread.loopexit, label %bb.u

.critedge.i.i.i:                                  ; preds = %bb.t
  %i.cw = invoke zeroext i1 @lean_nat_big_lt(ptr noundef %i.cl, ptr noundef %i.cm)
          to label %_ZN4leanltERKNS_3natES2_.exit unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

_ZN4leanltERKNS_3natES2_.exit:                    ; preds = %.critedge.i.i.i
  br i1 %i.cw, label %.thread.loopexit, label %_ZN4leanltERKNS_3natES2_.exit._crit_edge

_ZN4leanltERKNS_3natES2_.exit._crit_edge:         ; preds = %_ZN4leanltERKNS_3natES2_.exit
  %.pre = load ptr, ptr %i.ck, align 8, !tbaa !13 ; 2 uses
  %.pre107 = load ptr, ptr %i.cj, align 8, !tbaa !13 ; 2 uses
  %.pre111 = ptrtoint ptr %.pre to i64
  %.pre112 = ptrtoint ptr %.pre107 to i64
  br label %bb.u

bb.u:                                             ; preds = %_ZN4leanltERKNS_3natES2_.exit._crit_edge, %.split
  %.pre-phi113 = phi i64 [ %.pre112, %_ZN4leanltERKNS_3natES2_.exit._crit_edge ], [ %i.cr, %.split ]
  %.pre-phi = phi i64 [ %.pre111, %_ZN4leanltERKNS_3natES2_.exit._crit_edge ], [ %i.cs, %.split ]
  %i.cx = phi ptr [ %.pre107, %_ZN4leanltERKNS_3natES2_.exit._crit_edge ], [ %i.cl, %.split ] ; 2 uses
  %i.cy = phi ptr [ %.pre, %_ZN4leanltERKNS_3natES2_.exit._crit_edge ], [ %i.cm, %.split ] ; 2 uses
  %i.cz = and i64 %.pre-phi, 1
  %i.da = and i64 %i.cz, %.pre-phi113
  %or.cond.not.i.i75 = icmp eq i64 %i.da, 0
  br i1 %or.cond.not.i.i75, label %.critedge.i.i.i77, label %.split84, !prof !29

.split84:                                         ; preds = %bb.u
  %i.db = icmp ult ptr %i.cy, %i.cx
  br i1 %i.db, label %.thread.loopexit, label %bb.v

.critedge.i.i.i77:                                ; preds = %bb.u
  %i.dc = invoke zeroext i1 @lean_nat_big_lt(ptr noundef %i.cy, ptr noundef %i.cx)
          to label %_ZN4leanltERKNS_3natES2_.exit79 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

_ZN4leanltERKNS_3natES2_.exit79:                  ; preds = %.critedge.i.i.i77
  br i1 %i.dc, label %.thread.loopexit, label %bb.v

bb.v:                                             ; preds = %.split84, %_ZN4leanltERKNS_3natES2_.exit79, %_ZN4leanltERKNS_10string_refES2_.exit72
  %i.dd = getelementptr inbounds nuw i8, ptr %.02997, i64 8 ; 2 uses
  %i.de = getelementptr inbounds nuw i8, ptr %.02898, i64 8 ; 2 uses
  %i.df = load ptr, ptr %2, align 8, !tbaa !25
  %i.dg = load i64, ptr %i.b, align 8, !tbaa !27
  %i.dh = getelementptr inbounds nuw [8 x i8], ptr %i.df, i64 %i.dg
  %.not = icmp eq ptr %i.dd, %i.dh
  br i1 %.not, label %._crit_edge.loopexit, label %.lr.ph, !llvm.loop !62

._crit_edge.loopexit:                             ; preds = %bb.v
  %.pre108 = load ptr, ptr %3, align 8, !tbaa !25
  %.pre109 = load i64, ptr %i.e, align 8, !tbaa !27
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %_ZN4leanL10copy_limbsEP11lean_objectRNS_6bufferIS1_Lm16EEE.exit66
  %i.di = phi i64 [ %i.bo, %_ZN4leanL10copy_limbsEP11lean_objectRNS_6bufferIS1_Lm16EEE.exit66 ], [ %.pre109, %._crit_edge.loopexit ]
  %i.dj = phi ptr [ %i.bp, %_ZN4leanL10copy_limbsEP11lean_objectRNS_6bufferIS1_Lm16EEE.exit66 ], [ %.pre108, %._crit_edge.loopexit ] ; 2 uses
  %.028.lcssa = phi ptr [ %i.bp, %_ZN4leanL10copy_limbsEP11lean_objectRNS_6bufferIS1_Lm16EEE.exit66 ], [ %i.de, %._crit_edge.loopexit ]
  %i.dk = getelementptr inbounds nuw [8 x i8], ptr %i.dj, i64 %i.di
  %i.dl = icmp ne ptr %.028.lcssa, %i.dk
  %spec.select = sext i1 %i.dl to i32
  br label %.thread

.thread.loopexit:                                 ; preds = %_ZN4leanltERKNS_3natES2_.exit, %_ZN4leanltERKNS_10string_refES2_.exit, %_ZN4leanltERKNS_10string_refES2_.exit72, %_ZN4leanltERKNS_3natES2_.exit79, %.split, %.split84, %.lr.ph
  %.236.ph = phi i32 [ 1, %.split84 ], [ -1, %.split ], [ 1, %_ZN4leanltERKNS_3natES2_.exit79 ], [ 1, %_ZN4leanltERKNS_10string_refES2_.exit72 ], [ -1, %_ZN4leanltERKNS_10string_refES2_.exit ], [ -1, %_ZN4leanltERKNS_3natES2_.exit ], [ 1, %.lr.ph ]
  %.pre110 = load ptr, ptr %3, align 8, !tbaa !25
  br label %.thread

.thread:                                          ; preds = %.thread.loopexit, %._crit_edge, %bb.n
  %i.dm = phi ptr [ %i.dj, %._crit_edge ], [ %i.bs, %bb.n ], [ %.pre110, %.thread.loopexit ] ; 2 uses
  %.236 = phi i32 [ %spec.select, %._crit_edge ], [ %i.cc, %bb.n ], [ %.236.ph, %.thread.loopexit ]
  %.not.i.i.i80 = icmp eq ptr %i.dm, %i.d
  br i1 %.not.i.i.i80, label %_ZN4lean6bufferIP11lean_objectLm16EED2Ev.exit81, label %bb.w

bb.w:                                             ; preds = %.thread
  %i.dn = load i64, ptr %i.f, align 8, !tbaa !26
  %i.do = shl i64 %i.dn, 3
  call void @_ZdaPvm(ptr noundef %i.dm, i64 noundef %i.do) #20
  br label %_ZN4lean6bufferIP11lean_objectLm16EED2Ev.exit81

_ZN4lean6bufferIP11lean_objectLm16EED2Ev.exit81:  ; preds = %.thread, %bb.w
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #20
  %i.dp = load ptr, ptr %2, align 8, !tbaa !25    ; 2 uses
  %.not.i.i.i82 = icmp eq ptr %i.dp, %i.a
  br i1 %.not.i.i.i82, label %_ZN4lean6bufferIP11lean_objectLm16EED2Ev.exit83, label %bb.x

bb.x:                                             ; preds = %_ZN4lean6bufferIP11lean_objectLm16EED2Ev.exit81
  %i.dq = load i64, ptr %i.c, align 8, !tbaa !26
  %i.dr = shl i64 %i.dq, 3
  call void @_ZdaPvm(ptr noundef %i.dp, i64 noundef %i.dr) #20
  br label %_ZN4lean6bufferIP11lean_objectLm16EED2Ev.exit83

_ZN4lean6bufferIP11lean_objectLm16EED2Ev.exit83:  ; preds = %_ZN4lean6bufferIP11lean_objectLm16EED2Ev.exit81, %bb.x
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #20
  ret i32 %.236
}

; Function Attrs: mustprogress uwtable
define noundef i64 @_ZNK4lean4name9size_coreEb(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %0, i1 noundef zeroext %1) local_unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.lean::nat", align 8         ; 6 uses
  %3 = alloca %"class.lean::nat", align 8         ; 7 uses
  %4 = alloca %"class.lean::nat", align 8         ; 6 uses
  %5 = alloca %"class.lean::nat", align 8         ; 6 uses
  %i.a = load ptr, ptr %0, align 8, !tbaa !13     ; 2 uses
  %i.b = ptrtoint ptr %i.a to i64
  %i.c = trunc i64 %i.b to i1
  br i1 %i.c, label %.loopexit, label %.preheader

.preheader:                                       ; preds = %bb.a, %bb.af
  %.016 = phi i64 [ %i.bo, %bb.af ], [ 0, %bb.a ]
  %.015 = phi ptr [ %i.bl, %bb.af ], [ %i.a, %bb.a ] ; 4 uses
  %i.d = ptrtoint ptr %.015 to i64                ; 2 uses
  %i.e = and i64 %i.d, 1
  %.not.i.i.i = icmp eq i64 %i.e, 0
  br i1 %.not.i.i.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %.preheader
  %i.f = lshr i64 %i.d, 1
  %i.g = trunc i64 %i.f to i32
  br label %_ZN4lean4name4kindEP11lean_object.exit

bb.c:                                             ; preds = %.preheader
  %i.h = getelementptr i8, ptr %.015, i64 4
  %.val.i.i.i = load i32, ptr %i.h, align 4
  %i.i = lshr i32 %.val.i.i.i, 24
  br label %_ZN4lean4name4kindEP11lean_object.exit

_ZN4lean4name4kindEP11lean_object.exit:           ; preds = %bb.b, %bb.c
  %.0.i.i.i = phi i32 [ %i.g, %bb.b ], [ %i.i, %bb.c ]
  %i.j = icmp eq i32 %.0.i.i.i, 1
  %i.k = getelementptr inbounds nuw i8, ptr %.015, i64 16
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !13   ; 11 uses
  br i1 %i.j, label %bb.d, label %bb.g

bb.d:                                             ; preds = %_ZN4lean4name4kindEP11lean_object.exit
  br i1 %1, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.m = getelementptr i8, ptr %i.l, i64 24
  %.val.i.i = load i64, ptr %i.m, align 8, !tbaa !28
  br label %_ZN4lean10object_refD2Ev.exit

bb.f:                                             ; preds = %bb.d
  %i.n = getelementptr i8, ptr %i.l, i64 8
  %.val.i.i17 = load i64, ptr %i.n, align 8, !tbaa !28
  %i.o = add i64 %.val.i.i17, -1
  br label %_ZN4lean10object_refD2Ev.exit

bb.g:                                             ; preds = %_ZN4lean4name4kindEP11lean_object.exit
  store ptr %i.l, ptr %5, align 8, !tbaa !13
  %i.p = ptrtoint ptr %i.l to i64
  %i.q = and i64 %i.p, 1
  %.not.i.i.i.i = icmp eq i64 %i.q, 0
  br i1 %.not.i.i.i.i, label %bb.h, label %.split.i

bb.h:                                             ; preds = %bb.g
  %.val.i.i.i.i.i = load i32, ptr %i.l, align 4, !tbaa !15 ; 3 uses
  %i.r = icmp sgt i32 %.val.i.i.i.i.i, 0
  br i1 %i.r, label %bb.i, label %bb.j, !prof !16

bb.i:                                             ; preds = %bb.h
  %i.s = add nuw i32 %.val.i.i.i.i.i, 1
  store i32 %i.s, ptr %i.l, align 4, !tbaa !15
  br label %.critedge.i.i.i.i.i

bb.j:                                             ; preds = %bb.h
  %.not.i.i.i.i.i = icmp eq i32 %.val.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i.i, label %.critedge.i.i.i.i.i, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.t = atomicrmw add ptr %i.l, i32 -1 monotonic, align 4 ; 0 uses
  br label %.critedge.i.i.i.i.i

.split.i:                                         ; preds = %bb.g
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #20
  %i.u = icmp eq ptr %i.l, inttoptr (i64 1 to ptr)
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #20
  br i1 %i.u, label %_ZN4leanL10num_digitsENS_3natE.exit, label %.preheader.i.preheader

.critedge.i.i.i.i.i:                              ; preds = %bb.i, %bb.j, %bb.k
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #20
  store ptr inttoptr (i64 1 to ptr), ptr %3, align 8, !tbaa !13
  %i.v = invoke zeroext i1 @lean_nat_big_eq(ptr noundef nonnull %i.l, ptr noundef nonnull inttoptr (i64 1 to ptr))
          to label %_ZN4leaneqERKNS_3natEj.exit.i unwind label %bb.l

bb.l:                                             ; preds = %.critedge.i.i.i.i.i
  %i.w = landingpad { ptr, i32 }
          cleanup
  call void @_ZN4lean10object_refD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %3) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #20
  br label %.body

_ZN4leaneqERKNS_3natEj.exit.i:                    ; preds = %.critedge.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #20
  %.pre32 = load ptr, ptr %5, align 8, !tbaa !13  ; 2 uses
  br i1 %i.v, label %_ZN4leanL10num_digitsENS_3natE.exit, label %.preheader.i.preheader

.preheader.i.preheader:                           ; preds = %_ZN4leaneqERKNS_3natEj.exit.i, %.split.i
  %.ph = phi ptr [ %.pre32, %_ZN4leaneqERKNS_3natEj.exit.i ], [ %i.l, %.split.i ]
  br label %.preheader.i

.preheader.i:                                     ; preds = %.preheader.i.preheader, %_ZN4lean10object_refD2Ev.exit8.i
  %i.x = phi ptr [ %.1.i.i.i.i, %_ZN4lean10object_refD2Ev.exit8.i ], [ %.ph, %.preheader.i.preheader ] ; 5 uses
  %.04.i = phi i32 [ %i.az, %_ZN4lean10object_refD2Ev.exit8.i ], [ 0, %.preheader.i.preheader ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #20
  store ptr inttoptr (i64 1 to ptr), ptr %2, align 8, !tbaa !13
  %i.y = ptrtoint ptr %i.x to i64                 ; 2 uses
  %i.z = and i64 %i.y, 1
  %or.cond.not.i.i.i.i.i = icmp eq i64 %i.z, 0
  br i1 %or.cond.not.i.i.i.i.i, label %.critedge.i.i.i.i.i.i, label %.split22.i, !prof !29

.split22.i:                                       ; preds = %.preheader.i
  %i.aa = icmp eq ptr %i.x, inttoptr (i64 1 to ptr)
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #20
  br i1 %i.aa, label %_ZN4leanL10num_digitsENS_3natE.exit.loopexit, label %bb.n

.critedge.i.i.i.i.i.i:                            ; preds = %.preheader.i
  %i.ab = invoke zeroext i1 @lean_nat_big_eq(ptr noundef %i.x, ptr noundef nonnull inttoptr (i64 1 to ptr))
          to label %_ZN4leanneERKNS_3natEj.exit.i unwind label %bb.m

bb.m:                                             ; preds = %.critedge.i.i.i.i.i.i
  %i.ac = landingpad { ptr, i32 }
          cleanup
  call void @_ZN4lean10object_refD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %2) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #20
  br label %.body

_ZN4leanneERKNS_3natEj.exit.i:                    ; preds = %.critedge.i.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #20
  %.pre31.pre = load ptr, ptr %5, align 8, !tbaa !13 ; 3 uses
  br i1 %i.ab, label %_ZN4leanL10num_digitsENS_3natE.exit.loopexit, label %_ZN4leanneERKNS_3natEj.exit.i._crit_edge

_ZN4leanneERKNS_3natEj.exit.i._crit_edge:         ; preds = %_ZN4leanneERKNS_3natEj.exit.i
  %.pre34 = ptrtoint ptr %.pre31.pre to i64
  br label %bb.n

bb.n:                                             ; preds = %_ZN4leanneERKNS_3natEj.exit.i._crit_edge, %.split22.i
  %.pre-phi = phi i64 [ %.pre34, %_ZN4leanneERKNS_3natEj.exit.i._crit_edge ], [ %i.y, %.split22.i ] ; 3 uses
  %i.ad = phi ptr [ %.pre31.pre, %_ZN4leanneERKNS_3natEj.exit.i._crit_edge ], [ %i.x, %.split22.i ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #20
  store ptr inttoptr (i64 21 to ptr), ptr %4, align 8, !tbaa !13
  %i.ae = and i64 %.pre-phi, 1
  %.not.i.i.i.i18 = icmp eq i64 %i.ae, 0
  br i1 %.not.i.i.i.i18, label %.critedge.i.i.i.i, label %bb.o, !prof !30

bb.o:                                             ; preds = %bb.n
  %i.af = udiv i64 %.pre-phi, 20
  %i.ag = shl nuw nsw i64 %i.af, 1
  %i.ah = or disjoint i64 %i.ag, 1
  %i.ai = inttoptr i64 %i.ah to ptr
  br label %_ZN4leandvERKNS_3natES2_.exit.i

.critedge.i.i.i.i:                                ; preds = %bb.n
  %i.aj = invoke ptr @lean_nat_big_div(ptr noundef %i.ad, ptr noundef nonnull inttoptr (i64 21 to ptr))
          to label %.critedge.i.i.i._ZN4leandvERKNS_3natES2_.exit_crit_edge.i unwind label %bb.z

.critedge.i.i.i._ZN4leandvERKNS_3natES2_.exit_crit_edge.i: ; preds = %.critedge.i.i.i.i
  %.pre.i = load ptr, ptr %5, align 8, !tbaa !13  ; 2 uses
  %.pre18.i = ptrtoint ptr %.pre.i to i64
  br label %_ZN4leandvERKNS_3natES2_.exit.i

_ZN4leandvERKNS_3natES2_.exit.i:                  ; preds = %.critedge.i.i.i._ZN4leandvERKNS_3natES2_.exit_crit_edge.i, %bb.o
  %.pre-phi.i = phi i64 [ %.pre18.i, %.critedge.i.i.i._ZN4leandvERKNS_3natES2_.exit_crit_edge.i ], [ %.pre-phi, %bb.o ]
  %i.ak = phi ptr [ %.pre.i, %.critedge.i.i.i._ZN4leandvERKNS_3natES2_.exit_crit_edge.i ], [ %i.ad, %bb.o ] ; 3 uses
  %.1.i.i.i.i = phi ptr [ %i.aj, %.critedge.i.i.i._ZN4leandvERKNS_3natES2_.exit_crit_edge.i ], [ %i.ai, %bb.o ] ; 2 uses
  %i.al = and i64 %.pre-phi.i, 1
  %.not.i.i.i.i.i19 = icmp eq i64 %i.al, 0
  br i1 %.not.i.i.i.i.i19, label %bb.p, label %_ZN4lean10object_refD2Ev.exit.i

bb.p:                                             ; preds = %_ZN4leandvERKNS_3natES2_.exit.i
  %i.am = load i32, ptr %i.ak, align 4, !tbaa !15 ; 3 uses
  %i.an = icmp sgt i32 %i.am, 1
  br i1 %i.an, label %bb.q, label %bb.r, !prof !16

bb.q:                                             ; preds = %bb.p
  %i.ao = add nsw i32 %i.am, -1
  store i32 %i.ao, ptr %i.ak, align 4, !tbaa !15
  br label %_ZN4lean10object_refD2Ev.exit.i

bb.r:                                             ; preds = %bb.p
  %.not.i1.i.i.i.i = icmp eq i32 %i.am, 0
  br i1 %.not.i1.i.i.i.i, label %_ZN4lean10object_refD2Ev.exit.i, label %bb.s

bb.s:                                             ; preds = %bb.r
  invoke void @lean_dec_ref_cold(ptr noundef nonnull %i.ak)
          to label %_ZN4lean10object_refD2Ev.exit.i unwind label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.ap = landingpad { ptr, i32 }
          catch ptr null
  %i.aq = extractvalue { ptr, i32 } %i.ap, 0
  tail call void @__clang_call_terminate(ptr %i.aq) #21
  unreachable

_ZN4lean10object_refD2Ev.exit.i:                  ; preds = %bb.s, %bb.r, %bb.q, %_ZN4leandvERKNS_3natES2_.exit.i
  store ptr %.1.i.i.i.i, ptr %5, align 8, !tbaa !13
  %i.ar = load ptr, ptr %4, align 8, !tbaa !13    ; 4 uses
  %i.as = ptrtoint ptr %i.ar to i64
  %i.at = and i64 %i.as, 1
  %.not.i.i.i6.i = icmp eq i64 %i.at, 0
  br i1 %.not.i.i.i6.i, label %bb.u, label %_ZN4lean10object_refD2Ev.exit8.i

bb.u:                                             ; preds = %_ZN4lean10object_refD2Ev.exit.i
  %i.au = load i32, ptr %i.ar, align 4, !tbaa !15 ; 3 uses
  %i.av = icmp sgt i32 %i.au, 1
  br i1 %i.av, label %bb.v, label %bb.w, !prof !16

bb.v:                                             ; preds = %bb.u
  %i.aw = add nsw i32 %i.au, -1
  store i32 %i.aw, ptr %i.ar, align 4, !tbaa !15
  br label %_ZN4lean10object_refD2Ev.exit8.i

bb.w:                                             ; preds = %bb.u
  %.not.i1.i.i7.i = icmp eq i32 %i.au, 0
  br i1 %.not.i1.i.i7.i, label %_ZN4lean10object_refD2Ev.exit8.i, label %bb.x

bb.x:                                             ; preds = %bb.w
  invoke void @lean_dec_ref_cold(ptr noundef nonnull %i.ar)
          to label %_ZN4lean10object_refD2Ev.exit8.i unwind label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.ax = landingpad { ptr, i32 }
          catch ptr null
  %i.ay = extractvalue { ptr, i32 } %i.ax, 0
  tail call void @__clang_call_terminate(ptr %i.ay) #21
  unreachable

_ZN4lean10object_refD2Ev.exit8.i:                 ; preds = %bb.x, %bb.w, %bb.v, %_ZN4lean10object_refD2Ev.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #20
  %i.az = add nuw nsw i32 %.04.i, 1
  br label %.preheader.i, !llvm.loop !63

bb.z:                                             ; preds = %.critedge.i.i.i.i
  %i.ba = landingpad { ptr, i32 }
          cleanup
  call void @_ZN4lean10object_refD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %4) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #20
  br label %.body

_ZN4leanL10num_digitsENS_3natE.exit.loopexit:     ; preds = %.split22.i, %_ZN4leanneERKNS_3natEj.exit.i
  %.pre31 = phi ptr [ %i.x, %.split22.i ], [ %.pre31.pre, %_ZN4leanneERKNS_3natEj.exit.i ]
  %i.bb = zext nneg i32 %.04.i to i64
  br label %_ZN4leanL10num_digitsENS_3natE.exit

_ZN4leanL10num_digitsENS_3natE.exit:              ; preds = %_ZN4leanL10num_digitsENS_3natE.exit.loopexit, %_ZN4leaneqERKNS_3natEj.exit.i, %.split.i
  %i.bc = phi ptr [ %.pre32, %_ZN4leaneqERKNS_3natEj.exit.i ], [ %i.l, %.split.i ], [ %.pre31, %_ZN4leanL10num_digitsENS_3natE.exit.loopexit ] ; 4 uses
  %.0.i = phi i64 [ 1, %_ZN4leaneqERKNS_3natEj.exit.i ], [ 1, %.split.i ], [ %i.bb, %_ZN4leanL10num_digitsENS_3natE.exit.loopexit ] ; 4 uses
  %i.bd = ptrtoint ptr %i.bc to i64
  %i.be = and i64 %i.bd, 1
  %.not.i.i.i20 = icmp eq i64 %i.be, 0
  br i1 %.not.i.i.i20, label %bb.aa, label %_ZN4lean10object_refD2Ev.exit

bb.aa:                                            ; preds = %_ZN4leanL10num_digitsENS_3natE.exit
  %i.bf = load i32, ptr %i.bc, align 4, !tbaa !15 ; 3 uses
  %i.bg = icmp sgt i32 %i.bf, 1
  br i1 %i.bg, label %bb.ab, label %bb.ac, !prof !16

bb.ab:                                            ; preds = %bb.aa
  %i.bh = add nsw i32 %i.bf, -1
  store i32 %i.bh, ptr %i.bc, align 4, !tbaa !15
  br label %_ZN4lean10object_refD2Ev.exit

bb.ac:                                            ; preds = %bb.aa
  %.not.i1.i.i = icmp eq i32 %i.bf, 0
  br i1 %.not.i1.i.i, label %_ZN4lean10object_refD2Ev.exit, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  invoke void @lean_dec_ref_cold(ptr noundef nonnull %i.bc)
          to label %_ZN4lean10object_refD2Ev.exit unwind label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.bi = landingpad { ptr, i32 }
          catch ptr null
  %i.bj = extractvalue { ptr, i32 } %i.bi, 0
  tail call void @__clang_call_terminate(ptr %i.bj) #21
  unreachable

.body:                                            ; preds = %bb.l, %bb.m, %bb.z
  %eh.lpad-body = phi { ptr, i32 } [ %i.ba, %bb.z ], [ %i.w, %bb.l ], [ %i.ac, %bb.m ]
  call void @_ZN4lean10object_refD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %5) #20
  resume { ptr, i32 } %eh.lpad-body

_ZN4lean10object_refD2Ev.exit:                    ; preds = %bb.ad, %bb.ac, %bb.ab, %_ZN4leanL10num_digitsENS_3natE.exit, %bb.e, %bb.f
  %.pn = phi i64 [ %i.o, %bb.f ], [ %.val.i.i, %bb.e ], [ %.0.i, %_ZN4leanL10num_digitsENS_3natE.exit ], [ %.0.i, %bb.ab ], [ %.0.i, %bb.ac ], [ %.0.i, %bb.ad ]
  %.1 = add i64 %.pn, %.016                       ; 2 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %.015, i64 8
  %i.bl = load ptr, ptr %i.bk, align 8, !tbaa !23 ; 2 uses
  %i.bm = ptrtoint ptr %i.bl to i64
  %i.bn = trunc i64 %i.bm to i1
  br i1 %i.bn, label %.loopexit, label %bb.af

bb.af:                                            ; preds = %_ZN4lean10object_refD2Ev.exit
  %i.bo = add i64 %.1, 1
  br label %.preheader, !llvm.loop !64

.loopexit:                                        ; preds = %_ZN4lean10object_refD2Ev.exit, %bb.a
  %.0 = phi i64 [ 11, %bb.a ], [ %.1, %_ZN4lean10object_refD2Ev.exit ]
  ret i64 %.0
}

; Function Attrs: mustprogress uwtable
define noundef i64 @_ZNK4lean4name4sizeEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %0) local_unnamed_addr #1 align 2 {
bb.a:
  %i.a = tail call noundef i64 @_ZNK4lean4name9size_coreEb(ptr noundef nonnull align 8 dereferenceable(8) %0, i1 noundef zeroext false)
  ret i64 %i.a
}

; Function Attrs: mustprogress uwtable
define noundef i64 @_ZNK4lean4name9utf8_sizeEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %0) local_unnamed_addr #1 align 2 {
bb.a:
  %i.a = tail call noundef i64 @_ZNK4lean4name9size_coreEb(ptr noundef nonnull align 8 dereferenceable(8) %0, i1 noundef zeroext true)
  ret i64 %i.a
}

; Function Attrs: mustprogress uwtable
define noundef zeroext i1 @_ZNK4lean4name13is_safe_asciiEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %0) local_unnamed_addr #1 align 2 {
bb.a:
  %.08 = load ptr, ptr %0, align 8, !tbaa !23     ; 2 uses
  %i.a = ptrtoint ptr %.08 to i64
  %i.b = trunc i64 %i.a to i1
  br i1 %i.b, label %._crit_edge, label %_ZN4lean4name4kindEP11lean_object.exit

_ZN4lean4name4kindEP11lean_object.exit:           ; preds = %bb.a, %bb.c
  %.09 = phi ptr [ %.0, %bb.c ], [ %.08, %bb.a ]  ; 3 uses
  %i.c = getelementptr i8, ptr %.09, i64 4
  %.val.i.i.i = load i32, ptr %i.c, align 4
  %.mask = and i32 %.val.i.i.i, -16777216
  %i.d = icmp eq i32 %.mask, 16777216
  br i1 %i.d, label %bb.b, label %bb.c

bb.b:                                             ; preds = %_ZN4lean4name4kindEP11lean_object.exit
  %i.e = getelementptr inbounds nuw i8, ptr %.09, i64 16
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !13   ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 32
  %i.h = getelementptr i8, ptr %i.f, i64 8
  %.val.i.i = load i64, ptr %i.h, align 8, !tbaa !28
  %i.i = add i64 %.val.i.i, -1
  %i.j = tail call noundef zeroext i1 @_ZN4lean13is_safe_asciiEPKcm(ptr noundef nonnull %i.g, i64 noundef %i.i)
  br i1 %i.j, label %bb.c, label %._crit_edge

bb.c:                                             ; preds = %bb.b, %_ZN4lean4name4kindEP11lean_object.exit
  %i.k = getelementptr inbounds nuw i8, ptr %.09, i64 8
  %.0 = load ptr, ptr %i.k, align 8, !tbaa !23    ; 2 uses
  %i.l = ptrtoint ptr %.0 to i64
  %i.m = trunc i64 %i.l to i1
  br i1 %i.m, label %._crit_edge, label %_ZN4lean4name4kindEP11lean_object.exit, !llvm.loop !65

._crit_edge:                                      ; preds = %bb.b, %bb.c, %bb.a
  %.lcssa = phi i1 [ true, %bb.a ], [ true, %bb.c ], [ false, %bb.b ]
  ret i1 %.lcssa
}

declare noundef zeroext i1 @_ZN4lean13is_safe_asciiEPKcm(ptr noundef, i64 noundef) local_unnamed_addr #4

; Function Attrs: mustprogress uwtable
define void @_ZNK4lean4name8get_rootEv(ptr dead_on_unwind noalias writable sret(%"class.lean::name") align 8 initializes((0, 8)) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %1) local_unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %1, align 8, !tbaa !13     ; 6 uses
  store ptr %i.a, ptr %0, align 8, !tbaa !13
  %i.b = ptrtoint ptr %i.a to i64
  %i.c = and i64 %i.b, 1
  %.not.i.i.i.i = icmp eq i64 %i.c, 0
  br i1 %.not.i.i.i.i, label %bb.b, label %_ZN4lean4nameC2ERKS0_.exit.preheader

bb.b:                                             ; preds = %bb.a
  %.val.i.i.i.i.i = load i32, ptr %i.a, align 4, !tbaa !15 ; 3 uses
  %i.d = icmp sgt i32 %.val.i.i.i.i.i, 0
  br i1 %i.d, label %bb.c, label %bb.d, !prof !16

bb.c:                                             ; preds = %bb.b
  %i.e = add nuw i32 %.val.i.i.i.i.i, 1
  store i32 %i.e, ptr %i.a, align 4, !tbaa !15
  br label %_ZN4lean4nameC2ERKS0_.exit.preheader

bb.d:                                             ; preds = %bb.b
  %.not.i.i.i.i.i = icmp eq i32 %.val.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i.i, label %_ZN4lean4nameC2ERKS0_.exit.preheader, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.f = atomicrmw add ptr %i.a, i32 -1 monotonic, align 4 ; 0 uses
  br label %_ZN4lean4nameC2ERKS0_.exit.preheader

_ZN4lean4nameC2ERKS0_.exit.preheader:             ; preds = %bb.a, %bb.c, %bb.d, %bb.e
  br label %_ZN4lean4nameC2ERKS0_.exit

_ZN4lean4nameC2ERKS0_.exit:                       ; preds = %_ZN4lean4nameC2ERKS0_.exit.preheader, %_ZN4lean4nameaSERKS0_.exit
  %i.g = phi ptr [ %i.ah, %_ZN4lean4nameaSERKS0_.exit ], [ %i.a, %_ZN4lean4nameC2ERKS0_.exit.preheader ] ; 7 uses
  %i.h = ptrtoint ptr %i.g to i64                 ; 3 uses
  %i.i = and i64 %i.h, 1
  %.not.i.i.i.i.i.i = icmp eq i64 %i.i, 0         ; 3 uses
  br i1 %.not.i.i.i.i.i.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %_ZN4lean4nameC2ERKS0_.exit
  %i.j = lshr i64 %i.h, 1
  %i.k = trunc i64 %i.j to i32
  br label %bb.h

bb.g:                                             ; preds = %_ZN4lean4nameC2ERKS0_.exit
  %i.l = getelementptr i8, ptr %i.g, i64 4
  %.val.i.i.i.i.i.i = load i32, ptr %i.l, align 4
  %i.m = lshr i32 %.val.i.i.i.i.i.i, 24
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %.0.i.i.i.i.i.i = phi i32 [ %i.k, %bb.f ], [ %i.m, %bb.g ]
  %i.n = icmp eq i32 %.0.i.i.i.i.i.i, 0
  %i.o = getelementptr inbounds nuw i8, ptr %i.g, i64 8 ; 2 uses
  %spec.select.i = select i1 %i.n, ptr %0, ptr %i.o
  %i.p = load ptr, ptr %spec.select.i, align 8, !tbaa !13 ; 2 uses
  %i.q = ptrtoint ptr %i.p to i64                 ; 2 uses
  %i.r = and i64 %i.q, 1
  %.not.i.i.i.i.i3 = icmp eq i64 %i.r, 0
  br i1 %.not.i.i.i.i.i3, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.s = lshr i64 %i.q, 1
  %i.t = trunc i64 %i.s to i32
  br label %bb.k

bb.j:                                             ; preds = %bb.h
  %i.u = getelementptr i8, ptr %i.p, i64 4
  %.val.i.i.i.i.i4 = load i32, ptr %i.u, align 4
  %i.v = lshr i32 %.val.i.i.i.i.i4, 24
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i
  %.0.i.i.i.i.i = phi i32 [ %i.t, %bb.i ], [ %i.v, %bb.j ]
  %.not = icmp eq i32 %.0.i.i.i.i.i, 0
  br i1 %.not, label %bb.y, label %bb.l

bb.l:                                             ; preds = %bb.k
  br i1 %.not.i.i.i.i.i.i, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.w = lshr i64 %i.h, 1
  %i.x = trunc i64 %i.w to i32
  br label %bb.o

bb.n:                                             ; preds = %bb.l
  %i.y = getelementptr i8, ptr %i.g, i64 4
  %.val.i.i.i.i.i.i8 = load i32, ptr %i.y, align 4
  %i.z = lshr i32 %.val.i.i.i.i.i.i8, 24
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.m
  %.0.i.i.i.i.i.i6 = phi i32 [ %i.x, %bb.m ], [ %i.z, %bb.n ]
end_hunk_0

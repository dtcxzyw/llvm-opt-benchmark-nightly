Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/darktable/original/crx?download=true
inline.NumInlined: 287
inline.NumDeleted: 66
loop-unroll.NumCompletelyUnrolled: 27
loop-unroll.NumRuntimeUnrolled: 11
loop-unroll.NumUnrolled: 43
begin_hunk_0_@_Z17crxSetupImageDataP17crx_data_header_tP8CrxImagePsllPhi:bb.a
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.bx, i8 0, i64 40, i1 false)
  %i.cc = load i32, ptr %i.cb, align 4, !tbaa !339
  %i.cd = trunc i32 %i.cc to i8
  %i.ce = getelementptr inbounds nuw i8, ptr %1, i64 7
  store i8 %i.cd, ptr %i.ce, align 1, !tbaa !248
  %i.cf = icmp eq i8 %i.bg, 3
  %i.cg = icmp eq i8 %i.az, 4
  %or.cond109 = select i1 %i.cf, i1 %i.cg, i1 false
  %i.ch = icmp ugt i8 %i.bc, 8
  %or.cond110 = select i1 %or.cond109, i1 %i.ch, i1 false
  br i1 %or.cond110, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.ci = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.cj = getelementptr inbounds nuw i8, ptr %1, i64 88
  %i.ck = zext i8 %i.bp to i32
  %i.cl = add nuw nsw i32 %i.ck, 7
  %i.cm = lshr i32 %i.cl, 3
  %i.cn = shl nuw nsw i32 %i.r, 2
  %i.co = mul nuw i32 %i.cn, %i.z
  %i.cp = mul nuw nsw i32 %i.co, %i.cm
  %i.cq = zext nneg i32 %i.cp to i64
  %i.cr = tail call noundef ptr @_ZN13libraw_memmgr6mallocEm(ptr noundef nonnull align 8 dereferenceable(12) %i.cj, i64 noundef %i.cq) ; 2 uses
  store ptr %i.cr, ptr %i.ci, align 8, !tbaa !238
  %.not108 = icmp eq ptr %i.cr, null
  br i1 %.not108, label %bb.p, label %._crit_edge

._crit_edge:                                      ; preds = %bb.g
  %.pre = load i16, ptr %i.g, align 2, !tbaa !231
  %.pre111 = load i8, ptr %1, align 8, !tbaa !242
  br label %bb.h

bb.h:                                             ; preds = %._crit_edge, %bb.f
  %i.cs = phi i8 [ %.pre111, %._crit_edge ], [ %i.az, %bb.f ]
  %i.ct = phi i16 [ %.pre, %._crit_edge ], [ %i.f, %bb.f ]
  %i.cu = zext i16 %i.ct to i32
  %i.cv = shl nuw nsw i32 %i.cu, 1                ; 4 uses
  %i.cw = icmp eq i8 %i.cs, 1
  br i1 %i.cw, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  store ptr %2, ptr %i.bx, align 8, !tbaa !234
  br label %bb.o

bb.j:                                             ; preds = %bb.h
  %i.cx = getelementptr inbounds nuw i8, ptr %0, i64 28
  %i.cy = load i32, ptr %i.cx, align 4, !tbaa !340
  switch i32 %i.cy, label %bb.o [
    i32 0, label %bb.k
    i32 1, label %bb.l
    i32 2, label %bb.m
    i32 3, label %bb.n
  ]

bb.k:                                             ; preds = %bb.j
  store ptr %2, ptr %i.bx, align 8, !tbaa !234
  %i.cz = getelementptr inbounds nuw i8, ptr %2, i64 2
  store ptr %i.cz, ptr %i.ca, align 8, !tbaa !234
  %i.da = zext nneg i32 %i.cv to i64
  %i.db = getelementptr inbounds nuw [2 x i8], ptr %2, i64 %i.da ; 2 uses
  store ptr %i.db, ptr %i.bz, align 8, !tbaa !234
  %i.dc = getelementptr inbounds nuw i8, ptr %i.db, i64 2
  store ptr %i.dc, ptr %i.by, align 8, !tbaa !234
  br label %bb.o

bb.l:                                             ; preds = %bb.j
  store ptr %2, ptr %i.ca, align 8, !tbaa !234
  %i.dd = getelementptr inbounds nuw i8, ptr %2, i64 2
  store ptr %i.dd, ptr %i.bx, align 8, !tbaa !234
  %i.de = zext nneg i32 %i.cv to i64
  %i.df = getelementptr inbounds nuw [2 x i8], ptr %2, i64 %i.de ; 2 uses
  store ptr %i.df, ptr %i.by, align 8, !tbaa !234
  %i.dg = getelementptr inbounds nuw i8, ptr %i.df, i64 2
  store ptr %i.dg, ptr %i.bz, align 8, !tbaa !234
  br label %bb.o

bb.m:                                             ; preds = %bb.j
  store ptr %2, ptr %i.bz, align 8, !tbaa !234
  %i.dh = getelementptr inbounds nuw i8, ptr %2, i64 2
  store ptr %i.dh, ptr %i.by, align 8, !tbaa !234
  %i.di = zext nneg i32 %i.cv to i64
  %i.dj = getelementptr inbounds nuw [2 x i8], ptr %2, i64 %i.di ; 2 uses
  store ptr %i.dj, ptr %i.bx, align 8, !tbaa !234
  %i.dk = getelementptr inbounds nuw i8, ptr %i.dj, i64 2
  store ptr %i.dk, ptr %i.ca, align 8, !tbaa !234
  br label %bb.o

bb.n:                                             ; preds = %bb.j
  store ptr %2, ptr %i.by, align 8, !tbaa !234
  %i.dl = getelementptr inbounds nuw i8, ptr %2, i64 2
  store ptr %i.dl, ptr %i.bz, align 8, !tbaa !234
  %i.dm = zext nneg i32 %i.cv to i64
  %i.dn = getelementptr inbounds nuw [2 x i8], ptr %2, i64 %i.dm ; 2 uses
  store ptr %i.dn, ptr %i.ca, align 8, !tbaa !234
  %i.do = getelementptr inbounds nuw i8, ptr %i.dn, i64 2
  store ptr %i.do, ptr %i.bx, align 8, !tbaa !234
  br label %bb.o

bb.o:                                             ; preds = %bb.j, %bb.k, %bb.l, %bb.m, %bb.n, %bb.i
  %i.dp = tail call noundef i32 @_Z19crxReadImageHeadersP17crx_data_header_tP8CrxImagePhi(ptr noundef nonnull %0, ptr noundef nonnull %1, ptr noundef %5, i32 noundef %6)
  br label %bb.p

bb.p:                                             ; preds = %bb.g, %bb.d, %bb.e, %bb.a, %bb.b, %bb.c, %bb.o
  %.0 = phi i32 [ -1, %bb.d ], [ -1, %bb.a ], [ %i.dp, %bb.o ], [ -1, %bb.c ], [ -1, %bb.b ], [ -1, %bb.e ], [ -1, %bb.g ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #22
  ret i32 %.0
}

; Function Attrs: mustprogress nounwind memory(readwrite, target_mem: none) uwtable
define noundef i32 @_Z16crxFreeImageDataP8CrxImage(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #6 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 2 uses
  br label %bb.b

bb.b:                                             ; preds = %bb.d, %bb.a
  %indvars.iv.i = phi i64 [ 0, %bb.a ], [ %indvars.iv.next.i, %bb.d ] ; 3 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !251
  %i.c = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %indvars.iv.i
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !252  ; 2 uses
  %.not.i = icmp eq ptr %i.d, null
  br i1 %.not.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  tail call void @free(ptr noundef nonnull %i.d) #22
  %i.e = load ptr, ptr %i.a, align 8, !tbaa !251
  %i.f = getelementptr inbounds nuw [8 x i8], ptr %i.e, i64 %indvars.iv.i
  store ptr null, ptr %i.f, align 8, !tbaa !252
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, 512
  br i1 %exitcond.not.i, label %_ZN13libraw_memmgr7cleanupEv.exit, label %bb.b, !llvm.loop !341

_ZN13libraw_memmgr7cleanupEv.exit:                ; preds = %bb.d
  ret i32 0
}

; Function Attrs: mustprogress uwtable
define void @_ZN6LibRaw17crxLoadDecodeLoopEPvi(ptr noundef nonnull align 8 dereferenceable(768512) %0, ptr nofree noundef readonly captures(none) %1, i32 noundef %2) unnamed_addr #0 align 2 {
bb.a:
  %i.a = icmp sgt i32 %2, 0
  br i1 %i.a, label %.lr.ph, label %._crit_edge

._crit_edge:                                      ; preds = %bb.c, %bb.a
  ret void

.lr.ph:                                           ; preds = %bb.a, %bb.c
  %.05 = phi i32 [ %i.c, %bb.c ], [ 0, %bb.a ]    ; 2 uses
  %i.b = tail call noundef i32 @_ZN6LibRaw14crxDecodePlaneEPvj(ptr nonnull align 8 poison, ptr noundef %1, i32 noundef %.05)
  %.not = icmp eq i32 %i.b, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %.lr.ph
  tail call void @_ZN6LibRaw6derrorEv(ptr noundef nonnull align 8 dereferenceable(768512) %0)
  br label %bb.c

bb.c:                                             ; preds = %.lr.ph, %bb.b
  %i.c = add nuw nsw i32 %.05, 1                  ; 2 uses
  %exitcond.not = icmp eq i32 %i.c, %2
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !llvm.loop !342
}

declare void @_ZN6LibRaw6derrorEv(ptr noundef nonnull align 8 dereferenceable(768512)) local_unnamed_addr #9

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define void @_ZN6LibRaw21crxConvertPlaneLineDfEPvi(ptr nofree noundef nonnull readnone align 8 captures(none) dereferenceable(768512) %0, ptr nofree noundef readonly captures(none) %1, i32 noundef %2) local_unnamed_addr #8 align 2 {
bb.a:
  tail call void @_Z19crxConvertPlaneLineP8CrxImageiiiPii(ptr noundef %1, i32 noundef %2, i32 noundef 0, i32 noundef 0, ptr noundef null, i32 noundef 0)
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define void @_ZN6LibRaw21crxLoadFinalizeLoopE3EPvi(ptr nofree noundef nonnull readnone align 8 captures(none) dereferenceable(768512) %0, ptr nofree noundef readonly captures(none) %1, i32 noundef %2) unnamed_addr #8 align 2 {
bb.a:
  %i.a = icmp sgt i32 %2, 0
  br i1 %i.a, label %.lr.ph, label %._crit_edge

._crit_edge:                                      ; preds = %.lr.ph, %bb.a
  ret void

.lr.ph:                                           ; preds = %bb.a, %.lr.ph
  %.05 = phi i32 [ %i.b, %.lr.ph ], [ 0, %bb.a ]  ; 2 uses
  tail call void @_Z19crxConvertPlaneLineP8CrxImageiiiPii(ptr noundef readonly %1, i32 noundef %.05, i32 noundef 0, i32 noundef 0, ptr noundef null, i32 noundef 0)
  %i.b = add nuw nsw i32 %.05, 1                  ; 2 uses
  %exitcond.not = icmp eq i32 %i.b, %2
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !llvm.loop !343
}

; Function Attrs: mustprogress uwtable
define void @_ZN6LibRaw10crxLoadRawEv(ptr noundef nonnull align 8 dereferenceable(768512) %0) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %struct.CrxImage, align 8           ; 12 uses
  %2 = alloca %struct.crx_data_header_t, align 8  ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #22
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 88 ; 6 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 96
  store i32 0, ptr %i.b, align 8, !tbaa !250
  %calloc.i.i = tail call dereferenceable_or_null(4096) ptr @calloc(i64 1, i64 4096)
  store ptr %calloc.i.i, ptr %i.a, align 8, !tbaa !251
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 381592 ; 5 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 384216 ; 2 uses
  %i.e = load i32, ptr %i.d, align 8, !tbaa !344  ; 2 uses
  %or.cond = icmp ugt i32 %i.e, 15
  br i1 %or.cond, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  invoke void @_ZN6LibRaw6derrorEv(ptr noundef nonnull align 8 dereferenceable(768512) %0)
          to label %._crit_edge unwind label %bb.c

._crit_edge:                                      ; preds = %bb.b
  %.pre = load i32, ptr %i.d, align 8, !tbaa !344
  br label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.f = landingpad { ptr, i32 }
          cleanup
  br label %bb.ah

bb.d:                                             ; preds = %._crit_edge, %bb.a
  %i.g = phi i32 [ %.pre, %._crit_edge ], [ %i.e, %bb.a ]
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #22
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 382168
  %i.i = sext i32 %i.g to i64
  %i.j = getelementptr inbounds [128 x i8], ptr %i.h, i64 %i.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(128) %2, ptr noundef nonnull align 8 dereferenceable(128) %i.j, i64 128, i1 false), !tbaa.struct !397
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 381800 ; 2 uses
  %i.l = load i64, ptr %i.k, align 8, !tbaa !400
  %i.m = getelementptr inbounds nuw i8, ptr %2, i64 48
  %i.n = load i32, ptr %i.m, align 8, !tbaa !337  ; 6 uses
  %i.o = zext i32 %i.n to i64
  %i.p = icmp slt i64 %i.l, %i.o
  br i1 %i.p, label %bb.e, label %bb.g

bb.e:                                             ; preds = %bb.d
  invoke void @_ZN6LibRaw6derrorEv(ptr noundef nonnull align 8 dereferenceable(768512) %0)
          to label %bb.g unwind label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.q = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIhSaIhEED2Ev.exit

bb.g:                                             ; preds = %bb.e, %bb.d
  %i.r = load ptr, ptr %i.c, align 8, !tbaa !401
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 80
  store ptr %i.r, ptr %i.s, align 8, !tbaa !257
  %i.t = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.u = load i32, ptr %i.t, align 8, !tbaa !333  ; 2 uses
  %i.v = icmp eq i32 %i.u, 4
  br i1 %i.v, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.w = getelementptr inbounds nuw i8, ptr %2, i64 4 ; 2 uses
  %i.x = load <4 x i32>, ptr %i.w, align 4, !tbaa !21
  %i.y = ashr <4 x i32> %i.x, splat (i32 1)
  store <4 x i32> %i.y, ptr %i.w, align 4, !tbaa !21
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %i.z = getelementptr inbounds nuw i8, ptr %2, i64 20
  %i.aa = load i32, ptr %i.z, align 4, !tbaa !334
  %notmask = shl nsw i32 -1, %i.aa
  %i.ab = xor i32 %notmask, -1
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 153096
  store i32 %i.ab, ptr %i.ac, align 8, !tbaa !402
  %i.ad = sext i32 %i.n to i64                    ; 4 uses
  %i.ae = icmp slt i32 %i.n, 0
  br i1 %i.ae, label %bb.j, label %_ZNSt6vectorIhSaIhEE17_S_check_init_lenEmRKS0_.exit.i

bb.j:                                             ; preds = %bb.i
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str) #23
          to label %.noexc unwind label %bb.r

.noexc:                                           ; preds = %bb.j
  unreachable

_ZNSt6vectorIhSaIhEE17_S_check_init_lenEmRKS0_.exit.i: ; preds = %bb.i
  %.not.i.i.i.i = icmp eq i32 %i.n, 0
  br i1 %.not.i.i.i.i, label %_ZNSt6vectorIhSaIhEEC2EmRKS0_.exit, label %bb.k

bb.k:                                             ; preds = %_ZNSt6vectorIhSaIhEE17_S_check_init_lenEmRKS0_.exit.i
  %i.af = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ad) #26
          to label %.noexc11 unwind label %bb.r   ; 5 uses

.noexc11:                                         ; preds = %bb.k
  %i.ag = getelementptr i8, ptr %i.af, i64 %i.ad  ; 2 uses
  store i8 0, ptr %i.af, align 1, !tbaa !60
  %i.ah = add nsw i64 %i.ad, -1                   ; 2 uses
  %i.ai = icmp eq i64 %i.ah, 0
  br i1 %i.ai, label %_ZNSt6vectorIhSaIhEEC2EmRKS0_.exit, label %bb.l

bb.l:                                             ; preds = %.noexc11
  %i.aj = getelementptr inbounds nuw i8, ptr %i.af, i64 1
  tail call void @llvm.memset.p0.i64(ptr nonnull align 1 %i.aj, i8 0, i64 %i.ah, i1 false)
  br label %_ZNSt6vectorIhSaIhEEC2EmRKS0_.exit

_ZNSt6vectorIhSaIhEEC2EmRKS0_.exit:               ; preds = %bb.l, %.noexc11, %_ZNSt6vectorIhSaIhEE17_S_check_init_lenEmRKS0_.exit.i
  %.sroa.11.0 = phi ptr [ %i.ag, %bb.l ], [ %i.ag, %.noexc11 ], [ null, %_ZNSt6vectorIhSaIhEE17_S_check_init_lenEmRKS0_.exit.i ] ; 2 uses
  %.sroa.015.0 = phi ptr [ %i.af, %bb.l ], [ %i.af, %.noexc11 ], [ null, %_ZNSt6vectorIhSaIhEE17_S_check_init_lenEmRKS0_.exit.i ] ; 8 uses
  %3 = load ptr, ptr %i.c, align 8, !tbaa !401    ; 2 uses
  %i.ak = load ptr, ptr %3, align 8, !tbaa !30
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 120
  %i.am = load ptr, ptr %i.al, align 8
  %i.an = invoke noundef i32 %i.am(ptr noundef nonnull align 8 dereferenceable(8) %3)
          to label %bb.m unwind label %bb.s, !call_target !32 ; 0 uses

bb.m:                                             ; preds = %_ZNSt6vectorIhSaIhEEC2EmRKS0_.exit
  %i.ao = load ptr, ptr %i.c, align 8, !tbaa !401 ; 2 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 381760 ; 2 uses
  %i.aq = load i64, ptr %i.ap, align 8, !tbaa !403
  %i.ar = load ptr, ptr %i.ao, align 8, !tbaa !30
  %i.as = getelementptr inbounds nuw i8, ptr %i.ar, i64 32
  %i.at = load ptr, ptr %i.as, align 8
  %i.au = invoke noundef i32 %i.at(ptr noundef nonnull align 8 dereferenceable(8) %i.ao, i64 noundef %i.aq, i32 noundef 0)
          to label %bb.n unwind label %bb.s, !call_target !40 ; 0 uses

bb.n:                                             ; preds = %bb.m
  %i.av = load ptr, ptr %i.c, align 8, !tbaa !401 ; 2 uses
  %i.aw = load ptr, ptr %i.av, align 8, !tbaa !30
  %i.ax = getelementptr inbounds nuw i8, ptr %i.aw, i64 24
  %i.ay = load ptr, ptr %i.ax, align 8
  %i.az = invoke noundef i32 %i.ay(ptr noundef nonnull align 8 dereferenceable(8) %i.av, ptr noundef %.sroa.015.0, i64 noundef 1, i64 noundef %i.ad)
          to label %bb.o unwind label %bb.s, !call_target !46

bb.o:                                             ; preds = %bb.n
  %i.ba = load ptr, ptr %i.c, align 8, !tbaa !401 ; 2 uses
  %i.bb = load ptr, ptr %i.ba, align 8, !tbaa !30
  %i.bc = getelementptr inbounds nuw i8, ptr %i.bb, i64 128
  %i.bd = load ptr, ptr %i.bc, align 8
  invoke void %i.bd(ptr noundef nonnull align 8 dereferenceable(8) %i.ba)
          to label %bb.p unwind label %bb.s, !call_target !53

bb.p:                                             ; preds = %bb.o
  %.not = icmp eq i32 %i.az, %i.n
  br i1 %.not, label %bb.u, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.be = tail call ptr @__cxa_allocate_exception(i64 4) #22 ; 2 uses
  store i32 4, ptr %i.be, align 16, !tbaa !56
  br label %.invoke

bb.r:                                             ; preds = %bb.k, %bb.j
  %i.bf = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIhSaIhEED2Ev.exit

bb.s:                                             ; preds = %.invoke, %bb.z, %bb.x, %bb.u, %bb.o, %bb.n, %bb.m, %_ZNSt6vectorIhSaIhEEC2EmRKS0_.exit
  %i.bg = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %.not.i.i.i = icmp eq ptr %.sroa.015.0, null
  br i1 %.not.i.i.i, label %_ZNSt6vectorIhSaIhEED2Ev.exit, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.bh = ptrtoint ptr %.sroa.11.0 to i64
  %i.bi = ptrtoint ptr %.sroa.015.0 to i64
  %i.bj = sub i64 %i.bh, %i.bi
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.015.0, i64 noundef %i.bj) #27
  br label %_ZNSt6vectorIhSaIhEED2Ev.exit

bb.u:                                             ; preds = %bb.p
  %i.bk = getelementptr inbounds nuw i8, ptr %0, i64 193784
  %i.bl = load ptr, ptr %i.bk, align 8, !tbaa !404
  %i.bm = load i64, ptr %i.ap, align 8, !tbaa !403
  %i.bn = load i64, ptr %i.k, align 8, !tbaa !400
  %i.bo = invoke noundef i32 @_Z17crxSetupImageDataP17crx_data_header_tP8CrxImagePsllPhi(ptr noundef nonnull %2, ptr noundef nonnull %1, ptr noundef %i.bl, i64 noundef %i.bm, i64 noundef %i.bn, ptr noundef %.sroa.015.0, i32 noundef %i.n)
          to label %bb.v unwind label %bb.s

bb.v:                                             ; preds = %bb.u
  %.not7 = icmp eq i32 %i.bo, 0
  br i1 %.not7, label %bb.x, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.bp = call ptr @__cxa_allocate_exception(i64 4) #22 ; 2 uses
  store i32 5, ptr %i.bp, align 16, !tbaa !56
  br label %.invoke

.invoke:                                          ; preds = %bb.q, %bb.w
  %i.bq = phi ptr [ %i.bp, %bb.w ], [ %i.be, %bb.q ]
  invoke void @__cxa_throw(ptr nonnull %i.bq, ptr nonnull @_ZTI17LibRaw_exceptions, ptr null) #23
          to label %.cont unwind label %bb.s

.cont:                                            ; preds = %.invoke
  unreachable

bb.x:                                             ; preds = %bb.v
  %i.br = load ptr, ptr %0, align 8, !tbaa !30
  %i.bs = getelementptr inbounds nuw i8, ptr %i.br, i64 152
  %i.bt = load ptr, ptr %i.bs, align 8
  invoke void %i.bt(ptr noundef nonnull align 8 dereferenceable(768512) %0, ptr noundef nonnull %1, i32 noundef %i.u)
          to label %bb.y unwind label %bb.s, !call_target !405

bb.y:                                             ; preds = %bb.x
  %i.bu = getelementptr inbounds nuw i8, ptr %1, i64 11
  %i.bv = load i8, ptr %i.bu, align 1, !tbaa !232
  %i.bw = icmp eq i8 %i.bv, 3
  br i1 %i.bw, label %bb.z, label %.preheader

bb.z:                                             ; preds = %bb.y
  %i.bx = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.by = load i16, ptr %i.bx, align 4, !tbaa !237
  %i.bz = zext i16 %i.by to i32
  %i.ca = load ptr, ptr %0, align 8, !tbaa !30
  %i.cb = getelementptr inbounds nuw i8, ptr %i.ca, i64 160
  %i.cc = load ptr, ptr %i.cb, align 8
  invoke void %i.cc(ptr noundef nonnull align 8 dereferenceable(768512) %0, ptr noundef nonnull %1, i32 noundef %i.bz)
          to label %.preheader unwind label %bb.s, !call_target !411

.preheader:                                       ; preds = %bb.z, %bb.y
  br label %bb.aa

bb.aa:                                            ; preds = %.preheader, %bb.ac
  %indvars.iv.i.i = phi i64 [ %indvars.iv.next.i.i, %bb.ac ], [ 0, %.preheader ] ; 3 uses
  %i.cd = load ptr, ptr %i.a, align 8, !tbaa !251
  %i.ce = getelementptr inbounds nuw [8 x i8], ptr %i.cd, i64 %indvars.iv.i.i
  %i.cf = load ptr, ptr %i.ce, align 8, !tbaa !252 ; 2 uses
  %.not.i.i = icmp eq ptr %i.cf, null
  br i1 %.not.i.i, label %bb.ac, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  call void @free(ptr noundef nonnull %i.cf) #22
  %i.cg = load ptr, ptr %i.a, align 8, !tbaa !251
  %i.ch = getelementptr inbounds nuw [8 x i8], ptr %i.cg, i64 %indvars.iv.i.i
  store ptr null, ptr %i.ch, align 8, !tbaa !252
  br label %bb.ac

bb.ac:                                            ; preds = %bb.ab, %bb.aa
  %indvars.iv.next.i.i = add nuw nsw i64 %indvars.iv.i.i, 1 ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %indvars.iv.next.i.i, 512
  br i1 %exitcond.not.i.i, label %_Z16crxFreeImageDataP8CrxImage.exit, label %bb.aa, !llvm.loop !341

_Z16crxFreeImageDataP8CrxImage.exit:              ; preds = %bb.ac
  %.not.i.i.i12 = icmp eq ptr %.sroa.015.0, null
  br i1 %.not.i.i.i12, label %_ZNSt6vectorIhSaIhEED2Ev.exit13, label %bb.ad

bb.ad:                                            ; preds = %_Z16crxFreeImageDataP8CrxImage.exit
  %i.ci = ptrtoint ptr %.sroa.11.0 to i64
  %i.cj = ptrtoint ptr %.sroa.015.0 to i64
  %i.ck = sub i64 %i.ci, %i.cj
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.015.0, i64 noundef %i.ck) #27
  br label %_ZNSt6vectorIhSaIhEED2Ev.exit13

_ZNSt6vectorIhSaIhEED2Ev.exit13:                  ; preds = %_Z16crxFreeImageDataP8CrxImage.exit, %bb.ad
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #22
  br label %bb.ae

bb.ae:                                            ; preds = %bb.ag, %_ZNSt6vectorIhSaIhEED2Ev.exit13
  %indvars.iv.i.i.i = phi i64 [ 0, %_ZNSt6vectorIhSaIhEED2Ev.exit13 ], [ %indvars.iv.next.i.i.i, %bb.ag ] ; 3 uses
  %i.cl = load ptr, ptr %i.a, align 8, !tbaa !251
  %i.cm = getelementptr inbounds nuw [8 x i8], ptr %i.cl, i64 %indvars.iv.i.i.i
  %i.cn = load ptr, ptr %i.cm, align 8, !tbaa !252 ; 2 uses
  %.not.i.i.i14 = icmp eq ptr %i.cn, null
  br i1 %.not.i.i.i14, label %bb.ag, label %bb.af

bb.af:                                            ; preds = %bb.ae
  call void @free(ptr noundef nonnull %i.cn) #22
  %i.co = load ptr, ptr %i.a, align 8, !tbaa !251
  %i.cp = getelementptr inbounds nuw [8 x i8], ptr %i.co, i64 %indvars.iv.i.i.i
  store ptr null, ptr %i.cp, align 8, !tbaa !252
  br label %bb.ag

bb.ag:                                            ; preds = %bb.af, %bb.ae
  %indvars.iv.next.i.i.i = add nuw nsw i64 %indvars.iv.i.i.i, 1 ; 2 uses
  %exitcond.not.i.i.i = icmp eq i64 %indvars.iv.next.i.i.i, 512
  br i1 %exitcond.not.i.i.i, label %_ZN8CrxImageD2Ev.exit, label %bb.ae, !llvm.loop !341

_ZN8CrxImageD2Ev.exit:                            ; preds = %bb.ag
  %i.cq = load ptr, ptr %i.a, align 8, !tbaa !251
  call void @free(ptr noundef %i.cq) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #22
  ret void

_ZNSt6vectorIhSaIhEED2Ev.exit:                    ; preds = %bb.r, %bb.s, %bb.t, %bb.f
  %.pn.pn = phi { ptr, i32 } [ %i.q, %bb.f ], [ %i.bf, %bb.r ], [ %i.bg, %bb.s ], [ %i.bg, %bb.t ]
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #22
  br label %bb.ah

bb.ah:                                            ; preds = %_ZNSt6vectorIhSaIhEED2Ev.exit, %bb.c
  %.pn.pn.pn = phi { ptr, i32 } [ %.pn.pn, %_ZNSt6vectorIhSaIhEED2Ev.exit ], [ %i.f, %bb.c ]
  call void @_ZN8CrxImageD2Ev(ptr noundef nonnull align 8 dead_on_return(104) dereferenceable(104) %1) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #22
  resume { ptr, i32 } %.pn.pn.pn
}

declare ptr @__cxa_allocate_exception(i64) local_unnamed_addr

; Function Attrs: cold noreturn
declare void @__cxa_throw(ptr, ptr, ptr) local_unnamed_addr #10

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr void @_ZN8CrxImageD2Ev(ptr noundef nonnull align 8 dead_on_return(104) dereferenceable(104) %0) unnamed_addr #11 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 3 uses
  br label %bb.b

bb.b:                                             ; preds = %bb.d, %bb.a
  %indvars.iv.i.i = phi i64 [ 0, %bb.a ], [ %indvars.iv.next.i.i, %bb.d ] ; 3 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !251
  %i.c = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %indvars.iv.i.i
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !252  ; 2 uses
  %.not.i.i = icmp eq ptr %i.d, null
  br i1 %.not.i.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  tail call void @free(ptr noundef nonnull %i.d) #22
end_hunk_0

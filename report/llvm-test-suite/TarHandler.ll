Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm-test-suite/original/TarHandler?download=true
inline.NumInlined: 243
inline.NumDeleted: 98
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumRuntimeUnrolled: 6
loop-unroll.NumUnrolled: 9
begin_hunk_0_@_ZN8NArchive4NTar8CHandlerC2Ev:bb.a

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n22 = icmp eq i64 %n.vec18, %wide.trip.count.i.i
  br i1 %cmp.n22, label %._crit_edge.thread.i.i, label %vec.epilog.scalar.ph.preheader

vec.epilog.scalar.ph.preheader:                   ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %indvars.iv.i.i.ph = phi i64 [ 0, %iter.check ], [ %n.vec, %vec.epilog.iter.check ], [ %n.vec18, %vec.epilog.middle.block ]
  br label %vec.epilog.scalar.ph

._crit_edge.i.i:                                  ; preds = %.preheader.i.i
  %i.aa = icmp eq ptr %.pre.i.i, null
  br i1 %i.aa, label %bb.b, label %._crit_edge.thread.i.i

vec.epilog.scalar.ph:                             ; preds = %vec.epilog.scalar.ph.preheader, %vec.epilog.scalar.ph
  %indvars.iv.i.i = phi i64 [ %indvars.iv.next.i.i, %vec.epilog.scalar.ph ], [ %indvars.iv.i.i.ph, %vec.epilog.scalar.ph.preheader ] ; 3 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %.pre.i.i, i64 %indvars.iv.i.i
  %i.ac = load i8, ptr %i.ab, align 1, !tbaa !59
  %i.ad = getelementptr inbounds nuw i8, ptr %i.n, i64 %indvars.iv.i.i
  store i8 %i.ac, ptr %i.ad, align 1, !tbaa !59
  %indvars.iv.next.i.i = add nuw nsw i64 %indvars.iv.i.i, 1 ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %indvars.iv.next.i.i, %wide.trip.count.i.i
  br i1 %exitcond.not.i.i, label %._crit_edge.thread.i.i, label %vec.epilog.scalar.ph, !llvm.loop !109

._crit_edge.thread.i.i:                           ; preds = %vec.epilog.scalar.ph, %middle.block, %vec.epilog.middle.block, %._crit_edge.i.i
  tail call void @_ZdaPv(ptr noundef nonnull %.pre.i.i) #24
  %.pre.i = load i32, ptr %i.l, align 8, !tbaa !47
  br label %bb.b

bb.b:                                             ; preds = %._crit_edge.thread.i.i, %._crit_edge.i.i, %.noexc
  %i.ae = phi i32 [ %.pre1.i, %.noexc ], [ %.pre1.i, %._crit_edge.i.i ], [ %.pre.i, %._crit_edge.thread.i.i ]
  store ptr %i.n, ptr %i.k, align 8, !tbaa !48
  %i.af = sext i32 %i.ae to i64
  %i.ag = getelementptr inbounds i8, ptr %i.n, i64 %i.af
  store i8 0, ptr %i.ag, align 1, !tbaa !59
  store i32 4, ptr %i.m, align 4, !tbaa !60
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 272 ; 4 uses
  store ptr null, ptr %i.ah, align 8, !tbaa !78
  %i.ai = invoke noalias noundef nonnull dereferenceable(40) ptr @_Znwm(i64 noundef 40) #23
          to label %bb.c unwind label %bb.h       ; 7 uses

bb.c:                                             ; preds = %bb.b
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 8
  %i.ak = getelementptr inbounds nuw i8, ptr %i.ai, i64 16
  store i32 0, ptr %i.ak, align 4, !tbaa !77
  store ptr getelementptr inbounds nuw inrange(-16, 56) (i8, ptr @_ZTVN9NCompress10CCopyCoderE, i64 16), ptr %i.ai, align 8, !tbaa !53
  store ptr getelementptr inbounds nuw inrange(-16, 48) (i8, ptr @_ZTVN9NCompress10CCopyCoderE, i64 88), ptr %i.aj, align 8, !tbaa !53
  %i.al = getelementptr inbounds nuw i8, ptr %i.ai, i64 24
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.al, i8 0, i64 16, i1 false)
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 264
  store ptr %i.ai, ptr %i.am, align 8, !tbaa !79
  %i.an = load ptr, ptr getelementptr inbounds nuw inrange(-24, 48) (i8, ptr @_ZTVN9NCompress10CCopyCoderE, i64 24), align 8
  %i.ao = invoke noundef i32 %i.an(ptr noundef nonnull align 8 dereferenceable(8) %i.ai)
          to label %.noexc8 unwind label %bb.h, !inline_history !110 ; 0 uses

.noexc8:                                          ; preds = %bb.c
  %i.ap = load ptr, ptr %i.ah, align 8, !tbaa !78 ; 3 uses
  %.not6.i = icmp eq ptr %i.ap, null
  br i1 %.not6.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %.noexc8
  %i.aq = load ptr, ptr %i.ap, align 8, !tbaa !53
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 16
  %i.as = load ptr, ptr %i.ar, align 8
  %i.at = invoke noundef i32 %i.as(ptr noundef nonnull align 8 dereferenceable(8) %i.ap)
          to label %bb.e unwind label %bb.h, !inline_history !110 ; 0 uses

bb.e:                                             ; preds = %.noexc8, %bb.d
  store ptr %i.ai, ptr %i.ah, align 8, !tbaa !78
  ret void

bb.f:                                             ; preds = %bb.a
  %i.au = landingpad { ptr, i32 }
          cleanup
  br label %bb.l

bb.g:                                             ; preds = %_ZN8NArchive4NTar7CItemExC2Ev.exit
  %i.av = landingpad { ptr, i32 }
          cleanup
  br label %_ZN11CStringBaseIcED2Ev.exit

bb.h:                                             ; preds = %bb.d, %bb.c, %bb.b
  %i.aw = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ax = load ptr, ptr %i.ah, align 8, !tbaa !78 ; 3 uses
  %.not.i = icmp eq ptr %i.ax, null
  br i1 %.not.i, label %_ZN9CMyComPtrI14ICompressCoderED2Ev.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ay = load ptr, ptr %i.ax, align 8, !tbaa !53
  %i.az = getelementptr inbounds nuw i8, ptr %i.ay, i64 16
  %i.ba = load ptr, ptr %i.az, align 8
  %i.bb = invoke noundef i32 %i.ba(ptr noundef nonnull align 8 dereferenceable(8) %i.ax)
          to label %_ZN9CMyComPtrI14ICompressCoderED2Ev.exit unwind label %bb.j ; 0 uses

bb.j:                                             ; preds = %bb.i
  %i.bc = landingpad { ptr, i32 }
          catch ptr null
  %i.bd = extractvalue { ptr, i32 } %i.bc, 0
  tail call void @__clang_call_terminate(ptr %i.bd) #22
  unreachable

_ZN9CMyComPtrI14ICompressCoderED2Ev.exit:         ; preds = %bb.h, %bb.i
  %i.be = load ptr, ptr %i.k, align 8, !tbaa !48  ; 2 uses
  %i.bf = icmp eq ptr %i.be, null
  br i1 %i.bf, label %_ZN11CStringBaseIcED2Ev.exit, label %bb.k

bb.k:                                             ; preds = %_ZN9CMyComPtrI14ICompressCoderED2Ev.exit
  tail call void @_ZdaPv(ptr noundef nonnull %i.be) #24
  br label %_ZN11CStringBaseIcED2Ev.exit

_ZN11CStringBaseIcED2Ev.exit:                     ; preds = %bb.k, %_ZN9CMyComPtrI14ICompressCoderED2Ev.exit, %bb.g
  %.pn = phi { ptr, i32 } [ %i.av, %bb.g ], [ %i.aw, %_ZN9CMyComPtrI14ICompressCoderED2Ev.exit ], [ %i.aw, %bb.k ]
  tail call void @_ZN8NArchive4NTar5CItemD2Ev(ptr noundef nonnull align 8 dereferenceable(124) %i.j) #21
  br label %bb.l

bb.l:                                             ; preds = %_ZN11CStringBaseIcED2Ev.exit, %bb.f
  %.pn.pn = phi { ptr, i32 } [ %.pn, %_ZN11CStringBaseIcED2Ev.exit ], [ %i.au, %bb.f ]
  %i.bg = load ptr, ptr %i.i, align 8, !tbaa !74  ; 3 uses
  %.not.i10 = icmp eq ptr %i.bg, null
  br i1 %.not.i10, label %_ZN9CMyComPtrI19ISequentialInStreamED2Ev.exit, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.bh = load ptr, ptr %i.bg, align 8, !tbaa !53
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bh, i64 16
  %i.bj = load ptr, ptr %i.bi, align 8
  %i.bk = invoke noundef i32 %i.bj(ptr noundef nonnull align 8 dereferenceable(8) %i.bg)
          to label %_ZN9CMyComPtrI19ISequentialInStreamED2Ev.exit unwind label %bb.n ; 0 uses

bb.n:                                             ; preds = %bb.m
  %i.bl = landingpad { ptr, i32 }
          catch ptr null
  %i.bm = extractvalue { ptr, i32 } %i.bl, 0
  tail call void @__clang_call_terminate(ptr %i.bm) #22
  unreachable

_ZN9CMyComPtrI19ISequentialInStreamED2Ev.exit:    ; preds = %bb.l, %bb.m
  %i.bn = load ptr, ptr %i.h, align 8, !tbaa !73  ; 3 uses
  %.not.i11 = icmp eq ptr %i.bn, null
  br i1 %.not.i11, label %_ZN9CMyComPtrI9IInStreamED2Ev.exit, label %bb.o

bb.o:                                             ; preds = %_ZN9CMyComPtrI19ISequentialInStreamED2Ev.exit
  %i.bo = load ptr, ptr %i.bn, align 8, !tbaa !53
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bo, i64 16
  %i.bq = load ptr, ptr %i.bp, align 8
  %i.br = invoke noundef i32 %i.bq(ptr noundef nonnull align 8 dereferenceable(8) %i.bn)
          to label %_ZN9CMyComPtrI9IInStreamED2Ev.exit unwind label %bb.p ; 0 uses

bb.p:                                             ; preds = %bb.o
  %i.bs = landingpad { ptr, i32 }
          catch ptr null
  %i.bt = extractvalue { ptr, i32 } %i.bs, 0
  tail call void @__clang_call_terminate(ptr %i.bt) #22
  unreachable

_ZN9CMyComPtrI9IInStreamED2Ev.exit:               ; preds = %_ZN9CMyComPtrI19ISequentialInStreamED2Ev.exit, %bb.o
  tail call void @_ZN13CObjectVectorIN8NArchive4NTar7CItemExEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %i.e) #21
  resume { ptr, i32 } %.pn.pn
}

; Function Attrs: nobuiltin allocsize(0)
declare noundef nonnull ptr @_Znwm(i64 noundef) local_unnamed_addr #9

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPvm(ptr noundef, i64 noundef) local_unnamed_addr #10

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN13CObjectVectorIN8NArchive4NTar7CItemExEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %0) unnamed_addr #11 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTV13CObjectVectorIN8NArchive4NTar7CItemExEE, i64 16), ptr %0, align 8, !tbaa !53
  invoke void @_ZN17CBaseRecordVector5ClearEv(ptr noundef nonnull align 8 dereferenceable(32) %0)
          to label %bb.b unwind label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @_ZN17CBaseRecordVectorD2Ev(ptr noundef nonnull align 8 dereferenceable(32) %0) #21
  ret void

bb.c:                                             ; preds = %bb.a
  %i.a = landingpad { ptr, i32 }
          catch ptr null
  %i.b = extractvalue { ptr, i32 } %i.a, 0
  tail call void @__clang_call_terminate(ptr %i.b) #22
  unreachable
}

; Function Attrs: mustprogress uwtable
define dso_local noundef i32 @_ZN8NArchive4NTar8CHandler6SkipToEj(ptr noundef nonnull align 8 dereferenceable(280) %0, i32 noundef %1) local_unnamed_addr #2 align 2 {
bb.a:
  %i.a = alloca i64, align 8                      ; 7 uses
  %i.b = alloca i8, align 1                       ; 5 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 92 ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 224 ; 5 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 208
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 248 ; 5 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 216
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 264 ; 2 uses
  %.pre.pre = load i8, ptr %i.d, align 4, !tbaa !76, !range !44
  %2 = trunc nuw i8 %.pre.pre to i1
  br label %bb.b

bb.b:                                             ; preds = %.backedge, %bb.a
  %.pre = phi i1 [ %2, %bb.a ], [ %.pre.be, %.backedge ] ; 2 uses
  %i.m = load i32, ptr %i.c, align 8, !tbaa !75
  %i.n = icmp ult i32 %i.m, %1
  br i1 %i.n, label %.critedge, label %bb.c

bb.c:                                             ; preds = %bb.b
  br i1 %.pre, label %.loopexit, label %.critedge.thread

.critedge:                                        ; preds = %bb.b
  br i1 %.pre, label %bb.d, label %.critedge.thread

bb.d:                                             ; preds = %.critedge
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #21
  %i.o = load i64, ptr %i.k, align 8, !tbaa !58
  %i.p = add i64 %i.o, 511
  %i.q = and i64 %i.p, -512
  store i64 %i.q, ptr %i.a, align 8, !tbaa !46
  %i.r = load ptr, ptr %i.l, align 8, !tbaa !79   ; 2 uses
  %i.s = load ptr, ptr %i.e, align 8, !tbaa !74
  %i.t = load ptr, ptr %i.r, align 8, !tbaa !53
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 40
  %i.v = load ptr, ptr %i.u, align 8
  %i.w = call noundef i32 %i.v(ptr noundef nonnull align 8 dereferenceable(40) %i.r, ptr noundef %i.s, ptr noundef null, ptr noundef nonnull %i.a, ptr noundef nonnull %i.a, ptr noundef null) ; 2 uses
  %.not17 = icmp eq i32 %i.w, 0
  br i1 %.not17, label %bb.e, label %.thread

bb.e:                                             ; preds = %bb.d
  %i.x = load ptr, ptr %i.l, align 8, !tbaa !79
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 32
  %i.z = load i64, ptr %i.y, align 8, !tbaa !119  ; 2 uses
  %i.aa = load i64, ptr %i.g, align 8, !tbaa !49
  %i.ab = add i64 %i.aa, %i.z
  store i64 %i.ab, ptr %i.g, align 8, !tbaa !49
  %i.ac = load i64, ptr %i.a, align 8, !tbaa !46
  %.not18 = icmp eq i64 %i.z, %i.ac
  br i1 %.not18, label %bb.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 256 ; 4 uses
  store i32 0, ptr %i.ad, align 8, !tbaa !47
  %i.ae = load ptr, ptr %i.i, align 8, !tbaa !48
  store i8 0, ptr %i.ae, align 1, !tbaa !59
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 260 ; 3 uses
  %i.ag = load i32, ptr %i.af, align 4, !tbaa !60
  %i.ah = icmp eq i32 %i.ag, 26
  br i1 %i.ah, label %._ZN11CStringBaseIcE11SetCapacityEi.exit_crit_edge.i, label %bb.g

._ZN11CStringBaseIcE11SetCapacityEi.exit_crit_edge.i: ; preds = %bb.f
  %.pre5.i = load ptr, ptr %i.i, align 8, !tbaa !48
  br label %_ZN11CStringBaseIcE11SetCapacityEi.exit.i

bb.g:                                             ; preds = %bb.f
  %i.ai = call noalias noundef nonnull dereferenceable(26) ptr @_Znam(i64 noundef 26) #23 ; 6 uses
  %i.aj = load i32, ptr %i.af, align 4, !tbaa !60
  %i.ak = icmp sgt i32 %i.aj, 0
  %.pre4.i = load i32, ptr %i.ad, align 8, !tbaa !47 ; 6 uses
  br i1 %i.ak, label %.preheader.i.i, label %bb.h

.preheader.i.i:                                   ; preds = %bb.g
  %i.al = icmp sgt i32 %.pre4.i, 0
  %.pre.i.i = load ptr, ptr %i.i, align 8, !tbaa !48 ; 5 uses
  br i1 %i.al, label %iter.check, label %._crit_edge.i.i

iter.check:                                       ; preds = %.preheader.i.i
  %wide.trip.count.i.i = zext nneg i32 %.pre4.i to i64 ; 6 uses
  %min.iters.check = icmp ult i32 %.pre4.i, 4
  br i1 %min.iters.check, label %vec.epilog.scalar.ph.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check46 = icmp ult i32 %.pre4.i, 32
  br i1 %min.iters.check46, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.am = and i64 %wide.trip.count.i.i, 28
  %n.vec = and i64 %wide.trip.count.i.i, 2147483616 ; 4 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.ph, %vector.body
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.an = getelementptr inbounds nuw i8, ptr %.pre.i.i, i64 %index ; 2 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 16
  %wide.load = load <16 x i8>, ptr %i.an, align 1, !tbaa !59
  %wide.load47.a = load <16 x i8>, ptr %i.ao, align 1, !tbaa !59
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ai, i64 %index ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ap, i64 16
  store <16 x i8> %wide.load, ptr %i.ap, align 1, !tbaa !59
  store <16 x i8> %wide.load47.a, ptr %i.aq, align 1, !tbaa !59
  %index.next = add nuw i64 %index, 32            ; 2 uses
  %i.ar = icmp eq i64 %index.next, %n.vec
  br i1 %i.ar, label %middle.block, label %vector.body, !llvm.loop !112

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count.i.i
  br i1 %cmp.n, label %._crit_edge.thread.i.i, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.am, 0
  br i1 %min.epilog.iters.check, label %vec.epilog.scalar.ph.preheader, label %vec.epilog.ph, !prof !64

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec48 = and i64 %wide.trip.count.i.i, 2147483644 ; 3 uses
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index49 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next51, %vec.epilog.vector.body ] ; 3 uses
  %i.as = getelementptr inbounds nuw i8, ptr %.pre.i.i, i64 %index49
  %wide.load50 = load <4 x i8>, ptr %i.as, align 1, !tbaa !59
  %i.at = getelementptr inbounds nuw i8, ptr %i.ai, i64 %index49
  store <4 x i8> %wide.load50, ptr %i.at, align 1, !tbaa !59
  %index.next51 = add nuw i64 %index49, 4         ; 2 uses
  %i.au = icmp eq i64 %index.next51, %n.vec48
  br i1 %i.au, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !113

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n52 = icmp eq i64 %n.vec48, %wide.trip.count.i.i
  br i1 %cmp.n52, label %._crit_edge.thread.i.i, label %vec.epilog.scalar.ph.preheader

vec.epilog.scalar.ph.preheader:                   ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %indvars.iv.i.i.ph = phi i64 [ 0, %iter.check ], [ %n.vec, %vec.epilog.iter.check ], [ %n.vec48, %vec.epilog.middle.block ]
  br label %vec.epilog.scalar.ph

._crit_edge.i.i:                                  ; preds = %.preheader.i.i
  %i.av = icmp eq ptr %.pre.i.i, null
  br i1 %i.av, label %bb.h, label %._crit_edge.thread.i.i

vec.epilog.scalar.ph:                             ; preds = %vec.epilog.scalar.ph.preheader, %vec.epilog.scalar.ph
  %indvars.iv.i.i = phi i64 [ %indvars.iv.next.i.i, %vec.epilog.scalar.ph ], [ %indvars.iv.i.i.ph, %vec.epilog.scalar.ph.preheader ] ; 3 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %.pre.i.i, i64 %indvars.iv.i.i
  %i.ax = load i8, ptr %i.aw, align 1, !tbaa !59
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ai, i64 %indvars.iv.i.i
  store i8 %i.ax, ptr %i.ay, align 1, !tbaa !59
  %indvars.iv.next.i.i = add nuw nsw i64 %indvars.iv.i.i, 1 ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %indvars.iv.next.i.i, %wide.trip.count.i.i
  br i1 %exitcond.not.i.i, label %._crit_edge.thread.i.i, label %vec.epilog.scalar.ph, !llvm.loop !114

._crit_edge.thread.i.i:                           ; preds = %vec.epilog.scalar.ph, %middle.block, %vec.epilog.middle.block, %._crit_edge.i.i
  call void @_ZdaPv(ptr noundef nonnull %.pre.i.i) #24
  %.pre.i = load i32, ptr %i.ad, align 8, !tbaa !47
  br label %bb.h

bb.h:                                             ; preds = %._crit_edge.thread.i.i, %._crit_edge.i.i, %bb.g
  %i.az = phi i32 [ %.pre.i, %._crit_edge.thread.i.i ], [ %.pre4.i, %._crit_edge.i.i ], [ %.pre4.i, %bb.g ]
  store ptr %i.ai, ptr %i.i, align 8, !tbaa !48
  %i.ba = sext i32 %i.az to i64
  %i.bb = getelementptr inbounds i8, ptr %i.ai, i64 %i.ba
  store i8 0, ptr %i.bb, align 1, !tbaa !59
  store i32 26, ptr %i.af, align 4, !tbaa !60
  br label %_ZN11CStringBaseIcE11SetCapacityEi.exit.i

_ZN11CStringBaseIcE11SetCapacityEi.exit.i:        ; preds = %bb.h, %._ZN11CStringBaseIcE11SetCapacityEi.exit_crit_edge.i
  %i.bc = phi ptr [ %.pre5.i, %._ZN11CStringBaseIcE11SetCapacityEi.exit_crit_edge.i ], [ %i.ai, %bb.h ] ; 4 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %i.bc, i64 16
  store <16 x i8> <i8 85, i8 110, i8 101, i8 120, i8 112, i8 101, i8 99, i8 116, i8 101, i8 100, i8 32, i8 101, i8 110, i8 100, i8 32, i8 111>, ptr %i.bc, align 1, !tbaa !59
  %i.be = getelementptr inbounds nuw i8, ptr %i.bc, i64 24
  store <8 x i8> <i8 102, i8 32, i8 97, i8 114, i8 99, i8 104, i8 105, i8 118>, ptr %i.bd, align 1, !tbaa !59
  %i.bf = getelementptr inbounds nuw i8, ptr %i.bc, i64 25
  store i8 101, ptr %i.be, align 1, !tbaa !59
  store i8 0, ptr %i.bf, align 1, !tbaa !59
  store i32 25, ptr %i.ad, align 8, !tbaa !47
  br label %.thread

.thread:                                          ; preds = %bb.d, %_ZN11CStringBaseIcE11SetCapacityEi.exit.i
  %.213.ph = phi i32 [ 1, %_ZN11CStringBaseIcE11SetCapacityEi.exit.i ], [ %i.w, %bb.d ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #21
  br label %.loopexit

bb.i:                                             ; preds = %bb.e
  store i8 0, ptr %i.d, align 4, !tbaa !76
  %i.bg = load i32, ptr %i.c, align 8, !tbaa !75
  %i.bh = add i32 %i.bg, 1
  store i32 %i.bh, ptr %i.c, align 8, !tbaa !75
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #21
  br label %.backedge

.critedge.thread:                                 ; preds = %bb.c, %.critedge
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #21
  %i.bi = load ptr, ptr %i.e, align 8, !tbaa !74
  %i.bj = load i64, ptr %i.g, align 8, !tbaa !49
  store i64 %i.bj, ptr %i.h, align 8, !tbaa !50
  %i.bk = call noundef i32 @_ZN8NArchive4NTar8ReadItemEP19ISequentialInStreamRbRNS0_7CItemExER11CStringBaseIcE(ptr noundef %i.bi, ptr noundef nonnull align 1 dereferenceable(1) %i.b, ptr noundef nonnull align 8 dereferenceable(124) %i.f, ptr noundef nonnull align 8 dereferenceable(16) %i.i) ; 2 uses
  %.not.not.i = icmp eq i32 %i.bk, 0
  br i1 %.not.not.i, label %bb.j, label %.thread25

bb.j:                                             ; preds = %.critedge.thread
  %i.bl = load i32, ptr %i.j, align 8, !tbaa !51
  %i.bm = zext i32 %i.bl to i64
  %i.bn = load <2 x i64>, ptr %i.g, align 8, !tbaa !46
  %i.bo = insertelement <2 x i64> poison, i64 %i.bm, i64 0
  %i.bp = shufflevector <2 x i64> %i.bo, <2 x i64> poison, <2 x i32> zeroinitializer
  %i.bq = add <2 x i64> %i.bn, %i.bp
  store <2 x i64> %i.bq, ptr %i.g, align 8, !tbaa !46
  %i.br = load i8, ptr %i.b, align 1, !tbaa !54, !range !44, !noundef !45
  %i.bs = trunc nuw i8 %i.br to i1
  br i1 %i.bs, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.bt = getelementptr inbounds nuw i8, ptr %0, i64 240
  store i8 1, ptr %i.bt, align 8, !tbaa !43
  br label %.thread25

.thread25:                                        ; preds = %.critedge.thread, %bb.k
  %.4.ph = phi i32 [ -2147024809, %bb.k ], [ %i.bk, %.critedge.thread ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #21
  br label %.loopexit

bb.l:                                             ; preds = %bb.j
  store i8 1, ptr %i.d, align 4, !tbaa !76
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #21
  br label %.backedge

.backedge:                                        ; preds = %bb.l, %bb.i
  %.pre.be = phi i1 [ true, %bb.l ], [ false, %bb.i ]
  br label %bb.b, !llvm.loop !115

.loopexit:                                        ; preds = %bb.c, %.thread25, %.thread
  %.6 = phi i32 [ %.213.ph, %.thread ], [ %.4.ph, %.thread25 ], [ 0, %bb.c ]
  ret i32 %.6
}

; Function Attrs: mustprogress uwtable
define dso_local noundef i32 @_ZN8NArchive4NTar8CHandler11GetPropertyEjjP14tagPROPVARIANT(ptr noundef nonnull align 8 dereferenceable(280) %0, i32 noundef %1, i32 noundef %2, ptr noundef %3) unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"class.NWindows::NCOM::CPropVariant", align 8 ; 16 uses
  %5 = alloca %class.CStringBase.3, align 8       ; 7 uses
  %6 = alloca %class.CStringBase.3, align 8       ; 7 uses
  %7 = alloca %struct._FILETIME, align 4          ; 5 uses
  %8 = alloca %class.CStringBase.3, align 8       ; 7 uses
  %9 = alloca %class.CStringBase.3, align 8       ; 7 uses
  %10 = alloca %class.CStringBase.3, align 8      ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #21
  store i16 0, ptr %4, align 8, !tbaa !17
  %i.a = getelementptr inbounds nuw i8, ptr %4, i64 2
  store i16 0, ptr %i.a, align 2, !tbaa !18
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !73
  %.not = icmp eq ptr %i.c, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !55
  %i.f = sext i32 %1 to i64
  %i.g = getelementptr inbounds [8 x i8], ptr %i.e, i64 %i.f
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !57
  br label %bb.h

bb.c:                                             ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.j = load i32, ptr %i.i, align 8, !tbaa !75
  %i.k = icmp ult i32 %1, %i.j
  br i1 %i.k, label %bb.aw, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.l = invoke noundef i32 @_ZN8NArchive4NTar8CHandler6SkipToEj(ptr noundef nonnull align 8 dereferenceable(280) %0, i32 noundef %1)
          to label %bb.e unwind label %bb.f       ; 2 uses

bb.e:                                             ; preds = %bb.d
  %.not37 = icmp eq i32 %i.l, 0
  br i1 %.not37, label %bb.g, label %bb.aw

bb.f:                                             ; preds = %.invoke, %bb.t, %_ZNK8NArchive4NTar5CItem5IsDirEv.exit, %bb.ac, %bb.av, %bb.d
  %i.m = landingpad { ptr, i32 }
          catch ptr @_ZTIPKc
          catch ptr null
  br label %bb.ay

bb.g:                                             ; preds = %bb.e
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 96
  br label %bb.h

bb.h:                                             ; preds = %bb.b, %bb.g
  %.025 = phi ptr [ %i.n, %bb.g ], [ %i.h, %bb.b ] ; 12 uses
  switch i32 %2, label %bb.av [
    i32 3, label %bb.i
    i32 6, label %bb.s
    i32 7, label %bb.v
    i32 8, label %bb.w
    i32 12, label %bb.x
    i32 53, label %bb.ac
    i32 25, label %bb.ad
    i32 26, label %bb.aj
    i32 54, label %bb.ap
  ]

bb.i:                                             ; preds = %bb.h
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #21
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #21
  invoke void @_Z24MultiByteToUnicodeStringRK11CStringBaseIcEj(ptr dead_on_unwind nonnull writable sret(%class.CStringBase.3) align 8 %6, ptr noundef nonnull align 8 dereferenceable(16) %.025, i32 noundef 1)
          to label %_ZN8NArchive4NTarL18TarStringToUnicodeERK11CStringBaseIcE.exit unwind label %bb.n

_ZN8NArchive4NTarL18TarStringToUnicodeERK11CStringBaseIcE.exit: ; preds = %bb.i
  invoke void @_ZN8NArchive9NItemName10GetOSName2ERK11CStringBaseIwE(ptr dead_on_unwind nonnull writable sret(%class.CStringBase.3) align 8 %5, ptr noundef nonnull align 8 dereferenceable(16) %6)
          to label %bb.j unwind label %bb.o

bb.j:                                             ; preds = %_ZN8NArchive4NTarL18TarStringToUnicodeERK11CStringBaseIcE.exit
  %i.o = load ptr, ptr %5, align 8, !tbaa !68
  %i.p = invoke noundef nonnull align 8 dereferenceable(16) ptr @_ZN8NWindows4NCOM12CPropVariantaSEPKw(ptr noundef nonnull align 8 dereferenceable(16) %4, ptr noundef %i.o)
          to label %bb.k unwind label %bb.p       ; 0 uses

bb.k:                                             ; preds = %bb.j
  %i.q = load ptr, ptr %5, align 8, !tbaa !68     ; 2 uses
  %i.r = icmp eq ptr %i.q, null
  br i1 %i.r, label %_ZN11CStringBaseIwED2Ev.exit, label %bb.l

bb.l:                                             ; preds = %bb.k
  call void @_ZdaPv(ptr noundef nonnull %i.q) #24
  br label %_ZN11CStringBaseIwED2Ev.exit

_ZN11CStringBaseIwED2Ev.exit:                     ; preds = %bb.k, %bb.l
  %i.s = load ptr, ptr %6, align 8, !tbaa !68     ; 2 uses
  %i.t = icmp eq ptr %i.s, null
  br i1 %i.t, label %_ZN11CStringBaseIwED2Ev.exit49, label %bb.m

bb.m:                                             ; preds = %_ZN11CStringBaseIwED2Ev.exit
  call void @_ZdaPv(ptr noundef nonnull %i.s) #24
  br label %_ZN11CStringBaseIwED2Ev.exit49

_ZN11CStringBaseIwED2Ev.exit49:                   ; preds = %_ZN11CStringBaseIwED2Ev.exit, %bb.m
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #21
  br label %bb.av

bb.n:                                             ; preds = %bb.i
  %i.u = landingpad { ptr, i32 }
          catch ptr @_ZTIPKc
          catch ptr null
  br label %_ZN11CStringBaseIwED2Ev.exit51

bb.o:                                             ; preds = %_ZN8NArchive4NTarL18TarStringToUnicodeERK11CStringBaseIcE.exit
  %i.v = landingpad { ptr, i32 }
          catch ptr @_ZTIPKc
          catch ptr null
  br label %_ZN11CStringBaseIwED2Ev.exit50

bb.p:                                             ; preds = %bb.j
  %i.w = landingpad { ptr, i32 }
          catch ptr @_ZTIPKc
          catch ptr null                          ; 2 uses
  %i.x = load ptr, ptr %5, align 8, !tbaa !68     ; 2 uses
  %i.y = icmp eq ptr %i.x, null
  br i1 %i.y, label %_ZN11CStringBaseIwED2Ev.exit50, label %bb.q

bb.q:                                             ; preds = %bb.p
  call void @_ZdaPv(ptr noundef nonnull %i.x) #24
  br label %_ZN11CStringBaseIwED2Ev.exit50

_ZN11CStringBaseIwED2Ev.exit50:                   ; preds = %bb.q, %bb.p, %bb.o
  %.pn44 = phi { ptr, i32 } [ %i.v, %bb.o ], [ %i.w, %bb.p ], [ %i.w, %bb.q ] ; 2 uses
  %i.z = load ptr, ptr %6, align 8, !tbaa !68     ; 2 uses
  %i.aa = icmp eq ptr %i.z, null
  br i1 %i.aa, label %_ZN11CStringBaseIwED2Ev.exit51, label %bb.r

bb.r:                                             ; preds = %_ZN11CStringBaseIwED2Ev.exit50
  call void @_ZdaPv(ptr noundef nonnull %i.z) #24
  br label %_ZN11CStringBaseIwED2Ev.exit51

_ZN11CStringBaseIwED2Ev.exit51:                   ; preds = %bb.r, %_ZN11CStringBaseIwED2Ev.exit50, %bb.n
  %.pn44.pn = phi { ptr, i32 } [ %i.u, %bb.n ], [ %.pn44, %_ZN11CStringBaseIwED2Ev.exit50 ], [ %.pn44, %bb.r ]
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #21
  br label %bb.ay

bb.s:                                             ; preds = %bb.h
  %i.ab = getelementptr inbounds nuw i8, ptr %.025, i64 104
  %i.ac = load i8, ptr %i.ab, align 8, !tbaa !80
  switch i8 %i.ac, label %bb.u [
    i8 53, label %_ZNK8NArchive4NTar5CItem5IsDirEv.exit
    i8 68, label %_ZNK8NArchive4NTar5CItem5IsDirEv.exit
    i8 0, label %bb.t
    i8 48, label %bb.t
  ]

bb.t:                                             ; preds = %bb.s, %bb.s
  %i.ad = invoke noundef zeroext i1 @_ZN8NArchive9NItemName12HasTailSlashERK11CStringBaseIcEj(ptr noundef nonnull align 8 dereferenceable(107) %.025, i32 noundef 1)
          to label %_ZNK8NArchive4NTar5CItem5IsDirEv.exit unwind label %bb.f

bb.u:                                             ; preds = %bb.s
  br label %_ZNK8NArchive4NTar5CItem5IsDirEv.exit

_ZNK8NArchive4NTar5CItem5IsDirEv.exit:            ; preds = %bb.u, %bb.s, %bb.s, %bb.t
  %.0.i = phi i1 [ false, %bb.u ], [ true, %bb.s ], [ true, %bb.s ], [ %i.ad, %bb.t ]
  %i.ae = invoke noundef nonnull align 8 dereferenceable(16) ptr @_ZN8NWindows4NCOM12CPropVariantaSEb(ptr noundef nonnull align 8 dereferenceable(16) %4, i1 noundef zeroext %.0.i)
          to label %bb.av unwind label %bb.f      ; 0 uses

bb.v:                                             ; preds = %bb.h
  %i.af = getelementptr inbounds nuw i8, ptr %.025, i64 104
  %i.ag = load i8, ptr %i.af, align 8, !tbaa !80
  %i.ah = icmp eq i8 %i.ag, 50
  %i.ai = getelementptr inbounds nuw i8, ptr %.025, i64 16
  %i.aj = load i64, ptr %i.ai, align 8            ; 2 uses
  %i.ak = icmp eq i64 %i.aj, 0
  %i.al = select i1 %i.ah, i1 %i.ak, i1 false
  %i.am = getelementptr inbounds nuw i8, ptr %.025, i64 56
  %i.an = load i32, ptr %i.am, align 8
  %i.ao = sext i32 %i.an to i64
  %i.ap = select i1 %i.al, i64 %i.ao, i64 %i.aj
  br label %.invoke

.invoke:                                          ; preds = %bb.w, %bb.v
  %i.aq = phi i64 [ %i.ap, %bb.v ], [ %i.av, %bb.w ]
  %i.ar = invoke noundef nonnull align 8 dereferenceable(16) ptr @_ZN8NWindows4NCOM12CPropVariantaSEy(ptr noundef nonnull align 8 dereferenceable(16) %4, i64 noundef %i.aq)
          to label %bb.av unwind label %bb.f      ; 0 uses

bb.w:                                             ; preds = %bb.h
  %i.as = getelementptr inbounds nuw i8, ptr %.025, i64 16
  %i.at = load i64, ptr %i.as, align 8, !tbaa !58
  %i.au = add i64 %i.at, 511
  %i.av = and i64 %i.au, -512
  br label %.invoke

bb.x:                                             ; preds = %bb.h
  %i.aw = getelementptr inbounds nuw i8, ptr %.025, i64 36
end_hunk_0

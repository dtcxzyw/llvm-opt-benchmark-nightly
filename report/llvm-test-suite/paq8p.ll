inline.NumInlined: 1537
inline.NumDeleted: 102
begin_hunk_0_@_Z7putsizeR6StringS0_PKci:bb.a
_ZN5ArrayIcLi0EE8pop_backEv.exit.i29:             ; preds = %bb.k, %_ZN6StringpLEPKc.exit28
  %i.bq = phi i32 [ %i.bp, %bb.k ], [ %i.bn, %_ZN6StringpLEPKc.exit28 ] ; 4 uses
  %i.br = load i32, ptr %i.aa, align 4, !tbaa !277
  %i.bs = icmp eq i32 %i.bq, %i.br
  br i1 %i.bs, label %bb.l, label %_ZN5ArrayIcLi0EE9push_backERKc.exit.i32

bb.l:                                             ; preds = %_ZN5ArrayIcLi0EE8pop_backEv.exit.i29
  %i.bt = shl nsw i32 %i.bq, 1
  %i.bu = tail call noundef i32 @llvm.smax.i32(i32 %i.bt, i32 1)
  tail call void @_ZN5ArrayIcLi0EE6resizeEi(ptr noundef nonnull align 8 dereferenceable(24) %0, i32 noundef %i.bu)
  br label %_ZN5ArrayIcLi0EE9push_backERKc.exit.i32

_ZN5ArrayIcLi0EE9push_backERKc.exit.i32:          ; preds = %bb.l, %_ZN5ArrayIcLi0EE8pop_backEv.exit.i29
  %i.bv = load ptr, ptr %i.af, align 8, !tbaa !270
  %i.bw = add nsw i32 %i.bq, 1
  store i32 %i.bw, ptr %0, align 8, !tbaa !272
  %i.bx = sext i32 %i.bq to i64
  %i.by = getelementptr inbounds i8, ptr %i.bv, i64 %i.bx
  store i8 13, ptr %i.by, align 1, !tbaa !11
  %i.bz = load i32, ptr %0, align 8, !tbaa !272   ; 4 uses
  %i.ca = load i32, ptr %i.aa, align 4, !tbaa !277
  %i.cb = icmp eq i32 %i.bz, %i.ca
  br i1 %i.cb, label %bb.m, label %_ZN5ArrayIcLi0EE9push_backERKc.exit.i32.1

bb.m:                                             ; preds = %_ZN5ArrayIcLi0EE9push_backERKc.exit.i32
  %i.cc = shl nsw i32 %i.bz, 1
  %i.cd = tail call noundef i32 @llvm.smax.i32(i32 %i.cc, i32 1)
  tail call void @_ZN5ArrayIcLi0EE6resizeEi(ptr noundef nonnull align 8 dereferenceable(24) %0, i32 noundef %i.cd)
  br label %_ZN5ArrayIcLi0EE9push_backERKc.exit.i32.1

_ZN5ArrayIcLi0EE9push_backERKc.exit.i32.1:        ; preds = %bb.m, %_ZN5ArrayIcLi0EE9push_backERKc.exit.i32
  %i.ce = load ptr, ptr %i.af, align 8, !tbaa !270
  %i.cf = add nsw i32 %i.bz, 1
  store i32 %i.cf, ptr %0, align 8, !tbaa !272
  %i.cg = sext i32 %i.bz to i64
  %i.ch = getelementptr inbounds i8, ptr %i.ce, i64 %i.cg
  store i8 10, ptr %i.ch, align 1, !tbaa !11
  %.pre6.i35 = load i32, ptr %0, align 8, !tbaa !272 ; 4 uses
  %i.ci = load i32, ptr %i.aa, align 4, !tbaa !277
  %i.cj = icmp eq i32 %.pre6.i35, %i.ci
  br i1 %i.cj, label %bb.n, label %_ZN6StringpLEPKc.exit38

bb.n:                                             ; preds = %_ZN5ArrayIcLi0EE9push_backERKc.exit.i32.1
  %i.ck = shl nsw i32 %.pre6.i35, 1
  %i.cl = tail call noundef i32 @llvm.smax.i32(i32 %i.ck, i32 1)
  tail call void @_ZN5ArrayIcLi0EE6resizeEi(ptr noundef nonnull align 8 dereferenceable(24) %0, i32 noundef %i.cl)
  br label %_ZN6StringpLEPKc.exit38

_ZN6StringpLEPKc.exit38:                          ; preds = %_ZN5ArrayIcLi0EE9push_backERKc.exit.i32.1, %bb.n
  %i.cm = load ptr, ptr %i.af, align 8, !tbaa !270
  %i.cn = add nsw i32 %.pre6.i35, 1
  store i32 %i.cn, ptr %0, align 8, !tbaa !272
  %i.co = sext i32 %.pre6.i35 to i64
  %i.cp = getelementptr inbounds i8, ptr %i.cm, i64 %i.co
  store i8 0, ptr %i.cp, align 1, !tbaa !11
  %i.cq = load i32, ptr %1, align 8, !tbaa !272   ; 3 uses
  %i.cr = icmp sgt i32 %i.cq, 0
  br i1 %i.cr, label %bb.o, label %_ZN5ArrayIcLi0EE8pop_backEv.exit.i39

bb.o:                                             ; preds = %_ZN6StringpLEPKc.exit38
  %i.cs = add nsw i32 %i.cq, -1                   ; 2 uses
  store i32 %i.cs, ptr %1, align 8, !tbaa !272
  br label %_ZN5ArrayIcLi0EE8pop_backEv.exit.i39

_ZN5ArrayIcLi0EE8pop_backEv.exit.i39:             ; preds = %bb.o, %_ZN6StringpLEPKc.exit38
  %i.ct = phi i32 [ %i.cq, %_ZN6StringpLEPKc.exit38 ], [ %i.cs, %bb.o ]
  %i.cu = load i8, ptr %2, align 1, !tbaa !11     ; 2 uses
  %.not4.i40 = icmp eq i8 %i.cu, 0
  br i1 %.not4.i40, label %._crit_edge.i47, label %.lr.ph.i41

.lr.ph.i41:                                       ; preds = %_ZN5ArrayIcLi0EE8pop_backEv.exit.i39
  %i.cv = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.cw = getelementptr inbounds nuw i8, ptr %1, i64 16
  br label %bb.p

bb.p:                                             ; preds = %_ZN5ArrayIcLi0EE9push_backERKc.exit.i43, %.lr.ph.i41
  %i.cx = phi i8 [ %i.cu, %.lr.ph.i41 ], [ %i.dj, %_ZN5ArrayIcLi0EE9push_backERKc.exit.i43 ]
  %.05.i42 = phi ptr [ %2, %.lr.ph.i41 ], [ %i.cy, %_ZN5ArrayIcLi0EE9push_backERKc.exit.i43 ] ; 2 uses
  %i.cy = getelementptr inbounds nuw i8, ptr %.05.i42, i64 1 ; 2 uses
  %i.cz = load i32, ptr %1, align 8, !tbaa !272   ; 5 uses
  %i.da = load i32, ptr %i.cv, align 4, !tbaa !277
  %i.db = icmp eq i32 %i.cz, %i.da
  br i1 %i.db, label %bb.q, label %_ZN5ArrayIcLi0EE9push_backERKc.exit.i43

bb.q:                                             ; preds = %bb.p
  %i.dc = shl nsw i32 %i.cz, 1
  %i.dd = tail call noundef i32 @llvm.smax.i32(i32 %i.dc, i32 1)
  tail call void @_ZN5ArrayIcLi0EE6resizeEi(ptr noundef nonnull align 8 dereferenceable(24) %1, i32 noundef %i.dd)
  store i32 %i.cz, ptr %1, align 8, !tbaa !272
  %.pre.i48 = load i8, ptr %.05.i42, align 1, !tbaa !11
  br label %_ZN5ArrayIcLi0EE9push_backERKc.exit.i43

_ZN5ArrayIcLi0EE9push_backERKc.exit.i43:          ; preds = %bb.q, %bb.p
  %i.de = phi i8 [ %i.cx, %bb.p ], [ %.pre.i48, %bb.q ]
  %i.df = load ptr, ptr %i.cw, align 8, !tbaa !270
  %i.dg = add nsw i32 %i.cz, 1
  store i32 %i.dg, ptr %1, align 8, !tbaa !272
  %i.dh = sext i32 %i.cz to i64
  %i.di = getelementptr inbounds i8, ptr %i.df, i64 %i.dh
  store i8 %i.de, ptr %i.di, align 1, !tbaa !11
  %i.dj = load i8, ptr %i.cy, align 1, !tbaa !11  ; 2 uses
  %.not.i44 = icmp eq i8 %i.dj, 0
  br i1 %.not.i44, label %._crit_edge.loopexit.i45, label %bb.p, !llvm.loop !278

._crit_edge.loopexit.i45:                         ; preds = %_ZN5ArrayIcLi0EE9push_backERKc.exit.i43
  %.pre6.i46 = load i32, ptr %1, align 8, !tbaa !272
  br label %._crit_edge.i47

._crit_edge.i47:                                  ; preds = %._crit_edge.loopexit.i45, %_ZN5ArrayIcLi0EE8pop_backEv.exit.i39
  %i.dk = phi i32 [ %.pre6.i46, %._crit_edge.loopexit.i45 ], [ %i.ct, %_ZN5ArrayIcLi0EE8pop_backEv.exit.i39 ] ; 4 uses
  %i.dl = getelementptr inbounds nuw i8, ptr %1, i64 4 ; 3 uses
  %i.dm = load i32, ptr %i.dl, align 4, !tbaa !277
  %i.dn = icmp eq i32 %i.dk, %i.dm
  br i1 %i.dn, label %bb.r, label %_ZN6StringpLEPKc.exit49

bb.r:                                             ; preds = %._crit_edge.i47
  %i.do = shl nsw i32 %i.dk, 1
  %i.dp = tail call noundef i32 @llvm.smax.i32(i32 %i.do, i32 1)
  tail call void @_ZN5ArrayIcLi0EE6resizeEi(ptr noundef nonnull align 8 dereferenceable(24) %1, i32 noundef %i.dp)
  br label %_ZN6StringpLEPKc.exit49

_ZN6StringpLEPKc.exit49:                          ; preds = %._crit_edge.i47, %bb.r
  %i.dq = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 3 uses
  %i.dr = load ptr, ptr %i.dq, align 8, !tbaa !270
  %i.ds = add nsw i32 %i.dk, 1
  store i32 %i.ds, ptr %1, align 8, !tbaa !272
  %i.dt = sext i32 %i.dk to i64
  %i.du = getelementptr inbounds i8, ptr %i.dr, i64 %i.dt
  store i8 0, ptr %i.du, align 1, !tbaa !11
  %i.dv = load i32, ptr %1, align 8, !tbaa !272   ; 3 uses
  %i.dw = icmp sgt i32 %i.dv, 0
  br i1 %i.dw, label %bb.s, label %_ZN5ArrayIcLi0EE8pop_backEv.exit.i50

bb.s:                                             ; preds = %_ZN6StringpLEPKc.exit49
  %i.dx = add nsw i32 %i.dv, -1                   ; 2 uses
  store i32 %i.dx, ptr %1, align 8, !tbaa !272
  br label %_ZN5ArrayIcLi0EE8pop_backEv.exit.i50

_ZN5ArrayIcLi0EE8pop_backEv.exit.i50:             ; preds = %bb.s, %_ZN6StringpLEPKc.exit49
  %i.dy = phi i32 [ %i.dx, %bb.s ], [ %i.dv, %_ZN6StringpLEPKc.exit49 ] ; 4 uses
  %i.dz = load i32, ptr %i.dl, align 4, !tbaa !277
  %i.ea = icmp eq i32 %i.dy, %i.dz
  br i1 %i.ea, label %bb.t, label %_ZN5ArrayIcLi0EE9push_backERKc.exit.i53

bb.t:                                             ; preds = %_ZN5ArrayIcLi0EE8pop_backEv.exit.i50
  %i.eb = shl nsw i32 %i.dy, 1
  %i.ec = tail call noundef i32 @llvm.smax.i32(i32 %i.eb, i32 1)
  tail call void @_ZN5ArrayIcLi0EE6resizeEi(ptr noundef nonnull align 8 dereferenceable(24) %1, i32 noundef %i.ec)
  br label %_ZN5ArrayIcLi0EE9push_backERKc.exit.i53

_ZN5ArrayIcLi0EE9push_backERKc.exit.i53:          ; preds = %bb.t, %_ZN5ArrayIcLi0EE8pop_backEv.exit.i50
  %i.ed = load ptr, ptr %i.dq, align 8, !tbaa !270
  %i.ee = add nsw i32 %i.dy, 1
  store i32 %i.ee, ptr %1, align 8, !tbaa !272
  %i.ef = sext i32 %i.dy to i64
  %i.eg = getelementptr inbounds i8, ptr %i.ed, i64 %i.ef
  store i8 10, ptr %i.eg, align 1, !tbaa !11
  %.pre6.i56 = load i32, ptr %1, align 8, !tbaa !272 ; 4 uses
  %i.eh = load i32, ptr %i.dl, align 4, !tbaa !277
  %i.ei = icmp eq i32 %.pre6.i56, %i.eh
  br i1 %i.ei, label %bb.u, label %_ZN6StringpLEPKc.exit59

bb.u:                                             ; preds = %_ZN5ArrayIcLi0EE9push_backERKc.exit.i53
  %i.ej = shl nsw i32 %.pre6.i56, 1
  %i.ek = tail call noundef i32 @llvm.smax.i32(i32 %i.ej, i32 1)
  tail call void @_ZN5ArrayIcLi0EE6resizeEi(ptr noundef nonnull align 8 dereferenceable(24) %1, i32 noundef %i.ek)
  br label %_ZN6StringpLEPKc.exit59

_ZN6StringpLEPKc.exit59:                          ; preds = %_ZN5ArrayIcLi0EE9push_backERKc.exit.i53, %bb.u
  %i.el = load ptr, ptr %i.dq, align 8, !tbaa !270
  %i.em = add nsw i32 %.pre6.i56, 1
  store i32 %i.em, ptr %1, align 8, !tbaa !272
  %i.en = sext i32 %.pre6.i56 to i64
  %i.eo = getelementptr inbounds i8, ptr %i.el, i64 %i.en
  store i8 0, ptr %i.eo, align 1, !tbaa !11
  br label %bb.v

bb.v:                                             ; preds = %_ZN6StringpLEPKc.exit59, %bb.b
  %.0 = phi i32 [ 1, %_ZN6StringpLEPKc.exit59 ], [ 0, %bb.b ]
  %i.ep = tail call i32 @fclose(ptr noundef nonnull %i.a) ; 0 uses
  br label %bb.w

bb.w:                                             ; preds = %bb.v, %bb.a
  %.1 = phi i32 [ %.0, %bb.v ], [ 0, %bb.a ]
  ret i32 %.1
}

; Function Attrs: nofree nounwind
declare noundef i32 @sprintf(ptr noalias noundef writeonly captures(none), ptr noundef readonly captures(none), ...) local_unnamed_addr #15

; Function Attrs: mustprogress uwtable
define dso_local noundef range(i32 0, 2) i32 @_Z6expandR6StringS0_PKci(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef readonly captures(none) %2, i32 noundef %3) local_unnamed_addr #6 {
bb.a:
  %i.a = tail call noundef i32 @_Z7putsizeR6StringS0_PKci(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef %2, i32 noundef %3)
  ret i32 %i.a
}

; Function Attrs: mustprogress uwtable
define dso_local noundef i32 @_Z7paqmainiPPc(i32 noundef %0, ptr noundef readonly captures(none) %1) local_unnamed_addr #6 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %class.String, align 8              ; 27 uses
  %3 = alloca %class.String, align 8              ; 17 uses
  %4 = alloca %class.String, align 8              ; 10 uses
  %5 = alloca %class.String, align 8              ; 9 uses
  %6 = alloca %class.Encoder, align 8             ; 12 uses
  %7 = alloca %class.String, align 8              ; 29 uses
  %8 = alloca %class.String, align 8              ; 18 uses
  %i.a = load ptr, ptr %1, align 8, !tbaa !8      ; 2 uses
  %i.b = tail call noundef ptr @strrchr(ptr noundef nonnull readonly dereferenceable(1) %i.a, i32 noundef 47) #43 ; 2 uses
  %.not.i = icmp eq ptr %i.b, null
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 1
  %i.d = select i1 %.not.i, ptr %i.a, ptr %i.c    ; 4 uses
  %i.e = icmp slt i32 %0, 3                       ; 5 uses
  %i.f = icmp sgt i32 %0, 1
  br i1 %i.f, label %bb.b, label %.thread521

bb.b:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !8    ; 3 uses
  %i.i = load i8, ptr %i.h, align 1, !tbaa !11
  %i.j = icmp eq i8 %i.i, 45
  br i1 %i.j, label %bb.c, label %.thread

bb.c:                                             ; preds = %bb.b
  %i.k = getelementptr inbounds nuw i8, ptr %i.h, i64 1
  %i.l = load i8, ptr %i.k, align 1, !tbaa !11    ; 4 uses
  %.not = icmp eq i8 %i.l, 0
  br i1 %.not, label %.thread, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.m = getelementptr inbounds nuw i8, ptr %i.h, i64 2
  %i.n = load i8, ptr %i.m, align 1, !tbaa !11
  %.not222 = icmp eq i8 %i.n, 0
  br i1 %.not222, label %bb.e, label %.thread

bb.e:                                             ; preds = %bb.d
  %i.o = add i8 %i.l, -58
  %or.cond267 = icmp ult i8 %i.o, -10             ; 2 uses
  br i1 %or.cond267, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %narrow = add nsw i8 %i.l, -48
  %i.p = zext nneg i8 %narrow to i32
  store i32 %i.p, ptr @level, align 4, !tbaa !4
  br label %bb.j

bb.g:                                             ; preds = %bb.e
  %i.q = icmp eq i8 %i.l, 100
  br i1 %i.q, label %bb.j, label %bb.h

bb.h:                                             ; preds = %bb.g
  invoke void @_Z4quitPKc(ptr noundef nonnull @.str.39)
          to label %.unreachable547 unwind label %bb.i

bb.i:                                             ; preds = %.thread521, %bb.h
  %.0169 = phi i1 [ %.1170527, %.thread521 ], [ %i.e, %bb.h ]
  %i.r = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTIPKc
  br label %bb.hp

.unreachable547:                                  ; preds = %bb.h
  unreachable

bb.j:                                             ; preds = %bb.f, %bb.g
  %i.s = add nsw i32 %0, -1
  %i.t = icmp eq i32 %0, 2
  br i1 %i.t, label %.thread521, label %.thread

.thread521:                                       ; preds = %bb.a, %bb.j
  %.1170527 = phi i1 [ false, %bb.j ], [ %i.e, %bb.a ]
  %i.u = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.40, i32 noundef 5) ; 0 uses
  invoke void @_Z4quitPKc(ptr noundef null)
          to label %.thread.unreachable unwind label %bb.i

.thread.unreachable:                              ; preds = %.thread521
  unreachable

.thread:                                          ; preds = %bb.b, %bb.c, %bb.d, %bb.j
  %.0520 = phi i32 [ %i.s, %bb.j ], [ %0, %bb.b ], [ %0, %bb.d ], [ %0, %bb.c ] ; 5 uses
  %.0168519 = phi ptr [ %i.g, %bb.j ], [ %1, %bb.b ], [ %1, %bb.d ], [ %1, %bb.c ] ; 3 uses
  %.1170518 = phi i1 [ false, %bb.j ], [ %i.e, %bb.b ], [ %i.e, %bb.d ], [ %i.e, %bb.c ] ; 3 uses
  %.1174510 = phi i1 [ %or.cond267, %bb.j ], [ false, %bb.b ], [ false, %bb.d ], [ false, %bb.c ] ; 3 uses
  %i.v = load i32, ptr @programChecker, align 8, !tbaa !15
  %i.w = add nsw i32 %i.v, 8                      ; 3 uses
  store i32 %i.w, ptr @programChecker, align 8, !tbaa !15
  %i.x = load i32, ptr getelementptr inbounds nuw (i8, ptr @programChecker, i64 4), align 4, !tbaa !18
  %i.y = icmp sgt i32 %i.w, %i.x
  br i1 %i.y, label %bb.k, label %_ZN14ProgramChecker5allocEi.exit.i.i

bb.k:                                             ; preds = %.thread
  store i32 %i.w, ptr getelementptr inbounds nuw (i8, ptr @programChecker, i64 4), align 4, !tbaa !18
  br label %_ZN14ProgramChecker5allocEi.exit.i.i

_ZN14ProgramChecker5allocEi.exit.i.i:             ; preds = %bb.k, %.thread
  %i.z = tail call noalias dereferenceable_or_null(8) ptr @calloc(i64 noundef 8, i64 noundef 1) #40 ; 11 uses
  %.not.i.i = icmp eq ptr %i.z, null
  br i1 %.not.i.i, label %bb.l, label %_ZN5ArrayIPcLi0EEC2Ei.exit

bb.l:                                             ; preds = %_ZN14ProgramChecker5allocEi.exit.i.i
  invoke void @_Z4quitPKc(ptr noundef nonnull @.str.59)
          to label %.noexc unwind label %bb.t

.noexc:                                           ; preds = %bb.l
  unreachable

_ZN5ArrayIPcLi0EEC2Ei.exit:                       ; preds = %_ZN14ProgramChecker5allocEi.exit.i.i
  %i.aa = load i32, ptr @programChecker, align 8, !tbaa !15
  %i.ab = add nsw i32 %i.aa, 8                    ; 3 uses
  store i32 %i.ab, ptr @programChecker, align 8, !tbaa !15
  %i.ac = load i32, ptr getelementptr inbounds nuw (i8, ptr @programChecker, i64 4), align 4, !tbaa !18
  %i.ad = icmp sgt i32 %i.ab, %i.ac
  br i1 %i.ad, label %bb.m, label %_ZN14ProgramChecker5allocEi.exit.i.i268

bb.m:                                             ; preds = %_ZN5ArrayIPcLi0EEC2Ei.exit
  store i32 %i.ab, ptr getelementptr inbounds nuw (i8, ptr @programChecker, i64 4), align 4, !tbaa !18
  br label %_ZN14ProgramChecker5allocEi.exit.i.i268

_ZN14ProgramChecker5allocEi.exit.i.i268:          ; preds = %bb.m, %_ZN5ArrayIPcLi0EEC2Ei.exit
  %i.ae = tail call noalias dereferenceable_or_null(8) ptr @calloc(i64 noundef 8, i64 noundef 1) #40 ; 11 uses
  %.not.i.i269 = icmp eq ptr %i.ae, null
  br i1 %.not.i.i269, label %bb.n, label %_ZN5ArrayIlLi0EEC2Ei.exit

bb.n:                                             ; preds = %_ZN14ProgramChecker5allocEi.exit.i.i268
  invoke void @_Z4quitPKc(ptr noundef nonnull @.str.59)
          to label %.noexc270 unwind label %bb.u

.noexc270:                                        ; preds = %bb.n
  unreachable

_ZN5ArrayIlLi0EEC2Ei.exit:                        ; preds = %_ZN14ProgramChecker5allocEi.exit.i.i268
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #38
  %i.af = getelementptr inbounds nuw i8, ptr %.0168519, i64 8 ; 3 uses
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !8  ; 2 uses
  %i.ah = tail call noundef ptr @strrchr(ptr noundef nonnull readonly dereferenceable(1) %i.ag, i32 noundef 47) #43 ; 2 uses
  %.not.i271 = icmp eq ptr %i.ah, null
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 1
  %i.aj = select i1 %.not.i271, ptr %i.ag, ptr %i.ai
  invoke void @_ZN6StringC2EPKc(ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef nonnull %i.aj)
          to label %bb.o unwind label %bb.v

bb.o:                                             ; preds = %_ZN5ArrayIlLi0EEC2Ei.exit
  %i.ak = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.d) #43 ; 3 uses
  %i.al = trunc i64 %i.ak to i32
  %i.am = load ptr, ptr %i.af, align 8, !tbaa !8  ; 3 uses
  %i.an = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.am) #43 ; 3 uses
  %i.ao = trunc i64 %i.an to i32
  %i.ap = add nsw i32 %i.al, 1
  %i.aq = icmp slt i32 %i.ap, %i.ao
  br i1 %i.aq, label %bb.p, label %bb.w

bb.p:                                             ; preds = %bb.o
  %i.ar = xor i64 %i.ak, -1
  %i.as = add i64 %i.an, %i.ar
  %sext = shl i64 %i.as, 32
  %i.at = ashr exact i64 %sext, 32
  %i.au = getelementptr inbounds i8, ptr %i.am, i64 %i.at
  %i.av = load i8, ptr %i.au, align 1, !tbaa !11
  %i.aw = icmp eq i8 %i.av, 46
  br i1 %i.aw, label %bb.q, label %bb.w

bb.q:                                             ; preds = %bb.p
  %sext223 = shl i64 %i.an, 32
  %i.ax = ashr exact i64 %sext223, 32
  %i.ay = getelementptr inbounds i8, ptr %i.am, i64 %i.ax
  %sext224 = shl i64 %i.ak, 32
  %i.az = ashr exact i64 %sext224, 32
  %i.ba = sub nsw i64 0, %i.az
  %i.bb = getelementptr inbounds i8, ptr %i.ay, i64 %i.ba
  br label %bb.r

bb.r:                                             ; preds = %bb.s, %bb.q
  %.023.i = phi ptr [ %i.d, %bb.q ], [ %i.bj, %bb.s ] ; 2 uses
  %.022.i = phi ptr [ %i.bb, %bb.q ], [ %i.bk, %bb.s ] ; 2 uses
  %i.bc = load i8, ptr %.023.i, align 1, !tbaa !11 ; 4 uses
  %.not.i272 = icmp eq i8 %i.bc, 0
  %.pre.i = load i8, ptr %.022.i, align 1, !tbaa !11 ; 4 uses
  %.not30.i = icmp eq i8 %.pre.i, 0
  %or.cond38.i = select i1 %.not.i272, i1 true, i1 %.not30.i
  br i1 %or.cond38.i, label %.critedge.i, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.bd = sext i8 %i.bc to i32                    ; 2 uses
  %i.be = add i8 %i.bc, -65
  %or.cond.i = icmp ult i8 %i.be, 26
  %i.bf = or disjoint i32 %i.bd, 32
  %spec.select.i = select i1 %or.cond.i, i32 %i.bf, i32 %i.bd
  %i.bg = sext i8 %.pre.i to i32                  ; 2 uses
  %i.bh = add i8 %.pre.i, -65
  %or.cond3.i = icmp ult i8 %i.bh, 26
  %i.bi = or disjoint i32 %i.bg, 32
  %.020.i = select i1 %or.cond3.i, i32 %i.bi, i32 %i.bg
  %.not31.not.i = icmp eq i32 %spec.select.i, %.020.i
  %i.bj = getelementptr inbounds nuw i8, ptr %.023.i, i64 1
  %i.bk = getelementptr inbounds nuw i8, ptr %.022.i, i64 1
  br i1 %.not31.not.i, label %bb.r, label %_Z6equalsPKcS0_.exit

.critedge.i:                                      ; preds = %bb.r
  %i.bl = icmp eq i8 %i.bc, %.pre.i
  %i.bm = or i1 %.1174510, %i.bl
  br i1 %i.bm, label %bb.ay, label %_ZN5ArrayIcLi0EE8pop_backEv.exit.i

_Z6equalsPKcS0_.exit:                             ; preds = %bb.s
  br i1 %.1174510, label %bb.ay, label %_ZN5ArrayIcLi0EE8pop_backEv.exit.i

bb.t:                                             ; preds = %bb.l
  %i.bn = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTIPKc
  br label %bb.hp

bb.u:                                             ; preds = %bb.n
  %i.bo = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTIPKc
  br label %bb.hn

bb.v:                                             ; preds = %_ZN5ArrayIlLi0EEC2Ei.exit
  %i.bp = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTIPKc
  br label %bb.hl

bb.w:                                             ; preds = %bb.p, %bb.o
  br i1 %.1174510, label %bb.ay, label %_ZN5ArrayIcLi0EE8pop_backEv.exit.i

_ZN5ArrayIcLi0EE8pop_backEv.exit.i:               ; preds = %.critedge.i, %_Z6equalsPKcS0_.exit, %bb.w
  %i.bq = load i32, ptr %2, align 8, !tbaa !272   ; 2 uses
  %i.br = icmp sgt i32 %i.bq, 0
  %i.bs = sext i1 %i.br to i32
  %spec.select810 = add nsw i32 %i.bq, %i.bs      ; 5 uses
  %i.bt = getelementptr inbounds nuw i8, ptr %2, i64 4 ; 8 uses
  %i.bu = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 12 uses
  %i.bv = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 8 uses
  %i.bw = load i32, ptr %i.bt, align 4, !tbaa !277
  %i.bx = icmp eq i32 %spec.select810, %i.bw
  %.pre658 = load ptr, ptr %i.bu, align 8, !tbaa !270 ; 3 uses
  br i1 %i.bx, label %bb.x, label %_ZN5ArrayIcLi0EE9push_backERKc.exit.i

bb.x:                                             ; preds = %_ZN5ArrayIcLi0EE8pop_backEv.exit.i
  %i.by = shl nsw i32 %spec.select810, 1
  %i.bz = call noundef i32 @llvm.smax.i32(i32 %i.by, i32 1) ; 5 uses
  %i.ca = load ptr, ptr %i.bv, align 8, !tbaa !274 ; 2 uses
  store i32 %i.bz, ptr %i.bt, align 4, !tbaa !277
  store i32 %i.bz, ptr %2, align 8, !tbaa !272
  %i.cb = zext nneg i32 %i.bz to i64
  %i.cc = load i32, ptr @programChecker, align 8, !tbaa !15
  %i.cd = add nsw i32 %i.cc, %i.bz                ; 3 uses
  store i32 %i.cd, ptr @programChecker, align 8, !tbaa !15
  %i.ce = load i32, ptr getelementptr inbounds nuw (i8, ptr @programChecker, i64 4), align 4, !tbaa !18
  %i.cf = icmp sgt i32 %i.cd, %i.ce
  br i1 %i.cf, label %bb.y, label %_ZN14ProgramChecker5allocEi.exit.i.i393

bb.y:                                             ; preds = %bb.x
  store i32 %i.cd, ptr getelementptr inbounds nuw (i8, ptr @programChecker, i64 4), align 4, !tbaa !18
  br label %_ZN14ProgramChecker5allocEi.exit.i.i393

_ZN14ProgramChecker5allocEi.exit.i.i393:          ; preds = %bb.y, %bb.x
  %i.cg = call noalias ptr @calloc(i64 noundef %i.cb, i64 noundef 1) #40 ; 5 uses
  store ptr %i.cg, ptr %i.bv, align 8, !tbaa !274
  %.not.i.i394 = icmp eq ptr %i.cg, null
  br i1 %.not.i.i394, label %.invoke, label %bb.z

bb.z:                                             ; preds = %_ZN14ProgramChecker5allocEi.exit.i.i393
  store ptr %i.cg, ptr %i.bu, align 8, !tbaa !270
  %.not11.i396 = icmp eq ptr %i.ca, null
  br i1 %.not11.i396, label %_ZN5ArrayIcLi0EE9push_backERKc.exit.i, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %.not12.i397 = icmp eq ptr %.pre658, null
  br i1 %.not12.i397, label %_ZN14ProgramChecker5allocEi.exit.i398, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.ch = sext i32 %spec.select810 to i64
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.cg, ptr nonnull align 1 %.pre658, i64 %i.ch, i1 false)
  %i.ci = load i32, ptr @programChecker, align 8, !tbaa !15
  %i.cj = sub i32 %i.ci, %i.bz                    ; 3 uses
  store i32 %i.cj, ptr @programChecker, align 8, !tbaa !15
  %i.ck = load i32, ptr getelementptr inbounds nuw (i8, ptr @programChecker, i64 4), align 4, !tbaa !18
  %i.cl = icmp sgt i32 %i.cj, %i.ck
  br i1 %i.cl, label %bb.ac, label %_ZN14ProgramChecker5allocEi.exit.i398

bb.ac:                                            ; preds = %bb.ab
  store i32 %i.cj, ptr getelementptr inbounds nuw (i8, ptr @programChecker, i64 4), align 4, !tbaa !18
  br label %_ZN14ProgramChecker5allocEi.exit.i398

_ZN14ProgramChecker5allocEi.exit.i398:            ; preds = %bb.ac, %bb.ab, %bb.aa
  call void @free(ptr noundef nonnull %i.ca) #38
  %.pre.pre = load ptr, ptr %i.bu, align 8, !tbaa !270
  br label %_ZN5ArrayIcLi0EE9push_backERKc.exit.i

_ZN5ArrayIcLi0EE9push_backERKc.exit.i:            ; preds = %bb.z, %_ZN14ProgramChecker5allocEi.exit.i398, %_ZN5ArrayIcLi0EE8pop_backEv.exit.i
  %i.cm = phi ptr [ %.pre658, %_ZN5ArrayIcLi0EE8pop_backEv.exit.i ], [ %.pre.pre, %_ZN14ProgramChecker5allocEi.exit.i398 ], [ %i.cg, %bb.z ]
  %i.cn = add nsw i32 %spec.select810, 1
  store i32 %i.cn, ptr %2, align 8, !tbaa !272
  %i.co = sext i32 %spec.select810 to i64
  %i.cp = getelementptr inbounds i8, ptr %i.cm, i64 %i.co
  store i8 46, ptr %i.cp, align 1, !tbaa !11
  %.pre6.i = load i32, ptr %2, align 8, !tbaa !272 ; 5 uses
  %i.cq = load i32, ptr %i.bt, align 4, !tbaa !277
  %i.cr = icmp eq i32 %.pre6.i, %i.cq
  %.pre660 = load ptr, ptr %i.bu, align 8, !tbaa !270 ; 3 uses
  br i1 %i.cr, label %bb.ad, label %bb.aj

bb.ad:                                            ; preds = %_ZN5ArrayIcLi0EE9push_backERKc.exit.i
  %i.cs = shl nsw i32 %.pre6.i, 1
  %i.ct = call noundef i32 @llvm.smax.i32(i32 %i.cs, i32 1) ; 5 uses
  %i.cu = load ptr, ptr %i.bv, align 8, !tbaa !274 ; 2 uses
  store i32 %i.ct, ptr %i.bt, align 4, !tbaa !277
  store i32 %i.ct, ptr %2, align 8, !tbaa !272
  %i.cv = zext nneg i32 %i.ct to i64
  %i.cw = load i32, ptr @programChecker, align 8, !tbaa !15
  %i.cx = add nsw i32 %i.cw, %i.ct                ; 3 uses
  store i32 %i.cx, ptr @programChecker, align 8, !tbaa !15
  %i.cy = load i32, ptr getelementptr inbounds nuw (i8, ptr @programChecker, i64 4), align 4, !tbaa !18
  %i.cz = icmp sgt i32 %i.cx, %i.cy
  br i1 %i.cz, label %bb.ae, label %_ZN14ProgramChecker5allocEi.exit.i.i384

bb.ae:                                            ; preds = %bb.ad
  store i32 %i.cx, ptr getelementptr inbounds nuw (i8, ptr @programChecker, i64 4), align 4, !tbaa !18
  br label %_ZN14ProgramChecker5allocEi.exit.i.i384

_ZN14ProgramChecker5allocEi.exit.i.i384:          ; preds = %bb.ae, %bb.ad
  %i.da = call noalias ptr @calloc(i64 noundef %i.cv, i64 noundef 1) #40 ; 5 uses
  store ptr %i.da, ptr %i.bv, align 8, !tbaa !274
  %.not.i.i385 = icmp eq ptr %i.da, null
  br i1 %.not.i.i385, label %.invoke, label %bb.af

bb.af:                                            ; preds = %_ZN14ProgramChecker5allocEi.exit.i.i384
  store ptr %i.da, ptr %i.bu, align 8, !tbaa !270
  %.not11.i387 = icmp eq ptr %i.cu, null
  br i1 %.not11.i387, label %bb.aj, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  %.not12.i388 = icmp eq ptr %.pre660, null
  br i1 %.not12.i388, label %_ZN14ProgramChecker5allocEi.exit.i389, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  %i.db = sext i32 %.pre6.i to i64
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.da, ptr nonnull align 1 %.pre660, i64 %i.db, i1 false)
  %i.dc = load i32, ptr @programChecker, align 8, !tbaa !15
  %i.dd = sub i32 %i.dc, %i.ct                    ; 3 uses
  store i32 %i.dd, ptr @programChecker, align 8, !tbaa !15
  %i.de = load i32, ptr getelementptr inbounds nuw (i8, ptr @programChecker, i64 4), align 4, !tbaa !18
  %i.df = icmp sgt i32 %i.dd, %i.de
  br i1 %i.df, label %bb.ai, label %_ZN14ProgramChecker5allocEi.exit.i389

bb.ai:                                            ; preds = %bb.ah
  store i32 %i.dd, ptr getelementptr inbounds nuw (i8, ptr @programChecker, i64 4), align 4, !tbaa !18
  br label %_ZN14ProgramChecker5allocEi.exit.i389

_ZN14ProgramChecker5allocEi.exit.i389:            ; preds = %bb.ai, %bb.ah, %bb.ag
  call void @free(ptr noundef nonnull %i.cu) #38
  %.pre659 = load ptr, ptr %i.bu, align 8, !tbaa !270
  br label %bb.aj

bb.aj:                                            ; preds = %_ZN5ArrayIcLi0EE9push_backERKc.exit.i, %_ZN14ProgramChecker5allocEi.exit.i389, %bb.af
  %i.dg = phi ptr [ %.pre660, %_ZN5ArrayIcLi0EE9push_backERKc.exit.i ], [ %.pre659, %_ZN14ProgramChecker5allocEi.exit.i389 ], [ %i.da, %bb.af ]
  %i.dh = add nsw i32 %.pre6.i, 1
  store i32 %i.dh, ptr %2, align 8, !tbaa !272
  %i.di = sext i32 %.pre6.i to i64
  %i.dj = getelementptr inbounds i8, ptr %i.dg, i64 %i.di
  store i8 0, ptr %i.dj, align 1, !tbaa !11
  %i.dk = load i32, ptr %2, align 8, !tbaa !272   ; 3 uses
  %i.dl = icmp sgt i32 %i.dk, 0
  br i1 %i.dl, label %bb.ak, label %_ZN5ArrayIcLi0EE8pop_backEv.exit.i277

bb.ak:                                            ; preds = %bb.aj
  %i.dm = add nsw i32 %i.dk, -1                   ; 2 uses
  store i32 %i.dm, ptr %2, align 8, !tbaa !272
  br label %_ZN5ArrayIcLi0EE8pop_backEv.exit.i277

_ZN5ArrayIcLi0EE8pop_backEv.exit.i277:            ; preds = %bb.ak, %bb.aj
  %i.dn = phi i32 [ %i.dk, %bb.aj ], [ %i.dm, %bb.ak ]
  %i.do = load i8, ptr %i.d, align 1, !tbaa !11   ; 2 uses
  %.not4.i = icmp eq i8 %i.do, 0
  br i1 %.not4.i, label %._crit_edge.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %_ZN5ArrayIcLi0EE8pop_backEv.exit.i277, %_ZN5ArrayIcLi0EE9push_backERKc.exit.i279
  %i.dp = phi i8 [ %i.en, %_ZN5ArrayIcLi0EE9push_backERKc.exit.i279 ], [ %i.do, %_ZN5ArrayIcLi0EE8pop_backEv.exit.i277 ]
  %.05.i278 = phi ptr [ %i.dq, %_ZN5ArrayIcLi0EE9push_backERKc.exit.i279 ], [ %i.d, %_ZN5ArrayIcLi0EE8pop_backEv.exit.i277 ] ; 2 uses
  %i.dq = getelementptr inbounds nuw i8, ptr %.05.i278, i64 1 ; 2 uses
  %i.dr = load i32, ptr %2, align 8, !tbaa !272   ; 5 uses
  %i.ds = load i32, ptr %i.bt, align 4, !tbaa !277
  %i.dt = icmp eq i32 %i.dr, %i.ds
  %.pre662 = load ptr, ptr %i.bu, align 8, !tbaa !270 ; 3 uses
  br i1 %i.dt, label %bb.al, label %_ZN5ArrayIcLi0EE9push_backERKc.exit.i279

bb.al:                                            ; preds = %.lr.ph.i
  %i.du = shl nsw i32 %i.dr, 1
  %i.dv = call noundef i32 @llvm.smax.i32(i32 %i.du, i32 1) ; 5 uses
  %i.dw = load ptr, ptr %i.bv, align 8, !tbaa !274 ; 2 uses
  store i32 %i.dv, ptr %i.bt, align 4, !tbaa !277
  store i32 %i.dv, ptr %2, align 8, !tbaa !272
  %i.dx = zext nneg i32 %i.dv to i64
  %i.dy = load i32, ptr @programChecker, align 8, !tbaa !15
  %i.dz = add nsw i32 %i.dy, %i.dv                ; 3 uses
  store i32 %i.dz, ptr @programChecker, align 8, !tbaa !15
  %i.ea = load i32, ptr getelementptr inbounds nuw (i8, ptr @programChecker, i64 4), align 4, !tbaa !18
  %i.eb = icmp sgt i32 %i.dz, %i.ea
  br i1 %i.eb, label %bb.am, label %_ZN14ProgramChecker5allocEi.exit.i.i411

bb.am:                                            ; preds = %bb.al
  store i32 %i.dz, ptr getelementptr inbounds nuw (i8, ptr @programChecker, i64 4), align 4, !tbaa !18
  br label %_ZN14ProgramChecker5allocEi.exit.i.i411

_ZN14ProgramChecker5allocEi.exit.i.i411:          ; preds = %bb.am, %bb.al
  %i.ec = call noalias ptr @calloc(i64 noundef %i.dx, i64 noundef 1) #40 ; 5 uses
  store ptr %i.ec, ptr %i.bv, align 8, !tbaa !274
  %.not.i.i412 = icmp eq ptr %i.ec, null
  br i1 %.not.i.i412, label %.invoke, label %bb.an

.invoke:                                          ; preds = %_ZN14ProgramChecker5allocEi.exit.i.i411, %_ZN14ProgramChecker5allocEi.exit.i.i402, %_ZN14ProgramChecker5allocEi.exit.i.i384, %_ZN14ProgramChecker5allocEi.exit.i.i393
  invoke void @_Z4quitPKc(ptr noundef nonnull @.str.59)
          to label %.cont unwind label %bb.ax

.cont:                                            ; preds = %.invoke
  unreachable

bb.an:                                            ; preds = %_ZN14ProgramChecker5allocEi.exit.i.i411
  store ptr %i.ec, ptr %i.bu, align 8, !tbaa !270
  %.not11.i414 = icmp eq ptr %i.dw, null
  br i1 %.not11.i414, label %.noexc284, label %bb.ao

bb.ao:                                            ; preds = %bb.an
  %.not12.i415 = icmp eq ptr %.pre662, null
  br i1 %.not12.i415, label %_ZN14ProgramChecker5allocEi.exit.i416, label %bb.ap

bb.ap:                                            ; preds = %bb.ao
  %i.ed = sext i32 %i.dr to i64
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.ec, ptr nonnull align 1 %.pre662, i64 %i.ed, i1 false)
  %i.ee = load i32, ptr @programChecker, align 8, !tbaa !15
  %i.ef = sub i32 %i.ee, %i.dv                    ; 3 uses
  store i32 %i.ef, ptr @programChecker, align 8, !tbaa !15
  %i.eg = load i32, ptr getelementptr inbounds nuw (i8, ptr @programChecker, i64 4), align 4, !tbaa !18
  %i.eh = icmp sgt i32 %i.ef, %i.eg
  br i1 %i.eh, label %bb.aq, label %_ZN14ProgramChecker5allocEi.exit.i416

bb.aq:                                            ; preds = %bb.ap
  store i32 %i.ef, ptr getelementptr inbounds nuw (i8, ptr @programChecker, i64 4), align 4, !tbaa !18
  br label %_ZN14ProgramChecker5allocEi.exit.i416

_ZN14ProgramChecker5allocEi.exit.i416:            ; preds = %bb.aq, %bb.ap, %bb.ao
  call void @free(ptr noundef nonnull %i.dw) #38
  %.pre661.pre = load ptr, ptr %i.bu, align 8, !tbaa !270
  br label %.noexc284

.noexc284:                                        ; preds = %_ZN14ProgramChecker5allocEi.exit.i416, %bb.an
  %.pre661 = phi ptr [ %.pre661.pre, %_ZN14ProgramChecker5allocEi.exit.i416 ], [ %i.ec, %bb.an ]
  %.pre.i283 = load i8, ptr %.05.i278, align 1, !tbaa !11
  br label %_ZN5ArrayIcLi0EE9push_backERKc.exit.i279

_ZN5ArrayIcLi0EE9push_backERKc.exit.i279:         ; preds = %.noexc284, %.lr.ph.i
  %i.ei = phi ptr [ %.pre662, %.lr.ph.i ], [ %.pre661, %.noexc284 ]
  %i.ej = phi i8 [ %i.dp, %.lr.ph.i ], [ %.pre.i283, %.noexc284 ]
  %i.ek = add nsw i32 %i.dr, 1
  store i32 %i.ek, ptr %2, align 8, !tbaa !272
  %i.el = sext i32 %i.dr to i64
  %i.em = getelementptr inbounds i8, ptr %i.ei, i64 %i.el
  store i8 %i.ej, ptr %i.em, align 1, !tbaa !11
  %i.en = load i8, ptr %i.dq, align 1, !tbaa !11  ; 2 uses
  %.not.i280 = icmp eq i8 %i.en, 0
  br i1 %.not.i280, label %._crit_edge.loopexit.i281, label %.lr.ph.i, !llvm.loop !278

._crit_edge.loopexit.i281:                        ; preds = %_ZN5ArrayIcLi0EE9push_backERKc.exit.i279
  %.pre6.i282 = load i32, ptr %2, align 8, !tbaa !272
  br label %._crit_edge.i

._crit_edge.i:                                    ; preds = %._crit_edge.loopexit.i281, %_ZN5ArrayIcLi0EE8pop_backEv.exit.i277
  %i.eo = phi i32 [ %.pre6.i282, %._crit_edge.loopexit.i281 ], [ %i.dn, %_ZN5ArrayIcLi0EE8pop_backEv.exit.i277 ] ; 5 uses
  %i.ep = load i32, ptr %i.bt, align 4, !tbaa !277
  %i.eq = icmp eq i32 %i.eo, %i.ep
  %.pre664 = load ptr, ptr %i.bu, align 8, !tbaa !270 ; 3 uses
  br i1 %i.eq, label %bb.ar, label %_ZN6StringpLEPKc.exit286

bb.ar:                                            ; preds = %._crit_edge.i
  %i.er = shl nsw i32 %i.eo, 1
  %i.es = call noundef i32 @llvm.smax.i32(i32 %i.er, i32 1) ; 6 uses
  %i.et = load ptr, ptr %i.bv, align 8, !tbaa !274 ; 2 uses
  store i32 %i.es, ptr %i.bt, align 4, !tbaa !277
  store i32 %i.es, ptr %2, align 8, !tbaa !272
  %i.eu = zext nneg i32 %i.es to i64
  %i.ev = load i32, ptr @programChecker, align 8, !tbaa !15
  %i.ew = add nsw i32 %i.ev, %i.es                ; 3 uses
  store i32 %i.ew, ptr @programChecker, align 8, !tbaa !15
  %i.ex = load i32, ptr getelementptr inbounds nuw (i8, ptr @programChecker, i64 4), align 4, !tbaa !18
  %i.ey = icmp sgt i32 %i.ew, %i.ex
  br i1 %i.ey, label %bb.as, label %_ZN14ProgramChecker5allocEi.exit.i.i402

bb.as:                                            ; preds = %bb.ar
  store i32 %i.ew, ptr getelementptr inbounds nuw (i8, ptr @programChecker, i64 4), align 4, !tbaa !18
  br label %_ZN14ProgramChecker5allocEi.exit.i.i402

_ZN14ProgramChecker5allocEi.exit.i.i402:          ; preds = %bb.as, %bb.ar
  %i.ez = call noalias ptr @calloc(i64 noundef %i.eu, i64 noundef 1) #40 ; 5 uses
  store ptr %i.ez, ptr %i.bv, align 8, !tbaa !274
  %.not.i.i403 = icmp eq ptr %i.ez, null
  br i1 %.not.i.i403, label %.invoke, label %bb.at

bb.at:                                            ; preds = %_ZN14ProgramChecker5allocEi.exit.i.i402
  store ptr %i.ez, ptr %i.bu, align 8, !tbaa !270
  %.not11.i405 = icmp eq ptr %i.et, null
  br i1 %.not11.i405, label %_ZN6StringpLEPKc.exit286, label %bb.au

bb.au:                                            ; preds = %bb.at
  %.not12.i406 = icmp eq ptr %.pre664, null
  br i1 %.not12.i406, label %_ZN14ProgramChecker5allocEi.exit.i407, label %bb.av

bb.av:                                            ; preds = %bb.au
  %i.fa = call noundef i32 @llvm.smin.i32(i32 %i.es, i32 %i.eo)
  %i.fb = sext i32 %i.fa to i64
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.ez, ptr nonnull align 1 %.pre664, i64 %i.fb, i1 false)
  %i.fc = load i32, ptr @programChecker, align 8, !tbaa !15
  %i.fd = sub i32 %i.fc, %i.es                    ; 3 uses
  store i32 %i.fd, ptr @programChecker, align 8, !tbaa !15
  %i.fe = load i32, ptr getelementptr inbounds nuw (i8, ptr @programChecker, i64 4), align 4, !tbaa !18
  %i.ff = icmp sgt i32 %i.fd, %i.fe
  br i1 %i.ff, label %bb.aw, label %_ZN14ProgramChecker5allocEi.exit.i407

bb.aw:                                            ; preds = %bb.av
  store i32 %i.fd, ptr getelementptr inbounds nuw (i8, ptr @programChecker, i64 4), align 4, !tbaa !18
  br label %_ZN14ProgramChecker5allocEi.exit.i407

_ZN14ProgramChecker5allocEi.exit.i407:            ; preds = %bb.aw, %bb.av, %bb.au
  call void @free(ptr noundef nonnull %i.et) #38
  %.pre663 = load ptr, ptr %i.bu, align 8, !tbaa !270
  br label %_ZN6StringpLEPKc.exit286

_ZN6StringpLEPKc.exit286:                         ; preds = %bb.at, %_ZN14ProgramChecker5allocEi.exit.i407, %._crit_edge.i
  %i.fg = phi ptr [ %i.ez, %bb.at ], [ %.pre663, %_ZN14ProgramChecker5allocEi.exit.i407 ], [ %.pre664, %._crit_edge.i ]
  %i.fh = add nsw i32 %i.eo, 1
  store i32 %i.fh, ptr %2, align 8, !tbaa !272
  %i.fi = sext i32 %i.eo to i64
  %i.fj = getelementptr inbounds i8, ptr %i.fg, i64 %i.fi
  store i8 0, ptr %i.fj, align 1, !tbaa !11
  br label %bb.ay

bb.ax:                                            ; preds = %.invoke
  %i.fk = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTIPKc
  br label %bb.hj

bb.ay:                                            ; preds = %.critedge.i, %_ZN6StringpLEPKc.exit286, %_Z6equalsPKcS0_.exit, %bb.w
  %i.fl = phi i1 [ true, %_ZN6StringpLEPKc.exit286 ], [ false, %_Z6equalsPKcS0_.exit ], [ false, %bb.w ], [ false, %.critedge.i ] ; 2 uses
  %i.fm = phi i1 [ false, %_ZN6StringpLEPKc.exit286 ], [ true, %_Z6equalsPKcS0_.exit ], [ true, %bb.w ], [ true, %.critedge.i ] ; 2 uses
  %.0206 = phi i32 [ 0, %_ZN6StringpLEPKc.exit286 ], [ 1, %_Z6equalsPKcS0_.exit ], [ 1, %bb.w ], [ 1, %.critedge.i ]
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #38
  invoke void @_ZN6StringC2EPKc(ptr noundef nonnull align 8 dereferenceable(24) %3, ptr noundef nonnull @.str.36)
          to label %bb.az unwind label %bb.be

bb.az:                                            ; preds = %bb.ay
  br i1 %i.fl, label %bb.ba, label %bb.cp

bb.ba:                                            ; preds = %bb.az
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #38
  invoke void @_ZN6StringC2EPKc(ptr noundef nonnull align 8 dereferenceable(24) %4, ptr noundef nonnull @.str.36)
          to label %.preheader556 unwind label %bb.bf

.preheader556:                                    ; preds = %bb.ba
  %i.fn = icmp sgt i32 %.0520, 1
  br i1 %i.fn, label %.lr.ph578, label %.invoke811

.lr.ph578:                                        ; preds = %.preheader556
  %i.fo = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 6 uses
  %i.fp = icmp eq i32 %.0520, 2
  %i.fq = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 2 uses
  %wide.trip.count627 = zext nneg i32 %.0520 to i64
  br label %bb.bb

bb.bb:                                            ; preds = %.lr.ph578, %_ZN5ArrayIcLi0EED2Ev.exit288
  %indvars.iv624 = phi i64 [ 1, %.lr.ph578 ], [ %indvars.iv.next625, %_ZN5ArrayIcLi0EED2Ev.exit288 ] ; 3 uses
  %.0207576 = phi i32 [ 0, %.lr.ph578 ], [ %i.hs, %_ZN5ArrayIcLi0EED2Ev.exit288 ]
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #38
  %i.fr = getelementptr inbounds nuw [8 x i8], ptr %.0168519, i64 %indvars.iv624
  %i.fs = load ptr, ptr %i.fr, align 8, !tbaa !8
  invoke void @_ZN6StringC2EPKc(ptr noundef nonnull align 8 dereferenceable(24) %5, ptr noundef %i.fs)
          to label %bb.bc unwind label %bb.bg

bb.bc:                                            ; preds = %bb.bb
  %i.ft = load i32, ptr %5, align 8, !tbaa !272   ; 6 uses
  %i.fu = add i32 %i.ft, -1                       ; 3 uses
  %.not251.not570 = icmp sgt i32 %i.ft, 0
  br i1 %.not251.not570, label %.lr.ph.preheader, label %.critedge

.lr.ph.preheader:                                 ; preds = %bb.bc
  %wide.trip.count = zext nneg i32 %i.ft to i64   ; 2 uses
  %xtraiter = and i64 %wide.trip.count, 1
  %i.fv = icmp eq i32 %i.ft, 1
  br i1 %i.fv, label %.lr.ph.epil.preheader, label %.lr.ph.preheader.new

.lr.ph.preheader.new:                             ; preds = %.lr.ph.preheader
  %unroll_iter = and i64 %wide.trip.count, 2147483646
  br label %.lr.ph

.preheader555.unr-lcssa:                          ; preds = %bb.bj
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.preheader555, label %.lr.ph.epil.preheader

.lr.ph.epil.preheader:                            ; preds = %.preheader555.unr-lcssa, %.lr.ph.preheader
  %indvars.iv.epil.init = phi i64 [ 0, %.lr.ph.preheader ], [ %indvars.iv.next.1, %.preheader555.unr-lcssa ]
  %lcmp.mod856 = trunc i32 %i.ft to i1
  call void @llvm.assume(i1 %lcmp.mod856)
  %i.fw = load ptr, ptr %i.fo, align 8, !tbaa !270
  %i.fx = getelementptr inbounds nuw i8, ptr %i.fw, i64 %indvars.iv.epil.init ; 2 uses
  %i.fy = load i8, ptr %i.fx, align 1, !tbaa !11
  %i.fz = icmp eq i8 %i.fy, 92
  br i1 %i.fz, label %bb.bd, label %.preheader555

bb.bd:                                            ; preds = %.lr.ph.epil.preheader
  store i8 47, ptr %i.fx, align 1, !tbaa !11
  br label %.preheader555

.preheader555:                                    ; preds = %.lr.ph.epil.preheader, %bb.bd, %.preheader555.unr-lcssa
  %.not817 = icmp eq i32 %i.ft, 1
  br i1 %.not817, label %.critedge, label %.lr.ph573.preheader

.lr.ph573.preheader:                              ; preds = %.preheader555
  %i.ga = zext nneg i32 %i.fu to i64
  br label %.lr.ph573

bb.be:                                            ; preds = %bb.ay
  %i.gb = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTIPKc
  br label %bb.hi

bb.bf:                                            ; preds = %bb.ba
  %i.gc = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTIPKc
  br label %bb.co

bb.bg:                                            ; preds = %bb.bb
  %i.gd = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTIPKc
  br label %bb.bs

.lr.ph:                                           ; preds = %bb.bj, %.lr.ph.preheader.new
  %indvars.iv = phi i64 [ 0, %.lr.ph.preheader.new ], [ %indvars.iv.next.1, %bb.bj ] ; 3 uses
  %niter = phi i64 [ 0, %.lr.ph.preheader.new ], [ %niter.next.1, %bb.bj ]
  %i.ge = load ptr, ptr %i.fo, align 8, !tbaa !270
  %i.gf = getelementptr inbounds nuw i8, ptr %i.ge, i64 %indvars.iv ; 2 uses
  %i.gg = load i8, ptr %i.gf, align 1, !tbaa !11
  %i.gh = icmp eq i8 %i.gg, 92
  br i1 %i.gh, label %bb.bh, label %.lr.ph.1

bb.bh:                                            ; preds = %.lr.ph
end_hunk_0
begin_hunk_1_@_Z7paqmainiPPc:bb.a

bb.bi:                                            ; preds = %.lr.ph.1
  store i8 47, ptr %i.gk, align 1, !tbaa !11
  br label %bb.bj

bb.bj:                                            ; preds = %bb.bi, %.lr.ph.1
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %.preheader555.unr-lcssa, label %.lr.ph, !llvm.loop !280

.lr.ph573:                                        ; preds = %.lr.ph573.preheader, %bb.bk
  %indvars.iv617 = phi i64 [ %i.ga, %.lr.ph573.preheader ], [ %indvars.iv.next618, %bb.bk ] ; 3 uses
  %indvars.iv.next618 = add nsw i64 %indvars.iv617, -1 ; 2 uses
  %i.gn = load ptr, ptr %i.fo, align 8, !tbaa !270
  %i.go = getelementptr inbounds nuw i8, ptr %i.gn, i64 %indvars.iv.next618 ; 2 uses
  %i.gp = load i8, ptr %i.go, align 1, !tbaa !11
  %i.gq = icmp eq i8 %i.gp, 47
  br i1 %i.gq, label %bb.bk, label %.critedge.loopexit.split.loop.exit808

bb.bk:                                            ; preds = %.lr.ph573
  store i8 0, ptr %i.go, align 1, !tbaa !11
  %i.gr = icmp samesign ugt i64 %indvars.iv617, 1
  br i1 %i.gr, label %.lr.ph573, label %.critedge, !llvm.loop !281

.critedge.loopexit.split.loop.exit808:            ; preds = %.lr.ph573
  %i.gs = trunc nuw nsw i64 %indvars.iv617 to i32
  br label %.critedge

.critedge:                                        ; preds = %bb.bk, %.critedge.loopexit.split.loop.exit808, %bb.bc, %.preheader555
  %.0184.lcssa = phi i32 [ %i.fu, %.preheader555 ], [ %i.fu, %bb.bc ], [ %i.gs, %.critedge.loopexit.split.loop.exit808 ], [ 0, %bb.bk ] ; 5 uses
  %i.gt = load ptr, ptr %i.fo, align 8            ; 3 uses
  %i.gu = zext i32 %.0184.lcssa to i64            ; 2 uses
  %i.gv = icmp sgt i32 %.0184.lcssa, 0
  br i1 %i.gv, label %.lr.ph833, label %.critedge2

bb.bl:                                            ; preds = %.lr.ph833
  %i.gw = trunc nuw i64 %i.gz to i32              ; 3 uses
  %i.gx = icmp sgt i32 %i.gw, 0
  br i1 %i.gx, label %.lr.ph833, label %.critedge2, !llvm.loop !282

.lr.ph833:                                        ; preds = %.critedge, %bb.bl
  %i.gy = phi i32 [ %i.gw, %bb.bl ], [ %.0184.lcssa, %.critedge ]
  %indvars.iv620832 = phi i64 [ %i.gz, %bb.bl ], [ %i.gu, %.critedge ]
  %i.gz = add nsw i64 %indvars.iv620832, -1       ; 4 uses
  %i.ha = getelementptr inbounds nuw i8, ptr %i.gt, i64 %i.gz
  %i.hb = load i8, ptr %i.ha, align 1, !tbaa !11
  %.not252 = icmp eq i8 %i.hb, 47
  br i1 %.not252, label %.critedge2.thread, label %bb.bl, !llvm.loop !282

.critedge2:                                       ; preds = %bb.bl, %.critedge
  %indvars.iv620.lcssa = phi i64 [ %i.gu, %.critedge ], [ %i.gz, %bb.bl ]
  %.lcssa825 = phi i32 [ %.0184.lcssa, %.critedge ], [ %i.gw, %bb.bl ]
  %i.hc = icmp eq i64 %indvars.iv620.lcssa, 0
  %i.hd = icmp sgt i32 %.0184.lcssa, 1
  %or.cond = and i1 %i.hd, %i.hc
  br i1 %or.cond, label %bb.bm, label %.critedge2.thread

bb.bm:                                            ; preds = %.critedge2
  %i.he = getelementptr inbounds nuw i8, ptr %i.gt, i64 1
  %i.hf = load i8, ptr %i.he, align 1, !tbaa !11
  %i.hg = icmp eq i8 %i.hf, 58
  %spec.select = select i1 %i.hg, i32 2, i32 0
  br label %.critedge2.thread

.critedge2.thread:                                ; preds = %.lr.ph833, %.critedge2, %bb.bm
  %.1182 = phi i32 [ %.lcssa825, %.critedge2 ], [ %spec.select, %bb.bm ], [ %i.gy, %.lr.ph833 ]
  %i.hh = invoke noundef range(i32 0, 2) i32 @_Z7putsizeR6StringS0_PKci(ptr noundef nonnull align 8 dereferenceable(24) %4, ptr noundef nonnull align 8 dereferenceable(24) %3, ptr noundef readonly %i.gt, i32 noundef %.1182)
          to label %_Z6expandR6StringS0_PKci.exit unwind label %bb.bo ; 2 uses

_Z6expandR6StringS0_PKci.exit:                    ; preds = %.critedge2.thread
  %.not253 = icmp eq i32 %i.hh, 0
  %i.hi = icmp samesign ugt i64 %indvars.iv624, 1
  %or.cond5 = or i1 %i.fp, %i.hi
  %or.cond604 = select i1 %.not253, i1 %or.cond5, i1 false
  br i1 %or.cond604, label %bb.bn, label %bb.bq

bb.bn:                                            ; preds = %_Z6expandR6StringS0_PKci.exit
  %i.hj = load ptr, ptr %i.fo, align 8, !tbaa !270
  %i.hk = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.42, ptr noundef %i.hj) ; 0 uses
  br label %bb.bq

bb.bo:                                            ; preds = %.critedge2.thread
  %i.hl = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTIPKc
  %i.hm = load i32, ptr %5, align 8, !tbaa !272
  %i.hn = load i32, ptr @programChecker, align 8, !tbaa !15
  %i.ho = sub i32 %i.hn, %i.hm                    ; 3 uses
  store i32 %i.ho, ptr @programChecker, align 8, !tbaa !15
  %i.hp = load i32, ptr getelementptr inbounds nuw (i8, ptr @programChecker, i64 4), align 4, !tbaa !18
  %i.hq = icmp sgt i32 %i.ho, %i.hp
  br i1 %i.hq, label %bb.bp, label %_ZN5ArrayIcLi0EED2Ev.exit

bb.bp:                                            ; preds = %bb.bo
  store i32 %i.ho, ptr getelementptr inbounds nuw (i8, ptr @programChecker, i64 4), align 4, !tbaa !18
  br label %_ZN5ArrayIcLi0EED2Ev.exit

_ZN5ArrayIcLi0EED2Ev.exit:                        ; preds = %bb.bo, %bb.bp
  %i.hr = load ptr, ptr %i.fq, align 8, !tbaa !274
  call void @free(ptr noundef %i.hr) #38
  br label %bb.bs

bb.bq:                                            ; preds = %bb.bn, %_Z6expandR6StringS0_PKci.exit
  %i.hs = add nuw nsw i32 %i.hh, %.0207576        ; 15 uses
  %i.ht = load i32, ptr %5, align 8, !tbaa !272
  %i.hu = load i32, ptr @programChecker, align 8, !tbaa !15
  %i.hv = sub i32 %i.hu, %i.ht                    ; 3 uses
  store i32 %i.hv, ptr @programChecker, align 8, !tbaa !15
  %i.hw = load i32, ptr getelementptr inbounds nuw (i8, ptr @programChecker, i64 4), align 4, !tbaa !18
  %i.hx = icmp sgt i32 %i.hv, %i.hw
  br i1 %i.hx, label %bb.br, label %_ZN5ArrayIcLi0EED2Ev.exit288

bb.br:                                            ; preds = %bb.bq
  store i32 %i.hv, ptr getelementptr inbounds nuw (i8, ptr @programChecker, i64 4), align 4, !tbaa !18
  br label %_ZN5ArrayIcLi0EED2Ev.exit288

_ZN5ArrayIcLi0EED2Ev.exit288:                     ; preds = %bb.bq, %bb.br
  %i.hy = load ptr, ptr %i.fq, align 8, !tbaa !274
  call void @free(ptr noundef %i.hy) #38
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #38
  %indvars.iv.next625 = add nuw nsw i64 %indvars.iv624, 1 ; 2 uses
  %exitcond628.not = icmp eq i64 %indvars.iv.next625, %wide.trip.count627
  br i1 %exitcond628.not, label %._crit_edge, label %bb.bb, !llvm.loop !283

bb.bs:                                            ; preds = %_ZN5ArrayIcLi0EED2Ev.exit, %bb.bg
  %.pn254 = phi { ptr, i32 } [ %i.hl, %_ZN5ArrayIcLi0EED2Ev.exit ], [ %i.gd, %bb.bg ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #38
  br label %bb.cm

._crit_edge:                                      ; preds = %_ZN5ArrayIcLi0EED2Ev.exit288
  %i.hz = icmp eq i32 %i.hs, 0
  br i1 %i.hz, label %.invoke811, label %bb.bu

bb.bt:                                            ; preds = %.invoke811, %bb.cd, %bb.bz
  %.sroa.19496.0 = phi ptr [ %i.ir, %bb.cd ], [ null, %bb.bz ], [ %i.z, %.invoke811 ]
  %.sroa.0488.0 = phi i32 [ %i.hs, %bb.cd ], [ %i.hs, %bb.bz ], [ 1, %.invoke811 ]
  %.sroa.19.0 = phi ptr [ null, %bb.cd ], [ %i.ae, %bb.bz ], [ %i.ae, %.invoke811 ]
  %.sroa.0.0 = phi i32 [ %i.hs, %bb.cd ], [ 1, %bb.bz ], [ 1, %.invoke811 ]
  %i.ia = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTIPKc
  br label %bb.cm

bb.bu:                                            ; preds = %._crit_edge
  %i.ib = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.ic = load ptr, ptr %i.ib, align 8, !tbaa !270
  %i.id = call noalias ptr @fopen(ptr noundef %i.ic, ptr noundef nonnull @.str.44) ; 7 uses
  %.not226 = icmp eq ptr %i.id, null
  br i1 %.not226, label %bb.bv, label %bb.bw

bb.bv:                                            ; preds = %bb.bu
  %i.ie = load ptr, ptr %i.ib, align 8, !tbaa !270
  call void @perror(ptr noundef %i.ie) #44
  br label %.invoke811

.invoke811:                                       ; preds = %._crit_edge, %.preheader556, %bb.bv
  %i.if = phi ptr [ null, %bb.bv ], [ @.str.43, %.preheader556 ], [ @.str.43, %._crit_edge ]
  invoke void @_Z4quitPKc(ptr noundef %i.if)
          to label %.cont812 unwind label %bb.bt

.cont812:                                         ; preds = %.invoke811
  unreachable

bb.bw:                                            ; preds = %bb.bu
  %i.ig = load i32, ptr @level, align 4, !tbaa !4
  %i.ih = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.ii = load ptr, ptr %i.ih, align 8, !tbaa !270
  %i.ij = call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %i.id, ptr noundef nonnull @.str.45, i32 noundef %i.ig, ptr noundef %i.ii) #38 ; 0 uses
  %i.ik = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.46, i32 noundef %i.hs) ; 0 uses
  %.not.i289.not = icmp eq i32 %i.hs, 1
  br i1 %.not.i289.not, label %_ZN5ArrayIlLi0EE6resizeEi.exit, label %bb.bx

bb.bx:                                            ; preds = %bb.bw
  %i.il = shl i32 %i.hs, 3                        ; 4 uses
  %i.im = load i32, ptr @programChecker, align 8, !tbaa !15
  %i.in = add nsw i32 %i.im, %i.il                ; 3 uses
  store i32 %i.in, ptr @programChecker, align 8, !tbaa !15
  %i.io = load i32, ptr getelementptr inbounds nuw (i8, ptr @programChecker, i64 4), align 4, !tbaa !18
  %i.ip = icmp sgt i32 %i.in, %i.io
  br i1 %i.ip, label %bb.by, label %_ZN14ProgramChecker5allocEi.exit.i.i290

bb.by:                                            ; preds = %bb.bx
  store i32 %i.in, ptr getelementptr inbounds nuw (i8, ptr @programChecker, i64 4), align 4, !tbaa !18
  br label %_ZN14ProgramChecker5allocEi.exit.i.i290

_ZN14ProgramChecker5allocEi.exit.i.i290:          ; preds = %bb.by, %bb.bx
  %i.iq = sext i32 %i.il to i64                   ; 2 uses
  %i.ir = call noalias ptr @calloc(i64 noundef %i.iq, i64 noundef 1) #40 ; 4 uses
  %.not.i.i291 = icmp eq ptr %i.ir, null
  br i1 %.not.i.i291, label %bb.bz, label %_ZN5ArrayIPcLi0EE6createEi.exit.i

bb.bz:                                            ; preds = %_ZN14ProgramChecker5allocEi.exit.i.i290
  invoke void @_Z4quitPKc(ptr noundef nonnull @.str.59)
          to label %.noexc292 unwind label %bb.bt

.noexc292:                                        ; preds = %bb.bz
  unreachable

_ZN5ArrayIPcLi0EE6createEi.exit.i:                ; preds = %_ZN14ProgramChecker5allocEi.exit.i.i290
  store i64 0, ptr %i.ir, align 8
  %i.is = load i32, ptr @programChecker, align 8, !tbaa !15 ; 4 uses
  %i.it = sub i32 %i.is, %i.il                    ; 4 uses
  store i32 %i.it, ptr @programChecker, align 8, !tbaa !15
  %i.iu = load i32, ptr getelementptr inbounds nuw (i8, ptr @programChecker, i64 4), align 4, !tbaa !18 ; 2 uses
  %i.iv = icmp sgt i32 %i.it, %i.iu
  br i1 %i.iv, label %bb.ca, label %bb.cb

bb.ca:                                            ; preds = %_ZN5ArrayIPcLi0EE6createEi.exit.i
  store i32 %i.it, ptr getelementptr inbounds nuw (i8, ptr @programChecker, i64 4), align 4, !tbaa !18
  br label %bb.cb

bb.cb:                                            ; preds = %bb.ca, %_ZN5ArrayIPcLi0EE6createEi.exit.i
  %i.iw = phi i32 [ %i.it, %bb.ca ], [ %i.iu, %_ZN5ArrayIPcLi0EE6createEi.exit.i ]
  call void @free(ptr noundef nonnull %i.z) #38
  store i32 %i.is, ptr @programChecker, align 8, !tbaa !15
  %i.ix = icmp sgt i32 %i.is, %i.iw
  br i1 %i.ix, label %bb.cc, label %_ZN14ProgramChecker5allocEi.exit.i.i294

bb.cc:                                            ; preds = %bb.cb
  store i32 %i.is, ptr getelementptr inbounds nuw (i8, ptr @programChecker, i64 4), align 4, !tbaa !18
  br label %_ZN14ProgramChecker5allocEi.exit.i.i294

_ZN14ProgramChecker5allocEi.exit.i.i294:          ; preds = %bb.cc, %bb.cb
  %i.iy = call noalias ptr @calloc(i64 noundef %i.iq, i64 noundef 1) #40 ; 3 uses
  %.not.i.i295 = icmp eq ptr %i.iy, null
  br i1 %.not.i.i295, label %bb.cd, label %_ZN5ArrayIlLi0EE6createEi.exit.i

bb.cd:                                            ; preds = %_ZN14ProgramChecker5allocEi.exit.i.i294
  invoke void @_Z4quitPKc(ptr noundef nonnull @.str.59)
          to label %.noexc299 unwind label %bb.bt

.noexc299:                                        ; preds = %bb.cd
  unreachable

_ZN5ArrayIlLi0EE6createEi.exit.i:                 ; preds = %_ZN14ProgramChecker5allocEi.exit.i.i294
  store i64 0, ptr %i.iy, align 8
  %i.iz = load i32, ptr @programChecker, align 8, !tbaa !15
  %i.ja = sub i32 %i.iz, %i.il                    ; 3 uses
  store i32 %i.ja, ptr @programChecker, align 8, !tbaa !15
  %i.jb = load i32, ptr getelementptr inbounds nuw (i8, ptr @programChecker, i64 4), align 4, !tbaa !18
  %i.jc = icmp sgt i32 %i.ja, %i.jb
  br i1 %i.jc, label %bb.ce, label %_ZN14ProgramChecker5allocEi.exit.i298

bb.ce:                                            ; preds = %_ZN5ArrayIlLi0EE6createEi.exit.i
  store i32 %i.ja, ptr getelementptr inbounds nuw (i8, ptr @programChecker, i64 4), align 4, !tbaa !18
  br label %_ZN14ProgramChecker5allocEi.exit.i298

_ZN14ProgramChecker5allocEi.exit.i298:            ; preds = %bb.ce, %_ZN5ArrayIlLi0EE6createEi.exit.i
  call void @free(ptr noundef nonnull %i.ae) #38
  br label %_ZN5ArrayIlLi0EE6resizeEi.exit

_ZN5ArrayIlLi0EE6resizeEi.exit:                   ; preds = %_ZN14ProgramChecker5allocEi.exit.i298, %bb.bw
  %.sroa.28500.3536 = phi ptr [ %i.z, %bb.bw ], [ %i.ir, %_ZN14ProgramChecker5allocEi.exit.i298 ] ; 4 uses
  %.sroa.19.12 = phi ptr [ %i.ae, %bb.bw ], [ %i.iy, %_ZN14ProgramChecker5allocEi.exit.i298 ] ; 4 uses
  %i.jd = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.je = load ptr, ptr %i.jd, align 8, !tbaa !270
  call void @rewind(ptr noundef nonnull %i.id)
  %i.jf = invoke noundef ptr @_Z7getlineP8_IO_FILE(ptr noundef nonnull %i.id)
          to label %.preheader554.preheader unwind label %bb.ch ; 0 uses

.preheader554.preheader:                          ; preds = %_ZN5ArrayIlLi0EE6resizeEi.exit
  %wide.trip.count632 = zext nneg i32 %i.hs to i64
  br label %.preheader554

.preheader554:                                    ; preds = %.preheader554.preheader, %bb.cj
  %indvars.iv629 = phi i64 [ 0, %.preheader554.preheader ], [ %indvars.iv.next630, %bb.cj ] ; 3 uses
  %.0175581 = phi ptr [ %i.je, %.preheader554.preheader ], [ %i.jl, %bb.cj ] ; 2 uses
  %i.jg = invoke noundef ptr @_Z7getlineP8_IO_FILE(ptr noundef nonnull %i.id)
          to label %bb.cf unwind label %bb.ci

bb.cf:                                            ; preds = %.preheader554
  %i.jh = call i64 @__isoc23_strtol(ptr noundef nonnull %i.jg, ptr noundef null, i32 noundef 10) #38, !inline_history !284
  %i.ji = getelementptr inbounds nuw [8 x i8], ptr %.sroa.19.12, i64 %indvars.iv629
  store i64 %i.jh, ptr %i.ji, align 8, !tbaa !285
  %i.jj = getelementptr inbounds nuw [8 x i8], ptr %.sroa.28500.3536, i64 %indvars.iv629
  store ptr %.0175581, ptr %i.jj, align 8, !tbaa !8
  br label %bb.cg

bb.cg:                                            ; preds = %bb.cg, %bb.cf
  %.1176 = phi ptr [ %.0175581, %bb.cf ], [ %i.jl, %bb.cg ] ; 3 uses
  %i.jk = load i8, ptr %.1176, align 1, !tbaa !11
  %.not250 = icmp eq i8 %i.jk, 10
  %i.jl = getelementptr inbounds nuw i8, ptr %.1176, i64 1 ; 2 uses
  br i1 %.not250, label %bb.cj, label %bb.cg, !llvm.loop !286

bb.ch:                                            ; preds = %_ZN5ArrayIlLi0EE6resizeEi.exit
  %i.jm = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTIPKc
  br label %bb.cm

bb.ci:                                            ; preds = %.preheader554
  %i.jn = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTIPKc
  br label %bb.cm

bb.cj:                                            ; preds = %bb.cg
  store i8 0, ptr %.1176, align 1, !tbaa !11
  %indvars.iv.next630 = add nuw nsw i64 %indvars.iv629, 1 ; 2 uses
  %exitcond633.not = icmp eq i64 %indvars.iv.next630, %wide.trip.count632
  br i1 %exitcond633.not, label %bb.ck, label %.preheader554, !llvm.loop !287

bb.ck:                                            ; preds = %bb.cj
  %i.jo = call i32 @fseek(ptr noundef nonnull %i.id, i64 noundef 0, i32 noundef 2) ; 0 uses
  %i.jp = load i32, ptr %4, align 8, !tbaa !272
  %i.jq = load i32, ptr @programChecker, align 8, !tbaa !15
  %i.jr = sub i32 %i.jq, %i.jp                    ; 3 uses
  store i32 %i.jr, ptr @programChecker, align 8, !tbaa !15
  %i.js = load i32, ptr getelementptr inbounds nuw (i8, ptr @programChecker, i64 4), align 4, !tbaa !18
  %i.jt = icmp sgt i32 %i.jr, %i.js
  br i1 %i.jt, label %bb.cl, label %_ZN5ArrayIcLi0EED2Ev.exit301

bb.cl:                                            ; preds = %bb.ck
  store i32 %i.jr, ptr getelementptr inbounds nuw (i8, ptr @programChecker, i64 4), align 4, !tbaa !18
  br label %_ZN5ArrayIcLi0EED2Ev.exit301

_ZN5ArrayIcLi0EED2Ev.exit301:                     ; preds = %bb.ck, %bb.cl
  %i.ju = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.jv = load ptr, ptr %i.ju, align 8, !tbaa !274
  call void @free(ptr noundef %i.jv) #38
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #38
  br label %bb.cp

bb.cm:                                            ; preds = %bb.ch, %bb.ci, %bb.bt, %bb.bs
  %.sroa.19496.1 = phi ptr [ %i.z, %bb.bs ], [ %.sroa.28500.3536, %bb.ci ], [ %.sroa.28500.3536, %bb.ch ], [ %.sroa.19496.0, %bb.bt ]
  %.sroa.0488.1 = phi i32 [ 1, %bb.bs ], [ %i.hs, %bb.ci ], [ %i.hs, %bb.ch ], [ %.sroa.0488.0, %bb.bt ]
  %.sroa.19.1 = phi ptr [ %i.ae, %bb.bs ], [ %.sroa.19.12, %bb.ci ], [ %.sroa.19.12, %bb.ch ], [ %.sroa.19.0, %bb.bt ]
  %.sroa.0.1 = phi i32 [ 1, %bb.bs ], [ %i.hs, %bb.ci ], [ %i.hs, %bb.ch ], [ %.sroa.0.0, %bb.bt ]
  %.pn254.pn = phi { ptr, i32 } [ %.pn254, %bb.bs ], [ %i.jn, %bb.ci ], [ %i.jm, %bb.ch ], [ %i.ia, %bb.bt ]
  %i.jw = load i32, ptr %4, align 8, !tbaa !272
  %i.jx = load i32, ptr @programChecker, align 8, !tbaa !15
  %i.jy = sub i32 %i.jx, %i.jw                    ; 3 uses
  store i32 %i.jy, ptr @programChecker, align 8, !tbaa !15
  %i.jz = load i32, ptr getelementptr inbounds nuw (i8, ptr @programChecker, i64 4), align 4, !tbaa !18
  %i.ka = icmp sgt i32 %i.jy, %i.jz
  br i1 %i.ka, label %bb.cn, label %_ZN5ArrayIcLi0EED2Ev.exit303

bb.cn:                                            ; preds = %bb.cm
  store i32 %i.jy, ptr getelementptr inbounds nuw (i8, ptr @programChecker, i64 4), align 4, !tbaa !18
  br label %_ZN5ArrayIcLi0EED2Ev.exit303

_ZN5ArrayIcLi0EED2Ev.exit303:                     ; preds = %bb.cm, %bb.cn
  %i.kb = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.kc = load ptr, ptr %i.kb, align 8, !tbaa !274
  call void @free(ptr noundef %i.kc) #38
  br label %bb.co

bb.co:                                            ; preds = %_ZN5ArrayIcLi0EED2Ev.exit303, %bb.bf
  %.sroa.19496.2 = phi ptr [ %.sroa.19496.1, %_ZN5ArrayIcLi0EED2Ev.exit303 ], [ %i.z, %bb.bf ]
  %.sroa.0488.2 = phi i32 [ %.sroa.0488.1, %_ZN5ArrayIcLi0EED2Ev.exit303 ], [ 1, %bb.bf ]
  %.sroa.19.2 = phi ptr [ %.sroa.19.1, %_ZN5ArrayIcLi0EED2Ev.exit303 ], [ %i.ae, %bb.bf ]
  %.sroa.0.2 = phi i32 [ %.sroa.0.1, %_ZN5ArrayIcLi0EED2Ev.exit303 ], [ 1, %bb.bf ]
  %.pn254.pn.pn = phi { ptr, i32 } [ %.pn254.pn, %_ZN5ArrayIcLi0EED2Ev.exit303 ], [ %i.gc, %bb.bf ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #38
  br label %bb.hg

bb.cp:                                            ; preds = %_ZN5ArrayIcLi0EED2Ev.exit301, %bb.az
  %.sroa.19496.3 = phi ptr [ %.sroa.28500.3536, %_ZN5ArrayIcLi0EED2Ev.exit301 ], [ %i.z, %bb.az ] ; 8 uses
  %.sroa.14494.0 = phi i32 [ %i.hs, %_ZN5ArrayIcLi0EED2Ev.exit301 ], [ 1, %bb.az ] ; 12 uses
  %.sroa.19.3 = phi ptr [ %.sroa.19.12, %_ZN5ArrayIcLi0EED2Ev.exit301 ], [ %i.ae, %bb.az ] ; 9 uses
  %.1208 = phi i32 [ %i.hs, %_ZN5ArrayIcLi0EED2Ev.exit301 ], [ 0, %bb.az ] ; 2 uses
  %.0204 = phi ptr [ %i.id, %_ZN5ArrayIcLi0EED2Ev.exit301 ], [ null, %bb.az ]
  br i1 %i.fm, label %bb.cq, label %.loopexit548

bb.cq:                                            ; preds = %bb.cp
  %i.kd = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 4 uses
  %i.ke = load ptr, ptr %i.kd, align 8, !tbaa !270
  %i.kf = call noalias ptr @fopen(ptr noundef %i.ke, ptr noundef nonnull @.str.47) ; 8 uses
  %.not227 = icmp eq ptr %i.kf, null
  br i1 %.not227, label %bb.cr, label %bb.ct

bb.cr:                                            ; preds = %bb.cq
  %i.kg = load ptr, ptr %i.kd, align 8, !tbaa !270
  call void @perror(ptr noundef %i.kg) #44
  invoke void @_Z4quitPKc(ptr noundef null)
          to label %.unreachable544 unwind label %bb.cs

bb.cs:                                            ; preds = %bb.ee, %bb.cr
  %.sroa.19496.4 = phi ptr [ %.sroa.19496.6, %bb.ee ], [ %.sroa.19496.3, %bb.cr ]
  %.sroa.0488.4 = phi i32 [ %.sroa.0488.6, %bb.ee ], [ %.sroa.14494.0, %bb.cr ] ; 2 uses
  %.sroa.19.4 = phi ptr [ %.sroa.19.6, %bb.ee ], [ %.sroa.19.3, %bb.cr ]
  %i.kh = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTIPKc
  br label %bb.hg

.unreachable544:                                  ; preds = %bb.cr
  unreachable

bb.ct:                                            ; preds = %bb.cq
  %i.ki = invoke noundef ptr @_Z7getlineP8_IO_FILE(ptr noundef nonnull %i.kf)
          to label %bb.cu unwind label %.loopexit.split-lp550 ; 2 uses

bb.cu:                                            ; preds = %bb.ct
  %i.kj = call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %i.ki, ptr noundef nonnull dereferenceable(8) @.str.48, i64 noundef 7) #43
  %.not228 = icmp eq i32 %i.kj, 0
  br i1 %.not228, label %bb.cw, label %bb.cv

bb.cv:                                            ; preds = %bb.cu
  %i.kk = load ptr, ptr %i.kd, align 8, !tbaa !270
  %i.kl = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.49, ptr noundef %i.kk, ptr noundef nonnull @.str.50) ; 0 uses
  invoke void @_Z4quitPKc(ptr noundef null)
          to label %.unreachable unwind label %.loopexit.split-lp550

.loopexit549:                                     ; preds = %bb.cx
  %lpad.loopexit551 = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTIPKc
  br label %bb.hg

.loopexit.split-lp550:                            ; preds = %bb.ct, %bb.cv
  %lpad.loopexit.split-lp552 = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTIPKc
  br label %bb.hg

.unreachable:                                     ; preds = %bb.cv
  unreachable

bb.cw:                                            ; preds = %bb.cu
  %i.km = getelementptr inbounds nuw i8, ptr %i.ki, i64 7
  %i.kn = load i8, ptr %i.km, align 1, !tbaa !11  ; 2 uses
  %i.ko = sext i8 %i.kn to i32
  %i.kp = add nsw i32 %i.ko, -48
  %i.kq = add i8 %i.kn, -58
  %or.cond7 = icmp ult i8 %i.kq, -10
  %spec.store.select = select i1 %or.cond7, i32 5, i32 %i.kp
  store i32 %spec.store.select, ptr @level, align 4
  br label %bb.cx

bb.cx:                                            ; preds = %bb.cz, %bb.cw
  %.2209 = phi i32 [ %.1208, %bb.cw ], [ %i.ks, %bb.cz ] ; 20 uses
  %i.kr = invoke noundef ptr @_Z7getlineP8_IO_FILE(ptr noundef nonnull %i.kf)
          to label %bb.cy unwind label %.loopexit549

end_hunk_1

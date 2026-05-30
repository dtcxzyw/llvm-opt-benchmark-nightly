inline.NumInlined: 474
inline.NumDeleted: 60
begin_hunk_0_@_ZN6icu_7812RegexCompile13scanPosixPropEv:bb.a
  %i.ay = load i64, ptr %i.ax, align 8
  %i.az = sub nsw i64 %i.x, %i.ay                 ; 4 uses
  %i.ba = icmp sgt i64 %i.az, -1
  br i1 %i.ba, label %bb.l, label %bb.o

bb.l:                                             ; preds = %.critedge
  %i.bb = getelementptr inbounds nuw i8, ptr %i.aw, i64 28
  %i.bc = load i32, ptr %i.bb, align 4
  %i.bd = sext i32 %i.bc to i64
  %i.be = icmp slt i64 %i.az, %i.bd
  br i1 %i.be, label %bb.m, label %bb.o

bb.m:                                             ; preds = %bb.l
  %i.bf = getelementptr inbounds nuw i8, ptr %i.aw, i64 48
  %i.bg = load ptr, ptr %i.bf, align 8
  %i.bh = getelementptr inbounds nuw [2 x i8], ptr %i.bg, i64 %i.az
  %i.bi = load i16, ptr %i.bh, align 2
  %i.bj = icmp ult i16 %i.bi, -9216
  br i1 %i.bj, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  %i.bk = trunc nuw nsw i64 %i.az to i32
  %i.bl = getelementptr inbounds nuw i8, ptr %i.aw, i64 40
  store i32 %i.bk, ptr %i.bl, align 8
  br label %bb.p

bb.o:                                             ; preds = %bb.m, %bb.l, %.critedge
  call void @utext_setNativeIndex_78(ptr noundef nonnull %i.aw, i64 noundef %i.x) #9
  br label %bb.p

bb.p:                                             ; preds = %bb.n, %bb.o, %bb.k
  %.020 = phi ptr [ %i.at, %bb.k ], [ null, %bb.o ], [ null, %bb.n ]
  call void @_ZN6icu_7813UnicodeStringD1Ev(ptr noundef nonnull align 8 dereferenceable(64) %1) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #9
  br label %bb.q

bb.q:                                             ; preds = %bb.a, %bb.p
  %.0 = phi ptr [ %.020, %bb.p ], [ null, %bb.a ]
  ret ptr %.0
}

declare noundef i32 @_ZNK6icu_7813UnicodeString11moveIndex32Eii(ptr noundef nonnull align 8 dereferenceable(64), i32 noundef, i32 noundef) local_unnamed_addr #1

declare noundef i32 @_ZNK6icu_7813UnicodeString8char32AtEi(ptr noundef nonnull align 8 dereferenceable(64), i32 noundef) local_unnamed_addr #1

declare noundef nonnull align 8 dereferenceable(64) ptr @_ZN6icu_7813UnicodeString8foldCaseEj(ptr noundef nonnull align 8 dereferenceable(64), i32 noundef) local_unnamed_addr #1

declare signext i8 @u_hasBinaryProperty_78(i32 noundef, i32 noundef) local_unnamed_addr #1

declare void @_ZN6icu_789UVector6415insertElementAtEliR10UErrorCode(ptr noundef nonnull align 8 dereferenceable(32), i64 noundef, i32 noundef, ptr noundef nonnull align 4 dereferenceable(4)) local_unnamed_addr #1

declare void @_ZN6icu_789UVector3212setElementAtEii(ptr noundef nonnull align 8 dereferenceable(32), i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nounwind uwtable
define dso_local noundef i32 @_ZN6icu_7812RegexCompile14maxMatchLengthEii(ptr noundef nonnull readonly align 8 captures(none) dereferenceable(512) %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #0 align 2 {
bb.a:
  %3 = alloca %"class.icu_78::UVector32", align 8 ; 10 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8              ; 2 uses
  %i.c = load i32, ptr %i.b, align 4
  %i.d = icmp slt i32 %i.c, 1
  br i1 %i.d, label %bb.b, label %bb.ac

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #9
  %i.e = add i32 %2, 1                            ; 3 uses
  call void @_ZN6icu_789UVector32C1EiR10UErrorCode(ptr noundef nonnull align 8 dereferenceable(32) %3, i32 noundef %i.e, ptr noundef nonnull align 4 dereferenceable(4) %i.b) #9
  call void @_ZN6icu_789UVector327setSizeEi(ptr noundef nonnull align 8 dereferenceable(32) %3, i32 noundef %i.e) #9
  %.not91134 = icmp sgt i32 %1, %2
  br i1 %.not91134, label %_ZNK6icu_789UVector3210elementAtiEi.exit102.thread, label %.lr.ph

.lr.ph146:                                        ; preds = %.lr.ph
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.g = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.h = getelementptr inbounds nuw i8, ptr %3, i64 24 ; 4 uses
  br label %bb.c

.lr.ph:                                           ; preds = %bb.b, %.lr.ph
  %.074135 = phi i32 [ %i.i, %.lr.ph ], [ %1, %bb.b ] ; 3 uses
  call void @_ZN6icu_789UVector3212setElementAtEii(ptr noundef nonnull align 8 dereferenceable(32) %3, i32 noundef 0, i32 noundef %.074135) #9
  %i.i = add i32 %.074135, 1
  %exitcond.not = icmp eq i32 %.074135, %2
  br i1 %exitcond.not, label %.lr.ph146, label %.lr.ph, !llvm.loop !26

bb.c:                                             ; preds = %.lr.ph146, %_ZNK6icu_789UVector3210elementAtiEi.exit102.thread126
  %.1145 = phi i32 [ %1, %.lr.ph146 ], [ %i.eg, %_ZNK6icu_789UVector3210elementAtiEi.exit102.thread126 ] ; 57 uses
  %.075144 = phi i32 [ 0, %.lr.ph146 ], [ %.7129, %_ZNK6icu_789UVector3210elementAtiEi.exit102.thread126 ] ; 2 uses
  %i.j = load ptr, ptr %i.f, align 8
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 32
  %i.l = load ptr, ptr %i.k, align 8              ; 7 uses
  %i.m = icmp sgt i32 %.1145, -1                  ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  %i.o = load i32, ptr %i.n, align 8              ; 6 uses
  %i.p = icmp slt i32 %.1145, %i.o
  %or.cond.i = select i1 %i.m, i1 %i.p, i1 false
  br i1 %or.cond.i, label %bb.d, label %_ZNK6icu_789UVector6410elementAtiEi.exit

bb.d:                                             ; preds = %bb.c
  %i.q = getelementptr inbounds nuw i8, ptr %i.l, i64 24
  %i.r = load ptr, ptr %i.q, align 8
  %i.s = zext nneg i32 %.1145 to i64
  %i.t = getelementptr inbounds nuw [8 x i8], ptr %i.r, i64 %i.s
  %i.u = load i64, ptr %i.t, align 8
  br label %_ZNK6icu_789UVector6410elementAtiEi.exit

_ZNK6icu_789UVector6410elementAtiEi.exit:         ; preds = %bb.c, %bb.d
  %i.v = phi i64 [ %i.u, %bb.d ], [ 0, %bb.c ]    ; 5 uses
  %i.w = trunc i64 %i.v to i32                    ; 3 uses
  %i.x = load i32, ptr %i.g, align 8              ; 4 uses
  %i.y = icmp sgt i32 %i.x, %.1145
  %or.cond.i94 = select i1 %i.m, i1 %i.y, i1 false
  br i1 %or.cond.i94, label %_ZNK6icu_789UVector3210elementAtiEi.exit, label %_ZNK6icu_789UVector3210elementAtiEi.exit.thread

_ZNK6icu_789UVector3210elementAtiEi.exit:         ; preds = %_ZNK6icu_789UVector6410elementAtiEi.exit
  %i.z = load ptr, ptr %i.h, align 8
  %i.aa = zext nneg i32 %.1145 to i64
  %i.ab = getelementptr inbounds nuw [4 x i8], ptr %i.z, i64 %i.aa
  %i.ac = load i32, ptr %i.ab, align 4
  %spec.select190 = call i32 @llvm.smax.i32(i32 %i.ac, i32 %.075144)
  br label %_ZNK6icu_789UVector3210elementAtiEi.exit96

_ZNK6icu_789UVector3210elementAtiEi.exit.thread:  ; preds = %_ZNK6icu_789UVector6410elementAtiEi.exit
  %spec.select = call i32 @llvm.smax.i32(i32 %.075144, i32 0)
  br label %_ZNK6icu_789UVector3210elementAtiEi.exit96

_ZNK6icu_789UVector3210elementAtiEi.exit96:       ; preds = %_ZNK6icu_789UVector3210elementAtiEi.exit, %_ZNK6icu_789UVector3210elementAtiEi.exit.thread
  %.176 = phi i32 [ %spec.select, %_ZNK6icu_789UVector3210elementAtiEi.exit.thread ], [ %spec.select190, %_ZNK6icu_789UVector3210elementAtiEi.exit ] ; 46 uses
  %i.ad = lshr i64 %i.v, 24
  %trunc = trunc i64 %i.ad to i8
  switch i8 %trunc, label %bb.ab [
    i8 0, label %_ZNK6icu_789UVector3210elementAtiEi.exit102
    i8 2, label %_ZNK6icu_789UVector3210elementAtiEi.exit102
    i8 5, label %_ZNK6icu_789UVector3210elementAtiEi.exit102
    i8 7, label %_ZNK6icu_789UVector3210elementAtiEi.exit102
    i8 8, label %_ZNK6icu_789UVector3210elementAtiEi.exit102
    i8 9, label %_ZNK6icu_789UVector3210elementAtiEi.exit102
    i8 16, label %_ZNK6icu_789UVector3210elementAtiEi.exit102
    i8 53, label %_ZNK6icu_789UVector3210elementAtiEi.exit102
    i8 17, label %_ZNK6icu_789UVector3210elementAtiEi.exit102
    i8 20, label %_ZNK6icu_789UVector3210elementAtiEi.exit102
    i8 23, label %_ZNK6icu_789UVector3210elementAtiEi.exit102
    i8 24, label %_ZNK6icu_789UVector3210elementAtiEi.exit102
    i8 42, label %_ZNK6icu_789UVector3210elementAtiEi.exit102
    i8 54, label %_ZNK6icu_789UVector3210elementAtiEi.exit102
    i8 55, label %_ZNK6icu_789UVector3210elementAtiEi.exit102
    i8 31, label %_ZNK6icu_789UVector3210elementAtiEi.exit102
    i8 35, label %_ZNK6icu_789UVector3210elementAtiEi.exit102
    i8 43, label %_ZNK6icu_789UVector3210elementAtiEi.exit102
    i8 30, label %_ZNK6icu_789UVector3210elementAtiEi.exit102
    i8 32, label %_ZNK6icu_789UVector3210elementAtiEi.exit102
    i8 33, label %_ZNK6icu_789UVector3210elementAtiEi.exit102
    i8 46, label %_ZNK6icu_789UVector3210elementAtiEi.exit102
    i8 45, label %_ZNK6icu_789UVector3210elementAtiEi.exit102
    i8 47, label %_ZNK6icu_789UVector3210elementAtiEi.exit102
    i8 48, label %_ZNK6icu_789UVector3210elementAtiEi.exit102
    i8 34, label %_ZNK6icu_789UVector3210elementAtiEi.exit102.thread
    i8 41, label %_ZNK6icu_789UVector3210elementAtiEi.exit102.thread
    i8 19, label %_ZNK6icu_789UVector3210elementAtiEi.exit102.thread
    i8 10, label %bb.e
    i8 49, label %bb.e
    i8 11, label %bb.e
    i8 22, label %bb.e
    i8 56, label %bb.e
    i8 57, label %bb.e
    i8 58, label %bb.e
    i8 39, label %bb.e
    i8 21, label %bb.e
    i8 12, label %bb.e
    i8 27, label %bb.e
    i8 3, label %bb.f
    i8 13, label %bb.h
    i8 36, label %bb.h
    i8 15, label %bb.h
    i8 18, label %bb.h
    i8 1, label %bb.l
    i8 6, label %bb.n
    i8 4, label %bb.r
    i8 40, label %bb.t
    i8 25, label %bb.v
    i8 26, label %bb.v
    i8 28, label %bb.y
    i8 29, label %bb.y
    i8 50, label %_ZNK6icu_789UVector3210elementAtiEi.exit102.thread
    i8 52, label %_ZNK6icu_789UVector3210elementAtiEi.exit102.thread
    i8 51, label %_ZNK6icu_789UVector3210elementAtiEi.exit102.thread
    i8 37, label %_ZNK6icu_789UVector3210elementAtiEi.exit102
    i8 38, label %_ZNK6icu_789UVector3210elementAtiEi.exit102
    i8 44, label %.preheader
  ]

.preheader:                                       ; preds = %_ZNK6icu_789UVector3210elementAtiEi.exit96
  %.5136 = add nsw i32 %.1145, 1                  ; 2 uses
  %.not93.not137 = icmp slt i32 %.1145, %2
  br i1 %.not93.not137, label %.lr.ph140, label %_ZNK6icu_789UVector3210elementAtiEi.exit102

.lr.ph140:                                        ; preds = %.preheader
  %i.ae = getelementptr inbounds nuw i8, ptr %i.l, i64 24
  br label %bb.z

bb.e:                                             ; preds = %_ZNK6icu_789UVector3210elementAtiEi.exit96, %_ZNK6icu_789UVector3210elementAtiEi.exit96, %_ZNK6icu_789UVector3210elementAtiEi.exit96, %_ZNK6icu_789UVector3210elementAtiEi.exit96, %_ZNK6icu_789UVector3210elementAtiEi.exit96, %_ZNK6icu_789UVector3210elementAtiEi.exit96, %_ZNK6icu_789UVector3210elementAtiEi.exit96, %_ZNK6icu_789UVector3210elementAtiEi.exit96, %_ZNK6icu_789UVector3210elementAtiEi.exit96, %_ZNK6icu_789UVector3210elementAtiEi.exit96, %_ZNK6icu_789UVector3210elementAtiEi.exit96
  %i.af = icmp samesign ult i32 %.176, 2147483645
  %i.ag = add nuw nsw i32 %.176, 2
  br i1 %i.af, label %_ZNK6icu_789UVector3210elementAtiEi.exit102.thread126, label %_ZNK6icu_789UVector3210elementAtiEi.exit102.thread

bb.f:                                             ; preds = %_ZNK6icu_789UVector3210elementAtiEi.exit96
  %i.ah = and i32 %.176, -2
  %.not = icmp eq i32 %i.ah, 2147483646
  %i.ai = add nsw i32 %.176, 1
  %.0.i97 = select i1 %.not, i32 2147483647, i32 %i.ai ; 3 uses
  %i.aj = and i32 %i.w, 16777215
  %i.ak = icmp samesign ugt i32 %i.aj, 65536
  br i1 %i.ak, label %bb.g, label %_ZNK6icu_789UVector3210elementAtiEi.exit102

bb.g:                                             ; preds = %bb.f
  %i.al = icmp sgt i32 %.0.i97, 2147483645
  %i.am = add nsw i32 %.0.i97, 1
  br i1 %i.al, label %_ZNK6icu_789UVector3210elementAtiEi.exit102.thread, label %_ZNK6icu_789UVector3210elementAtiEi.exit102.thread126

bb.h:                                             ; preds = %_ZNK6icu_789UVector3210elementAtiEi.exit96, %_ZNK6icu_789UVector3210elementAtiEi.exit96, %_ZNK6icu_789UVector3210elementAtiEi.exit96, %_ZNK6icu_789UVector3210elementAtiEi.exit96
  %i.an = and i32 %i.w, 16777215                  ; 3 uses
  %i.ao = icmp slt i32 %i.an, %.1145
  br i1 %i.ao, label %_ZNK6icu_789UVector3210elementAtiEi.exit102.thread, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ap = icmp sgt i32 %i.x, %i.an
  br i1 %i.ap, label %bb.j, label %_ZNK6icu_789UVector3210elementAtiEi.exit100

bb.j:                                             ; preds = %bb.i
  %i.aq = load ptr, ptr %i.h, align 8
  %i.ar = and i64 %i.v, 16777215
  %i.as = getelementptr inbounds nuw [4 x i8], ptr %i.aq, i64 %i.ar
  %i.at = load i32, ptr %i.as, align 4
  br label %_ZNK6icu_789UVector3210elementAtiEi.exit100

_ZNK6icu_789UVector3210elementAtiEi.exit100:      ; preds = %bb.i, %bb.j
  %i.au = phi i32 [ %i.at, %bb.j ], [ 0, %bb.i ]
  %i.av = icmp slt i32 %i.au, %.176
  br i1 %i.av, label %bb.k, label %_ZNK6icu_789UVector3210elementAtiEi.exit102.thread126

bb.k:                                             ; preds = %_ZNK6icu_789UVector3210elementAtiEi.exit100
  call void @_ZN6icu_789UVector3212setElementAtEii(ptr noundef nonnull align 8 dereferenceable(32) %3, i32 noundef %.176, i32 noundef %i.an) #9
  br label %_ZNK6icu_789UVector3210elementAtiEi.exit102.thread126

bb.l:                                             ; preds = %_ZNK6icu_789UVector3210elementAtiEi.exit96
  %i.aw = add nsw i32 %.1145, 1                   ; 2 uses
  %i.ax = icmp sgt i32 %.1145, -2
  %i.ay = icmp sgt i32 %i.x, %i.aw
  %or.cond.i101 = select i1 %i.ax, i1 %i.ay, i1 false
  br i1 %or.cond.i101, label %bb.m, label %_ZNK6icu_789UVector3210elementAtiEi.exit102.thread126

bb.m:                                             ; preds = %bb.l
  %i.az = load ptr, ptr %i.h, align 8
  %i.ba = zext nneg i32 %i.aw to i64
  %i.bb = getelementptr inbounds nuw [4 x i8], ptr %i.az, i64 %i.ba
  %i.bc = load i32, ptr %i.bb, align 4
  br label %_ZNK6icu_789UVector3210elementAtiEi.exit102

bb.n:                                             ; preds = %_ZNK6icu_789UVector3210elementAtiEi.exit96
  %i.bd = and i32 %i.w, 16777215                  ; 3 uses
  %i.be = icmp sgt i32 %i.bd, %.1145
  br i1 %i.be, label %bb.o, label %_ZNK6icu_789UVector3210elementAtiEi.exit102.thread

bb.o:                                             ; preds = %bb.n
  %i.bf = icmp sgt i32 %i.x, %i.bd
  br i1 %i.bf, label %bb.p, label %_ZNK6icu_789UVector3210elementAtiEi.exit104

bb.p:                                             ; preds = %bb.o
  %i.bg = load ptr, ptr %i.h, align 8
  %i.bh = and i64 %i.v, 16777215
  %i.bi = getelementptr inbounds nuw [4 x i8], ptr %i.bg, i64 %i.bh
  %i.bj = load i32, ptr %i.bi, align 4
  br label %_ZNK6icu_789UVector3210elementAtiEi.exit104

_ZNK6icu_789UVector3210elementAtiEi.exit104:      ; preds = %bb.o, %bb.p
  %i.bk = phi i32 [ %i.bj, %bb.p ], [ 0, %bb.o ]
  %i.bl = icmp sgt i32 %.176, %i.bk
  br i1 %i.bl, label %bb.q, label %_ZNK6icu_789UVector3210elementAtiEi.exit102

bb.q:                                             ; preds = %_ZNK6icu_789UVector3210elementAtiEi.exit104
  call void @_ZN6icu_789UVector3212setElementAtEii(ptr noundef nonnull align 8 dereferenceable(32) %3, i32 noundef %.176, i32 noundef %i.bd) #9
  br label %_ZNK6icu_789UVector3210elementAtiEi.exit102

bb.r:                                             ; preds = %_ZNK6icu_789UVector3210elementAtiEi.exit96
  %i.bm = add nsw i32 %.1145, 1                   ; 3 uses
  %i.bn = icmp sgt i32 %.1145, -2
  %i.bo = icmp slt i32 %i.bm, %i.o
  %or.cond.i105 = select i1 %i.bn, i1 %i.bo, i1 false
  br i1 %or.cond.i105, label %bb.s, label %_ZNK6icu_789UVector6410elementAtiEi.exit106

bb.s:                                             ; preds = %bb.r
  %i.bp = getelementptr inbounds nuw i8, ptr %i.l, i64 24
  %i.bq = load ptr, ptr %i.bp, align 8
  %i.br = zext nneg i32 %i.bm to i64
  %i.bs = getelementptr inbounds nuw [8 x i8], ptr %i.bq, i64 %i.br
  %i.bt = load i64, ptr %i.bs, align 8
  %i.bu = trunc i64 %i.bt to i32
  %i.bv = and i32 %i.bu, 16777215
  br label %_ZNK6icu_789UVector6410elementAtiEi.exit106

_ZNK6icu_789UVector6410elementAtiEi.exit106:      ; preds = %bb.r, %bb.s
  %i.bw = phi i32 [ %i.bv, %bb.s ], [ 0, %bb.r ]  ; 2 uses
  %i.bx = sub nsw i32 2147483647, %.176
  %i.by = icmp samesign ugt i32 %i.bx, %i.bw
  %i.bz = add nsw i32 %i.bw, %.176
  br i1 %i.by, label %_ZNK6icu_789UVector3210elementAtiEi.exit102, label %_ZNK6icu_789UVector3210elementAtiEi.exit102.thread

bb.t:                                             ; preds = %_ZNK6icu_789UVector3210elementAtiEi.exit96
  %i.ca = add nsw i32 %.1145, 1                   ; 3 uses
  %i.cb = icmp sgt i32 %.1145, -2
  %i.cc = icmp slt i32 %i.ca, %i.o
  %or.cond.i108 = select i1 %i.cb, i1 %i.cc, i1 false
  br i1 %or.cond.i108, label %bb.u, label %_ZNK6icu_789UVector6410elementAtiEi.exit109

bb.u:                                             ; preds = %bb.t
  %i.cd = getelementptr inbounds nuw i8, ptr %i.l, i64 24
  %i.ce = load ptr, ptr %i.cd, align 8
  %i.cf = zext nneg i32 %i.ca to i64
  %i.cg = getelementptr inbounds nuw [8 x i8], ptr %i.ce, i64 %i.cf
  %i.ch = load i64, ptr %i.cg, align 8
  %i.ci = trunc i64 %i.ch to i32
  %i.cj = and i32 %i.ci, 16777215
  br label %_ZNK6icu_789UVector6410elementAtiEi.exit109

_ZNK6icu_789UVector6410elementAtiEi.exit109:      ; preds = %bb.t, %bb.u
  %i.ck = phi i32 [ %i.cj, %bb.u ], [ 0, %bb.t ]  ; 2 uses
  %i.cl = sub nsw i32 2147483647, %.176
  %i.cm = icmp samesign ugt i32 %i.cl, %i.ck
  %i.cn = add nsw i32 %i.ck, %.176
  br i1 %i.cm, label %_ZNK6icu_789UVector3210elementAtiEi.exit102, label %_ZNK6icu_789UVector3210elementAtiEi.exit102.thread

bb.v:                                             ; preds = %_ZNK6icu_789UVector3210elementAtiEi.exit96, %_ZNK6icu_789UVector3210elementAtiEi.exit96
  %i.co = add nsw i32 %.1145, 1                   ; 2 uses
  %i.cp = icmp sgt i32 %.1145, -2
  %i.cq = icmp slt i32 %i.co, %i.o
  %or.cond.i111 = select i1 %i.cp, i1 %i.cq, i1 false
  br i1 %or.cond.i111, label %bb.w, label %_ZNK6icu_789UVector6410elementAtiEi.exit112

bb.w:                                             ; preds = %bb.v
  %i.cr = getelementptr inbounds nuw i8, ptr %i.l, i64 24
  %i.cs = load ptr, ptr %i.cr, align 8
  %i.ct = zext nneg i32 %i.co to i64
  %i.cu = getelementptr inbounds nuw [8 x i8], ptr %i.cs, i64 %i.ct
  %i.cv = load i64, ptr %i.cu, align 8
  %i.cw = trunc i64 %i.cv to i32
  %i.cx = and i32 %i.cw, 16777215
  br label %_ZNK6icu_789UVector6410elementAtiEi.exit112

_ZNK6icu_789UVector6410elementAtiEi.exit112:      ; preds = %bb.v, %bb.w
  %i.cy = phi i32 [ %i.cx, %bb.w ], [ 0, %bb.v ]  ; 4 uses
  %i.cz = add nsw i32 %.1145, 4                   ; 2 uses
  %i.da = icmp eq i32 %i.cy, %i.cz
  br i1 %i.da, label %_ZNK6icu_789UVector3210elementAtiEi.exit102, label %bb.x

bb.x:                                             ; preds = %_ZNK6icu_789UVector6410elementAtiEi.exit112
  %i.db = add nsw i32 %.1145, 3                   ; 2 uses
  %i.dc = icmp sgt i32 %.1145, -4
  %i.dd = icmp slt i32 %i.db, %i.o
  %or.cond.i113 = select i1 %i.dc, i1 %i.dd, i1 false
  br i1 %or.cond.i113, label %_ZNK6icu_789UVector6410elementAtiEi.exit114, label %_ZNK6icu_789UVector6410elementAtiEi.exit114.thread

_ZNK6icu_789UVector6410elementAtiEi.exit114:      ; preds = %bb.x
  %i.de = getelementptr inbounds nuw i8, ptr %i.l, i64 24
  %i.df = load ptr, ptr %i.de, align 8
  %i.dg = zext nneg i32 %i.db to i64
  %i.dh = getelementptr inbounds nuw [8 x i8], ptr %i.df, i64 %i.dg
  %i.di = load i64, ptr %i.dh, align 8            ; 2 uses
  %i.dj = and i64 %i.di, 4294967295
  %i.dk = icmp eq i64 %i.dj, 4294967295
  br i1 %i.dk, label %_ZNK6icu_789UVector3210elementAtiEi.exit102.thread, label %_ZNK6icu_789UVector6410elementAtiEi.exit114.thread

_ZNK6icu_789UVector6410elementAtiEi.exit114.thread: ; preds = %bb.x, %_ZNK6icu_789UVector6410elementAtiEi.exit114
  %i.dl = phi i64 [ %i.di, %_ZNK6icu_789UVector6410elementAtiEi.exit114 ], [ 0, %bb.x ]
  %i.dm = add nsw i32 %i.cy, -1
  %i.dn = call noundef i32 @_ZN6icu_7812RegexCompile14maxMatchLengthEii(ptr noundef nonnull align 8 dereferenceable(512) %0, i32 noundef %i.cz, i32 noundef %i.dm)
  %i.do = sext i32 %i.dn to i64
  %i.dp = sext i32 %.176 to i64
  %sext = shl i64 %i.dl, 32
  %i.dq = ashr exact i64 %sext, 32
  %i.dr = mul nsw i64 %i.dq, %i.do
  %i.ds = add nsw i64 %i.dr, %i.dp                ; 2 uses
  %i.dt = icmp sgt i64 %i.ds, 2147483646
  %i.du = trunc i64 %i.ds to i32
  br i1 %i.dt, label %_ZNK6icu_789UVector3210elementAtiEi.exit102.thread, label %_ZNK6icu_789UVector3210elementAtiEi.exit102

bb.y:                                             ; preds = %_ZNK6icu_789UVector3210elementAtiEi.exit96, %_ZNK6icu_789UVector3210elementAtiEi.exit96
  call void @abort() #10
  unreachable

bb.z:                                             ; preds = %.lr.ph140, %_ZNK6icu_789UVector6410elementAtiEi.exit116.thread
  %.5139 = phi i32 [ %.5136, %.lr.ph140 ], [ %.5, %_ZNK6icu_789UVector6410elementAtiEi.exit116.thread ] ; 6 uses
  %.5.in138 = phi i32 [ %.1145, %.lr.ph140 ], [ %.5139, %_ZNK6icu_789UVector6410elementAtiEi.exit116.thread ]
  %i.dv = icmp sgt i32 %.5.in138, -2
  %i.dw = icmp slt i32 %.5139, %i.o
  %or.cond.i115 = select i1 %i.dv, i1 %i.dw, i1 false
  br i1 %or.cond.i115, label %_ZNK6icu_789UVector6410elementAtiEi.exit116, label %_ZNK6icu_789UVector6410elementAtiEi.exit116.thread

_ZNK6icu_789UVector6410elementAtiEi.exit116:      ; preds = %bb.z
  %i.dx = load ptr, ptr %i.ae, align 8
  %i.dy = zext nneg i32 %.5139 to i64
  %i.dz = getelementptr inbounds nuw [8 x i8], ptr %i.dx, i64 %i.dy
  %i.ea = load i64, ptr %i.dz, align 8            ; 2 uses
end_hunk_0

Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/clamav/original/unpack?download=true
inline.NumInlined: 353
inline.NumDeleted: 74
loop-unroll.NumCompletelyUnrolled: 22
loop-unroll.NumRuntimeUnrolled: 15
loop-unroll.NumUnrolled: 45
begin_hunk_0_@_ZN6Unpack10ReadVMCodeEv:bb.a
_ZN6Unpack12UnpReadBuf30Ev.exit._crit_edge:       ; preds = %_ZN6Unpack12UnpReadBuf30Ev.exit
  %.pre49 = load i32, ptr %i.a, align 8, !tbaa !162
  br label %bb.n

bb.n:                                             ; preds = %_ZN6Unpack12UnpReadBuf30Ev.exit._crit_edge, %bb.e
  %i.br = phi i32 [ %i.au, %bb.e ], [ %.pre49, %_ZN6Unpack12UnpReadBuf30Ev.exit._crit_edge ] ; 2 uses
  %i.bs = phi i32 [ %i.at, %bb.e ], [ %i.bp, %_ZN6Unpack12UnpReadBuf30Ev.exit._crit_edge ]
  %i.bt = load ptr, ptr %i.b, align 8, !tbaa !204
  %i.bu = sext i32 %i.br to i64
  %i.bv = getelementptr inbounds i8, ptr %i.bt, i64 %i.bu
  %i.bw = load i32, ptr %i.bv, align 4, !tbaa !85
  %i.bx = tail call noundef i32 @llvm.bswap.i32(i32 %i.bw)
  %i.by = load i32, ptr %i.i, align 4, !tbaa !161 ; 3 uses
  %i.bz = sub nsw i32 16, %i.by
  %i.ca = lshr i32 %i.bx, %i.bz
  %i.cb = lshr i32 %i.ca, 8
  %i.cc = trunc i32 %i.cb to i8
  %i.cd = getelementptr inbounds nuw i8, ptr %malloc.i, i64 %indvars.iv
  store i8 %i.cc, ptr %i.cd, align 1, !tbaa !27
  %i.ce = add i32 %i.by, 8
  %i.cf = lshr i32 %i.ce, 3
  %i.cg = add i32 %i.cf, %i.br                    ; 2 uses
  store i32 %i.cg, ptr %i.a, align 8, !tbaa !162
  %i.ch = and i32 %i.by, 7
  store i32 %i.ch, ptr %i.i, align 4, !tbaa !161
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %.critedge, label %bb.e, !llvm.loop !256

.critedge:                                        ; preds = %bb.n
  %i.ci = invoke noundef zeroext i1 @_ZN6Unpack9AddVMCodeEjPhj(ptr noundef nonnull align 8 dereferenceable(59688) %0, i32 noundef %i.n, ptr noundef nonnull %malloc.i, i32 noundef %.02035)
          to label %.thread36 unwind label %.thread41

.thread41:                                        ; preds = %.critedge
  %i.cj = landingpad { ptr, i32 }
          cleanup
  br label %bb.q

bb.o:                                             ; preds = %_ZN6Unpack12UnpReadBuf30Ev.exit
  br i1 %i.ao, label %_ZN5ArrayIhED2Ev.exit, label %.thread36

.thread36:                                        ; preds = %.critedge, %bb.o
  %.139 = phi i1 [ false, %bb.o ], [ %i.ci, %.critedge ]
  tail call void @free(ptr noundef nonnull %malloc.i) #25
  br label %_ZN5ArrayIhED2Ev.exit

bb.p:                                             ; preds = %bb.k
  %i.ck = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  br i1 %i.ao, label %_ZN5ArrayIhED2Ev.exit30, label %bb.q

bb.q:                                             ; preds = %.thread41, %bb.p
  %.pn44 = phi { ptr, i32 } [ %i.cj, %.thread41 ], [ %i.ck, %bb.p ]
  tail call void @free(ptr noundef nonnull %malloc.i) #25
  br label %_ZN5ArrayIhED2Ev.exit30

_ZN5ArrayIhED2Ev.exit30:                          ; preds = %bb.p, %bb.q
  %.pn45 = phi { ptr, i32 } [ %i.ck, %bb.p ], [ %.pn44, %bb.q ]
  resume { ptr, i32 } %.pn45

_ZN5ArrayIhED2Ev.exit:                            ; preds = %.thread36, %bb.o, %bb.c
  %.2 = phi i1 [ false, %bb.c ], [ false, %bb.o ], [ %.139, %.thread36 ]
  ret i1 %.2
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN5ArrayIhEC2Em(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %1) unnamed_addr #0 comdat align 2 {
bb.a:
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %0, i8 0, i64 32, i1 false)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %1, ptr %i.a, align 8, !tbaa !257
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.not = icmp eq i64 %1, 0
  br i1 %.not, label %_ZN5ArrayIhE3AddEm.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %..i = tail call i64 @llvm.umax.i64(i64 %1, i64 32) ; 2 uses
  %malloc = tail call ptr @malloc(i64 %..i)       ; 2 uses
  %i.c = icmp eq ptr %malloc, null
  br i1 %i.c, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  tail call void @_ZN12ErrorHandler11MemoryErrorEv(ptr noundef nonnull align 4 dereferenceable(14) @ErrHandler)
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  store ptr %malloc, ptr %0, align 8, !tbaa !258
  store i64 %..i, ptr %i.b, align 8, !tbaa !259
  br label %_ZN5ArrayIhE3AddEm.exit

_ZN5ArrayIhE3AddEm.exit:                          ; preds = %bb.a, %bb.d
  ret void
}

declare i32 @__gxx_personality_v0(...)

; Function Attrs: mustprogress uwtable
define noundef zeroext i1 @_ZN6Unpack9AddVMCodeEjPhj(ptr noundef nonnull align 8 dereferenceable(59688) initializes((59544, 59552)) %0, i32 noundef %1, ptr nofree noundef readonly captures(none) %2, i32 noundef %3) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %class.Array, align 8               ; 10 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 59544 ; 18 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 59548
  store i32 0, ptr %i.b, align 4, !tbaa !161
  store i32 0, ptr %i.a, align 8, !tbaa !162
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 59560
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !260
  %i.e = tail call i32 @llvm.umin.i32(i32 %3, i32 32768)
  %i.f = zext nneg i32 %i.e to i64
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.d, ptr align 1 %2, i64 %i.f, i1 false)
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 59504 ; 2 uses
  tail call void @_ZN5RarVM4InitEv(ptr noundef nonnull align 8 dereferenceable(40) %i.g)
  %i.h = and i32 %1, 128
  %.not = icmp eq i32 %i.h, 0
  br i1 %.not, label %bb.k, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.i = tail call noundef i32 @_ZN5RarVM8ReadDataER8BitInput(ptr noundef nonnull align 8 dereferenceable(24) %i.a) ; 2 uses
  %i.j = icmp eq i32 %i.i, 0
  br i1 %i.j, label %bb.c, label %bb.j

bb.c:                                             ; preds = %bb.b
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 59640
  store i64 0, ptr %i.k, align 8, !tbaa !172
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 59664
  store i32 0, ptr %i.l, align 8, !tbaa !173
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 59576 ; 3 uses
  %i.n = load i64, ptr %i.m, align 8, !tbaa !174  ; 2 uses
  %.not.i = icmp eq i64 %i.n, 0
  br i1 %.not.i, label %._crit_edge.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.c
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 59568
  br label %bb.d

._crit_edge.i:                                    ; preds = %bb.f, %bb.c
  store i64 0, ptr %i.m, align 8, !tbaa !174
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 59608 ; 3 uses
  %i.q = load i64, ptr %i.p, align 8, !tbaa !174  ; 2 uses
  %.not16.i = icmp eq i64 %i.q, 0
  br i1 %.not16.i, label %_ZN6Unpack13InitFilters30Eb.exit, label %.lr.ph14.i

bb.d:                                             ; preds = %bb.f, %.lr.ph.i
  %i.r = phi i64 [ %i.n, %.lr.ph.i ], [ %i.w, %bb.f ]
  %.0711.i = phi i64 [ 0, %.lr.ph.i ], [ %i.x, %bb.f ] ; 2 uses
  %i.s = load ptr, ptr %i.o, align 8, !tbaa !175
  %i.t = getelementptr inbounds nuw [8 x i8], ptr %i.s, i64 %.0711.i
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !176  ; 2 uses
  %i.v = icmp eq ptr %i.u, null
  br i1 %i.v, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  tail call void @_ZdlPv(ptr noundef nonnull %i.u) #28
  %.pre.i = load i64, ptr %i.m, align 8, !tbaa !174
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %i.w = phi i64 [ %i.r, %bb.d ], [ %.pre.i, %bb.e ] ; 2 uses
  %i.x = add nuw i64 %.0711.i, 1                  ; 2 uses
  %i.y = icmp ult i64 %i.x, %i.w
  br i1 %i.y, label %bb.d, label %._crit_edge.i, !llvm.loop !178

.lr.ph14.i:                                       ; preds = %._crit_edge.i
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 59600
  br label %bb.g

bb.g:                                             ; preds = %bb.i, %.lr.ph14.i
  %i.aa = phi i64 [ %i.q, %.lr.ph14.i ], [ %i.af, %bb.i ]
  %.012.i = phi i64 [ 0, %.lr.ph14.i ], [ %i.ag, %bb.i ] ; 2 uses
  %i.ab = load ptr, ptr %i.z, align 8, !tbaa !175
  %i.ac = getelementptr inbounds nuw [8 x i8], ptr %i.ab, i64 %.012.i
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !176 ; 2 uses
  %i.ae = icmp eq ptr %i.ad, null
  br i1 %i.ae, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  tail call void @_ZdlPv(ptr noundef nonnull %i.ad) #28
  %.pre17.i = load i64, ptr %i.p, align 8, !tbaa !174
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %i.af = phi i64 [ %i.aa, %bb.g ], [ %.pre17.i, %bb.h ] ; 2 uses
  %i.ag = add nuw i64 %.012.i, 1                  ; 2 uses
  %i.ah = icmp ult i64 %i.ag, %i.af
  br i1 %i.ah, label %bb.g, label %_ZN6Unpack13InitFilters30Eb.exit, !llvm.loop !179

_ZN6Unpack13InitFilters30Eb.exit:                 ; preds = %bb.i, %._crit_edge.i
  store i64 0, ptr %i.p, align 8, !tbaa !174
  br label %bb.l

bb.j:                                             ; preds = %bb.b
  %i.ai = add i32 %i.i, -1
  br label %bb.l

bb.k:                                             ; preds = %bb.a
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 59664
  %i.ak = load i32, ptr %i.aj, align 8, !tbaa !173
  br label %bb.l

bb.l:                                             ; preds = %_ZN6Unpack13InitFilters30Eb.exit, %bb.j, %bb.k
  %.089 = phi i32 [ 0, %_ZN6Unpack13InitFilters30Eb.exit ], [ %i.ai, %bb.j ], [ %i.ak, %bb.k ] ; 4 uses
  %i.al = zext i32 %.089 to i64                   ; 7 uses
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 59568 ; 4 uses
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 59576 ; 5 uses
  %i.ao = load i64, ptr %i.an, align 8, !tbaa !174 ; 2 uses
  %i.ap = icmp ult i64 %i.ao, %i.al
  br i1 %i.ap, label %.critedge112, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 59632 ; 5 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 59640 ; 6 uses
  %i.as = load i64, ptr %i.ar, align 8, !tbaa !172
  %i.at = icmp ult i64 %i.as, %i.al
  br i1 %i.at, label %.critedge112, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 59664
  store i32 %.089, ptr %i.au, align 8, !tbaa !173
  %i.av = icmp eq i64 %i.ao, %i.al                ; 2 uses
  %i.aw = tail call noalias noundef nonnull dereferenceable(64) ptr @_Znwm(i64 noundef 64) #29 ; 20 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %i.aw, i64 16 ; 2 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %i.aw, i64 56
  store i32 0, ptr %i.ay, align 8, !tbaa !252
  store i32 0, ptr %i.ax, align 8, !tbaa !261
  br i1 %i.av, label %bb.o, label %bb.ac

bb.o:                                             ; preds = %bb.n
  %i.az = icmp ugt i32 %.089, 8192
  br i1 %i.az, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  tail call void @_ZdlPv(ptr noundef nonnull %i.aw) #28
  br label %.critedge112

bb.q:                                             ; preds = %bb.o
  %5 = load i64, ptr %i.an, align 8, !tbaa !174
  %i.ba = add i64 %5, 1                           ; 4 uses
  store i64 %i.ba, ptr %i.an, align 8, !tbaa !174
  %i.bb = getelementptr inbounds nuw i8, ptr %0, i64 59584 ; 3 uses
  %i.bc = load i64, ptr %i.bb, align 8, !tbaa !262 ; 2 uses
  %.not128.a = icmp ugt i64 %i.ba, %i.bc
  br i1 %.not128.a, label %bb.r, label %bb.w

bb.r:                                             ; preds = %bb.q
  %i.bd = getelementptr inbounds nuw i8, ptr %0, i64 59592
  %i.be = load i64, ptr %i.bd, align 8, !tbaa !263 ; 3 uses
  %.not.i114 = icmp ne i64 %i.be, 0
  %6 = icmp ugt i64 %i.ba, %i.be
  %or.cond.i = and i1 %.not.i114, %6
  br i1 %or.cond.i, label %bb.s, label %bb.t

bb.s:                                             ; preds = %bb.r
  tail call void (ptr, ptr, ...) @_ZN12ErrorHandler13GeneralErrMsgEPKwz(ptr noundef nonnull align 4 dereferenceable(14) @ErrHandler, ptr noundef nonnull @.str, i64 noundef %i.be)
  tail call void @_ZN12ErrorHandler11MemoryErrorEv(ptr noundef nonnull align 4 dereferenceable(14) @ErrHandler)
  %.pre.i115 = load i64, ptr %i.bb, align 8, !tbaa !262
  %.pre10.i = load i64, ptr %i.an, align 8, !tbaa !174
  br label %bb.t

bb.t:                                             ; preds = %bb.s, %bb.r
  %i.bf = phi i64 [ %.pre10.i, %bb.s ], [ %i.ba, %bb.r ]
  %i.bg = phi i64 [ %.pre.i115, %bb.s ], [ %i.bc, %bb.r ] ; 2 uses
  %i.bh = lshr i64 %i.bg, 2
  %i.bi = add i64 %i.bg, 32
  %i.bj = add i64 %i.bi, %i.bh
  %..i = tail call i64 @llvm.umax.i64(i64 %i.bf, i64 %i.bj) ; 2 uses
  %i.bk = load ptr, ptr %i.am, align 8, !tbaa !175
  %i.bl = shl i64 %..i, 3
  %i.bm = tail call ptr @realloc(ptr noundef %i.bk, i64 noundef %i.bl) #30 ; 2 uses
  %i.bn = icmp eq ptr %i.bm, null
  br i1 %i.bn, label %bb.u, label %bb.v

bb.u:                                             ; preds = %bb.t
  tail call void @_ZN12ErrorHandler11MemoryErrorEv(ptr noundef nonnull align 4 dereferenceable(14) @ErrHandler)
  br label %bb.v

bb.v:                                             ; preds = %bb.u, %bb.t
  store ptr %i.bm, ptr %i.am, align 8, !tbaa !175
  store i64 %..i, ptr %i.bb, align 8, !tbaa !262
  br label %bb.w

bb.w:                                             ; preds = %bb.v, %bb.q
  %i.bo = tail call noalias noundef nonnull dereferenceable(64) ptr @_Znwm(i64 noundef 64) #29 ; 4 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bo, i64 16
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bo, i64 56
  store i32 0, ptr %i.bq, align 8, !tbaa !252
  store i32 0, ptr %i.bp, align 8, !tbaa !261
  %i.br = load i64, ptr %i.an, align 8, !tbaa !174 ; 2 uses
  %i.bs = load ptr, ptr %i.am, align 8, !tbaa !175
  %i.bt = getelementptr [8 x i8], ptr %i.bs, i64 %i.br
  %i.bu = getelementptr i8, ptr %i.bt, i64 -8
  store ptr %i.bo, ptr %i.bu, align 8, !tbaa !176
  %i.bv = trunc i64 %i.br to i32
  %i.bw = add i32 %i.bv, -1
  %i.bx = getelementptr inbounds nuw i8, ptr %i.aw, i64 12
  store i32 %i.bw, ptr %i.bx, align 4, !tbaa !264
  %i.by = load i64, ptr %i.ar, align 8, !tbaa !172
  %i.bz = add i64 %i.by, 1                        ; 5 uses
  store i64 %i.bz, ptr %i.ar, align 8, !tbaa !172
  %i.ca = getelementptr inbounds nuw i8, ptr %0, i64 59648 ; 3 uses
  %i.cb = load i64, ptr %i.ca, align 8, !tbaa !265 ; 2 uses
  %i.cc = icmp ugt i64 %i.bz, %i.cb
  br i1 %i.cc, label %bb.x, label %._ZN5ArrayIiE3AddEm.exit_crit_edge.i

._ZN5ArrayIiE3AddEm.exit_crit_edge.i:             ; preds = %bb.w
  %.pre1.i = load ptr, ptr %i.aq, align 8, !tbaa !266
  br label %_ZN5ArrayIiE4PushEi.exit

bb.x:                                             ; preds = %bb.w
  %i.cd = getelementptr inbounds nuw i8, ptr %0, i64 59656
  %i.ce = load i64, ptr %i.cd, align 8, !tbaa !267 ; 3 uses
  %.not.i.i = icmp ne i64 %i.ce, 0
  %i.cf = icmp ugt i64 %i.bz, %i.ce
  %or.cond.i.i = and i1 %.not.i.i, %i.cf
  br i1 %or.cond.i.i, label %bb.y, label %bb.z

bb.y:                                             ; preds = %bb.x
  tail call void (ptr, ptr, ...) @_ZN12ErrorHandler13GeneralErrMsgEPKwz(ptr noundef nonnull align 4 dereferenceable(14) @ErrHandler, ptr noundef nonnull @.str, i64 noundef %i.ce)
  tail call void @_ZN12ErrorHandler11MemoryErrorEv(ptr noundef nonnull align 4 dereferenceable(14) @ErrHandler)
  %.pre.i.i = load i64, ptr %i.ca, align 8, !tbaa !265
  %.pre10.i.i = load i64, ptr %i.ar, align 8, !tbaa !172
  br label %bb.z

bb.z:                                             ; preds = %bb.y, %bb.x
  %i.cg = phi i64 [ %.pre10.i.i, %bb.y ], [ %i.bz, %bb.x ]
  %i.ch = phi i64 [ %.pre.i.i, %bb.y ], [ %i.cb, %bb.x ] ; 2 uses
  %i.ci = lshr i64 %i.ch, 2
  %i.cj = add i64 %i.ch, 32
  %i.ck = add i64 %i.cj, %i.ci
  %..i.i = tail call i64 @llvm.umax.i64(i64 %i.cg, i64 %i.ck) ; 2 uses
  %i.cl = load ptr, ptr %i.aq, align 8, !tbaa !266
  %i.cm = shl i64 %..i.i, 2
  %i.cn = tail call ptr @realloc(ptr noundef %i.cl, i64 noundef %i.cm) #30 ; 3 uses
  %i.co = icmp eq ptr %i.cn, null
  br i1 %i.co, label %bb.aa, label %bb.ab

bb.aa:                                            ; preds = %bb.z
  tail call void @_ZN12ErrorHandler11MemoryErrorEv(ptr noundef nonnull align 4 dereferenceable(14) @ErrHandler)
  br label %bb.ab

bb.ab:                                            ; preds = %bb.aa, %bb.z
  store ptr %i.cn, ptr %i.aq, align 8, !tbaa !266
  store i64 %..i.i, ptr %i.ca, align 8, !tbaa !265
  %.pre.i116 = load i64, ptr %i.ar, align 8, !tbaa !172
  br label %_ZN5ArrayIiE4PushEi.exit

_ZN5ArrayIiE4PushEi.exit:                         ; preds = %._ZN5ArrayIiE3AddEm.exit_crit_edge.i, %bb.ab
  %i.cp = phi ptr [ %.pre1.i, %._ZN5ArrayIiE3AddEm.exit_crit_edge.i ], [ %i.cn, %bb.ab ]
  %i.cq = phi i64 [ %i.bz, %._ZN5ArrayIiE3AddEm.exit_crit_edge.i ], [ %.pre.i116, %bb.ab ]
  %i.cr = getelementptr [4 x i8], ptr %i.cp, i64 %i.cq
  %i.cs = getelementptr i8, ptr %i.cr, i64 -4
  store i32 0, ptr %i.cs, align 4, !tbaa !85
  br label %bb.ad

bb.ac:                                            ; preds = %bb.n
  %i.ct = load ptr, ptr %i.am, align 8, !tbaa !175
  %i.cu = getelementptr inbounds nuw [8 x i8], ptr %i.ct, i64 %i.al
  %i.cv = load ptr, ptr %i.cu, align 8, !tbaa !176
  %i.cw = getelementptr inbounds nuw i8, ptr %i.aw, i64 12
  store i32 %.089, ptr %i.cw, align 4, !tbaa !264
  br label %bb.ad

bb.ad:                                            ; preds = %bb.ac, %_ZN5ArrayIiE4PushEi.exit
  %.079 = phi ptr [ %i.bo, %_ZN5ArrayIiE4PushEi.exit ], [ %i.cv, %bb.ac ] ; 2 uses
  %i.cx = getelementptr inbounds nuw i8, ptr %0, i64 59600 ; 4 uses
  %i.cy = getelementptr inbounds nuw i8, ptr %0, i64 59608 ; 4 uses
  %i.cz = load i64, ptr %i.cy, align 8, !tbaa !174 ; 7 uses
  %.not141 = icmp eq i64 %i.cz, 0
  br i1 %.not141, label %.thread, label %.lr.ph

.lr.ph:                                           ; preds = %bb.ad
  %i.da = load ptr, ptr %i.cx, align 8, !tbaa !175 ; 2 uses
  br label %bb.ae

._crit_edge:                                      ; preds = %bb.ag
  %i.db = icmp eq i32 %spec.select, 0
  br i1 %i.db, label %bb.ah, label %_ZN5ArrayIP14UnpackFilter30E3AddEm.exit122

bb.ae:                                            ; preds = %.lr.ph, %bb.ag
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.ag ] ; 3 uses
  %.078132 = phi i32 [ 0, %.lr.ph ], [ %spec.select, %bb.ag ] ; 2 uses
  %i.dc = getelementptr inbounds nuw [8 x i8], ptr %i.da, i64 %indvars.iv ; 2 uses
  %i.dd = load ptr, ptr %i.dc, align 8, !tbaa !176 ; 2 uses
  %i.de = trunc nuw i64 %indvars.iv to i32
  %i.df = sub i32 %i.de, %.078132
  %i.dg = zext i32 %i.df to i64
  %i.dh = getelementptr inbounds nuw [8 x i8], ptr %i.da, i64 %i.dg
  store ptr %i.dd, ptr %i.dh, align 8, !tbaa !176
  %i.di = icmp eq ptr %i.dd, null
  %i.dj = zext i1 %i.di to i32
  %spec.select = add i32 %.078132, %i.dj          ; 4 uses
  %.not109 = icmp eq i32 %spec.select, 0
  br i1 %.not109, label %bb.ag, label %bb.af

bb.af:                                            ; preds = %bb.ae
  store ptr null, ptr %i.dc, align 8, !tbaa !176
  br label %bb.ag

bb.ag:                                            ; preds = %bb.ae, %bb.af
  %indvars.iv.next = add i64 %indvars.iv, 1       ; 2 uses
  %i.dk = and i64 %indvars.iv.next, 4294967295
  %i.dl = icmp ugt i64 %i.cz, %i.dk
  br i1 %i.dl, label %bb.ae, label %._crit_edge, !llvm.loop !268

bb.ah:                                            ; preds = %._crit_edge
  %i.dm = icmp samesign ugt i64 %i.cz, 8192
  br i1 %i.dm, label %bb.ai, label %.thread

bb.ai:                                            ; preds = %bb.ah
  tail call void @_ZdlPv(ptr noundef nonnull %i.aw) #28
  br label %.critedge112

.thread:                                          ; preds = %bb.ad, %bb.ah
  %i.dn = add nuw nsw i64 %i.cz, 1                ; 3 uses
  store i64 %i.dn, ptr %i.cy, align 8, !tbaa !174
  %i.do = getelementptr inbounds nuw i8, ptr %0, i64 59616 ; 3 uses
  %i.dp = load i64, ptr %i.do, align 8, !tbaa !262 ; 2 uses
  %.not129 = icmp ult i64 %i.cz, %i.dp
  br i1 %.not129, label %_ZN5ArrayIP14UnpackFilter30E3AddEm.exit122, label %bb.aj

bb.aj:                                            ; preds = %.thread
  %i.dq = getelementptr inbounds nuw i8, ptr %0, i64 59624
  %i.dr = load i64, ptr %i.dq, align 8, !tbaa !263 ; 2 uses
  %i.ds = add i64 %i.dr, -1
  %or.cond.i118 = icmp ult i64 %i.ds, %i.cz
  br i1 %or.cond.i118, label %bb.ak, label %bb.al

bb.ak:                                            ; preds = %bb.aj
  tail call void (ptr, ptr, ...) @_ZN12ErrorHandler13GeneralErrMsgEPKwz(ptr noundef nonnull align 4 dereferenceable(14) @ErrHandler, ptr noundef nonnull @.str, i64 noundef %i.dr)
  tail call void @_ZN12ErrorHandler11MemoryErrorEv(ptr noundef nonnull align 4 dereferenceable(14) @ErrHandler)
  %.pre.i120 = load i64, ptr %i.do, align 8, !tbaa !262
  %.pre10.i121 = load i64, ptr %i.cy, align 8, !tbaa !174
  br label %bb.al

bb.al:                                            ; preds = %bb.ak, %bb.aj
  %i.dt = phi i64 [ %.pre10.i121, %bb.ak ], [ %i.dn, %bb.aj ]
  %i.du = phi i64 [ %.pre.i120, %bb.ak ], [ %i.dp, %bb.aj ] ; 2 uses
  %i.dv = lshr i64 %i.du, 2
  %i.dw = add i64 %i.du, 32
  %i.dx = add i64 %i.dw, %i.dv
  %..i119 = tail call i64 @llvm.umax.i64(i64 %i.dt, i64 %i.dx) ; 2 uses
  %i.dy = load ptr, ptr %i.cx, align 8, !tbaa !175
  %i.dz = shl i64 %..i119, 3
  %i.ea = tail call ptr @realloc(ptr noundef %i.dy, i64 noundef %i.dz) #30 ; 2 uses
  %i.eb = icmp eq ptr %i.ea, null
  br i1 %i.eb, label %bb.am, label %bb.an

bb.am:                                            ; preds = %bb.al
  tail call void @_ZN12ErrorHandler11MemoryErrorEv(ptr noundef nonnull align 4 dereferenceable(14) @ErrHandler)
  br label %bb.an
end_hunk_0

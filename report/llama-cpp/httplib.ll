Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llama-cpp/original/httplib?download=true
inline.NumInlined: 21893
inline.NumDeleted: 6596
loop-unroll.NumCompletelyUnrolled: 58
loop-unroll.NumRuntimeUnrolled: 42
loop-unroll.NumUnrolled: 105
begin_hunk_0_@_ZN7httplib2ws4impl20read_websocket_frameERNS_6StreamERNS0_6OpcodeERNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERbbm:bb.a
  %i.g = load ptr, ptr %i.f, align 8
  %i.h = call noundef i64 %i.g(ptr noundef nonnull align 8 dereferenceable(12) %0, ptr noundef nonnull %i.a, i64 noundef 2)
  %.not = icmp eq i64 %i.h, 2
  br i1 %.not, label %bb.b, label %bb.n

bb.b:                                             ; preds = %bb.a
  %i.i = load i8, ptr %i.a, align 1, !tbaa !184   ; 5 uses
  %.lobit = lshr i8 %i.i, 7
  store i8 %.lobit, ptr %3, align 1, !tbaa !303
  %i.j = and i8 %i.i, 112
  %.not63 = icmp eq i8 %i.j, 0
  br i1 %.not63, label %bb.c, label %bb.n

bb.c:                                             ; preds = %bb.b
  %i.k = and i8 %i.i, 15
  store i8 %i.k, ptr %1, align 1, !tbaa !305
  %i.l = getelementptr inbounds nuw i8, ptr %i.a, i64 1
  %i.m = load i8, ptr %i.l, align 1, !tbaa !184   ; 4 uses
  %i.n = icmp slt i8 %i.m, 0                      ; 2 uses
  %i.o = and i8 %i.m, 127                         ; 3 uses
  %i.p = zext nneg i8 %i.o to i64
  %i.q = and i8 %i.i, 8
  %.not64 = icmp eq i8 %i.q, 0
  br i1 %.not64, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.r = icmp slt i8 %i.i, 0
  %i.s = icmp samesign ult i8 %i.o, 126
  %i.t = icmp sgt i8 %i.m, -1
  %.not6667 = xor i1 %4, %i.t
  %i.u = and i1 %i.s, %.not6667
  %or.cond77 = select i1 %i.r, i1 %i.u, i1 false
  br i1 %or.cond77, label %bb.f, label %bb.n

bb.e:                                             ; preds = %bb.c
  %.old = icmp sgt i8 %i.m, -1
  %.not6667.old = xor i1 %4, %.old
  br i1 %.not6667.old, label %bb.f, label %bb.n

bb.f:                                             ; preds = %bb.d, %bb.e
  switch i8 %i.o, label %bb.i [
    i8 126, label %bb.g
    i8 127, label %bb.h
  ]

bb.g:                                             ; preds = %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #23
  %i.v = load ptr, ptr %0, align 8, !tbaa !201
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 48
  %i.x = load ptr, ptr %i.w, align 8
  %i.y = call noundef i64 %i.x(ptr noundef nonnull align 8 dereferenceable(12) %0, ptr noundef nonnull %i.b, i64 noundef 2)
  %.not70 = icmp eq i64 %i.y, 2
  %i.z = load i8, ptr %i.b, align 1
  %i.aa = zext i8 %i.z to i64
  %i.ab = shl nuw nsw i64 %i.aa, 8
  %i.ac = getelementptr inbounds nuw i8, ptr %i.b, i64 1
  %i.ad = load i8, ptr %i.ac, align 1
  %i.ae = zext i8 %i.ad to i64
  %i.af = or disjoint i64 %i.ab, %i.ae
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #23
  br i1 %.not70, label %bb.i, label %bb.n

bb.h:                                             ; preds = %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #23
  %i.ag = load ptr, ptr %0, align 8, !tbaa !201
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 48
  %i.ai = load ptr, ptr %i.ah, align 8
  %i.aj = call noundef i64 %i.ai(ptr noundef nonnull align 8 dereferenceable(12) %0, ptr noundef nonnull %i.c, i64 noundef 8)
  %.not68 = icmp eq i64 %i.aj, 8
  %i.ak = load i8, ptr %i.c, align 1              ; 2 uses
  %.not69 = icmp sgt i8 %i.ak, -1
  %or.cond79 = select i1 %.not68, i1 %.not69, i1 false
  br i1 %or.cond79, label %.preheader86.preheader, label %.critedge

.preheader86.preheader:                           ; preds = %bb.h
  %i.al = zext nneg i8 %i.ak to i64
  %i.am = getelementptr inbounds nuw i8, ptr %i.c, i64 1
  %i.an = load i8, ptr %i.am, align 1, !tbaa !184
  %i.ao = zext i8 %i.an to i64
  %i.ap = shl nuw nsw i64 %i.al, 16
  %i.aq = shl nuw nsw i64 %i.ao, 8
  %i.ar = or disjoint i64 %i.ap, %i.aq
  %i.as = getelementptr inbounds nuw i8, ptr %i.c, i64 2
  %i.at = load i8, ptr %i.as, align 1, !tbaa !184
  %i.au = zext i8 %i.at to i64
  %i.av = or disjoint i64 %i.ar, %i.au
  %i.aw = getelementptr inbounds nuw i8, ptr %i.c, i64 3
  %i.ax = load i8, ptr %i.aw, align 1, !tbaa !184
  %i.ay = zext i8 %i.ax to i64
  %i.az = shl nuw nsw i64 %i.av, 16
  %i.ba = shl nuw nsw i64 %i.ay, 8
  %i.bb = or disjoint i64 %i.az, %i.ba
  %i.bc = getelementptr inbounds nuw i8, ptr %i.c, i64 4
  %i.bd = load i8, ptr %i.bc, align 1, !tbaa !184
  %i.be = zext i8 %i.bd to i64
  %i.bf = or disjoint i64 %i.bb, %i.be
  %i.bg = getelementptr inbounds nuw i8, ptr %i.c, i64 5
  %i.bh = load i8, ptr %i.bg, align 1, !tbaa !184
  %i.bi = zext i8 %i.bh to i64
  %i.bj = shl nuw nsw i64 %i.bf, 16
  %i.bk = shl nuw nsw i64 %i.bi, 8
  %i.bl = or disjoint i64 %i.bj, %i.bk
  %i.bm = getelementptr inbounds nuw i8, ptr %i.c, i64 6
  %i.bn = load i8, ptr %i.bm, align 1, !tbaa !184
  %i.bo = zext i8 %i.bn to i64
  %i.bp = or disjoint i64 %i.bl, %i.bo
  %i.bq = shl nuw nsw i64 %i.bp, 8
  %i.br = getelementptr inbounds nuw i8, ptr %i.c, i64 7
  %i.bs = load i8, ptr %i.br, align 1, !tbaa !184
  %i.bt = zext i8 %i.bs to i64
  %i.bu = or disjoint i64 %i.bq, %i.bt
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #23
  br label %bb.i

bb.i:                                             ; preds = %.preheader86.preheader, %bb.f, %bb.g
  %.3 = phi i64 [ %i.af, %bb.g ], [ %i.bu, %.preheader86.preheader ], [ %i.p, %bb.f ] ; 5 uses
  %i.bv = icmp ugt i64 %.3, %5
  br i1 %i.bv, label %bb.n, label %bb.j

bb.j:                                             ; preds = %bb.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #23
  store i32 0, ptr %i.d, align 4
  br i1 %i.n, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.bw = load ptr, ptr %0, align 8, !tbaa !201
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bw, i64 48
  %i.by = load ptr, ptr %i.bx, align 8
  %i.bz = call noundef i64 %i.by(ptr noundef nonnull align 8 dereferenceable(12) %0, ptr noundef nonnull %i.d, i64 noundef 4)
  %.not71 = icmp eq i64 %i.bz, 4
  br i1 %.not71, label %bb.l, label %.loopexit

bb.l:                                             ; preds = %bb.k, %bb.j
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6resizeEmc(ptr noundef nonnull align 8 dereferenceable(32) %2, i64 noundef %.3, i8 noundef signext 0)
  %.not72 = icmp eq i64 %.3, 0
  br i1 %.not72, label %.critedge75, label %.preheader84

.preheader84:                                     ; preds = %bb.l, %bb.m
  %.048 = phi i64 [ %i.ci, %bb.m ], [ 0, %bb.l ]  ; 4 uses
  %.not73 = icmp ult i64 %.048, %.3
  br i1 %.not73, label %bb.m, label %.critedge75

bb.m:                                             ; preds = %.preheader84
  %i.ca = load ptr, ptr %2, align 8, !tbaa !196
  %i.cb = getelementptr inbounds nuw i8, ptr %i.ca, i64 %.048
  %i.cc = sub nuw nsw i64 %.3, %.048
  %i.cd = load ptr, ptr %0, align 8, !tbaa !201
  %i.ce = getelementptr inbounds nuw i8, ptr %i.cd, i64 48
  %i.cf = load ptr, ptr %i.ce, align 8
  %i.cg = call noundef i64 %i.cf(ptr noundef nonnull align 8 dereferenceable(12) %0, ptr noundef nonnull %i.cb, i64 noundef %i.cc) ; 2 uses
  %i.ch = icmp sgt i64 %i.cg, 0
  %i.ci = add i64 %i.cg, %.048
  br i1 %i.ch, label %.preheader84, label %.loopexit, !llvm.loop !1354

.critedge75:                                      ; preds = %.preheader84, %bb.l
  br i1 %i.n, label %.preheader, label %.loopexit

.preheader:                                       ; preds = %.critedge75
  %i.cj = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.ck = load i64, ptr %i.cj, align 8, !tbaa !183
  %.not90 = icmp eq i64 %i.ck, 0
  br i1 %.not90, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader, %.lr.ph
  %.089 = phi i64 [ %i.cs, %.lr.ph ], [ 0, %.preheader ] ; 3 uses
  %i.cl = and i64 %.089, 3
  %i.cm = getelementptr inbounds nuw i8, ptr %i.d, i64 %i.cl
  %i.cn = load i8, ptr %i.cm, align 1, !tbaa !184
  %i.co = load ptr, ptr %2, align 8, !tbaa !196
  %i.cp = getelementptr inbounds nuw i8, ptr %i.co, i64 %.089 ; 2 uses
  %i.cq = load i8, ptr %i.cp, align 1, !tbaa !184
  %i.cr = xor i8 %i.cq, %i.cn
  store i8 %i.cr, ptr %i.cp, align 1, !tbaa !184
  %i.cs = add nuw i64 %.089, 1                    ; 2 uses
  %i.ct = load i64, ptr %i.cj, align 8, !tbaa !183
  %i.cu = icmp ult i64 %i.cs, %i.ct
  br i1 %i.cu, label %.lr.ph, label %.loopexit, !llvm.loop !1355

.loopexit:                                        ; preds = %bb.m, %.lr.ph, %.preheader, %.critedge75, %bb.k
  %.6 = phi i1 [ true, %.critedge75 ], [ false, %bb.k ], [ true, %.preheader ], [ true, %.lr.ph ], [ false, %bb.m ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #23
  br label %bb.n

.critedge:                                        ; preds = %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #23
  br label %bb.n

bb.n:                                             ; preds = %.loopexit, %bb.g, %bb.d, %bb.e, %.critedge, %bb.i, %bb.b, %bb.a
  %.8 = phi i1 [ false, %bb.b ], [ false, %bb.a ], [ false, %bb.d ], [ false, %bb.i ], [ false, %bb.e ], [ %.6, %.loopexit ], [ false, %bb.g ], [ false, %.critedge ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #23
  ret i1 %.8
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #19

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define noundef zeroext i1 @_ZN7httplib6detail13is_valid_pathERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %0) local_unnamed_addr #4 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load i64, ptr %i.a, align 8, !tbaa !183  ; 8 uses
  %.not = icmp eq i64 %i.b, 0
  br i1 %.not, label %.critedge.split, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.c = load ptr, ptr %0, align 8, !tbaa !196
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %bb.c
  %.03875 = phi i64 [ 0, %.lr.ph ], [ %i.g, %bb.c ] ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 %.03875
  %i.e = load i8, ptr %i.d, align 1, !tbaa !184
  %i.f = icmp eq i8 %i.e, 47
  br i1 %i.f, label %bb.c, label %.critedge.split

bb.c:                                             ; preds = %bb.b
  %i.g = add nuw i64 %.03875, 1                   ; 2 uses
  %exitcond.not = icmp eq i64 %i.g, %i.b
  br i1 %exitcond.not, label %.critedge50, label %bb.b, !llvm.loop !1356

.critedge.split:                                  ; preds = %bb.b, %bb.a
  %.038.lcssa = phi i64 [ 0, %bb.a ], [ %.03875, %bb.b ] ; 2 uses
  %.not91 = icmp ult i64 %.038.lcssa, %i.b
  br i1 %.not91, label %.preheader.lr.ph, label %.critedge50

.preheader.lr.ph:                                 ; preds = %.critedge.split
  %i.h = load ptr, ptr %0, align 8, !tbaa !196    ; 4 uses
  br label %.preheader

.preheader:                                       ; preds = %.preheader.lr.ph, %.critedge4
  %.13987 = phi i64 [ %.038.lcssa, %.preheader.lr.ph ], [ %.3.lcssa, %.critedge4 ] ; 6 uses
  %.04086 = phi i64 [ 0, %.preheader.lr.ph ], [ %.141, %.critedge4 ] ; 4 uses
  %i.i = add nuw i64 %.13987, 1
  %umax = tail call i64 @llvm.umax.i64(i64 %i.b, i64 %i.i) ; 2 uses
  br label %bb.d

bb.d:                                             ; preds = %.preheader, %bb.e
  %.280 = phi i64 [ %.13987, %.preheader ], [ %i.l, %bb.e ] ; 3 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.h, i64 %.280
  %i.k = load i8, ptr %i.j, align 1, !tbaa !184
  switch i8 %i.k, label %bb.e [
    i8 47, label %.critedge2
    i8 0, label %.critedge50
    i8 92, label %.critedge50
  ]

bb.e:                                             ; preds = %bb.d
  %i.l = add i64 %.280, 1                         ; 2 uses
  %exitcond94.not = icmp eq i64 %i.l, %umax
  br i1 %exitcond94.not, label %.critedge2, label %bb.d, !llvm.loop !1357

.critedge2:                                       ; preds = %bb.d, %bb.e
  %.2.lcssa = phi i64 [ %.280, %bb.d ], [ %umax, %bb.e ] ; 4 uses
  %1 = tail call i64 @llvm.umin.i64(i64 %.2.lcssa, i64 %i.b) ; 2 uses
  %spec.select.i.i = sub nuw i64 %1, %.13987      ; 3 uses
  %cond = icmp eq i64 %1, %.13987
  br i1 %cond, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7compareEmmPKc.exit61.thread, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i:     ; preds = %.critedge2
  %i.m = getelementptr inbounds nuw i8, ptr %i.h, i64 %.13987
  %lhsc = load i8, ptr %i.m, align 1
  %.not.i = icmp eq i8 %lhsc, 46
  %.not48 = icmp eq i64 %spec.select.i.i, 1
  %or.cond = and i1 %.not48, %.not.i
  br i1 %or.cond, label %bb.h, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8_M_checkEmPKc.exit.i51

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8_M_checkEmPKc.exit.i51: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i
  %.sroa.speculated.i53 = tail call i64 @llvm.umin.i64(i64 %spec.select.i.i, i64 2)
  %i.n = getelementptr inbounds nuw i8, ptr %i.h, i64 %.13987
  %bcmp = tail call i32 @bcmp(ptr %i.n, ptr nonnull @.str.28, i64 %.sroa.speculated.i53)
  %.not.i55 = icmp eq i32 %bcmp, 0
  %.not49 = icmp eq i64 %spec.select.i.i, 2
  %or.cond66 = and i1 %.not49, %.not.i55
  br i1 %or.cond66, label %bb.f, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7compareEmmPKc.exit61.thread

bb.f:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8_M_checkEmPKc.exit.i51
  %i.o = icmp eq i64 %.04086, 0
  br i1 %i.o, label %.critedge50, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.p = add i64 %.04086, -1
  br label %bb.h

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7compareEmmPKc.exit61.thread: ; preds = %.critedge2, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8_M_checkEmPKc.exit.i51
  %i.q = add i64 %.04086, 1
  br label %bb.h

bb.h:                                             ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i, %bb.g, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7compareEmmPKc.exit61.thread
  %.141 = phi i64 [ %i.q, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7compareEmmPKc.exit61.thread ], [ %i.p, %bb.g ], [ %.04086, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i ]
  %i.r = icmp ult i64 %.2.lcssa, %i.b
  br i1 %i.r, label %.lr.ph82, label %.critedge4

.lr.ph82:                                         ; preds = %bb.h, %bb.i
  %.381 = phi i64 [ %i.v, %bb.i ], [ %.2.lcssa, %bb.h ] ; 3 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.h, i64 %.381
  %i.t = load i8, ptr %i.s, align 1, !tbaa !184
  %i.u = icmp eq i8 %i.t, 47
  br i1 %i.u, label %bb.i, label %.critedge4

bb.i:                                             ; preds = %.lr.ph82
  %i.v = add i64 %.381, 1                         ; 2 uses
  %exitcond95.not = icmp eq i64 %i.v, %i.b
  br i1 %exitcond95.not, label %.critedge50, label %.lr.ph82, !llvm.loop !1358

.critedge4:                                       ; preds = %.lr.ph82, %bb.h
  %.3.lcssa = phi i64 [ %.2.lcssa, %bb.h ], [ %.381, %.lr.ph82 ] ; 2 uses
  %.not92 = icmp ult i64 %.3.lcssa, %i.b
  br i1 %.not92, label %.preheader, label %.critedge50, !llvm.loop !1359

.critedge50:                                      ; preds = %bb.c, %.critedge4, %bb.f, %bb.d, %bb.d, %bb.i, %.critedge.split
  %i.w = phi i1 [ true, %.critedge.split ], [ false, %bb.f ], [ true, %bb.i ], [ false, %bb.d ], [ false, %bb.d ], [ true, %.critedge4 ], [ true, %bb.c ]
  ret i1 %i.w
}

; Function Attrs: mustprogress uwtable
define noundef zeroext i1 @_ZN7httplib6detail17canonicalize_pathEPKcRNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr nofree noundef readonly captures(none) %0, ptr noundef nonnull align 8 dereferenceable(32) %1) local_unnamed_addr #7 {
bb.a:
  %i.a = alloca [4096 x i8], align 16             ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #23
  %i.b = call ptr @realpath(ptr noundef %0, ptr noundef nonnull %i.a) #23
  %i.c = icmp ne ptr %i.b, null                   ; 2 uses
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.e = load i64, ptr %i.d, align 8, !tbaa !183
  %i.f = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.a) #23
  %i.g = call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %1, i64 noundef 0, i64 noundef %i.e, ptr noundef nonnull %i.a, i64 noundef %i.f) ; 0 uses
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #23
  ret i1 %i.c
}

; Function Attrs: nofree nounwind
declare noundef ptr @realpath(ptr noundef readonly captures(none), ptr noundef) local_unnamed_addr #20

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define noundef zeroext i1 @_ZN7httplib6detail19is_path_within_baseERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES8_(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %1) local_unnamed_addr #4 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !196
  %i.b = load ptr, ptr %1, align 8, !tbaa !196
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.d = load i64, ptr %i.c, align 8, !tbaa !183
  %i.e = tail call i32 @strncmp(ptr noundef %i.a, ptr noundef %i.b, i64 noundef %i.d) #52
  %i.f = icmp eq i32 %i.e, 0
  ret i1 %i.f
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i32 @strncmp(ptr noundef captures(none), ptr noundef captures(none), i64 noundef) local_unnamed_addr #21

; Function Attrs: mustprogress nofree nounwind uwtable
define void @_ZN7httplib6detail8FileStatC2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(148) initializes((144, 148)) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %1) unnamed_addr #22 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 144 ; 2 uses
  store i32 -1, ptr %i.a, align 8, !tbaa !284
  %i.b = load ptr, ptr %1, align 8, !tbaa !196
  %i.c = tail call i32 @stat(ptr noundef %i.b, ptr noundef nonnull %0) #23
  store i32 %i.c, ptr %i.a, align 8, !tbaa !284
  ret void
}

; Function Attrs: nofree nounwind
declare noundef i32 @stat(ptr noundef readonly captures(none), ptr noundef captures(none)) local_unnamed_addr #20

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define noundef zeroext i1 @_ZNK7httplib6detail8FileStat6is_dirEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(148) %0) local_unnamed_addr #3 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 144
  %i.b = load i32, ptr %i.a, align 8, !tbaa !284
  %i.c = icmp sgt i32 %i.b, -1
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.e = load i32, ptr %i.d, align 8
  %i.f = and i32 %i.e, 61440
  %i.g = icmp eq i32 %i.f, 16384
  %i.h = select i1 %i.c, i1 %i.g, i1 false
  ret i1 %i.h
}

; Function Attrs: mustprogress uwtable
define void @_ZN7httplib6detail11encode_pathERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr dead_on_unwind noalias nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %1) local_unnamed_addr #7 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca [4 x i8], align 1                 ; 5 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 7 uses
  store ptr %i.b, ptr %0, align 8, !tbaa !182
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 12 uses
  store i64 0, ptr %i.c, align 8, !tbaa !183
  store i8 0, ptr %i.b, align 8, !tbaa !184
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.e = load i64, ptr %i.d, align 8, !tbaa !183
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7reserveEm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %i.e)
          to label %.preheader unwind label %bb.b

.preheader:                                       ; preds = %bb.a, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit
  %.0 = phi i64 [ %i.bj, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit ], [ 0, %bb.a ] ; 2 uses
  %i.f = load ptr, ptr %1, align 8, !tbaa !196
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 %.0
  %i.h = load i8, ptr %i.g, align 1, !tbaa !184   ; 4 uses
  switch i8 %i.h, label %bb.j [
    i8 0, label %bb.s
    i8 32, label %bb.c
    i8 43, label %bb.d
    i8 13, label %bb.e
    i8 10, label %bb.f
    i8 39, label %bb.g
    i8 44, label %bb.h
    i8 59, label %bb.i
  ]

bb.b:                                             ; preds = %bb.a
  %i.i = landingpad { ptr, i32 }
          cleanup
  br label %bb.t

bb.c:                                             ; preds = %.preheader
  %i.j = load i64, ptr %i.c, align 8, !tbaa !183
  %i.k = add i64 %i.j, -4611686018427387901
  %i.l = icmp ult i64 %i.k, 3
  br i1 %i.l, label %.invoke, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i.invoke

.invoke:                                          ; preds = %bb.c, %bb.i, %bb.h, %bb.g, %bb.f, %bb.e, %bb.d
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.358) #48
          to label %.cont unwind label %.loopexit.split-lp

.cont:                                            ; preds = %.invoke
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i.invoke: ; preds = %bb.c, %bb.i, %bb.h, %bb.g, %bb.f, %bb.e, %bb.d
  %i.m = phi ptr [ @.str.35, %bb.i ], [ @.str.34, %bb.h ], [ @.str.30, %bb.d ], [ @.str.31, %bb.e ], [ @.str.32, %bb.f ], [ @.str.33, %bb.g ], [ @.str.29, %bb.c ]
  %i.n = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull %i.m, i64 noundef 3)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit unwind label %.loopexit ; 0 uses

.loopexit:                                        ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i.invoke
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %bb.t

.loopexit.split-lp:                               ; preds = %.invoke
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.t

bb.d:                                             ; preds = %.preheader
  %i.o = load i64, ptr %i.c, align 8, !tbaa !183
  %i.p = add i64 %i.o, -4611686018427387901
  %i.q = icmp ult i64 %i.p, 3
  br i1 %i.q, label %.invoke, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i.invoke

bb.e:                                             ; preds = %.preheader
  %i.r = load i64, ptr %i.c, align 8, !tbaa !183
  %i.s = add i64 %i.r, -4611686018427387901
  %i.t = icmp ult i64 %i.s, 3
  br i1 %i.t, label %.invoke, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i.invoke

end_hunk_0

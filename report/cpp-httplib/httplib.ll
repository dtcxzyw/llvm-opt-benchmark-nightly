Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/cpp-httplib/original/httplib?download=true
inline.NumInlined: 21623
inline.NumDeleted: 6597
loop-unroll.NumCompletelyUnrolled: 55
loop-unroll.NumRuntimeUnrolled: 49
loop-unroll.NumUnrolled: 109
begin_hunk_0_@_ZN7httplib2ws4impl20read_websocket_frameERNS_6StreamERNS0_6OpcodeERNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERbbm:bb.a
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
  %i.ag = load ptr, ptr %0, align 8, !tbaa !81
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
  %i.an = load i8, ptr %i.am, align 1, !tbaa !65
  %i.ao = zext i8 %i.an to i64
  %i.ap = shl nuw nsw i64 %i.al, 16
  %i.aq = shl nuw nsw i64 %i.ao, 8
  %i.ar = or disjoint i64 %i.ap, %i.aq
  %i.as = getelementptr inbounds nuw i8, ptr %i.c, i64 2
  %i.at = load i8, ptr %i.as, align 1, !tbaa !65
  %i.au = zext i8 %i.at to i64
  %i.av = or disjoint i64 %i.ar, %i.au
  %i.aw = getelementptr inbounds nuw i8, ptr %i.c, i64 3
  %i.ax = load i8, ptr %i.aw, align 1, !tbaa !65
  %i.ay = zext i8 %i.ax to i64
  %i.az = shl nuw nsw i64 %i.av, 16
  %i.ba = shl nuw nsw i64 %i.ay, 8
  %i.bb = or disjoint i64 %i.az, %i.ba
  %i.bc = getelementptr inbounds nuw i8, ptr %i.c, i64 4
  %i.bd = load i8, ptr %i.bc, align 1, !tbaa !65
  %i.be = zext i8 %i.bd to i64
  %i.bf = or disjoint i64 %i.bb, %i.be
  %i.bg = getelementptr inbounds nuw i8, ptr %i.c, i64 5
  %i.bh = load i8, ptr %i.bg, align 1, !tbaa !65
  %i.bi = zext i8 %i.bh to i64
  %i.bj = shl nuw nsw i64 %i.bf, 16
  %i.bk = shl nuw nsw i64 %i.bi, 8
  %i.bl = or disjoint i64 %i.bj, %i.bk
  %i.bm = getelementptr inbounds nuw i8, ptr %i.c, i64 6
  %i.bn = load i8, ptr %i.bm, align 1, !tbaa !65
  %i.bo = zext i8 %i.bn to i64
  %i.bp = or disjoint i64 %i.bl, %i.bo
  %i.bq = shl nuw nsw i64 %i.bp, 8
  %i.br = getelementptr inbounds nuw i8, ptr %i.c, i64 7
  %i.bs = load i8, ptr %i.br, align 1, !tbaa !65
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
  %i.bw = load ptr, ptr %0, align 8, !tbaa !81
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
  %i.ca = load ptr, ptr %2, align 8, !tbaa !77
  %i.cb = getelementptr inbounds nuw i8, ptr %i.ca, i64 %.048
  %i.cc = sub nuw nsw i64 %.3, %.048
  %i.cd = load ptr, ptr %0, align 8, !tbaa !81
  %i.ce = getelementptr inbounds nuw i8, ptr %i.cd, i64 48
  %i.cf = load ptr, ptr %i.ce, align 8
  %i.cg = call noundef i64 %i.cf(ptr noundef nonnull align 8 dereferenceable(12) %0, ptr noundef nonnull %i.cb, i64 noundef %i.cc) ; 2 uses
  %i.ch = icmp sgt i64 %i.cg, 0
  %i.ci = add i64 %i.cg, %.048
  br i1 %i.ch, label %.preheader84, label %.loopexit, !llvm.loop !298

.critedge75:                                      ; preds = %.preheader84, %bb.l
  br i1 %i.n, label %.preheader, label %.loopexit

.preheader:                                       ; preds = %.critedge75
  %i.cj = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.ck = load i64, ptr %i.cj, align 8, !tbaa !64
  %.not90 = icmp eq i64 %i.ck, 0
  br i1 %.not90, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader, %.lr.ph
  %.089 = phi i64 [ %i.cs, %.lr.ph ], [ 0, %.preheader ] ; 3 uses
  %i.cl = and i64 %.089, 3
  %i.cm = getelementptr inbounds nuw i8, ptr %i.d, i64 %i.cl
  %i.cn = load i8, ptr %i.cm, align 1, !tbaa !65
  %i.co = load ptr, ptr %2, align 8, !tbaa !77
  %i.cp = getelementptr inbounds nuw i8, ptr %i.co, i64 %.089 ; 2 uses
  %i.cq = load i8, ptr %i.cp, align 1, !tbaa !65
  %i.cr = xor i8 %i.cq, %i.cn
  store i8 %i.cr, ptr %i.cp, align 1, !tbaa !65
  %i.cs = add nuw i64 %.089, 1                    ; 2 uses
  %i.ct = load i64, ptr %i.cj, align 8, !tbaa !64
  %i.cu = icmp ult i64 %i.cs, %i.ct
  br i1 %i.cu, label %.lr.ph, label %.loopexit, !llvm.loop !299

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
  %i.b = load i64, ptr %i.a, align 8, !tbaa !64   ; 8 uses
  %.not = icmp eq i64 %i.b, 0
  br i1 %.not, label %.critedge.split, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.c = load ptr, ptr %0, align 8, !tbaa !77
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %bb.c
  %.03875 = phi i64 [ 0, %.lr.ph ], [ %i.g, %bb.c ] ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 %.03875
  %i.e = load i8, ptr %i.d, align 1, !tbaa !65
  %i.f = icmp eq i8 %i.e, 47
  br i1 %i.f, label %bb.c, label %.critedge.split

bb.c:                                             ; preds = %bb.b
  %i.g = add nuw i64 %.03875, 1                   ; 2 uses
  %exitcond.not = icmp eq i64 %i.g, %i.b
  br i1 %exitcond.not, label %.critedge50, label %bb.b, !llvm.loop !300

.critedge.split:                                  ; preds = %bb.b, %bb.a
  %.038.lcssa = phi i64 [ 0, %bb.a ], [ %.03875, %bb.b ] ; 2 uses
  %.not91 = icmp ult i64 %.038.lcssa, %i.b
  br i1 %.not91, label %.preheader.lr.ph, label %.critedge50

.preheader.lr.ph:                                 ; preds = %.critedge.split
  %i.h = load ptr, ptr %0, align 8, !tbaa !77     ; 4 uses
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
  %i.k = load i8, ptr %i.j, align 1, !tbaa !65
  switch i8 %i.k, label %bb.e [
    i8 47, label %.critedge2
    i8 0, label %.critedge50
    i8 92, label %.critedge50
  ]

bb.e:                                             ; preds = %bb.d
  %i.l = add i64 %.280, 1                         ; 2 uses
  %exitcond94.not = icmp eq i64 %i.l, %umax
  br i1 %exitcond94.not, label %.critedge2, label %bb.d, !llvm.loop !301

.critedge2:                                       ; preds = %bb.d, %bb.e
  %.2.lcssa = phi i64 [ %.280, %bb.d ], [ %umax, %bb.e ] ; 4 uses
  %1 = tail call i64 @llvm.umin.i64(i64 %.2.lcssa, i64 %i.b) ; 2 uses
  %i.m = sub nuw i64 %1, %.13987                  ; 3 uses
  %cond = icmp eq i64 %1, %.13987
  br i1 %cond, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7compareEmmPKc.exit61.thread, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i:     ; preds = %.critedge2
  %i.n = getelementptr inbounds nuw i8, ptr %i.h, i64 %.13987
  %lhsc = load i8, ptr %i.n, align 1
  %.not.i = icmp eq i8 %lhsc, 46
  %.not48 = icmp eq i64 %i.m, 1
  %or.cond = and i1 %.not48, %.not.i
  br i1 %or.cond, label %bb.h, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8_M_checkEmPKc.exit.i51

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8_M_checkEmPKc.exit.i51: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i
  %.sroa.speculated.i53 = tail call i64 @llvm.umin.i64(i64 %i.m, i64 2)
  %i.o = getelementptr inbounds nuw i8, ptr %i.h, i64 %.13987
  %bcmp = tail call i32 @bcmp(ptr %i.o, ptr nonnull @.str.28, i64 %.sroa.speculated.i53)
  %.not.i55 = icmp eq i32 %bcmp, 0
  %.not49 = icmp eq i64 %i.m, 2
  %or.cond66 = and i1 %.not49, %.not.i55
  br i1 %or.cond66, label %bb.f, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7compareEmmPKc.exit61.thread

bb.f:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8_M_checkEmPKc.exit.i51
  %i.p = icmp eq i64 %.04086, 0
  br i1 %i.p, label %.critedge50, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.q = add i64 %.04086, -1
  br label %bb.h

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7compareEmmPKc.exit61.thread: ; preds = %.critedge2, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8_M_checkEmPKc.exit.i51
  %i.r = add i64 %.04086, 1
  br label %bb.h

bb.h:                                             ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i, %bb.g, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7compareEmmPKc.exit61.thread
  %.141 = phi i64 [ %i.r, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7compareEmmPKc.exit61.thread ], [ %i.q, %bb.g ], [ %.04086, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i ]
  %i.s = icmp ult i64 %.2.lcssa, %i.b
  br i1 %i.s, label %.lr.ph82, label %.critedge4

.lr.ph82:                                         ; preds = %bb.h, %bb.i
  %.381 = phi i64 [ %i.w, %bb.i ], [ %.2.lcssa, %bb.h ] ; 3 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.h, i64 %.381
  %i.u = load i8, ptr %i.t, align 1, !tbaa !65
  %i.v = icmp eq i8 %i.u, 47
  br i1 %i.v, label %bb.i, label %.critedge4

bb.i:                                             ; preds = %.lr.ph82
  %i.w = add i64 %.381, 1                         ; 2 uses
  %exitcond95.not = icmp eq i64 %i.w, %i.b
  br i1 %exitcond95.not, label %.critedge50, label %.lr.ph82, !llvm.loop !302

.critedge4:                                       ; preds = %.lr.ph82, %bb.h
  %.3.lcssa = phi i64 [ %.2.lcssa, %bb.h ], [ %.381, %.lr.ph82 ] ; 2 uses
  %.not92 = icmp ult i64 %.3.lcssa, %i.b
  br i1 %.not92, label %.preheader, label %.critedge50, !llvm.loop !303

.critedge50:                                      ; preds = %bb.c, %.critedge4, %bb.f, %bb.d, %bb.d, %bb.i, %.critedge.split
  %i.x = phi i1 [ true, %.critedge.split ], [ false, %bb.f ], [ true, %bb.i ], [ false, %bb.d ], [ false, %bb.d ], [ true, %.critedge4 ], [ true, %bb.c ]
  ret i1 %i.x
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
  %i.e = load i64, ptr %i.d, align 8, !tbaa !64
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
  %i.a = load ptr, ptr %0, align 8, !tbaa !77
  %i.b = load ptr, ptr %1, align 8, !tbaa !77
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.d = load i64, ptr %i.c, align 8, !tbaa !64
  %i.e = tail call i32 @strncmp(ptr noundef %i.a, ptr noundef %i.b, i64 noundef %i.d) #51
  %i.f = icmp eq i32 %i.e, 0
  ret i1 %i.f
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i32 @strncmp(ptr noundef captures(none), ptr noundef captures(none), i64 noundef) local_unnamed_addr #21

; Function Attrs: mustprogress nofree nounwind uwtable
define void @_ZN7httplib6detail8FileStatC2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(148) initializes((144, 148)) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %1) unnamed_addr #22 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 144 ; 2 uses
  store i32 -1, ptr %i.a, align 8, !tbaa !213
  %i.b = load ptr, ptr %1, align 8, !tbaa !77
  %i.c = tail call i32 @stat(ptr noundef %i.b, ptr noundef nonnull %0) #23
  store i32 %i.c, ptr %i.a, align 8, !tbaa !213
  ret void
}

; Function Attrs: nofree nounwind
declare noundef i32 @stat(ptr noundef readonly captures(none), ptr noundef captures(none)) local_unnamed_addr #20

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define noundef zeroext i1 @_ZNK7httplib6detail8FileStat6is_dirEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(148) %0) local_unnamed_addr #3 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 144
  %i.b = load i32, ptr %i.a, align 8, !tbaa !213
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
  store ptr %i.b, ptr %0, align 8, !tbaa !63
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 12 uses
  store i64 0, ptr %i.c, align 8, !tbaa !64
  store i8 0, ptr %i.b, align 8, !tbaa !65
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.e = load i64, ptr %i.d, align 8, !tbaa !64
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7reserveEm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %i.e)
          to label %.preheader unwind label %bb.b

.preheader:                                       ; preds = %bb.a, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit
  %.0 = phi i64 [ %i.bj, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit ], [ 0, %bb.a ] ; 2 uses
  %i.f = load ptr, ptr %1, align 8, !tbaa !77
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 %.0
  %i.h = load i8, ptr %i.g, align 1, !tbaa !65    ; 4 uses
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
  %i.j = load i64, ptr %i.c, align 8, !tbaa !64
  %i.k = add i64 %i.j, -4611686018427387901
  %i.l = icmp ult i64 %i.k, 3
  br i1 %i.l, label %.invoke, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i.invoke

.invoke:                                          ; preds = %bb.c, %bb.i, %bb.h, %bb.g, %bb.f, %bb.e, %bb.d
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.361) #47
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
  %i.o = load i64, ptr %i.c, align 8, !tbaa !64
  %i.p = add i64 %i.o, -4611686018427387901
  %i.q = icmp ult i64 %i.p, 3
  br i1 %i.q, label %.invoke, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i.invoke

bb.e:                                             ; preds = %.preheader
  %i.r = load i64, ptr %i.c, align 8, !tbaa !64
  %i.s = add i64 %i.r, -4611686018427387901
  %i.t = icmp ult i64 %i.s, 3
  br i1 %i.t, label %.invoke, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i.invoke

bb.f:                                             ; preds = %.preheader
  %i.u = load i64, ptr %i.c, align 8, !tbaa !64
  %i.v = add i64 %i.u, -4611686018427387901
  %i.w = icmp ult i64 %i.v, 3
  br i1 %i.w, label %.invoke, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i.invoke

bb.g:                                             ; preds = %.preheader
  %i.x = load i64, ptr %i.c, align 8, !tbaa !64
  %i.y = add i64 %i.x, -4611686018427387901
  %i.z = icmp ult i64 %i.y, 3
  br i1 %i.z, label %.invoke, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i.invoke

bb.h:                                             ; preds = %.preheader
  %i.aa = load i64, ptr %i.c, align 8, !tbaa !64
  %i.ab = add i64 %i.aa, -4611686018427387901
  %i.ac = icmp ult i64 %i.ab, 3
end_hunk_0
begin_hunk_1_@_ZNSt23_Sp_counted_ptr_inplaceIZN7httplib6detail31make_multipart_content_providerERKSt6vectorINS0_14UploadFormDataESaIS3_EERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE14MultipartStateSaIvELN9__gnu_cxx12_Lock_policyE2EE10_M_disposeEv:bb.a
  %i.g = ptrtoint ptr %i.c to i64
  %i.h = sub i64 %i.f, %i.g
  tail call void @_ZdlPvm(ptr noundef nonnull %i.c, i64 noundef %i.h) #46
  br label %_ZNSt6vectorIcSaIcEED2Ev.exit.i.i

_ZNSt6vectorIcSaIcEED2Ev.exit.i.i:                ; preds = %bb.b, %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !782  ; 3 uses
  %.not.i.i.i1.i.i = icmp eq ptr %i.j, null
  br i1 %.not.i.i.i1.i.i, label %_ZNSt6vectorIN7httplib6detail16MultipartSegmentESaIS2_EED2Ev.exit.i.i, label %bb.c

bb.c:                                             ; preds = %_ZNSt6vectorIcSaIcEED2Ev.exit.i.i
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !785
  %i.m = ptrtoint ptr %i.l to i64
  %i.n = ptrtoint ptr %i.j to i64
  %i.o = sub i64 %i.m, %i.n
  tail call void @_ZdlPvm(ptr noundef nonnull %i.j, i64 noundef %i.o) #46
  br label %_ZNSt6vectorIN7httplib6detail16MultipartSegmentESaIS2_EED2Ev.exit.i.i

_ZNSt6vectorIN7httplib6detail16MultipartSegmentESaIS2_EED2Ev.exit.i.i: ; preds = %bb.c, %_ZNSt6vectorIcSaIcEED2Ev.exit.i.i
  %i.p = load ptr, ptr %i.a, align 8, !tbaa !683  ; 3 uses
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !685  ; 2 uses
  %.not4.i.i.i.i.i = icmp eq ptr %i.p, %i.r
  br i1 %.not4.i.i.i.i.i, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i.i, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %_ZNSt6vectorIN7httplib6detail16MultipartSegmentESaIS2_EED2Ev.exit.i.i, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i.i
  %.05.i.i.i.i.i = phi ptr [ %i.x, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i.i ], [ %i.p, %_ZNSt6vectorIN7httplib6detail16MultipartSegmentESaIS2_EED2Ev.exit.i.i ] ; 3 uses
  %i.s = load ptr, ptr %.05.i.i.i.i.i, align 8, !tbaa !77 ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i, i64 16 ; 2 uses
  %i.u = icmp eq ptr %i.s, %i.t
  br i1 %i.u, label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i
  %i.v = load i64, ptr %i.t, align 8, !tbaa !65
  %i.w = add i64 %i.v, 1
  tail call void @_ZdlPvm(ptr noundef %i.s, i64 noundef %i.w) #46
  br label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i.i

_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i
  %i.x = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i, i64 32 ; 2 uses
  %.not.i.i.i2.i.i = icmp eq ptr %i.x, %i.r
  br i1 %.not.i.i.i2.i.i, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i.i.i, label %.lr.ph.i.i.i.i.i, !llvm.loop !686

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i.i.i: ; preds = %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i.i
  %.pr.i.i.i = load ptr, ptr %i.a, align 8, !tbaa !683
  br label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i.i

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i.i: ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i.i.i, %_ZNSt6vectorIN7httplib6detail16MultipartSegmentESaIS2_EED2Ev.exit.i.i
  %i.y = phi ptr [ %.pr.i.i.i, %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i.i.i ], [ %i.p, %_ZNSt6vectorIN7httplib6detail16MultipartSegmentESaIS2_EED2Ev.exit.i.i ] ; 3 uses
  %.not.i.i1.i.i.i = icmp eq ptr %i.y, null
  br i1 %.not.i.i1.i.i.i, label %_ZSt8_DestroyIZN7httplib6detail31make_multipart_content_providerERKSt6vectorINS0_14UploadFormDataESaIS3_EERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE14MultipartStateEvPT_.exit, label %bb.d

bb.d:                                             ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i.i
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !697
  %i.ab = ptrtoint ptr %i.aa to i64
  %i.ac = ptrtoint ptr %i.y to i64
  %i.ad = sub i64 %i.ab, %i.ac
  tail call void @_ZdlPvm(ptr noundef nonnull %i.y, i64 noundef %i.ad) #46
  br label %_ZSt8_DestroyIZN7httplib6detail31make_multipart_content_providerERKSt6vectorINS0_14UploadFormDataESaIS3_EERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE14MultipartStateEvPT_.exit

_ZSt8_DestroyIZN7httplib6detail31make_multipart_content_providerERKSt6vectorINS0_14UploadFormDataESaIS3_EERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE14MultipartStateEvPT_.exit: ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i.i, %bb.d
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define internal void @_ZNSt23_Sp_counted_ptr_inplaceIZN7httplib6detail31make_multipart_content_providerERKSt6vectorINS0_14UploadFormDataESaIS3_EERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE14MultipartStateSaIvELN9__gnu_cxx12_Lock_policyE2EE10_M_destroyEv(ptr noundef nonnull align 8 dereferenceable(88) %0) unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 {
_ZNSt15__allocated_ptrISaISt23_Sp_counted_ptr_inplaceIZN7httplib6detail31make_multipart_content_providerERKSt6vectorINS1_14UploadFormDataESaIS4_EERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE14MultipartStateSaIvELN9__gnu_cxx12_Lock_policyE2EEEED2Ev.exit:
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 88) #46
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define internal noundef ptr @_ZNSt23_Sp_counted_ptr_inplaceIZN7httplib6detail31make_multipart_content_providerERKSt6vectorINS0_14UploadFormDataESaIS3_EERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE14MultipartStateSaIvELN9__gnu_cxx12_Lock_policyE2EE14_M_get_deleterERKSt9type_info(ptr nofree noundef nonnull readnone align 8 captures(ret: address, provenance) dereferenceable(88) %0, ptr nofree noundef nonnull readonly align 8 captures(address) dereferenceable(16) %1) unnamed_addr #4 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.b = icmp eq ptr %1, @_ZZNSt19_Sp_make_shared_tag5_S_tiEvE5__tag
  br i1 %i.b, label %_ZNKSt9type_infoeqERKS_.exit.thread8, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !2614 ; 3 uses
  %i.e = icmp eq ptr %i.d, @_ZTSSt19_Sp_make_shared_tag
  br i1 %i.e, label %_ZNKSt9type_infoeqERKS_.exit.thread, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = load i8, ptr %i.d, align 1, !tbaa !65
  %.not.i = icmp eq i8 %i.f, 42
  br i1 %.not.i, label %_ZNKSt9type_infoeqERKS_.exit.thread8, label %_ZNKSt9type_infoeqERKS_.exit

_ZNKSt9type_infoeqERKS_.exit:                     ; preds = %bb.c
  %i.g = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.d, ptr noundef nonnull dereferenceable(24) @_ZTSSt19_Sp_make_shared_tag) #23
  %.fr = freeze i32 %i.g
  %i.h = icmp eq i32 %.fr, 0
  br i1 %i.h, label %_ZNKSt9type_infoeqERKS_.exit.thread, label %_ZNKSt9type_infoeqERKS_.exit.thread8

_ZNKSt9type_infoeqERKS_.exit.thread:              ; preds = %bb.b, %_ZNKSt9type_infoeqERKS_.exit
  br label %_ZNKSt9type_infoeqERKS_.exit.thread8

_ZNKSt9type_infoeqERKS_.exit.thread8:             ; preds = %bb.c, %_ZNKSt9type_infoeqERKS_.exit.thread, %_ZNKSt9type_infoeqERKS_.exit, %bb.a
  %.0 = phi ptr [ %i.a, %bb.a ], [ %i.a, %_ZNKSt9type_infoeqERKS_.exit.thread ], [ null, %_ZNKSt9type_infoeqERKS_.exit ], [ null, %bb.c ]
  ret ptr %.0
}

; Function Attrs: mustprogress uwtable
define internal noundef zeroext i1 @"_ZNSt17_Function_handlerIFbmmRN7httplib8DataSinkEEZNS0_6detail31make_multipart_content_providerERKSt6vectorINS0_14UploadFormDataESaIS6_EERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE3$_0E9_M_invokeERKSt9_Any_dataOmSO_S2_"(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %1, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %2, ptr noundef nonnull align 8 dereferenceable(472) %3) #7 align 2 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 4 uses
  %i.b = alloca i64, align 8                      ; 4 uses
  %i.c = alloca ptr, align 8                      ; 4 uses
  %i.d = alloca i64, align 8                      ; 4 uses
  %.val = load ptr, ptr %0, align 8, !tbaa !71    ; 2 uses
  %.val4 = load i64, ptr %1, align 8, !tbaa !78   ; 2 uses
  %.val5 = load i64, ptr %2, align 8, !tbaa !78   ; 2 uses
  %.val73.i.i.i = load ptr, ptr %.val, align 8, !tbaa !787 ; 5 uses
  %i.e = getelementptr inbounds nuw i8, ptr %.val73.i.i.i, i64 48 ; 4 uses
  %i.f = getelementptr inbounds nuw i8, ptr %.val73.i.i.i, i64 56
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !781
  %i.h = load ptr, ptr %i.e, align 8, !tbaa !778
  %i.i = ptrtoint ptr %i.g to i64
  %i.j = ptrtoint ptr %i.h to i64
  %i.k = sub i64 %i.i, %i.j                       ; 3 uses
  %i.l = getelementptr inbounds nuw i8, ptr %.val73.i.i.i, i64 24
  %i.m = getelementptr inbounds nuw i8, ptr %.val73.i.i.i, i64 32
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !786  ; 2 uses
  %i.o = load ptr, ptr %i.l, align 8, !tbaa !782  ; 4 uses
  %i.p = ptrtoint ptr %i.n to i64
  %i.q = ptrtoint ptr %i.o to i64
  %i.r = sub i64 %i.p, %i.q
  %i.s = ashr exact i64 %i.r, 4                   ; 2 uses
  %.not128.not.i.i.i = icmp eq ptr %i.n, %i.o     ; 2 uses
  br i1 %.not128.not.i.i.i, label %._crit_edge.i.i.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.a, %bb.b
  %.049103.i.i.i = phi i64 [ %i.z, %bb.b ], [ 0, %bb.a ] ; 3 uses
  %.051102.i.i.i = phi i64 [ %i.y, %bb.b ], [ 0, %bb.a ] ; 3 uses
  %i.t = getelementptr inbounds nuw [16 x i8], ptr %i.o, i64 %.049103.i.i.i
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 8
  %i.v = load i64, ptr %i.u, align 8, !tbaa !3348 ; 3 uses
  %.not.i.i.i = icmp ne i64 %i.v, 0
  %i.w = sub i64 %.val4, %.051102.i.i.i
  %i.x = icmp ult i64 %i.w, %i.v
  %or.cond.i.i.i = select i1 %.not.i.i.i, i1 %i.x, i1 false
  br i1 %or.cond.i.i.i, label %._crit_edge.i.i.i, label %bb.b

bb.b:                                             ; preds = %.lr.ph.i.i.i
  %i.y = add i64 %i.v, %.051102.i.i.i
  %i.z = add nuw i64 %.049103.i.i.i, 1            ; 2 uses
  %exitcond.not.i.i.i = icmp eq i64 %i.z, %i.s
  br i1 %exitcond.not.i.i.i, label %"_ZSt10__invoke_rIbRZN7httplib6detail31make_multipart_content_providerERKSt6vectorINS0_14UploadFormDataESaIS3_EERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE3$_0JmmRNS0_8DataSinkEEENSt9enable_ifIX16is_invocable_r_vIT_T0_DpT1_EESL_E4typeEOSM_DpOSN_.exit", label %.lr.ph.i.i.i, !llvm.loop !3350

._crit_edge.i.i.i:                                ; preds = %.lr.ph.i.i.i, %bb.a
  %.051.lcssa.i.i.i = phi i64 [ 0, %bb.a ], [ %.051102.i.i.i, %.lr.ph.i.i.i ]
  %.049.lcssa.i.i.i = phi i64 [ 0, %bb.a ], [ %.049103.i.i.i, %.lr.ph.i.i.i ] ; 2 uses
  %i.aa = icmp ult i64 %.049.lcssa.i.i.i, %i.s
  %i.ab = icmp ne i64 %.val5, 0
  %i.ac = and i1 %i.ab, %i.aa
  br i1 %i.ac, label %.lr.ph125.i.i.i, label %"_ZSt10__invoke_rIbRZN7httplib6detail31make_multipart_content_providerERKSt6vectorINS0_14UploadFormDataESaIS3_EERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE3$_0JmmRNS0_8DataSinkEEENSt9enable_ifIX16is_invocable_r_vIT_T0_DpT1_EESL_E4typeEOSM_DpOSN_.exit"

.lr.ph125.i.i.i:                                  ; preds = %._crit_edge.i.i.i
  %i.ad = sub i64 %.val4, %.051.lcssa.i.i.i
  %i.ae = select i1 %.not128.not.i.i.i, i64 0, i64 %i.ad
  %i.af = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %3, i64 24 ; 2 uses
  br label %bb.c

bb.c:                                             ; preds = %select.unfold._crit_edge.i.i.i, %.lr.ph125.i.i.i
  %.val69132.i.i.i = phi ptr [ %.val73.i.i.i, %.lr.ph125.i.i.i ], [ %.val69.i.i.i, %select.unfold._crit_edge.i.i.i ]
  %i.ah = phi ptr [ %i.o, %.lr.ph125.i.i.i ], [ %i.be, %select.unfold._crit_edge.i.i.i ]
  %.047123.i.i.i = phi i64 [ %i.ae, %.lr.ph125.i.i.i ], [ 0, %select.unfold._crit_edge.i.i.i ] ; 2 uses
  %.150122.i.i.i = phi i64 [ %.049.lcssa.i.i.i, %.lr.ph125.i.i.i ], [ %i.ba, %select.unfold._crit_edge.i.i.i ] ; 2 uses
  %.054121.i.i.i = phi i64 [ 0, %.lr.ph125.i.i.i ], [ %.155.lcssa.i.i.i, %select.unfold._crit_edge.i.i.i ] ; 2 uses
  %.090120.i.i.i = phi i64 [ %.val5, %.lr.ph125.i.i.i ], [ %.1.lcssa.i.i.i, %select.unfold._crit_edge.i.i.i ] ; 3 uses
  %i.ai = getelementptr inbounds nuw [16 x i8], ptr %i.ah, i64 %.150122.i.i.i ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 8
  %i.ak = load i64, ptr %i.aj, align 8, !tbaa !3348
  %i.al = sub i64 %i.ak, %.047123.i.i.i
  %spec.select95.i.i.i = call i64 @llvm.umin.i64(i64 %.090120.i.i.i, i64 %i.al) ; 2 uses
  %.not66110.i.i.i = icmp eq i64 %spec.select95.i.i.i, 0
  br i1 %.not66110.i.i.i, label %select.unfold._crit_edge.i.i.i, label %.lr.ph116.preheader.i.i.i

.lr.ph116.preheader.i.i.i:                        ; preds = %bb.c
  %i.am = load ptr, ptr %i.ai, align 8, !tbaa !3351
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 %.047123.i.i.i
  br label %.lr.ph116.i.i.i

.lr.ph116.i.i.i:                                  ; preds = %select.unfold.backedge.i.i.i, %.lr.ph116.preheader.i.i.i
  %.0114.i.i.i = phi ptr [ %i.as, %select.unfold.backedge.i.i.i ], [ %i.an, %.lr.ph116.preheader.i.i.i ] ; 2 uses
  %.155113.i.i.i = phi i64 [ %.155.be.i.i.i, %select.unfold.backedge.i.i.i ], [ %.054121.i.i.i, %.lr.ph116.preheader.i.i.i ] ; 3 uses
  %.089112.i.i.i = phi i64 [ %i.at, %select.unfold.backedge.i.i.i ], [ %spec.select95.i.i.i, %.lr.ph116.preheader.i.i.i ] ; 2 uses
  %.1111.i.i.i = phi i64 [ %i.au, %select.unfold.backedge.i.i.i ], [ %.090120.i.i.i, %.lr.ph116.preheader.i.i.i ]
  %i.ao = sub i64 %i.k, %.155113.i.i.i
  %.sroa.speculated.i.i.i = call i64 @llvm.umin.i64(i64 %i.ao, i64 %.089112.i.i.i) ; 5 uses
  %i.ap = load ptr, ptr %i.e, align 8, !tbaa !778
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ap, i64 %.155113.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.aq, ptr align 1 %.0114.i.i.i, i64 %.sroa.speculated.i.i.i, i1 false)
  %i.ar = add i64 %.sroa.speculated.i.i.i, %.155113.i.i.i ; 2 uses
  %i.as = getelementptr inbounds nuw i8, ptr %.0114.i.i.i, i64 %.sroa.speculated.i.i.i
  %i.at = sub nuw i64 %.089112.i.i.i, %.sroa.speculated.i.i.i ; 2 uses
  %i.au = sub i64 %.1111.i.i.i, %.sroa.speculated.i.i.i ; 2 uses
  %i.av = icmp eq i64 %i.ar, %i.k
  br i1 %i.av, label %bb.d, label %select.unfold.backedge.i.i.i

bb.d:                                             ; preds = %.lr.ph116.i.i.i
  %i.aw = load ptr, ptr %i.e, align 8, !tbaa !778
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  store ptr %i.aw, ptr %i.c, align 8, !tbaa !314
  store i64 %i.k, ptr %i.d, align 8, !tbaa !78
  %i.ax = load ptr, ptr %i.af, align 8, !tbaa !159
  %.not.i.i.i.i.i = icmp eq ptr %i.ax, null
  br i1 %.not.i.i.i.i.i, label %bb.e, label %_ZNKSt8functionIFbPKcmEEclES1_m.exit.i.i.i

bb.e:                                             ; preds = %bb.d
  call void @_ZSt25__throw_bad_function_callv() #47
  unreachable

_ZNKSt8functionIFbPKcmEEclES1_m.exit.i.i.i:       ; preds = %bb.d
  %i.ay = load ptr, ptr %i.ag, align 8, !tbaa !493
  %i.az = call noundef zeroext i1 %i.ay(ptr noundef nonnull align 8 dereferenceable(472) %3, ptr noundef nonnull align 8 dereferenceable(8) %i.c, ptr noundef nonnull align 8 dereferenceable(8) %i.d), !inline_history !3352
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  br i1 %i.az, label %select.unfold.backedge.i.i.i, label %"_ZSt10__invoke_rIbRZN7httplib6detail31make_multipart_content_providerERKSt6vectorINS0_14UploadFormDataESaIS3_EERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE3$_0JmmRNS0_8DataSinkEEENSt9enable_ifIX16is_invocable_r_vIT_T0_DpT1_EESL_E4typeEOSM_DpOSN_.exit"

select.unfold.backedge.i.i.i:                     ; preds = %_ZNKSt8functionIFbPKcmEEclES1_m.exit.i.i.i, %.lr.ph116.i.i.i
  %.155.be.i.i.i = phi i64 [ %i.ar, %.lr.ph116.i.i.i ], [ 0, %_ZNKSt8functionIFbPKcmEEclES1_m.exit.i.i.i ] ; 2 uses
  %.not66.i.i.i = icmp eq i64 %i.at, 0
  br i1 %.not66.i.i.i, label %select.unfold._crit_edge.loopexit.i.i.i, label %.lr.ph116.i.i.i, !llvm.loop !3353

select.unfold._crit_edge.loopexit.i.i.i:          ; preds = %select.unfold.backedge.i.i.i
  %.val69.pre.i.i.i = load ptr, ptr %.val, align 8, !tbaa !787
  br label %select.unfold._crit_edge.i.i.i

select.unfold._crit_edge.i.i.i:                   ; preds = %select.unfold._crit_edge.loopexit.i.i.i, %bb.c
  %.val69.i.i.i = phi ptr [ %.val69132.i.i.i, %bb.c ], [ %.val69.pre.i.i.i, %select.unfold._crit_edge.loopexit.i.i.i ] ; 3 uses
  %.1.lcssa.i.i.i = phi i64 [ %.090120.i.i.i, %bb.c ], [ %i.au, %select.unfold._crit_edge.loopexit.i.i.i ] ; 2 uses
  %.155.lcssa.i.i.i = phi i64 [ %.054121.i.i.i, %bb.c ], [ %.155.be.i.i.i, %select.unfold._crit_edge.loopexit.i.i.i ] ; 3 uses
  %i.ba = add nuw i64 %.150122.i.i.i, 1           ; 2 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %.val69.i.i.i, i64 24
  %i.bc = getelementptr inbounds nuw i8, ptr %.val69.i.i.i, i64 32
  %i.bd = load ptr, ptr %i.bc, align 8, !tbaa !786
  %i.be = load ptr, ptr %i.bb, align 8, !tbaa !782 ; 2 uses
  %i.bf = ptrtoint ptr %i.bd to i64
  %i.bg = ptrtoint ptr %i.be to i64
  %i.bh = sub i64 %i.bf, %i.bg
  %i.bi = ashr exact i64 %i.bh, 4
  %i.bj = icmp ult i64 %i.ba, %i.bi
  %i.bk = icmp ne i64 %.1.lcssa.i.i.i, 0
  %i.bl = select i1 %i.bj, i1 %i.bk, i1 false
  br i1 %i.bl, label %bb.c, label %._crit_edge126.i.i.i, !llvm.loop !3354

._crit_edge126.i.i.i:                             ; preds = %select.unfold._crit_edge.i.i.i
  %.not65.i.i.i = icmp eq i64 %.155.lcssa.i.i.i, 0
  br i1 %.not65.i.i.i, label %"_ZSt10__invoke_rIbRZN7httplib6detail31make_multipart_content_providerERKSt6vectorINS0_14UploadFormDataESaIS3_EERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE3$_0JmmRNS0_8DataSinkEEENSt9enable_ifIX16is_invocable_r_vIT_T0_DpT1_EESL_E4typeEOSM_DpOSN_.exit", label %bb.f

bb.f:                                             ; preds = %._crit_edge126.i.i.i
  %i.bm = load ptr, ptr %i.e, align 8, !tbaa !778
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store ptr %i.bm, ptr %i.a, align 8, !tbaa !314
  store i64 %.155.lcssa.i.i.i, ptr %i.b, align 8, !tbaa !78
  %i.bn = load ptr, ptr %i.af, align 8, !tbaa !159
  %.not.i.i75.i.i.i = icmp eq ptr %i.bn, null
  br i1 %.not.i.i75.i.i.i, label %bb.g, label %_ZNKSt8functionIFbPKcmEEclES1_m.exit76.i.i.i

bb.g:                                             ; preds = %bb.f
  call void @_ZSt25__throw_bad_function_callv() #47
  unreachable

_ZNKSt8functionIFbPKcmEEclES1_m.exit76.i.i.i:     ; preds = %bb.f
  %i.bo = load ptr, ptr %i.ag, align 8, !tbaa !493
  %i.bp = call noundef zeroext i1 %i.bo(ptr noundef nonnull align 8 dereferenceable(472) %3, ptr noundef nonnull align 8 dereferenceable(8) %i.a, ptr noundef nonnull align 8 dereferenceable(8) %i.b), !inline_history !3352
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %"_ZSt10__invoke_rIbRZN7httplib6detail31make_multipart_content_providerERKSt6vectorINS0_14UploadFormDataESaIS3_EERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE3$_0JmmRNS0_8DataSinkEEENSt9enable_ifIX16is_invocable_r_vIT_T0_DpT1_EESL_E4typeEOSM_DpOSN_.exit"

"_ZSt10__invoke_rIbRZN7httplib6detail31make_multipart_content_providerERKSt6vectorINS0_14UploadFormDataESaIS3_EERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE3$_0JmmRNS0_8DataSinkEEENSt9enable_ifIX16is_invocable_r_vIT_T0_DpT1_EESL_E4typeEOSM_DpOSN_.exit": ; preds = %bb.b, %_ZNKSt8functionIFbPKcmEEclES1_m.exit.i.i.i, %._crit_edge.i.i.i, %._crit_edge126.i.i.i, %_ZNKSt8functionIFbPKcmEEclES1_m.exit76.i.i.i
  %.461.i.i.i = phi i1 [ true, %._crit_edge126.i.i.i ], [ %i.bp, %_ZNKSt8functionIFbPKcmEEclES1_m.exit76.i.i.i ], [ false, %_ZNKSt8functionIFbPKcmEEclES1_m.exit.i.i.i ], [ true, %._crit_edge.i.i.i ], [ true, %bb.b ]
  ret i1 %.461.i.i.i
}

; Function Attrs: mustprogress uwtable
define internal noundef zeroext i1 @"_ZNSt17_Function_handlerIFbmmRN7httplib8DataSinkEEZNS0_6detail31make_multipart_content_providerERKSt6vectorINS0_14UploadFormDataESaIS6_EERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE3$_0E10_M_managerERSt9_Any_dataRKSL_St18_Manager_operation"(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(16) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %1, i32 noundef %2) #7 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  switch i32 %2, label %"_ZNSt14_Function_base13_Base_managerIZN7httplib6detail31make_multipart_content_providerERKSt6vectorINS1_14UploadFormDataESaIS4_EERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE3$_0E10_M_managerERSt9_Any_dataRKSJ_St18_Manager_operation.exit" [
    i32 0, label %bb.b
    i32 1, label %bb.c
    i32 3, label %bb.h
    i32 2, label %bb.d
  ]

bb.b:                                             ; preds = %bb.a
  store ptr @"_ZTIZN7httplib6detail31make_multipart_content_providerERKSt6vectorINS_14UploadFormDataESaIS2_EERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE3$_0", ptr %0, align 8, !tbaa !2756
  br label %"_ZNSt14_Function_base13_Base_managerIZN7httplib6detail31make_multipart_content_providerERKSt6vectorINS1_14UploadFormDataESaIS4_EERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE3$_0E10_M_managerERSt9_Any_dataRKSJ_St18_Manager_operation.exit"

bb.c:                                             ; preds = %bb.a
  %.val = load ptr, ptr %1, align 8, !tbaa !71
  store ptr %.val, ptr %0, align 8, !tbaa !71
  br label %"_ZNSt14_Function_base13_Base_managerIZN7httplib6detail31make_multipart_content_providerERKSt6vectorINS1_14UploadFormDataESaIS4_EERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE3$_0E10_M_managerERSt9_Any_dataRKSJ_St18_Manager_operation.exit"

bb.d:                                             ; preds = %bb.a
  %.val6 = load ptr, ptr %1, align 8              ; 2 uses
  %i.a = tail call noalias noundef nonnull dereferenceable(16) ptr @_Znwm(i64 noundef 16) #50 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %.val6, i64 8
  %.val2.i.i.i = load ptr, ptr %i.b, align 8, !tbaa !321 ; 2 uses
  %i.c = load <2 x ptr>, ptr %.val6, align 8, !tbaa !71
  store <2 x ptr> %i.c, ptr %i.a, align 8, !tbaa !71
  %.not.i.i.i.i.i.i.i = icmp eq ptr %.val2.i.i.i, null
  br i1 %.not.i.i.i.i.i.i.i, label %"_ZNSt14_Function_base13_Base_managerIZN7httplib6detail31make_multipart_content_providerERKSt6vectorINS1_14UploadFormDataESaIS4_EERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE3$_0E15_M_init_functorIRKSH_EEvRSt9_Any_dataOT_.exit.i", label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.d = getelementptr inbounds nuw i8, ptr %.val2.i.i.i, i64 8 ; 3 uses
  %i.e = load i8, ptr @__libc_single_threaded, align 1, !tbaa !65
  %.not.i.i.i.i.i.i.i.i = icmp eq i8 %i.e, 0
  br i1 %.not.i.i.i.i.i.i.i.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.f = load i32, ptr %i.d, align 4, !tbaa !175
  %i.g = add nsw i32 %i.f, 1
  store i32 %i.g, ptr %i.d, align 4, !tbaa !175
  br label %"_ZNSt14_Function_base13_Base_managerIZN7httplib6detail31make_multipart_content_providerERKSt6vectorINS1_14UploadFormDataESaIS4_EERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE3$_0E15_M_init_functorIRKSH_EEvRSt9_Any_dataOT_.exit.i"

bb.g:                                             ; preds = %bb.e
  %i.h = atomicrmw volatile add ptr %i.d, i32 1 acq_rel, align 4 ; 0 uses
  br label %"_ZNSt14_Function_base13_Base_managerIZN7httplib6detail31make_multipart_content_providerERKSt6vectorINS1_14UploadFormDataESaIS4_EERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE3$_0E15_M_init_functorIRKSH_EEvRSt9_Any_dataOT_.exit.i"

"_ZNSt14_Function_base13_Base_managerIZN7httplib6detail31make_multipart_content_providerERKSt6vectorINS1_14UploadFormDataESaIS4_EERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE3$_0E15_M_init_functorIRKSH_EEvRSt9_Any_dataOT_.exit.i": ; preds = %bb.g, %bb.f, %bb.d
  store ptr %i.a, ptr %0, align 8, !tbaa !71
  br label %"_ZNSt14_Function_base13_Base_managerIZN7httplib6detail31make_multipart_content_providerERKSt6vectorINS1_14UploadFormDataESaIS4_EERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE3$_0E10_M_managerERSt9_Any_dataRKSJ_St18_Manager_operation.exit"

bb.h:                                             ; preds = %bb.a
  %.val7.i = load ptr, ptr %0, align 8, !tbaa !71 ; 3 uses
  %i.i = icmp eq ptr %.val7.i, null
  br i1 %i.i, label %"_ZNSt14_Function_base13_Base_managerIZN7httplib6detail31make_multipart_content_providerERKSt6vectorINS1_14UploadFormDataESaIS4_EERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE3$_0E10_M_managerERSt9_Any_dataRKSJ_St18_Manager_operation.exit", label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.j = getelementptr i8, ptr %.val7.i, i64 8
  %.val.i.i = load ptr, ptr %i.j, align 8, !tbaa !321 ; 8 uses
  %.not.i.i.i.i.i = icmp eq ptr %.val.i.i, null
  br i1 %.not.i.i.i.i.i, label %"_ZZN7httplib6detail31make_multipart_content_providerERKSt6vectorINS_14UploadFormDataESaIS2_EERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEN3$_0D2Ev.exit.i.i", label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.k = getelementptr inbounds nuw i8, ptr %.val.i.i, i64 8 ; 4 uses
  %i.l = load atomic i64, ptr %i.k acquire, align 8 ; 2 uses
  %i.m = icmp eq i64 %i.l, 4294967297
  %i.n = trunc i64 %i.l to i32                    ; 2 uses
  br i1 %i.m, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  store i32 0, ptr %i.k, align 8, !tbaa !324
  %i.o = getelementptr inbounds nuw i8, ptr %.val.i.i, i64 12
  store i32 0, ptr %i.o, align 4, !tbaa !326
  %i.p = load ptr, ptr %.val.i.i, align 8, !tbaa !81
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 16
  %i.r = load ptr, ptr %i.q, align 8
  tail call void %i.r(ptr noundef nonnull align 8 dereferenceable(16) %.val.i.i) #23, !inline_history !3355
  %i.s = load ptr, ptr %.val.i.i, align 8, !tbaa !81
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 24
  %i.u = load ptr, ptr %i.t, align 8
  tail call void %i.u(ptr noundef nonnull align 8 dereferenceable(16) %.val.i.i) #23, !inline_history !3355
  br label %"_ZZN7httplib6detail31make_multipart_content_providerERKSt6vectorINS_14UploadFormDataESaIS2_EERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEN3$_0D2Ev.exit.i.i"

bb.l:                                             ; preds = %bb.j
  %i.v = load i8, ptr @__libc_single_threaded, align 1, !tbaa !65
  %.not.i.i.i.i.i.i = icmp eq i8 %i.v, 0
  br i1 %.not.i.i.i.i.i.i, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.w = add nsw i32 %i.n, -1
  store i32 %i.w, ptr %i.k, align 8, !tbaa !175
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i

bb.n:                                             ; preds = %bb.l
  %i.x = atomicrmw volatile add ptr %i.k, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i: ; preds = %bb.n, %bb.m
  %.0.i.i.i.i.i.i.i = phi i32 [ %i.n, %bb.m ], [ %i.x, %bb.n ]
  %i.y = icmp eq i32 %.0.i.i.i.i.i.i.i, 1
  br i1 %i.y, label %bb.o, label %"_ZZN7httplib6detail31make_multipart_content_providerERKSt6vectorINS_14UploadFormDataESaIS2_EERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEN3$_0D2Ev.exit.i.i", !prof !85

bb.o:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %.val.i.i) #23
  br label %"_ZZN7httplib6detail31make_multipart_content_providerERKSt6vectorINS_14UploadFormDataESaIS2_EERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEN3$_0D2Ev.exit.i.i"

"_ZZN7httplib6detail31make_multipart_content_providerERKSt6vectorINS_14UploadFormDataESaIS2_EERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEN3$_0D2Ev.exit.i.i": ; preds = %bb.o, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i, %bb.k, %bb.i
  tail call void @_ZdlPvm(ptr noundef nonnull %.val7.i, i64 noundef 16) #46
  br label %"_ZNSt14_Function_base13_Base_managerIZN7httplib6detail31make_multipart_content_providerERKSt6vectorINS1_14UploadFormDataESaIS4_EERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE3$_0E10_M_managerERSt9_Any_dataRKSJ_St18_Manager_operation.exit"

"_ZNSt14_Function_base13_Base_managerIZN7httplib6detail31make_multipart_content_providerERKSt6vectorINS1_14UploadFormDataESaIS4_EERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE3$_0E10_M_managerERSt9_Any_dataRKSJ_St18_Manager_operation.exit": ; preds = %bb.a, %"_ZZN7httplib6detail31make_multipart_content_providerERKSt6vectorINS_14UploadFormDataESaIS2_EERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEN3$_0D2Ev.exit.i.i", %bb.h, %"_ZNSt14_Function_base13_Base_managerIZN7httplib6detail31make_multipart_content_providerERKSt6vectorINS1_14UploadFormDataESaIS4_EERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE3$_0E15_M_init_functorIRKSH_EEvRSt9_Any_dataOT_.exit.i", %bb.c, %bb.b
  ret i1 false
}

; Function Attrs: mustprogress nofree nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal fastcc void @"_ZSt16__introsort_loopIN9__gnu_cxx17__normal_iteratorIPSt4pairIllESt6vectorIS3_SaIS3_EEEElNS0_5__ops15_Iter_comp_iterIZN7httplib6detail15coalesce_rangesERS7_mE3$_0EEEvT_SG_T0_T1_"(ptr %0, ptr %1, i64 noundef %2) unnamed_addr #41 {
bb.a:
  %.fr27 = freeze ptr %1                          ; 3 uses
  %.fr26 = freeze ptr %0                          ; 36 uses
  %i.a = ptrtoint ptr %.fr26 to i64               ; 3 uses
end_hunk_1
begin_hunk_2_@_ZN7httplib6detail14FormDataParser5parseEPKcmRKSt8functionIFbRKNS_8FormDataEEERKS4_IFbS3_mEE:bb.a
.loopexit.i:                                      ; preds = %.loopexit.i.loopexit.unr-lcssa, %bb.c, %bb.a
  store i64 0, ptr %i.k, align 8, !tbaa !3703
  store i64 %i.m, ptr %i.i, align 8, !tbaa !3702
  %i.az = add i64 %i.m, %2                        ; 2 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %0, i64 336 ; 14 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %0, i64 344 ; 2 uses
  %i.bc = load i64, ptr %i.bb, align 8, !tbaa !64
  %i.bd = icmp ugt i64 %i.az, %i.bc
  br i1 %i.bd, label %bb.d, label %bb.e

bb.d:                                             ; preds = %.loopexit.i
  tail call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6resizeEmc(ptr noundef nonnull align 8 dereferenceable(32) %i.ba, i64 noundef %i.az, i8 noundef signext 0)
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %.loopexit.i
  %.not28.i = icmp eq i64 %2, 0
  br i1 %.not28.i, label %_ZN7httplib6detail14FormDataParser10buf_appendEPKcm.exit, label %.lr.ph25.i.preheader

.lr.ph25.i.preheader:                             ; preds = %bb.e
  %xtraiter964 = and i64 %2, 3                    ; 3 uses
  %i.be = icmp ult i64 %2, 4
  br i1 %i.be, label %.lr.ph25.i.epil.preheader, label %.lr.ph25.i.preheader.new

.lr.ph25.i.preheader.new:                         ; preds = %.lr.ph25.i.preheader
  %unroll_iter968 = and i64 %2, -4
  br label %.lr.ph25.i

.lr.ph25.i:                                       ; preds = %.lr.ph25.i, %.lr.ph25.i.preheader.new
  %.024.i = phi i64 [ 0, %.lr.ph25.i.preheader.new ], [ %i.cg, %.lr.ph25.i ] ; 6 uses
  %niter969 = phi i64 [ 0, %.lr.ph25.i.preheader.new ], [ %niter969.next.3, %.lr.ph25.i ]
  %i.bf = getelementptr inbounds nuw i8, ptr %1, i64 %.024.i
  %i.bg = load i8, ptr %i.bf, align 1, !tbaa !65
  %i.bh = load i64, ptr %i.i, align 8, !tbaa !3702
  %i.bi = load ptr, ptr %i.ba, align 8, !tbaa !77
  %i.bj = getelementptr i8, ptr %i.bi, i64 %i.bh
  %i.bk = getelementptr i8, ptr %i.bj, i64 %.024.i
  store i8 %i.bg, ptr %i.bk, align 1, !tbaa !65
  %i.bl = or disjoint i64 %.024.i, 1              ; 2 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %1, i64 %i.bl
  %i.bn = load i8, ptr %i.bm, align 1, !tbaa !65
  %i.bo = load i64, ptr %i.i, align 8, !tbaa !3702
  %i.bp = load ptr, ptr %i.ba, align 8, !tbaa !77
  %i.bq = getelementptr i8, ptr %i.bp, i64 %i.bo
  %i.br = getelementptr i8, ptr %i.bq, i64 %i.bl
  store i8 %i.bn, ptr %i.br, align 1, !tbaa !65
  %i.bs = or disjoint i64 %.024.i, 2              ; 2 uses
  %i.bt = getelementptr inbounds nuw i8, ptr %1, i64 %i.bs
  %i.bu = load i8, ptr %i.bt, align 1, !tbaa !65
  %i.bv = load i64, ptr %i.i, align 8, !tbaa !3702
  %i.bw = load ptr, ptr %i.ba, align 8, !tbaa !77
  %i.bx = getelementptr i8, ptr %i.bw, i64 %i.bv
  %i.by = getelementptr i8, ptr %i.bx, i64 %i.bs
  store i8 %i.bu, ptr %i.by, align 1, !tbaa !65
  %i.bz = or disjoint i64 %.024.i, 3              ; 2 uses
  %i.ca = getelementptr inbounds nuw i8, ptr %1, i64 %i.bz
  %i.cb = load i8, ptr %i.ca, align 1, !tbaa !65
  %i.cc = load i64, ptr %i.i, align 8, !tbaa !3702
  %i.cd = load ptr, ptr %i.ba, align 8, !tbaa !77
  %i.ce = getelementptr i8, ptr %i.cd, i64 %i.cc
  %i.cf = getelementptr i8, ptr %i.ce, i64 %i.bz
  store i8 %i.cb, ptr %i.cf, align 1, !tbaa !65
  %i.cg = add nuw i64 %.024.i, 4                  ; 2 uses
  %niter969.next.3 = add nuw i64 %niter969, 4     ; 2 uses
  %niter969.ncmp.3 = icmp eq i64 %niter969.next.3, %unroll_iter968
  br i1 %niter969.ncmp.3, label %_ZN7httplib6detail14FormDataParser10buf_appendEPKcm.exit.loopexit.unr-lcssa, label %.lr.ph25.i, !llvm.loop !3706

_ZN7httplib6detail14FormDataParser10buf_appendEPKcm.exit.loopexit.unr-lcssa: ; preds = %.lr.ph25.i
  %lcmp.mod966.not = icmp eq i64 %xtraiter964, 0
  br i1 %lcmp.mod966.not, label %_ZN7httplib6detail14FormDataParser10buf_appendEPKcm.exit, label %.lr.ph25.i.epil.preheader

.lr.ph25.i.epil.preheader:                        ; preds = %_ZN7httplib6detail14FormDataParser10buf_appendEPKcm.exit.loopexit.unr-lcssa, %.lr.ph25.i.preheader
  %.024.i.epil.init = phi i64 [ 0, %.lr.ph25.i.preheader ], [ %i.cg, %_ZN7httplib6detail14FormDataParser10buf_appendEPKcm.exit.loopexit.unr-lcssa ]
  %lcmp.mod967 = icmp ne i64 %xtraiter964, 0
  tail call void @llvm.assume(i1 %lcmp.mod967)
  br label %.lr.ph25.i.epil

.lr.ph25.i.epil:                                  ; preds = %.lr.ph25.i.epil, %.lr.ph25.i.epil.preheader
  %.024.i.epil = phi i64 [ %i.cn, %.lr.ph25.i.epil ], [ %.024.i.epil.init, %.lr.ph25.i.epil.preheader ] ; 3 uses
  %epil.iter965 = phi i64 [ %epil.iter965.next, %.lr.ph25.i.epil ], [ 0, %.lr.ph25.i.epil.preheader ]
  %i.ch = getelementptr inbounds nuw i8, ptr %1, i64 %.024.i.epil
  %i.ci = load i8, ptr %i.ch, align 1, !tbaa !65
  %i.cj = load i64, ptr %i.i, align 8, !tbaa !3702
  %i.ck = load ptr, ptr %i.ba, align 8, !tbaa !77
  %i.cl = getelementptr i8, ptr %i.ck, i64 %i.cj
  %i.cm = getelementptr i8, ptr %i.cl, i64 %.024.i.epil
  store i8 %i.ci, ptr %i.cm, align 1, !tbaa !65
  %i.cn = add nuw i64 %.024.i.epil, 1
  %epil.iter965.next = add i64 %epil.iter965, 1   ; 2 uses
  %epil.iter965.cmp.not = icmp eq i64 %epil.iter965.next, %xtraiter964
  br i1 %epil.iter965.cmp.not, label %_ZN7httplib6detail14FormDataParser10buf_appendEPKcm.exit, label %.lr.ph25.i.epil, !llvm.loop !3707

_ZN7httplib6detail14FormDataParser10buf_appendEPKcm.exit: ; preds = %_ZN7httplib6detail14FormDataParser10buf_appendEPKcm.exit.loopexit.unr-lcssa, %.lr.ph25.i.epil, %bb.e
  %i.co = load i64, ptr %i.i, align 8, !tbaa !3702
  %i.cp = add i64 %i.co, %2                       ; 3 uses
  store i64 %i.cp, ptr %i.i, align 8, !tbaa !3702
  %i.cq = load i64, ptr %i.k, align 8, !tbaa !3703 ; 10 uses
  %.not504 = icmp eq i64 %i.cp, %i.cq
  br i1 %.not504, label %_ZNK7httplib6detail14FormDataParser14buf_start_withERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit291, label %.lr.ph

.lr.ph:                                           ; preds = %_ZN7httplib6detail14FormDataParser10buf_appendEPKcm.exit
  %i.cr = getelementptr inbounds nuw i8, ptr %0, i64 160 ; 6 uses
  %i.cs = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 3 uses
  %i.ct = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 4 uses
  %i.cu = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.cv = getelementptr inbounds nuw i8, ptr %0, i64 168 ; 9 uses
  %i.cw = getelementptr inbounds nuw i8, ptr %0, i64 136 ; 2 uses
  %i.cx = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.cy = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %i.cz = getelementptr inbounds nuw i8, ptr %4, i64 24 ; 2 uses
  %i.da = getelementptr inbounds nuw i8, ptr %0, i64 328 ; 3 uses
  %i.db = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 7 uses
  %i.dc = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 4 uses
  %i.dd = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 7 uses
  %i.de = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.df = getelementptr inbounds nuw i8, ptr %0, i64 272 ; 5 uses
  %i.dg = getelementptr inbounds nuw i8, ptr %0, i64 288 ; 2 uses
  %i.dh = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 6 uses
  %i.di = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 5 uses
  %i.dj = getelementptr inbounds nuw i8, ptr %0, i64 280 ; 4 uses
  %i.dk = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 6 uses
  %i.dl = getelementptr inbounds nuw i8, ptr %8, i64 8
  %i.dm = getelementptr inbounds nuw i8, ptr %10, i64 16 ; 3 uses
  %i.dn = getelementptr inbounds nuw i8, ptr %10, i64 8
  %i.do = getelementptr inbounds nuw i8, ptr %9, i64 8 ; 4 uses
  %i.dp = getelementptr inbounds nuw i8, ptr %0, i64 176 ; 3 uses
  %i.dq = getelementptr inbounds nuw i8, ptr %11, i64 16 ; 3 uses
  %i.dr = getelementptr inbounds nuw i8, ptr %11, i64 8
  %i.ds = getelementptr inbounds nuw i8, ptr %0, i64 240 ; 6 uses
  %i.dt = getelementptr inbounds nuw i8, ptr %12, i64 16 ; 4 uses
  %i.du = getelementptr inbounds nuw i8, ptr %12, i64 8
  %i.dv = getelementptr inbounds nuw i8, ptr %14, i64 16 ; 7 uses
  %i.dw = getelementptr inbounds nuw i8, ptr %14, i64 8
  %i.dx = getelementptr inbounds nuw i8, ptr %0, i64 256 ; 2 uses
  %i.dy = getelementptr inbounds nuw i8, ptr %13, i64 16 ; 6 uses
  %i.dz = getelementptr inbounds nuw i8, ptr %13, i64 8 ; 5 uses
  %i.ea = getelementptr inbounds nuw i8, ptr %0, i64 248 ; 4 uses
  %i.eb = getelementptr inbounds nuw i8, ptr %9, i64 16
  %i.ec = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.ed = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.ee = getelementptr inbounds nuw i8, ptr %0, i64 184
  %i.ef = getelementptr inbounds nuw i8, ptr %0, i64 304
  %i.eg = getelementptr inbounds nuw i8, ptr %0, i64 312 ; 2 uses
  %i.eh = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.ei = getelementptr inbounds nuw i8, ptr %0, i64 104 ; 2 uses
  %.pre = load i64, ptr %i.cr, align 8, !tbaa !1741
  br label %bb.f

bb.f:                                             ; preds = %.lr.ph, %bb.dl
  %i.ej = phi i64 [ %i.cp, %.lr.ph ], [ %i.vj, %bb.dl ] ; 11 uses
  switch i64 %.pre, label %bb.dl [
    i64 0, label %bb.g
    i64 1, label %.loopexit771
    i64 2, label %.loopexit772
    i64 3, label %.loopexit773.loopexit
    i64 4, label %.loopexit774.loopexit
  ]

bb.g:                                             ; preds = %bb.f
  %i.ek = load ptr, ptr %i.eh, align 8, !tbaa !77 ; 2 uses
  %i.el = load i8, ptr %i.ek, align 1, !tbaa !65  ; 2 uses
  %i.em = icmp ult i64 %i.cq, %i.ej
  br i1 %i.em, label %.preheader.lr.ph.i, label %_ZNK7httplib6detail14FormDataParser14buf_start_withERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit291

.preheader.lr.ph.i:                               ; preds = %bb.g
  %i.en = load ptr, ptr %i.ba, align 8, !tbaa !77 ; 3 uses
  %i.eo = load i64, ptr %i.ei, align 8
  %.fr40.i = freeze i64 %i.eo                     ; 3 uses
  %i.ep = icmp eq i64 %.fr40.i, 0
  br i1 %i.ep, label %.preheader.us.i, label %.preheader.i

.preheader.us.i:                                  ; preds = %.preheader.lr.ph.i, %bb.h
  %.01633.us.i = phi i64 [ %i.et, %bb.h ], [ %i.cq, %.preheader.lr.ph.i ] ; 3 uses
  %i.eq = getelementptr inbounds nuw i8, ptr %i.en, i64 %.01633.us.i
  %i.er = load i8, ptr %i.eq, align 1, !tbaa !65
  %i.es = icmp eq i8 %i.er, %i.el
  br i1 %i.es, label %_ZNK7httplib6detail14FormDataParser8buf_findERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit, label %bb.h

bb.h:                                             ; preds = %.preheader.us.i
  %i.et = add i64 %.01633.us.i, 1                 ; 2 uses
  %i.eu = icmp eq i64 %i.et, %i.ej
  br i1 %i.eu, label %_ZNK7httplib6detail14FormDataParser14buf_start_withERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit291, label %.preheader.us.i, !llvm.loop !3708

.preheader.i:                                     ; preds = %.preheader.lr.ph.i, %.preheader.i.backedge
  %.01633.i = phi i64 [ %.01633.i.be, %.preheader.i.backedge ], [ %i.cq, %.preheader.lr.ph.i ] ; 6 uses
  %i.ev = getelementptr inbounds nuw i8, ptr %i.en, i64 %.01633.i
  %i.ew = load i8, ptr %i.ev, align 1, !tbaa !65
  %i.ex = icmp eq i8 %i.ew, %i.el
  br i1 %i.ex, label %bb.j, label %bb.i

bb.i:                                             ; preds = %.preheader.i
  %i.ey = add i64 %.01633.i, 1                    ; 2 uses
  %i.ez = icmp eq i64 %i.ey, %i.ej
  br i1 %i.ez, label %_ZNK7httplib6detail14FormDataParser14buf_start_withERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit291, label %.preheader.i.backedge

.preheader.i.backedge:                            ; preds = %bb.i, %bb.l
  %.01633.i.be = phi i64 [ %i.ey, %bb.i ], [ %i.fh, %bb.l ]
  br label %.preheader.i, !llvm.loop !3709

bb.j:                                             ; preds = %.preheader.i
  %i.fa = getelementptr inbounds nuw i8, ptr %i.en, i64 %.01633.i
  %i.fb = sub nuw i64 %i.ej, %.01633.i
  %i.fc = icmp ugt i64 %.fr40.i, %i.fb
  br i1 %i.fc, label %_ZNK7httplib6detail14FormDataParser14buf_start_withERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit291, label %.lr.ph.i.i

bb.k:                                             ; preds = %.lr.ph.i.i
  %i.fd = add nuw i64 %.01214.i.i, 1              ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %i.fd, %.fr40.i
  br i1 %exitcond.not.i.i, label %_ZNK7httplib6detail14FormDataParser8buf_findERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit, label %.lr.ph.i.i, !llvm.loop !3710

.lr.ph.i.i:                                       ; preds = %bb.j, %bb.k
  %.01214.i.i = phi i64 [ %i.fd, %bb.k ], [ 0, %bb.j ] ; 3 uses
  %gep.i.i = getelementptr i8, ptr %i.fa, i64 %.01214.i.i
  %i.fe = load i8, ptr %gep.i.i, align 1, !tbaa !65
  %i.ff = getelementptr inbounds nuw i8, ptr %i.ek, i64 %.01214.i.i
  %i.fg = load i8, ptr %i.ff, align 1, !tbaa !65
  %.not.i.i = icmp eq i8 %i.fe, %i.fg
  br i1 %.not.i.i, label %bb.k, label %bb.l

bb.l:                                             ; preds = %.lr.ph.i.i
  %i.fh = add i64 %.01633.i, 1                    ; 2 uses
  %i.fi = icmp ult i64 %i.fh, %i.ej
  br i1 %i.fi, label %.preheader.i.backedge, label %_ZNK7httplib6detail14FormDataParser14buf_start_withERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit291

_ZNK7httplib6detail14FormDataParser8buf_findERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit: ; preds = %bb.k, %.preheader.us.i
  %.pn.i = phi i64 [ %.01633.us.i, %.preheader.us.i ], [ %.01633.i, %bb.k ] ; 2 uses
  %i.fj = icmp eq i64 %.pn.i, %i.ej
  br i1 %i.fj, label %_ZNK7httplib6detail14FormDataParser14buf_start_withERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit291, label %bb.m

bb.m:                                             ; preds = %_ZNK7httplib6detail14FormDataParser8buf_findERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit
  %i.fk = load i64, ptr %i.ei, align 8, !tbaa !64
  %i.fl = add i64 %i.fk, %.pn.i
  br label %bb.dp

.loopexit771:                                     ; preds = %bb.f, %bb.dp
  store i64 0, ptr %i.ee, align 8, !tbaa !64
  %i.fm = load ptr, ptr %i.dp, align 8, !tbaa !77
  store i8 0, ptr %i.fm, align 1, !tbaa !65
  store i64 0, ptr %i.ea, align 8, !tbaa !64
  %i.fn = load ptr, ptr %i.ds, align 8, !tbaa !77
  store i8 0, ptr %i.fn, align 1, !tbaa !65
  store i64 0, ptr %i.dj, align 8, !tbaa !64
  %i.fo = load ptr, ptr %i.df, align 8, !tbaa !77
  store i8 0, ptr %i.fo, align 1, !tbaa !65
  %i.fp = load ptr, ptr %i.ef, align 8, !tbaa !107 ; 3 uses
  %i.fq = load ptr, ptr %i.eg, align 8, !tbaa !108 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.fq, %i.fp
  br i1 %.not.i.i.i.i, label %bb.do, label %.lr.ph.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %.loopexit771, %_ZSt8_DestroyISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_EEvPT_.exit.i.i.i.i.i.i
  %.05.i.i.i.i.i.i = phi ptr [ %i.gc, %_ZSt8_DestroyISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_EEvPT_.exit.i.i.i.i.i.i ], [ %i.fp, %.loopexit771 ] ; 5 uses
  %i.fr = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i.i, i64 32
  %i.fs = load ptr, ptr %i.fr, align 8, !tbaa !77 ; 2 uses
  %i.ft = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i.i, i64 48 ; 2 uses
  %i.fu = icmp eq ptr %i.fs, %i.ft
  br i1 %i.fu, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i
  %i.fv = load i64, ptr %i.ft, align 8, !tbaa !65
  %i.fw = add i64 %i.fv, 1
  call void @_ZdlPvm(ptr noundef %i.fs, i64 noundef %i.fw) #46
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i.i.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i
  %i.fx = load ptr, ptr %.05.i.i.i.i.i.i, align 8, !tbaa !77 ; 2 uses
  %i.fy = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i.i, i64 16 ; 2 uses
  %i.fz = icmp eq ptr %i.fx, %i.fy
  br i1 %i.fz, label %_ZSt8_DestroyISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_EEvPT_.exit.i.i.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i.i.i.i.i.i.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i.i.i.i
  %i.ga = load i64, ptr %i.fy, align 8, !tbaa !65
  %i.gb = add i64 %i.ga, 1
  call void @_ZdlPvm(ptr noundef %i.fx, i64 noundef %i.gb) #46
  br label %_ZSt8_DestroyISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_EEvPT_.exit.i.i.i.i.i.i

_ZSt8_DestroyISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_EEvPT_.exit.i.i.i.i.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i.i.i.i.i.i.i.i
  %i.gc = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i.i, i64 64 ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.gc, %i.fq
  br i1 %.not.i.i.i.i.i.i, label %_ZSt8_DestroyIPSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_ES7_EvT_S9_RSaIT0_E.exit.i.i.i.i, label %.lr.ph.i.i.i.i.i.i, !llvm.loop !109

_ZSt8_DestroyIPSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_ES7_EvT_S9_RSaIT0_E.exit.i.i.i.i: ; preds = %_ZSt8_DestroyISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_EEvPT_.exit.i.i.i.i.i.i
  store ptr %i.fp, ptr %i.eg, align 8, !tbaa !108
  br label %bb.do

.loopexit772:                                     ; preds = %bb.f, %bb.do
  %i.gd = phi i64 [ %i.vq, %bb.do ], [ %i.ej, %bb.f ] ; 10 uses
  %i.ge = phi i64 [ %.pre633, %bb.do ], [ %i.cq, %bb.f ] ; 4 uses
  %i.gf = load ptr, ptr %i.cs, align 8, !tbaa !77 ; 2 uses
  %i.gg = load i8, ptr %i.gf, align 1, !tbaa !65  ; 2 uses
  %i.gh = icmp ult i64 %i.ge, %i.gd
  br i1 %i.gh, label %.preheader.lr.ph.i91, label %_ZNK7httplib6detail14FormDataParser8buf_findERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit103

.preheader.lr.ph.i91:                             ; preds = %.loopexit772
  %i.gi = load ptr, ptr %i.ba, align 8, !tbaa !77 ; 3 uses
  %i.gj = load i64, ptr %i.ct, align 8
  %.fr40.i92 = freeze i64 %i.gj                   ; 3 uses
  %i.gk = icmp eq i64 %.fr40.i92, 0
  br i1 %i.gk, label %.preheader.us.i101, label %.preheader.i93

.preheader.us.i101:                               ; preds = %.preheader.lr.ph.i91, %bb.n
  %.01633.us.i102 = phi i64 [ %i.go, %bb.n ], [ %i.ge, %.preheader.lr.ph.i91 ] ; 3 uses
  %i.gl = getelementptr inbounds nuw i8, ptr %i.gi, i64 %.01633.us.i102
  %i.gm = load i8, ptr %i.gl, align 1, !tbaa !65
  %i.gn = icmp eq i8 %i.gm, %i.gg
  br i1 %i.gn, label %_ZNK7httplib6detail14FormDataParser8buf_findERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit103, label %bb.n

bb.n:                                             ; preds = %.preheader.us.i101
  %i.go = add i64 %.01633.us.i102, 1              ; 2 uses
  %i.gp = icmp eq i64 %i.go, %i.gd
  br i1 %i.gp, label %_ZNK7httplib6detail14FormDataParser8buf_findERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit103, label %.preheader.us.i101, !llvm.loop !3708

.preheader.i93:                                   ; preds = %.preheader.lr.ph.i91, %.preheader.i93.backedge
  %.01633.i95 = phi i64 [ %.01633.i95.be, %.preheader.i93.backedge ], [ %i.ge, %.preheader.lr.ph.i91 ] ; 6 uses
  %i.gq = getelementptr inbounds nuw i8, ptr %i.gi, i64 %.01633.i95
  %i.gr = load i8, ptr %i.gq, align 1, !tbaa !65
  %i.gs = icmp eq i8 %i.gr, %i.gg
  br i1 %i.gs, label %bb.p, label %bb.o

bb.o:                                             ; preds = %.preheader.i93
  %i.gt = add i64 %.01633.i95, 1                  ; 2 uses
  %i.gu = icmp eq i64 %i.gt, %i.gd
  br i1 %i.gu, label %_ZNK7httplib6detail14FormDataParser8buf_findERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit103, label %.preheader.i93.backedge

.preheader.i93.backedge:                          ; preds = %bb.o, %bb.r
  %.01633.i95.be = phi i64 [ %i.gt, %bb.o ], [ %i.hc, %bb.r ]
  br label %.preheader.i93, !llvm.loop !3709

bb.p:                                             ; preds = %.preheader.i93
  %i.gv = getelementptr inbounds nuw i8, ptr %i.gi, i64 %.01633.i95
  %i.gw = sub nuw i64 %i.gd, %.01633.i95
  %i.gx = icmp ugt i64 %.fr40.i92, %i.gw
  br i1 %i.gx, label %_ZNK7httplib6detail14FormDataParser8buf_findERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit103, label %.lr.ph.i.i96

bb.q:                                             ; preds = %.lr.ph.i.i96
  %i.gy = add nuw i64 %.01214.i.i97, 1            ; 2 uses
  %exitcond.not.i.i100 = icmp eq i64 %i.gy, %.fr40.i92
  br i1 %exitcond.not.i.i100, label %_ZNK7httplib6detail14FormDataParser8buf_findERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit103, label %.lr.ph.i.i96, !llvm.loop !3710

.lr.ph.i.i96:                                     ; preds = %bb.p, %bb.q
  %.01214.i.i97 = phi i64 [ %i.gy, %bb.q ], [ 0, %bb.p ] ; 3 uses
  %gep.i.i98 = getelementptr i8, ptr %i.gv, i64 %.01214.i.i97
  %i.gz = load i8, ptr %gep.i.i98, align 1, !tbaa !65
  %i.ha = getelementptr inbounds nuw i8, ptr %i.gf, i64 %.01214.i.i97
  %i.hb = load i8, ptr %i.ha, align 1, !tbaa !65
  %.not.i.i99 = icmp eq i8 %i.gz, %i.hb
  br i1 %.not.i.i99, label %bb.q, label %bb.r

bb.r:                                             ; preds = %.lr.ph.i.i96
  %i.hc = add i64 %.01633.i95, 1                  ; 2 uses
  %i.hd = icmp ult i64 %i.hc, %i.gd
  br i1 %i.hd, label %.preheader.i93.backedge, label %_ZNK7httplib6detail14FormDataParser8buf_findERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit103

_ZNK7httplib6detail14FormDataParser8buf_findERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit103: ; preds = %bb.p, %bb.r, %bb.o, %bb.q, %.preheader.us.i101, %bb.n, %.loopexit772
  %.pn.i89 = phi i64 [ %i.gd, %.loopexit772 ], [ %.01633.i95, %bb.q ], [ %i.gd, %bb.n ], [ %.01633.us.i102, %.preheader.us.i101 ], [ %i.gd, %bb.o ], [ %i.gd, %bb.r ], [ %i.gd, %bb.p ]
  %.3.i90 = sub i64 %.pn.i89, %i.ge               ; 2 uses
  %i.he = icmp ugt i64 %.3.i90, 8192
  br i1 %i.he, label %_ZNK7httplib6detail14FormDataParser14buf_start_withERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit291, label %.preheader.preheader

.preheader.preheader:                             ; preds = %_ZNK7httplib6detail14FormDataParser8buf_findERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit103
  %i.hf = getelementptr inbounds nuw i8, ptr %10, i64 20
  %i.hg = getelementptr inbounds nuw i8, ptr %11, i64 24
  %i.hh = getelementptr inbounds nuw i8, ptr %12, i64 25
  br label %.preheader

.preheader:                                       ; preds = %.preheader.preheader, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit255
  %.054 = phi i64 [ %.256, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit255 ], [ %.3.i90, %.preheader.preheader ] ; 7 uses
  %i.hi = load i64, ptr %i.i, align 8, !tbaa !3702
  %i.hj = load i64, ptr %i.k, align 8, !tbaa !3703 ; 6 uses
  %i.hk = sub i64 %i.hi, %i.hj
  %i.hl = icmp ult i64 %.054, %i.hk
  br i1 %i.hl, label %bb.s, label %bb.cr

bb.s:                                             ; preds = %.preheader
  %i.hm = icmp eq i64 %.054, 0
  br i1 %i.hm, label %bb.t, label %bb.w

bb.t:                                             ; preds = %bb.s
  %i.hn = load ptr, ptr %i.ec, align 8, !tbaa !159
  %.not.i.i104 = icmp eq ptr %i.hn, null
  br i1 %.not.i.i104, label %bb.u, label %_ZNKSt8functionIFbRKN7httplib8FormDataEEEclES3_.exit

bb.u:                                             ; preds = %bb.t
  call void @_ZSt25__throw_bad_function_callv() #47
  unreachable

_ZNKSt8functionIFbRKN7httplib8FormDataEEEclES3_.exit: ; preds = %bb.t
  %i.ho = load ptr, ptr %i.ed, align 8, !tbaa !1736
  %i.hp = call noundef zeroext i1 %i.ho(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(152) %i.dp), !inline_history !3711
  br i1 %i.hp, label %.thread331, label %bb.v

bb.v:                                             ; preds = %_ZNKSt8functionIFbRKN7httplib8FormDataEEEclES3_.exit
  store i8 0, ptr %i.cv, align 8, !tbaa !1744
  br label %_ZNK7httplib6detail14FormDataParser14buf_start_withERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit291

.thread331:                                       ; preds = %_ZNKSt8functionIFbRKN7httplib8FormDataEEEclES3_.exit
  %i.hq = load i64, ptr %i.ct, align 8, !tbaa !64
  %i.hr = load i64, ptr %i.k, align 8, !tbaa !3703
  %i.hs = add i64 %i.hr, %i.hq                    ; 2 uses
  store i64 %i.hs, ptr %i.k, align 8, !tbaa !3703
  store i64 3, ptr %i.cr, align 8, !tbaa !1741
  br label %bb.dm

bb.w:                                             ; preds = %bb.s
  %i.ht = load i64, ptr %i.da, align 8, !tbaa !3712 ; 2 uses
  %i.hu = icmp ugt i64 %i.ht, 99
  br i1 %i.hu, label %bb.x, label %bb.y

bb.x:                                             ; preds = %bb.w
  store i8 0, ptr %i.cv, align 8, !tbaa !1744
  br label %_ZNK7httplib6detail14FormDataParser14buf_start_withERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit291

bb.y:                                             ; preds = %bb.w
  %i.hv = add nuw nsw i64 %i.ht, 1
  store i64 %i.hv, ptr %i.da, align 8, !tbaa !3712
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #23
  call void @llvm.experimental.noalias.scope.decl(metadata !3713)
  call void @llvm.experimental.noalias.scope.decl(metadata !3716)
  %i.hw = load i64, ptr %i.bb, align 8, !tbaa !64, !noalias !3719 ; 3 uses
  %i.hx = icmp ugt i64 %i.hj, %i.hw
  br i1 %i.hx, label %bb.z, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8_M_checkEmPKc.exit.i.i.i

bb.z:                                             ; preds = %bb.y
  call void (ptr, ...) @_ZSt24__throw_out_of_range_fmtPKcz(ptr noundef nonnull @.str.357, ptr noundef nonnull @.str.358, i64 noundef %i.hj, i64 noundef %i.hw) #47, !noalias !3719
  unreachable

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8_M_checkEmPKc.exit.i.i.i: ; preds = %bb.y
  store ptr %i.db, ptr %5, align 8, !tbaa !63, !alias.scope !3719
  %i.hy = load ptr, ptr %i.ba, align 8, !tbaa !77, !noalias !3719
  %i.hz = getelementptr inbounds nuw i8, ptr %i.hy, i64 %i.hj ; 2 uses
  %i.ia = sub nuw i64 %i.hw, %i.hj
  %spec.select.i.i.i.i = call noundef i64 @llvm.umin.i64(i64 %.054, i64 %i.ia) ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g) #23, !noalias !3719
  store i64 %spec.select.i.i.i.i, ptr %i.g, align 8, !tbaa !78, !noalias !3719
  %i.ib = icmp ugt i64 %spec.select.i.i.i.i, 15
  br i1 %i.ib, label %.noexc10.i.i.i, label %._crit_edge.i.i.i.i

.noexc10.i.i.i:                                   ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8_M_checkEmPKc.exit.i.i.i
  %i.ic = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull align 8 dereferenceable(8) %i.g, i64 noundef 0) ; 2 uses
  store ptr %i.ic, ptr %5, align 8, !tbaa !77, !alias.scope !3719
  %i.id = load i64, ptr %i.g, align 8, !tbaa !78, !noalias !3719
  store i64 %i.id, ptr %i.db, align 8, !tbaa !65, !alias.scope !3719
  br label %._crit_edge.i.i.i.i

._crit_edge.i.i.i.i:                              ; preds = %.noexc10.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8_M_checkEmPKc.exit.i.i.i
  %i.ie = phi ptr [ %i.ic, %.noexc10.i.i.i ], [ %i.db, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8_M_checkEmPKc.exit.i.i.i ] ; 2 uses
  switch i64 %spec.select.i.i.i.i, label %bb.ab [
    i64 1, label %bb.aa
    i64 0, label %_ZNK7httplib6detail14FormDataParser8buf_headB5cxx11Em.exit
  ]

bb.aa:                                            ; preds = %._crit_edge.i.i.i.i
  %i.if = load i8, ptr %i.hz, align 1, !tbaa !65
  store i8 %i.if, ptr %i.ie, align 1, !tbaa !65
  br label %_ZNK7httplib6detail14FormDataParser8buf_headB5cxx11Em.exit

bb.ab:                                            ; preds = %._crit_edge.i.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.ie, ptr align 1 %i.hz, i64 %spec.select.i.i.i.i, i1 false)
  br label %_ZNK7httplib6detail14FormDataParser8buf_headB5cxx11Em.exit

_ZNK7httplib6detail14FormDataParser8buf_headB5cxx11Em.exit: ; preds = %._crit_edge.i.i.i.i, %bb.aa, %bb.ab
  %i.ig = load i64, ptr %i.g, align 8, !tbaa !78, !noalias !3719 ; 2 uses
  store i64 %i.ig, ptr %i.dc, align 8, !tbaa !64, !alias.scope !3719
  %i.ih = load ptr, ptr %5, align 8, !tbaa !77, !alias.scope !3719
  %i.ii = getelementptr inbounds nuw i8, ptr %i.ih, i64 %i.ig
  store i8 0, ptr %i.ii, align 1, !tbaa !65
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #23, !noalias !3719
  %i.ij = load ptr, ptr %5, align 8, !tbaa !77    ; 2 uses
  %i.ik = load i64, ptr %i.dc, align 8, !tbaa !64
  %i.il = getelementptr inbounds nuw i8, ptr %i.ij, i64 %i.ik
  %i.im = invoke noundef zeroext i1 @_ZN7httplib6detail12parse_headerIZNS0_14FormDataParser5parseEPKcmRKSt8functionIFbRKNS_8FormDataEEERKS5_IFbS4_mEEEUlRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESO_E_EEbS4_S4_T_(ptr noundef %i.ij, ptr noundef %i.il)
          to label %bb.ac unwind label %bb.ae

bb.ac:                                            ; preds = %_ZNK7httplib6detail14FormDataParser8buf_headB5cxx11Em.exit
  br i1 %i.im, label %bb.af, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  store i8 0, ptr %i.cv, align 8, !tbaa !1744
  br label %bb.cp

bb.ae:                                            ; preds = %bb.af, %_ZNK7httplib6detail14FormDataParser8buf_headB5cxx11Em.exit
  %i.in = landingpad { ptr, i32 }
          cleanup
  br label %bb.cq

bb.af:                                            ; preds = %bb.ac
  %i.io = load ptr, ptr %5, align 8, !tbaa !77    ; 2 uses
  %i.ip = load i64, ptr %i.dc, align 8, !tbaa !64
  %i.iq = getelementptr inbounds nuw i8, ptr %i.io, i64 %i.ip
  %i.ir = invoke noundef zeroext i1 @_ZN7httplib6detail12parse_headerIZNS0_14FormDataParser5parseEPKcmRKSt8functionIFbRKNS_8FormDataEEERKS5_IFbS4_mEEEUlRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESO_E0_EEbS4_S4_T_(ptr noundef %i.io, ptr noundef %i.iq, ptr nonnull %0)
          to label %bb.ag unwind label %bb.ae

bb.ag:                                            ; preds = %bb.af
  br i1 %i.ir, label %bb.ai, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  store i8 0, ptr %i.cv, align 8, !tbaa !1744
  br label %bb.cp

bb.ai:                                            ; preds = %bb.ag
  %i.is = load i64, ptr %i.dc, align 8, !tbaa !64 ; 2 uses
  %i.it = icmp ult i64 %i.is, 13
  br i1 %i.it, label %_ZNK7httplib6detail14FormDataParser22start_with_case_ignoreERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcm.exit, label %.lr.ph.i106

.lr.ph.i106:                                      ; preds = %bb.ai
  %i.iu = load ptr, ptr %5, align 8, !tbaa !77    ; 14 uses
  %i.iv = load i8, ptr %i.iu, align 1, !tbaa !65
  %i.iw = and i8 %i.iv, -33
  %.not.i107 = icmp eq i8 %i.iw, 67
  br i1 %.not.i107, label %bb.aj, label %_ZNK7httplib6detail14FormDataParser22start_with_case_ignoreERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcm.exit

bb.aj:                                            ; preds = %.lr.ph.i106
  %i.ix = getelementptr i8, ptr %i.iu, i64 1
  %i.iy = load i8, ptr %i.ix, align 1, !tbaa !65
  %i.iz = and i8 %i.iy, -33
  %.not.i107.1 = icmp eq i8 %i.iz, 79
  br i1 %.not.i107.1, label %bb.ak, label %_ZNK7httplib6detail14FormDataParser22start_with_case_ignoreERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcm.exit

bb.ak:                                            ; preds = %bb.aj
  %i.ja = getelementptr i8, ptr %i.iu, i64 2
  %i.jb = load i8, ptr %i.ja, align 1, !tbaa !65
  %i.jc = and i8 %i.jb, -33
  %.not.i107.2 = icmp eq i8 %i.jc, 78
  br i1 %.not.i107.2, label %bb.al, label %_ZNK7httplib6detail14FormDataParser22start_with_case_ignoreERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcm.exit

bb.al:                                            ; preds = %bb.ak
  %i.jd = getelementptr i8, ptr %i.iu, i64 3
  %i.je = load i8, ptr %i.jd, align 1, !tbaa !65
  %i.jf = and i8 %i.je, -33
  %.not.i107.3 = icmp eq i8 %i.jf, 84
  br i1 %.not.i107.3, label %bb.am, label %_ZNK7httplib6detail14FormDataParser22start_with_case_ignoreERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcm.exit
end_hunk_2
begin_hunk_3_@_ZN7httplib6detail14FormDataParser5parseEPKcmRKSt8functionIFbRKNS_8FormDataEEERKS4_IFbS3_mEE:bb.a

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i221: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit220
  %i.py = load i64, ptr %i.dv, align 8, !tbaa !65
  %i.pz = add i64 %i.py, 1
  call void @_ZdlPvm(ptr noundef %i.pw, i64 noundef %i.pz) #46
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit223

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit223: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit220, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i221
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #23
  %.pre631.pre = load ptr, ptr %9, align 8, !tbaa !107
  %.pre632.pre = load ptr, ptr %i.do, align 8, !tbaa !108
  br label %bb.cd

.loopexit351:                                     ; preds = %.noexc10.i.i206
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit229

.loopexit.split-lp:                               ; preds = %bb.bs
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit229

bb.cc:                                            ; preds = %bb.bv
  %i.qa = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.qb = load ptr, ptr %14, align 8, !tbaa !77   ; 2 uses
  %i.qc = icmp eq ptr %i.qb, %i.dv
  br i1 %i.qc, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit229, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i227

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i227: ; preds = %bb.cc
  %i.qd = load i64, ptr %i.dv, align 8, !tbaa !65
  %i.qe = add i64 %i.qd, 1
  call void @_ZdlPvm(ptr noundef %i.qb, i64 noundef %i.qe) #46
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit229

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit229: ; preds = %bb.cc, %.loopexit351, %.loopexit.split-lp, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i227
  %.pn77 = phi { ptr, i32 } [ %i.qa, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i227 ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ], [ %lpad.loopexit, %.loopexit351 ], [ %i.qa, %bb.cc ]
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h) #23
  br label %bb.cg

_ZNK7httplib6detail14FormDataParser22start_with_case_ignoreERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcm.exit203: ; preds = %bb.br, %bb.bp, %bb.bo
  store i8 0, ptr %i.cv, align 8, !tbaa !1744
  br label %bb.cd

bb.cd:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit223, %_ZNK7httplib6detail14FormDataParser22start_with_case_ignoreERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcm.exit203
  %.pre632 = phi ptr [ %.pre632.pre, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit223 ], [ %i.nc, %_ZNK7httplib6detail14FormDataParser22start_with_case_ignoreERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcm.exit203 ]
  %.pre631 = phi ptr [ %.pre631.pre, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit223 ], [ %i.nb, %_ZNK7httplib6detail14FormDataParser22start_with_case_ignoreERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcm.exit203 ]
  %cond3 = phi i1 [ true, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit223 ], [ false, %_ZNK7httplib6detail14FormDataParser22start_with_case_ignoreERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcm.exit203 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h) #23
  br label %bb.ce

bb.ce:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i193.thread, %bb.cd, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i193, %bb.bm
  %i.qf = phi ptr [ %i.ls, %bb.bm ], [ %.pre632, %bb.cd ], [ %i.nc, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i193 ], [ %i.nc, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i193.thread ] ; 2 uses
  %i.qg = phi ptr [ %i.lt, %bb.bm ], [ %.pre631, %bb.cd ], [ %i.nb, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i193 ], [ %i.nb, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i193.thread ] ; 3 uses
  %cond2 = phi i1 [ false, %bb.bm ], [ %cond3, %bb.cd ], [ true, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i193 ], [ true, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i193.thread ]
  %.not4.i.i.i.i = icmp eq ptr %i.qg, %i.qf
  br i1 %.not4.i.i.i.i, label %_ZSt8_DestroyIPSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_ES7_EvT_S9_RSaIT0_E.exit.i.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.ce, %_ZSt8_DestroyISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_EEvPT_.exit.i.i.i.i
  %.05.i.i.i.i = phi ptr [ %i.qs, %_ZSt8_DestroyISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_EEvPT_.exit.i.i.i.i ], [ %i.qg, %bb.ce ] ; 5 uses
  %i.qh = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i, i64 32
  %i.qi = load ptr, ptr %i.qh, align 8, !tbaa !77 ; 2 uses
  %i.qj = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i, i64 48 ; 2 uses
  %i.qk = icmp eq ptr %i.qi, %i.qj
  br i1 %i.qk, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i
  %i.ql = load i64, ptr %i.qj, align 8, !tbaa !65
  %i.qm = add i64 %i.ql, 1
  call void @_ZdlPvm(ptr noundef %i.qi, i64 noundef %i.qm) #46
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i
  %i.qn = load ptr, ptr %.05.i.i.i.i, align 8, !tbaa !77 ; 2 uses
  %i.qo = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i, i64 16 ; 2 uses
  %i.qp = icmp eq ptr %i.qn, %i.qo
  br i1 %i.qp, label %_ZSt8_DestroyISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_EEvPT_.exit.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i.i.i.i.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i.i
  %i.qq = load i64, ptr %i.qo, align 8, !tbaa !65
  %i.qr = add i64 %i.qq, 1
  call void @_ZdlPvm(ptr noundef %i.qn, i64 noundef %i.qr) #46
  br label %_ZSt8_DestroyISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_EEvPT_.exit.i.i.i.i

_ZSt8_DestroyISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_EEvPT_.exit.i.i.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i.i.i.i.i.i
  %i.qs = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i, i64 64 ; 2 uses
  %.not.i.i.i.i230 = icmp eq ptr %i.qs, %i.qf
  br i1 %.not.i.i.i.i230, label %_ZSt8_DestroyIPSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_ES7_EvT_S9_RSaIT0_E.exitthread-pre-split.i.i, label %.lr.ph.i.i.i.i, !llvm.loop !109

_ZSt8_DestroyIPSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_ES7_EvT_S9_RSaIT0_E.exitthread-pre-split.i.i: ; preds = %_ZSt8_DestroyISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_EEvPT_.exit.i.i.i.i
  %.pr.i.i = load ptr, ptr %9, align 8, !tbaa !107
  br label %_ZSt8_DestroyIPSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_ES7_EvT_S9_RSaIT0_E.exit.i.i

_ZSt8_DestroyIPSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_ES7_EvT_S9_RSaIT0_E.exit.i.i: ; preds = %_ZSt8_DestroyIPSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_ES7_EvT_S9_RSaIT0_E.exitthread-pre-split.i.i, %bb.ce
  %i.qt = phi ptr [ %.pr.i.i, %_ZSt8_DestroyIPSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_ES7_EvT_S9_RSaIT0_E.exitthread-pre-split.i.i ], [ %i.qg, %bb.ce ] ; 3 uses
  %.not.i.i1.i.i = icmp eq ptr %i.qt, null
  br i1 %.not.i.i1.i.i, label %_ZN7httplib6detail26insertion_ordered_multimapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt8equal_toIS7_EED2Ev.exit, label %bb.cf

bb.cf:                                            ; preds = %_ZSt8_DestroyIPSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_ES7_EvT_S9_RSaIT0_E.exit.i.i
  %i.qu = load ptr, ptr %i.eb, align 8, !tbaa !111
  %i.qv = ptrtoint ptr %i.qu to i64
  %i.qw = ptrtoint ptr %i.qt to i64
  %i.qx = sub i64 %i.qv, %i.qw
  call void @_ZdlPvm(ptr noundef nonnull %i.qt, i64 noundef %i.qx) #46
  br label %_ZN7httplib6detail26insertion_ordered_multimapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt8equal_toIS7_EED2Ev.exit

_ZN7httplib6detail26insertion_ordered_multimapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt8equal_toIS7_EED2Ev.exit: ; preds = %_ZSt8_DestroyIPSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_ES7_EvT_S9_RSaIT0_E.exit.i.i, %bb.cf
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #23
  br label %bb.ch

bb.cg:                                            ; preds = %bb.bl, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit229, %bb.bk
  %.pn77.pn.pn = phi { ptr, i32 } [ %i.mj, %bb.bk ], [ %.pn77, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit229 ], [ %i.mk, %bb.bl ]
  call void @_ZN7httplib6detail26insertion_ordered_multimapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt8equal_toIS7_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %9) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #23
  br label %bb.ci

bb.ch:                                            ; preds = %_ZN7httplib6detail26insertion_ordered_multimapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt8equal_toIS7_EED2Ev.exit, %bb.bg
  %cond1 = phi i1 [ %cond2, %_ZN7httplib6detail26insertion_ordered_multimapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt8equal_toIS7_EED2Ev.exit ], [ true, %bb.bg ]
  %i.qy = load ptr, ptr %8, align 8, !tbaa !77    ; 2 uses
  %i.qz = icmp eq ptr %i.qy, %i.dk
  br i1 %i.qz, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit233, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i231

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i231: ; preds = %bb.ch
  %i.ra = load i64, ptr %i.dk, align 8, !tbaa !65
  %i.rb = add i64 %i.ra, 1
  call void @_ZdlPvm(ptr noundef %i.qy, i64 noundef %i.rb) #46
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit233

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit233: ; preds = %bb.ch, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i231
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #23
  br i1 %cond1, label %bb.cj, label %bb.cp

bb.ci:                                            ; preds = %bb.cg, %bb.bj
  %.pn77.pn.pn.pn = phi { ptr, i32 } [ %.pn77.pn.pn, %bb.cg ], [ %i.mi, %bb.bj ]
  %i.rc = load ptr, ptr %8, align 8, !tbaa !77    ; 2 uses
  %i.rd = icmp eq ptr %i.rc, %i.dk
  br i1 %i.rd, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit236, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i234

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i234: ; preds = %bb.ci
  %i.re = load i64, ptr %i.dk, align 8, !tbaa !65
  %i.rf = add i64 %i.re, 1
  call void @_ZdlPvm(ptr noundef %i.rc, i64 noundef %i.rf) #46
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit236

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit236: ; preds = %bb.ci, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i234
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #23
  br label %bb.cq

bb.cj:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit233, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit114
  %i.rg = load i64, ptr %i.ct, align 8, !tbaa !64
  %.fr40.i241 = freeze i64 %i.rg                  ; 4 uses
  %i.rh = add i64 %.fr40.i241, %.054
  %i.ri = load i64, ptr %i.k, align 8, !tbaa !3703
  %i.rj = add i64 %i.rh, %i.ri                    ; 5 uses
  store i64 %i.rj, ptr %i.k, align 8, !tbaa !3703
  %i.rk = load ptr, ptr %i.cs, align 8, !tbaa !77 ; 2 uses
  %i.rl = load i8, ptr %i.rk, align 1, !tbaa !65  ; 2 uses
  %i.rm = load i64, ptr %i.i, align 8, !tbaa !3702 ; 10 uses
  %i.rn = icmp ult i64 %i.rj, %i.rm
  br i1 %i.rn, label %.preheader.lr.ph.i240, label %_ZNK7httplib6detail14FormDataParser8buf_findERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit252

.preheader.lr.ph.i240:                            ; preds = %bb.cj
  %i.ro = load ptr, ptr %i.ba, align 8, !tbaa !77 ; 3 uses
  %i.rp = icmp eq i64 %.fr40.i241, 0
  br i1 %i.rp, label %.preheader.us.i250, label %.preheader.i242

.preheader.us.i250:                               ; preds = %.preheader.lr.ph.i240, %bb.ck
  %.01633.us.i251 = phi i64 [ %i.rt, %bb.ck ], [ %i.rj, %.preheader.lr.ph.i240 ] ; 3 uses
  %i.rq = getelementptr inbounds nuw i8, ptr %i.ro, i64 %.01633.us.i251
  %i.rr = load i8, ptr %i.rq, align 1, !tbaa !65
  %i.rs = icmp eq i8 %i.rr, %i.rl
  br i1 %i.rs, label %_ZNK7httplib6detail14FormDataParser8buf_findERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit252, label %bb.ck

bb.ck:                                            ; preds = %.preheader.us.i250
  %i.rt = add i64 %.01633.us.i251, 1              ; 2 uses
  %i.ru = icmp eq i64 %i.rt, %i.rm
  br i1 %i.ru, label %_ZNK7httplib6detail14FormDataParser8buf_findERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit252, label %.preheader.us.i250, !llvm.loop !3708

.preheader.i242:                                  ; preds = %.preheader.lr.ph.i240, %.preheader.i242.backedge
  %.01633.i244 = phi i64 [ %.01633.i244.be, %.preheader.i242.backedge ], [ %i.rj, %.preheader.lr.ph.i240 ] ; 6 uses
  %i.rv = getelementptr inbounds nuw i8, ptr %i.ro, i64 %.01633.i244
  %i.rw = load i8, ptr %i.rv, align 1, !tbaa !65
  %i.rx = icmp eq i8 %i.rw, %i.rl
  br i1 %i.rx, label %bb.cm, label %bb.cl

bb.cl:                                            ; preds = %.preheader.i242
  %i.ry = add i64 %.01633.i244, 1                 ; 2 uses
  %i.rz = icmp eq i64 %i.ry, %i.rm
  br i1 %i.rz, label %_ZNK7httplib6detail14FormDataParser8buf_findERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit252, label %.preheader.i242.backedge

.preheader.i242.backedge:                         ; preds = %bb.cl, %bb.co
  %.01633.i244.be = phi i64 [ %i.ry, %bb.cl ], [ %i.sh, %bb.co ]
  br label %.preheader.i242, !llvm.loop !3709

bb.cm:                                            ; preds = %.preheader.i242
  %i.sa = getelementptr inbounds nuw i8, ptr %i.ro, i64 %.01633.i244
  %i.sb = sub nuw i64 %i.rm, %.01633.i244
  %i.sc = icmp ugt i64 %.fr40.i241, %i.sb
  br i1 %i.sc, label %_ZNK7httplib6detail14FormDataParser8buf_findERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit252, label %.lr.ph.i.i245

bb.cn:                                            ; preds = %.lr.ph.i.i245
  %i.sd = add nuw i64 %.01214.i.i246, 1           ; 2 uses
  %exitcond.not.i.i249 = icmp eq i64 %i.sd, %.fr40.i241
  br i1 %exitcond.not.i.i249, label %_ZNK7httplib6detail14FormDataParser8buf_findERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit252, label %.lr.ph.i.i245, !llvm.loop !3710

.lr.ph.i.i245:                                    ; preds = %bb.cm, %bb.cn
  %.01214.i.i246 = phi i64 [ %i.sd, %bb.cn ], [ 0, %bb.cm ] ; 3 uses
  %gep.i.i247 = getelementptr i8, ptr %i.sa, i64 %.01214.i.i246
  %i.se = load i8, ptr %gep.i.i247, align 1, !tbaa !65
  %i.sf = getelementptr inbounds nuw i8, ptr %i.rk, i64 %.01214.i.i246
  %i.sg = load i8, ptr %i.sf, align 1, !tbaa !65
  %.not.i.i248 = icmp eq i8 %i.se, %i.sg
  br i1 %.not.i.i248, label %bb.cn, label %bb.co

bb.co:                                            ; preds = %.lr.ph.i.i245
  %i.sh = add i64 %.01633.i244, 1                 ; 2 uses
  %i.si = icmp ult i64 %i.sh, %i.rm
  br i1 %i.si, label %.preheader.i242.backedge, label %_ZNK7httplib6detail14FormDataParser8buf_findERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit252

_ZNK7httplib6detail14FormDataParser8buf_findERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit252: ; preds = %bb.cm, %bb.co, %bb.cl, %.preheader.us.i250, %bb.ck, %bb.cn, %bb.cj
  %.pn.i238 = phi i64 [ %i.rm, %bb.cj ], [ %.01633.i244, %bb.cn ], [ %i.rm, %bb.ck ], [ %.01633.us.i251, %.preheader.us.i250 ], [ %i.rm, %bb.cl ], [ %i.rm, %bb.co ], [ %i.rm, %bb.cm ]
  %.3.i239 = sub i64 %.pn.i238, %i.rj
  br label %bb.cp

bb.cp:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit233, %_ZNK7httplib6detail14FormDataParser8buf_findERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit252, %bb.ah, %bb.ad
  %.562 = phi i1 [ false, %bb.ad ], [ false, %bb.ah ], [ false, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit233 ], [ true, %_ZNK7httplib6detail14FormDataParser8buf_findERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit252 ]
  %.256 = phi i64 [ %.054, %bb.ad ], [ %.054, %bb.ah ], [ %.054, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit233 ], [ %.3.i239, %_ZNK7httplib6detail14FormDataParser8buf_findERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit252 ]
  %i.sj = load ptr, ptr %5, align 8, !tbaa !77    ; 2 uses
  %i.sk = icmp eq ptr %i.sj, %i.db
  br i1 %i.sk, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit255, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i253

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i253: ; preds = %bb.cp
  %i.sl = load i64, ptr %i.db, align 8, !tbaa !65
  %i.sm = add i64 %i.sl, 1
  call void @_ZdlPvm(ptr noundef %i.sj, i64 noundef %i.sm) #46
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit255

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit255: ; preds = %bb.cp, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i253
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #23
  br i1 %.562, label %.preheader, label %_ZNK7httplib6detail14FormDataParser14buf_start_withERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit291, !llvm.loop !3736

bb.cq:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit117, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit236, %bb.ae
  %.pn84.pn = phi { ptr, i32 } [ %i.in, %bb.ae ], [ %.pn77.pn.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit236 ], [ %.pn82, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit117 ]
  %i.sn = load ptr, ptr %5, align 8, !tbaa !77    ; 2 uses
  %i.so = icmp eq ptr %i.sn, %i.db
  br i1 %i.so, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit258, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i256

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i256: ; preds = %bb.cq
  %i.sp = load i64, ptr %i.db, align 8, !tbaa !65
  %i.sq = add i64 %i.sp, 1
  call void @_ZdlPvm(ptr noundef %i.sn, i64 noundef %i.sq) #46
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit258

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit258: ; preds = %bb.cq, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i256
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #23
  resume { ptr, i32 } %.pn84.pn

bb.cr:                                            ; preds = %.preheader
  %.pr = load i64, ptr %i.cr, align 8, !tbaa !1741
  %.not87 = icmp eq i64 %.pr, 3
  br i1 %.not87, label %bb.dm, label %_ZNK7httplib6detail14FormDataParser14buf_start_withERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit291

.loopexit773.loopexit:                            ; preds = %bb.f
  %i.sr = sub i64 %i.ej, %i.cq
  br label %.loopexit773

.loopexit773:                                     ; preds = %.loopexit773.loopexit, %bb.dm
  %i.ss = phi i64 [ %i.vl, %bb.dm ], [ %i.ej, %.loopexit773.loopexit ] ; 10 uses
  %i.st = phi i64 [ %i.vm, %bb.dm ], [ %i.sr, %.loopexit773.loopexit ] ; 4 uses
  %i.su = phi i64 [ %i.vk, %bb.dm ], [ %i.cq, %.loopexit773.loopexit ] ; 6 uses
  %i.sv = load i64, ptr %i.cw, align 8, !tbaa !64
  %.fr40.i263 = freeze i64 %i.sv                  ; 6 uses
  %i.sw = icmp ugt i64 %.fr40.i263, %i.st
  br i1 %i.sw, label %_ZNK7httplib6detail14FormDataParser14buf_start_withERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit291, label %bb.cs

bb.cs:                                            ; preds = %.loopexit773
  %i.sx = load ptr, ptr %i.cx, align 8, !tbaa !77 ; 2 uses
  %i.sy = load i8, ptr %i.sx, align 1, !tbaa !65  ; 2 uses
  %i.sz = icmp ult i64 %i.su, %i.ss
  br i1 %i.sz, label %.preheader.lr.ph.i262, label %_ZNK7httplib6detail14FormDataParser8buf_findERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit274

.preheader.lr.ph.i262:                            ; preds = %bb.cs
  %i.ta = load ptr, ptr %i.ba, align 8, !tbaa !77 ; 3 uses
  %i.tb = icmp eq i64 %.fr40.i263, 0
  br i1 %i.tb, label %.preheader.us.i272, label %.preheader.i264

.preheader.us.i272:                               ; preds = %.preheader.lr.ph.i262, %bb.ct
  %.01633.us.i273 = phi i64 [ %i.tf, %bb.ct ], [ %i.su, %.preheader.lr.ph.i262 ] ; 3 uses
  %i.tc = getelementptr inbounds nuw i8, ptr %i.ta, i64 %.01633.us.i273
  %i.td = load i8, ptr %i.tc, align 1, !tbaa !65
  %i.te = icmp eq i8 %i.td, %i.sy
  br i1 %i.te, label %_ZNK7httplib6detail14FormDataParser8buf_findERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit274, label %bb.ct

bb.ct:                                            ; preds = %.preheader.us.i272
  %i.tf = add i64 %.01633.us.i273, 1              ; 2 uses
  %i.tg = icmp eq i64 %i.tf, %i.ss
  br i1 %i.tg, label %_ZNK7httplib6detail14FormDataParser8buf_findERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit274, label %.preheader.us.i272, !llvm.loop !3708

.preheader.i264:                                  ; preds = %.preheader.lr.ph.i262, %.preheader.i264.backedge
  %.01633.i266 = phi i64 [ %.01633.i266.be, %.preheader.i264.backedge ], [ %i.su, %.preheader.lr.ph.i262 ] ; 6 uses
  %i.th = getelementptr inbounds nuw i8, ptr %i.ta, i64 %.01633.i266
  %i.ti = load i8, ptr %i.th, align 1, !tbaa !65
  %i.tj = icmp eq i8 %i.ti, %i.sy
  br i1 %i.tj, label %bb.cv, label %bb.cu

bb.cu:                                            ; preds = %.preheader.i264
  %i.tk = add i64 %.01633.i266, 1                 ; 2 uses
  %i.tl = icmp eq i64 %i.tk, %i.ss
  br i1 %i.tl, label %_ZNK7httplib6detail14FormDataParser8buf_findERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit274, label %.preheader.i264.backedge

.preheader.i264.backedge:                         ; preds = %bb.cu, %bb.cx
  %.01633.i266.be = phi i64 [ %i.tk, %bb.cu ], [ %i.tt, %bb.cx ]
  br label %.preheader.i264, !llvm.loop !3709

bb.cv:                                            ; preds = %.preheader.i264
  %i.tm = getelementptr inbounds nuw i8, ptr %i.ta, i64 %.01633.i266
  %i.tn = sub nuw i64 %i.ss, %.01633.i266
  %i.to = icmp ugt i64 %.fr40.i263, %i.tn
  br i1 %i.to, label %_ZNK7httplib6detail14FormDataParser8buf_findERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit274, label %.lr.ph.i.i267

bb.cw:                                            ; preds = %.lr.ph.i.i267
  %i.tp = add nuw i64 %.01214.i.i268, 1           ; 2 uses
  %exitcond.not.i.i271 = icmp eq i64 %i.tp, %.fr40.i263
  br i1 %exitcond.not.i.i271, label %_ZNK7httplib6detail14FormDataParser8buf_findERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit274, label %.lr.ph.i.i267, !llvm.loop !3710

.lr.ph.i.i267:                                    ; preds = %bb.cv, %bb.cw
  %.01214.i.i268 = phi i64 [ %i.tp, %bb.cw ], [ 0, %bb.cv ] ; 3 uses
  %gep.i.i269 = getelementptr i8, ptr %i.tm, i64 %.01214.i.i268
  %i.tq = load i8, ptr %gep.i.i269, align 1, !tbaa !65
  %i.tr = getelementptr inbounds nuw i8, ptr %i.sx, i64 %.01214.i.i268
  %i.ts = load i8, ptr %i.tr, align 1, !tbaa !65
  %.not.i.i270 = icmp eq i8 %i.tq, %i.ts
  br i1 %.not.i.i270, label %bb.cw, label %bb.cx

bb.cx:                                            ; preds = %.lr.ph.i.i267
  %i.tt = add i64 %.01633.i266, 1                 ; 2 uses
  %i.tu = icmp ult i64 %i.tt, %i.ss
  br i1 %i.tu, label %.preheader.i264.backedge, label %_ZNK7httplib6detail14FormDataParser8buf_findERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit274

_ZNK7httplib6detail14FormDataParser8buf_findERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit274: ; preds = %bb.cv, %bb.cx, %bb.cu, %bb.cw, %.preheader.us.i272, %bb.ct, %bb.cs
  %.pn.i260 = phi i64 [ %i.ss, %bb.cs ], [ %.01633.i266, %bb.cw ], [ %i.ss, %bb.ct ], [ %.01633.us.i273, %.preheader.us.i272 ], [ %i.ss, %bb.cu ], [ %i.ss, %bb.cx ], [ %i.ss, %bb.cv ]
  %.3.i261 = sub i64 %.pn.i260, %i.su             ; 3 uses
  %i.tv = icmp ult i64 %.3.i261, %i.st
  br i1 %i.tv, label %bb.cy, label %bb.db

bb.cy:                                            ; preds = %_ZNK7httplib6detail14FormDataParser8buf_findERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit274
  %i.tw = load ptr, ptr %i.ba, align 8, !tbaa !77
  %i.tx = getelementptr inbounds nuw i8, ptr %i.tw, i64 %i.su
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  store ptr %i.tx, ptr %i.c, align 8, !tbaa !314
  store i64 %.3.i261, ptr %i.d, align 8, !tbaa !78
  %i.ty = load ptr, ptr %i.cy, align 8, !tbaa !159
  %.not.i.i275 = icmp eq ptr %i.ty, null
  br i1 %.not.i.i275, label %bb.cz, label %_ZNKSt8functionIFbPKcmEEclES1_m.exit

bb.cz:                                            ; preds = %bb.cy
  call void @_ZSt25__throw_bad_function_callv() #47
  unreachable

_ZNKSt8functionIFbPKcmEEclES1_m.exit:             ; preds = %bb.cy
  %i.tz = load ptr, ptr %i.cz, align 8, !tbaa !493
  %i.ua = call noundef zeroext i1 %i.tz(ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull align 8 dereferenceable(8) %i.c, ptr noundef nonnull align 8 dereferenceable(8) %i.d), !inline_history !495
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  br i1 %i.ua, label %bb.dg, label %bb.da

bb.da:                                            ; preds = %_ZNKSt8functionIFbPKcmEEclES1_m.exit
  store i8 0, ptr %i.cv, align 8, !tbaa !1744
  br label %_ZNK7httplib6detail14FormDataParser14buf_start_withERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit291

bb.db:                                            ; preds = %_ZNK7httplib6detail14FormDataParser8buf_findERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit274
  %i.ub = sub nuw i64 %i.st, %.fr40.i263          ; 2 uses
  %.not71 = icmp eq i64 %i.st, %.fr40.i263
  br i1 %.not71, label %_ZNK7httplib6detail14FormDataParser14buf_start_withERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit291, label %bb.dc

bb.dc:                                            ; preds = %bb.db
  %i.uc = load ptr, ptr %i.ba, align 8, !tbaa !77
  %i.ud = getelementptr inbounds nuw i8, ptr %i.uc, i64 %i.su
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store ptr %i.ud, ptr %i.a, align 8, !tbaa !314
  store i64 %i.ub, ptr %i.b, align 8, !tbaa !78
  %i.ue = load ptr, ptr %i.cy, align 8, !tbaa !159
  %.not.i.i276 = icmp eq ptr %i.ue, null
  br i1 %.not.i.i276, label %bb.dd, label %_ZNKSt8functionIFbPKcmEEclES1_m.exit277

bb.dd:                                            ; preds = %bb.dc
  call void @_ZSt25__throw_bad_function_callv() #47
  unreachable

_ZNKSt8functionIFbPKcmEEclES1_m.exit277:          ; preds = %bb.dc
  %i.uf = load ptr, ptr %i.cz, align 8, !tbaa !493
  %i.ug = call noundef zeroext i1 %i.uf(ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull align 8 dereferenceable(8) %i.a, ptr noundef nonnull align 8 dereferenceable(8) %i.b), !inline_history !495
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br i1 %i.ug, label %bb.df, label %bb.de

bb.de:                                            ; preds = %_ZNKSt8functionIFbPKcmEEclES1_m.exit277
  store i8 0, ptr %i.cv, align 8, !tbaa !1744
  br label %_ZNK7httplib6detail14FormDataParser14buf_start_withERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit291

bb.df:                                            ; preds = %_ZNKSt8functionIFbPKcmEEclES1_m.exit277
  %i.uh = load i64, ptr %i.k, align 8, !tbaa !3703
  %i.ui = add i64 %i.uh, %i.ub
  store i64 %i.ui, ptr %i.k, align 8, !tbaa !3703
  br label %_ZNK7httplib6detail14FormDataParser14buf_start_withERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit291

bb.dg:                                            ; preds = %_ZNKSt8functionIFbPKcmEEclES1_m.exit
  %i.uj = load i64, ptr %i.cw, align 8, !tbaa !64
  %i.uk = add i64 %i.uj, %.3.i261
  %i.ul = load i64, ptr %i.k, align 8, !tbaa !3703
  %i.um = add i64 %i.uk, %i.ul                    ; 2 uses
  store i64 %i.um, ptr %i.k, align 8, !tbaa !3703
  store i64 4, ptr %i.cr, align 8, !tbaa !1741
  br label %bb.dn

.loopexit774.loopexit:                            ; preds = %bb.f
  %i.un = sub i64 %i.ej, %i.cq
  br label %.loopexit774

.loopexit774:                                     ; preds = %.loopexit774.loopexit, %bb.dn
  %i.uo = phi i64 [ %i.vo, %bb.dn ], [ %i.ej, %.loopexit774.loopexit ] ; 2 uses
  %i.up = phi i64 [ %i.vp, %bb.dn ], [ %i.un, %.loopexit774.loopexit ] ; 2 uses
  %i.uq = phi i64 [ %i.vn, %bb.dn ], [ %i.cq, %.loopexit774.loopexit ] ; 2 uses
  %i.ur = load i64, ptr %i.ct, align 8, !tbaa !64 ; 4 uses
  %i.us = icmp ugt i64 %i.ur, %i.up
  br i1 %i.us, label %_ZNK7httplib6detail14FormDataParser14buf_start_withERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit291, label %.preheader.i.i

.preheader.i.i:                                   ; preds = %.loopexit774
  %i.ut = icmp eq i64 %i.ur, 0
  br i1 %i.ut, label %.loopexit358, label %.lr.ph.i.i278

.lr.ph.i.i278:                                    ; preds = %.preheader.i.i
  %i.uu = load ptr, ptr %i.ba, align 8, !tbaa !77
  %invariant.gep.i.i = getelementptr i8, ptr %i.uu, i64 %i.uq ; 2 uses
  %i.uv = load ptr, ptr %i.cs, align 8, !tbaa !77
  br label %bb.di

bb.dh:                                            ; preds = %bb.di
  %i.uw = add nuw i64 %.01214.i.i279, 1           ; 2 uses
  %exitcond.not.i.i282 = icmp eq i64 %i.uw, %i.ur
  br i1 %exitcond.not.i.i282, label %.loopexit358, label %bb.di, !llvm.loop !3710

bb.di:                                            ; preds = %bb.dh, %.lr.ph.i.i278
  %.01214.i.i279 = phi i64 [ 0, %.lr.ph.i.i278 ], [ %i.uw, %bb.dh ] ; 3 uses
  %gep.i.i280 = getelementptr i8, ptr %invariant.gep.i.i, i64 %.01214.i.i279
  %i.ux = load i8, ptr %gep.i.i280, align 1, !tbaa !65
  %i.uy = getelementptr inbounds nuw i8, ptr %i.uv, i64 %.01214.i.i279
  %i.uz = load i8, ptr %i.uy, align 1, !tbaa !65
  %.not.i.i281 = icmp eq i8 %i.ux, %i.uz
  br i1 %.not.i.i281, label %bb.dh, label %_ZNK7httplib6detail14FormDataParser14buf_start_withERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit

.loopexit358:                                     ; preds = %bb.dh, %.preheader.i.i
  %i.va = add i64 %i.ur, %i.uq
  br label %bb.dp

_ZNK7httplib6detail14FormDataParser14buf_start_withERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit: ; preds = %bb.di
  %i.vb = load i64, ptr %i.cu, align 8, !tbaa !64 ; 3 uses
  %i.vc = icmp ugt i64 %i.vb, %i.up
  br i1 %i.vc, label %_ZNK7httplib6detail14FormDataParser14buf_start_withERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit291, label %.preheader.i.i283

.preheader.i.i283:                                ; preds = %_ZNK7httplib6detail14FormDataParser14buf_start_withERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit
  %i.vd = icmp eq i64 %i.vb, 0
  br i1 %i.vd, label %.loopexit357, label %.lr.ph.i.i284

.lr.ph.i.i284:                                    ; preds = %.preheader.i.i283
  %i.ve = load ptr, ptr %0, align 8, !tbaa !77
  br label %bb.dk

bb.dj:                                            ; preds = %bb.dk
  %i.vf = add nuw i64 %.01214.i.i286, 1           ; 2 uses
  %exitcond.not.i.i290 = icmp eq i64 %i.vf, %i.vb
  br i1 %exitcond.not.i.i290, label %.loopexit357, label %bb.dk, !llvm.loop !3710

bb.dk:                                            ; preds = %bb.dj, %.lr.ph.i.i284
  %.01214.i.i286 = phi i64 [ 0, %.lr.ph.i.i284 ], [ %i.vf, %bb.dj ] ; 3 uses
  %gep.i.i287 = getelementptr i8, ptr %invariant.gep.i.i, i64 %.01214.i.i286
  %i.vg = load i8, ptr %gep.i.i287, align 1, !tbaa !65
  %i.vh = getelementptr inbounds nuw i8, ptr %i.ve, i64 %.01214.i.i286
  %i.vi = load i8, ptr %i.vh, align 1, !tbaa !65
  %.not.i.i288 = icmp eq i8 %i.vg, %i.vi
  br i1 %.not.i.i288, label %bb.dj, label %_ZNK7httplib6detail14FormDataParser14buf_start_withERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit291

.loopexit357:                                     ; preds = %bb.dj, %.preheader.i.i283
  store i8 1, ptr %i.cv, align 8, !tbaa !1744
  store i64 %i.uo, ptr %i.k, align 8, !tbaa !3703
  br label %bb.dn

bb.dl:                                            ; preds = %bb.f
  %i.vj = load i64, ptr %i.i, align 8, !tbaa !3702 ; 2 uses
  %.not = icmp eq i64 %i.vj, %i.cq
  br i1 %.not, label %_ZNK7httplib6detail14FormDataParser14buf_start_withERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit291, label %bb.f, !llvm.loop !3737

bb.dm:                                            ; preds = %.thread331, %bb.cr
  %i.vk = phi i64 [ %i.hj, %bb.cr ], [ %i.hs, %.thread331 ] ; 3 uses
  %i.vl = load i64, ptr %i.i, align 8, !tbaa !3702 ; 3 uses
  %i.vm = sub i64 %i.vl, %i.vk
  %.not.jt3 = icmp eq i64 %i.vl, %i.vk
  br i1 %.not.jt3, label %_ZNK7httplib6detail14FormDataParser14buf_start_withERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit291, label %.loopexit773, !llvm.loop !3737

bb.dn:                                            ; preds = %bb.dg, %.loopexit357
  %i.vn = phi i64 [ %i.um, %bb.dg ], [ %i.uo, %.loopexit357 ] ; 3 uses
  %i.vo = load i64, ptr %i.i, align 8, !tbaa !3702 ; 3 uses
  %i.vp = sub i64 %i.vo, %i.vn
  %.not.jt4 = icmp eq i64 %i.vo, %i.vn
  br i1 %.not.jt4, label %_ZNK7httplib6detail14FormDataParser14buf_start_withERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit291, label %.loopexit774, !llvm.loop !3737

bb.do:                                            ; preds = %_ZSt8_DestroyIPSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_ES7_EvT_S9_RSaIT0_E.exit.i.i.i.i, %.loopexit771
  store i64 0, ptr %i.da, align 8, !tbaa !3712
  store i64 2, ptr %i.cr, align 8, !tbaa !1741
  %.pre633 = load i64, ptr %i.k, align 8, !tbaa !3703 ; 2 uses
  %i.vq = load i64, ptr %i.i, align 8, !tbaa !3702 ; 2 uses
  %.not.jt2 = icmp eq i64 %i.vq, %.pre633
  br i1 %.not.jt2, label %_ZNK7httplib6detail14FormDataParser14buf_start_withERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit291, label %.loopexit772, !llvm.loop !3737

bb.dp:                                            ; preds = %.loopexit358, %bb.m
  %.sink = phi i64 [ %i.va, %.loopexit358 ], [ %i.fl, %bb.m ] ; 2 uses
  store i64 %.sink, ptr %i.k, align 8, !tbaa !3703
  store i64 1, ptr %i.cr, align 8, !tbaa !1741
  %i.vr = load i64, ptr %i.i, align 8, !tbaa !3702
  %.not.jt1 = icmp eq i64 %i.vr, %.sink
  br i1 %.not.jt1, label %_ZNK7httplib6detail14FormDataParser14buf_start_withERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit291, label %.loopexit771, !llvm.loop !3737

_ZNK7httplib6detail14FormDataParser14buf_start_withERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit291: ; preds = %bb.dl, %bb.j, %bb.l, %bb.i, %bb.h, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit255, %bb.dk, %bb.g, %.loopexit773, %.loopexit774, %_ZNK7httplib6detail14FormDataParser14buf_start_withERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit, %_ZNK7httplib6detail14FormDataParser8buf_findERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit, %bb.cr, %_ZNK7httplib6detail14FormDataParser8buf_findERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit103, %bb.dp, %bb.do, %bb.dn, %bb.dm, %_ZN7httplib6detail14FormDataParser10buf_appendEPKcm.exit, %bb.de, %bb.df, %bb.db, %bb.da, %bb.x, %bb.v
  %.15 = phi i1 [ true, %bb.h ], [ false, %bb.v ], [ false, %bb.de ], [ false, %bb.da ], [ true, %bb.dk ], [ true, %bb.db ], [ true, %bb.df ], [ false, %bb.x ], [ true, %_ZN7httplib6detail14FormDataParser10buf_appendEPKcm.exit ], [ true, %bb.j ], [ true, %_ZNK7httplib6detail14FormDataParser14buf_start_withERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit ], [ true, %.loopexit773 ], [ true, %.loopexit774 ], [ true, %bb.cr ], [ true, %_ZNK7httplib6detail14FormDataParser8buf_findERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit ], [ false, %_ZNK7httplib6detail14FormDataParser8buf_findERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit103 ], [ true, %bb.dp ], [ true, %bb.do ], [ true, %bb.dn ], [ true, %bb.dm ], [ true, %bb.g ], [ false, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit255 ], [ true, %bb.i ], [ true, %bb.l ], [ true, %bb.dl ]
  ret i1 %.15
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef zeroext i1 @_ZN7httplib6detail12parse_headerIZNS0_14FormDataParser5parseEPKcmRKSt8functionIFbRKNS_8FormDataEEERKS5_IFbS4_mEEEUlRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESO_E_EEbS4_S4_T_(ptr noundef %0, ptr noundef %1) local_unnamed_addr #7 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = ptrtoaddr ptr %1 to i64                  ; 2 uses
  %i.b = ptrtoaddr ptr %0 to i64                  ; 2 uses
  %i.c = alloca i64, align 8                      ; 6 uses
  %i.d = alloca i64, align 8                      ; 6 uses
  %i.e = alloca i64, align 8                      ; 6 uses
  %2 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %i.f = icmp ult ptr %0, %1
  br i1 %i.f, label %.lr.ph.preheader, label %.critedge

.lr.ph.preheader:                                 ; preds = %bb.a
  %i.g = sub i64 %i.b, %i.a
  %scevgep = getelementptr i8, ptr %1, i64 %i.g
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %.backedge86
  %.03987 = phi ptr [ %i.h, %.backedge86 ], [ %1, %.lr.ph.preheader ] ; 2 uses
  %i.h = getelementptr inbounds i8, ptr %.03987, i64 -1 ; 3 uses
  %i.i = load i8, ptr %i.h, align 1, !tbaa !65
  switch i8 %i.i, label %.critedge.loopexit [
    i8 32, label %.backedge86
    i8 9, label %.backedge86
  ]

.backedge86:                                      ; preds = %.lr.ph, %.lr.ph
  %i.j = icmp ult ptr %0, %i.h
  br i1 %i.j, label %.lr.ph, label %.critedge.loopexit

.critedge.loopexit:                               ; preds = %.lr.ph, %.backedge86
  %.039.lcssa.ph = phi ptr [ %scevgep, %.backedge86 ], [ %.03987, %.lr.ph ] ; 2 uses
  %.pre107 = ptrtoaddr ptr %.039.lcssa.ph to i64
  br label %.critedge

.critedge:                                        ; preds = %.critedge.loopexit, %bb.a
  %.039.lcssa101.pre-phi = phi i64 [ %.pre107, %.critedge.loopexit ], [ %i.a, %bb.a ] ; 2 uses
  %.039.lcssa = phi ptr [ %.039.lcssa.ph, %.critedge.loopexit ], [ %1, %bb.a ] ; 5 uses
  %i.k = icmp ult ptr %0, %.039.lcssa
  br i1 %i.k, label %.lr.ph91.preheader, label %.critedge2

.lr.ph91.preheader:                               ; preds = %.critedge
end_hunk_3

inline.NumInlined: 417
inline.NumDeleted: 215
loop-unroll.NumCompletelyUnrolled: 4
loop-unroll.NumUnrolled: 4
begin_hunk_0_@_ZNK2v88internal20MaglevSafepointTable9FindEntryEm
define hidden void @_ZNK2v88internal20MaglevSafepointTable9FindEntryEm(ptr dead_on_unwind noalias writable sret(%"class.v8::internal::MaglevSafepointEntry") align 4 %0, ptr noundef nonnull align 8 dereferenceable(32) %1, i64 noundef %2) local_unnamed_addr #0 align 2 {
bb.a:
  %3 = alloca %"class.v8::internal::MaglevSafepointEntry", align 4 ; 4 uses
  %i.a = load i64, ptr %1, align 8
  %i.b = sub i64 %2, %i.a
  %i.c = trunc i64 %i.b to i32                    ; 4 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.e = load i32, ptr %i.d, align 8
  %i.f = trunc i32 %i.e to i1
  br i1 %i.f, label %.preheader, label %.thread31

.preheader:                                       ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 20 ; 2 uses
  %i.h = load i32, ptr %i.g, align 4
  %i.i = icmp sgt i32 %i.h, 0
  br i1 %i.i, label %.lr.ph, label %.thread31

.lr.ph:                                           ; preds = %.preheader
  %i.j = getelementptr inbounds nuw i8, ptr %3, i64 8
  br label %bb.c

bb.b:                                             ; preds = %bb.d
  %i.k = add nuw nsw i32 %.039, 1                 ; 2 uses
  %i.l = load i32, ptr %i.g, align 4
  %i.m = icmp slt i32 %i.k, %i.l
  br i1 %i.m, label %bb.c, label %.thread31, !llvm.loop !14

bb.c:                                             ; preds = %.lr.ph, %bb.b
  %.039 = phi i32 [ 0, %.lr.ph ], [ %i.k, %bb.b ] ; 3 uses
  call void @_ZNK2v88internal20MaglevSafepointTable8GetEntryEi(ptr dead_on_unwind writable sret(%"class.v8::internal::MaglevSafepointEntry") align 4 %0, ptr noundef nonnull align 8 dereferenceable(32) %1, i32 noundef %.039)
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #10
  call void @_ZNK2v88internal20MaglevSafepointTable8GetEntryEi(ptr dead_on_unwind nonnull writable sret(%"class.v8::internal::MaglevSafepointEntry") align 4 %3, ptr noundef nonnull align 8 dereferenceable(32) %1, i32 noundef %.039)
  %i.n = load i32, ptr %i.j, align 4              ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #10
  %.not = icmp ne i32 %i.n, -1
  %i.o = icmp eq i32 %i.n, %i.c
  %or.cond = select i1 %.not, i1 %i.o, i1 false
  br i1 %or.cond, label %.thread34, label %bb.d

bb.d:                                             ; preds = %bb.c
  %.not37 = icmp sgt i32 %i.n, %i.c
  br i1 %.not37, label %.thread31, label %bb.b

.thread31:                                        ; preds = %bb.b, %bb.d, %.preheader, %bb.a
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 20 ; 2 uses
  %i.q = load i32, ptr %i.p, align 4
  %.not2741 = icmp sgt i32 %i.q, 0
  br i1 %.not2741, label %.lr.ph43, label %.critedge

bb.e:                                             ; preds = %.lr.ph43
  %i.r = add nuw nsw i32 %.02542, 1               ; 2 uses
  %i.s = load i32, ptr %i.p, align 4
  %.not27 = icmp slt i32 %i.r, %i.s
  br i1 %.not27, label %.lr.ph43, label %.critedge, !llvm.loop !15

.lr.ph43:                                         ; preds = %.thread31, %bb.e
  %.02542 = phi i32 [ %i.r, %bb.e ], [ 0, %.thread31 ] ; 2 uses
  call void @_ZNK2v88internal20MaglevSafepointTable8GetEntryEi(ptr dead_on_unwind writable sret(%"class.v8::internal::MaglevSafepointEntry") align 4 %0, ptr noundef nonnull align 8 dereferenceable(32) %1, i32 noundef %.02542)
  %i.t = load i32, ptr %0, align 4
  %i.u = icmp eq i32 %i.t, %i.c
  br i1 %i.u, label %.thread34, label %bb.e

.critedge:                                        ; preds = %bb.e, %.thread31
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 28
  %i.w = load i32, ptr %i.v, align 4
  store i32 %i.c, ptr %0, align 4
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i32 -1, ptr %i.x, align 4
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 -1, ptr %i.y, align 4
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 12
  store i32 %i.w, ptr %i.z, align 4
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i8 0, ptr %i.aa, align 4
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 20
  store i32 0, ptr %i.ab, align 4
  br label %.thread34

.thread34:                                        ; preds = %bb.c, %.lr.ph43, %.critedge
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN2v88internal20MaglevSafepointTable9FindEntryEPNS0_7IsolateENS0_6TaggedINS0_10GcSafeCodeEEEm(ptr dead_on_unwind noalias writable sret(%"class.v8::internal::MaglevSafepointEntry") align 4 %0, ptr noundef %1, i64 %2, i64 noundef %3) local_unnamed_addr #0 align 2 {
bb.a:
  %4 = alloca %"class.v8::internal::MaglevSafepointTable", align 8 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #10
  call void @_ZN2v88internal20MaglevSafepointTableC2EPNS0_7IsolateEmNS0_6TaggedINS0_10GcSafeCodeEEE(ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef %1, i64 noundef %3, i64 %2)
  call void @_ZNK2v88internal20MaglevSafepointTable9FindEntryEm(ptr dead_on_unwind writable sret(%"class.v8::internal::MaglevSafepointEntry") align 4 %0, ptr noundef nonnull align 8 dereferenceable(32) %4, i64 noundef %3)
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #10
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #1

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZNK2v88internal20MaglevSafepointTable5PrintERSo(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) local_unnamed_addr #0 align 2 {
bb.a:
  %2 = alloca %"class.v8::internal::MaglevSafepointEntry", align 4 ; 9 uses
  %i.a = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull @.str.1, i64 noundef 26) #10 ; 0 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.c = load i32, ptr %i.b, align 8
  %i.d = zext i32 %i.c to i64
  %i.e = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertImEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %1, i64 noundef %i.d) #10 ; 2 uses
  %i.f = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.e, ptr noundef nonnull @.str.2, i64 noundef 12) #10 ; 0 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 20 ; 4 uses
  %i.h = load i32, ptr %i.g, align 4
  %i.i = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) %i.e, i32 noundef %i.h) #10 ; 2 uses
  %i.j = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.i, ptr noundef nonnull @.str.3, i64 noundef 14) #10 ; 0 uses
  %i.k = load i32, ptr %i.g, align 4
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.m = load i32, ptr %i.l, align 8              ; 4 uses
  %i.n = trunc i32 %i.m to i1
  %i.o = lshr i32 %i.m, 4
  %i.p = and i32 %i.o, 7                          ; 2 uses
  %i.q = lshr i32 %i.m, 7
  %i.r = and i32 %i.q, 7
  %i.s = add nuw nsw i32 %i.p, %i.r
  %i.t = select i1 %i.n, i32 %i.s, i32 0
  %i.u = lshr i32 %i.m, 1
  %i.v = and i32 %i.u, 7
  %i.w = add nuw nsw i32 %i.p, 1
  %i.x = add nuw nsw i32 %i.w, %i.v
  %i.y = add nuw nsw i32 %i.x, %i.t
  %i.z = mul nsw i32 %i.y, %i.k
  %i.aa = add nsw i32 %i.z, 16
  %i.ab = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) %i.i, i32 noundef %i.aa) #10 ; 2 uses
  %i.ac = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.ab, ptr noundef nonnull @.str.4, i64 noundef 17) #10 ; 0 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 28
  %i.ae = load i32, ptr %i.ad, align 4
  %i.af = zext i32 %i.ae to i64
  %i.ag = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertImEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %i.ab, i64 noundef %i.af) #10
  %i.ah = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.ag, ptr noundef nonnull @.str.5, i64 noundef 2) #10 ; 0 uses
  %i.ai = load i32, ptr %i.g, align 4
  %i.aj = icmp sgt i32 %i.ai, 0
  br i1 %i.aj, label %.lr.ph22, label %._crit_edge

.lr.ph22:                                         ; preds = %bb.a
  %i.ak = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.al = getelementptr inbounds nuw i8, ptr %2, i64 20 ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %2, i64 4 ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %2, i64 8
  br label %bb.b

._crit_edge:                                      ; preds = %bb.e, %bb.a
  ret void

bb.b:                                             ; preds = %.lr.ph22, %bb.e
  %.021 = phi i32 [ 0, %.lr.ph22 ], [ %i.dg, %bb.e ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #10
  call void @_ZNK2v88internal20MaglevSafepointTable8GetEntryEi(ptr dead_on_unwind nonnull writable sret(%"class.v8::internal::MaglevSafepointEntry") align 4 %2, ptr noundef nonnull align 8 dereferenceable(32) %0, i32 noundef %.021)
  %i.ao = load i64, ptr %0, align 8
  %i.ap = load i32, ptr %2, align 4
  %i.aq = sext i32 %i.ap to i64
  %i.ar = add i64 %i.ao, %i.aq
  %i.as = inttoptr i64 %i.ar to ptr
  %i.at = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertIPKvEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef %i.as) #10 ; 6 uses
  %i.au = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.at, ptr noundef nonnull @.str.6, i64 noundef 1) #10 ; 0 uses
  %i.av = load ptr, ptr %i.at, align 8
  %i.aw = getelementptr i8, ptr %i.av, i64 -24
  %i.ax = load i64, ptr %i.aw, align 8
  %i.ay = getelementptr inbounds i8, ptr %i.at, i64 %i.ax
  %i.az = getelementptr inbounds nuw i8, ptr %i.ay, i64 16
  store i64 6, ptr %i.az, align 8
  %i.ba = load ptr, ptr %i.at, align 8
  %i.bb = getelementptr i8, ptr %i.ba, i64 -24
  %i.bc = load i64, ptr %i.bb, align 8
  %i.bd = getelementptr inbounds i8, ptr %i.at, i64 %i.bc
  %i.be = getelementptr inbounds nuw i8, ptr %i.bd, i64 24 ; 2 uses
  %i.bf = load i32, ptr %i.be, align 8
  %i.bg = and i32 %i.bf, -75
  %i.bh = or disjoint i32 %i.bg, 8
  store i32 %i.bh, ptr %i.be, align 8
  %i.bi = load i32, ptr %2, align 4
  %i.bj = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) %i.at, i32 noundef %i.bi) #10 ; 2 uses
  %i.bk = load ptr, ptr %i.bj, align 8
  %i.bl = getelementptr i8, ptr %i.bk, i64 -24
  %i.bm = load i64, ptr %i.bl, align 8
  %i.bn = getelementptr inbounds i8, ptr %i.bj, i64 %i.bm
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bn, i64 24 ; 2 uses
  %i.bp = load i32, ptr %i.bo, align 8
  %i.bq = and i32 %i.bp, -75
  %i.br = or disjoint i32 %i.bq, 2
  store i32 %i.br, ptr %i.bo, align 8
  %i.bs = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull @.str.7, i64 noundef 25) #10 ; 0 uses
  %i.bt = load i8, ptr %i.ak, align 4
  %i.bu = zext i8 %i.bt to i32
  %i.bv = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) %1, i32 noundef %i.bu) #10 ; 0 uses
  %i.bw = load i32, ptr %i.al, align 4
  %.not = icmp eq i32 %i.bw, 0
  br i1 %.not, label %.loopexit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.bx = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull @.str.8, i64 noundef 13) #10 ; 0 uses
  %i.by = load i32, ptr %i.al, align 4            ; 3 uses
  %.not23 = icmp eq i32 %i.by, 0
  br i1 %.not23, label %.loopexit, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.c
  %i.bz = call range(i32 0, 33) i32 @llvm.ctlz.i32(i32 %i.by, i1 true)
  %i.ca = xor i32 %i.bz, 31
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %.lr.ph
  %.01820 = phi i32 [ %i.cf, %.lr.ph ], [ %i.ca, %.lr.ph.preheader ] ; 3 uses
  %i.cb = lshr i32 %i.by, %.01820
  %i.cc = and i32 %i.cb, 1
  %i.cd = zext nneg i32 %i.cc to i64
  %i.ce = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertImEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %1, i64 noundef %i.cd) #10 ; 0 uses
  %i.cf = add nsw i32 %.01820, -1
  %.not25 = icmp eq i32 %.01820, 0
  br i1 %.not25, label %.loopexit, label %.lr.ph, !llvm.loop !16

.loopexit:                                        ; preds = %.lr.ph, %bb.c, %bb.b
  %i.cg = load i32, ptr %i.am, align 4
  %.not19 = icmp eq i32 %i.cg, -1
  br i1 %.not19, label %bb.e, label %bb.d

bb.d:                                             ; preds = %.loopexit
  %i.ch = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull @.str.9, i64 noundef 8) #10 ; 0 uses
  %i.ci = load ptr, ptr %1, align 8
  %i.cj = getelementptr i8, ptr %i.ci, i64 -24
  %i.ck = load i64, ptr %i.cj, align 8
  %i.cl = getelementptr inbounds i8, ptr %1, i64 %i.ck
  %i.cm = getelementptr inbounds nuw i8, ptr %i.cl, i64 16
  store i64 6, ptr %i.cm, align 8
  %i.cn = load i32, ptr %i.am, align 4
  %i.co = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) %1, i32 noundef %i.cn) #10 ; 6 uses
  %i.cp = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.co, ptr noundef nonnull @.str.10, i64 noundef 13) #10 ; 0 uses
  %i.cq = load ptr, ptr %i.co, align 8
  %i.cr = getelementptr i8, ptr %i.cq, i64 -24
  %i.cs = load i64, ptr %i.cr, align 8
  %i.ct = getelementptr inbounds i8, ptr %i.co, i64 %i.cs
  %i.cu = getelementptr inbounds nuw i8, ptr %i.ct, i64 16
  store i64 6, ptr %i.cu, align 8
  %i.cv = load ptr, ptr %i.co, align 8
  %i.cw = getelementptr i8, ptr %i.cv, i64 -24
  %i.cx = load i64, ptr %i.cw, align 8
  %i.cy = getelementptr inbounds i8, ptr %i.co, i64 %i.cx
  %i.cz = getelementptr inbounds nuw i8, ptr %i.cy, i64 24 ; 2 uses
  %i.da = load i32, ptr %i.cz, align 8
  %i.db = and i32 %i.da, -75
  %i.dc = or disjoint i32 %i.db, 8
  store i32 %i.dc, ptr %i.cz, align 8
  %i.dd = load i32, ptr %i.an, align 4
  %i.de = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) %i.co, i32 noundef %i.dd) #10 ; 0 uses
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %.loopexit
  %i.df = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull @.str.11, i64 noundef 1) #10 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #10
  %i.dg = add nuw nsw i32 %.021, 1                ; 2 uses
  %i.dh = load i32, ptr %i.g, align 4
  %i.di = icmp slt i32 %i.dg, %i.dh
  br i1 %i.di, label %bb.b, label %._crit_edge, !llvm.loop !17
}

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8), i32 noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nounwind uwtable
define hidden nonnull ptr @_ZN2v88internal27MaglevSafepointTableBuilder15DefineSafepointEPNS0_9AssemblerE(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr nofree noundef readonly captures(none) %1) local_unnamed_addr #0 align 2 {
bb.a:
  %2 = alloca %"struct.v8::internal::MaglevSafepointTableBuilder::EntryBuilder", align 4 ; 8 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #10
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.c = load ptr, ptr %i.b, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.e = load ptr, ptr %i.d, align 8
  %i.f = ptrtoint ptr %i.c to i64
  %i.g = ptrtoint ptr %i.e to i64
  %i.h = sub i64 %i.f, %i.g
  %i.i = trunc i64 %i.h to i32
  store i32 %i.i, ptr %2, align 4
  %i.j = getelementptr inbounds nuw i8, ptr %2, i64 4
  store i32 -1, ptr %i.j, align 4
  %i.k = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i32 -1, ptr %i.k, align 4
  %i.l = getelementptr inbounds nuw i8, ptr %2, i64 12
  store i8 0, ptr %i.l, align 4
  %i.m = getelementptr inbounds nuw i8, ptr %2, i64 16
  store i32 0, ptr %i.m, align 4
  call void @_ZN2v88internal13ZoneChunkListINS0_27MaglevSafepointTableBuilder12EntryBuilderEE9push_backERKS3_(ptr noundef nonnull align 8 dereferenceable(32) %i.a, ptr noundef nonnull align 4 dereferenceable(20) %2)
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #10
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.o = load ptr, ptr %i.n, align 8              ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 4
  %i.q = load i32, ptr %i.p, align 4
  %i.r = add i32 %i.q, -1
  %i.s = getelementptr inbounds nuw i8, ptr %i.o, i64 24
  %i.t = zext i32 %i.r to i64
  %i.u = getelementptr inbounds nuw [20 x i8], ptr %i.s, i64 %i.t
  ret ptr %i.u
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN2v88internal13ZoneChunkListINS0_27MaglevSafepointTableBuilder12EntryBuilderEE9push_backERKS3_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 4 dereferenceable(20) %1) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 5 uses
  %i.b = load ptr, ptr %i.a, align 8              ; 5 uses
  %i.c = icmp eq ptr %i.b, null
  br i1 %i.c, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.d = load ptr, ptr %0, align 8                ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  %i.f = load i64, ptr %i.e, align 8
  %i.g = getelementptr inbounds nuw i8, ptr %i.d, i64 16 ; 3 uses
  %i.h = load i64, ptr %i.g, align 8              ; 2 uses
  %i.i = sub i64 %i.f, %i.h
  %i.j = icmp ult i64 %i.i, 184
  br i1 %i.j, label %bb.c, label %_ZN2v88internal13ZoneChunkListINS0_27MaglevSafepointTableBuilder12EntryBuilderEE8NewChunkEj.exit, !prof !5

bb.c:                                             ; preds = %bb.b
  tail call preserve_mostcc void @_ZN2v88internal4Zone6ExpandEm(ptr noundef nonnull align 8 dereferenceable(64) %i.d, i64 noundef 184) #10
  %.pre.i.i = load i64, ptr %i.g, align 8
  br label %_ZN2v88internal13ZoneChunkListINS0_27MaglevSafepointTableBuilder12EntryBuilderEE8NewChunkEj.exit

_ZN2v88internal13ZoneChunkListINS0_27MaglevSafepointTableBuilder12EntryBuilderEE8NewChunkEj.exit: ; preds = %bb.b, %bb.c
  %i.k = phi i64 [ %.pre.i.i, %bb.c ], [ %i.h, %bb.b ] ; 2 uses
  %i.l = inttoptr i64 %i.k to ptr                 ; 4 uses
  %i.m = add i64 %i.k, 184
  store i64 %i.m, ptr %i.g, align 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.l, i8 0, i64 24, i1 false)
  store i32 8, ptr %i.l, align 8
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.l, ptr %i.n, align 8
  br label %.sink.split

bb.d:                                             ; preds = %bb.a
  %i.o = getelementptr inbounds nuw i8, ptr %i.b, i64 4
  %i.p = load i32, ptr %i.o, align 4              ; 2 uses
  %i.q = load i32, ptr %i.b, align 8
  %i.r = icmp eq i32 %i.p, %i.q
  br i1 %i.r, label %bb.e, label %bb.h

bb.e:                                             ; preds = %bb.d
  %i.s = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.t = load ptr, ptr %i.s, align 8              ; 2 uses
  %i.u = icmp eq ptr %i.t, null
  br i1 %i.u, label %bb.f, label %.sink.split

bb.f:                                             ; preds = %bb.e
  %i.v = shl i32 %i.p, 1
  %.sroa.speculated.i = tail call noundef i32 @llvm.umin.i32(i32 %i.v, i32 256) ; 2 uses
  %i.w = load ptr, ptr %0, align 8                ; 3 uses
  %narrow = mul nuw nsw i32 %.sroa.speculated.i, 20
  %narrow6 = add nuw nsw i32 %narrow, 24
  %i.x = zext nneg i32 %narrow6 to i64            ; 3 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.w, i64 24
  %i.z = load i64, ptr %i.y, align 8
  %i.aa = getelementptr inbounds nuw i8, ptr %i.w, i64 16 ; 3 uses
  %i.ab = load i64, ptr %i.aa, align 8            ; 2 uses
  %i.ac = sub i64 %i.z, %i.ab
  %i.ad = icmp ult i64 %i.ac, %i.x
  br i1 %i.ad, label %bb.g, label %_ZN2v88internal13ZoneChunkListINS0_27MaglevSafepointTableBuilder12EntryBuilderEE8NewChunkEj.exit5, !prof !5

bb.g:                                             ; preds = %bb.f
  tail call preserve_mostcc void @_ZN2v88internal4Zone6ExpandEm(ptr noundef nonnull align 8 dereferenceable(64) %i.w, i64 noundef %i.x) #10
  %.pre.i.i4 = load i64, ptr %i.aa, align 8
  br label %_ZN2v88internal13ZoneChunkListINS0_27MaglevSafepointTableBuilder12EntryBuilderEE8NewChunkEj.exit5

_ZN2v88internal13ZoneChunkListINS0_27MaglevSafepointTableBuilder12EntryBuilderEE8NewChunkEj.exit5: ; preds = %bb.f, %bb.g
  %i.ae = phi i64 [ %.pre.i.i4, %bb.g ], [ %i.ab, %bb.f ] ; 2 uses
  %i.af = inttoptr i64 %i.ae to ptr               ; 4 uses
  %i.ag = add i64 %i.ae, %i.x
  store i64 %i.ag, ptr %i.aa, align 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.af, i8 0, i64 24, i1 false)
  store i32 %.sroa.speculated.i, ptr %i.af, align 8
  %i.ah = load ptr, ptr %i.a, align 8
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 8
  store ptr %i.af, ptr %i.ai, align 8
  %i.aj = load ptr, ptr %i.a, align 8             ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %i.af, i64 16
  store ptr %i.aj, ptr %i.ak, align 8
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %i.aj, i64 8
  %.pre = load ptr, ptr %.phi.trans.insert, align 8
  br label %.sink.split

.sink.split:                                      ; preds = %bb.e, %_ZN2v88internal13ZoneChunkListINS0_27MaglevSafepointTableBuilder12EntryBuilderEE8NewChunkEj.exit5, %_ZN2v88internal13ZoneChunkListINS0_27MaglevSafepointTableBuilder12EntryBuilderEE8NewChunkEj.exit
  %.sink = phi ptr [ %i.l, %_ZN2v88internal13ZoneChunkListINS0_27MaglevSafepointTableBuilder12EntryBuilderEE8NewChunkEj.exit ], [ %.pre, %_ZN2v88internal13ZoneChunkListINS0_27MaglevSafepointTableBuilder12EntryBuilderEE8NewChunkEj.exit5 ], [ %i.t, %bb.e ] ; 2 uses
  store ptr %.sink, ptr %i.a, align 8
  br label %bb.h

bb.h:                                             ; preds = %.sink.split, %bb.d
  %i.al = phi ptr [ %i.b, %bb.d ], [ %.sink, %.sink.split ] ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 24
  %i.an = getelementptr inbounds nuw i8, ptr %i.al, i64 4
  %i.ao = load i32, ptr %i.an, align 4
  %i.ap = zext i32 %i.ao to i64
  %i.aq = getelementptr inbounds nuw [20 x i8], ptr %i.am, i64 %i.ap
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) %i.aq, ptr noundef nonnull align 4 dereferenceable(20) %1, i64 20, i1 false)
  %i.ar = load ptr, ptr %i.a, align 8
  %i.as = getelementptr inbounds nuw i8, ptr %i.ar, i64 4 ; 2 uses
  %i.at = load i32, ptr %i.as, align 4
  %i.au = add i32 %i.at, 1
  store i32 %i.au, ptr %i.as, align 4
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.aw = load i64, ptr %i.av, align 8
  %i.ax = add i64 %i.aw, 1
end_hunk_0

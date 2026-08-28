Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/duckdb/original/lz4?download=true
inline.NumInlined: 117
inline.NumDeleted: 34
loop-unroll.NumRuntimeUnrolled: 8
loop-unroll.NumUnrolled: 8
begin_hunk_0_@_ZN10duckdb_lz414LZ4_uncompressEPKcPci:bb.a
bb.f:                                             ; preds = %_ZN10duckdb_lz425read_long_length_no_checkEPPKh.exit109.i.i, %bb.e
  %.3118.i.i = phi ptr [ %i.ai, %_ZN10duckdb_lz425read_long_length_no_checkEPPKh.exit109.i.i ], [ %i.ad, %bb.e ]
  %.080.i.i = phi i64 [ %i.al, %_ZN10duckdb_lz425read_long_length_no_checkEPPKh.exit109.i.i ], [ %i.ab, %bb.e ] ; 5 uses
  %i.am = add i64 %.080.i.i, 4                    ; 9 uses
  %i.an = icmp ult i64 %i.x, %i.am
  %i.ao = sub i64 %i.w, %i.d
  %.not.i.i = icmp ult i64 %i.ao, %i.ac
  %or.cond.i = select i1 %i.an, i1 true, i1 %.not.i.i
  br i1 %or.cond.i, label %_ZN10duckdb_lz419LZ4_decompress_fastEPKcPci.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ap = sub nsw i64 0, %i.ac
  %i.aq = getelementptr inbounds i8, ptr %i.u, i64 %i.ap ; 7 uses
  %.not151.i.i = icmp eq i64 %i.am, 0
  br i1 %.not151.i.i, label %._crit_edge.i.i, label %iter.check

iter.check:                                       ; preds = %bb.g
  %min.iters.check = icmp ugt i64 %.080.i.i, -5
  %i.ar = add i16 %.val.i.i, -1
  %diff.check = icmp ult i16 %i.ar, 31
  %or.cond = select i1 %min.iters.check, i1 true, i1 %diff.check
  br i1 %or.cond, label %.lr.ph.i.i.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check24 = icmp ult i64 %i.am, 32
  br i1 %min.iters.check24, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.as = and i64 %i.am, 28
  %n.vec = and i64 %i.am, -32                     ; 4 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.at = getelementptr inbounds nuw i8, ptr %i.aq, i64 %index ; 2 uses
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 16
  %wide.load = load <16 x i8>, ptr %i.at, align 1, !tbaa !7
  %wide.load25 = load <16 x i8>, ptr %i.au, align 1, !tbaa !7
  %i.av = getelementptr inbounds nuw i8, ptr %i.u, i64 %index ; 2 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %i.av, i64 16
  store <16 x i8> %wide.load, ptr %i.av, align 1, !tbaa !7
  store <16 x i8> %wide.load25, ptr %i.aw, align 1, !tbaa !7
  %index.next = add nuw i64 %index, 32            ; 2 uses
  %i.ax = icmp eq i64 %index.next, %n.vec
  br i1 %i.ax, label %middle.block, label %vector.body, !llvm.loop !99

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.am, %n.vec
  br i1 %cmp.n, label %._crit_edge.i.i, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.as, 0
  br i1 %min.epilog.iters.check, label %.lr.ph.i.i.preheader, label %vec.epilog.ph, !prof !45

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec26 = and i64 %i.am, -4                    ; 3 uses
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index27 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next29, %vec.epilog.vector.body ] ; 3 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %i.aq, i64 %index27
  %wide.load28 = load <4 x i8>, ptr %i.ay, align 1, !tbaa !7
  %i.az = getelementptr inbounds nuw i8, ptr %i.u, i64 %index27
  store <4 x i8> %wide.load28, ptr %i.az, align 1, !tbaa !7
  %index.next29 = add nuw i64 %index27, 4         ; 2 uses
  %i.ba = icmp eq i64 %index.next29, %n.vec26
  br i1 %i.ba, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !100

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n30 = icmp eq i64 %i.am, %n.vec26
  br i1 %cmp.n30, label %._crit_edge.i.i, label %.lr.ph.i.i.preheader

.lr.ph.i.i.preheader:                             ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.0150.i.i.ph = phi i64 [ 0, %iter.check ], [ %n.vec, %vec.epilog.iter.check ], [ %n.vec26, %vec.epilog.middle.block ] ; 3 uses
  %i.bb = add i64 %.080.i.i, 3
  %i.bc = sub i64 %i.bb, %.0150.i.i.ph
  %xtraiter = and i64 %.080.i.i, 3                ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.i.prol.loopexit, label %.lr.ph.i.i.prol

.lr.ph.i.i.prol:                                  ; preds = %.lr.ph.i.i.preheader, %.lr.ph.i.i.prol
  %.0150.i.i.prol = phi i64 [ %i.bg, %.lr.ph.i.i.prol ], [ %.0150.i.i.ph, %.lr.ph.i.i.preheader ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.i.prol ], [ 0, %.lr.ph.i.i.preheader ]
  %i.bd = getelementptr inbounds nuw i8, ptr %i.aq, i64 %.0150.i.i.prol
  %i.be = load i8, ptr %i.bd, align 1, !tbaa !7
  %i.bf = getelementptr inbounds nuw i8, ptr %i.u, i64 %.0150.i.i.prol
  store i8 %i.be, ptr %i.bf, align 1, !tbaa !7
  %i.bg = add nuw i64 %.0150.i.i.prol, 1          ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.i.prol.loopexit, label %.lr.ph.i.i.prol, !llvm.loop !101

.lr.ph.i.i.prol.loopexit:                         ; preds = %.lr.ph.i.i.prol, %.lr.ph.i.i.preheader
  %.0150.i.i.unr = phi i64 [ %.0150.i.i.ph, %.lr.ph.i.i.preheader ], [ %i.bg, %.lr.ph.i.i.prol ]
  %i.bh = icmp ult i64 %i.bc, 3
  br i1 %i.bh, label %._crit_edge.i.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i.prol.loopexit, %.lr.ph.i.i
  %.0150.i.i = phi i64 [ %i.bx, %.lr.ph.i.i ], [ %.0150.i.i.unr, %.lr.ph.i.i.prol.loopexit ] ; 7 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %i.aq, i64 %.0150.i.i
  %i.bj = load i8, ptr %i.bi, align 1, !tbaa !7
  %i.bk = getelementptr inbounds nuw i8, ptr %i.u, i64 %.0150.i.i
  store i8 %i.bj, ptr %i.bk, align 1, !tbaa !7
  %i.bl = add nuw i64 %.0150.i.i, 1               ; 2 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %i.aq, i64 %i.bl
  %i.bn = load i8, ptr %i.bm, align 1, !tbaa !7
  %i.bo = getelementptr inbounds nuw i8, ptr %i.u, i64 %i.bl
  store i8 %i.bn, ptr %i.bo, align 1, !tbaa !7
  %i.bp = add nuw i64 %.0150.i.i, 2               ; 2 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %i.aq, i64 %i.bp
  %i.br = load i8, ptr %i.bq, align 1, !tbaa !7
  %i.bs = getelementptr inbounds nuw i8, ptr %i.u, i64 %i.bp
  store i8 %i.br, ptr %i.bs, align 1, !tbaa !7
  %i.bt = add nuw i64 %.0150.i.i, 3               ; 2 uses
  %i.bu = getelementptr inbounds nuw i8, ptr %i.aq, i64 %i.bt
  %i.bv = load i8, ptr %i.bu, align 1, !tbaa !7
  %i.bw = getelementptr inbounds nuw i8, ptr %i.u, i64 %i.bt
  store i8 %i.bv, ptr %i.bw, align 1, !tbaa !7
  %i.bx = add nuw i64 %.0150.i.i, 4
  %exitcond.not.i.i.3 = icmp eq i64 %.0150.i.i, %.080.i.i
  br i1 %exitcond.not.i.i.3, label %._crit_edge.i.i, label %.lr.ph.i.i, !llvm.loop !102

._crit_edge.i.i:                                  ; preds = %.lr.ph.i.i.prol.loopexit, %.lr.ph.i.i, %middle.block, %vec.epilog.middle.block, %bb.g
  %i.by = getelementptr inbounds nuw i8, ptr %i.u, i64 %i.am ; 2 uses
  %i.bz = ptrtoint ptr %i.by to i64
  %i.ca = sub i64 %i.c, %i.bz
  %i.cb = icmp ult i64 %i.ca, 5
  br i1 %i.cb, label %_ZN10duckdb_lz419LZ4_decompress_fastEPKcPci.exit, label %.thread.i.i

bb.h:                                             ; preds = %bb.d
  %i.cc = ptrtoint ptr %i.v to i64
  %i.cd = ptrtoint ptr %0 to i64
  %i.ce = sub i64 %i.cc, %i.cd
  %i.cf = trunc i64 %i.ce to i32
  br label %_ZN10duckdb_lz419LZ4_decompress_fastEPKcPci.exit

_ZN10duckdb_lz419LZ4_decompress_fastEPKcPci.exit: ; preds = %bb.b, %bb.f, %._crit_edge.i.i, %bb.d, %bb.h
  %.595.i.i = phi i32 [ -1, %bb.d ], [ %i.cf, %bb.h ], [ -1, %._crit_edge.i.i ], [ -1, %bb.f ], [ -1, %bb.b ]
  ret i32 %.595.i.i
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define noundef i32 @_ZN10duckdb_lz432LZ4_uncompress_unknownOutputSizeEPKcPcii(ptr noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %3) local_unnamed_addr #1 {
bb.a:
  %i.a = tail call fastcc noundef i32 @_ZN10duckdb_lz4L22LZ4_decompress_genericEPKcPciiNS_18earlyEnd_directiveENS_14dict_directiveEPKhS6_m(ptr noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef 0, i32 noundef 0, ptr noundef %1, ptr noundef null, i64 noundef 0)
  ret i32 %i.a
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define noundef i32 @_ZN10duckdb_lz421LZ4_sizeofStreamStateEv() local_unnamed_addr #0 {
bb.a:
  ret i32 16416
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define noundef i32 @_ZN10duckdb_lz420LZ4_resetStreamStateEPvPc(ptr nofree noundef writeonly captures(none) initializes((0, 16416)) %0, ptr nofree noundef readnone captures(none) %1) local_unnamed_addr #3 {
bb.a:
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16416) %0, i8 0, i64 16416, i1 false)
  ret i32 0
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(write, argmem: none, inaccessiblemem: readwrite, target_mem: none) uwtable
define noundef ptr @_ZN10duckdb_lz410LZ4_createEPc(ptr nofree noundef readnone captures(none) %0) local_unnamed_addr #4 {
bb.a:
  %i.a = tail call noalias dereferenceable_or_null(16416) ptr @malloc(i64 noundef 16416) #18 ; 4 uses
  %i.b = icmp ne ptr %i.a, null
  %i.c = ptrtoint ptr %i.a to i64
  %i.d = and i64 %i.c, 7
  %.not.i.i = icmp eq i64 %i.d, 0
  %or.cond.i = and i1 %i.b, %.not.i.i
  br i1 %or.cond.i, label %bb.b, label %_ZN10duckdb_lz416LZ4_createStreamEv.exit

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(16416) %i.a, i8 0, i64 16416, i1 false)
  br label %_ZN10duckdb_lz416LZ4_createStreamEv.exit

_ZN10duckdb_lz416LZ4_createStreamEv.exit:         ; preds = %bb.a, %bb.b
  ret ptr %i.a
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define noundef ptr @_ZN10duckdb_lz420LZ4_slideInputBufferEPv(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #15 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16384
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !7
  ret ptr %i.b
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define internal fastcc void @_ZN10duckdb_lz4L23LZ4_memcpy_using_offsetEPhPKhS0_m(ptr nofree noundef writeonly captures(address) initializes((0, 8)) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef readnone captures(address) %2, i64 noundef range(i64 0, 16) %3) unnamed_addr #10 {
bb.a:
  %i.a = ptrtoaddr ptr %0 to i64                  ; 3 uses
  switch i64 %3, label %bb.e [
    i64 1, label %bb.b
    i64 2, label %bb.c
    i64 4, label %bb.d
  ]

bb.b:                                             ; preds = %bb.a
  %i.b = load i8, ptr %1, align 1, !tbaa !7
  %i.c = zext i8 %i.b to i32
  %.sroa.0.0.isplat = mul nuw i32 %i.c, 16843009
  br label %bb.i

bb.c:                                             ; preds = %bb.a
  %.sroa.0.0.copyload9 = load i16, ptr %1, align 1
  %.sroa.0.0.insert.ext = zext i16 %.sroa.0.0.copyload9 to i32 ; 2 uses
  %.sroa.0.2.insert.shift = shl nuw i32 %.sroa.0.0.insert.ext, 16
  %.sroa.0.2.insert.insert = or disjoint i32 %.sroa.0.2.insert.shift, %.sroa.0.0.insert.ext
  br label %bb.i

bb.d:                                             ; preds = %bb.a
  %.sroa.0.0.copyload2 = load i32, ptr %1, align 1
  br label %bb.i

bb.e:                                             ; preds = %bb.a
  %i.d = icmp samesign ult i64 %3, 8
  br i1 %i.d, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  store i32 0, ptr %0, align 1, !tbaa !7
  %i.e = load i8, ptr %1, align 1, !tbaa !7
  store i8 %i.e, ptr %0, align 1, !tbaa !7
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 1
  %i.g = load i8, ptr %i.f, align 1, !tbaa !7
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 1
  store i8 %i.g, ptr %i.h, align 1, !tbaa !7
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 2
  %i.j = load i8, ptr %i.i, align 1, !tbaa !7
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 2
  store i8 %i.j, ptr %i.k, align 1, !tbaa !7
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 3
  %i.m = load i8, ptr %i.l, align 1, !tbaa !7
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 3
  store i8 %i.m, ptr %i.n, align 1, !tbaa !7
  %i.o = getelementptr inbounds nuw [4 x i8], ptr @_ZN10duckdb_lz4L10inc32tableE, i64 %3
  %i.p = load i32, ptr %i.o, align 4, !tbaa !3
  %i.q = zext i32 %i.p to i64
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 %i.q ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.t = load i32, ptr %i.r, align 1
  store i32 %i.t, ptr %i.s, align 1
  %i.u = getelementptr inbounds nuw [4 x i8], ptr @_ZN10duckdb_lz4L10dec64tableE, i64 %3
  %i.v = load i32, ptr %i.u, align 4, !tbaa !3
  %i.w = sext i32 %i.v to i64
  %i.x = sub nsw i64 0, %i.w
  %i.y = getelementptr inbounds i8, ptr %i.r, i64 %i.x
  br label %bb.h

bb.g:                                             ; preds = %bb.e
  %i.z = load i64, ptr %1, align 1
  store i64 %i.z, ptr %0, align 1
  %i.aa = getelementptr inbounds nuw i8, ptr %1, i64 8
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %.023.i = phi ptr [ %i.y, %bb.f ], [ %i.aa, %bb.g ] ; 5 uses
  %.0.i = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.ab = ptrtoaddr ptr %2 to i64
  %i.ac = add i64 %i.a, 16
  %i.ad = tail call i64 @llvm.umax.i64(i64 %i.ab, i64 %i.ac)
  %i.ae = add i64 %i.ad, -9
  %i.af = sub i64 %i.ae, %i.a                     ; 2 uses
  %i.ag = lshr i64 %i.af, 3
  %i.ah = add nuw nsw i64 %i.ag, 1                ; 2 uses
  %min.iters.check38 = icmp ult i64 %i.af, 104
  br i1 %min.iters.check38, label %scalar.ph37.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %bb.h
  %.023.i36 = ptrtoaddr ptr %.023.i to i64
  %i.ai = sub i64 %i.a, %.023.i36
  %i.aj = add i64 %i.ai, 7
  %diff.check = icmp ult i64 %i.aj, 31
  br i1 %diff.check, label %scalar.ph37.preheader, label %vector.ph39

vector.ph39:                                      ; preds = %vector.memcheck
  %n.vec40 = and i64 %i.ah, 4611686018427387900   ; 3 uses
  %i.ak = shl i64 %n.vec40, 3                     ; 2 uses
  %i.al = getelementptr i8, ptr %.0.i, i64 %i.ak
  %i.am = getelementptr i8, ptr %.023.i, i64 %i.ak
  br label %vector.body41

vector.body41:                                    ; preds = %vector.body41, %vector.ph39
  %index42 = phi i64 [ 0, %vector.ph39 ], [ %index.next46, %vector.body41 ] ; 2 uses
  %i.an = shl i64 %index42, 3                     ; 2 uses
  %next.gep43 = getelementptr i8, ptr %.0.i, i64 %i.an ; 2 uses
  %next.gep44 = getelementptr i8, ptr %.023.i, i64 %i.an ; 2 uses
  %i.ao = getelementptr i8, ptr %next.gep44, i64 16
  %wide.load = load <2 x i64>, ptr %next.gep44, align 1
  %wide.load45 = load <2 x i64>, ptr %i.ao, align 1
  %i.ap = getelementptr i8, ptr %next.gep43, i64 16
  store <2 x i64> %wide.load, ptr %next.gep43, align 1
  store <2 x i64> %wide.load45, ptr %i.ap, align 1
  %index.next46 = add nuw i64 %index42, 4         ; 2 uses
  %i.aq = icmp eq i64 %index.next46, %n.vec40
  br i1 %i.aq, label %middle.block47, label %vector.body41, !llvm.loop !103

middle.block47:                                   ; preds = %vector.body41
  %cmp.n48 = icmp eq i64 %i.ah, %n.vec40
  br i1 %cmp.n48, label %_ZN10duckdb_lz4L28LZ4_memcpy_using_offset_baseEPhPKhS0_m.exit, label %scalar.ph37.preheader

scalar.ph37.preheader:                            ; preds = %vector.memcheck, %bb.h, %middle.block47
  %.09.i.i.ph = phi ptr [ %.0.i, %vector.memcheck ], [ %.0.i, %bb.h ], [ %i.al, %middle.block47 ]
  %.0.i.i.ph = phi ptr [ %.023.i, %vector.memcheck ], [ %.023.i, %bb.h ], [ %i.am, %middle.block47 ]
  br label %scalar.ph37

scalar.ph37:                                      ; preds = %scalar.ph37.preheader, %scalar.ph37
  %.09.i.i = phi ptr [ %i.as, %scalar.ph37 ], [ %.09.i.i.ph, %scalar.ph37.preheader ] ; 2 uses
  %.0.i.i = phi ptr [ %i.at, %scalar.ph37 ], [ %.0.i.i.ph, %scalar.ph37.preheader ] ; 2 uses
  %i.ar = load i64, ptr %.0.i.i, align 1
  store i64 %i.ar, ptr %.09.i.i, align 1
  %i.as = getelementptr inbounds nuw i8, ptr %.09.i.i, i64 8 ; 2 uses
  %i.at = getelementptr inbounds nuw i8, ptr %.0.i.i, i64 8
  %i.au = icmp ult ptr %i.as, %2
  br i1 %i.au, label %scalar.ph37, label %_ZN10duckdb_lz4L28LZ4_memcpy_using_offset_baseEPhPKhS0_m.exit, !llvm.loop !104

bb.i:                                             ; preds = %bb.d, %bb.c, %bb.b
  %.sroa.9.0 = phi i32 [ %.sroa.0.0.isplat, %bb.b ], [ %.sroa.0.2.insert.insert, %bb.c ], [ %.sroa.0.0.copyload2, %bb.d ] ; 5 uses
  store i32 %.sroa.9.0, ptr %0, align 1
  %.sroa.9.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i32 %.sroa.9.0, ptr %.sroa.9.0..sroa_idx, align 1
  %.025 = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 5 uses
  %i.av = icmp ult ptr %.025, %2
  br i1 %i.av, label %.lr.ph.preheader, label %_ZN10duckdb_lz4L28LZ4_memcpy_using_offset_baseEPhPKhS0_m.exit

.lr.ph.preheader:                                 ; preds = %bb.i
  %i.aw = ptrtoaddr ptr %2 to i64
  %i.ax = ptrtoaddr ptr %0 to i64                 ; 2 uses
  %i.ay = add i64 %i.ax, 16
  %i.az = tail call i64 @llvm.umax.i64(i64 %i.aw, i64 %i.ay)
  %i.ba = add i64 %i.az, -9
  %i.bb = sub i64 %i.ba, %i.ax                    ; 2 uses
  %i.bc = lshr i64 %i.bb, 3
  %i.bd = add nuw nsw i64 %i.bc, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %i.bb, 24
  br i1 %min.iters.check, label %.lr.ph.preheader51, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.preheader
  %n.vec = and i64 %i.bd, 4611686018427387900     ; 3 uses
  %i.be = shl i64 %n.vec, 3                       ; 2 uses
  %i.bf = getelementptr i8, ptr %.025, i64 %i.be
  %i.bg = getelementptr i8, ptr %0, i64 %i.be
  %broadcast.splatinsert.a = insertelement <2 x i32> poison, i32 %.sroa.9.0, i64 0
  %4 = shufflevector <2 x i32> %broadcast.splatinsert.a, <2 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.bh = shl i64 %index, 3                       ; 2 uses
  %next.gep = getelementptr i8, ptr %.025, i64 %i.bh
  %i.bi = getelementptr i8, ptr %.025, i64 %i.bh
  %next.gep33 = getelementptr i8, ptr %i.bi, i64 16
  store <4 x i32> %4, ptr %next.gep, align 1
  store <4 x i32> %4, ptr %next.gep33, align 1
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.bj = icmp eq i64 %index.next, %n.vec
  br i1 %i.bj, label %middle.block, label %vector.body, !llvm.loop !105

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.bd, %n.vec
  br i1 %cmp.n, label %_ZN10duckdb_lz4L28LZ4_memcpy_using_offset_baseEPhPKhS0_m.exit, label %.lr.ph.preheader51

.lr.ph.preheader51:                               ; preds = %.lr.ph.preheader, %middle.block
  %.027.ph = phi ptr [ %.025, %.lr.ph.preheader ], [ %i.bf, %middle.block ]
  %.pn26.ph = phi ptr [ %0, %.lr.ph.preheader ], [ %i.bg, %middle.block ]
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader51, %.lr.ph
  %.027 = phi ptr [ %.0, %.lr.ph ], [ %.027.ph, %.lr.ph.preheader51 ] ; 3 uses
  %.pn26 = phi ptr [ %.027, %.lr.ph ], [ %.pn26.ph, %.lr.ph.preheader51 ]
  store i32 %.sroa.9.0, ptr %.027, align 1
  %.sroa.9.0..sroa_idx3 = getelementptr inbounds nuw i8, ptr %.pn26, i64 12
  store i32 %.sroa.9.0, ptr %.sroa.9.0..sroa_idx3, align 1
  %.0 = getelementptr inbounds nuw i8, ptr %.027, i64 8 ; 2 uses
  %i.bk = icmp ult ptr %.0, %2
  br i1 %i.bk, label %.lr.ph, label %_ZN10duckdb_lz4L28LZ4_memcpy_using_offset_baseEPhPKhS0_m.exit, !llvm.loop !106

_ZN10duckdb_lz4L28LZ4_memcpy_using_offset_baseEPhPKhS0_m.exit: ; preds = %.lr.ph, %scalar.ph37, %middle.block, %middle.block47, %bb.i
  ret void
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #16

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umin.i32(i32, i32) #16

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #16

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #16

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.usub.sat.i64(i64, i64) #16

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umax.i32(i32, i32) #16

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #16

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x i32> @llvm.usub.sat.v4i32(<4 x i32>, <4 x i32>) #16

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nofree nounwind willreturn memory(write, argmem: none, inaccessiblemem: readwrite, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite, errnomem: write) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #7 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress nounwind willreturn memory(argmem: readwrite, inaccessiblemem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { mustprogress nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { mustprogress nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { mustprogress nofree nounwind willreturn memory(inaccessiblemem: readwrite, errnomem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { mustprogress nofree nounwind willreturn allockind("alloc,zeroed") allocsize(0,1) memory(inaccessiblemem: readwrite, errnomem: write) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #15 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #16 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #17 = { nounwind }
attributes #18 = { nounwind allocsize(0) }
attributes #19 = { nounwind allocsize(0,1) }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}
!llvm.errno.tbaa = !{!3}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"uwtable", i32 2}
!2 = !{!"Ubuntu clang version 23.0.0 (++20260326081736+e69c7312f31b-1~exp1~20260326081905.1542)"}
!3 = !{!4, !4, i64 0}
!4 = !{!"int", !5, i64 0}
!5 = !{!"omnipotent char", !6, i64 0}
!6 = !{!"Simple C++ TBAA"}
!7 = !{!5, !5, i64 0}
!8 = !{!9, !4, i64 16400}
!9 = !{!"_ZTSN10duckdb_lz421LZ4_stream_t_internalE", !5, i64 0, !10, i64 16384, !12, i64 16392, !4, i64 16400, !4, i64 16404, !4, i64 16408}
!10 = !{!"p1 omnipotent char", !11, i64 0}
!11 = !{!"any pointer", !5, i64 0}
!12 = !{!"p1 _ZTSN10duckdb_lz421LZ4_stream_t_internalE", !11, i64 0}
!13 = !{!9, !12, i64 16392}
!14 = !{!9, !10, i64 16384}
!15 = !{!9, !4, i64 16408}
!16 = !{!9, !4, i64 16404}
!17 = !{!18, !18, i64 0}
!18 = !{!"short", !5, i64 0}
!19 = !{!"branch_weights", !"expected", i32 1, i32 2000}
!20 = distinct !{!20, !21}
!21 = !{!"llvm.loop.mustprogress"}
!22 = distinct !{!22, !21}
!23 = distinct !{!23, !21, !24, !25}
!24 = !{!"llvm.loop.isvectorized", i32 1}
!25 = !{!"llvm.loop.unroll.runtime.disable"}
!26 = distinct !{!26, !21, !24}
!27 = !{!"branch_weights", !"expected", i32 2000, i32 1}
!28 = !{!"branch_weights", i32 127, i32 1}
!29 = !{!"branch_weights", i32 255873, i32 127}
!30 = distinct !{!30, !21}
!31 = distinct !{!31, !21}
!32 = distinct !{!32, !21, !24, !25}
!33 = distinct !{!33, !21, !24, !25}
!34 = !{!10, !10, i64 0}
!35 = distinct !{!35, !21}
!36 = !{!"branch_weights", i32 4001, i32 1}
!37 = !{!"branch_weights", i32 127, i32 255873}
!38 = distinct !{!38, !21}
!39 = !{!"branch_weights", i32 4001, i32 4000000}
!40 = distinct !{!40, !21}
!41 = !{!"branch_weights", i32 1, i32 4001}
!42 = !{!"branch_weights", i32 6002, i32 8002000}
!43 = distinct !{!43, !21}
!44 = distinct !{!44, !21, !24, !25}
!45 = !{!"branch_weights", i32 4, i32 28}
!46 = distinct !{!46, !21, !24, !25}
!47 = distinct !{!47, !21, !24}
!48 = distinct !{!48, !21}
!49 = distinct !{!49, !21, !24, !25}
!50 = distinct !{!50, !21, !24}
!51 = distinct !{!51, !21, !24, !25}
!52 = distinct !{!52, !21, !24, !25}
!53 = distinct !{!53, !21, !24}
!54 = distinct !{!54, !21, !24, !25}
!55 = distinct !{!55, !21, !24, !25}
!56 = distinct !{!56, !21, !24}
!57 = distinct !{!57, !21, !24, !25}
!58 = distinct !{!58, !21, !24}
!59 = distinct !{!59, !21, !24, !25}
!60 = distinct !{!60, !21, !24, !25}
!61 = distinct !{!61, !21, !24}
!62 = distinct !{!62, !21, !24, !25}
!63 = distinct !{!63, !21, !24}
!64 = distinct !{!64, !21, !24, !25}
!65 = distinct !{!65, !21, !24, !25}
!66 = distinct !{!66, !67}
!67 = !{!"llvm.loop.unroll.disable"}
!68 = distinct !{!68, !21, !24}
!69 = distinct !{!69, !21, !24, !25}
!70 = distinct !{!70, !21, !24, !25}
!71 = distinct !{!71, !67}
!72 = distinct !{!72, !21, !24}
!73 = !{!74, !75, i64 24}
!74 = !{!"_ZTSN10duckdb_lz427LZ4_streamDecode_t_internalE", !10, i64 0, !10, i64 8, !75, i64 16, !75, i64 24}
!75 = !{!"long", !5, i64 0}
!76 = !{!74, !10, i64 8}
!77 = !{!74, !10, i64 0}
!78 = !{!74, !75, i64 16}
!79 = distinct !{!79, !21, !24, !25}
!80 = distinct !{!80, !21, !24, !25}
!81 = distinct !{!81, !67}
!82 = distinct !{!82, !21, !24}
!83 = distinct !{!83, !21, !24, !25}
!84 = distinct !{!84, !21, !24, !25}
!85 = distinct !{!85, !67}
!86 = distinct !{!86, !21, !24}
!87 = distinct !{!87, !21, !24, !25}
!88 = distinct !{!88, !21, !24, !25}
!89 = distinct !{!89, !67}
!90 = distinct !{!90, !21, !24}
!91 = distinct !{!91, !21, !24, !25}
!92 = distinct !{!92, !21, !24, !25}
!93 = distinct !{!93, !67}
!94 = distinct !{!94, !21, !24}
!95 = distinct !{!95, !21, !24, !25}
!96 = distinct !{!96, !21, !24, !25}
!97 = distinct !{!97, !67}
!98 = distinct !{!98, !21, !24}
!99 = distinct !{!99, !21, !24, !25}
!100 = distinct !{!100, !21, !24, !25}
!101 = distinct !{!101, !67}
!102 = distinct !{!102, !21, !24}
!103 = distinct !{!103, !21, !24, !25}
!104 = distinct !{!104, !21, !24}
!105 = distinct !{!105, !21, !24, !25}
!106 = distinct !{!106, !21, !25, !24}
end_hunk_0

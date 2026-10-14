Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/boost/original/to_chars?download=true
inline.NumInlined: 709
inline.NumDeleted: 199
loop-unroll.NumCompletelyUnrolled: 8
loop-unroll.NumRuntimeUnrolled: 9
loop-unroll.NumUnrolled: 17
loop-unroll.NumUnrolledNotLatch: 1
begin_hunk_0_@_ZN5boost8charconv6detail3ryuL16generic_to_charsENS2_20floating_decimal_128EPclNS0_12chars_formatEi:bb.a
  %i.h = icmp sgt i64 %2, 8
  br i1 %i.h, label %bb.i, label %_ZN5boost8charconv6detail3ryuL16copy_special_strEPclNS2_20floating_decimal_128E.exit

bb.i:                                             ; preds = %bb.h
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(9) %1, ptr noundef nonnull align 1 dereferenceable(9) @.str.3, i64 9, i1 false)
  br label %_ZN5boost8charconv6detail3ryuL16copy_special_strEPclNS2_20floating_decimal_128E.exit

bb.j:                                             ; preds = %.thread.i
  %i.i = icmp sgt i64 %2, 2
  br i1 %i.i, label %bb.k, label %_ZN5boost8charconv6detail3ryuL16copy_special_strEPclNS2_20floating_decimal_128E.exit

bb.k:                                             ; preds = %bb.j
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(3) %1, ptr noundef nonnull align 1 dereferenceable(3) @.str.5, i64 3, i1 false)
  br label %_ZN5boost8charconv6detail3ryuL16copy_special_strEPclNS2_20floating_decimal_128E.exit

bb.l:                                             ; preds = %.thread.i, %bb.c
  %.0234.i = phi ptr [ %1, %.thread.i ], [ %i.e, %bb.c ]
  %narrow.i = add nuw nsw i8 %.sroa.2144.0.copyload, 3 ; 2 uses
  %i.j = zext nneg i8 %narrow.i to i64
  %.not25.i = icmp slt i64 %2, %i.j
  br i1 %.not25.i, label %_ZN5boost8charconv6detail3ryuL16copy_special_strEPclNS2_20floating_decimal_128E.exit, label %bb.m

bb.m:                                             ; preds = %bb.l
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(3) %.0234.i, ptr noundef nonnull align 1 dereferenceable(3) @.str.6, i64 3, i1 false)
  %i.k = zext nneg i8 %narrow.i to i32
  br label %_ZN5boost8charconv6detail3ryuL16copy_special_strEPclNS2_20floating_decimal_128E.exit

bb.n:                                             ; preds = %bb.a
  %i.l = tail call noundef i32 @_ZN5boost8charconv6detail10num_digitsEo(i128 noundef %.sroa.0.0.copyload) #14 ; 8 uses
  %i.m = icmp eq i32 %3, 3
  br i1 %i.m, label %bb.o, label %.critedge.thread146

bb.o:                                             ; preds = %bb.n
  %i.n = sext i32 %i.b to i64
  %i.o = zext i32 %i.l to i64                     ; 2 uses
  %i.p = add nsw i64 %i.o, %i.n
  %i.q = tail call noundef i64 @llvm.abs.i64(i64 %i.p, i1 true)
  %.not = icmp samesign ugt i64 %i.q, %i.o
  br i1 %.not, label %.critedge.thread146, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.r = tail call fastcc noundef i32 @_ZN5boost8charconv6detail3ryuL22generic_to_chars_fixedENS2_20floating_decimal_128EPcli(ptr noundef nonnull byval(%"struct.boost::charconv::detail::ryu::floating_decimal_128") align 16 %0, ptr noundef %1, i64 noundef %2, i32 noundef %4) #14 ; 5 uses
  %i.s = icmp sgt i32 %i.r, 0
  br i1 %i.s, label %bb.q, label %_ZN5boost8charconv6detail3ryuL16copy_special_strEPclNS2_20floating_decimal_128E.exit

bb.q:                                             ; preds = %bb.p
  %i.t = zext nneg i32 %i.r to i64                ; 2 uses
  %i.u = getelementptr i8, ptr %1, i64 %i.t
  %i.v = getelementptr i8, ptr %i.u, i64 -1
  %i.w = load i8, ptr %i.v, align 1, !tbaa !20
  %i.x = icmp eq i8 %i.w, 48
  br i1 %i.x, label %.preheader151.preheader, label %_ZN5boost8charconv6detail3ryuL16copy_special_strEPclNS2_20floating_decimal_128E.exit

.preheader151.preheader:                          ; preds = %bb.q
  %.not212 = icmp eq i32 %i.r, 1
  br i1 %.not212, label %_ZN5boost8charconv6detail3ryuL16copy_special_strEPclNS2_20floating_decimal_128E.exit, label %.lr.ph211

.preheader151:                                    ; preds = %.lr.ph211
  %i.y = icmp sgt i64 %indvars.iv210, 2
  br i1 %i.y, label %.lr.ph211, label %_ZN5boost8charconv6detail3ryuL16copy_special_strEPclNS2_20floating_decimal_128E.exit, !llvm.loop !32

.lr.ph211:                                        ; preds = %.preheader151.preheader, %.preheader151
  %indvars.iv210 = phi i64 [ %indvars.iv.next, %.preheader151 ], [ %i.t, %.preheader151.preheader ] ; 3 uses
  %indvars.iv.next = add nsw i64 %indvars.iv210, -1 ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %1, i64 %indvars.iv.next
  %i.aa = load i8, ptr %i.z, align 1, !tbaa !20
  %i.ab = icmp eq i8 %i.aa, 48
  br i1 %i.ab, label %.preheader151, label %_ZN5boost8charconv6detail3ryuL16copy_special_strEPclNS2_20floating_decimal_128E.exit.loopexit.split.loop.exit204, !llvm.loop !32

.critedge.thread146:                              ; preds = %bb.o, %bb.n
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.ad = load i8, ptr %i.ac, align 4, !tbaa !17, !range !21, !noundef !22 ; 2 uses
  %i.ae = trunc nuw i8 %i.ad to i1
  br i1 %i.ae, label %bb.r, label %bb.s

bb.r:                                             ; preds = %.critedge.thread146
  store i8 45, ptr %1, align 1, !tbaa !20
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %.critedge.thread146
  %.0119 = phi i64 [ 1, %bb.r ], [ 0, %.critedge.thread146 ] ; 4 uses
  %i.af = zext i32 %i.l to i64
  %i.ag = add nuw nsw i64 %.0119, %i.af           ; 2 uses
  %i.ah = icmp ugt i64 %i.ag, %2
  br i1 %i.ah, label %_ZN5boost8charconv6detail3ryuL16copy_special_strEPclNS2_20floating_decimal_128E.exit, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.ai = icmp eq i32 %i.l, 0
  br i1 %i.ai, label %_ZN5boost8charconv6detail3ryuL16copy_special_strEPclNS2_20floating_decimal_128E.exit, label %.preheader150

.preheader150:                                    ; preds = %bb.t
  %i.aj = add i32 %i.l, -1                        ; 2 uses
  %.not160 = icmp eq i32 %i.aj, 0
  br i1 %.not160, label %._crit_edge.thread, label %.lr.ph.preheader

._crit_edge.thread:                               ; preds = %.preheader150
  %i.ak = urem i128 %.sroa.0.0.copyload, 10
  %i.al = trunc nuw nsw i128 %i.ak to i8
  %i.am = or disjoint i8 %i.al, 48
  %i.an = getelementptr inbounds nuw i8, ptr %1, i64 %.0119
  store i8 %i.am, ptr %i.an, align 1, !tbaa !20
  br label %bb.v

.lr.ph.preheader:                                 ; preds = %.preheader150
  %wide.trip.count = zext i32 %i.aj to i64
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %.lr.ph
  %indvars.iv164 = phi i64 [ 0, %.lr.ph.preheader ], [ %indvars.iv.next165, %.lr.ph ] ; 2 uses
  %.0117153 = phi i128 [ %.sroa.0.0.copyload, %.lr.ph.preheader ], [ %i.ao, %.lr.ph ]
  %.0117153.frozen = freeze i128 %.0117153        ; 2 uses
  %i.ao = udiv i128 %.0117153.frozen, 10          ; 3 uses
  %i.ap = mul i128 %i.ao, 10
  %.decomposed = sub i128 %.0117153.frozen, %i.ap
  %i.aq = trunc nuw nsw i128 %.decomposed to i8
  %i.ar = or disjoint i8 %i.aq, 48
  %i.as = sub nuw nsw i64 %i.ag, %indvars.iv164
  %i.at = getelementptr inbounds nuw i8, ptr %1, i64 %i.as
  store i8 %i.ar, ptr %i.at, align 1, !tbaa !20
  %indvars.iv.next165 = add nuw nsw i64 %indvars.iv164, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next165, %wide.trip.count
  br i1 %exitcond.not, label %bb.u, label %.lr.ph, !llvm.loop !33

bb.u:                                             ; preds = %.lr.ph
  %i.au = urem i128 %i.ao, 10
  %i.av = trunc nuw nsw i128 %i.au to i8
  %i.aw = or disjoint i8 %i.av, 48
  %i.ax = getelementptr inbounds nuw i8, ptr %1, i64 %.0119 ; 2 uses
  store i8 %i.aw, ptr %i.ax, align 1, !tbaa !20
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ax, i64 1
  store i8 46, ptr %i.ay, align 1, !tbaa !20
  %i.az = add i32 %i.l, 1
  %i.ba = zext i32 %i.az to i64
  br label %bb.v

bb.v:                                             ; preds = %._crit_edge.thread, %bb.u
  %.pn = phi i64 [ %i.ba, %bb.u ], [ 1, %._crit_edge.thread ]
  %.1120 = add nuw nsw i64 %.pn, %.0119           ; 4 uses
  %.not140 = icmp eq i32 %4, -1
  br i1 %.not140, label %.loopexit, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.bb = sext i32 %4 to i64                      ; 3 uses
  %i.bc = icmp ugt i64 %.1120, %i.bb
  br i1 %i.bc, label %bb.x, label %bb.aa

bb.x:                                             ; preds = %bb.w
  %.not141 = icmp eq i32 %3, 1                    ; 2 uses
  %i.bd = zext nneg i8 %i.ad to i64
  %.2121.v.v = select i1 %.not141, i64 2, i64 1
  %.2121.v = add nuw nsw i64 %.2121.v.v, %i.bb    ; 2 uses
  %.2121 = add nuw nsw i64 %.2121.v, %i.bd        ; 5 uses
  %i.be = getelementptr inbounds nuw i8, ptr %1, i64 %.2121 ; 2 uses
  %i.bf = load i8, ptr %i.be, align 1, !tbaa !20
  %i.bg = icmp sgt i8 %i.bf, 52
  %i.bh = add i32 %i.l, 1
  %i.bi = zext i32 %i.bh to i64
  %i.bj = icmp samesign ult i64 %.2121.v, %i.bi
  %or.cond = select i1 %i.bg, i1 %i.bj, i1 false
  br i1 %or.cond, label %.preheader148, label %.loopexit149

.preheader148:                                    ; preds = %bb.x, %.preheader148
  %.0115 = phi i64 [ %i.bk, %.preheader148 ], [ %.2121, %bb.x ]
  %i.bk = add nsw i64 %.0115, -1                  ; 3 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %1, i64 %i.bk ; 2 uses
  %i.bm = load i8, ptr %i.bl, align 1, !tbaa !20  ; 2 uses
  %i.bn = icmp eq i8 %i.bm, 57                    ; 2 uses
  %i.bo = add i8 %i.bm, 1
  %storemerge = select i1 %i.bn, i8 48, i8 %i.bo
  store i8 %storemerge, ptr %i.bl, align 1, !tbaa !20
  %i.bp = icmp ugt i64 %i.bk, 2
  %i.bq = and i1 %i.bn, %i.bp
  br i1 %i.bq, label %.preheader148, label %.loopexit149, !llvm.loop !34

.loopexit149:                                     ; preds = %.preheader148, %bb.x
  br i1 %.not141, label %bb.y, label %.preheader

.preheader:                                       ; preds = %.loopexit149, %.preheader
  %.3122 = phi i64 [ %i.bv, %.preheader ], [ %.2121, %.loopexit149 ] ; 3 uses
  %i.br = getelementptr i8, ptr %1, i64 %.3122
  %i.bs = getelementptr i8, ptr %i.br, i64 -1
  %i.bt = load i8, ptr %i.bs, align 1, !tbaa !20
  %i.bu = icmp eq i8 %i.bt, 48
  %i.bv = add i64 %.3122, -1
  br i1 %i.bu, label %.preheader, label %.loopexit, !llvm.loop !35

bb.y:                                             ; preds = %.loopexit149
  %.not142 = icmp slt i32 %4, %i.l
  br i1 %.not142, label %.loopexit, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.bw = getelementptr i8, ptr %i.be, i64 -1
  store i8 48, ptr %i.bw, align 1, !tbaa !20
  br label %.loopexit

bb.aa:                                            ; preds = %bb.w
  %i.bx = icmp ult i64 %.1120, %i.bb
  br i1 %i.bx, label %_ZN5boost8charconv6detail3ryuL16copy_special_strEPclNS2_20floating_decimal_128E.exit, label %.loopexit

.loopexit:                                        ; preds = %.preheader, %bb.y, %bb.z, %bb.aa, %bb.v
  %.4 = phi i64 [ %.1120, %bb.v ], [ %.2121, %bb.z ], [ %.2121, %bb.y ], [ %.1120, %bb.aa ], [ %.3122, %.preheader ] ; 4 uses
  %i.by = getelementptr inbounds nuw i8, ptr %1, i64 %.4
  store i8 101, ptr %i.by, align 1, !tbaa !20
  %i.bz = add nsw i32 %i.l, %i.b                  ; 3 uses
  %i.ca = icmp slt i32 %i.bz, 1
  %i.cb = getelementptr i8, ptr %1, i64 %.4
  %i.cc = getelementptr i8, ptr %i.cb, i64 1      ; 2 uses
  %.5185 = add i64 %.4, 2                         ; 2 uses
  br i1 %i.ca, label %.thread, label %bb.ab

.thread:                                          ; preds = %.loopexit
  %i.cd = sub nsw i32 1, %i.bz
  store i8 45, ptr %i.cc, align 1, !tbaa !20
  br label %.lr.ph.i.preheader

bb.ab:                                            ; preds = %.loopexit
  %i.ce = add nsw i32 %i.bz, -1                   ; 2 uses
  store i8 43, ptr %i.cc, align 1, !tbaa !20
  %.not5.i = icmp eq i32 %i.ce, 0
  br i1 %.not5.i, label %bb.af, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %.thread, %bb.ab
  %.0113187 = phi i32 [ %i.cd, %.thread ], [ %i.ce, %bb.ab ] ; 2 uses
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.preheader, %.lr.ph.i
  %.07.i = phi i32 [ %i.cg, %.lr.ph.i ], [ 0, %.lr.ph.i.preheader ] ; 2 uses
  %.046.i = phi i32 [ %i.cf, %.lr.ph.i ], [ %.0113187, %.lr.ph.i.preheader ] ; 2 uses
  %i.cf = udiv i32 %.046.i, 10
  %i.cg = add nuw nsw i32 %.07.i, 1               ; 3 uses
  %i.ch = icmp ult i32 %.046.i, 10
  br i1 %i.ch, label %.lr.ph157, label %.lr.ph.i, !llvm.loop !0

.lr.ph157:                                        ; preds = %.lr.ph.i
  %i.ci = icmp eq i32 %.07.i, 0
  %i.cj = zext nneg i32 %i.cg to i64              ; 2 uses
  %invariant.gep = getelementptr i8, ptr %1, i64 %i.cj
  br label %bb.ac

bb.ac:                                            ; preds = %.lr.ph157, %bb.ae
  %indvars.iv167 = phi i64 [ 0, %.lr.ph157 ], [ %indvars.iv.next168, %bb.ae ] ; 3 uses
  %.1114155 = phi i32 [ %.0113187, %.lr.ph157 ], [ %i.cn, %bb.ae ] ; 2 uses
  %.6154 = phi i64 [ %.5185, %.lr.ph157 ], [ %.7, %bb.ae ] ; 3 uses
  br i1 %i.ci, label %bb.ad, label %bb.ae

bb.ad:                                            ; preds = %bb.ac
  %5 = sub i64 %.6154, %indvars.iv167
  %i.ck = getelementptr inbounds nuw i8, ptr %1, i64 %5
  store i8 48, ptr %i.ck, align 1, !tbaa !20
  %i.cl = add i64 %.6154, 1
  br label %bb.ae

bb.ae:                                            ; preds = %bb.ad, %bb.ac
  %.7 = phi i64 [ %i.cl, %bb.ad ], [ %.6154, %bb.ac ] ; 3 uses
  %i.cm = urem i32 %.1114155, 10
  %i.cn = udiv i32 %.1114155, 10
  %i.co = trunc nuw nsw i32 %i.cm to i8
  %i.cp = or disjoint i8 %i.co, 48
  %i.cq = xor i64 %indvars.iv167, -1
  %gep.a = getelementptr i8, ptr %invariant.gep, i64 %.7
  %i.cr = getelementptr i8, ptr %gep.a, i64 %i.cq
  store i8 %i.cp, ptr %i.cr, align 1, !tbaa !20
  %indvars.iv.next168 = add nuw nsw i64 %indvars.iv167, 1 ; 2 uses
  %exitcond171.not = icmp eq i64 %indvars.iv.next168, %i.cj
  br i1 %exitcond171.not, label %._crit_edge158, label %bb.ac, !llvm.loop !36

bb.af:                                            ; preds = %bb.ab
  %i.cs = getelementptr inbounds nuw i8, ptr %1, i64 %.5185 ; 2 uses
  store i8 48, ptr %i.cs, align 1, !tbaa !20
  %i.ct = add i64 %.4, 4
  %i.cu = getelementptr i8, ptr %i.cs, i64 1
  store i8 48, ptr %i.cu, align 1, !tbaa !20
  br label %._crit_edge158

._crit_edge158:                                   ; preds = %bb.ae, %bb.af
  %.0.lcssa.i195200 = phi i32 [ 0, %bb.af ], [ %i.cg, %bb.ae ]
  %.8 = phi i64 [ %i.ct, %bb.af ], [ %.7, %bb.ae ]
  %i.cv = trunc i64 %.8 to i32
  %i.cw = add i32 %.0.lcssa.i195200, %i.cv
  br label %_ZN5boost8charconv6detail3ryuL16copy_special_strEPclNS2_20floating_decimal_128E.exit

_ZN5boost8charconv6detail3ryuL16copy_special_strEPclNS2_20floating_decimal_128E.exit.loopexit.split.loop.exit204: ; preds = %.lr.ph211
  %i.cx = trunc nuw nsw i64 %indvars.iv210 to i32
  br label %_ZN5boost8charconv6detail3ryuL16copy_special_strEPclNS2_20floating_decimal_128E.exit

_ZN5boost8charconv6detail3ryuL16copy_special_strEPclNS2_20floating_decimal_128E.exit: ; preds = %.preheader151, %.preheader151.preheader, %_ZN5boost8charconv6detail3ryuL16copy_special_strEPclNS2_20floating_decimal_128E.exit.loopexit.split.loop.exit204, %bb.q, %bb.p, %bb.m, %bb.l, %bb.k, %bb.j, %bb.i, %bb.h, %bb.g, %bb.f, %bb.e, %bb.d, %bb.aa, %bb.t, %bb.s, %._crit_edge158
  %.3 = phi i32 [ -1, %bb.aa ], [ %i.r, %bb.q ], [ -2, %bb.t ], [ -75, %bb.s ], [ %i.cw, %._crit_edge158 ], [ 10, %bb.e ], [ -1, %bb.j ], [ 9, %bb.g ], [ -1, %bb.d ], [ 9, %bb.i ], [ -1, %bb.f ], [ 3, %bb.k ], [ -1, %bb.h ], [ %i.k, %bb.m ], [ -1, %bb.l ], [ %i.r, %bb.p ], [ %i.cx, %_ZN5boost8charconv6detail3ryuL16copy_special_strEPclNS2_20floating_decimal_128E.exit.loopexit.split.loop.exit204 ], [ 1, %.preheader151.preheader ], [ 1, %.preheader151 ]
  ret i32 %.3
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden { ptr, i32 } @_ZN5boost8charconv6detail12to_chars_hexIeEENS0_15to_chars_resultEPcS4_T_i(ptr noundef %0, ptr noundef %1, x86_fp80 noundef %2, i32 noundef %3) local_unnamed_addr #0 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca [10 x i8], align 2                ; 8 uses
  %i.b = ptrtoint ptr %1 to i64                   ; 2 uses
  %i.c = ptrtoint ptr %0 to i64
  %i.d = sub i64 %i.b, %i.c                       ; 2 uses
  %.not = icmp eq i32 %3, -1                      ; 3 uses
  %spec.select = select i1 %.not, i32 18, i32 %3  ; 20 uses
  %i.e = sext i32 %spec.select to i64
  %i.f = icmp slt i64 %i.d, %i.e
  %i.g = icmp ugt ptr %0, %1
  %or.cond = or i1 %i.g, %i.f
  br i1 %or.cond, label %bb.v, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.h = bitcast x86_fp80 %2 to i80               ; 2 uses
  %.sroa.0.8.extract.shift.i = lshr i80 %i.h, 64
  %.sroa.0.8.extract.trunc.i = trunc nuw nsw i80 %.sroa.0.8.extract.shift.i to i64
  %.sroa.0.0.extract.trunc.i = trunc i80 %i.h to i64 ; 6 uses
  %i.i = and i64 %.sroa.0.8.extract.trunc.i, 32767 ; 2 uses
  %i.j = icmp ne i64 %i.i, 0
  %.not226 = icmp eq i64 %.sroa.0.0.extract.trunc.i, 0
  %or.cond227 = or i1 %.not226, %i.j
  %i.k = add nsw i64 %i.i, -16383
  %.0123 = select i1 %or.cond227, i64 %i.k, i64 -16382 ; 3 uses
  %i.l = add nsw i64 %.0123, 32767
  %smin = tail call i64 @llvm.smin.i64(i64 %.0123, i64 16383)
  %i.m = sub nsw i64 %i.l, %smin
  %i.n = and i64 %i.m, -32768
  %i.o = sub nsw i64 %.0123, %i.n                 ; 2 uses
  %i.p = icmp slt i64 %i.o, 3                     ; 2 uses
  %i.q = trunc nsw i64 %i.o to i32                ; 2 uses
  %i.r = sub nsw i32 3, %i.q
  %i.s = add nsw i32 %i.q, -3
  %i.t = select i1 %i.p, i32 %i.r, i32 %i.s       ; 10 uses
  %i.u = fcmp olt x86_fp80 %2, 0.000000e+00       ; 2 uses
  %i.v = icmp ugt i32 %i.t, 9999                  ; 2 uses
  br i1 %i.v, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.w = icmp ugt i32 %i.t, 9999999
  %spec.select225 = select i1 %i.w, i32 10, i32 5
  br label %_ZN5boost8charconv6detail19total_buffer_lengthIjEEiiT_b.exit

bb.d:                                             ; preds = %bb.b
  %i.x = icmp samesign ugt i32 %i.t, 99
  br i1 %i.x, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.y = icmp samesign ugt i32 %i.t, 999
  %.12.i.i = select i1 %i.y, i32 4, i32 3
  br label %_ZN5boost8charconv6detail19total_buffer_lengthIjEEiiT_b.exit

bb.f:                                             ; preds = %bb.d
  %i.z = icmp samesign ugt i32 %i.t, 9
  %.13.i.i = select i1 %i.z, i32 2, i32 1
  br label %_ZN5boost8charconv6detail19total_buffer_lengthIjEEiiT_b.exit

_ZN5boost8charconv6detail19total_buffer_lengthIjEEiiT_b.exit: ; preds = %bb.c, %bb.e, %bb.f
  %.0.i.i = phi i32 [ %spec.select225, %bb.c ], [ %.12.i.i, %bb.e ], [ %.13.i.i, %bb.f ]
  %i.aa = select i1 %i.u, i32 4, i32 3
  %i.ab = add i32 %i.aa, %spec.select
  %i.ac = add nsw i32 %i.ab, %.0.i.i
  %i.ad = sext i32 %i.ac to i64
  %i.ae = icmp slt i64 %i.d, %i.ad
  br i1 %i.ae, label %bb.v, label %bb.g

bb.g:                                             ; preds = %_ZN5boost8charconv6detail19total_buffer_lengthIjEEiiT_b.exit
  %i.af = icmp slt i32 %spec.select, 15
  br i1 %i.af, label %bb.h, label %bb.k

bb.h:                                             ; preds = %bb.g
  %i.ag = shl i32 %spec.select, 2                 ; 2 uses
  %i.ah = sub i32 60, %i.ag                       ; 2 uses
  %i.ai = shl i64 %.sroa.0.0.extract.trunc.i, 1   ; 2 uses
  %i.aj = add i64 %i.ai, -2
  %i.ak = or i64 %i.aj, %.sroa.0.0.extract.trunc.i
  %i.al = icmp sgt i32 %i.ah, 63
  br i1 %i.al, label %_ZN5boost8charconv6detaillsENS1_7uint128Ei.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.am = icmp eq i32 %i.ag, 60
  br i1 %i.am, label %_ZN5boost8charconv6detaillsENS1_7uint128Ei.exit, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.an = zext nneg i32 %i.ah to i64
  %i.ao = shl nuw i64 1, %i.an
  br label %_ZN5boost8charconv6detaillsENS1_7uint128Ei.exit

_ZN5boost8charconv6detaillsENS1_7uint128Ei.exit:  ; preds = %bb.h, %bb.i, %bb.j
  %.sroa.4.0.i = phi i64 [ 1, %bb.i ], [ %i.ao, %bb.j ], [ 0, %bb.h ]
  %i.ap = and i64 %i.ak, %.sroa.4.0.i
  %i.aq = and i64 %i.ap, %i.ai
  %i.ar = add i64 %i.aq, %.sroa.0.0.extract.trunc.i
  br label %bb.k

bb.k:                                             ; preds = %_ZN5boost8charconv6detaillsENS1_7uint128Ei.exit, %bb.g
  %.sroa.14.1 = phi i64 [ %i.ar, %_ZN5boost8charconv6detaillsENS1_7uint128Ei.exit ], [ %.sroa.0.0.extract.trunc.i, %bb.g ] ; 15 uses
  br i1 %i.u, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 1
  store i8 45, ptr %0, align 1, !tbaa !20
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k
  %.0 = phi ptr [ %i.as, %bb.l ], [ %0, %bb.k ]   ; 18 uses
  %i.at = lshr i64 %.sroa.0.0.extract.trunc.i, 60
  %i.au = getelementptr inbounds nuw i8, ptr @_ZN5boost8charconv6detailL11digit_tableE, i64 %i.at
  %i.av = load i8, ptr %i.au, align 1, !tbaa !20
  %i.aw = getelementptr inbounds nuw i8, ptr %.0, i64 1 ; 2 uses
  store i8 %i.av, ptr %.0, align 1, !tbaa !20
  %i.ax = icmp sgt i32 %spec.select, 0
  br i1 %i.ax, label %_ZN5boost8charconv6detailrsENS1_7uint128Ei.exit, label %.thread

_ZN5boost8charconv6detailrsENS1_7uint128Ei.exit:  ; preds = %bb.m
  %i.ay = getelementptr inbounds nuw i8, ptr %.0, i64 2
  store i8 46, ptr %i.aw, align 1, !tbaa !20
  %i.az = lshr i64 %.sroa.14.1, 56
  %i.ba = and i64 %i.az, 15
  %i.bb = getelementptr inbounds nuw i8, ptr @_ZN5boost8charconv6detailL11digit_tableE, i64 %i.ba
  %i.bc = load i8, ptr %i.bb, align 1, !tbaa !20
  %i.bd = getelementptr inbounds nuw i8, ptr %.0, i64 3 ; 2 uses
  store i8 %i.bc, ptr %i.ay, align 1, !tbaa !20
  %i.be = icmp eq i32 %spec.select, 1
  br i1 %i.be, label %.thread, label %_ZN5boost8charconv6detailrsENS1_7uint128Ei.exit.1

_ZN5boost8charconv6detailrsENS1_7uint128Ei.exit.1: ; preds = %_ZN5boost8charconv6detailrsENS1_7uint128Ei.exit
  %i.bf = lshr i64 %.sroa.14.1, 52
  %i.bg = and i64 %i.bf, 15
  %i.bh = getelementptr inbounds nuw i8, ptr @_ZN5boost8charconv6detailL11digit_tableE, i64 %i.bg
  %i.bi = load i8, ptr %i.bh, align 1, !tbaa !20
  %i.bj = getelementptr inbounds nuw i8, ptr %.0, i64 4 ; 2 uses
  store i8 %i.bi, ptr %i.bd, align 1, !tbaa !20
  %i.bk = icmp eq i32 %spec.select, 2
  br i1 %i.bk, label %.thread, label %_ZN5boost8charconv6detailrsENS1_7uint128Ei.exit.2

bb.n:                                             ; preds = %_ZN5boost8charconv6detailrsENS1_7uint128Ei.exit.14
  br i1 %.not, label %.preheader.preheader, label %.thread.thread

.thread.thread:                                   ; preds = %bb.n
  %i.bl = zext nneg i32 %i.el to i64              ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr nonnull align 1 %i.ek, i8 48, i64 %i.bl, i1 false)
  %i.bm = getelementptr inbounds nuw i8, ptr %i.ek, i64 %i.bl
  br label %.loopexit

_ZN5boost8charconv6detailrsENS1_7uint128Ei.exit.2: ; preds = %_ZN5boost8charconv6detailrsENS1_7uint128Ei.exit.1
  %i.bn = lshr i64 %.sroa.14.1, 48
  %i.bo = and i64 %i.bn, 15
  %i.bp = getelementptr inbounds nuw i8, ptr @_ZN5boost8charconv6detailL11digit_tableE, i64 %i.bo
  %i.bq = load i8, ptr %i.bp, align 1, !tbaa !20
  %i.br = getelementptr inbounds nuw i8, ptr %.0, i64 5 ; 2 uses
  store i8 %i.bq, ptr %i.bj, align 1, !tbaa !20
  %i.bs = icmp eq i32 %spec.select, 3
  br i1 %i.bs, label %.thread, label %_ZN5boost8charconv6detailrsENS1_7uint128Ei.exit.3

_ZN5boost8charconv6detailrsENS1_7uint128Ei.exit.3: ; preds = %_ZN5boost8charconv6detailrsENS1_7uint128Ei.exit.2
  %i.bt = lshr i64 %.sroa.14.1, 44
  %i.bu = and i64 %i.bt, 15
  %i.bv = getelementptr inbounds nuw i8, ptr @_ZN5boost8charconv6detailL11digit_tableE, i64 %i.bu
  %i.bw = load i8, ptr %i.bv, align 1, !tbaa !20
  %i.bx = getelementptr inbounds nuw i8, ptr %.0, i64 6 ; 2 uses
  store i8 %i.bw, ptr %i.br, align 1, !tbaa !20
  %i.by = icmp eq i32 %spec.select, 4
  br i1 %i.by, label %.thread, label %_ZN5boost8charconv6detailrsENS1_7uint128Ei.exit.4

_ZN5boost8charconv6detailrsENS1_7uint128Ei.exit.4: ; preds = %_ZN5boost8charconv6detailrsENS1_7uint128Ei.exit.3
  %i.bz = lshr i64 %.sroa.14.1, 40
  %i.ca = and i64 %i.bz, 15
  %i.cb = getelementptr inbounds nuw i8, ptr @_ZN5boost8charconv6detailL11digit_tableE, i64 %i.ca
  %i.cc = load i8, ptr %i.cb, align 1, !tbaa !20
  %i.cd = getelementptr inbounds nuw i8, ptr %.0, i64 7 ; 2 uses
  store i8 %i.cc, ptr %i.bx, align 1, !tbaa !20
  %i.ce = icmp eq i32 %spec.select, 5
  br i1 %i.ce, label %.thread, label %_ZN5boost8charconv6detailrsENS1_7uint128Ei.exit.5

_ZN5boost8charconv6detailrsENS1_7uint128Ei.exit.5: ; preds = %_ZN5boost8charconv6detailrsENS1_7uint128Ei.exit.4
  %i.cf = lshr i64 %.sroa.14.1, 36
  %i.cg = and i64 %i.cf, 15
  %i.ch = getelementptr inbounds nuw i8, ptr @_ZN5boost8charconv6detailL11digit_tableE, i64 %i.cg
  %i.ci = load i8, ptr %i.ch, align 1, !tbaa !20
  %i.cj = getelementptr inbounds nuw i8, ptr %.0, i64 8 ; 2 uses
end_hunk_0

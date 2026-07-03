inline.NumInlined: 30
inline.NumDeleted: 14
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0_@_ZN9NCompress8NPpmdZip8CDecoder4CodeEP19ISequentialInStreamP20ISequentialOutStreamPKyS7_P21ICompressProgressInfo:bb.a
  br i1 %or.cond9.us, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.as = trunc i32 %i.ao to i8
  %i.at = getelementptr inbounds nuw i8, ptr %i.an, i64 %.081.us
  store i8 %i.as, ptr %i.at, align 1, !tbaa !29
  %i.au = add i64 %.081.us, 1                     ; 2 uses
  %.not100.us = icmp eq i64 %i.au, %.180.us
  br i1 %.not100.us, label %bb.l, label %bb.j, !llvm.loop !43

bb.l:                                             ; preds = %bb.k, %bb.j
  %.lcssa = phi i1 [ false, %bb.k ], [ %i.ar, %bb.j ]
  %.182.us = phi i64 [ %.180.us, %bb.k ], [ %.081.us, %bb.j ] ; 2 uses
  %i.av = load i64, ptr %i.a, align 8, !tbaa !41
  %i.aw = add i64 %i.av, %.182.us
  store i64 %i.aw, ptr %i.a, align 8, !tbaa !41
  %i.ax = load ptr, ptr %i.c, align 8, !tbaa !42
  %i.ay = tail call noundef i32 @_Z11WriteStreamP20ISequentialOutStreamPKvm(ptr noundef %2, ptr noundef %i.ax, i64 noundef %.182.us) ; 2 uses
  %.not101.us = icmp eq i32 %i.ay, 0
  br i1 %.not101.us, label %bb.m, label %.thread117

bb.m:                                             ; preds = %bb.l
  %i.az = load i32, ptr %i.o, align 4, !tbaa !45  ; 2 uses
  %.not102.us = icmp eq i32 %i.az, 0
  br i1 %.not102.us, label %bb.n, label %.thread117

bb.n:                                             ; preds = %bb.m
  %i.ba = load i8, ptr %i.n, align 8, !tbaa !38, !range !39, !noundef !40
  %i.bb = trunc nuw i8 %i.ba to i1
  br i1 %i.bb, label %.thread117, label %select.unfold115.us

select.unfold115.us:                              ; preds = %bb.n
  br i1 %.lcssa, label %.split137.us, label %.split.us

.split:                                           ; preds = %bb.h
  br i1 %.not99, label %.critedge108.us139, label %.split.split

.critedge108.us139:                               ; preds = %.split, %select.unfold115.us149
  %i.bc = load ptr, ptr %i.c, align 8, !tbaa !42
  br label %bb.o

bb.o:                                             ; preds = %bb.p, %.critedge108.us139
  %.081.us141 = phi i64 [ 0, %.critedge108.us139 ], [ %i.bj, %bb.p ] ; 3 uses
  %i.bd = call i32 @Ppmd8_DecodeSymbol(ptr noundef nonnull %i.ab) ; 3 uses
  %i.be = load i8, ptr %i.n, align 8, !tbaa !38, !range !39, !noundef !40
  %i.bf = trunc nuw i8 %i.be to i1
  %i.bg = icmp slt i32 %i.bd, 0                   ; 2 uses
  %or.cond9.us142 = select i1 %i.bf, i1 true, i1 %i.bg
  br i1 %or.cond9.us142, label %bb.q, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.bh = trunc i32 %i.bd to i8
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bc, i64 %.081.us141
  store i8 %i.bh, ptr %i.bi, align 1, !tbaa !29
  %i.bj = add nuw nsw i64 %.081.us141, 1          ; 2 uses
  %.not100.us143 = icmp eq i64 %i.bj, 1048576
  br i1 %.not100.us143, label %bb.q, label %bb.o, !llvm.loop !43

bb.q:                                             ; preds = %bb.p, %bb.o
  %.lcssa163.a = phi i1 [ false, %bb.p ], [ %i.bg, %bb.o ]
  %.182.us146 = phi i64 [ 1048576, %bb.p ], [ %.081.us141, %bb.o ] ; 2 uses
  %i.bk = load i64, ptr %i.a, align 8, !tbaa !41
  %i.bl = add i64 %i.bk, %.182.us146
  store i64 %i.bl, ptr %i.a, align 8, !tbaa !41
  %i.bm = load ptr, ptr %i.c, align 8, !tbaa !42
  %i.bn = call noundef i32 @_Z11WriteStreamP20ISequentialOutStreamPKvm(ptr noundef %2, ptr noundef %i.bm, i64 noundef %.182.us146) ; 2 uses
  %.not101.us147 = icmp eq i32 %i.bn, 0
  br i1 %.not101.us147, label %bb.r, label %.thread117

bb.r:                                             ; preds = %bb.q
  %i.bo = load i32, ptr %i.o, align 4, !tbaa !45  ; 2 uses
  %.not102.us148 = icmp eq i32 %i.bo, 0
  br i1 %.not102.us148, label %bb.s, label %.thread117

bb.s:                                             ; preds = %bb.r
  %i.bp = load i8, ptr %i.n, align 8, !tbaa !38, !range !39, !noundef !40
  %i.bq = trunc nuw i8 %i.bp to i1
  br i1 %i.bq, label %.thread117, label %bb.t

bb.t:                                             ; preds = %bb.s
  br i1 %.lcssa163.a, label %.split137.us, label %select.unfold115.us149

select.unfold115.us149:                           ; preds = %bb.t
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #9
  %i.br = load i64, ptr %i.m, align 8, !tbaa !35
  %i.bs = load ptr, ptr %i.k, align 8, !tbaa !33
  %i.bt = load ptr, ptr %i.i, align 8, !tbaa !32
  %i.bu = ptrtoint ptr %i.bs to i64
  %i.bv = ptrtoint ptr %i.bt to i64
  %i.bw = add i64 %i.br, %i.bu
  %i.bx = sub i64 %i.bw, %i.bv
  store i64 %i.bx, ptr %i.b, align 8, !tbaa !41
  %i.by = load ptr, ptr %5, align 8, !tbaa !10
  %i.bz = getelementptr inbounds nuw i8, ptr %i.by, i64 40
  %i.ca = load ptr, ptr %i.bz, align 8
  %i.cb = call noundef i32 %i.ca(ptr noundef nonnull align 8 dereferenceable(8) %5, ptr noundef nonnull %i.b, ptr noundef nonnull %i.a) ; 2 uses
  %.not104.us = icmp eq i32 %i.cb, 0
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #9
  br i1 %.not104.us, label %.critedge108.us139, label %.thread117

.split.split:                                     ; preds = %.split, %select.unfold115
  %i.cc = load i64, ptr %i.a, align 8, !tbaa !41  ; 2 uses
  %i.cd = load i64, ptr %4, align 8, !tbaa !41    ; 2 uses
  %i.ce = icmp ult i64 %i.cc, %i.cd
  br i1 %i.ce, label %.critedge, label %.thread121

.critedge:                                        ; preds = %.split.split
  %i.cf = sub nuw i64 %i.cd, %i.cc
  %spec.select = call i64 @llvm.umin.i64(i64 %i.cf, i64 1048576) ; 2 uses
  %i.cg = load ptr, ptr %i.c, align 8, !tbaa !42
  br label %bb.u

bb.u:                                             ; preds = %bb.v, %.critedge
  %.081 = phi i64 [ 0, %.critedge ], [ %i.cn, %bb.v ] ; 3 uses
  %i.ch = call i32 @Ppmd8_DecodeSymbol(ptr noundef nonnull %i.ab) ; 3 uses
  %i.ci = load i8, ptr %i.n, align 8, !tbaa !38, !range !39, !noundef !40
  %i.cj = trunc nuw i8 %i.ci to i1
  %i.ck = icmp slt i32 %i.ch, 0                   ; 2 uses
  %or.cond9 = select i1 %i.cj, i1 true, i1 %i.ck
  br i1 %or.cond9, label %bb.w, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.cl = trunc i32 %i.ch to i8
  %i.cm = getelementptr inbounds nuw i8, ptr %i.cg, i64 %.081
  store i8 %i.cl, ptr %i.cm, align 1, !tbaa !29
  %i.cn = add i64 %.081, 1                        ; 2 uses
  %.not100 = icmp eq i64 %i.cn, %spec.select
  br i1 %.not100, label %bb.w, label %bb.u, !llvm.loop !43

bb.w:                                             ; preds = %bb.u, %bb.v
  %.lcssa166 = phi i1 [ %i.ck, %bb.u ], [ false, %bb.v ]
  %.182 = phi i64 [ %.081, %bb.u ], [ %spec.select, %bb.v ] ; 2 uses
  %i.co = load i64, ptr %i.a, align 8, !tbaa !41
  %i.cp = add i64 %i.co, %.182
  store i64 %i.cp, ptr %i.a, align 8, !tbaa !41
  %i.cq = load ptr, ptr %i.c, align 8, !tbaa !42
  %i.cr = call noundef i32 @_Z11WriteStreamP20ISequentialOutStreamPKvm(ptr noundef %2, ptr noundef %i.cq, i64 noundef %.182) ; 2 uses
  %.not101 = icmp eq i32 %i.cr, 0
  br i1 %.not101, label %bb.x, label %.thread117

bb.x:                                             ; preds = %bb.w
  %i.cs = load i32, ptr %i.o, align 4, !tbaa !45  ; 2 uses
  %.not102 = icmp eq i32 %i.cs, 0
  br i1 %.not102, label %bb.y, label %.thread117

bb.y:                                             ; preds = %bb.x
  %i.ct = load i8, ptr %i.n, align 8, !tbaa !38, !range !39, !noundef !40
  %i.cu = trunc nuw i8 %i.ct to i1
  br i1 %i.cu, label %.thread117, label %bb.z

bb.z:                                             ; preds = %bb.y
  br i1 %.lcssa166, label %.split137.us, label %select.unfold115

.split137.us:                                     ; preds = %bb.z, %bb.t, %select.unfold115.us
  %.us-phi138 = phi i32 [ %i.ao, %select.unfold115.us ], [ %i.bd, %bb.t ], [ %i.ch, %bb.z ]
  %.not105 = icmp eq i32 %.us-phi138, -1
  br i1 %.not105, label %.thread121, label %.thread117

select.unfold115:                                 ; preds = %bb.z
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #9
  %i.cv = load i64, ptr %i.m, align 8, !tbaa !35
  %i.cw = load ptr, ptr %i.k, align 8, !tbaa !33
  %i.cx = load ptr, ptr %i.i, align 8, !tbaa !32
  %i.cy = ptrtoint ptr %i.cw to i64
  %i.cz = ptrtoint ptr %i.cx to i64
  %i.da = add i64 %i.cv, %i.cy
  %i.db = sub i64 %i.da, %i.cz
  store i64 %i.db, ptr %i.b, align 8, !tbaa !41
  %i.dc = load ptr, ptr %5, align 8, !tbaa !10
  %i.dd = getelementptr inbounds nuw i8, ptr %i.dc, i64 40
  %i.de = load ptr, ptr %i.dd, align 8
  %i.df = call noundef i32 %i.de(ptr noundef nonnull align 8 dereferenceable(8) %5, ptr noundef nonnull %i.b, ptr noundef nonnull %i.a) ; 2 uses
  %.not104 = icmp eq i32 %i.df, 0
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #9
  br i1 %.not104, label %.split.split, label %.thread117

.thread121:                                       ; preds = %.split.split, %bb.i, %.split137.us
  %.278 = phi i1 [ true, %.split137.us ], [ false, %bb.i ], [ false, %.split.split ]
  %i.dg = load i32, ptr %i.o, align 4, !tbaa !45  ; 2 uses
  %.not106 = icmp eq i32 %i.dg, 0
  br i1 %.not106, label %bb.aa, label %.thread117

bb.aa:                                            ; preds = %.thread121
  %i.dh = getelementptr inbounds nuw i8, ptr %0, i64 7480
  %i.di = load i8, ptr %i.dh, align 8, !tbaa !16, !range !39, !noundef !40
  %i.dj = trunc nuw i8 %i.di to i1
  br i1 %i.dj, label %bb.ab, label %bb.af

bb.ab:                                            ; preds = %bb.aa
  br i1 %.278, label %bb.ae, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.dk = call i32 @Ppmd8_DecodeSymbol(ptr noundef nonnull %i.ab)
  %i.dl = load i32, ptr %i.o, align 4, !tbaa !45  ; 2 uses
  %.not107 = icmp eq i32 %i.dl, 0
  br i1 %.not107, label %bb.ad, label %.thread117

bb.ad:                                            ; preds = %bb.ac
  %i.dm = load i8, ptr %i.n, align 8, !tbaa !38, !range !39, !noundef !40
  %i.dn = trunc nuw i8 %i.dm to i1
  %6 = icmp eq i32 %i.dk, -1
  %not. = xor i1 %i.dn, true
  %or.cond11.not = select i1 %not., i1 %6, i1 false
  %7 = getelementptr inbounds nuw i8, ptr %0, i64 196
  %8 = load i32, ptr %7, align 4
  %9 = icmp eq i32 %8, 0
  %or.cond132 = select i1 %or.cond11.not, i1 %9, i1 false
  br i1 %or.cond132, label %bb.af, label %.thread117

bb.ae:                                            ; preds = %bb.ab
  %.old = getelementptr inbounds nuw i8, ptr %0, i64 196
  %.old130 = load i32, ptr %.old, align 4, !tbaa !46
  %.old131 = icmp eq i32 %.old130, 0
  br i1 %.old131, label %bb.af, label %.thread117

bb.af:                                            ; preds = %bb.ad, %bb.ae, %bb.aa
  br label %.thread117

.thread117:                                       ; preds = %select.unfold115, %bb.x, %bb.y, %bb.w, %bb.q, %bb.r, %bb.s, %select.unfold115.us149, %bb.n, %bb.m, %bb.l, %bb.ac, %.split137.us, %bb.ae, %bb.ad, %.thread121, %bb.af
  %.12 = phi i32 [ 1, %.split137.us ], [ 0, %bb.af ], [ %i.dg, %.thread121 ], [ 1, %bb.ad ], [ 1, %bb.ae ], [ %i.dl, %bb.ac ], [ %i.bn, %bb.q ], [ %i.ay, %bb.l ], [ 1, %bb.n ], [ %i.az, %bb.m ], [ 1, %bb.s ], [ %i.bo, %bb.r ], [ %i.cb, %select.unfold115.us149 ], [ %i.cs, %bb.x ], [ %i.df, %select.unfold115 ], [ %i.cr, %bb.w ], [ 1, %bb.y ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #9
  br label %.thread

.thread:                                          ; preds = %bb.g, %bb.f, %bb.d, %bb.e, %_ZN14CByteInBufWrap8ReadByteEv.exit.1, %_ZN9NCompress8NPpmdZip4CBuf5AllocEv.exit.thread, %_ZN9NCompress8NPpmdZip4CBuf5AllocEv.exit, %.thread117
  %.13 = phi i32 [ %.12, %.thread117 ], [ -2147024882, %_ZN9NCompress8NPpmdZip4CBuf5AllocEv.exit.thread ], [ -2147024882, %_ZN9NCompress8NPpmdZip4CBuf5AllocEv.exit ], [ 1, %bb.g ], [ -2147024882, %bb.f ], [ 1, %bb.d ], [ -2147467263, %bb.e ], [ 1, %_ZN14CByteInBufWrap8ReadByteEv.exit.1 ]
  ret i32 %.13
}

declare noundef zeroext i1 @_ZN14CByteInBufWrap5AllocEj(ptr noundef nonnull align 8 dereferenceable(64), i32 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #6

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #6

declare i32 @Ppmd8_Alloc(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

declare i32 @Ppmd8_RangeDec_Init(ptr noundef) local_unnamed_addr #1

declare void @Ppmd8_Init(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

declare i32 @Ppmd8_DecodeSymbol(ptr noundef) local_unnamed_addr #1

declare noundef i32 @_Z11WriteStreamP20ISequentialOutStreamPKvm(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN9NCompress8NPpmdZip8CEncoderD2Ev(ptr noundef nonnull align 8 dereferenceable(7492) initializes((0, 8)) %0) unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 48) (i8, ptr @_ZTVN9NCompress8NPpmdZip8CEncoderE, i64 16), ptr %0, align 8, !tbaa !10
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 88
  invoke void @Ppmd8_Free(ptr noundef nonnull %i.a, ptr noundef nonnull @_ZN9NCompress8NPpmdZipL10g_BigAllocE)
          to label %bb.b unwind label %bb.e

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !12
  invoke void @MidFree(ptr noundef %i.c)
          to label %_ZN9NCompress8NPpmdZip4CBufD2Ev.exit unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.d = landingpad { ptr, i32 }
          catch ptr null
  %i.e = extractvalue { ptr, i32 } %i.d, 0
  tail call void @__clang_call_terminate(ptr %i.e) #10
  unreachable

_ZN9NCompress8NPpmdZip4CBufD2Ev.exit:             ; preds = %bb.b
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 16
  invoke void @_ZN15CByteOutBufWrap4FreeEv(ptr noundef nonnull align 8 dereferenceable(60) %i.f)
          to label %_ZN15CByteOutBufWrapD2Ev.exit unwind label %bb.d

bb.d:                                             ; preds = %_ZN9NCompress8NPpmdZip4CBufD2Ev.exit
  %i.g = landingpad { ptr, i32 }
          catch ptr null
  %i.h = extractvalue { ptr, i32 } %i.g, 0
  tail call void @__clang_call_terminate(ptr %i.h) #10
  unreachable

_ZN15CByteOutBufWrapD2Ev.exit:                    ; preds = %_ZN9NCompress8NPpmdZip4CBufD2Ev.exit
  ret void

bb.e:                                             ; preds = %bb.a
  %i.i = landingpad { ptr, i32 }
          catch ptr null
  %i.j = extractvalue { ptr, i32 } %i.i, 0
  tail call void @__clang_call_terminate(ptr %i.j) #10
  unreachable
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN9NCompress8NPpmdZip8CEncoderD0Ev(ptr noundef nonnull align 8 dereferenceable(7492) initializes((0, 8)) %0) unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 48) (i8, ptr @_ZTVN9NCompress8NPpmdZip8CEncoderE, i64 16), ptr %0, align 8, !tbaa !10
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 88
  invoke void @Ppmd8_Free(ptr noundef nonnull %i.a, ptr noundef nonnull @_ZN9NCompress8NPpmdZipL10g_BigAllocE)
          to label %bb.b unwind label %bb.e, !inline_history !47

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !12
  invoke void @MidFree(ptr noundef %i.c)
          to label %_ZN9NCompress8NPpmdZip4CBufD2Ev.exit.i unwind label %bb.c, !inline_history !47

bb.c:                                             ; preds = %bb.b
  %i.d = landingpad { ptr, i32 }
          catch ptr null
  %i.e = extractvalue { ptr, i32 } %i.d, 0
  tail call void @__clang_call_terminate(ptr %i.e) #10, !inline_history !47
  unreachable

_ZN9NCompress8NPpmdZip4CBufD2Ev.exit.i:           ; preds = %bb.b
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 16
  invoke void @_ZN15CByteOutBufWrap4FreeEv(ptr noundef nonnull align 8 dereferenceable(60) %i.f)
          to label %_ZN9NCompress8NPpmdZip8CEncoderD2Ev.exit unwind label %bb.d, !inline_history !47

bb.d:                                             ; preds = %_ZN9NCompress8NPpmdZip4CBufD2Ev.exit.i
  %i.g = landingpad { ptr, i32 }
          catch ptr null
  %i.h = extractvalue { ptr, i32 } %i.g, 0
  tail call void @__clang_call_terminate(ptr %i.h) #10, !inline_history !47
  unreachable

bb.e:                                             ; preds = %bb.a
  %i.i = landingpad { ptr, i32 }
          catch ptr null
  %i.j = extractvalue { ptr, i32 } %i.i, 0
  tail call void @__clang_call_terminate(ptr %i.j) #10, !inline_history !47
  unreachable

_ZN9NCompress8NPpmdZip8CEncoderD2Ev.exit:         ; preds = %_ZN9NCompress8NPpmdZip4CBufD2Ev.exit.i
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 7496) #11
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define dso_local noundef range(i32 -2147024809, 1) i32 @_ZN9NCompress8NPpmdZip8CEncoder18SetCoderPropertiesEPKjPK14tagPROPVARIANTj(ptr nofree noundef nonnull writeonly align 8 captures(none) dereferenceable(7492) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef readonly captures(none) %2, i32 noundef %3) local_unnamed_addr #7 align 2 {
bb.a:
  %.not42 = icmp eq i32 %3, 0
  br i1 %.not42, label %.critedge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 7484
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 7480
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 7488
  %wide.trip.count = zext i32 %3 to i64
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %bb.j
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.j ] ; 3 uses
  %i.d = getelementptr inbounds nuw [16 x i8], ptr %2, i64 %indvars.iv ; 2 uses
  %i.e = load i16, ptr %i.d, align 8, !tbaa !48
  %.not = icmp eq i16 %i.e, 19
  br i1 %.not, label %bb.c, label %.critedge

bb.c:                                             ; preds = %bb.b
  %i.f = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.g = load i32, ptr %i.f, align 8, !tbaa !29   ; 6 uses
  %i.h = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %indvars.iv
  %i.i = load i32, ptr %i.h, align 4, !tbaa !4
  switch i32 %i.i, label %.critedge [
    i32 12, label %bb.d
    i32 2, label %bb.f
    i32 3, label %bb.h
  ]

bb.d:                                             ; preds = %bb.c
  %i.j = icmp ugt i32 %i.g, 1
  br i1 %i.j, label %.critedge, label %bb.e

bb.e:                                             ; preds = %bb.d
  store i32 %i.g, ptr %i.c, align 8, !tbaa !50
  br label %bb.j

bb.f:                                             ; preds = %bb.c
  %i.k = add i32 %i.g, -268435457
  %or.cond = icmp ult i32 %i.k, -267386881
  br i1 %or.cond, label %.critedge, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.l = lshr i32 %i.g, 20
  store i32 %i.l, ptr %i.b, align 8, !tbaa !56
  br label %bb.j

bb.h:                                             ; preds = %bb.c
  %i.m = add i32 %i.g, -17
  %or.cond3 = icmp ult i32 %i.m, -15
  br i1 %or.cond3, label %.critedge, label %bb.i

bb.i:                                             ; preds = %bb.h
  store i32 %i.g, ptr %i.a, align 4, !tbaa !57
  br label %bb.j

bb.j:                                             ; preds = %bb.e, %bb.g, %bb.i
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %.critedge, label %bb.b, !llvm.loop !58

.critedge:                                        ; preds = %bb.j, %bb.d, %bb.c, %bb.f, %bb.h, %bb.b, %bb.a
  %i.n = phi i32 [ 0, %bb.a ], [ -2147024809, %bb.d ], [ -2147024809, %bb.c ], [ -2147024809, %bb.f ], [ -2147024809, %bb.h ], [ -2147024809, %bb.b ], [ 0, %bb.j ]
  ret i32 %i.n
}

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN9NCompress8NPpmdZip8CEncoderC2Ev(ptr noundef nonnull align 8 dereferenceable(7492) initializes((0, 12)) %0) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 0, ptr %i.a, align 8, !tbaa !8
  store ptr getelementptr inbounds nuw inrange(-16, 48) (i8, ptr @_ZTVN9NCompress8NPpmdZip8CEncoderE, i64 16), ptr %0, align 8, !tbaa !10
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  tail call void @_ZN15CByteOutBufWrapC1Ev(ptr noundef nonnull align 8 dereferenceable(60) %i.b)
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 2 uses
  store ptr null, ptr %i.c, align 8, !tbaa !12
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 7480
  store i32 16, ptr %i.d, align 8, !tbaa !56
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 7484
end_hunk_0

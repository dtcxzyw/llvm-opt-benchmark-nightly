Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/icu/original/ucnv_u16?download=true
inline.NumInlined: 14
inline.NumDeleted: 4
loop-unroll.NumRuntimeUnrolled: 4
loop-unroll.NumUnrolled: 4
begin_hunk_0_@_ZL30_UTF16BEFromUnicodeWithOffsetsP25UConverterFromUnicodeArgsP10UErrorCode:bb.a
  %i.dj = and i32 %i.cw, 1024
  %i.dk = icmp eq i32 %i.dj, 0
  %i.dl = icmp ne i32 %.3245, 1
  %or.cond5 = and i1 %i.dl, %i.dk
  br i1 %or.cond5, label %bb.s, label %.thread183

bb.s:                                             ; preds = %bb.r
  %i.dm = load i16, ptr %i.cu, align 2, !tbaa !33 ; 3 uses
  %i.dn = and i16 %i.dm, -1024
  %i.do = icmp eq i16 %i.dn, -9216
  br i1 %i.do, label %bb.t, label %.thread183

bb.t:                                             ; preds = %bb.s
  %i.dp = getelementptr inbounds nuw i8, ptr %.3144243, i64 4
  %i.dq = add nsw i32 %.3245, -1
  %i.dr = lshr i16 %i.cv, 8
  %i.ds = trunc nuw i16 %i.dr to i8
  store i8 %i.ds, ptr %i.ct, align 1, !tbaa !30
  %i.dt = trunc i16 %i.cv to i8
  %i.du = load ptr, ptr %i.a, align 8, !tbaa !43  ; 4 uses
  %i.dv = getelementptr inbounds nuw i8, ptr %i.du, i64 1
  store i8 %i.dt, ptr %i.dv, align 1, !tbaa !30
  %i.dw = lshr i16 %i.dm, 8
  %i.dx = trunc nuw i16 %i.dw to i8
  %i.dy = getelementptr inbounds nuw i8, ptr %i.du, i64 2
  store i8 %i.dx, ptr %i.dy, align 1, !tbaa !30
  %i.dz = trunc i16 %i.dm to i8
  %i.ea = getelementptr inbounds nuw i8, ptr %i.du, i64 3
  store i8 %i.dz, ptr %i.ea, align 1, !tbaa !30
  %i.eb = getelementptr inbounds nuw i8, ptr %i.du, i64 4 ; 2 uses
  store ptr %i.eb, ptr %i.a, align 8, !tbaa !43
  %i.ec = load ptr, ptr %i.b, align 8, !tbaa !45  ; 2 uses
  %i.ed = getelementptr inbounds nuw i8, ptr %i.ec, i64 16
  store ptr %i.ed, ptr %i.b, align 8, !tbaa !45
  %i.ee = insertelement <4 x i32> poison, i32 %.1128244, i64 0
  %i.ef = shufflevector <4 x i32> %i.ee, <4 x i32> poison, <4 x i32> zeroinitializer
  store <4 x i32> %i.ef, ptr %i.ec, align 4, !tbaa !34
  %i.eg = add i32 %.1128244, 2
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %bb.q
  %i.eh = phi ptr [ %i.eb, %bb.t ], [ %i.de, %bb.q ] ; 2 uses
  %.4145 = phi ptr [ %i.dp, %bb.t ], [ %i.cu, %bb.q ] ; 2 uses
  %.2129 = phi i32 [ %i.eg, %bb.t ], [ %i.dh, %bb.q ] ; 2 uses
  %.4 = phi i32 [ %i.dq, %bb.t ], [ %.3245, %bb.q ]
  %i.ei = add nsw i32 %.4, -1                     ; 2 uses
  %.not160 = icmp eq i32 %i.ei, 0
  br i1 %.not160, label %.thread175, label %.lr.ph, !llvm.loop !56

.thread175:                                       ; preds = %bb.u, %bb.p, %.preheader231, %.preheader
  %i.ej = phi ptr [ %i.be, %.preheader ], [ %storemerge, %bb.p ], [ %i.be, %.preheader231 ], [ %i.eh, %bb.u ] ; 2 uses
  %.3130181 = phi i32 [ %.0127173, %.preheader ], [ %.0127173, %bb.p ], [ %.0127173, %.preheader231 ], [ %.2129, %bb.u ] ; 2 uses
  %.5146180 = phi ptr [ %.0141170, %.preheader ], [ %.2143, %bb.p ], [ %.0141170, %.preheader231 ], [ %.4145, %bb.u ] ; 3 uses
  %i.ek = icmp ne i32 %i.bl, 0
  %i.el = icmp ne i32 %i.bj, 0
  %or.cond7 = select i1 %i.ek, i1 %i.el, i1 false
  br i1 %or.cond7, label %bb.v, label %.thread193.thread

bb.v:                                             ; preds = %.thread175
  %i.em = getelementptr inbounds nuw i8, ptr %.5146180, i64 2 ; 2 uses
  %i.en = load i16, ptr %.5146180, align 2, !tbaa !33 ; 4 uses
  %i.eo = and i16 %i.en, -2048
  %i.ep = icmp eq i16 %i.eo, -10240
  br i1 %i.ep, label %.thread205, label %.thread193.thread222

.thread193.thread222:                             ; preds = %bb.v
  %i.eq = lshr i16 %i.en, 8
  %i.er = trunc nuw i16 %i.eq to i8
  store i8 %i.er, ptr %i.c, align 1, !tbaa !30
  %i.es = trunc i16 %i.en to i8
  %i.et = getelementptr inbounds nuw i8, ptr %i.c, i64 1
  store i8 %i.es, ptr %i.et, align 1, !tbaa !30
  br label %bb.ac

.thread183:                                       ; preds = %bb.r, %bb.s, %bb.m, %bb.n
  %i.eu = phi ptr [ %i.bn, %bb.m ], [ %i.bn, %bb.n ], [ %i.ct, %bb.s ], [ %i.ct, %bb.r ] ; 2 uses
  %.5191 = phi i32 [ %.1249, %bb.m ], [ %.1249, %bb.n ], [ %.3245, %bb.s ], [ %.3245, %bb.r ]
  %.3124190 = phi i16 [ %i.bp, %bb.m ], [ %i.bp, %bb.n ], [ %i.cv, %bb.s ], [ %i.cv, %bb.r ] ; 2 uses
  %.3130189 = phi i32 [ %.0127173, %bb.m ], [ %.0127173, %bb.n ], [ %.1128244, %bb.s ], [ %.1128244, %bb.r ] ; 2 uses
  %.5146188 = phi ptr [ %i.bo, %bb.m ], [ %i.bo, %bb.n ], [ %i.cu, %bb.s ], [ %i.cu, %bb.r ] ; 2 uses
  %i.ev = shl nuw i32 %.5191, 1
  %i.ew = add i32 %i.ev, %i.bj                    ; 2 uses
  %.not162 = icmp eq i16 %.3124190, 0
  br i1 %.not162, label %.thread193, label %.thread205

.thread205:                                       ; preds = %bb.j, %bb.v, %.thread183
  %i.ex = phi ptr [ %i.eu, %.thread183 ], [ %i.x, %bb.j ], [ %i.ej, %bb.v ]
  %.5126215 = phi i16 [ %.3124190, %.thread183 ], [ %i.ai, %bb.j ], [ %i.en, %bb.v ] ; 6 uses
  %.4131214 = phi i32 [ %.3130189, %.thread183 ], [ 0, %bb.j ], [ %.3130181, %bb.v ]
  %.2139213 = phi i32 [ %i.ew, %.thread183 ], [ %i.ad, %bb.j ], [ %i.bj, %bb.v ]
  %.7212 = phi ptr [ %.5146188, %.thread183 ], [ %i.e, %bb.j ], [ %i.em, %bb.v ] ; 6 uses
  %i.ey = and i16 %.5126215, 1024
  %i.ez = icmp eq i16 %i.ey, 0
  br i1 %i.ez, label %bb.w, label %bb.aa

bb.w:                                             ; preds = %.thread205
  %i.fa = load ptr, ptr %i.f, align 8, !tbaa !39
  %i.fb = icmp ult ptr %.7212, %i.fa
  br i1 %i.fb, label %bb.x, label %bb.ab

bb.x:                                             ; preds = %bb.w
  %i.fc = load i16, ptr %.7212, align 2, !tbaa !33 ; 3 uses
  %i.fd = and i16 %i.fc, -1024
  %i.fe = icmp eq i16 %i.fd, -9216
  br i1 %i.fe, label %bb.y, label %bb.z

bb.y:                                             ; preds = %bb.x
  %i.ff = getelementptr inbounds nuw i8, ptr %.7212, i64 2
  %i.fg = lshr i16 %.5126215, 8
  %i.fh = trunc nuw i16 %i.fg to i8
  store i8 %i.fh, ptr %i.c, align 1, !tbaa !30
  %i.fi = trunc i16 %.5126215 to i8
  %i.fj = getelementptr inbounds nuw i8, ptr %i.c, i64 1
  store i8 %i.fi, ptr %i.fj, align 1, !tbaa !30
  %i.fk = lshr i16 %i.fc, 8
  %i.fl = trunc nuw i16 %i.fk to i8
  %i.fm = getelementptr inbounds nuw i8, ptr %i.c, i64 2
  store i8 %i.fl, ptr %i.fm, align 1, !tbaa !30
  %i.fn = trunc i16 %i.fc to i8
  %i.fo = getelementptr inbounds nuw i8, ptr %i.c, i64 3
  store i8 %i.fn, ptr %i.fo, align 1, !tbaa !30
  br label %bb.ab

bb.z:                                             ; preds = %bb.x
  store i32 12, ptr %1, align 4, !tbaa !17
  br label %bb.ab

bb.aa:                                            ; preds = %.thread205
  store i32 12, ptr %1, align 4, !tbaa !17
  br label %bb.ab

bb.ab:                                            ; preds = %bb.z, %bb.y, %bb.w, %bb.aa
  %.8 = phi ptr [ %i.ff, %bb.y ], [ %.7212, %bb.z ], [ %.7212, %bb.w ], [ %.7212, %bb.aa ]
  %.3135 = phi i32 [ 4, %bb.y ], [ 0, %bb.z ], [ 0, %bb.w ], [ 0, %bb.aa ]
  %.6 = phi i16 [ 0, %bb.y ], [ %.5126215, %bb.z ], [ %.5126215, %bb.w ], [ %.5126215, %bb.aa ]
  %i.fp = zext i16 %.6 to i32
  store i32 %i.fp, ptr %i.ag, align 4, !tbaa !46
  br label %.thread193

.thread193:                                       ; preds = %bb.ab, %.thread183
  %i.fq = phi ptr [ %i.ex, %bb.ab ], [ %i.eu, %.thread183 ]
  %.4131201 = phi i32 [ %.4131214, %bb.ab ], [ %.3130189, %.thread183 ]
  %.2139200 = phi i32 [ %.2139213, %bb.ab ], [ %i.ew, %.thread183 ]
  %.9 = phi ptr [ %.8, %bb.ab ], [ %.5146188, %.thread183 ] ; 2 uses
  %.4136 = phi i32 [ %.3135, %bb.ab ], [ %i.bl, %.thread183 ] ; 2 uses
  %.not163 = icmp eq i32 %.4136, 0
  br i1 %.not163, label %.thread193.thread, label %bb.ac

bb.ac:                                            ; preds = %.thread193.thread222, %.thread193
  %.4136230 = phi i32 [ 2, %.thread193.thread222 ], [ %.4136, %.thread193 ]
  %.9229 = phi ptr [ %i.em, %.thread193.thread222 ], [ %.9, %.thread193 ]
  %.4131201228 = phi i32 [ %.3130181, %.thread193.thread222 ], [ %.4131201, %.thread193 ]
  %i.fr = load ptr, ptr %i.y, align 8, !tbaa !41
  call void @ucnv_fromUWriteBytes_78(ptr noundef %i.o, ptr noundef nonnull %i.c, i32 noundef %.4136230, ptr noundef nonnull %i.a, ptr noundef %i.fr, ptr noundef nonnull %i.b, i32 noundef %.4131201228, ptr noundef %1)
  %i.fs = load ptr, ptr %i.y, align 8, !tbaa !41
  %i.ft = load ptr, ptr %i.a, align 8, !tbaa !43  ; 2 uses
  %i.fu = ptrtoint ptr %i.fs to i64
  %i.fv = ptrtoint ptr %i.ft to i64
  %i.fw = sub i64 %i.fu, %i.fv
  %i.fx = trunc i64 %i.fw to i32
  br label %.thread193.thread

.thread193.thread:                                ; preds = %.thread175, %bb.ac, %.thread193
  %i.fy = phi ptr [ %i.ft, %bb.ac ], [ %i.fq, %.thread193 ], [ %i.ej, %.thread175 ]
  %.9221 = phi ptr [ %.9229, %bb.ac ], [ %.9, %.thread193 ], [ %.5146180, %.thread175 ] ; 2 uses
  %.3140 = phi i32 [ %i.fx, %bb.ac ], [ %.2139200, %.thread193 ], [ %i.bj, %.thread175 ]
  %i.fz = load i32, ptr %1, align 4, !tbaa !17
  %i.ga = icmp sgt i32 %i.fz, 0
  br i1 %i.ga, label %bb.af, label %bb.ad

bb.ad:                                            ; preds = %.thread193.thread
  %i.gb = load ptr, ptr %i.f, align 8, !tbaa !39
  %i.gc = icmp ult ptr %.9221, %i.gb
  %i.gd = icmp eq i32 %.3140, 0
  %or.cond9 = select i1 %i.gc, i1 %i.gd, i1 false
  br i1 %or.cond9, label %bb.ae, label %bb.af

bb.ae:                                            ; preds = %bb.ad
  store i32 15, ptr %1, align 4, !tbaa !17
  br label %bb.af

bb.af:                                            ; preds = %bb.ae, %bb.ad, %.thread193.thread
  store ptr %.9221, ptr %i.d, align 8, !tbaa !38
  store ptr %i.fy, ptr %i.w, align 8, !tbaa !42
  %i.ge = load ptr, ptr %i.b, align 8, !tbaa !45
  store ptr %i.ge, ptr %i.ae, align 8, !tbaa !44
  br label %bb.ag

bb.ag:                                            ; preds = %bb.a, %bb.af, %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #9
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal noundef range(i32 -9, 10559488) i32 @_ZL20_UTF16BEGetNextUCharP23UConverterToUnicodeArgsP10UErrorCode(ptr nofree noundef captures(none) %0, ptr nofree noundef writeonly captures(none) %1) #3 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !23   ; 8 uses
  %2 = ptrtoaddr ptr %i.b to i64
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 76
  %i.d = load i32, ptr %i.c, align 4, !tbaa !14
  %i.e = icmp slt i32 %i.d, 8
  br i1 %i.e, label %bb.l, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !24   ; 17 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !25   ; 5 uses
  %.not = icmp ult ptr %i.g, %i.i
  br i1 %.not, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  store i32 8, ptr %1, align 4, !tbaa !17
  br label %bb.l

bb.d:                                             ; preds = %bb.b
  %i.j = getelementptr inbounds nuw i8, ptr %i.g, i64 2 ; 4 uses
  %i.k = icmp ugt ptr %i.j, %i.i
  br i1 %i.k, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.l = getelementptr inbounds nuw i8, ptr %i.g, i64 1
  %i.m = load i8, ptr %i.g, align 1, !tbaa !30
  %i.n = getelementptr inbounds nuw i8, ptr %i.b, i64 65
  store i8 %i.m, ptr %i.n, align 1, !tbaa !30
  %i.o = load ptr, ptr %i.a, align 8, !tbaa !23
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 64
  store i8 1, ptr %i.p, align 8, !tbaa !31
  store ptr %i.l, ptr %i.f, align 8, !tbaa !24
  store i32 11, ptr %1, align 4, !tbaa !17
  br label %bb.l

bb.f:                                             ; preds = %bb.d
  %i.q = load i8, ptr %i.g, align 1, !tbaa !30
  %i.r = zext i8 %i.q to i32                      ; 3 uses
  %i.s = shl nuw nsw i32 %i.r, 8
  %i.t = getelementptr inbounds nuw i8, ptr %i.g, i64 1 ; 2 uses
  %i.u = load i8, ptr %i.t, align 1, !tbaa !30
  %i.v = zext i8 %i.u to i32
  %i.w = or disjoint i32 %i.s, %i.v               ; 2 uses
  %i.x = and i32 %i.r, 248
  %i.y = icmp eq i32 %i.x, 216
  br i1 %i.y, label %bb.g, label %bb.k

bb.g:                                             ; preds = %bb.f
  %i.z = and i32 %i.r, 4
  %i.aa = icmp eq i32 %i.z, 0
  br i1 %i.aa, label %bb.h, label %.thread

bb.h:                                             ; preds = %bb.g
  %i.ab = getelementptr inbounds nuw i8, ptr %i.g, i64 4 ; 2 uses
  %.not58 = icmp ugt ptr %i.ab, %i.i
  br i1 %.not58, label %iter.check, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ac = load i8, ptr %i.j, align 1, !tbaa !30
  %i.ad = zext i8 %i.ac to i32                    ; 2 uses
  %i.ae = and i32 %i.ad, 252
  %i.af = icmp eq i32 %i.ae, 220
  br i1 %i.af, label %bb.j, label %.thread

iter.check:                                       ; preds = %bb.h
  %i.ag = getelementptr inbounds nuw i8, ptr %i.b, i64 65 ; 6 uses
  %i.ah = ptrtoint ptr %i.i to i64                ; 3 uses
  %i.ai = ptrtoint ptr %i.g to i64                ; 2 uses
  %i.aj = sub i64 %i.ah, %i.ai                    ; 9 uses
  %i.ak = trunc i64 %i.aj to i8
  %i.al = getelementptr inbounds nuw i8, ptr %i.b, i64 64
  store i8 %i.ak, ptr %i.al, align 8, !tbaa !31
  %scevgep = getelementptr i8, ptr %i.g, i64 %i.aj
  %min.iters.check = icmp ult i64 %i.aj, 8
  br i1 %min.iters.check, label %vec.epilog.scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %iter.check
  %i.am = sub i64 %2, %i.ai
  %i.an = add i64 %i.am, 64
  %diff.check = icmp ult i64 %i.an, 31
  br i1 %diff.check, label %vec.epilog.scalar.ph.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %vector.memcheck
  %min.iters.check69 = icmp ult i64 %i.aj, 32
  br i1 %min.iters.check69, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.ao = and i64 %i.aj, 24
  %n.vec = and i64 %i.aj, -32                     ; 5 uses
  %i.ap = getelementptr i8, ptr %i.g, i64 %n.vec
  %i.aq = getelementptr i8, ptr %i.ag, i64 %n.vec
  br label %vector.body

vector.body:                                      ; preds = %vector.ph, %vector.body
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %next.gep = getelementptr i8, ptr %i.g, i64 %index ; 2 uses
  %next.gep70 = getelementptr i8, ptr %i.ag, i64 %index ; 2 uses
  %i.ar = getelementptr i8, ptr %next.gep, i64 16
  %wide.load = load <16 x i8>, ptr %next.gep, align 1, !tbaa !30
  %wide.load71 = load <16 x i8>, ptr %i.ar, align 1, !tbaa !30
  %i.as = getelementptr i8, ptr %next.gep70, i64 16
  store <16 x i8> %wide.load, ptr %next.gep70, align 1, !tbaa !30
  store <16 x i8> %wide.load71, ptr %i.as, align 1, !tbaa !30
  %index.next = add nuw i64 %index, 32            ; 2 uses
  %i.at = icmp eq i64 %index.next, %n.vec
  br i1 %i.at, label %middle.block, label %vector.body, !llvm.loop !57

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.aj, %n.vec
  br i1 %cmp.n, label %.thread62, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.ao, 0
  br i1 %min.epilog.iters.check, label %vec.epilog.scalar.ph.preheader, label %vec.epilog.ph, !prof !49

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec73 = and i64 %i.aj, -8                    ; 4 uses
  %i.au = getelementptr i8, ptr %i.g, i64 %n.vec73
  %i.av = getelementptr i8, ptr %i.ag, i64 %n.vec73
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index74 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next78, %vec.epilog.vector.body ] ; 3 uses
  %next.gep75 = getelementptr i8, ptr %i.g, i64 %index74
  %next.gep76 = getelementptr i8, ptr %i.ag, i64 %index74
  %wide.load77 = load <8 x i8>, ptr %next.gep75, align 1, !tbaa !30
  store <8 x i8> %wide.load77, ptr %next.gep76, align 1, !tbaa !30
  %index.next78 = add nuw i64 %index74, 8         ; 2 uses
  %i.aw = icmp eq i64 %index.next78, %n.vec73
  br i1 %i.aw, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !58

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n79 = icmp eq i64 %i.aj, %n.vec73
  br i1 %cmp.n79, label %.thread62, label %vec.epilog.scalar.ph.preheader

vec.epilog.scalar.ph.preheader:                   ; preds = %iter.check, %vector.memcheck, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.151.ph = phi ptr [ %i.g, %iter.check ], [ %i.g, %vector.memcheck ], [ %i.ap, %vec.epilog.iter.check ], [ %i.au, %vec.epilog.middle.block ] ; 3 uses
  %.048.ph = phi ptr [ %i.ag, %iter.check ], [ %i.ag, %vector.memcheck ], [ %i.aq, %vec.epilog.iter.check ], [ %i.av, %vec.epilog.middle.block ] ; 2 uses
  %.151.ph82 = ptrtoaddr ptr %.151.ph to i64      ; 2 uses
  %i.ax = sub i64 %i.ah, %.151.ph82
  %xtraiter = and i64 %i.ax, 7                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %vec.epilog.scalar.ph.prol.loopexit, label %vec.epilog.scalar.ph.prol

vec.epilog.scalar.ph.prol:                        ; preds = %vec.epilog.scalar.ph.preheader, %vec.epilog.scalar.ph.prol
  %.151.prol = phi ptr [ %i.ay, %vec.epilog.scalar.ph.prol ], [ %.151.ph, %vec.epilog.scalar.ph.preheader ] ; 2 uses
  %.048.prol = phi ptr [ %i.ba, %vec.epilog.scalar.ph.prol ], [ %.048.ph, %vec.epilog.scalar.ph.preheader ] ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %vec.epilog.scalar.ph.prol ], [ 0, %vec.epilog.scalar.ph.preheader ]
  %i.ay = getelementptr inbounds nuw i8, ptr %.151.prol, i64 1 ; 2 uses
  %i.az = load i8, ptr %.151.prol, align 1, !tbaa !30
  %i.ba = getelementptr inbounds nuw i8, ptr %.048.prol, i64 1 ; 2 uses
  store i8 %i.az, ptr %.048.prol, align 1, !tbaa !30
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %vec.epilog.scalar.ph.prol.loopexit, label %vec.epilog.scalar.ph.prol, !llvm.loop !59

vec.epilog.scalar.ph.prol.loopexit:               ; preds = %vec.epilog.scalar.ph.prol, %vec.epilog.scalar.ph.preheader
  %.151.unr = phi ptr [ %.151.ph, %vec.epilog.scalar.ph.preheader ], [ %i.ay, %vec.epilog.scalar.ph.prol ]
  %.048.unr = phi ptr [ %.048.ph, %vec.epilog.scalar.ph.preheader ], [ %i.ba, %vec.epilog.scalar.ph.prol ]
  %i.bb = sub i64 %.151.ph82, %i.ah
  %i.bc = icmp ugt i64 %i.bb, -8
  br i1 %i.bc, label %.thread62, label %vec.epilog.scalar.ph

vec.epilog.scalar.ph:                             ; preds = %vec.epilog.scalar.ph.prol.loopexit, %vec.epilog.scalar.ph
  %.151 = phi ptr [ %i.by, %vec.epilog.scalar.ph ], [ %.151.unr, %vec.epilog.scalar.ph.prol.loopexit ] ; 9 uses
  %.048 = phi ptr [ %i.ca, %vec.epilog.scalar.ph ], [ %.048.unr, %vec.epilog.scalar.ph.prol.loopexit ] ; 9 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %.151, i64 1
  %i.be = load i8, ptr %.151, align 1, !tbaa !30
  %i.bf = getelementptr inbounds nuw i8, ptr %.048, i64 1
  store i8 %i.be, ptr %.048, align 1, !tbaa !30
  %i.bg = getelementptr inbounds nuw i8, ptr %.151, i64 2
  %i.bh = load i8, ptr %i.bd, align 1, !tbaa !30
  %i.bi = getelementptr inbounds nuw i8, ptr %.048, i64 2
  store i8 %i.bh, ptr %i.bf, align 1, !tbaa !30
  %i.bj = getelementptr inbounds nuw i8, ptr %.151, i64 3
  %i.bk = load i8, ptr %i.bg, align 1, !tbaa !30
  %i.bl = getelementptr inbounds nuw i8, ptr %.048, i64 3
  store i8 %i.bk, ptr %i.bi, align 1, !tbaa !30
  %i.bm = getelementptr inbounds nuw i8, ptr %.151, i64 4
  %i.bn = load i8, ptr %i.bj, align 1, !tbaa !30
  %i.bo = getelementptr inbounds nuw i8, ptr %.048, i64 4
  store i8 %i.bn, ptr %i.bl, align 1, !tbaa !30
  %i.bp = getelementptr inbounds nuw i8, ptr %.151, i64 5
  %i.bq = load i8, ptr %i.bm, align 1, !tbaa !30
  %i.br = getelementptr inbounds nuw i8, ptr %.048, i64 5
  store i8 %i.bq, ptr %i.bo, align 1, !tbaa !30
  %i.bs = getelementptr inbounds nuw i8, ptr %.151, i64 6
  %i.bt = load i8, ptr %i.bp, align 1, !tbaa !30
  %i.bu = getelementptr inbounds nuw i8, ptr %.048, i64 6
  store i8 %i.bt, ptr %i.br, align 1, !tbaa !30
  %i.bv = getelementptr inbounds nuw i8, ptr %.151, i64 7
  %i.bw = load i8, ptr %i.bs, align 1, !tbaa !30
  %i.bx = getelementptr inbounds nuw i8, ptr %.048, i64 7
  store i8 %i.bw, ptr %i.bu, align 1, !tbaa !30
  %i.by = getelementptr inbounds nuw i8, ptr %.151, i64 8 ; 2 uses
  %i.bz = load i8, ptr %i.bv, align 1, !tbaa !30
  %i.ca = getelementptr inbounds nuw i8, ptr %.048, i64 8
  store i8 %i.bz, ptr %i.bx, align 1, !tbaa !30
  %exitcond.not.7 = icmp eq ptr %i.by, %i.i
  br i1 %exitcond.not.7, label %.thread62, label %vec.epilog.scalar.ph, !llvm.loop !60

.thread62:                                        ; preds = %vec.epilog.scalar.ph.prol.loopexit, %vec.epilog.scalar.ph, %vec.epilog.middle.block, %middle.block
  store i32 11, ptr %1, align 4, !tbaa !17
  br label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.cb = shl nuw nsw i32 %i.ad, 8
  %i.cc = getelementptr inbounds nuw i8, ptr %i.g, i64 3
  %i.cd = load i8, ptr %i.cc, align 1, !tbaa !30
  %i.ce = zext i8 %i.cd to i32
  %i.cf = or disjoint i32 %i.cb, %i.ce
  %i.cg = shl nuw nsw i32 %i.w, 10
  %i.ch = add nsw i32 %i.cg, -56613888
  %i.ci = add nuw nsw i32 %i.ch, %i.cf
  br label %bb.k

.thread:                                          ; preds = %bb.g, %bb.i
  %i.cj = getelementptr inbounds nuw i8, ptr %i.b, i64 65
  %i.ck = getelementptr inbounds nuw i8, ptr %i.b, i64 64
  store i8 2, ptr %i.ck, align 8, !tbaa !31
  %i.cl = load i8, ptr %i.g, align 1, !tbaa !30
  store i8 %i.cl, ptr %i.cj, align 1, !tbaa !30
  %i.cm = load i8, ptr %i.t, align 1, !tbaa !30
  %i.cn = getelementptr inbounds nuw i8, ptr %i.b, i64 66
  store i8 %i.cm, ptr %i.cn, align 2, !tbaa !30
  store i32 12, ptr %1, align 4, !tbaa !17
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %.thread62, %.thread, %bb.f
  %.3 = phi ptr [ %i.j, %.thread ], [ %i.ab, %bb.j ], [ %i.j, %bb.f ], [ %scevgep, %.thread62 ]
  %.2 = phi i32 [ 65535, %.thread ], [ %i.ci, %bb.j ], [ %i.w, %bb.f ], [ 65535, %.thread62 ]
  store ptr %.3, ptr %i.f, align 8, !tbaa !24
  br label %bb.l

bb.l:                                             ; preds = %bb.a, %bb.k, %bb.e, %bb.c
  %.0 = phi i32 [ %.2, %bb.k ], [ 65535, %bb.c ], [ 65535, %bb.e ], [ -9, %bb.a ]
  ret i32 %.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define internal noundef nonnull ptr @_ZL15_UTF16BEGetNamePK10UConverter(ptr nofree noundef readonly captures(none) %0) #4 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.b = load i32, ptr %i.a, align 8, !tbaa !13
  %i.c = and i32 %i.b, 15
  %i.d = icmp eq i32 %i.c, 0
  %.str..str.1 = select i1 %i.d, ptr @.str, ptr @.str.1
  ret ptr %.str..str.1
}

declare void @ucnv_getNonSurrogateUnicodeSet_78(ptr noundef, ptr noundef, i32 noundef, ptr noundef) #5

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #6

; Function Attrs: mustprogress nofree nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal void @_ZL26_UTF16ToUnicodeWithOffsetsP23UConverterToUnicodeArgsP10UErrorCode(ptr nofree noundef captures(none) %0, ptr nofree noundef captures(none) %1) #1 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !23   ; 6 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 9 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !24   ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !25   ; 4 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !29   ; 6 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 76 ; 4 uses
  %i.j = load i32, ptr %i.i, align 4, !tbaa !14   ; 2 uses
  %i.k = icmp ult ptr %i.d, %i.f
  br i1 %i.k, label %.lr.ph.lr.ph, label %.loopexit

.lr.ph.lr.ph:                                     ; preds = %bb.a
  %i.l = getelementptr inbounds nuw i8, ptr %i.b, i64 65 ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.b, i64 64 ; 4 uses
  %i.n = getelementptr i8, ptr %i.b, i64 48       ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.b, i64 56
end_hunk_0
begin_hunk_1_@_ZL30_UTF16LEFromUnicodeWithOffsetsP25UConverterFromUnicodeArgsP10UErrorCode:bb.a
  %i.dc = load ptr, ptr %i.a, align 8, !tbaa !43  ; 2 uses
  %i.dd = getelementptr inbounds nuw i8, ptr %i.dc, i64 1
  store i8 %i.db, ptr %i.dd, align 1, !tbaa !30
  %i.de = getelementptr inbounds nuw i8, ptr %i.dc, i64 2 ; 2 uses
  store ptr %i.de, ptr %i.a, align 8, !tbaa !43
  %i.df = load ptr, ptr %i.b, align 8, !tbaa !45  ; 3 uses
  %i.dg = getelementptr inbounds nuw i8, ptr %i.df, i64 4
  store i32 %.1129244, ptr %i.df, align 4, !tbaa !34
  %i.dh = add i32 %.1129244, 1
  %i.di = getelementptr inbounds nuw i8, ptr %i.df, i64 8
  store ptr %i.di, ptr %i.b, align 8, !tbaa !45
  store i32 %.1129244, ptr %i.dg, align 4, !tbaa !34
  br label %bb.u

bb.r:                                             ; preds = %.lr.ph
  %i.dj = and i32 %i.cw, 1024
  %i.dk = icmp eq i32 %i.dj, 0
  %i.dl = icmp ne i32 %.3245, 1
  %or.cond5 = and i1 %i.dl, %i.dk
  br i1 %or.cond5, label %bb.s, label %.thread183

bb.s:                                             ; preds = %bb.r
  %i.dm = load i16, ptr %i.cu, align 2, !tbaa !33 ; 3 uses
  %i.dn = and i16 %i.dm, -1024
  %i.do = icmp eq i16 %i.dn, -9216
  br i1 %i.do, label %bb.t, label %.thread183

bb.t:                                             ; preds = %bb.s
  %i.dp = getelementptr inbounds nuw i8, ptr %.3145243, i64 4
  %i.dq = add nsw i32 %.3245, -1
  %i.dr = trunc i16 %i.cv to i8
  store i8 %i.dr, ptr %i.ct, align 1, !tbaa !30
  %i.ds = lshr i16 %i.cv, 8
  %i.dt = trunc nuw i16 %i.ds to i8
  %i.du = load ptr, ptr %i.a, align 8, !tbaa !43  ; 4 uses
  %i.dv = getelementptr inbounds nuw i8, ptr %i.du, i64 1
  store i8 %i.dt, ptr %i.dv, align 1, !tbaa !30
  %i.dw = trunc i16 %i.dm to i8
  %i.dx = getelementptr inbounds nuw i8, ptr %i.du, i64 2
  store i8 %i.dw, ptr %i.dx, align 1, !tbaa !30
  %i.dy = lshr i16 %i.dm, 8
  %i.dz = trunc nuw i16 %i.dy to i8
  %i.ea = getelementptr inbounds nuw i8, ptr %i.du, i64 3
  store i8 %i.dz, ptr %i.ea, align 1, !tbaa !30
  %i.eb = getelementptr inbounds nuw i8, ptr %i.du, i64 4 ; 2 uses
  store ptr %i.eb, ptr %i.a, align 8, !tbaa !43
  %i.ec = load ptr, ptr %i.b, align 8, !tbaa !45  ; 2 uses
  %i.ed = getelementptr inbounds nuw i8, ptr %i.ec, i64 16
  store ptr %i.ed, ptr %i.b, align 8, !tbaa !45
  %i.ee = insertelement <4 x i32> poison, i32 %.1129244, i64 0
  %i.ef = shufflevector <4 x i32> %i.ee, <4 x i32> poison, <4 x i32> zeroinitializer
  store <4 x i32> %i.ef, ptr %i.ec, align 4, !tbaa !34
  %i.eg = add i32 %.1129244, 2
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %bb.q
  %i.eh = phi ptr [ %i.eb, %bb.t ], [ %i.de, %bb.q ] ; 2 uses
  %.4146 = phi ptr [ %i.dp, %bb.t ], [ %i.cu, %bb.q ] ; 2 uses
  %.2130 = phi i32 [ %i.eg, %bb.t ], [ %i.dh, %bb.q ] ; 2 uses
  %.4 = phi i32 [ %i.dq, %bb.t ], [ %.3245, %bb.q ]
  %i.ei = add nsw i32 %.4, -1                     ; 2 uses
  %.not160 = icmp eq i32 %i.ei, 0
  br i1 %.not160, label %.thread175, label %.lr.ph, !llvm.loop !69

.thread175:                                       ; preds = %bb.u, %bb.p, %.preheader231, %.preheader
  %i.ej = phi ptr [ %i.be, %.preheader ], [ %storemerge, %bb.p ], [ %i.be, %.preheader231 ], [ %i.eh, %bb.u ] ; 2 uses
  %.3131181 = phi i32 [ %.0128173, %.preheader ], [ %.0128173, %bb.p ], [ %.0128173, %.preheader231 ], [ %.2130, %bb.u ] ; 2 uses
  %.5147180 = phi ptr [ %.0142170, %.preheader ], [ %.2144, %bb.p ], [ %.0142170, %.preheader231 ], [ %.4146, %bb.u ] ; 3 uses
  %i.ek = icmp ne i32 %i.bl, 0
  %i.el = icmp ne i32 %i.bj, 0
  %or.cond7 = select i1 %i.ek, i1 %i.el, i1 false
  br i1 %or.cond7, label %bb.v, label %.thread193.thread

bb.v:                                             ; preds = %.thread175
  %i.em = getelementptr inbounds nuw i8, ptr %.5147180, i64 2 ; 2 uses
  %i.en = load i16, ptr %.5147180, align 2, !tbaa !33 ; 3 uses
  %i.eo = and i16 %i.en, -2048
  %i.ep = icmp eq i16 %i.eo, -10240
  br i1 %i.ep, label %.thread205, label %.thread193.thread222

.thread193.thread222:                             ; preds = %bb.v
  store i16 %i.en, ptr %i.c, align 2
  br label %bb.ac

.thread183:                                       ; preds = %bb.r, %bb.s, %bb.m, %bb.n
  %i.eq = phi ptr [ %i.bn, %bb.m ], [ %i.bn, %bb.n ], [ %i.ct, %bb.s ], [ %i.ct, %bb.r ] ; 2 uses
  %.5191 = phi i32 [ %.1249, %bb.m ], [ %.1249, %bb.n ], [ %.3245, %bb.s ], [ %.3245, %bb.r ]
  %.3125190 = phi i16 [ %i.bp, %bb.m ], [ %i.bp, %bb.n ], [ %i.cv, %bb.s ], [ %i.cv, %bb.r ] ; 2 uses
  %.3131189 = phi i32 [ %.0128173, %bb.m ], [ %.0128173, %bb.n ], [ %.1129244, %bb.s ], [ %.1129244, %bb.r ] ; 2 uses
  %.5147188 = phi ptr [ %i.bo, %bb.m ], [ %i.bo, %bb.n ], [ %i.cu, %bb.s ], [ %i.cu, %bb.r ] ; 2 uses
  %i.er = shl nuw i32 %.5191, 1
  %i.es = add i32 %i.er, %i.bj                    ; 2 uses
  %.not162 = icmp eq i16 %.3125190, 0
  br i1 %.not162, label %.thread193, label %.thread205

.thread205:                                       ; preds = %bb.j, %bb.v, %.thread183
  %i.et = phi ptr [ %i.eq, %.thread183 ], [ %i.x, %bb.j ], [ %i.ej, %bb.v ]
  %.5127215 = phi i16 [ %.3125190, %.thread183 ], [ %i.ai, %bb.j ], [ %i.en, %bb.v ] ; 5 uses
  %.4132214 = phi i32 [ %.3131189, %.thread183 ], [ 0, %bb.j ], [ %.3131181, %bb.v ]
  %.2140213 = phi i32 [ %i.es, %.thread183 ], [ %i.ad, %bb.j ], [ %i.bj, %bb.v ]
  %.7212 = phi ptr [ %.5147188, %.thread183 ], [ %i.e, %bb.j ], [ %i.em, %bb.v ] ; 6 uses
  %i.eu = and i16 %.5127215, 1024
  %i.ev = icmp eq i16 %i.eu, 0
  br i1 %i.ev, label %bb.w, label %bb.aa

bb.w:                                             ; preds = %.thread205
  %i.ew = load ptr, ptr %i.f, align 8, !tbaa !39
  %i.ex = icmp ult ptr %.7212, %i.ew
  br i1 %i.ex, label %bb.x, label %bb.ab

bb.x:                                             ; preds = %bb.w
  %i.ey = load i16, ptr %.7212, align 2, !tbaa !33 ; 2 uses
  %i.ez = and i16 %i.ey, -1024
  %i.fa = icmp eq i16 %i.ez, -9216
  br i1 %i.fa, label %bb.y, label %bb.z

bb.y:                                             ; preds = %bb.x
  %i.fb = getelementptr inbounds nuw i8, ptr %.7212, i64 2
  store i16 %.5127215, ptr %i.c, align 2
  %i.fc = getelementptr inbounds nuw i8, ptr %i.c, i64 2
  store i16 %i.ey, ptr %i.fc, align 2
  br label %bb.ab

bb.z:                                             ; preds = %bb.x
  store i32 12, ptr %1, align 4, !tbaa !17
  br label %bb.ab

bb.aa:                                            ; preds = %.thread205
  store i32 12, ptr %1, align 4, !tbaa !17
  br label %bb.ab

bb.ab:                                            ; preds = %bb.z, %bb.y, %bb.w, %bb.aa
  %.8 = phi ptr [ %i.fb, %bb.y ], [ %.7212, %bb.z ], [ %.7212, %bb.w ], [ %.7212, %bb.aa ]
  %.3136 = phi i32 [ 4, %bb.y ], [ 0, %bb.z ], [ 0, %bb.w ], [ 0, %bb.aa ]
  %.6 = phi i16 [ 0, %bb.y ], [ %.5127215, %bb.z ], [ %.5127215, %bb.w ], [ %.5127215, %bb.aa ]
  %i.fd = zext i16 %.6 to i32
  store i32 %i.fd, ptr %i.ag, align 4, !tbaa !46
  br label %.thread193

.thread193:                                       ; preds = %bb.ab, %.thread183
  %i.fe = phi ptr [ %i.et, %bb.ab ], [ %i.eq, %.thread183 ]
  %.4132201 = phi i32 [ %.4132214, %bb.ab ], [ %.3131189, %.thread183 ]
  %.2140200 = phi i32 [ %.2140213, %bb.ab ], [ %i.es, %.thread183 ]
  %.9 = phi ptr [ %.8, %bb.ab ], [ %.5147188, %.thread183 ] ; 2 uses
  %.4137 = phi i32 [ %.3136, %bb.ab ], [ %i.bl, %.thread183 ] ; 2 uses
  %.not163 = icmp eq i32 %.4137, 0
  br i1 %.not163, label %.thread193.thread, label %bb.ac

bb.ac:                                            ; preds = %.thread193.thread222, %.thread193
  %.4137230 = phi i32 [ 2, %.thread193.thread222 ], [ %.4137, %.thread193 ]
  %.9229 = phi ptr [ %i.em, %.thread193.thread222 ], [ %.9, %.thread193 ]
  %.4132201228 = phi i32 [ %.3131181, %.thread193.thread222 ], [ %.4132201, %.thread193 ]
  %i.ff = load ptr, ptr %i.y, align 8, !tbaa !41
  call void @ucnv_fromUWriteBytes_78(ptr noundef %i.o, ptr noundef nonnull %i.c, i32 noundef %.4137230, ptr noundef nonnull %i.a, ptr noundef %i.ff, ptr noundef nonnull %i.b, i32 noundef %.4132201228, ptr noundef %1)
  %i.fg = load ptr, ptr %i.y, align 8, !tbaa !41
  %i.fh = load ptr, ptr %i.a, align 8, !tbaa !43  ; 2 uses
  %i.fi = ptrtoint ptr %i.fg to i64
  %i.fj = ptrtoint ptr %i.fh to i64
  %i.fk = sub i64 %i.fi, %i.fj
  %i.fl = trunc i64 %i.fk to i32
  br label %.thread193.thread

.thread193.thread:                                ; preds = %.thread175, %bb.ac, %.thread193
  %i.fm = phi ptr [ %i.fh, %bb.ac ], [ %i.fe, %.thread193 ], [ %i.ej, %.thread175 ]
  %.9221 = phi ptr [ %.9229, %bb.ac ], [ %.9, %.thread193 ], [ %.5147180, %.thread175 ] ; 2 uses
  %.3141 = phi i32 [ %i.fl, %bb.ac ], [ %.2140200, %.thread193 ], [ %i.bj, %.thread175 ]
  %i.fn = load i32, ptr %1, align 4, !tbaa !17
  %i.fo = icmp sgt i32 %i.fn, 0
  br i1 %i.fo, label %bb.af, label %bb.ad

bb.ad:                                            ; preds = %.thread193.thread
  %i.fp = load ptr, ptr %i.f, align 8, !tbaa !39
  %i.fq = icmp ult ptr %.9221, %i.fp
  %i.fr = icmp eq i32 %.3141, 0
  %or.cond9 = select i1 %i.fq, i1 %i.fr, i1 false
  br i1 %or.cond9, label %bb.ae, label %bb.af

bb.ae:                                            ; preds = %bb.ad
  store i32 15, ptr %1, align 4, !tbaa !17
  br label %bb.af

bb.af:                                            ; preds = %bb.ae, %bb.ad, %.thread193.thread
  store ptr %.9221, ptr %i.d, align 8, !tbaa !38
  store ptr %i.fm, ptr %i.w, align 8, !tbaa !42
  %i.fs = load ptr, ptr %i.b, align 8, !tbaa !45
  store ptr %i.fs, ptr %i.ae, align 8, !tbaa !44
  br label %bb.ag

bb.ag:                                            ; preds = %bb.a, %bb.af, %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #9
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal noundef range(i32 -9, 10559488) i32 @_ZL20_UTF16LEGetNextUCharP23UConverterToUnicodeArgsP10UErrorCode(ptr nofree noundef captures(none) %0, ptr nofree noundef writeonly captures(none) %1) #3 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !23   ; 8 uses
  %2 = ptrtoaddr ptr %i.b to i64
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 76
  %i.d = load i32, ptr %i.c, align 4, !tbaa !14
  %i.e = icmp slt i32 %i.d, 8
  br i1 %i.e, label %bb.l, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !24   ; 16 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !25   ; 5 uses
  %.not = icmp ult ptr %i.g, %i.i
  br i1 %.not, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  store i32 8, ptr %1, align 4, !tbaa !17
  br label %bb.l

bb.d:                                             ; preds = %bb.b
  %i.j = getelementptr inbounds nuw i8, ptr %i.g, i64 2 ; 4 uses
  %i.k = icmp ugt ptr %i.j, %i.i
  %i.l = getelementptr inbounds nuw i8, ptr %i.g, i64 1 ; 3 uses
  br i1 %i.k, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.m = load i8, ptr %i.g, align 1, !tbaa !30
  %i.n = getelementptr inbounds nuw i8, ptr %i.b, i64 65
  store i8 %i.m, ptr %i.n, align 1, !tbaa !30
  %i.o = load ptr, ptr %i.a, align 8, !tbaa !23
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 64
  store i8 1, ptr %i.p, align 8, !tbaa !31
  store ptr %i.l, ptr %i.f, align 8, !tbaa !24
  store i32 11, ptr %1, align 4, !tbaa !17
  br label %bb.l

bb.f:                                             ; preds = %bb.d
  %i.q = load i8, ptr %i.l, align 1, !tbaa !30
  %i.r = zext i8 %i.q to i32                      ; 3 uses
  %i.s = shl nuw nsw i32 %i.r, 8
  %i.t = load i8, ptr %i.g, align 1, !tbaa !30
  %i.u = zext i8 %i.t to i32
  %i.v = or disjoint i32 %i.s, %i.u               ; 2 uses
  %i.w = and i32 %i.r, 248
  %i.x = icmp eq i32 %i.w, 216
  br i1 %i.x, label %bb.g, label %bb.k

bb.g:                                             ; preds = %bb.f
  %i.y = and i32 %i.r, 4
  %i.z = icmp eq i32 %i.y, 0
  br i1 %i.z, label %bb.h, label %.thread

bb.h:                                             ; preds = %bb.g
  %i.aa = getelementptr inbounds nuw i8, ptr %i.g, i64 4 ; 2 uses
  %.not58 = icmp ugt ptr %i.aa, %i.i
  br i1 %.not58, label %iter.check, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ab = getelementptr inbounds nuw i8, ptr %i.g, i64 3
  %i.ac = load i8, ptr %i.ab, align 1, !tbaa !30
  %i.ad = zext i8 %i.ac to i32                    ; 2 uses
  %i.ae = and i32 %i.ad, 252
  %i.af = icmp eq i32 %i.ae, 220
  br i1 %i.af, label %bb.j, label %.thread

iter.check:                                       ; preds = %bb.h
  %i.ag = getelementptr inbounds nuw i8, ptr %i.b, i64 65 ; 6 uses
  %i.ah = ptrtoint ptr %i.i to i64                ; 3 uses
  %i.ai = ptrtoint ptr %i.g to i64                ; 2 uses
  %i.aj = sub i64 %i.ah, %i.ai                    ; 9 uses
  %i.ak = trunc i64 %i.aj to i8
  %i.al = getelementptr inbounds nuw i8, ptr %i.b, i64 64
  store i8 %i.ak, ptr %i.al, align 8, !tbaa !31
  %scevgep = getelementptr i8, ptr %i.g, i64 %i.aj
  %min.iters.check = icmp ult i64 %i.aj, 8
  br i1 %min.iters.check, label %vec.epilog.scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %iter.check
  %i.am = sub i64 %2, %i.ai
  %i.an = add i64 %i.am, 64
  %diff.check = icmp ult i64 %i.an, 31
  br i1 %diff.check, label %vec.epilog.scalar.ph.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %vector.memcheck
  %min.iters.check69 = icmp ult i64 %i.aj, 32
  br i1 %min.iters.check69, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.ao = and i64 %i.aj, 24
  %n.vec = and i64 %i.aj, -32                     ; 5 uses
  %i.ap = getelementptr i8, ptr %i.g, i64 %n.vec
  %i.aq = getelementptr i8, ptr %i.ag, i64 %n.vec
  br label %vector.body

vector.body:                                      ; preds = %vector.ph, %vector.body
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %next.gep = getelementptr i8, ptr %i.g, i64 %index ; 2 uses
  %next.gep70 = getelementptr i8, ptr %i.ag, i64 %index ; 2 uses
  %i.ar = getelementptr i8, ptr %next.gep, i64 16
  %wide.load = load <16 x i8>, ptr %next.gep, align 1, !tbaa !30
  %wide.load71 = load <16 x i8>, ptr %i.ar, align 1, !tbaa !30
  %i.as = getelementptr i8, ptr %next.gep70, i64 16
  store <16 x i8> %wide.load, ptr %next.gep70, align 1, !tbaa !30
  store <16 x i8> %wide.load71, ptr %i.as, align 1, !tbaa !30
  %index.next = add nuw i64 %index, 32            ; 2 uses
  %i.at = icmp eq i64 %index.next, %n.vec
  br i1 %i.at, label %middle.block, label %vector.body, !llvm.loop !70

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.aj, %n.vec
  br i1 %cmp.n, label %.thread62, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.ao, 0
  br i1 %min.epilog.iters.check, label %vec.epilog.scalar.ph.preheader, label %vec.epilog.ph, !prof !49

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec73 = and i64 %i.aj, -8                    ; 4 uses
  %i.au = getelementptr i8, ptr %i.g, i64 %n.vec73
  %i.av = getelementptr i8, ptr %i.ag, i64 %n.vec73
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index74 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next78, %vec.epilog.vector.body ] ; 3 uses
  %next.gep75 = getelementptr i8, ptr %i.g, i64 %index74
  %next.gep76 = getelementptr i8, ptr %i.ag, i64 %index74
  %wide.load77 = load <8 x i8>, ptr %next.gep75, align 1, !tbaa !30
  store <8 x i8> %wide.load77, ptr %next.gep76, align 1, !tbaa !30
  %index.next78 = add nuw i64 %index74, 8         ; 2 uses
  %i.aw = icmp eq i64 %index.next78, %n.vec73
  br i1 %i.aw, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !71

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n79 = icmp eq i64 %i.aj, %n.vec73
  br i1 %cmp.n79, label %.thread62, label %vec.epilog.scalar.ph.preheader

vec.epilog.scalar.ph.preheader:                   ; preds = %iter.check, %vector.memcheck, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.151.ph = phi ptr [ %i.g, %iter.check ], [ %i.g, %vector.memcheck ], [ %i.ap, %vec.epilog.iter.check ], [ %i.au, %vec.epilog.middle.block ] ; 3 uses
  %.048.ph = phi ptr [ %i.ag, %iter.check ], [ %i.ag, %vector.memcheck ], [ %i.aq, %vec.epilog.iter.check ], [ %i.av, %vec.epilog.middle.block ] ; 2 uses
  %.151.ph82 = ptrtoaddr ptr %.151.ph to i64      ; 2 uses
  %i.ax = sub i64 %i.ah, %.151.ph82
  %xtraiter = and i64 %i.ax, 7                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %vec.epilog.scalar.ph.prol.loopexit, label %vec.epilog.scalar.ph.prol

vec.epilog.scalar.ph.prol:                        ; preds = %vec.epilog.scalar.ph.preheader, %vec.epilog.scalar.ph.prol
  %.151.prol = phi ptr [ %i.ay, %vec.epilog.scalar.ph.prol ], [ %.151.ph, %vec.epilog.scalar.ph.preheader ] ; 2 uses
  %.048.prol = phi ptr [ %i.ba, %vec.epilog.scalar.ph.prol ], [ %.048.ph, %vec.epilog.scalar.ph.preheader ] ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %vec.epilog.scalar.ph.prol ], [ 0, %vec.epilog.scalar.ph.preheader ]
  %i.ay = getelementptr inbounds nuw i8, ptr %.151.prol, i64 1 ; 2 uses
  %i.az = load i8, ptr %.151.prol, align 1, !tbaa !30
  %i.ba = getelementptr inbounds nuw i8, ptr %.048.prol, i64 1 ; 2 uses
  store i8 %i.az, ptr %.048.prol, align 1, !tbaa !30
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %vec.epilog.scalar.ph.prol.loopexit, label %vec.epilog.scalar.ph.prol, !llvm.loop !72

vec.epilog.scalar.ph.prol.loopexit:               ; preds = %vec.epilog.scalar.ph.prol, %vec.epilog.scalar.ph.preheader
  %.151.unr = phi ptr [ %.151.ph, %vec.epilog.scalar.ph.preheader ], [ %i.ay, %vec.epilog.scalar.ph.prol ]
  %.048.unr = phi ptr [ %.048.ph, %vec.epilog.scalar.ph.preheader ], [ %i.ba, %vec.epilog.scalar.ph.prol ]
  %i.bb = sub i64 %.151.ph82, %i.ah
  %i.bc = icmp ugt i64 %i.bb, -8
  br i1 %i.bc, label %.thread62, label %vec.epilog.scalar.ph

vec.epilog.scalar.ph:                             ; preds = %vec.epilog.scalar.ph.prol.loopexit, %vec.epilog.scalar.ph
  %.151 = phi ptr [ %i.by, %vec.epilog.scalar.ph ], [ %.151.unr, %vec.epilog.scalar.ph.prol.loopexit ] ; 9 uses
  %.048 = phi ptr [ %i.ca, %vec.epilog.scalar.ph ], [ %.048.unr, %vec.epilog.scalar.ph.prol.loopexit ] ; 9 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %.151, i64 1
  %i.be = load i8, ptr %.151, align 1, !tbaa !30
  %i.bf = getelementptr inbounds nuw i8, ptr %.048, i64 1
  store i8 %i.be, ptr %.048, align 1, !tbaa !30
  %i.bg = getelementptr inbounds nuw i8, ptr %.151, i64 2
  %i.bh = load i8, ptr %i.bd, align 1, !tbaa !30
  %i.bi = getelementptr inbounds nuw i8, ptr %.048, i64 2
  store i8 %i.bh, ptr %i.bf, align 1, !tbaa !30
  %i.bj = getelementptr inbounds nuw i8, ptr %.151, i64 3
  %i.bk = load i8, ptr %i.bg, align 1, !tbaa !30
  %i.bl = getelementptr inbounds nuw i8, ptr %.048, i64 3
  store i8 %i.bk, ptr %i.bi, align 1, !tbaa !30
  %i.bm = getelementptr inbounds nuw i8, ptr %.151, i64 4
  %i.bn = load i8, ptr %i.bj, align 1, !tbaa !30
  %i.bo = getelementptr inbounds nuw i8, ptr %.048, i64 4
  store i8 %i.bn, ptr %i.bl, align 1, !tbaa !30
  %i.bp = getelementptr inbounds nuw i8, ptr %.151, i64 5
  %i.bq = load i8, ptr %i.bm, align 1, !tbaa !30
  %i.br = getelementptr inbounds nuw i8, ptr %.048, i64 5
  store i8 %i.bq, ptr %i.bo, align 1, !tbaa !30
  %i.bs = getelementptr inbounds nuw i8, ptr %.151, i64 6
  %i.bt = load i8, ptr %i.bp, align 1, !tbaa !30
  %i.bu = getelementptr inbounds nuw i8, ptr %.048, i64 6
  store i8 %i.bt, ptr %i.br, align 1, !tbaa !30
  %i.bv = getelementptr inbounds nuw i8, ptr %.151, i64 7
  %i.bw = load i8, ptr %i.bs, align 1, !tbaa !30
  %i.bx = getelementptr inbounds nuw i8, ptr %.048, i64 7
  store i8 %i.bw, ptr %i.bu, align 1, !tbaa !30
  %i.by = getelementptr inbounds nuw i8, ptr %.151, i64 8 ; 2 uses
  %i.bz = load i8, ptr %i.bv, align 1, !tbaa !30
  %i.ca = getelementptr inbounds nuw i8, ptr %.048, i64 8
  store i8 %i.bz, ptr %i.bx, align 1, !tbaa !30
  %exitcond.not.7 = icmp eq ptr %i.by, %i.i
  br i1 %exitcond.not.7, label %.thread62, label %vec.epilog.scalar.ph, !llvm.loop !73

.thread62:                                        ; preds = %vec.epilog.scalar.ph.prol.loopexit, %vec.epilog.scalar.ph, %vec.epilog.middle.block, %middle.block
  store i32 11, ptr %1, align 4, !tbaa !17
  br label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.cb = shl nuw nsw i32 %i.ad, 8
  %i.cc = load i8, ptr %i.j, align 1, !tbaa !30
  %i.cd = zext i8 %i.cc to i32
  %i.ce = or disjoint i32 %i.cb, %i.cd
  %i.cf = shl nuw nsw i32 %i.v, 10
  %i.cg = add nsw i32 %i.cf, -56613888
  %i.ch = add nuw nsw i32 %i.cg, %i.ce
  br label %bb.k

.thread:                                          ; preds = %bb.g, %bb.i
  %i.ci = getelementptr inbounds nuw i8, ptr %i.b, i64 65
  %i.cj = getelementptr inbounds nuw i8, ptr %i.b, i64 64
  store i8 2, ptr %i.cj, align 8, !tbaa !31
  %i.ck = load i8, ptr %i.g, align 1, !tbaa !30
  store i8 %i.ck, ptr %i.ci, align 1, !tbaa !30
  %i.cl = load i8, ptr %i.l, align 1, !tbaa !30
  %i.cm = getelementptr inbounds nuw i8, ptr %i.b, i64 66
  store i8 %i.cl, ptr %i.cm, align 2, !tbaa !30
  store i32 12, ptr %1, align 4, !tbaa !17
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %.thread62, %.thread, %bb.f
  %.3 = phi ptr [ %i.j, %.thread ], [ %i.aa, %bb.j ], [ %i.j, %bb.f ], [ %scevgep, %.thread62 ]
  %.2 = phi i32 [ 65535, %.thread ], [ %i.ch, %bb.j ], [ %i.v, %bb.f ], [ 65535, %.thread62 ]
  store ptr %.3, ptr %i.f, align 8, !tbaa !24
  br label %bb.l

bb.l:                                             ; preds = %bb.a, %bb.k, %bb.e, %bb.c
  %.0 = phi i32 [ %.2, %bb.k ], [ 65535, %bb.c ], [ 65535, %bb.e ], [ -9, %bb.a ]
  ret i32 %.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define internal noundef nonnull ptr @_ZL15_UTF16LEGetNamePK10UConverter(ptr nofree noundef readonly captures(none) %0) #4 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.b = load i32, ptr %i.a, align 8, !tbaa !13
  %i.c = and i32 %i.b, 15
  %i.d = icmp eq i32 %i.c, 0
  %.str.2..str.3 = select i1 %i.d, ptr @.str.2, ptr @.str.3
  ret ptr %.str.2..str.3
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal void @_ZL10_UTF16OpenP10UConverterP18UConverterLoadArgsP10UErrorCode(ptr nofree noundef captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef writeonly captures(none) %2) #7 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.b = load i32, ptr %i.a, align 8, !tbaa !13
  %i.c = and i32 %i.b, 15                         ; 2 uses
  %i.d = icmp samesign ult i32 %i.c, 3
  br i1 %i.d, label %bb.b, label %bb.f

bb.b:                                             ; preds = %bb.a
  %i.e = icmp eq i32 %i.c, 2
  br i1 %i.e, label %bb.c, label %bb.e

bb.c:                                             ; preds = %bb.b
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.g = load i8, ptr %i.f, align 8, !tbaa !75
  %.not = icmp eq i8 %i.g, 0
  br i1 %.not, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 48
  store ptr @_UTF16v2Data_78, ptr %i.h, align 8, !tbaa !51
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !76
  store i32 65023, ptr %i.j, align 1
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c, %bb.b
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 76
  store i32 0, ptr %i.k, align 4, !tbaa !14
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 80
  store i32 1, ptr %i.l, align 8, !tbaa !15
  br label %bb.g

bb.f:                                             ; preds = %bb.a
  store i32 1, ptr %2, align 4, !tbaa !17
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define internal void @_ZL11_UTF16ResetP10UConverter21UConverterResetChoice(ptr nofree noundef writeonly captures(none) %0, i32 noundef %1) #8 {
bb.a:
  %i.a = icmp slt i32 %1, 2
  br i1 %i.a, label %bb.b, label %.thread

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 76
  store i32 0, ptr %i.b, align 4, !tbaa !14
  %.not = icmp eq i32 %1, 1
  br i1 %.not, label %bb.c, label %.thread

.thread:                                          ; preds = %bb.a, %bb.b
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 80
  store i32 1, ptr %i.c, align 8, !tbaa !15
  br label %bb.c

bb.c:                                             ; preds = %.thread, %bb.b
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal noundef range(i32 -9, 10559488) i32 @_ZL18_UTF16GetNextUCharP23UConverterToUnicodeArgsP10UErrorCode(ptr nofree noundef captures(none) %0, ptr nofree noundef writeonly captures(none) %1) #3 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !23   ; 14 uses
  %2 = ptrtoaddr ptr %i.b to i64                  ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 76
  %i.d = load i32, ptr %i.c, align 4, !tbaa !14
  switch i32 %i.d, label %_ZL20_UTF16BEGetNextUCharP23UConverterToUnicodeArgsP10UErrorCode.exit [
    i32 8, label %bb.b
    i32 9, label %bb.l
  ]

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !24   ; 17 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !25   ; 5 uses
  %.not.i = icmp ult ptr %i.f, %i.h
  br i1 %.not.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  store i32 8, ptr %1, align 4, !tbaa !17
  br label %_ZL20_UTF16BEGetNextUCharP23UConverterToUnicodeArgsP10UErrorCode.exit

bb.d:                                             ; preds = %bb.b
  %i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 2 ; 4 uses
  %i.j = icmp ugt ptr %i.i, %i.h
  br i1 %i.j, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.k = getelementptr inbounds nuw i8, ptr %i.f, i64 1
  %i.l = load i8, ptr %i.f, align 1, !tbaa !30
  %i.m = getelementptr inbounds nuw i8, ptr %i.b, i64 65
  store i8 %i.l, ptr %i.m, align 1, !tbaa !30
  %i.n = load ptr, ptr %i.a, align 8, !tbaa !23
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 64
  store i8 1, ptr %i.o, align 8, !tbaa !31
  store ptr %i.k, ptr %i.e, align 8, !tbaa !24
  store i32 11, ptr %1, align 4, !tbaa !17
  br label %_ZL20_UTF16BEGetNextUCharP23UConverterToUnicodeArgsP10UErrorCode.exit

bb.f:                                             ; preds = %bb.d
  %i.p = load i8, ptr %i.f, align 1, !tbaa !30
  %i.q = zext i8 %i.p to i32                      ; 3 uses
  %i.r = shl nuw nsw i32 %i.q, 8
  %i.s = getelementptr inbounds nuw i8, ptr %i.f, i64 1 ; 2 uses
  %i.t = load i8, ptr %i.s, align 1, !tbaa !30
  %i.u = zext i8 %i.t to i32
  %i.v = or disjoint i32 %i.r, %i.u               ; 2 uses
  %i.w = and i32 %i.q, 248
  %i.x = icmp eq i32 %i.w, 216
  br i1 %i.x, label %bb.g, label %bb.k

bb.g:                                             ; preds = %bb.f
  %i.y = and i32 %i.q, 4
  %i.z = icmp eq i32 %i.y, 0
  br i1 %i.z, label %bb.h, label %.thread.i

bb.h:                                             ; preds = %bb.g
  %i.aa = getelementptr inbounds nuw i8, ptr %i.f, i64 4 ; 2 uses
  %.not58.i = icmp ugt ptr %i.aa, %i.h
  br i1 %.not58.i, label %iter.check55, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ab = load i8, ptr %i.i, align 1, !tbaa !30
  %i.ac = zext i8 %i.ab to i32                    ; 2 uses
  %i.ad = and i32 %i.ac, 252
  %i.ae = icmp eq i32 %i.ad, 220
  br i1 %i.ae, label %bb.j, label %.thread.i

iter.check55:                                     ; preds = %bb.h
  %i.af = getelementptr inbounds nuw i8, ptr %i.b, i64 65 ; 6 uses
  %i.ag = ptrtoint ptr %i.h to i64                ; 3 uses
  %i.ah = ptrtoint ptr %i.f to i64                ; 2 uses
  %i.ai = sub i64 %i.ag, %i.ah                    ; 9 uses
  %i.aj = trunc i64 %i.ai to i8
  %i.ak = getelementptr inbounds nuw i8, ptr %i.b, i64 64
  store i8 %i.aj, ptr %i.ak, align 8, !tbaa !31
  %min.iters.check39 = icmp ult i64 %i.ai, 8
  br i1 %min.iters.check39, label %vec.epilog.scalar.ph56.preheader, label %vector.memcheck37

vector.memcheck37:                                ; preds = %iter.check55
  %i.al = sub i64 %2, %i.ah
  %i.am = add i64 %i.al, 64
  %diff.check38 = icmp ult i64 %i.am, 31
  br i1 %diff.check38, label %vec.epilog.scalar.ph56.preheader, label %vector.main.loop.iter.check40

vector.main.loop.iter.check40:                    ; preds = %vector.memcheck37
  %min.iters.check41 = icmp ult i64 %i.ai, 32
  br i1 %min.iters.check41, label %vec.epilog.ph59, label %vector.ph42

vector.ph42:                                      ; preds = %vector.main.loop.iter.check40
  %i.an = and i64 %i.ai, 24
  %n.vec43 = and i64 %i.ai, -32                   ; 5 uses
  %i.ao = getelementptr i8, ptr %i.f, i64 %n.vec43
  %i.ap = getelementptr i8, ptr %i.af, i64 %n.vec43
  br label %vector.body44

vector.body44:                                    ; preds = %vector.ph42, %vector.body44
  %index45 = phi i64 [ 0, %vector.ph42 ], [ %index.next50, %vector.body44 ] ; 3 uses
  %next.gep46 = getelementptr i8, ptr %i.f, i64 %index45 ; 2 uses
  %next.gep47 = getelementptr i8, ptr %i.af, i64 %index45 ; 2 uses
  %i.aq = getelementptr i8, ptr %next.gep46, i64 16
  %wide.load48 = load <16 x i8>, ptr %next.gep46, align 1, !tbaa !30
  %wide.load49 = load <16 x i8>, ptr %i.aq, align 1, !tbaa !30
  %i.ar = getelementptr i8, ptr %next.gep47, i64 16
  store <16 x i8> %wide.load48, ptr %next.gep47, align 1, !tbaa !30
  store <16 x i8> %wide.load49, ptr %i.ar, align 1, !tbaa !30
  %index.next50 = add nuw i64 %index45, 32        ; 2 uses
  %i.as = icmp eq i64 %index.next50, %n.vec43
  br i1 %i.as, label %middle.block51, label %vector.body44, !llvm.loop !77

middle.block51:                                   ; preds = %vector.body44
  %cmp.n52 = icmp eq i64 %i.ai, %n.vec43
  br i1 %cmp.n52, label %.thread62.i, label %vec.epilog.iter.check57

vec.epilog.iter.check57:                          ; preds = %middle.block51
  %min.epilog.iters.check58 = icmp eq i64 %i.an, 0
  br i1 %min.epilog.iters.check58, label %vec.epilog.scalar.ph56.preheader, label %vec.epilog.ph59, !prof !49

vec.epilog.ph59:                                  ; preds = %vector.main.loop.iter.check40, %vec.epilog.iter.check57
  %vec.epilog.resume.val53 = phi i64 [ %n.vec43, %vec.epilog.iter.check57 ], [ 0, %vector.main.loop.iter.check40 ]
  %n.vec60 = and i64 %i.ai, -8                    ; 4 uses
  %i.at = getelementptr i8, ptr %i.f, i64 %n.vec60
  %i.au = getelementptr i8, ptr %i.af, i64 %n.vec60
  br label %vec.epilog.vector.body61

vec.epilog.vector.body61:                         ; preds = %vec.epilog.vector.body61, %vec.epilog.ph59
  %index62 = phi i64 [ %vec.epilog.resume.val53, %vec.epilog.ph59 ], [ %index.next66, %vec.epilog.vector.body61 ] ; 3 uses
  %next.gep63 = getelementptr i8, ptr %i.f, i64 %index62
  %next.gep64 = getelementptr i8, ptr %i.af, i64 %index62
  %wide.load65 = load <8 x i8>, ptr %next.gep63, align 1, !tbaa !30
  store <8 x i8> %wide.load65, ptr %next.gep64, align 1, !tbaa !30
  %index.next66 = add nuw i64 %index62, 8         ; 2 uses
  %i.av = icmp eq i64 %index.next66, %n.vec60
  br i1 %i.av, label %vec.epilog.middle.block67, label %vec.epilog.vector.body61, !llvm.loop !78

vec.epilog.middle.block67:                        ; preds = %vec.epilog.vector.body61
  %cmp.n68 = icmp eq i64 %i.ai, %n.vec60
  br i1 %cmp.n68, label %.thread62.i, label %vec.epilog.scalar.ph56.preheader

vec.epilog.scalar.ph56.preheader:                 ; preds = %iter.check55, %vector.memcheck37, %vec.epilog.iter.check57, %vec.epilog.middle.block67
  %.151.i.ph = phi ptr [ %i.f, %iter.check55 ], [ %i.f, %vector.memcheck37 ], [ %i.ao, %vec.epilog.iter.check57 ], [ %i.at, %vec.epilog.middle.block67 ] ; 3 uses
  %.048.i.ph = phi ptr [ %i.af, %iter.check55 ], [ %i.af, %vector.memcheck37 ], [ %i.ap, %vec.epilog.iter.check57 ], [ %i.au, %vec.epilog.middle.block67 ] ; 2 uses
  %.151.i.ph72 = ptrtoaddr ptr %.151.i.ph to i64  ; 2 uses
  %i.aw = sub i64 %i.ag, %.151.i.ph72
  %xtraiter73 = and i64 %i.aw, 7                  ; 2 uses
  %lcmp.mod74.not = icmp eq i64 %xtraiter73, 0
  br i1 %lcmp.mod74.not, label %vec.epilog.scalar.ph56.prol.loopexit, label %vec.epilog.scalar.ph56.prol

vec.epilog.scalar.ph56.prol:                      ; preds = %vec.epilog.scalar.ph56.preheader, %vec.epilog.scalar.ph56.prol
  %.151.i.prol = phi ptr [ %i.ax, %vec.epilog.scalar.ph56.prol ], [ %.151.i.ph, %vec.epilog.scalar.ph56.preheader ] ; 2 uses
  %.048.i.prol = phi ptr [ %i.az, %vec.epilog.scalar.ph56.prol ], [ %.048.i.ph, %vec.epilog.scalar.ph56.preheader ] ; 2 uses
  %prol.iter75 = phi i64 [ %prol.iter75.next, %vec.epilog.scalar.ph56.prol ], [ 0, %vec.epilog.scalar.ph56.preheader ]
  %i.ax = getelementptr inbounds nuw i8, ptr %.151.i.prol, i64 1 ; 2 uses
  %i.ay = load i8, ptr %.151.i.prol, align 1, !tbaa !30
  %i.az = getelementptr inbounds nuw i8, ptr %.048.i.prol, i64 1 ; 2 uses
  store i8 %i.ay, ptr %.048.i.prol, align 1, !tbaa !30
  %prol.iter75.next = add i64 %prol.iter75, 1     ; 2 uses
  %prol.iter75.cmp.not = icmp eq i64 %prol.iter75.next, %xtraiter73
  br i1 %prol.iter75.cmp.not, label %vec.epilog.scalar.ph56.prol.loopexit, label %vec.epilog.scalar.ph56.prol, !llvm.loop !79

vec.epilog.scalar.ph56.prol.loopexit:             ; preds = %vec.epilog.scalar.ph56.prol, %vec.epilog.scalar.ph56.preheader
  %.151.i.unr = phi ptr [ %.151.i.ph, %vec.epilog.scalar.ph56.preheader ], [ %i.ax, %vec.epilog.scalar.ph56.prol ]
  %.048.i.unr = phi ptr [ %.048.i.ph, %vec.epilog.scalar.ph56.preheader ], [ %i.az, %vec.epilog.scalar.ph56.prol ]
  %i.ba = sub i64 %.151.i.ph72, %i.ag
  %i.bb = icmp ugt i64 %i.ba, -8
  br i1 %i.bb, label %.thread62.i, label %vec.epilog.scalar.ph56

vec.epilog.scalar.ph56:                           ; preds = %vec.epilog.scalar.ph56.prol.loopexit, %vec.epilog.scalar.ph56
  %.151.i = phi ptr [ %i.bx, %vec.epilog.scalar.ph56 ], [ %.151.i.unr, %vec.epilog.scalar.ph56.prol.loopexit ] ; 9 uses
  %.048.i = phi ptr [ %i.bz, %vec.epilog.scalar.ph56 ], [ %.048.i.unr, %vec.epilog.scalar.ph56.prol.loopexit ] ; 9 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %.151.i, i64 1
  %i.bd = load i8, ptr %.151.i, align 1, !tbaa !30
  %i.be = getelementptr inbounds nuw i8, ptr %.048.i, i64 1
  store i8 %i.bd, ptr %.048.i, align 1, !tbaa !30
  %i.bf = getelementptr inbounds nuw i8, ptr %.151.i, i64 2
  %i.bg = load i8, ptr %i.bc, align 1, !tbaa !30
  %i.bh = getelementptr inbounds nuw i8, ptr %.048.i, i64 2
  store i8 %i.bg, ptr %i.be, align 1, !tbaa !30
  %i.bi = getelementptr inbounds nuw i8, ptr %.151.i, i64 3
  %i.bj = load i8, ptr %i.bf, align 1, !tbaa !30
  %i.bk = getelementptr inbounds nuw i8, ptr %.048.i, i64 3
  store i8 %i.bj, ptr %i.bh, align 1, !tbaa !30
  %i.bl = getelementptr inbounds nuw i8, ptr %.151.i, i64 4
  %i.bm = load i8, ptr %i.bi, align 1, !tbaa !30
  %i.bn = getelementptr inbounds nuw i8, ptr %.048.i, i64 4
  store i8 %i.bm, ptr %i.bk, align 1, !tbaa !30
  %i.bo = getelementptr inbounds nuw i8, ptr %.151.i, i64 5
  %i.bp = load i8, ptr %i.bl, align 1, !tbaa !30
  %i.bq = getelementptr inbounds nuw i8, ptr %.048.i, i64 5
  store i8 %i.bp, ptr %i.bn, align 1, !tbaa !30
  %i.br = getelementptr inbounds nuw i8, ptr %.151.i, i64 6
  %i.bs = load i8, ptr %i.bo, align 1, !tbaa !30
  %i.bt = getelementptr inbounds nuw i8, ptr %.048.i, i64 6
  store i8 %i.bs, ptr %i.bq, align 1, !tbaa !30
  %i.bu = getelementptr inbounds nuw i8, ptr %.151.i, i64 7
  %i.bv = load i8, ptr %i.br, align 1, !tbaa !30
  %i.bw = getelementptr inbounds nuw i8, ptr %.048.i, i64 7
  store i8 %i.bv, ptr %i.bt, align 1, !tbaa !30
  %i.bx = getelementptr inbounds nuw i8, ptr %.151.i, i64 8 ; 2 uses
  %i.by = load i8, ptr %i.bu, align 1, !tbaa !30
  %i.bz = getelementptr inbounds nuw i8, ptr %.048.i, i64 8
  store i8 %i.by, ptr %i.bw, align 1, !tbaa !30
  %exitcond.not.i.7 = icmp eq ptr %i.bx, %i.h
  br i1 %exitcond.not.i.7, label %.thread62.i, label %vec.epilog.scalar.ph56, !llvm.loop !80

.thread62.i:                                      ; preds = %vec.epilog.scalar.ph56.prol.loopexit, %vec.epilog.scalar.ph56, %vec.epilog.middle.block67, %middle.block51
  %scevgep.i = getelementptr i8, ptr %i.f, i64 %i.ai
  store i32 11, ptr %1, align 4, !tbaa !17
  br label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.ca = shl nuw nsw i32 %i.ac, 8
  %i.cb = getelementptr inbounds nuw i8, ptr %i.f, i64 3
  %i.cc = load i8, ptr %i.cb, align 1, !tbaa !30
  %i.cd = zext i8 %i.cc to i32
  %i.ce = or disjoint i32 %i.ca, %i.cd
  %i.cf = shl nuw nsw i32 %i.v, 10
  %i.cg = add nsw i32 %i.cf, -56613888
  %i.ch = add nuw nsw i32 %i.cg, %i.ce
  br label %bb.k

.thread.i:                                        ; preds = %bb.i, %bb.g
  %i.ci = getelementptr inbounds nuw i8, ptr %i.b, i64 65
  %i.cj = getelementptr inbounds nuw i8, ptr %i.b, i64 64
  store i8 2, ptr %i.cj, align 8, !tbaa !31
  %i.ck = load i8, ptr %i.f, align 1, !tbaa !30
  store i8 %i.ck, ptr %i.ci, align 1, !tbaa !30
  %i.cl = load i8, ptr %i.s, align 1, !tbaa !30
  %i.cm = getelementptr inbounds nuw i8, ptr %i.b, i64 66
  store i8 %i.cl, ptr %i.cm, align 2, !tbaa !30
  store i32 12, ptr %1, align 4, !tbaa !17
  br label %bb.k

bb.k:                                             ; preds = %.thread.i, %bb.j, %.thread62.i, %bb.f
  %.3.i = phi ptr [ %i.i, %.thread.i ], [ %i.aa, %bb.j ], [ %i.i, %bb.f ], [ %scevgep.i, %.thread62.i ]
  %.2.i = phi i32 [ 65535, %.thread.i ], [ %i.ch, %bb.j ], [ %i.v, %bb.f ], [ 65535, %.thread62.i ]
  store ptr %.3.i, ptr %i.e, align 8, !tbaa !24
  br label %_ZL20_UTF16BEGetNextUCharP23UConverterToUnicodeArgsP10UErrorCode.exit

bb.l:                                             ; preds = %bb.a
  %i.cn = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.co = load ptr, ptr %i.cn, align 8, !tbaa !24 ; 16 uses
  %i.cp = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.cq = load ptr, ptr %i.cp, align 8, !tbaa !25 ; 5 uses
  %.not.i5 = icmp ult ptr %i.co, %i.cq
  br i1 %.not.i5, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  store i32 8, ptr %1, align 4, !tbaa !17
  br label %_ZL20_UTF16BEGetNextUCharP23UConverterToUnicodeArgsP10UErrorCode.exit

bb.n:                                             ; preds = %bb.l
  %i.cr = getelementptr inbounds nuw i8, ptr %i.co, i64 2 ; 4 uses
  %i.cs = icmp ugt ptr %i.cr, %i.cq
  %i.ct = getelementptr inbounds nuw i8, ptr %i.co, i64 1 ; 3 uses
  br i1 %i.cs, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  %i.cu = load i8, ptr %i.co, align 1, !tbaa !30
  %i.cv = getelementptr inbounds nuw i8, ptr %i.b, i64 65
  store i8 %i.cu, ptr %i.cv, align 1, !tbaa !30
  %i.cw = load ptr, ptr %i.a, align 8, !tbaa !23
  %i.cx = getelementptr inbounds nuw i8, ptr %i.cw, i64 64
  store i8 1, ptr %i.cx, align 8, !tbaa !31
  store ptr %i.ct, ptr %i.cn, align 8, !tbaa !24
  store i32 11, ptr %1, align 4, !tbaa !17
  br label %_ZL20_UTF16BEGetNextUCharP23UConverterToUnicodeArgsP10UErrorCode.exit

bb.p:                                             ; preds = %bb.n
  %i.cy = load i8, ptr %i.ct, align 1, !tbaa !30
  %i.cz = zext i8 %i.cy to i32                    ; 3 uses
  %i.da = shl nuw nsw i32 %i.cz, 8
  %i.db = load i8, ptr %i.co, align 1, !tbaa !30
  %i.dc = zext i8 %i.db to i32
  %i.dd = or disjoint i32 %i.da, %i.dc            ; 2 uses
  %i.de = and i32 %i.cz, 248
  %i.df = icmp eq i32 %i.de, 216
  br i1 %i.df, label %bb.q, label %bb.u

bb.q:                                             ; preds = %bb.p
  %i.dg = and i32 %i.cz, 4
  %i.dh = icmp eq i32 %i.dg, 0
  br i1 %i.dh, label %bb.r, label %.thread.i9

bb.r:                                             ; preds = %bb.q
  %i.di = getelementptr inbounds nuw i8, ptr %i.co, i64 4 ; 2 uses
  %.not58.i10 = icmp ugt ptr %i.di, %i.cq
  br i1 %.not58.i10, label %iter.check, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.dj = getelementptr inbounds nuw i8, ptr %i.co, i64 3
  %i.dk = load i8, ptr %i.dj, align 1, !tbaa !30
  %i.dl = zext i8 %i.dk to i32                    ; 2 uses
  %i.dm = and i32 %i.dl, 252
  %i.dn = icmp eq i32 %i.dm, 220
  br i1 %i.dn, label %bb.t, label %.thread.i9

iter.check:                                       ; preds = %bb.r
  %i.do = getelementptr inbounds nuw i8, ptr %i.b, i64 65 ; 6 uses
  %i.dp = ptrtoint ptr %i.cq to i64               ; 3 uses
  %i.dq = ptrtoint ptr %i.co to i64               ; 2 uses
  %i.dr = sub i64 %i.dp, %i.dq                    ; 9 uses
  %i.ds = trunc i64 %i.dr to i8
  %i.dt = getelementptr inbounds nuw i8, ptr %i.b, i64 64
  store i8 %i.ds, ptr %i.dt, align 8, !tbaa !31
  %min.iters.check = icmp ult i64 %i.dr, 8
  br i1 %min.iters.check, label %vec.epilog.scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %iter.check
  %i.du = sub i64 %2, %i.dq
  %i.dv = add i64 %i.du, 64
  %diff.check = icmp ult i64 %i.dv, 31
  br i1 %diff.check, label %vec.epilog.scalar.ph.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %vector.memcheck
  %min.iters.check24 = icmp ult i64 %i.dr, 32
  br i1 %min.iters.check24, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.dw = and i64 %i.dr, 24
  %n.vec = and i64 %i.dr, -32                     ; 5 uses
  %i.dx = getelementptr i8, ptr %i.co, i64 %n.vec
  %i.dy = getelementptr i8, ptr %i.do, i64 %n.vec
  br label %vector.body

vector.body:                                      ; preds = %vector.ph, %vector.body
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %next.gep = getelementptr i8, ptr %i.co, i64 %index ; 2 uses
  %next.gep25 = getelementptr i8, ptr %i.do, i64 %index ; 2 uses
  %i.dz = getelementptr i8, ptr %next.gep, i64 16
  %wide.load = load <16 x i8>, ptr %next.gep, align 1, !tbaa !30
  %wide.load26 = load <16 x i8>, ptr %i.dz, align 1, !tbaa !30
  %i.ea = getelementptr i8, ptr %next.gep25, i64 16
  store <16 x i8> %wide.load, ptr %next.gep25, align 1, !tbaa !30
  store <16 x i8> %wide.load26, ptr %i.ea, align 1, !tbaa !30
  %index.next = add nuw i64 %index, 32            ; 2 uses
  %i.eb = icmp eq i64 %index.next, %n.vec
  br i1 %i.eb, label %middle.block, label %vector.body, !llvm.loop !81

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.dr, %n.vec
  br i1 %cmp.n, label %.thread62.i15, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.dw, 0
  br i1 %min.epilog.iters.check, label %vec.epilog.scalar.ph.preheader, label %vec.epilog.ph, !prof !49

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec28 = and i64 %i.dr, -8                    ; 4 uses
  %i.ec = getelementptr i8, ptr %i.co, i64 %n.vec28
  %i.ed = getelementptr i8, ptr %i.do, i64 %n.vec28
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index29 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next33, %vec.epilog.vector.body ] ; 3 uses
  %next.gep30 = getelementptr i8, ptr %i.co, i64 %index29
  %next.gep31 = getelementptr i8, ptr %i.do, i64 %index29
  %wide.load32 = load <8 x i8>, ptr %next.gep30, align 1, !tbaa !30
  store <8 x i8> %wide.load32, ptr %next.gep31, align 1, !tbaa !30
  %index.next33 = add nuw i64 %index29, 8         ; 2 uses
  %i.ee = icmp eq i64 %index.next33, %n.vec28
  br i1 %i.ee, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !82

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n34 = icmp eq i64 %i.dr, %n.vec28
  br i1 %cmp.n34, label %.thread62.i15, label %vec.epilog.scalar.ph.preheader

vec.epilog.scalar.ph.preheader:                   ; preds = %iter.check, %vector.memcheck, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.151.i12.ph = phi ptr [ %i.co, %iter.check ], [ %i.co, %vector.memcheck ], [ %i.dx, %vec.epilog.iter.check ], [ %i.ec, %vec.epilog.middle.block ] ; 3 uses
  %.048.i13.ph = phi ptr [ %i.do, %iter.check ], [ %i.do, %vector.memcheck ], [ %i.dy, %vec.epilog.iter.check ], [ %i.ed, %vec.epilog.middle.block ] ; 2 uses
  %.151.i12.ph71 = ptrtoaddr ptr %.151.i12.ph to i64 ; 2 uses
  %i.ef = sub i64 %i.dp, %.151.i12.ph71
  %xtraiter = and i64 %i.ef, 7                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %vec.epilog.scalar.ph.prol.loopexit, label %vec.epilog.scalar.ph.prol

vec.epilog.scalar.ph.prol:                        ; preds = %vec.epilog.scalar.ph.preheader, %vec.epilog.scalar.ph.prol
  %.151.i12.prol = phi ptr [ %i.eg, %vec.epilog.scalar.ph.prol ], [ %.151.i12.ph, %vec.epilog.scalar.ph.preheader ] ; 2 uses
  %.048.i13.prol = phi ptr [ %i.ei, %vec.epilog.scalar.ph.prol ], [ %.048.i13.ph, %vec.epilog.scalar.ph.preheader ] ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %vec.epilog.scalar.ph.prol ], [ 0, %vec.epilog.scalar.ph.preheader ]
  %i.eg = getelementptr inbounds nuw i8, ptr %.151.i12.prol, i64 1 ; 2 uses
  %i.eh = load i8, ptr %.151.i12.prol, align 1, !tbaa !30
  %i.ei = getelementptr inbounds nuw i8, ptr %.048.i13.prol, i64 1 ; 2 uses
  store i8 %i.eh, ptr %.048.i13.prol, align 1, !tbaa !30
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %vec.epilog.scalar.ph.prol.loopexit, label %vec.epilog.scalar.ph.prol, !llvm.loop !83

vec.epilog.scalar.ph.prol.loopexit:               ; preds = %vec.epilog.scalar.ph.prol, %vec.epilog.scalar.ph.preheader
  %.151.i12.unr = phi ptr [ %.151.i12.ph, %vec.epilog.scalar.ph.preheader ], [ %i.eg, %vec.epilog.scalar.ph.prol ]
  %.048.i13.unr = phi ptr [ %.048.i13.ph, %vec.epilog.scalar.ph.preheader ], [ %i.ei, %vec.epilog.scalar.ph.prol ]
  %i.ej = sub i64 %.151.i12.ph71, %i.dp
  %i.ek = icmp ugt i64 %i.ej, -8
  br i1 %i.ek, label %.thread62.i15, label %vec.epilog.scalar.ph

vec.epilog.scalar.ph:                             ; preds = %vec.epilog.scalar.ph.prol.loopexit, %vec.epilog.scalar.ph
  %.151.i12 = phi ptr [ %i.fg, %vec.epilog.scalar.ph ], [ %.151.i12.unr, %vec.epilog.scalar.ph.prol.loopexit ] ; 9 uses
  %.048.i13 = phi ptr [ %i.fi, %vec.epilog.scalar.ph ], [ %.048.i13.unr, %vec.epilog.scalar.ph.prol.loopexit ] ; 9 uses
  %i.el = getelementptr inbounds nuw i8, ptr %.151.i12, i64 1
  %i.em = load i8, ptr %.151.i12, align 1, !tbaa !30
  %i.en = getelementptr inbounds nuw i8, ptr %.048.i13, i64 1
  store i8 %i.em, ptr %.048.i13, align 1, !tbaa !30
  %i.eo = getelementptr inbounds nuw i8, ptr %.151.i12, i64 2
  %i.ep = load i8, ptr %i.el, align 1, !tbaa !30
  %i.eq = getelementptr inbounds nuw i8, ptr %.048.i13, i64 2
  store i8 %i.ep, ptr %i.en, align 1, !tbaa !30
  %i.er = getelementptr inbounds nuw i8, ptr %.151.i12, i64 3
  %i.es = load i8, ptr %i.eo, align 1, !tbaa !30
  %i.et = getelementptr inbounds nuw i8, ptr %.048.i13, i64 3
  store i8 %i.es, ptr %i.eq, align 1, !tbaa !30
  %i.eu = getelementptr inbounds nuw i8, ptr %.151.i12, i64 4
  %i.ev = load i8, ptr %i.er, align 1, !tbaa !30
  %i.ew = getelementptr inbounds nuw i8, ptr %.048.i13, i64 4
  store i8 %i.ev, ptr %i.et, align 1, !tbaa !30
  %i.ex = getelementptr inbounds nuw i8, ptr %.151.i12, i64 5
  %i.ey = load i8, ptr %i.eu, align 1, !tbaa !30
  %i.ez = getelementptr inbounds nuw i8, ptr %.048.i13, i64 5
  store i8 %i.ey, ptr %i.ew, align 1, !tbaa !30
  %i.fa = getelementptr inbounds nuw i8, ptr %.151.i12, i64 6
  %i.fb = load i8, ptr %i.ex, align 1, !tbaa !30
  %i.fc = getelementptr inbounds nuw i8, ptr %.048.i13, i64 6
  store i8 %i.fb, ptr %i.ez, align 1, !tbaa !30
  %i.fd = getelementptr inbounds nuw i8, ptr %.151.i12, i64 7
  %i.fe = load i8, ptr %i.fa, align 1, !tbaa !30
  %i.ff = getelementptr inbounds nuw i8, ptr %.048.i13, i64 7
  store i8 %i.fe, ptr %i.fc, align 1, !tbaa !30
  %i.fg = getelementptr inbounds nuw i8, ptr %.151.i12, i64 8 ; 2 uses
  %i.fh = load i8, ptr %i.fd, align 1, !tbaa !30
  %i.fi = getelementptr inbounds nuw i8, ptr %.048.i13, i64 8
  store i8 %i.fh, ptr %i.ff, align 1, !tbaa !30
  %exitcond.not.i14.7 = icmp eq ptr %i.fg, %i.cq
  br i1 %exitcond.not.i14.7, label %.thread62.i15, label %vec.epilog.scalar.ph, !llvm.loop !84

.thread62.i15:                                    ; preds = %vec.epilog.scalar.ph.prol.loopexit, %vec.epilog.scalar.ph, %vec.epilog.middle.block, %middle.block
  %scevgep.i11 = getelementptr i8, ptr %i.co, i64 %i.dr
  store i32 11, ptr %1, align 4, !tbaa !17
  br label %bb.u

bb.t:                                             ; preds = %bb.s
  %i.fj = shl nuw nsw i32 %i.dl, 8
  %i.fk = load i8, ptr %i.cr, align 1, !tbaa !30
  %i.fl = zext i8 %i.fk to i32
  %i.fm = or disjoint i32 %i.fj, %i.fl
  %i.fn = shl nuw nsw i32 %i.dd, 10
  %i.fo = add nsw i32 %i.fn, -56613888
  %i.fp = add nuw nsw i32 %i.fo, %i.fm
  br label %bb.u

.thread.i9:                                       ; preds = %bb.s, %bb.q
  %i.fq = getelementptr inbounds nuw i8, ptr %i.b, i64 65
  %i.fr = getelementptr inbounds nuw i8, ptr %i.b, i64 64
  store i8 2, ptr %i.fr, align 8, !tbaa !31
  %i.fs = load i8, ptr %i.co, align 1, !tbaa !30
  store i8 %i.fs, ptr %i.fq, align 1, !tbaa !30
  %i.ft = load i8, ptr %i.ct, align 1, !tbaa !30
  %i.fu = getelementptr inbounds nuw i8, ptr %i.b, i64 66
  store i8 %i.ft, ptr %i.fu, align 2, !tbaa !30
  store i32 12, ptr %1, align 4, !tbaa !17
  br label %bb.u

bb.u:                                             ; preds = %.thread.i9, %bb.t, %.thread62.i15, %bb.p
  %.3.i7 = phi ptr [ %i.cr, %.thread.i9 ], [ %i.di, %bb.t ], [ %i.cr, %bb.p ], [ %scevgep.i11, %.thread62.i15 ]
  %.2.i8 = phi i32 [ 65535, %.thread.i9 ], [ %i.fp, %bb.t ], [ %i.dd, %bb.p ], [ 65535, %.thread62.i15 ]
  store ptr %.3.i7, ptr %i.cn, align 8, !tbaa !24
  br label %_ZL20_UTF16BEGetNextUCharP23UConverterToUnicodeArgsP10UErrorCode.exit

_ZL20_UTF16BEGetNextUCharP23UConverterToUnicodeArgsP10UErrorCode.exit: ; preds = %bb.u, %bb.o, %bb.m, %bb.k, %bb.e, %bb.c, %bb.a
  %.0 = phi i32 [ 65535, %bb.e ], [ -9, %bb.a ], [ %.2.i, %bb.k ], [ 65535, %bb.c ], [ %.2.i8, %bb.u ], [ 65535, %bb.m ], [ 65535, %bb.o ]
  ret i32 %.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define internal noundef nonnull ptr @_ZL13_UTF16GetNamePK10UConverter(ptr nofree noundef readonly captures(none) %0) #4 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.b = load i32, ptr %i.a, align 8, !tbaa !13
  %i.c = and i32 %i.b, 15                         ; 2 uses
  %switch.selectcmp = icmp eq i32 %i.c, 1
  %switch.select = select i1 %switch.selectcmp, ptr @.str.5, ptr @.str.6
  %switch.selectcmp4 = icmp eq i32 %i.c, 0
  %switch.select5 = select i1 %switch.selectcmp4, ptr @.str.4, ptr %switch.select
  ret ptr %switch.select5
}

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nofree nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #7 = { mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { nounwind }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}
!llvm.errno.tbaa = !{!7}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"uwtable", i32 2}
!2 = !{!"Ubuntu clang version 24.0.0 (++20260802081851+e18c3ea02484-1~exp1~20260802082001.1761)"}
!3 = !{!"Simple C++ TBAA"}
!4 = !{!"omnipotent char", !3, i64 0}
!5 = !{!"int", !4, i64 0}
!6 = !{!"__libc_errno", !5, i64 0}
!7 = !{!6, !5, i64 0}
!8 = !{!"any pointer", !4, i64 0}
!9 = !{!"p1 omnipotent char", !8, i64 0}
end_hunk_1

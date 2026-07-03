inline.NumInlined: 1403
inline.NumDeleted: 810
loop-unroll.NumRuntimeUnrolled: 24
loop-unroll.NumUnrolled: 24
begin_hunk_0_@_ZN5arrow7compute8internal24CastNumberToNumberUnsafeENS_4Type4typeES3_RKNS_9ArraySpanEPS4_:bb.a
  %i.qg = getelementptr inbounds nuw i8, ptr %2, i64 56
  %i.qh = load ptr, ptr %i.qg, align 8, !tbaa !42
  %i.qi = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.qj = load i64, ptr %i.qi, align 8, !tbaa !33
  %i.qk = getelementptr inbounds [2 x i8], ptr %i.qh, i64 %i.qj
  br label %.lr.ph.i.i64

.lr.ph.i.i64:                                     ; preds = %.lr.ph.i.i64, %.lr.ph.preheader.i.i61
  %.03.i.i65 = phi i64 [ %i.qp, %.lr.ph.i.i64 ], [ 0, %.lr.ph.preheader.i.i61 ]
  %.062.i.i66 = phi ptr [ %i.qo, %.lr.ph.i.i64 ], [ %i.qf, %.lr.ph.preheader.i.i61 ] ; 2 uses
  %.071.i.i67 = phi ptr [ %i.ql, %.lr.ph.i.i64 ], [ %i.qk, %.lr.ph.preheader.i.i61 ] ; 2 uses
  %i.ql = getelementptr inbounds nuw i8, ptr %.071.i.i67, i64 2
  %i.qm = load i16, ptr %.071.i.i67, align 2, !tbaa !51
  %i.qn = trunc i16 %i.qm to i8
  %i.qo = getelementptr inbounds nuw i8, ptr %.062.i.i66, i64 1
  store i8 %i.qn, ptr %.062.i.i66, align 1, !tbaa !47
  %i.qp = add nuw nsw i64 %.03.i.i65, 1           ; 2 uses
  %i.qq = load i64, ptr %i.qa, align 8, !tbaa !46
  %i.qr = icmp slt i64 %i.qp, %i.qq
  br i1 %i.qr, label %.lr.ph.i.i64, label %_ZN5arrow7compute8internal12_GLOBAL__N_114CastNumberImplINS_8Int8TypeEEEvNS_4Type4typeERKNS_9ArraySpanEPS7_.exit, !llvm.loop !113

bb.p:                                             ; preds = %bb.n
  %i.qs = getelementptr i8, ptr %3, i64 24
  %.val23.i59 = load i64, ptr %i.qs, align 8, !tbaa !33
  %i.qt = getelementptr i8, ptr %3, i64 56
  %.val24.i60 = load ptr, ptr %i.qt, align 8, !tbaa !42
  %i.qu = getelementptr inbounds [2 x i8], ptr %.val24.i60, i64 %.val23.i59
  %i.qv = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.qw = load i64, ptr %i.qv, align 8, !tbaa !33
  %i.qx = getelementptr inbounds nuw i8, ptr %2, i64 56
  %i.qy = load ptr, ptr %i.qx, align 8, !tbaa !42
  %i.qz = getelementptr inbounds [2 x i8], ptr %i.qy, i64 %i.qw
  %i.ra = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.rb = load i64, ptr %i.ra, align 8, !tbaa !46
  %i.rc = shl i64 %i.rb, 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 2 %i.qu, ptr align 2 %i.qz, i64 %i.rc, i1 false)
  br label %_ZN5arrow7compute8internal12_GLOBAL__N_114CastNumberImplINS_8Int8TypeEEEvNS_4Type4typeERKNS_9ArraySpanEPS7_.exit

bb.q:                                             ; preds = %bb.n
  %i.rd = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.re = load i64, ptr %i.rd, align 8, !tbaa !46 ; 5 uses
  %i.rf = icmp sgt i64 %i.re, 0
  br i1 %i.rf, label %.lr.ph.preheader.i43.i51, label %_ZN5arrow7compute8internal12_GLOBAL__N_114CastNumberImplINS_8Int8TypeEEEvNS_4Type4typeERKNS_9ArraySpanEPS7_.exit

.lr.ph.preheader.i43.i51:                         ; preds = %bb.q
  %i.rg = getelementptr i8, ptr %3, i64 56
  %.val26.i52 = load ptr, ptr %i.rg, align 8, !tbaa !42
  %i.rh = getelementptr i8, ptr %3, i64 24
  %.val25.i53 = load i64, ptr %i.rh, align 8, !tbaa !33
  %i.ri = getelementptr inbounds [4 x i8], ptr %.val26.i52, i64 %.val25.i53 ; 3 uses
  %i.rj = getelementptr inbounds nuw i8, ptr %2, i64 56
  %i.rk = load ptr, ptr %i.rj, align 8, !tbaa !42
  %i.rl = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.rm = load i64, ptr %i.rl, align 8, !tbaa !33
  %i.rn = getelementptr inbounds [2 x i8], ptr %i.rk, i64 %i.rm ; 3 uses
  %min.iters.check1983 = icmp ult i64 %i.re, 8
  br i1 %min.iters.check1983, label %.lr.ph.i44.i54.preheader, label %vector.ph1984

vector.ph1984:                                    ; preds = %.lr.ph.preheader.i43.i51
  %n.vec1986 = and i64 %i.re, 9223372036854775800 ; 5 uses
  %i.ro = shl i64 %n.vec1986, 2
  %i.rp = getelementptr i8, ptr %i.ri, i64 %i.ro
  %i.rq = shl nuw i64 %n.vec1986, 1
  %i.rr = getelementptr i8, ptr %i.rn, i64 %i.rq
  br label %vector.body1987

vector.body1987:                                  ; preds = %vector.body1987, %vector.ph1984
  %index1988 = phi i64 [ 0, %vector.ph1984 ], [ %index.next1993, %vector.body1987 ] ; 3 uses
  %i.rs = shl i64 %index1988, 2
  %next.gep1989 = getelementptr i8, ptr %i.ri, i64 %i.rs ; 2 uses
  %i.rt = shl i64 %index1988, 1
  %next.gep1990 = getelementptr i8, ptr %i.rn, i64 %i.rt ; 2 uses
  %i.ru = getelementptr i8, ptr %next.gep1990, i64 8
  %wide.load1991 = load <4 x i16>, ptr %next.gep1990, align 2, !tbaa !51
  %wide.load1992 = load <4 x i16>, ptr %i.ru, align 2, !tbaa !51
  %i.rv = sext <4 x i16> %wide.load1991 to <4 x i32>
  %i.rw = sext <4 x i16> %wide.load1992 to <4 x i32>
  %i.rx = getelementptr i8, ptr %next.gep1989, i64 16
  store <4 x i32> %i.rv, ptr %next.gep1989, align 4, !tbaa !3
  store <4 x i32> %i.rw, ptr %i.rx, align 4, !tbaa !3
  %index.next1993 = add nuw i64 %index1988, 8     ; 2 uses
  %i.ry = icmp eq i64 %index.next1993, %n.vec1986
  br i1 %i.ry, label %middle.block1994, label %vector.body1987, !llvm.loop !114

middle.block1994:                                 ; preds = %vector.body1987
  %cmp.n1995 = icmp eq i64 %i.re, %n.vec1986
  br i1 %cmp.n1995, label %_ZN5arrow7compute8internal12_GLOBAL__N_114CastNumberImplINS_8Int8TypeEEEvNS_4Type4typeERKNS_9ArraySpanEPS7_.exit, label %.lr.ph.i44.i54.preheader

.lr.ph.i44.i54.preheader:                         ; preds = %.lr.ph.preheader.i43.i51, %middle.block1994
  %.03.i45.i55.ph = phi i64 [ 0, %.lr.ph.preheader.i43.i51 ], [ %n.vec1986, %middle.block1994 ]
  %.062.i46.i56.ph = phi ptr [ %i.ri, %.lr.ph.preheader.i43.i51 ], [ %i.rp, %middle.block1994 ]
  %.071.i47.i57.ph = phi ptr [ %i.rn, %.lr.ph.preheader.i43.i51 ], [ %i.rr, %middle.block1994 ]
  br label %.lr.ph.i44.i54

.lr.ph.i44.i54:                                   ; preds = %.lr.ph.i44.i54.preheader, %.lr.ph.i44.i54
  %.03.i45.i55 = phi i64 [ %i.sd, %.lr.ph.i44.i54 ], [ %.03.i45.i55.ph, %.lr.ph.i44.i54.preheader ]
  %.062.i46.i56 = phi ptr [ %i.sc, %.lr.ph.i44.i54 ], [ %.062.i46.i56.ph, %.lr.ph.i44.i54.preheader ] ; 2 uses
  %.071.i47.i57 = phi ptr [ %i.rz, %.lr.ph.i44.i54 ], [ %.071.i47.i57.ph, %.lr.ph.i44.i54.preheader ] ; 2 uses
  %i.rz = getelementptr inbounds nuw i8, ptr %.071.i47.i57, i64 2
  %i.sa = load i16, ptr %.071.i47.i57, align 2, !tbaa !51
  %i.sb = sext i16 %i.sa to i32
  %i.sc = getelementptr inbounds nuw i8, ptr %.062.i46.i56, i64 4
  store i32 %i.sb, ptr %.062.i46.i56, align 4, !tbaa !3
  %i.sd = add nuw nsw i64 %.03.i45.i55, 1         ; 2 uses
  %exitcond.not.i.i58 = icmp eq i64 %i.sd, %i.re
  br i1 %exitcond.not.i.i58, label %_ZN5arrow7compute8internal12_GLOBAL__N_114CastNumberImplINS_8Int8TypeEEEvNS_4Type4typeERKNS_9ArraySpanEPS7_.exit, label %.lr.ph.i44.i54, !llvm.loop !115

bb.r:                                             ; preds = %bb.n
  %i.se = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.sf = load i64, ptr %i.se, align 8, !tbaa !46
  %i.sg = icmp sgt i64 %i.sf, 0
  br i1 %i.sg, label %.lr.ph.preheader.i48.i, label %_ZN5arrow7compute8internal12_GLOBAL__N_114CastNumberImplINS_8Int8TypeEEEvNS_4Type4typeERKNS_9ArraySpanEPS7_.exit

.lr.ph.preheader.i48.i:                           ; preds = %bb.r
  %i.sh = getelementptr i8, ptr %3, i64 56
  %.val28.i49 = load ptr, ptr %i.sh, align 8, !tbaa !42
  %i.si = getelementptr i8, ptr %3, i64 24
  %.val27.i50 = load i64, ptr %i.si, align 8, !tbaa !33
  %i.sj = getelementptr inbounds [8 x i8], ptr %.val28.i49, i64 %.val27.i50
  %i.sk = getelementptr inbounds nuw i8, ptr %2, i64 56
  %i.sl = load ptr, ptr %i.sk, align 8, !tbaa !42
  %i.sm = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.sn = load i64, ptr %i.sm, align 8, !tbaa !33
  %i.so = getelementptr inbounds [2 x i8], ptr %i.sl, i64 %i.sn
  br label %.lr.ph.i49.i

.lr.ph.i49.i:                                     ; preds = %.lr.ph.i49.i, %.lr.ph.preheader.i48.i
  %.03.i50.i = phi i64 [ %i.st, %.lr.ph.i49.i ], [ 0, %.lr.ph.preheader.i48.i ]
  %.062.i51.i = phi ptr [ %i.ss, %.lr.ph.i49.i ], [ %i.sj, %.lr.ph.preheader.i48.i ] ; 2 uses
  %.071.i52.i = phi ptr [ %i.sp, %.lr.ph.i49.i ], [ %i.so, %.lr.ph.preheader.i48.i ] ; 2 uses
  %i.sp = getelementptr inbounds nuw i8, ptr %.071.i52.i, i64 2
  %i.sq = load i16, ptr %.071.i52.i, align 2, !tbaa !51
  %i.sr = sext i16 %i.sq to i64
  %i.ss = getelementptr inbounds nuw i8, ptr %.062.i51.i, i64 8
  store i64 %i.sr, ptr %.062.i51.i, align 8, !tbaa !71
  %i.st = add nuw nsw i64 %.03.i50.i, 1           ; 2 uses
  %i.su = load i64, ptr %i.se, align 8, !tbaa !46
  %i.sv = icmp slt i64 %i.st, %i.su
  br i1 %i.sv, label %.lr.ph.i49.i, label %_ZN5arrow7compute8internal12_GLOBAL__N_114CastNumberImplINS_8Int8TypeEEEvNS_4Type4typeERKNS_9ArraySpanEPS7_.exit, !llvm.loop !116

bb.s:                                             ; preds = %bb.n
  %i.sw = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.sx = load i64, ptr %i.sw, align 8, !tbaa !46
  %i.sy = icmp sgt i64 %i.sx, 0
  br i1 %i.sy, label %.lr.ph.preheader.i53.i, label %_ZN5arrow7compute8internal12_GLOBAL__N_114CastNumberImplINS_8Int8TypeEEEvNS_4Type4typeERKNS_9ArraySpanEPS7_.exit

.lr.ph.preheader.i53.i:                           ; preds = %bb.s
  %i.sz = getelementptr i8, ptr %3, i64 56
  %.val30.i47 = load ptr, ptr %i.sz, align 8, !tbaa !42
  %i.ta = getelementptr i8, ptr %3, i64 24
  %.val29.i48 = load i64, ptr %i.ta, align 8, !tbaa !33
  %i.tb = getelementptr inbounds i8, ptr %.val30.i47, i64 %.val29.i48
  %i.tc = getelementptr inbounds nuw i8, ptr %2, i64 56
  %i.td = load ptr, ptr %i.tc, align 8, !tbaa !42
  %i.te = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.tf = load i64, ptr %i.te, align 8, !tbaa !33
  %i.tg = getelementptr inbounds [2 x i8], ptr %i.td, i64 %i.tf
  br label %.lr.ph.i54.i

.lr.ph.i54.i:                                     ; preds = %.lr.ph.i54.i, %.lr.ph.preheader.i53.i
  %.03.i55.i = phi i64 [ %i.tl, %.lr.ph.i54.i ], [ 0, %.lr.ph.preheader.i53.i ]
  %.062.i56.i = phi ptr [ %i.tk, %.lr.ph.i54.i ], [ %i.tb, %.lr.ph.preheader.i53.i ] ; 2 uses
  %.071.i57.i = phi ptr [ %i.th, %.lr.ph.i54.i ], [ %i.tg, %.lr.ph.preheader.i53.i ] ; 2 uses
  %i.th = getelementptr inbounds nuw i8, ptr %.071.i57.i, i64 2
  %i.ti = load i16, ptr %.071.i57.i, align 2, !tbaa !51
  %i.tj = trunc i16 %i.ti to i8
  %i.tk = getelementptr inbounds nuw i8, ptr %.062.i56.i, i64 1
  store i8 %i.tj, ptr %.062.i56.i, align 1, !tbaa !47
  %i.tl = add nuw nsw i64 %.03.i55.i, 1           ; 2 uses
  %i.tm = load i64, ptr %i.sw, align 8, !tbaa !46
  %i.tn = icmp slt i64 %i.tl, %i.tm
  br i1 %i.tn, label %.lr.ph.i54.i, label %_ZN5arrow7compute8internal12_GLOBAL__N_114CastNumberImplINS_8Int8TypeEEEvNS_4Type4typeERKNS_9ArraySpanEPS7_.exit, !llvm.loop !117

bb.t:                                             ; preds = %bb.n
  %i.to = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.tp = load i64, ptr %i.to, align 8, !tbaa !46 ; 11 uses
  %i.tq = icmp sgt i64 %i.tp, 0
  br i1 %i.tq, label %iter.check1964, label %_ZN5arrow7compute8internal12_GLOBAL__N_114CastNumberImplINS_8Int8TypeEEEvNS_4Type4typeERKNS_9ArraySpanEPS7_.exit

iter.check1964:                                   ; preds = %bb.t
  %i.tr = getelementptr i8, ptr %3, i64 56
  %.val32.i45 = load ptr, ptr %i.tr, align 8, !tbaa !42 ; 2 uses
  %i.ts = getelementptr i8, ptr %3, i64 24
  %.val31.i46 = load i64, ptr %i.ts, align 8, !tbaa !33 ; 2 uses
  %i.tt = getelementptr inbounds [2 x i8], ptr %.val32.i45, i64 %.val31.i46 ; 6 uses
  %i.tu = getelementptr inbounds nuw i8, ptr %2, i64 56
  %i.tv = load ptr, ptr %i.tu, align 8, !tbaa !42 ; 2 uses
  %i.tw = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.tx = load i64, ptr %i.tw, align 8, !tbaa !33 ; 2 uses
  %i.ty = getelementptr inbounds [2 x i8], ptr %i.tv, i64 %i.tx ; 6 uses
  %min.iters.check1946 = icmp ult i64 %i.tp, 4
  br i1 %min.iters.check1946, label %.lr.ph.i59.i.preheader, label %vector.memcheck1942

vector.memcheck1942:                              ; preds = %iter.check1964
  %i.tz = ptrtoaddr ptr %i.tv to i64
  %.val32.i451943 = ptrtoaddr ptr %.val32.i45 to i64
  %i.ua = shl i64 %.val31.i46, 1
  %i.ub = add i64 %i.ua, %.val32.i451943
  %i.uc = shl i64 %i.tx, 1
  %i.ud = add i64 %i.uc, %i.tz
  %i.ue = sub i64 %i.ud, %i.ub
  %diff.check1944 = icmp ugt i64 %i.ue, -32
  br i1 %diff.check1944, label %.lr.ph.i59.i.preheader, label %vector.main.loop.iter.check1947

vector.main.loop.iter.check1947:                  ; preds = %vector.memcheck1942
  %min.iters.check1948 = icmp ult i64 %i.tp, 16
  br i1 %min.iters.check1948, label %vec.epilog.ph1968, label %vector.ph1949

vector.ph1949:                                    ; preds = %vector.main.loop.iter.check1947
  %n.mod.vf1950 = and i64 %i.tp, 12
  %n.vec1951 = and i64 %i.tp, 9223372036854775792 ; 5 uses
  %i.uf = shl nuw i64 %n.vec1951, 1               ; 2 uses
  %i.ug = getelementptr i8, ptr %i.tt, i64 %i.uf
  %i.uh = getelementptr i8, ptr %i.ty, i64 %i.uf
  br label %vector.body1952

vector.body1952:                                  ; preds = %vector.body1952, %vector.ph1949
  %index1953 = phi i64 [ 0, %vector.ph1949 ], [ %index.next1958, %vector.body1952 ] ; 2 uses
  %i.ui = shl i64 %index1953, 1                   ; 2 uses
  %next.gep1954 = getelementptr i8, ptr %i.tt, i64 %i.ui ; 2 uses
  %next.gep1955 = getelementptr i8, ptr %i.ty, i64 %i.ui ; 2 uses
  %i.uj = getelementptr i8, ptr %next.gep1955, i64 16
  %wide.load1956 = load <8 x i16>, ptr %next.gep1955, align 2, !tbaa !51
  %wide.load1957 = load <8 x i16>, ptr %i.uj, align 2, !tbaa !51
  %i.uk = getelementptr i8, ptr %next.gep1954, i64 16
  store <8 x i16> %wide.load1956, ptr %next.gep1954, align 2, !tbaa !51
  store <8 x i16> %wide.load1957, ptr %i.uk, align 2, !tbaa !51
  %index.next1958 = add nuw i64 %index1953, 16    ; 2 uses
  %i.ul = icmp eq i64 %index.next1958, %n.vec1951
  br i1 %i.ul, label %middle.block1959, label %vector.body1952, !llvm.loop !118

middle.block1959:                                 ; preds = %vector.body1952
  %cmp.n1960 = icmp eq i64 %i.tp, %n.vec1951
  br i1 %cmp.n1960, label %_ZN5arrow7compute8internal12_GLOBAL__N_114CastNumberImplINS_8Int8TypeEEEvNS_4Type4typeERKNS_9ArraySpanEPS7_.exit, label %vec.epilog.iter.check1966

vec.epilog.iter.check1966:                        ; preds = %middle.block1959
  %min.epilog.iters.check1967 = icmp eq i64 %n.mod.vf1950, 0
  br i1 %min.epilog.iters.check1967, label %.lr.ph.i59.i.preheader, label %vec.epilog.ph1968, !prof !58

vec.epilog.ph1968:                                ; preds = %vector.main.loop.iter.check1947, %vec.epilog.iter.check1966
  %vec.epilog.resume.val1961 = phi i64 [ %n.vec1951, %vec.epilog.iter.check1966 ], [ 0, %vector.main.loop.iter.check1947 ]
  %n.vec1970 = and i64 %i.tp, 9223372036854775804 ; 4 uses
  %i.um = shl nuw i64 %n.vec1970, 1               ; 2 uses
  %i.un = getelementptr i8, ptr %i.tt, i64 %i.um
  %i.uo = getelementptr i8, ptr %i.ty, i64 %i.um
  br label %vec.epilog.vector.body1971

vec.epilog.vector.body1971:                       ; preds = %vec.epilog.vector.body1971, %vec.epilog.ph1968
  %index1972 = phi i64 [ %vec.epilog.resume.val1961, %vec.epilog.ph1968 ], [ %index.next1976, %vec.epilog.vector.body1971 ] ; 2 uses
  %i.up = shl i64 %index1972, 1                   ; 2 uses
  %next.gep1973 = getelementptr i8, ptr %i.tt, i64 %i.up
  %next.gep1974 = getelementptr i8, ptr %i.ty, i64 %i.up
  %wide.load1975 = load <4 x i16>, ptr %next.gep1974, align 2, !tbaa !51
  store <4 x i16> %wide.load1975, ptr %next.gep1973, align 2, !tbaa !51
  %index.next1976 = add nuw i64 %index1972, 4     ; 2 uses
  %i.uq = icmp eq i64 %index.next1976, %n.vec1970
  br i1 %i.uq, label %vec.epilog.middle.block1977, label %vec.epilog.vector.body1971, !llvm.loop !119

vec.epilog.middle.block1977:                      ; preds = %vec.epilog.vector.body1971
  %cmp.n1978 = icmp eq i64 %i.tp, %n.vec1970
  br i1 %cmp.n1978, label %_ZN5arrow7compute8internal12_GLOBAL__N_114CastNumberImplINS_8Int8TypeEEEvNS_4Type4typeERKNS_9ArraySpanEPS7_.exit, label %.lr.ph.i59.i.preheader

.lr.ph.i59.i.preheader:                           ; preds = %vector.memcheck1942, %iter.check1964, %vec.epilog.iter.check1966, %vec.epilog.middle.block1977
  %.03.i60.i.ph = phi i64 [ 0, %iter.check1964 ], [ 0, %vector.memcheck1942 ], [ %n.vec1951, %vec.epilog.iter.check1966 ], [ %n.vec1970, %vec.epilog.middle.block1977 ] ; 4 uses
  %.062.i61.i.ph = phi ptr [ %i.tt, %iter.check1964 ], [ %i.tt, %vector.memcheck1942 ], [ %i.ug, %vec.epilog.iter.check1966 ], [ %i.un, %vec.epilog.middle.block1977 ] ; 2 uses
  %.071.i62.i.ph = phi ptr [ %i.ty, %iter.check1964 ], [ %i.ty, %vector.memcheck1942 ], [ %i.uh, %vec.epilog.iter.check1966 ], [ %i.uo, %vec.epilog.middle.block1977 ] ; 2 uses
  %i.ur = sub nsw i64 %i.tp, %.03.i60.i.ph
  %xtraiter2355 = and i64 %i.ur, 7                ; 2 uses
  %lcmp.mod2356.not = icmp eq i64 %xtraiter2355, 0
  br i1 %lcmp.mod2356.not, label %.lr.ph.i59.i.prol.loopexit, label %.lr.ph.i59.i.prol

.lr.ph.i59.i.prol:                                ; preds = %.lr.ph.i59.i.preheader, %.lr.ph.i59.i.prol
  %.03.i60.i.prol = phi i64 [ %i.uv, %.lr.ph.i59.i.prol ], [ %.03.i60.i.ph, %.lr.ph.i59.i.preheader ]
  %.062.i61.i.prol = phi ptr [ %i.uu, %.lr.ph.i59.i.prol ], [ %.062.i61.i.ph, %.lr.ph.i59.i.preheader ] ; 2 uses
  %.071.i62.i.prol = phi ptr [ %i.us, %.lr.ph.i59.i.prol ], [ %.071.i62.i.ph, %.lr.ph.i59.i.preheader ] ; 2 uses
  %prol.iter2357 = phi i64 [ %prol.iter2357.next, %.lr.ph.i59.i.prol ], [ 0, %.lr.ph.i59.i.preheader ]
  %i.us = getelementptr inbounds nuw i8, ptr %.071.i62.i.prol, i64 2 ; 2 uses
  %i.ut = load i16, ptr %.071.i62.i.prol, align 2, !tbaa !51
  %i.uu = getelementptr inbounds nuw i8, ptr %.062.i61.i.prol, i64 2 ; 2 uses
  store i16 %i.ut, ptr %.062.i61.i.prol, align 2, !tbaa !51
  %i.uv = add nuw nsw i64 %.03.i60.i.prol, 1      ; 2 uses
  %prol.iter2357.next = add i64 %prol.iter2357, 1 ; 2 uses
  %prol.iter2357.cmp.not = icmp eq i64 %prol.iter2357.next, %xtraiter2355
  br i1 %prol.iter2357.cmp.not, label %.lr.ph.i59.i.prol.loopexit, label %.lr.ph.i59.i.prol, !llvm.loop !120

.lr.ph.i59.i.prol.loopexit:                       ; preds = %.lr.ph.i59.i.prol, %.lr.ph.i59.i.preheader
  %.03.i60.i.unr = phi i64 [ %.03.i60.i.ph, %.lr.ph.i59.i.preheader ], [ %i.uv, %.lr.ph.i59.i.prol ]
  %.062.i61.i.unr = phi ptr [ %.062.i61.i.ph, %.lr.ph.i59.i.preheader ], [ %i.uu, %.lr.ph.i59.i.prol ]
  %.071.i62.i.unr = phi ptr [ %.071.i62.i.ph, %.lr.ph.i59.i.preheader ], [ %i.us, %.lr.ph.i59.i.prol ]
  %i.uw = sub nsw i64 %.03.i60.i.ph, %i.tp
  %i.ux = icmp ugt i64 %i.uw, -8
  br i1 %i.ux, label %_ZN5arrow7compute8internal12_GLOBAL__N_114CastNumberImplINS_8Int8TypeEEEvNS_4Type4typeERKNS_9ArraySpanEPS7_.exit, label %.lr.ph.i59.i

.lr.ph.i59.i:                                     ; preds = %.lr.ph.i59.i.prol.loopexit, %.lr.ph.i59.i
  %.03.i60.i = phi i64 [ %i.vw, %.lr.ph.i59.i ], [ %.03.i60.i.unr, %.lr.ph.i59.i.prol.loopexit ]
  %.062.i61.i = phi ptr [ %i.vv, %.lr.ph.i59.i ], [ %.062.i61.i.unr, %.lr.ph.i59.i.prol.loopexit ] ; 9 uses
  %.071.i62.i = phi ptr [ %i.vt, %.lr.ph.i59.i ], [ %.071.i62.i.unr, %.lr.ph.i59.i.prol.loopexit ] ; 9 uses
  %i.uy = getelementptr inbounds nuw i8, ptr %.071.i62.i, i64 2
  %i.uz = load i16, ptr %.071.i62.i, align 2, !tbaa !51
  %i.va = getelementptr inbounds nuw i8, ptr %.062.i61.i, i64 2
  store i16 %i.uz, ptr %.062.i61.i, align 2, !tbaa !51
  %i.vb = getelementptr inbounds nuw i8, ptr %.071.i62.i, i64 4
  %i.vc = load i16, ptr %i.uy, align 2, !tbaa !51
  %i.vd = getelementptr inbounds nuw i8, ptr %.062.i61.i, i64 4
  store i16 %i.vc, ptr %i.va, align 2, !tbaa !51
  %i.ve = getelementptr inbounds nuw i8, ptr %.071.i62.i, i64 6
  %i.vf = load i16, ptr %i.vb, align 2, !tbaa !51
  %i.vg = getelementptr inbounds nuw i8, ptr %.062.i61.i, i64 6
  store i16 %i.vf, ptr %i.vd, align 2, !tbaa !51
  %i.vh = getelementptr inbounds nuw i8, ptr %.071.i62.i, i64 8
  %i.vi = load i16, ptr %i.ve, align 2, !tbaa !51
  %i.vj = getelementptr inbounds nuw i8, ptr %.062.i61.i, i64 8
  store i16 %i.vi, ptr %i.vg, align 2, !tbaa !51
  %i.vk = getelementptr inbounds nuw i8, ptr %.071.i62.i, i64 10
  %i.vl = load i16, ptr %i.vh, align 2, !tbaa !51
  %i.vm = getelementptr inbounds nuw i8, ptr %.062.i61.i, i64 10
  store i16 %i.vl, ptr %i.vj, align 2, !tbaa !51
  %i.vn = getelementptr inbounds nuw i8, ptr %.071.i62.i, i64 12
  %i.vo = load i16, ptr %i.vk, align 2, !tbaa !51
  %i.vp = getelementptr inbounds nuw i8, ptr %.062.i61.i, i64 12
  store i16 %i.vo, ptr %i.vm, align 2, !tbaa !51
  %i.vq = getelementptr inbounds nuw i8, ptr %.071.i62.i, i64 14
  %i.vr = load i16, ptr %i.vn, align 2, !tbaa !51
  %i.vs = getelementptr inbounds nuw i8, ptr %.062.i61.i, i64 14
  store i16 %i.vr, ptr %i.vp, align 2, !tbaa !51
  %i.vt = getelementptr inbounds nuw i8, ptr %.071.i62.i, i64 16
  %i.vu = load i16, ptr %i.vq, align 2, !tbaa !51
  %i.vv = getelementptr inbounds nuw i8, ptr %.062.i61.i, i64 16
  store i16 %i.vu, ptr %i.vs, align 2, !tbaa !51
  %i.vw = add nuw nsw i64 %.03.i60.i, 8           ; 2 uses
  %exitcond.not.i63.i.7 = icmp eq i64 %i.vw, %i.tp
  br i1 %exitcond.not.i63.i.7, label %_ZN5arrow7compute8internal12_GLOBAL__N_114CastNumberImplINS_8Int8TypeEEEvNS_4Type4typeERKNS_9ArraySpanEPS7_.exit, label %.lr.ph.i59.i, !llvm.loop !121

bb.u:                                             ; preds = %bb.n
  %i.vx = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.vy = load i64, ptr %i.vx, align 8, !tbaa !46 ; 5 uses
  %i.vz = icmp sgt i64 %i.vy, 0
  br i1 %i.vz, label %.lr.ph.preheader.i64.i, label %_ZN5arrow7compute8internal12_GLOBAL__N_114CastNumberImplINS_8Int8TypeEEEvNS_4Type4typeERKNS_9ArraySpanEPS7_.exit

.lr.ph.preheader.i64.i:                           ; preds = %bb.u
  %i.wa = getelementptr i8, ptr %3, i64 56
  %.val34.i43 = load ptr, ptr %i.wa, align 8, !tbaa !42
  %i.wb = getelementptr i8, ptr %3, i64 24
  %.val33.i44 = load i64, ptr %i.wb, align 8, !tbaa !33
  %i.wc = getelementptr inbounds [4 x i8], ptr %.val34.i43, i64 %.val33.i44 ; 3 uses
  %i.wd = getelementptr inbounds nuw i8, ptr %2, i64 56
  %i.we = load ptr, ptr %i.wd, align 8, !tbaa !42
  %i.wf = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.wg = load i64, ptr %i.wf, align 8, !tbaa !33
  %i.wh = getelementptr inbounds [2 x i8], ptr %i.we, i64 %i.wg ; 3 uses
  %min.iters.check1926 = icmp ult i64 %i.vy, 8
  br i1 %min.iters.check1926, label %.lr.ph.i65.i.preheader, label %vector.ph1927

vector.ph1927:                                    ; preds = %.lr.ph.preheader.i64.i
  %n.vec1929 = and i64 %i.vy, 9223372036854775800 ; 5 uses
  %i.wi = shl i64 %n.vec1929, 2
  %i.wj = getelementptr i8, ptr %i.wc, i64 %i.wi
  %i.wk = shl nuw i64 %n.vec1929, 1
  %i.wl = getelementptr i8, ptr %i.wh, i64 %i.wk
  br label %vector.body1930

vector.body1930:                                  ; preds = %vector.body1930, %vector.ph1927
  %index1931 = phi i64 [ 0, %vector.ph1927 ], [ %index.next1936, %vector.body1930 ] ; 3 uses
  %i.wm = shl i64 %index1931, 2
  %next.gep1932 = getelementptr i8, ptr %i.wc, i64 %i.wm ; 2 uses
  %i.wn = shl i64 %index1931, 1
  %next.gep1933 = getelementptr i8, ptr %i.wh, i64 %i.wn ; 2 uses
  %i.wo = getelementptr i8, ptr %next.gep1933, i64 8
  %wide.load1934 = load <4 x i16>, ptr %next.gep1933, align 2, !tbaa !51
  %wide.load1935 = load <4 x i16>, ptr %i.wo, align 2, !tbaa !51
  %i.wp = sext <4 x i16> %wide.load1934 to <4 x i32>
  %i.wq = sext <4 x i16> %wide.load1935 to <4 x i32>
  %i.wr = getelementptr i8, ptr %next.gep1932, i64 16
  store <4 x i32> %i.wp, ptr %next.gep1932, align 4, !tbaa !3
  store <4 x i32> %i.wq, ptr %i.wr, align 4, !tbaa !3
  %index.next1936 = add nuw i64 %index1931, 8     ; 2 uses
  %i.ws = icmp eq i64 %index.next1936, %n.vec1929
  br i1 %i.ws, label %middle.block1937, label %vector.body1930, !llvm.loop !122

middle.block1937:                                 ; preds = %vector.body1930
  %cmp.n1938 = icmp eq i64 %i.vy, %n.vec1929
  br i1 %cmp.n1938, label %_ZN5arrow7compute8internal12_GLOBAL__N_114CastNumberImplINS_8Int8TypeEEEvNS_4Type4typeERKNS_9ArraySpanEPS7_.exit, label %.lr.ph.i65.i.preheader

.lr.ph.i65.i.preheader:                           ; preds = %.lr.ph.preheader.i64.i, %middle.block1937
  %.03.i66.i.ph = phi i64 [ 0, %.lr.ph.preheader.i64.i ], [ %n.vec1929, %middle.block1937 ]
  %.062.i67.i.ph = phi ptr [ %i.wc, %.lr.ph.preheader.i64.i ], [ %i.wj, %middle.block1937 ]
  %.071.i68.i.ph = phi ptr [ %i.wh, %.lr.ph.preheader.i64.i ], [ %i.wl, %middle.block1937 ]
  br label %.lr.ph.i65.i

.lr.ph.i65.i:                                     ; preds = %.lr.ph.i65.i.preheader, %.lr.ph.i65.i
  %.03.i66.i = phi i64 [ %i.wx, %.lr.ph.i65.i ], [ %.03.i66.i.ph, %.lr.ph.i65.i.preheader ]
  %.062.i67.i = phi ptr [ %i.ww, %.lr.ph.i65.i ], [ %.062.i67.i.ph, %.lr.ph.i65.i.preheader ] ; 2 uses
  %.071.i68.i = phi ptr [ %i.wt, %.lr.ph.i65.i ], [ %.071.i68.i.ph, %.lr.ph.i65.i.preheader ] ; 2 uses
  %i.wt = getelementptr inbounds nuw i8, ptr %.071.i68.i, i64 2
  %i.wu = load i16, ptr %.071.i68.i, align 2, !tbaa !51
  %i.wv = sext i16 %i.wu to i32
  %i.ww = getelementptr inbounds nuw i8, ptr %.062.i67.i, i64 4
  store i32 %i.wv, ptr %.062.i67.i, align 4, !tbaa !3
  %i.wx = add nuw nsw i64 %.03.i66.i, 1           ; 2 uses
  %exitcond.not.i69.i = icmp eq i64 %i.wx, %i.vy
  br i1 %exitcond.not.i69.i, label %_ZN5arrow7compute8internal12_GLOBAL__N_114CastNumberImplINS_8Int8TypeEEEvNS_4Type4typeERKNS_9ArraySpanEPS7_.exit, label %.lr.ph.i65.i, !llvm.loop !123

end_hunk_0
begin_hunk_1_@_ZN5arrow7compute8internal24CastNumberToNumberUnsafeENS_4Type4typeES3_RKNS_9ArraySpanEPS4_:bb.a
  %i.abw = trunc <4 x i32> %wide.load1884 to <4 x i16>
  %i.abx = getelementptr i8, ptr %next.gep1881, i64 8
  store <4 x i16> %i.abv, ptr %next.gep1881, align 2, !tbaa !51
  store <4 x i16> %i.abw, ptr %i.abx, align 2, !tbaa !51
  %index.next1885 = add nuw i64 %index1880, 8     ; 2 uses
  %i.aby = icmp eq i64 %index.next1885, %n.vec1878
  br i1 %i.aby, label %middle.block1886, label %vector.body1879, !llvm.loop !131

middle.block1886:                                 ; preds = %vector.body1879
  %cmp.n1887 = icmp eq i64 %i.abe, %n.vec1878
  br i1 %cmp.n1887, label %_ZN5arrow7compute8internal12_GLOBAL__N_114CastNumberImplINS_8Int8TypeEEEvNS_4Type4typeERKNS_9ArraySpanEPS7_.exit, label %.lr.ph.i44.i133.preheader

.lr.ph.i44.i133.preheader:                        ; preds = %.lr.ph.preheader.i43.i130, %middle.block1886
  %.03.i45.i134.ph = phi i64 [ 0, %.lr.ph.preheader.i43.i130 ], [ %n.vec1878, %middle.block1886 ]
  %.062.i46.i135.ph = phi ptr [ %i.abi, %.lr.ph.preheader.i43.i130 ], [ %i.abp, %middle.block1886 ]
  %.071.i47.i136.ph = phi ptr [ %i.abn, %.lr.ph.preheader.i43.i130 ], [ %i.abr, %middle.block1886 ]
  br label %.lr.ph.i44.i133

.lr.ph.i44.i133:                                  ; preds = %.lr.ph.i44.i133.preheader, %.lr.ph.i44.i133
  %.03.i45.i134 = phi i64 [ %i.acd, %.lr.ph.i44.i133 ], [ %.03.i45.i134.ph, %.lr.ph.i44.i133.preheader ]
  %.062.i46.i135 = phi ptr [ %i.acc, %.lr.ph.i44.i133 ], [ %.062.i46.i135.ph, %.lr.ph.i44.i133.preheader ] ; 2 uses
  %.071.i47.i136 = phi ptr [ %i.abz, %.lr.ph.i44.i133 ], [ %.071.i47.i136.ph, %.lr.ph.i44.i133.preheader ] ; 2 uses
  %i.abz = getelementptr inbounds nuw i8, ptr %.071.i47.i136, i64 4
  %i.aca = load i32, ptr %.071.i47.i136, align 4, !tbaa !3
  %i.acb = trunc i32 %i.aca to i16
  %i.acc = getelementptr inbounds nuw i8, ptr %.062.i46.i135, i64 2
  store i16 %i.acb, ptr %.062.i46.i135, align 2, !tbaa !51
  %i.acd = add nuw nsw i64 %.03.i45.i134, 1       ; 2 uses
  %exitcond.not.i.i137 = icmp eq i64 %i.acd, %i.abe
  br i1 %exitcond.not.i.i137, label %_ZN5arrow7compute8internal12_GLOBAL__N_114CastNumberImplINS_8Int8TypeEEEvNS_4Type4typeERKNS_9ArraySpanEPS7_.exit, label %.lr.ph.i44.i133, !llvm.loop !132

bb.ac:                                            ; preds = %bb.z
  %i.ace = getelementptr i8, ptr %3, i64 24
  %.val25.i128 = load i64, ptr %i.ace, align 8, !tbaa !33
  %i.acf = getelementptr i8, ptr %3, i64 56
  %.val26.i129 = load ptr, ptr %i.acf, align 8, !tbaa !42
  %i.acg = getelementptr inbounds [4 x i8], ptr %.val26.i129, i64 %.val25.i128
  %i.ach = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.aci = load i64, ptr %i.ach, align 8, !tbaa !33
  %i.acj = getelementptr inbounds nuw i8, ptr %2, i64 56
  %i.ack = load ptr, ptr %i.acj, align 8, !tbaa !42
  %i.acl = getelementptr inbounds [4 x i8], ptr %i.ack, i64 %i.aci
  %i.acm = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.acn = load i64, ptr %i.acm, align 8, !tbaa !46
  %i.aco = shl i64 %i.acn, 2
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 4 %i.acg, ptr align 4 %i.acl, i64 %i.aco, i1 false)
  br label %_ZN5arrow7compute8internal12_GLOBAL__N_114CastNumberImplINS_8Int8TypeEEEvNS_4Type4typeERKNS_9ArraySpanEPS7_.exit

bb.ad:                                            ; preds = %bb.z
  %i.acp = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.acq = load i64, ptr %i.acp, align 8, !tbaa !46
  %i.acr = icmp sgt i64 %i.acq, 0
  br i1 %i.acr, label %.lr.ph.preheader.i48.i121, label %_ZN5arrow7compute8internal12_GLOBAL__N_114CastNumberImplINS_8Int8TypeEEEvNS_4Type4typeERKNS_9ArraySpanEPS7_.exit

.lr.ph.preheader.i48.i121:                        ; preds = %bb.ad
  %i.acs = getelementptr i8, ptr %3, i64 56
  %.val28.i122 = load ptr, ptr %i.acs, align 8, !tbaa !42
  %i.act = getelementptr i8, ptr %3, i64 24
  %.val27.i123 = load i64, ptr %i.act, align 8, !tbaa !33
  %i.acu = getelementptr inbounds [8 x i8], ptr %.val28.i122, i64 %.val27.i123
  %i.acv = getelementptr inbounds nuw i8, ptr %2, i64 56
  %i.acw = load ptr, ptr %i.acv, align 8, !tbaa !42
  %i.acx = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.acy = load i64, ptr %i.acx, align 8, !tbaa !33
  %i.acz = getelementptr inbounds [4 x i8], ptr %i.acw, i64 %i.acy
  br label %.lr.ph.i49.i124

.lr.ph.i49.i124:                                  ; preds = %.lr.ph.i49.i124, %.lr.ph.preheader.i48.i121
  %.03.i50.i125 = phi i64 [ %i.ade, %.lr.ph.i49.i124 ], [ 0, %.lr.ph.preheader.i48.i121 ]
  %.062.i51.i126 = phi ptr [ %i.add, %.lr.ph.i49.i124 ], [ %i.acu, %.lr.ph.preheader.i48.i121 ] ; 2 uses
  %.071.i52.i127 = phi ptr [ %i.ada, %.lr.ph.i49.i124 ], [ %i.acz, %.lr.ph.preheader.i48.i121 ] ; 2 uses
  %i.ada = getelementptr inbounds nuw i8, ptr %.071.i52.i127, i64 4
  %i.adb = load i32, ptr %.071.i52.i127, align 4, !tbaa !3
  %i.adc = sext i32 %i.adb to i64
  %i.add = getelementptr inbounds nuw i8, ptr %.062.i51.i126, i64 8
  store i64 %i.adc, ptr %.062.i51.i126, align 8, !tbaa !71
  %i.ade = add nuw nsw i64 %.03.i50.i125, 1       ; 2 uses
  %i.adf = load i64, ptr %i.acp, align 8, !tbaa !46
  %i.adg = icmp slt i64 %i.ade, %i.adf
  br i1 %i.adg, label %.lr.ph.i49.i124, label %_ZN5arrow7compute8internal12_GLOBAL__N_114CastNumberImplINS_8Int8TypeEEEvNS_4Type4typeERKNS_9ArraySpanEPS7_.exit, !llvm.loop !133

bb.ae:                                            ; preds = %bb.z
  %i.adh = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.adi = load i64, ptr %i.adh, align 8, !tbaa !46
  %i.adj = icmp sgt i64 %i.adi, 0
  br i1 %i.adj, label %.lr.ph.preheader.i53.i114, label %_ZN5arrow7compute8internal12_GLOBAL__N_114CastNumberImplINS_8Int8TypeEEEvNS_4Type4typeERKNS_9ArraySpanEPS7_.exit

.lr.ph.preheader.i53.i114:                        ; preds = %bb.ae
  %i.adk = getelementptr i8, ptr %3, i64 56
  %.val30.i115 = load ptr, ptr %i.adk, align 8, !tbaa !42
  %i.adl = getelementptr i8, ptr %3, i64 24
  %.val29.i116 = load i64, ptr %i.adl, align 8, !tbaa !33
  %i.adm = getelementptr inbounds i8, ptr %.val30.i115, i64 %.val29.i116
  %i.adn = getelementptr inbounds nuw i8, ptr %2, i64 56
  %i.ado = load ptr, ptr %i.adn, align 8, !tbaa !42
  %i.adp = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.adq = load i64, ptr %i.adp, align 8, !tbaa !33
  %i.adr = getelementptr inbounds [4 x i8], ptr %i.ado, i64 %i.adq
  br label %.lr.ph.i54.i117

.lr.ph.i54.i117:                                  ; preds = %.lr.ph.i54.i117, %.lr.ph.preheader.i53.i114
  %.03.i55.i118 = phi i64 [ %i.adw, %.lr.ph.i54.i117 ], [ 0, %.lr.ph.preheader.i53.i114 ]
  %.062.i56.i119 = phi ptr [ %i.adv, %.lr.ph.i54.i117 ], [ %i.adm, %.lr.ph.preheader.i53.i114 ] ; 2 uses
  %.071.i57.i120 = phi ptr [ %i.ads, %.lr.ph.i54.i117 ], [ %i.adr, %.lr.ph.preheader.i53.i114 ] ; 2 uses
  %i.ads = getelementptr inbounds nuw i8, ptr %.071.i57.i120, i64 4
  %i.adt = load i32, ptr %.071.i57.i120, align 4, !tbaa !3
  %i.adu = trunc i32 %i.adt to i8
  %i.adv = getelementptr inbounds nuw i8, ptr %.062.i56.i119, i64 1
  store i8 %i.adu, ptr %.062.i56.i119, align 1, !tbaa !47
  %i.adw = add nuw nsw i64 %.03.i55.i118, 1       ; 2 uses
  %i.adx = load i64, ptr %i.adh, align 8, !tbaa !46
  %i.ady = icmp slt i64 %i.adw, %i.adx
  br i1 %i.ady, label %.lr.ph.i54.i117, label %_ZN5arrow7compute8internal12_GLOBAL__N_114CastNumberImplINS_8Int8TypeEEEvNS_4Type4typeERKNS_9ArraySpanEPS7_.exit, !llvm.loop !134

bb.af:                                            ; preds = %bb.z
  %i.adz = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.aea = load i64, ptr %i.adz, align 8, !tbaa !46 ; 5 uses
  %i.aeb = icmp sgt i64 %i.aea, 0
  br i1 %i.aeb, label %.lr.ph.preheader.i58.i106, label %_ZN5arrow7compute8internal12_GLOBAL__N_114CastNumberImplINS_8Int8TypeEEEvNS_4Type4typeERKNS_9ArraySpanEPS7_.exit

.lr.ph.preheader.i58.i106:                        ; preds = %bb.af
  %i.aec = getelementptr i8, ptr %3, i64 56
  %.val32.i107 = load ptr, ptr %i.aec, align 8, !tbaa !42
  %i.aed = getelementptr i8, ptr %3, i64 24
  %.val31.i108 = load i64, ptr %i.aed, align 8, !tbaa !33
  %i.aee = getelementptr inbounds [2 x i8], ptr %.val32.i107, i64 %.val31.i108 ; 3 uses
  %i.aef = getelementptr inbounds nuw i8, ptr %2, i64 56
  %i.aeg = load ptr, ptr %i.aef, align 8, !tbaa !42
  %i.aeh = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.aei = load i64, ptr %i.aeh, align 8, !tbaa !33
  %i.aej = getelementptr inbounds [4 x i8], ptr %i.aeg, i64 %i.aei ; 3 uses
  %min.iters.check1858 = icmp ult i64 %i.aea, 8
  br i1 %min.iters.check1858, label %.lr.ph.i59.i109.preheader, label %vector.ph1859

vector.ph1859:                                    ; preds = %.lr.ph.preheader.i58.i106
  %n.vec1861 = and i64 %i.aea, 9223372036854775800 ; 5 uses
  %i.aek = shl nuw i64 %n.vec1861, 1
  %i.ael = getelementptr i8, ptr %i.aee, i64 %i.aek
  %i.aem = shl i64 %n.vec1861, 2
  %i.aen = getelementptr i8, ptr %i.aej, i64 %i.aem
  br label %vector.body1862

vector.body1862:                                  ; preds = %vector.body1862, %vector.ph1859
  %index1863 = phi i64 [ 0, %vector.ph1859 ], [ %index.next1868, %vector.body1862 ] ; 3 uses
  %i.aeo = shl i64 %index1863, 1
  %next.gep1864 = getelementptr i8, ptr %i.aee, i64 %i.aeo ; 2 uses
  %i.aep = shl i64 %index1863, 2
  %next.gep1865 = getelementptr i8, ptr %i.aej, i64 %i.aep ; 2 uses
  %i.aeq = getelementptr i8, ptr %next.gep1865, i64 16
  %wide.load1866 = load <4 x i32>, ptr %next.gep1865, align 4, !tbaa !3
  %wide.load1867 = load <4 x i32>, ptr %i.aeq, align 4, !tbaa !3
  %i.aer = trunc <4 x i32> %wide.load1866 to <4 x i16>
  %i.aes = trunc <4 x i32> %wide.load1867 to <4 x i16>
  %i.aet = getelementptr i8, ptr %next.gep1864, i64 8
  store <4 x i16> %i.aer, ptr %next.gep1864, align 2, !tbaa !51
  store <4 x i16> %i.aes, ptr %i.aet, align 2, !tbaa !51
  %index.next1868 = add nuw i64 %index1863, 8     ; 2 uses
  %i.aeu = icmp eq i64 %index.next1868, %n.vec1861
  br i1 %i.aeu, label %middle.block1869, label %vector.body1862, !llvm.loop !135

middle.block1869:                                 ; preds = %vector.body1862
  %cmp.n1870 = icmp eq i64 %i.aea, %n.vec1861
  br i1 %cmp.n1870, label %_ZN5arrow7compute8internal12_GLOBAL__N_114CastNumberImplINS_8Int8TypeEEEvNS_4Type4typeERKNS_9ArraySpanEPS7_.exit, label %.lr.ph.i59.i109.preheader

.lr.ph.i59.i109.preheader:                        ; preds = %.lr.ph.preheader.i58.i106, %middle.block1869
  %.03.i60.i110.ph = phi i64 [ 0, %.lr.ph.preheader.i58.i106 ], [ %n.vec1861, %middle.block1869 ]
  %.062.i61.i111.ph = phi ptr [ %i.aee, %.lr.ph.preheader.i58.i106 ], [ %i.ael, %middle.block1869 ]
  %.071.i62.i112.ph = phi ptr [ %i.aej, %.lr.ph.preheader.i58.i106 ], [ %i.aen, %middle.block1869 ]
  br label %.lr.ph.i59.i109

.lr.ph.i59.i109:                                  ; preds = %.lr.ph.i59.i109.preheader, %.lr.ph.i59.i109
  %.03.i60.i110 = phi i64 [ %i.aez, %.lr.ph.i59.i109 ], [ %.03.i60.i110.ph, %.lr.ph.i59.i109.preheader ]
  %.062.i61.i111 = phi ptr [ %i.aey, %.lr.ph.i59.i109 ], [ %.062.i61.i111.ph, %.lr.ph.i59.i109.preheader ] ; 2 uses
  %.071.i62.i112 = phi ptr [ %i.aev, %.lr.ph.i59.i109 ], [ %.071.i62.i112.ph, %.lr.ph.i59.i109.preheader ] ; 2 uses
  %i.aev = getelementptr inbounds nuw i8, ptr %.071.i62.i112, i64 4
  %i.aew = load i32, ptr %.071.i62.i112, align 4, !tbaa !3
  %i.aex = trunc i32 %i.aew to i16
  %i.aey = getelementptr inbounds nuw i8, ptr %.062.i61.i111, i64 2
  store i16 %i.aex, ptr %.062.i61.i111, align 2, !tbaa !51
  %i.aez = add nuw nsw i64 %.03.i60.i110, 1       ; 2 uses
  %exitcond.not.i63.i113 = icmp eq i64 %i.aez, %i.aea
  br i1 %exitcond.not.i63.i113, label %_ZN5arrow7compute8internal12_GLOBAL__N_114CastNumberImplINS_8Int8TypeEEEvNS_4Type4typeERKNS_9ArraySpanEPS7_.exit, label %.lr.ph.i59.i109, !llvm.loop !136

bb.ag:                                            ; preds = %bb.z
  %i.afa = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.afb = load i64, ptr %i.afa, align 8, !tbaa !46 ; 7 uses
  %i.afc = icmp sgt i64 %i.afb, 0
  br i1 %i.afc, label %.lr.ph.preheader.i64.i98, label %_ZN5arrow7compute8internal12_GLOBAL__N_114CastNumberImplINS_8Int8TypeEEEvNS_4Type4typeERKNS_9ArraySpanEPS7_.exit

.lr.ph.preheader.i64.i98:                         ; preds = %bb.ag
  %i.afd = getelementptr i8, ptr %3, i64 56
  %.val34.i99 = load ptr, ptr %i.afd, align 8, !tbaa !42 ; 2 uses
  %i.afe = getelementptr i8, ptr %3, i64 24
  %.val33.i100 = load i64, ptr %i.afe, align 8, !tbaa !33 ; 2 uses
  %i.aff = getelementptr inbounds [4 x i8], ptr %.val34.i99, i64 %.val33.i100 ; 4 uses
  %i.afg = getelementptr inbounds nuw i8, ptr %2, i64 56
  %i.afh = load ptr, ptr %i.afg, align 8, !tbaa !42 ; 2 uses
  %i.afi = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.afj = load i64, ptr %i.afi, align 8, !tbaa !33 ; 2 uses
  %i.afk = getelementptr inbounds [4 x i8], ptr %i.afh, i64 %i.afj ; 4 uses
  %min.iters.check1841 = icmp ult i64 %i.afb, 20
  br i1 %min.iters.check1841, label %.lr.ph.i65.i101.preheader, label %vector.memcheck1837

vector.memcheck1837:                              ; preds = %.lr.ph.preheader.i64.i98
  %i.afl = ptrtoaddr ptr %i.afh to i64
  %.val34.i991838 = ptrtoaddr ptr %.val34.i99 to i64
  %i.afm = shl i64 %.val33.i100, 2
  %i.afn = add i64 %i.afm, %.val34.i991838
  %i.afo = shl i64 %i.afj, 2
  %i.afp = add i64 %i.afo, %i.afl
  %i.afq = sub i64 %i.afp, %i.afn
  %diff.check1839 = icmp ugt i64 %i.afq, -32
  br i1 %diff.check1839, label %.lr.ph.i65.i101.preheader, label %vector.ph1842

vector.ph1842:                                    ; preds = %vector.memcheck1837
  %n.vec1844 = and i64 %i.afb, 9223372036854775800 ; 4 uses
  %i.afr = shl i64 %n.vec1844, 2                  ; 2 uses
  %i.afs = getelementptr i8, ptr %i.aff, i64 %i.afr
  %i.aft = getelementptr i8, ptr %i.afk, i64 %i.afr
  br label %vector.body1845

vector.body1845:                                  ; preds = %vector.body1845, %vector.ph1842
  %index1846 = phi i64 [ 0, %vector.ph1842 ], [ %index.next1851, %vector.body1845 ] ; 2 uses
  %i.afu = shl i64 %index1846, 2                  ; 2 uses
  %next.gep1847 = getelementptr i8, ptr %i.aff, i64 %i.afu ; 2 uses
  %next.gep1848 = getelementptr i8, ptr %i.afk, i64 %i.afu ; 2 uses
  %i.afv = getelementptr i8, ptr %next.gep1848, i64 16
  %wide.load1849 = load <4 x i32>, ptr %next.gep1848, align 4, !tbaa !3
  %wide.load1850 = load <4 x i32>, ptr %i.afv, align 4, !tbaa !3
  %i.afw = getelementptr i8, ptr %next.gep1847, i64 16
  store <4 x i32> %wide.load1849, ptr %next.gep1847, align 4, !tbaa !3
  store <4 x i32> %wide.load1850, ptr %i.afw, align 4, !tbaa !3
  %index.next1851 = add nuw i64 %index1846, 8     ; 2 uses
  %i.afx = icmp eq i64 %index.next1851, %n.vec1844
  br i1 %i.afx, label %middle.block1852, label %vector.body1845, !llvm.loop !137

middle.block1852:                                 ; preds = %vector.body1845
  %cmp.n1853 = icmp eq i64 %i.afb, %n.vec1844
  br i1 %cmp.n1853, label %_ZN5arrow7compute8internal12_GLOBAL__N_114CastNumberImplINS_8Int8TypeEEEvNS_4Type4typeERKNS_9ArraySpanEPS7_.exit, label %.lr.ph.i65.i101.preheader

.lr.ph.i65.i101.preheader:                        ; preds = %vector.memcheck1837, %.lr.ph.preheader.i64.i98, %middle.block1852
  %.03.i66.i102.ph = phi i64 [ 0, %vector.memcheck1837 ], [ 0, %.lr.ph.preheader.i64.i98 ], [ %n.vec1844, %middle.block1852 ] ; 3 uses
  %.062.i67.i103.ph = phi ptr [ %i.aff, %vector.memcheck1837 ], [ %i.aff, %.lr.ph.preheader.i64.i98 ], [ %i.afs, %middle.block1852 ] ; 2 uses
  %.071.i68.i104.ph = phi ptr [ %i.afk, %vector.memcheck1837 ], [ %i.afk, %.lr.ph.preheader.i64.i98 ], [ %i.aft, %middle.block1852 ] ; 2 uses
  %xtraiter2352 = and i64 %i.afb, 7               ; 2 uses
  %lcmp.mod2353.not = icmp eq i64 %xtraiter2352, 0
  br i1 %lcmp.mod2353.not, label %.lr.ph.i65.i101.prol.loopexit, label %.lr.ph.i65.i101.prol

.lr.ph.i65.i101.prol:                             ; preds = %.lr.ph.i65.i101.preheader, %.lr.ph.i65.i101.prol
  %.03.i66.i102.prol = phi i64 [ %i.agb, %.lr.ph.i65.i101.prol ], [ %.03.i66.i102.ph, %.lr.ph.i65.i101.preheader ]
  %.062.i67.i103.prol = phi ptr [ %i.aga, %.lr.ph.i65.i101.prol ], [ %.062.i67.i103.ph, %.lr.ph.i65.i101.preheader ] ; 2 uses
  %.071.i68.i104.prol = phi ptr [ %i.afy, %.lr.ph.i65.i101.prol ], [ %.071.i68.i104.ph, %.lr.ph.i65.i101.preheader ] ; 2 uses
  %prol.iter2354 = phi i64 [ %prol.iter2354.next, %.lr.ph.i65.i101.prol ], [ 0, %.lr.ph.i65.i101.preheader ]
  %i.afy = getelementptr inbounds nuw i8, ptr %.071.i68.i104.prol, i64 4 ; 2 uses
  %i.afz = load i32, ptr %.071.i68.i104.prol, align 4, !tbaa !3
  %i.aga = getelementptr inbounds nuw i8, ptr %.062.i67.i103.prol, i64 4 ; 2 uses
  store i32 %i.afz, ptr %.062.i67.i103.prol, align 4, !tbaa !3
  %i.agb = add nuw nsw i64 %.03.i66.i102.prol, 1  ; 2 uses
  %prol.iter2354.next = add i64 %prol.iter2354, 1 ; 2 uses
  %prol.iter2354.cmp.not = icmp eq i64 %prol.iter2354.next, %xtraiter2352
  br i1 %prol.iter2354.cmp.not, label %.lr.ph.i65.i101.prol.loopexit, label %.lr.ph.i65.i101.prol, !llvm.loop !138

.lr.ph.i65.i101.prol.loopexit:                    ; preds = %.lr.ph.i65.i101.prol, %.lr.ph.i65.i101.preheader
  %.03.i66.i102.unr = phi i64 [ %.03.i66.i102.ph, %.lr.ph.i65.i101.preheader ], [ %i.agb, %.lr.ph.i65.i101.prol ]
  %.062.i67.i103.unr = phi ptr [ %.062.i67.i103.ph, %.lr.ph.i65.i101.preheader ], [ %i.aga, %.lr.ph.i65.i101.prol ]
  %.071.i68.i104.unr = phi ptr [ %.071.i68.i104.ph, %.lr.ph.i65.i101.preheader ], [ %i.afy, %.lr.ph.i65.i101.prol ]
  %i.agc = sub nsw i64 %.03.i66.i102.ph, %i.afb
  %i.agd = icmp ugt i64 %i.agc, -8
  br i1 %i.agd, label %_ZN5arrow7compute8internal12_GLOBAL__N_114CastNumberImplINS_8Int8TypeEEEvNS_4Type4typeERKNS_9ArraySpanEPS7_.exit, label %.lr.ph.i65.i101

.lr.ph.i65.i101:                                  ; preds = %.lr.ph.i65.i101.prol.loopexit, %.lr.ph.i65.i101
  %.03.i66.i102 = phi i64 [ %i.ahc, %.lr.ph.i65.i101 ], [ %.03.i66.i102.unr, %.lr.ph.i65.i101.prol.loopexit ]
  %.062.i67.i103 = phi ptr [ %i.ahb, %.lr.ph.i65.i101 ], [ %.062.i67.i103.unr, %.lr.ph.i65.i101.prol.loopexit ] ; 9 uses
  %.071.i68.i104 = phi ptr [ %i.agz, %.lr.ph.i65.i101 ], [ %.071.i68.i104.unr, %.lr.ph.i65.i101.prol.loopexit ] ; 9 uses
  %i.age = getelementptr inbounds nuw i8, ptr %.071.i68.i104, i64 4
  %i.agf = load i32, ptr %.071.i68.i104, align 4, !tbaa !3
  %i.agg = getelementptr inbounds nuw i8, ptr %.062.i67.i103, i64 4
  store i32 %i.agf, ptr %.062.i67.i103, align 4, !tbaa !3
  %i.agh = getelementptr inbounds nuw i8, ptr %.071.i68.i104, i64 8
  %i.agi = load i32, ptr %i.age, align 4, !tbaa !3
  %i.agj = getelementptr inbounds nuw i8, ptr %.062.i67.i103, i64 8
  store i32 %i.agi, ptr %i.agg, align 4, !tbaa !3
  %i.agk = getelementptr inbounds nuw i8, ptr %.071.i68.i104, i64 12
  %i.agl = load i32, ptr %i.agh, align 4, !tbaa !3
  %i.agm = getelementptr inbounds nuw i8, ptr %.062.i67.i103, i64 12
  store i32 %i.agl, ptr %i.agj, align 4, !tbaa !3
  %i.agn = getelementptr inbounds nuw i8, ptr %.071.i68.i104, i64 16
  %i.ago = load i32, ptr %i.agk, align 4, !tbaa !3
  %i.agp = getelementptr inbounds nuw i8, ptr %.062.i67.i103, i64 16
  store i32 %i.ago, ptr %i.agm, align 4, !tbaa !3
  %i.agq = getelementptr inbounds nuw i8, ptr %.071.i68.i104, i64 20
  %i.agr = load i32, ptr %i.agn, align 4, !tbaa !3
  %i.ags = getelementptr inbounds nuw i8, ptr %.062.i67.i103, i64 20
  store i32 %i.agr, ptr %i.agp, align 4, !tbaa !3
  %i.agt = getelementptr inbounds nuw i8, ptr %.071.i68.i104, i64 24
  %i.agu = load i32, ptr %i.agq, align 4, !tbaa !3
  %i.agv = getelementptr inbounds nuw i8, ptr %.062.i67.i103, i64 24
  store i32 %i.agu, ptr %i.ags, align 4, !tbaa !3
  %i.agw = getelementptr inbounds nuw i8, ptr %.071.i68.i104, i64 28
  %i.agx = load i32, ptr %i.agt, align 4, !tbaa !3
  %i.agy = getelementptr inbounds nuw i8, ptr %.062.i67.i103, i64 28
  store i32 %i.agx, ptr %i.agv, align 4, !tbaa !3
  %i.agz = getelementptr inbounds nuw i8, ptr %.071.i68.i104, i64 32
  %i.aha = load i32, ptr %i.agw, align 4, !tbaa !3
  %i.ahb = getelementptr inbounds nuw i8, ptr %.062.i67.i103, i64 32
  store i32 %i.aha, ptr %i.agy, align 4, !tbaa !3
  %i.ahc = add nuw nsw i64 %.03.i66.i102, 8       ; 2 uses
  %exitcond.not.i69.i105.7 = icmp eq i64 %i.ahc, %i.afb
  br i1 %exitcond.not.i69.i105.7, label %_ZN5arrow7compute8internal12_GLOBAL__N_114CastNumberImplINS_8Int8TypeEEEvNS_4Type4typeERKNS_9ArraySpanEPS7_.exit, label %.lr.ph.i65.i101, !llvm.loop !139

bb.ah:                                            ; preds = %bb.z
  %i.ahd = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.ahe = load i64, ptr %i.ahd, align 8, !tbaa !46
  %i.ahf = icmp sgt i64 %i.ahe, 0
  br i1 %i.ahf, label %.lr.ph.preheader.i70.i91, label %_ZN5arrow7compute8internal12_GLOBAL__N_114CastNumberImplINS_8Int8TypeEEEvNS_4Type4typeERKNS_9ArraySpanEPS7_.exit

.lr.ph.preheader.i70.i91:                         ; preds = %bb.ah
  %i.ahg = getelementptr i8, ptr %3, i64 56
  %.val36.i92 = load ptr, ptr %i.ahg, align 8, !tbaa !42
  %i.ahh = getelementptr i8, ptr %3, i64 24
  %.val35.i93 = load i64, ptr %i.ahh, align 8, !tbaa !33
  %i.ahi = getelementptr inbounds [8 x i8], ptr %.val36.i92, i64 %.val35.i93
  %i.ahj = getelementptr inbounds nuw i8, ptr %2, i64 56
  %i.ahk = load ptr, ptr %i.ahj, align 8, !tbaa !42
  %i.ahl = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.ahm = load i64, ptr %i.ahl, align 8, !tbaa !33
  %i.ahn = getelementptr inbounds [4 x i8], ptr %i.ahk, i64 %i.ahm
  br label %.lr.ph.i71.i94

.lr.ph.i71.i94:                                   ; preds = %.lr.ph.i71.i94, %.lr.ph.preheader.i70.i91
  %.03.i72.i95 = phi i64 [ %i.ahs, %.lr.ph.i71.i94 ], [ 0, %.lr.ph.preheader.i70.i91 ]
  %.062.i73.i96 = phi ptr [ %i.ahr, %.lr.ph.i71.i94 ], [ %i.ahi, %.lr.ph.preheader.i70.i91 ] ; 2 uses
  %.071.i74.i97 = phi ptr [ %i.aho, %.lr.ph.i71.i94 ], [ %i.ahn, %.lr.ph.preheader.i70.i91 ] ; 2 uses
  %i.aho = getelementptr inbounds nuw i8, ptr %.071.i74.i97, i64 4
  %i.ahp = load i32, ptr %.071.i74.i97, align 4, !tbaa !3
  %i.ahq = sext i32 %i.ahp to i64
  %i.ahr = getelementptr inbounds nuw i8, ptr %.062.i73.i96, i64 8
  store i64 %i.ahq, ptr %.062.i73.i96, align 8, !tbaa !71
  %i.ahs = add nuw nsw i64 %.03.i72.i95, 1        ; 2 uses
  %i.aht = load i64, ptr %i.ahd, align 8, !tbaa !46
  %i.ahu = icmp slt i64 %i.ahs, %i.aht
  br i1 %i.ahu, label %.lr.ph.i71.i94, label %_ZN5arrow7compute8internal12_GLOBAL__N_114CastNumberImplINS_8Int8TypeEEEvNS_4Type4typeERKNS_9ArraySpanEPS7_.exit, !llvm.loop !140

bb.ai:                                            ; preds = %bb.z
  %i.ahv = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.ahw = load i64, ptr %i.ahv, align 8, !tbaa !46 ; 5 uses
  %i.ahx = icmp sgt i64 %i.ahw, 0
  br i1 %i.ahx, label %.lr.ph.preheader.i75.i83, label %_ZN5arrow7compute8internal12_GLOBAL__N_114CastNumberImplINS_8Int8TypeEEEvNS_4Type4typeERKNS_9ArraySpanEPS7_.exit

.lr.ph.preheader.i75.i83:                         ; preds = %bb.ai
  %i.ahy = getelementptr i8, ptr %3, i64 56
  %.val38.i84 = load ptr, ptr %i.ahy, align 8, !tbaa !42
  %i.ahz = getelementptr i8, ptr %3, i64 24
  %.val37.i85 = load i64, ptr %i.ahz, align 8, !tbaa !33
  %i.aia = getelementptr inbounds [4 x i8], ptr %.val38.i84, i64 %.val37.i85 ; 3 uses
  %i.aib = getelementptr inbounds nuw i8, ptr %2, i64 56
  %i.aic = load ptr, ptr %i.aib, align 8, !tbaa !42
  %i.aid = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.aie = load i64, ptr %i.aid, align 8, !tbaa !33
  %i.aif = getelementptr inbounds [4 x i8], ptr %i.aic, i64 %i.aie ; 3 uses
  %min.iters.check1821 = icmp ult i64 %i.ahw, 8
  br i1 %min.iters.check1821, label %.lr.ph.i76.i86.preheader, label %vector.ph1822

vector.ph1822:                                    ; preds = %.lr.ph.preheader.i75.i83
  %n.vec1824 = and i64 %i.ahw, 9223372036854775800 ; 4 uses
  %i.aig = shl i64 %n.vec1824, 2                  ; 2 uses
  %i.aih = getelementptr i8, ptr %i.aia, i64 %i.aig
  %i.aii = getelementptr i8, ptr %i.aif, i64 %i.aig
  br label %vector.body1825

vector.body1825:                                  ; preds = %vector.body1825, %vector.ph1822
  %index1826 = phi i64 [ 0, %vector.ph1822 ], [ %index.next1831, %vector.body1825 ] ; 2 uses
  %i.aij = shl i64 %index1826, 2                  ; 2 uses
  %next.gep1827 = getelementptr i8, ptr %i.aia, i64 %i.aij ; 2 uses
  %next.gep1828 = getelementptr i8, ptr %i.aif, i64 %i.aij ; 2 uses
  %i.aik = getelementptr i8, ptr %next.gep1828, i64 16
  %wide.load1829 = load <4 x i32>, ptr %next.gep1828, align 4, !tbaa !3
  %wide.load1830 = load <4 x i32>, ptr %i.aik, align 4, !tbaa !3
  %i.ail = sitofp <4 x i32> %wide.load1829 to <4 x float>
  %i.aim = sitofp <4 x i32> %wide.load1830 to <4 x float>
  %i.ain = getelementptr i8, ptr %next.gep1827, i64 16
  store <4 x float> %i.ail, ptr %next.gep1827, align 4, !tbaa !95
  store <4 x float> %i.aim, ptr %i.ain, align 4, !tbaa !95
  %index.next1831 = add nuw i64 %index1826, 8     ; 2 uses
  %i.aio = icmp eq i64 %index.next1831, %n.vec1824
  br i1 %i.aio, label %middle.block1832, label %vector.body1825, !llvm.loop !141

middle.block1832:                                 ; preds = %vector.body1825
  %cmp.n1833 = icmp eq i64 %i.ahw, %n.vec1824
  br i1 %cmp.n1833, label %_ZN5arrow7compute8internal12_GLOBAL__N_114CastNumberImplINS_8Int8TypeEEEvNS_4Type4typeERKNS_9ArraySpanEPS7_.exit, label %.lr.ph.i76.i86.preheader

.lr.ph.i76.i86.preheader:                         ; preds = %.lr.ph.preheader.i75.i83, %middle.block1832
  %.03.i77.i87.ph = phi i64 [ 0, %.lr.ph.preheader.i75.i83 ], [ %n.vec1824, %middle.block1832 ]
  %.062.i78.i88.ph = phi ptr [ %i.aia, %.lr.ph.preheader.i75.i83 ], [ %i.aih, %middle.block1832 ]
  %.071.i79.i89.ph = phi ptr [ %i.aif, %.lr.ph.preheader.i75.i83 ], [ %i.aii, %middle.block1832 ]
  br label %.lr.ph.i76.i86

.lr.ph.i76.i86:                                   ; preds = %.lr.ph.i76.i86.preheader, %.lr.ph.i76.i86
  %.03.i77.i87 = phi i64 [ %i.ait, %.lr.ph.i76.i86 ], [ %.03.i77.i87.ph, %.lr.ph.i76.i86.preheader ]
  %.062.i78.i88 = phi ptr [ %i.ais, %.lr.ph.i76.i86 ], [ %.062.i78.i88.ph, %.lr.ph.i76.i86.preheader ] ; 2 uses
  %.071.i79.i89 = phi ptr [ %i.aip, %.lr.ph.i76.i86 ], [ %.071.i79.i89.ph, %.lr.ph.i76.i86.preheader ] ; 2 uses
  %i.aip = getelementptr inbounds nuw i8, ptr %.071.i79.i89, i64 4
  %i.aiq = load i32, ptr %.071.i79.i89, align 4, !tbaa !3
  %i.air = sitofp i32 %i.aiq to float
  %i.ais = getelementptr inbounds nuw i8, ptr %.062.i78.i88, i64 4
  store float %i.air, ptr %.062.i78.i88, align 4, !tbaa !95
  %i.ait = add nuw nsw i64 %.03.i77.i87, 1        ; 2 uses
  %exitcond.not.i80.i90 = icmp eq i64 %i.ait, %i.ahw
  br i1 %exitcond.not.i80.i90, label %_ZN5arrow7compute8internal12_GLOBAL__N_114CastNumberImplINS_8Int8TypeEEEvNS_4Type4typeERKNS_9ArraySpanEPS7_.exit, label %.lr.ph.i76.i86, !llvm.loop !142

bb.aj:                                            ; preds = %bb.z
  %i.aiu = getelementptr inbounds nuw i8, ptr %2, i64 8
end_hunk_1
begin_hunk_2_@_ZN5arrow7compute8internal24CastNumberToNumberUnsafeENS_4Type4typeES3_RKNS_9ArraySpanEPS4_:bb.a
  %bound1 = icmp ult ptr %i.bkf, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.i83.i232.preheader, label %vector.ph1599

vector.ph1599:                                    ; preds = %vector.memcheck1595
  %n.vec1601 = and i64 %i.bjw, 9223372036854775804 ; 5 uses
  %i.bkj = shl i64 %n.vec1601, 3
  %i.bkk = getelementptr i8, ptr %i.bka, i64 %i.bkj
  %i.bkl = getelementptr i8, ptr %i.bkf, i64 %n.vec1601
  br label %vector.body1602

vector.body1602:                                  ; preds = %vector.body1602, %vector.ph1599
  %index1603 = phi i64 [ 0, %vector.ph1599 ], [ %index.next1608, %vector.body1602 ] ; 3 uses
  %i.bkm = shl i64 %index1603, 3
  %next.gep1604 = getelementptr i8, ptr %i.bka, i64 %i.bkm ; 2 uses
  %next.gep1605 = getelementptr i8, ptr %i.bkf, i64 %index1603 ; 2 uses
  %i.bkn = getelementptr i8, ptr %next.gep1605, i64 2
  %wide.load1606 = load <2 x i8>, ptr %next.gep1605, align 1, !tbaa !47, !alias.scope !203
  %wide.load1607 = load <2 x i8>, ptr %i.bkn, align 1, !tbaa !47, !alias.scope !203
  %i.bko = uitofp <2 x i8> %wide.load1606 to <2 x double>
  %i.bkp = uitofp <2 x i8> %wide.load1607 to <2 x double>
  %i.bkq = getelementptr i8, ptr %next.gep1604, i64 16
  store <2 x double> %i.bko, ptr %next.gep1604, align 8, !tbaa !105, !alias.scope !206, !noalias !203
  store <2 x double> %i.bkp, ptr %i.bkq, align 8, !tbaa !105, !alias.scope !206, !noalias !203
  %index.next1608 = add nuw i64 %index1603, 4     ; 2 uses
  %i.bkr = icmp eq i64 %index.next1608, %n.vec1601
  br i1 %i.bkr, label %middle.block1609, label %vector.body1602, !llvm.loop !208

middle.block1609:                                 ; preds = %vector.body1602
  %cmp.n1610 = icmp eq i64 %i.bjw, %n.vec1601
  br i1 %cmp.n1610, label %_ZN5arrow7compute8internal12_GLOBAL__N_114CastNumberImplINS_8Int8TypeEEEvNS_4Type4typeERKNS_9ArraySpanEPS7_.exit, label %.lr.ph.i83.i232.preheader

.lr.ph.i83.i232.preheader:                        ; preds = %vector.memcheck1595, %.lr.ph.preheader.i82.i229, %middle.block1609
  %.03.i84.i233.ph = phi i64 [ 0, %vector.memcheck1595 ], [ 0, %.lr.ph.preheader.i82.i229 ], [ %n.vec1601, %middle.block1609 ] ; 3 uses
  %.062.i85.i234.ph = phi ptr [ %i.bka, %vector.memcheck1595 ], [ %i.bka, %.lr.ph.preheader.i82.i229 ], [ %i.bkk, %middle.block1609 ] ; 2 uses
  %.071.i86.i235.ph = phi ptr [ %i.bkf, %vector.memcheck1595 ], [ %i.bkf, %.lr.ph.preheader.i82.i229 ], [ %i.bkl, %middle.block1609 ] ; 2 uses
  %xtraiter2310 = and i64 %i.bjw, 3               ; 2 uses
  %lcmp.mod2311.not = icmp eq i64 %xtraiter2310, 0
  br i1 %lcmp.mod2311.not, label %.lr.ph.i83.i232.prol.loopexit, label %.lr.ph.i83.i232.prol

.lr.ph.i83.i232.prol:                             ; preds = %.lr.ph.i83.i232.preheader, %.lr.ph.i83.i232.prol
  %.03.i84.i233.prol = phi i64 [ %i.bkw, %.lr.ph.i83.i232.prol ], [ %.03.i84.i233.ph, %.lr.ph.i83.i232.preheader ]
  %.062.i85.i234.prol = phi ptr [ %i.bkv, %.lr.ph.i83.i232.prol ], [ %.062.i85.i234.ph, %.lr.ph.i83.i232.preheader ] ; 2 uses
  %.071.i86.i235.prol = phi ptr [ %i.bks, %.lr.ph.i83.i232.prol ], [ %.071.i86.i235.ph, %.lr.ph.i83.i232.preheader ] ; 2 uses
  %prol.iter2312 = phi i64 [ %prol.iter2312.next, %.lr.ph.i83.i232.prol ], [ 0, %.lr.ph.i83.i232.preheader ]
  %i.bks = getelementptr inbounds nuw i8, ptr %.071.i86.i235.prol, i64 1 ; 2 uses
  %i.bkt = load i8, ptr %.071.i86.i235.prol, align 1, !tbaa !47
  %i.bku = uitofp i8 %i.bkt to double
  %i.bkv = getelementptr inbounds nuw i8, ptr %.062.i85.i234.prol, i64 8 ; 2 uses
  store double %i.bku, ptr %.062.i85.i234.prol, align 8, !tbaa !105
  %i.bkw = add nuw nsw i64 %.03.i84.i233.prol, 1  ; 2 uses
  %prol.iter2312.next = add i64 %prol.iter2312, 1 ; 2 uses
  %prol.iter2312.cmp.not = icmp eq i64 %prol.iter2312.next, %xtraiter2310
  br i1 %prol.iter2312.cmp.not, label %.lr.ph.i83.i232.prol.loopexit, label %.lr.ph.i83.i232.prol, !llvm.loop !209

.lr.ph.i83.i232.prol.loopexit:                    ; preds = %.lr.ph.i83.i232.prol, %.lr.ph.i83.i232.preheader
  %.03.i84.i233.unr = phi i64 [ %.03.i84.i233.ph, %.lr.ph.i83.i232.preheader ], [ %i.bkw, %.lr.ph.i83.i232.prol ]
  %.062.i85.i234.unr = phi ptr [ %.062.i85.i234.ph, %.lr.ph.i83.i232.preheader ], [ %i.bkv, %.lr.ph.i83.i232.prol ]
  %.071.i86.i235.unr = phi ptr [ %.071.i86.i235.ph, %.lr.ph.i83.i232.preheader ], [ %i.bks, %.lr.ph.i83.i232.prol ]
  %i.bkx = sub nsw i64 %.03.i84.i233.ph, %i.bjw
  %i.bky = icmp ugt i64 %i.bkx, -4
  br i1 %i.bky, label %_ZN5arrow7compute8internal12_GLOBAL__N_114CastNumberImplINS_8Int8TypeEEEvNS_4Type4typeERKNS_9ArraySpanEPS7_.exit, label %.lr.ph.i83.i232

.lr.ph.i83.i232:                                  ; preds = %.lr.ph.i83.i232.prol.loopexit, %.lr.ph.i83.i232
  %.03.i84.i233 = phi i64 [ %i.blp, %.lr.ph.i83.i232 ], [ %.03.i84.i233.unr, %.lr.ph.i83.i232.prol.loopexit ]
  %.062.i85.i234 = phi ptr [ %i.blo, %.lr.ph.i83.i232 ], [ %.062.i85.i234.unr, %.lr.ph.i83.i232.prol.loopexit ] ; 5 uses
  %.071.i86.i235 = phi ptr [ %i.bll, %.lr.ph.i83.i232 ], [ %.071.i86.i235.unr, %.lr.ph.i83.i232.prol.loopexit ] ; 5 uses
  %i.bkz = getelementptr inbounds nuw i8, ptr %.071.i86.i235, i64 1
  %i.bla = load i8, ptr %.071.i86.i235, align 1, !tbaa !47
  %i.blb = uitofp i8 %i.bla to double
  %i.blc = getelementptr inbounds nuw i8, ptr %.062.i85.i234, i64 8
  store double %i.blb, ptr %.062.i85.i234, align 8, !tbaa !105
  %i.bld = getelementptr inbounds nuw i8, ptr %.071.i86.i235, i64 2
  %i.ble = load i8, ptr %i.bkz, align 1, !tbaa !47
  %i.blf = uitofp i8 %i.ble to double
  %i.blg = getelementptr inbounds nuw i8, ptr %.062.i85.i234, i64 16
  store double %i.blf, ptr %i.blc, align 8, !tbaa !105
  %i.blh = getelementptr inbounds nuw i8, ptr %.071.i86.i235, i64 3
  %i.bli = load i8, ptr %i.bld, align 1, !tbaa !47
  %i.blj = uitofp i8 %i.bli to double
  %i.blk = getelementptr inbounds nuw i8, ptr %.062.i85.i234, i64 24
  store double %i.blj, ptr %i.blg, align 8, !tbaa !105
  %i.bll = getelementptr inbounds nuw i8, ptr %.071.i86.i235, i64 4
  %i.blm = load i8, ptr %i.blh, align 1, !tbaa !47
  %i.bln = uitofp i8 %i.blm to double
  %i.blo = getelementptr inbounds nuw i8, ptr %.062.i85.i234, i64 32
  store double %i.bln, ptr %i.blk, align 8, !tbaa !105
  %i.blp = add nuw nsw i64 %.03.i84.i233, 4       ; 2 uses
  %exitcond.not.i87.i236.3 = icmp eq i64 %i.blp, %i.bjw
  br i1 %exitcond.not.i87.i236.3, label %_ZN5arrow7compute8internal12_GLOBAL__N_114CastNumberImplINS_8Int8TypeEEEvNS_4Type4typeERKNS_9ArraySpanEPS7_.exit, label %.lr.ph.i83.i232, !llvm.loop !210

bb.bi:                                            ; preds = %bb.ax
  %i.blq = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.blr = load i64, ptr %i.blq, align 8, !tbaa !46
  %i.bls = icmp sgt i64 %i.blr, 0
  br i1 %i.bls, label %.lr.ph.preheader.i88.i222, label %_ZN5arrow7compute8internal12_GLOBAL__N_114CastNumberImplINS_8Int8TypeEEEvNS_4Type4typeERKNS_9ArraySpanEPS7_.exit

.lr.ph.preheader.i88.i222:                        ; preds = %bb.bi
  %i.blt = getelementptr i8, ptr %3, i64 56
  %.val42.i223 = load ptr, ptr %i.blt, align 8, !tbaa !42
  %i.blu = getelementptr i8, ptr %3, i64 24
  %.val41.i224 = load i64, ptr %i.blu, align 8, !tbaa !33
  %i.blv = getelementptr inbounds [2 x i8], ptr %.val42.i223, i64 %.val41.i224
  %i.blw = getelementptr inbounds nuw i8, ptr %2, i64 56
  %i.blx = load ptr, ptr %i.blw, align 8, !tbaa !42
  %i.bly = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.blz = load i64, ptr %i.bly, align 8, !tbaa !33
  %i.bma = getelementptr inbounds i8, ptr %i.blx, i64 %i.blz
  br label %.lr.ph.i89.i225

.lr.ph.i89.i225:                                  ; preds = %.lr.ph.i89.i225, %.lr.ph.preheader.i88.i222
  %.03.i90.i226 = phi ptr [ %i.bmb, %.lr.ph.i89.i225 ], [ %i.bma, %.lr.ph.preheader.i88.i222 ] ; 2 uses
  %.072.i.i227 = phi i64 [ %i.bmg, %.lr.ph.i89.i225 ], [ 0, %.lr.ph.preheader.i88.i222 ]
  %.081.i.i228 = phi ptr [ %i.bmf, %.lr.ph.i89.i225 ], [ %i.blv, %.lr.ph.preheader.i88.i222 ] ; 2 uses
  %i.bmb = getelementptr inbounds nuw i8, ptr %.03.i90.i226, i64 1
  %i.bmc = load i8, ptr %.03.i90.i226, align 1, !tbaa !47
  %i.bmd = uitofp i8 %i.bmc to float
  %i.bme = tail call i16 @_ZN5arrow4util7Float169FromFloatEf(float noundef %i.bmd)
  %i.bmf = getelementptr inbounds nuw i8, ptr %.081.i.i228, i64 2
  store i16 %i.bme, ptr %.081.i.i228, align 2, !tbaa !51
  %i.bmg = add nuw nsw i64 %.072.i.i227, 1        ; 2 uses
  %i.bmh = load i64, ptr %i.blq, align 8, !tbaa !46
  %i.bmi = icmp slt i64 %i.bmg, %i.bmh
  br i1 %i.bmi, label %.lr.ph.i89.i225, label %_ZN5arrow7compute8internal12_GLOBAL__N_114CastNumberImplINS_8Int8TypeEEEvNS_4Type4typeERKNS_9ArraySpanEPS7_.exit, !llvm.loop !211

bb.bj:                                            ; preds = %bb.a
  switch i32 %1, label %_ZN5arrow7compute8internal12_GLOBAL__N_114CastNumberImplINS_8Int8TypeEEEvNS_4Type4typeERKNS_9ArraySpanEPS7_.exit [
    i32 3, label %bb.bk
    i32 5, label %bb.bl
    i32 7, label %bb.bm
    i32 9, label %bb.bn
    i32 2, label %bb.bo
    i32 4, label %bb.bp
    i32 6, label %bb.bq
    i32 8, label %bb.br
    i32 11, label %bb.bs
    i32 12, label %bb.bt
    i32 10, label %bb.bu
  ]

bb.bk:                                            ; preds = %bb.bj
  %i.bmj = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.bmk = load i64, ptr %i.bmj, align 8, !tbaa !46
  %i.bml = icmp sgt i64 %i.bmk, 0
  br i1 %i.bml, label %.lr.ph.preheader.i.i370, label %_ZN5arrow7compute8internal12_GLOBAL__N_114CastNumberImplINS_8Int8TypeEEEvNS_4Type4typeERKNS_9ArraySpanEPS7_.exit

.lr.ph.preheader.i.i370:                          ; preds = %bb.bk
  %i.bmm = getelementptr i8, ptr %3, i64 56
  %.val22.i371 = load ptr, ptr %i.bmm, align 8, !tbaa !42
  %i.bmn = getelementptr i8, ptr %3, i64 24
  %.val.i372 = load i64, ptr %i.bmn, align 8, !tbaa !33
  %i.bmo = getelementptr inbounds i8, ptr %.val22.i371, i64 %.val.i372
  %i.bmp = getelementptr inbounds nuw i8, ptr %2, i64 56
  %i.bmq = load ptr, ptr %i.bmp, align 8, !tbaa !42
  %i.bmr = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.bms = load i64, ptr %i.bmr, align 8, !tbaa !33
  %i.bmt = getelementptr inbounds [2 x i8], ptr %i.bmq, i64 %i.bms
  br label %.lr.ph.i.i373

.lr.ph.i.i373:                                    ; preds = %.lr.ph.i.i373, %.lr.ph.preheader.i.i370
  %.03.i.i374 = phi i64 [ %i.bmy, %.lr.ph.i.i373 ], [ 0, %.lr.ph.preheader.i.i370 ]
  %.062.i.i375 = phi ptr [ %i.bmx, %.lr.ph.i.i373 ], [ %i.bmo, %.lr.ph.preheader.i.i370 ] ; 2 uses
  %.071.i.i376 = phi ptr [ %i.bmu, %.lr.ph.i.i373 ], [ %i.bmt, %.lr.ph.preheader.i.i370 ] ; 2 uses
  %i.bmu = getelementptr inbounds nuw i8, ptr %.071.i.i376, i64 2
  %i.bmv = load i16, ptr %.071.i.i376, align 2, !tbaa !51
  %i.bmw = trunc i16 %i.bmv to i8
  %i.bmx = getelementptr inbounds nuw i8, ptr %.062.i.i375, i64 1
  store i8 %i.bmw, ptr %.062.i.i375, align 1, !tbaa !47
  %i.bmy = add nuw nsw i64 %.03.i.i374, 1         ; 2 uses
  %i.bmz = load i64, ptr %i.bmj, align 8, !tbaa !46
  %i.bna = icmp slt i64 %i.bmy, %i.bmz
  br i1 %i.bna, label %.lr.ph.i.i373, label %_ZN5arrow7compute8internal12_GLOBAL__N_114CastNumberImplINS_8Int8TypeEEEvNS_4Type4typeERKNS_9ArraySpanEPS7_.exit, !llvm.loop !212

bb.bl:                                            ; preds = %bb.bj
  %i.bnb = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.bnc = load i64, ptr %i.bnb, align 8, !tbaa !46 ; 11 uses
  %i.bnd = icmp sgt i64 %i.bnc, 0
  br i1 %i.bnd, label %iter.check, label %_ZN5arrow7compute8internal12_GLOBAL__N_114CastNumberImplINS_8Int8TypeEEEvNS_4Type4typeERKNS_9ArraySpanEPS7_.exit

iter.check:                                       ; preds = %bb.bl
  %i.bne = getelementptr i8, ptr %3, i64 56
  %.val24.i363 = load ptr, ptr %i.bne, align 8, !tbaa !42 ; 2 uses
  %i.bnf = getelementptr i8, ptr %3, i64 24
  %.val23.i364 = load i64, ptr %i.bnf, align 8, !tbaa !33 ; 2 uses
  %i.bng = getelementptr inbounds [2 x i8], ptr %.val24.i363, i64 %.val23.i364 ; 6 uses
  %i.bnh = getelementptr inbounds nuw i8, ptr %2, i64 56
  %i.bni = load ptr, ptr %i.bnh, align 8, !tbaa !42 ; 2 uses
  %i.bnj = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.bnk = load i64, ptr %i.bnj, align 8, !tbaa !33 ; 2 uses
  %i.bnl = getelementptr inbounds [2 x i8], ptr %i.bni, i64 %i.bnk ; 6 uses
  %min.iters.check1568 = icmp ult i64 %i.bnc, 4
  br i1 %min.iters.check1568, label %.lr.ph.i44.i365.preheader, label %vector.memcheck1564

vector.memcheck1564:                              ; preds = %iter.check
  %i.bnm = ptrtoaddr ptr %i.bni to i64
  %.val24.i3631565 = ptrtoaddr ptr %.val24.i363 to i64
  %i.bnn = shl i64 %.val23.i364, 1
  %i.bno = add i64 %i.bnn, %.val24.i3631565
  %i.bnp = shl i64 %i.bnk, 1
  %i.bnq = add i64 %i.bnp, %i.bnm
  %i.bnr = sub i64 %i.bnq, %i.bno
  %diff.check1566 = icmp ugt i64 %i.bnr, -32
  br i1 %diff.check1566, label %.lr.ph.i44.i365.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %vector.memcheck1564
  %min.iters.check1569 = icmp ult i64 %i.bnc, 16
  br i1 %min.iters.check1569, label %vec.epilog.ph, label %vector.ph1570

vector.ph1570:                                    ; preds = %vector.main.loop.iter.check
  %n.mod.vf1571 = and i64 %i.bnc, 12
  %n.vec1572 = and i64 %i.bnc, 9223372036854775792 ; 5 uses
  %i.bns = shl nuw i64 %n.vec1572, 1              ; 2 uses
  %i.bnt = getelementptr i8, ptr %i.bng, i64 %i.bns
  %i.bnu = getelementptr i8, ptr %i.bnl, i64 %i.bns
  br label %vector.body1573

vector.body1573:                                  ; preds = %vector.body1573, %vector.ph1570
  %index1574 = phi i64 [ 0, %vector.ph1570 ], [ %index.next1579, %vector.body1573 ] ; 2 uses
  %i.bnv = shl i64 %index1574, 1                  ; 2 uses
  %next.gep1575 = getelementptr i8, ptr %i.bng, i64 %i.bnv ; 2 uses
  %next.gep1576 = getelementptr i8, ptr %i.bnl, i64 %i.bnv ; 2 uses
  %i.bnw = getelementptr i8, ptr %next.gep1576, i64 16
  %wide.load1577 = load <8 x i16>, ptr %next.gep1576, align 2, !tbaa !51
  %wide.load1578 = load <8 x i16>, ptr %i.bnw, align 2, !tbaa !51
  %i.bnx = getelementptr i8, ptr %next.gep1575, i64 16
  store <8 x i16> %wide.load1577, ptr %next.gep1575, align 2, !tbaa !51
  store <8 x i16> %wide.load1578, ptr %i.bnx, align 2, !tbaa !51
  %index.next1579 = add nuw i64 %index1574, 16    ; 2 uses
  %i.bny = icmp eq i64 %index.next1579, %n.vec1572
  br i1 %i.bny, label %middle.block1580, label %vector.body1573, !llvm.loop !213

middle.block1580:                                 ; preds = %vector.body1573
  %cmp.n1581 = icmp eq i64 %i.bnc, %n.vec1572
  br i1 %cmp.n1581, label %_ZN5arrow7compute8internal12_GLOBAL__N_114CastNumberImplINS_8Int8TypeEEEvNS_4Type4typeERKNS_9ArraySpanEPS7_.exit, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block1580
  %min.epilog.iters.check = icmp eq i64 %n.mod.vf1571, 0
  br i1 %min.epilog.iters.check, label %.lr.ph.i44.i365.preheader, label %vec.epilog.ph, !prof !58

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec1572, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec1585 = and i64 %i.bnc, 9223372036854775804 ; 4 uses
  %i.bnz = shl nuw i64 %n.vec1585, 1              ; 2 uses
  %i.boa = getelementptr i8, ptr %i.bng, i64 %i.bnz
  %i.bob = getelementptr i8, ptr %i.bnl, i64 %i.bnz
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index1586 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next1590, %vec.epilog.vector.body ] ; 2 uses
  %i.boc = shl i64 %index1586, 1                  ; 2 uses
  %next.gep1587 = getelementptr i8, ptr %i.bng, i64 %i.boc
  %next.gep1588 = getelementptr i8, ptr %i.bnl, i64 %i.boc
  %wide.load1589 = load <4 x i16>, ptr %next.gep1588, align 2, !tbaa !51
  store <4 x i16> %wide.load1589, ptr %next.gep1587, align 2, !tbaa !51
  %index.next1590 = add nuw i64 %index1586, 4     ; 2 uses
  %i.bod = icmp eq i64 %index.next1590, %n.vec1585
  br i1 %i.bod, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !214

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n1591 = icmp eq i64 %i.bnc, %n.vec1585
  br i1 %cmp.n1591, label %_ZN5arrow7compute8internal12_GLOBAL__N_114CastNumberImplINS_8Int8TypeEEEvNS_4Type4typeERKNS_9ArraySpanEPS7_.exit, label %.lr.ph.i44.i365.preheader

.lr.ph.i44.i365.preheader:                        ; preds = %vector.memcheck1564, %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.03.i45.i366.ph = phi i64 [ 0, %iter.check ], [ 0, %vector.memcheck1564 ], [ %n.vec1572, %vec.epilog.iter.check ], [ %n.vec1585, %vec.epilog.middle.block ] ; 4 uses
  %.062.i46.i367.ph = phi ptr [ %i.bng, %iter.check ], [ %i.bng, %vector.memcheck1564 ], [ %i.bnt, %vec.epilog.iter.check ], [ %i.boa, %vec.epilog.middle.block ] ; 2 uses
  %.071.i47.i368.ph = phi ptr [ %i.bnl, %iter.check ], [ %i.bnl, %vector.memcheck1564 ], [ %i.bnu, %vec.epilog.iter.check ], [ %i.bob, %vec.epilog.middle.block ] ; 2 uses
  %i.boe = sub nsw i64 %i.bnc, %.03.i45.i366.ph
  %xtraiter2307 = and i64 %i.boe, 7               ; 2 uses
  %lcmp.mod2308.not = icmp eq i64 %xtraiter2307, 0
  br i1 %lcmp.mod2308.not, label %.lr.ph.i44.i365.prol.loopexit, label %.lr.ph.i44.i365.prol

.lr.ph.i44.i365.prol:                             ; preds = %.lr.ph.i44.i365.preheader, %.lr.ph.i44.i365.prol
  %.03.i45.i366.prol = phi i64 [ %i.boi, %.lr.ph.i44.i365.prol ], [ %.03.i45.i366.ph, %.lr.ph.i44.i365.preheader ]
  %.062.i46.i367.prol = phi ptr [ %i.boh, %.lr.ph.i44.i365.prol ], [ %.062.i46.i367.ph, %.lr.ph.i44.i365.preheader ] ; 2 uses
  %.071.i47.i368.prol = phi ptr [ %i.bof, %.lr.ph.i44.i365.prol ], [ %.071.i47.i368.ph, %.lr.ph.i44.i365.preheader ] ; 2 uses
  %prol.iter2309 = phi i64 [ %prol.iter2309.next, %.lr.ph.i44.i365.prol ], [ 0, %.lr.ph.i44.i365.preheader ]
  %i.bof = getelementptr inbounds nuw i8, ptr %.071.i47.i368.prol, i64 2 ; 2 uses
  %i.bog = load i16, ptr %.071.i47.i368.prol, align 2, !tbaa !51
  %i.boh = getelementptr inbounds nuw i8, ptr %.062.i46.i367.prol, i64 2 ; 2 uses
  store i16 %i.bog, ptr %.062.i46.i367.prol, align 2, !tbaa !51
  %i.boi = add nuw nsw i64 %.03.i45.i366.prol, 1  ; 2 uses
  %prol.iter2309.next = add i64 %prol.iter2309, 1 ; 2 uses
  %prol.iter2309.cmp.not = icmp eq i64 %prol.iter2309.next, %xtraiter2307
  br i1 %prol.iter2309.cmp.not, label %.lr.ph.i44.i365.prol.loopexit, label %.lr.ph.i44.i365.prol, !llvm.loop !215

.lr.ph.i44.i365.prol.loopexit:                    ; preds = %.lr.ph.i44.i365.prol, %.lr.ph.i44.i365.preheader
  %.03.i45.i366.unr = phi i64 [ %.03.i45.i366.ph, %.lr.ph.i44.i365.preheader ], [ %i.boi, %.lr.ph.i44.i365.prol ]
  %.062.i46.i367.unr = phi ptr [ %.062.i46.i367.ph, %.lr.ph.i44.i365.preheader ], [ %i.boh, %.lr.ph.i44.i365.prol ]
  %.071.i47.i368.unr = phi ptr [ %.071.i47.i368.ph, %.lr.ph.i44.i365.preheader ], [ %i.bof, %.lr.ph.i44.i365.prol ]
  %i.boj = sub nsw i64 %.03.i45.i366.ph, %i.bnc
  %i.bok = icmp ugt i64 %i.boj, -8
  br i1 %i.bok, label %_ZN5arrow7compute8internal12_GLOBAL__N_114CastNumberImplINS_8Int8TypeEEEvNS_4Type4typeERKNS_9ArraySpanEPS7_.exit, label %.lr.ph.i44.i365

.lr.ph.i44.i365:                                  ; preds = %.lr.ph.i44.i365.prol.loopexit, %.lr.ph.i44.i365
  %.03.i45.i366 = phi i64 [ %i.bpj, %.lr.ph.i44.i365 ], [ %.03.i45.i366.unr, %.lr.ph.i44.i365.prol.loopexit ]
  %.062.i46.i367 = phi ptr [ %i.bpi, %.lr.ph.i44.i365 ], [ %.062.i46.i367.unr, %.lr.ph.i44.i365.prol.loopexit ] ; 9 uses
  %.071.i47.i368 = phi ptr [ %i.bpg, %.lr.ph.i44.i365 ], [ %.071.i47.i368.unr, %.lr.ph.i44.i365.prol.loopexit ] ; 9 uses
  %i.bol = getelementptr inbounds nuw i8, ptr %.071.i47.i368, i64 2
  %i.bom = load i16, ptr %.071.i47.i368, align 2, !tbaa !51
  %i.bon = getelementptr inbounds nuw i8, ptr %.062.i46.i367, i64 2
  store i16 %i.bom, ptr %.062.i46.i367, align 2, !tbaa !51
  %i.boo = getelementptr inbounds nuw i8, ptr %.071.i47.i368, i64 4
  %i.bop = load i16, ptr %i.bol, align 2, !tbaa !51
  %i.boq = getelementptr inbounds nuw i8, ptr %.062.i46.i367, i64 4
  store i16 %i.bop, ptr %i.bon, align 2, !tbaa !51
  %i.bor = getelementptr inbounds nuw i8, ptr %.071.i47.i368, i64 6
  %i.bos = load i16, ptr %i.boo, align 2, !tbaa !51
  %i.bot = getelementptr inbounds nuw i8, ptr %.062.i46.i367, i64 6
  store i16 %i.bos, ptr %i.boq, align 2, !tbaa !51
  %i.bou = getelementptr inbounds nuw i8, ptr %.071.i47.i368, i64 8
  %i.bov = load i16, ptr %i.bor, align 2, !tbaa !51
  %i.bow = getelementptr inbounds nuw i8, ptr %.062.i46.i367, i64 8
  store i16 %i.bov, ptr %i.bot, align 2, !tbaa !51
  %i.box = getelementptr inbounds nuw i8, ptr %.071.i47.i368, i64 10
  %i.boy = load i16, ptr %i.bou, align 2, !tbaa !51
  %i.boz = getelementptr inbounds nuw i8, ptr %.062.i46.i367, i64 10
  store i16 %i.boy, ptr %i.bow, align 2, !tbaa !51
  %i.bpa = getelementptr inbounds nuw i8, ptr %.071.i47.i368, i64 12
  %i.bpb = load i16, ptr %i.box, align 2, !tbaa !51
  %i.bpc = getelementptr inbounds nuw i8, ptr %.062.i46.i367, i64 12
  store i16 %i.bpb, ptr %i.boz, align 2, !tbaa !51
  %i.bpd = getelementptr inbounds nuw i8, ptr %.071.i47.i368, i64 14
  %i.bpe = load i16, ptr %i.bpa, align 2, !tbaa !51
  %i.bpf = getelementptr inbounds nuw i8, ptr %.062.i46.i367, i64 14
  store i16 %i.bpe, ptr %i.bpc, align 2, !tbaa !51
  %i.bpg = getelementptr inbounds nuw i8, ptr %.071.i47.i368, i64 16
  %i.bph = load i16, ptr %i.bpd, align 2, !tbaa !51
  %i.bpi = getelementptr inbounds nuw i8, ptr %.062.i46.i367, i64 16
  store i16 %i.bph, ptr %i.bpf, align 2, !tbaa !51
  %i.bpj = add nuw nsw i64 %.03.i45.i366, 8       ; 2 uses
  %exitcond.not.i.i369.7 = icmp eq i64 %i.bpj, %i.bnc
  br i1 %exitcond.not.i.i369.7, label %_ZN5arrow7compute8internal12_GLOBAL__N_114CastNumberImplINS_8Int8TypeEEEvNS_4Type4typeERKNS_9ArraySpanEPS7_.exit, label %.lr.ph.i44.i365, !llvm.loop !216

bb.bm:                                            ; preds = %bb.bj
  %i.bpk = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.bpl = load i64, ptr %i.bpk, align 8, !tbaa !46 ; 5 uses
  %i.bpm = icmp sgt i64 %i.bpl, 0
  br i1 %i.bpm, label %.lr.ph.preheader.i48.i354, label %_ZN5arrow7compute8internal12_GLOBAL__N_114CastNumberImplINS_8Int8TypeEEEvNS_4Type4typeERKNS_9ArraySpanEPS7_.exit

.lr.ph.preheader.i48.i354:                        ; preds = %bb.bm
  %i.bpn = getelementptr i8, ptr %3, i64 56
  %.val26.i355 = load ptr, ptr %i.bpn, align 8, !tbaa !42
  %i.bpo = getelementptr i8, ptr %3, i64 24
  %.val25.i356 = load i64, ptr %i.bpo, align 8, !tbaa !33
  %i.bpp = getelementptr inbounds [4 x i8], ptr %.val26.i355, i64 %.val25.i356 ; 3 uses
  %i.bpq = getelementptr inbounds nuw i8, ptr %2, i64 56
  %i.bpr = load ptr, ptr %i.bpq, align 8, !tbaa !42
  %i.bps = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.bpt = load i64, ptr %i.bps, align 8, !tbaa !33
  %i.bpu = getelementptr inbounds [2 x i8], ptr %i.bpr, i64 %i.bpt ; 3 uses
  %min.iters.check1548 = icmp ult i64 %i.bpl, 8
  br i1 %min.iters.check1548, label %.lr.ph.i49.i357.preheader, label %vector.ph1549

vector.ph1549:                                    ; preds = %.lr.ph.preheader.i48.i354
  %n.vec1551 = and i64 %i.bpl, 9223372036854775800 ; 5 uses
  %i.bpv = shl i64 %n.vec1551, 2
  %i.bpw = getelementptr i8, ptr %i.bpp, i64 %i.bpv
  %i.bpx = shl nuw i64 %n.vec1551, 1
  %i.bpy = getelementptr i8, ptr %i.bpu, i64 %i.bpx
  br label %vector.body1552

vector.body1552:                                  ; preds = %vector.body1552, %vector.ph1549
  %index1553 = phi i64 [ 0, %vector.ph1549 ], [ %index.next1558, %vector.body1552 ] ; 3 uses
  %i.bpz = shl i64 %index1553, 2
  %next.gep1554 = getelementptr i8, ptr %i.bpp, i64 %i.bpz ; 2 uses
  %i.bqa = shl i64 %index1553, 1
  %next.gep1555 = getelementptr i8, ptr %i.bpu, i64 %i.bqa ; 2 uses
  %i.bqb = getelementptr i8, ptr %next.gep1555, i64 8
  %wide.load1556 = load <4 x i16>, ptr %next.gep1555, align 2, !tbaa !51
  %wide.load1557 = load <4 x i16>, ptr %i.bqb, align 2, !tbaa !51
  %i.bqc = zext <4 x i16> %wide.load1556 to <4 x i32>
  %i.bqd = zext <4 x i16> %wide.load1557 to <4 x i32>
  %i.bqe = getelementptr i8, ptr %next.gep1554, i64 16
  store <4 x i32> %i.bqc, ptr %next.gep1554, align 4, !tbaa !3
  store <4 x i32> %i.bqd, ptr %i.bqe, align 4, !tbaa !3
  %index.next1558 = add nuw i64 %index1553, 8     ; 2 uses
  %i.bqf = icmp eq i64 %index.next1558, %n.vec1551
  br i1 %i.bqf, label %middle.block1559, label %vector.body1552, !llvm.loop !217

middle.block1559:                                 ; preds = %vector.body1552
  %cmp.n1560 = icmp eq i64 %i.bpl, %n.vec1551
  br i1 %cmp.n1560, label %_ZN5arrow7compute8internal12_GLOBAL__N_114CastNumberImplINS_8Int8TypeEEEvNS_4Type4typeERKNS_9ArraySpanEPS7_.exit, label %.lr.ph.i49.i357.preheader

.lr.ph.i49.i357.preheader:                        ; preds = %.lr.ph.preheader.i48.i354, %middle.block1559
  %.03.i50.i358.ph = phi i64 [ 0, %.lr.ph.preheader.i48.i354 ], [ %n.vec1551, %middle.block1559 ]
  %.062.i51.i359.ph = phi ptr [ %i.bpp, %.lr.ph.preheader.i48.i354 ], [ %i.bpw, %middle.block1559 ]
  %.071.i52.i360.ph = phi ptr [ %i.bpu, %.lr.ph.preheader.i48.i354 ], [ %i.bpy, %middle.block1559 ]
  br label %.lr.ph.i49.i357

.lr.ph.i49.i357:                                  ; preds = %.lr.ph.i49.i357.preheader, %.lr.ph.i49.i357
  %.03.i50.i358 = phi i64 [ %i.bqk, %.lr.ph.i49.i357 ], [ %.03.i50.i358.ph, %.lr.ph.i49.i357.preheader ]
  %.062.i51.i359 = phi ptr [ %i.bqj, %.lr.ph.i49.i357 ], [ %.062.i51.i359.ph, %.lr.ph.i49.i357.preheader ] ; 2 uses
  %.071.i52.i360 = phi ptr [ %i.bqg, %.lr.ph.i49.i357 ], [ %.071.i52.i360.ph, %.lr.ph.i49.i357.preheader ] ; 2 uses
  %i.bqg = getelementptr inbounds nuw i8, ptr %.071.i52.i360, i64 2
  %i.bqh = load i16, ptr %.071.i52.i360, align 2, !tbaa !51
  %i.bqi = zext i16 %i.bqh to i32
  %i.bqj = getelementptr inbounds nuw i8, ptr %.062.i51.i359, i64 4
  store i32 %i.bqi, ptr %.062.i51.i359, align 4, !tbaa !3
  %i.bqk = add nuw nsw i64 %.03.i50.i358, 1       ; 2 uses
  %exitcond.not.i53.i361 = icmp eq i64 %i.bqk, %i.bpl
  br i1 %exitcond.not.i53.i361, label %_ZN5arrow7compute8internal12_GLOBAL__N_114CastNumberImplINS_8Int8TypeEEEvNS_4Type4typeERKNS_9ArraySpanEPS7_.exit, label %.lr.ph.i49.i357, !llvm.loop !218

end_hunk_2
begin_hunk_3_@_ZN5arrow7compute8internal24CastNumberToNumberUnsafeENS_4Type4typeES3_RKNS_9ArraySpanEPS4_:bb.a
  %i.bvs = uitofp <2 x i16> %wide.load1505 to <2 x double>
  %i.bvt = uitofp <2 x i16> %wide.load1506 to <2 x double>
  %i.bvu = getelementptr i8, ptr %next.gep1503, i64 16
  store <2 x double> %i.bvs, ptr %next.gep1503, align 8, !tbaa !105
  store <2 x double> %i.bvt, ptr %i.bvu, align 8, !tbaa !105
  %index.next1507 = add nuw i64 %index1502, 4     ; 2 uses
  %i.bvv = icmp eq i64 %index.next1507, %n.vec1500
  br i1 %i.bvv, label %middle.block1508, label %vector.body1501, !llvm.loop !226

middle.block1508:                                 ; preds = %vector.body1501
  %cmp.n1509 = icmp eq i64 %i.bvb, %n.vec1500
  br i1 %cmp.n1509, label %_ZN5arrow7compute8internal12_GLOBAL__N_114CastNumberImplINS_8Int8TypeEEEvNS_4Type4typeERKNS_9ArraySpanEPS7_.exit, label %.lr.ph.i82.i310.preheader

.lr.ph.i82.i310.preheader:                        ; preds = %.lr.ph.preheader.i81.i307, %middle.block1508
  %.03.i83.i311.ph = phi i64 [ 0, %.lr.ph.preheader.i81.i307 ], [ %n.vec1500, %middle.block1508 ]
  %.062.i84.i312.ph = phi ptr [ %i.bvf, %.lr.ph.preheader.i81.i307 ], [ %i.bvm, %middle.block1508 ]
  %.071.i85.i313.ph = phi ptr [ %i.bvk, %.lr.ph.preheader.i81.i307 ], [ %i.bvo, %middle.block1508 ]
  br label %.lr.ph.i82.i310

.lr.ph.i82.i310:                                  ; preds = %.lr.ph.i82.i310.preheader, %.lr.ph.i82.i310
  %.03.i83.i311 = phi i64 [ %i.bwa, %.lr.ph.i82.i310 ], [ %.03.i83.i311.ph, %.lr.ph.i82.i310.preheader ]
  %.062.i84.i312 = phi ptr [ %i.bvz, %.lr.ph.i82.i310 ], [ %.062.i84.i312.ph, %.lr.ph.i82.i310.preheader ] ; 2 uses
  %.071.i85.i313 = phi ptr [ %i.bvw, %.lr.ph.i82.i310 ], [ %.071.i85.i313.ph, %.lr.ph.i82.i310.preheader ] ; 2 uses
  %i.bvw = getelementptr inbounds nuw i8, ptr %.071.i85.i313, i64 2
  %i.bvx = load i16, ptr %.071.i85.i313, align 2, !tbaa !51
  %i.bvy = uitofp i16 %i.bvx to double
  %i.bvz = getelementptr inbounds nuw i8, ptr %.062.i84.i312, i64 8
  store double %i.bvy, ptr %.062.i84.i312, align 8, !tbaa !105
  %i.bwa = add nuw nsw i64 %.03.i83.i311, 1       ; 2 uses
  %exitcond.not.i86.i314 = icmp eq i64 %i.bwa, %i.bvb
  br i1 %exitcond.not.i86.i314, label %_ZN5arrow7compute8internal12_GLOBAL__N_114CastNumberImplINS_8Int8TypeEEEvNS_4Type4typeERKNS_9ArraySpanEPS7_.exit, label %.lr.ph.i82.i310, !llvm.loop !227

bb.bu:                                            ; preds = %bb.bj
  %i.bwb = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.bwc = load i64, ptr %i.bwb, align 8, !tbaa !46
  %i.bwd = icmp sgt i64 %i.bwc, 0
  br i1 %i.bwd, label %.lr.ph.preheader.i87.i300, label %_ZN5arrow7compute8internal12_GLOBAL__N_114CastNumberImplINS_8Int8TypeEEEvNS_4Type4typeERKNS_9ArraySpanEPS7_.exit

.lr.ph.preheader.i87.i300:                        ; preds = %bb.bu
  %i.bwe = getelementptr i8, ptr %3, i64 56
  %.val42.i301 = load ptr, ptr %i.bwe, align 8, !tbaa !42
  %i.bwf = getelementptr i8, ptr %3, i64 24
  %.val41.i302 = load i64, ptr %i.bwf, align 8, !tbaa !33
  %i.bwg = getelementptr inbounds [2 x i8], ptr %.val42.i301, i64 %.val41.i302
  %i.bwh = getelementptr inbounds nuw i8, ptr %2, i64 56
  %i.bwi = load ptr, ptr %i.bwh, align 8, !tbaa !42
  %i.bwj = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.bwk = load i64, ptr %i.bwj, align 8, !tbaa !33
  %i.bwl = getelementptr inbounds [2 x i8], ptr %i.bwi, i64 %i.bwk
  br label %.lr.ph.i88.i303

.lr.ph.i88.i303:                                  ; preds = %.lr.ph.i88.i303, %.lr.ph.preheader.i87.i300
  %.03.i89.i304 = phi ptr [ %i.bwm, %.lr.ph.i88.i303 ], [ %i.bwl, %.lr.ph.preheader.i87.i300 ] ; 2 uses
  %.072.i.i305 = phi i64 [ %i.bwr, %.lr.ph.i88.i303 ], [ 0, %.lr.ph.preheader.i87.i300 ]
  %.081.i.i306 = phi ptr [ %i.bwq, %.lr.ph.i88.i303 ], [ %i.bwg, %.lr.ph.preheader.i87.i300 ] ; 2 uses
  %i.bwm = getelementptr inbounds nuw i8, ptr %.03.i89.i304, i64 2
  %i.bwn = load i16, ptr %.03.i89.i304, align 2, !tbaa !51
  %i.bwo = uitofp i16 %i.bwn to float
  %i.bwp = tail call i16 @_ZN5arrow4util7Float169FromFloatEf(float noundef %i.bwo)
  %i.bwq = getelementptr inbounds nuw i8, ptr %.081.i.i306, i64 2
  store i16 %i.bwp, ptr %.081.i.i306, align 2, !tbaa !51
  %i.bwr = add nuw nsw i64 %.072.i.i305, 1        ; 2 uses
  %i.bws = load i64, ptr %i.bwb, align 8, !tbaa !46
  %i.bwt = icmp slt i64 %i.bwr, %i.bws
  br i1 %i.bwt, label %.lr.ph.i88.i303, label %_ZN5arrow7compute8internal12_GLOBAL__N_114CastNumberImplINS_8Int8TypeEEEvNS_4Type4typeERKNS_9ArraySpanEPS7_.exit, !llvm.loop !228

bb.bv:                                            ; preds = %bb.a
  switch i32 %1, label %_ZN5arrow7compute8internal12_GLOBAL__N_114CastNumberImplINS_8Int8TypeEEEvNS_4Type4typeERKNS_9ArraySpanEPS7_.exit [
    i32 3, label %bb.bw
    i32 5, label %bb.bx
    i32 7, label %bb.by
    i32 9, label %bb.bz
    i32 2, label %bb.ca
    i32 4, label %bb.cb
    i32 6, label %bb.cc
    i32 8, label %bb.cd
    i32 11, label %bb.ce
    i32 12, label %bb.cf
    i32 10, label %bb.cg
  ]

bb.bw:                                            ; preds = %bb.bv
  %i.bwu = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.bwv = load i64, ptr %i.bwu, align 8, !tbaa !46
  %i.bww = icmp sgt i64 %i.bwv, 0
  br i1 %i.bww, label %.lr.ph.preheader.i.i447, label %_ZN5arrow7compute8internal12_GLOBAL__N_114CastNumberImplINS_8Int8TypeEEEvNS_4Type4typeERKNS_9ArraySpanEPS7_.exit

.lr.ph.preheader.i.i447:                          ; preds = %bb.bw
  %i.bwx = getelementptr i8, ptr %3, i64 56
  %.val22.i448 = load ptr, ptr %i.bwx, align 8, !tbaa !42
  %i.bwy = getelementptr i8, ptr %3, i64 24
  %.val.i449 = load i64, ptr %i.bwy, align 8, !tbaa !33
  %i.bwz = getelementptr inbounds i8, ptr %.val22.i448, i64 %.val.i449
  %i.bxa = getelementptr inbounds nuw i8, ptr %2, i64 56
  %i.bxb = load ptr, ptr %i.bxa, align 8, !tbaa !42
  %i.bxc = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.bxd = load i64, ptr %i.bxc, align 8, !tbaa !33
  %i.bxe = getelementptr inbounds [4 x i8], ptr %i.bxb, i64 %i.bxd
  br label %.lr.ph.i.i450

.lr.ph.i.i450:                                    ; preds = %.lr.ph.i.i450, %.lr.ph.preheader.i.i447
  %.03.i.i451 = phi i64 [ %i.bxj, %.lr.ph.i.i450 ], [ 0, %.lr.ph.preheader.i.i447 ]
  %.062.i.i452 = phi ptr [ %i.bxi, %.lr.ph.i.i450 ], [ %i.bwz, %.lr.ph.preheader.i.i447 ] ; 2 uses
  %.071.i.i453 = phi ptr [ %i.bxf, %.lr.ph.i.i450 ], [ %i.bxe, %.lr.ph.preheader.i.i447 ] ; 2 uses
  %i.bxf = getelementptr inbounds nuw i8, ptr %.071.i.i453, i64 4
  %i.bxg = load i32, ptr %.071.i.i453, align 4, !tbaa !3
  %i.bxh = trunc i32 %i.bxg to i8
  %i.bxi = getelementptr inbounds nuw i8, ptr %.062.i.i452, i64 1
  store i8 %i.bxh, ptr %.062.i.i452, align 1, !tbaa !47
  %i.bxj = add nuw nsw i64 %.03.i.i451, 1         ; 2 uses
  %i.bxk = load i64, ptr %i.bwu, align 8, !tbaa !46
  %i.bxl = icmp slt i64 %i.bxj, %i.bxk
  br i1 %i.bxl, label %.lr.ph.i.i450, label %_ZN5arrow7compute8internal12_GLOBAL__N_114CastNumberImplINS_8Int8TypeEEEvNS_4Type4typeERKNS_9ArraySpanEPS7_.exit, !llvm.loop !229

bb.bx:                                            ; preds = %bb.bv
  %i.bxm = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.bxn = load i64, ptr %i.bxm, align 8, !tbaa !46 ; 5 uses
  %i.bxo = icmp sgt i64 %i.bxn, 0
  br i1 %i.bxo, label %.lr.ph.preheader.i43.i439, label %_ZN5arrow7compute8internal12_GLOBAL__N_114CastNumberImplINS_8Int8TypeEEEvNS_4Type4typeERKNS_9ArraySpanEPS7_.exit

.lr.ph.preheader.i43.i439:                        ; preds = %bb.bx
  %i.bxp = getelementptr i8, ptr %3, i64 56
  %.val24.i440 = load ptr, ptr %i.bxp, align 8, !tbaa !42
  %i.bxq = getelementptr i8, ptr %3, i64 24
  %.val23.i441 = load i64, ptr %i.bxq, align 8, !tbaa !33
  %i.bxr = getelementptr inbounds [2 x i8], ptr %.val24.i440, i64 %.val23.i441 ; 3 uses
  %i.bxs = getelementptr inbounds nuw i8, ptr %2, i64 56
  %i.bxt = load ptr, ptr %i.bxs, align 8, !tbaa !42
  %i.bxu = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.bxv = load i64, ptr %i.bxu, align 8, !tbaa !33
  %i.bxw = getelementptr inbounds [4 x i8], ptr %i.bxt, i64 %i.bxv ; 3 uses
  %min.iters.check1480 = icmp ult i64 %i.bxn, 8
  br i1 %min.iters.check1480, label %.lr.ph.i44.i442.preheader, label %vector.ph1481

vector.ph1481:                                    ; preds = %.lr.ph.preheader.i43.i439
  %n.vec1483 = and i64 %i.bxn, 9223372036854775800 ; 5 uses
  %i.bxx = shl nuw i64 %n.vec1483, 1
  %i.bxy = getelementptr i8, ptr %i.bxr, i64 %i.bxx
  %i.bxz = shl i64 %n.vec1483, 2
  %i.bya = getelementptr i8, ptr %i.bxw, i64 %i.bxz
  br label %vector.body1484

vector.body1484:                                  ; preds = %vector.body1484, %vector.ph1481
  %index1485 = phi i64 [ 0, %vector.ph1481 ], [ %index.next1490, %vector.body1484 ] ; 3 uses
  %i.byb = shl i64 %index1485, 1
  %next.gep1486 = getelementptr i8, ptr %i.bxr, i64 %i.byb ; 2 uses
  %i.byc = shl i64 %index1485, 2
  %next.gep1487 = getelementptr i8, ptr %i.bxw, i64 %i.byc ; 2 uses
  %i.byd = getelementptr i8, ptr %next.gep1487, i64 16
  %wide.load1488 = load <4 x i32>, ptr %next.gep1487, align 4, !tbaa !3
  %wide.load1489 = load <4 x i32>, ptr %i.byd, align 4, !tbaa !3
  %i.bye = trunc <4 x i32> %wide.load1488 to <4 x i16>
  %i.byf = trunc <4 x i32> %wide.load1489 to <4 x i16>
  %i.byg = getelementptr i8, ptr %next.gep1486, i64 8
  store <4 x i16> %i.bye, ptr %next.gep1486, align 2, !tbaa !51
  store <4 x i16> %i.byf, ptr %i.byg, align 2, !tbaa !51
  %index.next1490 = add nuw i64 %index1485, 8     ; 2 uses
  %i.byh = icmp eq i64 %index.next1490, %n.vec1483
  br i1 %i.byh, label %middle.block1491, label %vector.body1484, !llvm.loop !230

middle.block1491:                                 ; preds = %vector.body1484
  %cmp.n1492 = icmp eq i64 %i.bxn, %n.vec1483
  br i1 %cmp.n1492, label %_ZN5arrow7compute8internal12_GLOBAL__N_114CastNumberImplINS_8Int8TypeEEEvNS_4Type4typeERKNS_9ArraySpanEPS7_.exit, label %.lr.ph.i44.i442.preheader

.lr.ph.i44.i442.preheader:                        ; preds = %.lr.ph.preheader.i43.i439, %middle.block1491
  %.03.i45.i443.ph = phi i64 [ 0, %.lr.ph.preheader.i43.i439 ], [ %n.vec1483, %middle.block1491 ]
  %.062.i46.i444.ph = phi ptr [ %i.bxr, %.lr.ph.preheader.i43.i439 ], [ %i.bxy, %middle.block1491 ]
  %.071.i47.i445.ph = phi ptr [ %i.bxw, %.lr.ph.preheader.i43.i439 ], [ %i.bya, %middle.block1491 ]
  br label %.lr.ph.i44.i442

.lr.ph.i44.i442:                                  ; preds = %.lr.ph.i44.i442.preheader, %.lr.ph.i44.i442
  %.03.i45.i443 = phi i64 [ %i.bym, %.lr.ph.i44.i442 ], [ %.03.i45.i443.ph, %.lr.ph.i44.i442.preheader ]
  %.062.i46.i444 = phi ptr [ %i.byl, %.lr.ph.i44.i442 ], [ %.062.i46.i444.ph, %.lr.ph.i44.i442.preheader ] ; 2 uses
  %.071.i47.i445 = phi ptr [ %i.byi, %.lr.ph.i44.i442 ], [ %.071.i47.i445.ph, %.lr.ph.i44.i442.preheader ] ; 2 uses
  %i.byi = getelementptr inbounds nuw i8, ptr %.071.i47.i445, i64 4
  %i.byj = load i32, ptr %.071.i47.i445, align 4, !tbaa !3
  %i.byk = trunc i32 %i.byj to i16
  %i.byl = getelementptr inbounds nuw i8, ptr %.062.i46.i444, i64 2
  store i16 %i.byk, ptr %.062.i46.i444, align 2, !tbaa !51
  %i.bym = add nuw nsw i64 %.03.i45.i443, 1       ; 2 uses
  %exitcond.not.i.i446 = icmp eq i64 %i.bym, %i.bxn
  br i1 %exitcond.not.i.i446, label %_ZN5arrow7compute8internal12_GLOBAL__N_114CastNumberImplINS_8Int8TypeEEEvNS_4Type4typeERKNS_9ArraySpanEPS7_.exit, label %.lr.ph.i44.i442, !llvm.loop !231

bb.by:                                            ; preds = %bb.bv
  %i.byn = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.byo = load i64, ptr %i.byn, align 8, !tbaa !46 ; 7 uses
  %i.byp = icmp sgt i64 %i.byo, 0
  br i1 %i.byp, label %.lr.ph.preheader.i48.i431, label %_ZN5arrow7compute8internal12_GLOBAL__N_114CastNumberImplINS_8Int8TypeEEEvNS_4Type4typeERKNS_9ArraySpanEPS7_.exit

.lr.ph.preheader.i48.i431:                        ; preds = %bb.by
  %i.byq = getelementptr i8, ptr %3, i64 56
  %.val26.i432 = load ptr, ptr %i.byq, align 8, !tbaa !42 ; 2 uses
  %i.byr = getelementptr i8, ptr %3, i64 24
  %.val25.i433 = load i64, ptr %i.byr, align 8, !tbaa !33 ; 2 uses
  %i.bys = getelementptr inbounds [4 x i8], ptr %.val26.i432, i64 %.val25.i433 ; 4 uses
  %i.byt = getelementptr inbounds nuw i8, ptr %2, i64 56
  %i.byu = load ptr, ptr %i.byt, align 8, !tbaa !42 ; 2 uses
  %i.byv = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.byw = load i64, ptr %i.byv, align 8, !tbaa !33 ; 2 uses
  %i.byx = getelementptr inbounds [4 x i8], ptr %i.byu, i64 %i.byw ; 4 uses
  %min.iters.check1463 = icmp ult i64 %i.byo, 20
  br i1 %min.iters.check1463, label %.lr.ph.i49.i434.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.preheader.i48.i431
  %i.byy = ptrtoaddr ptr %i.byu to i64
  %.val26.i4321461 = ptrtoaddr ptr %.val26.i432 to i64
  %i.byz = shl i64 %.val25.i433, 2
  %i.bza = add i64 %i.byz, %.val26.i4321461
  %i.bzb = shl i64 %i.byw, 2
  %i.bzc = add i64 %i.bzb, %i.byy
  %i.bzd = sub i64 %i.bzc, %i.bza
  %diff.check = icmp ugt i64 %i.bzd, -32
  br i1 %diff.check, label %.lr.ph.i49.i434.preheader, label %vector.ph1464

vector.ph1464:                                    ; preds = %vector.memcheck
  %n.vec1466 = and i64 %i.byo, 9223372036854775800 ; 4 uses
  %i.bze = shl i64 %n.vec1466, 2                  ; 2 uses
  %i.bzf = getelementptr i8, ptr %i.bys, i64 %i.bze
  %i.bzg = getelementptr i8, ptr %i.byx, i64 %i.bze
  br label %vector.body1467

vector.body1467:                                  ; preds = %vector.body1467, %vector.ph1464
  %index1468 = phi i64 [ 0, %vector.ph1464 ], [ %index.next1473, %vector.body1467 ] ; 2 uses
  %i.bzh = shl i64 %index1468, 2                  ; 2 uses
  %next.gep1469 = getelementptr i8, ptr %i.bys, i64 %i.bzh ; 2 uses
  %next.gep1470 = getelementptr i8, ptr %i.byx, i64 %i.bzh ; 2 uses
  %i.bzi = getelementptr i8, ptr %next.gep1470, i64 16
  %wide.load1471 = load <4 x i32>, ptr %next.gep1470, align 4, !tbaa !3
  %wide.load1472 = load <4 x i32>, ptr %i.bzi, align 4, !tbaa !3
  %i.bzj = getelementptr i8, ptr %next.gep1469, i64 16
  store <4 x i32> %wide.load1471, ptr %next.gep1469, align 4, !tbaa !3
  store <4 x i32> %wide.load1472, ptr %i.bzj, align 4, !tbaa !3
  %index.next1473 = add nuw i64 %index1468, 8     ; 2 uses
  %i.bzk = icmp eq i64 %index.next1473, %n.vec1466
  br i1 %i.bzk, label %middle.block1474, label %vector.body1467, !llvm.loop !232

middle.block1474:                                 ; preds = %vector.body1467
  %cmp.n1475 = icmp eq i64 %i.byo, %n.vec1466
  br i1 %cmp.n1475, label %_ZN5arrow7compute8internal12_GLOBAL__N_114CastNumberImplINS_8Int8TypeEEEvNS_4Type4typeERKNS_9ArraySpanEPS7_.exit, label %.lr.ph.i49.i434.preheader

.lr.ph.i49.i434.preheader:                        ; preds = %vector.memcheck, %.lr.ph.preheader.i48.i431, %middle.block1474
  %.03.i50.i435.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %.lr.ph.preheader.i48.i431 ], [ %n.vec1466, %middle.block1474 ] ; 3 uses
  %.062.i51.i436.ph = phi ptr [ %i.bys, %vector.memcheck ], [ %i.bys, %.lr.ph.preheader.i48.i431 ], [ %i.bzf, %middle.block1474 ] ; 2 uses
  %.071.i52.i437.ph = phi ptr [ %i.byx, %vector.memcheck ], [ %i.byx, %.lr.ph.preheader.i48.i431 ], [ %i.bzg, %middle.block1474 ] ; 2 uses
  %xtraiter2305 = and i64 %i.byo, 7               ; 2 uses
  %lcmp.mod2306.not = icmp eq i64 %xtraiter2305, 0
  br i1 %lcmp.mod2306.not, label %.lr.ph.i49.i434.prol.loopexit, label %.lr.ph.i49.i434.prol

.lr.ph.i49.i434.prol:                             ; preds = %.lr.ph.i49.i434.preheader, %.lr.ph.i49.i434.prol
  %.03.i50.i435.prol = phi i64 [ %i.bzo, %.lr.ph.i49.i434.prol ], [ %.03.i50.i435.ph, %.lr.ph.i49.i434.preheader ]
  %.062.i51.i436.prol = phi ptr [ %i.bzn, %.lr.ph.i49.i434.prol ], [ %.062.i51.i436.ph, %.lr.ph.i49.i434.preheader ] ; 2 uses
  %.071.i52.i437.prol = phi ptr [ %i.bzl, %.lr.ph.i49.i434.prol ], [ %.071.i52.i437.ph, %.lr.ph.i49.i434.preheader ] ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i49.i434.prol ], [ 0, %.lr.ph.i49.i434.preheader ]
  %i.bzl = getelementptr inbounds nuw i8, ptr %.071.i52.i437.prol, i64 4 ; 2 uses
  %i.bzm = load i32, ptr %.071.i52.i437.prol, align 4, !tbaa !3
  %i.bzn = getelementptr inbounds nuw i8, ptr %.062.i51.i436.prol, i64 4 ; 2 uses
  store i32 %i.bzm, ptr %.062.i51.i436.prol, align 4, !tbaa !3
  %i.bzo = add nuw nsw i64 %.03.i50.i435.prol, 1  ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter2305
  br i1 %prol.iter.cmp.not, label %.lr.ph.i49.i434.prol.loopexit, label %.lr.ph.i49.i434.prol, !llvm.loop !233

.lr.ph.i49.i434.prol.loopexit:                    ; preds = %.lr.ph.i49.i434.prol, %.lr.ph.i49.i434.preheader
  %.03.i50.i435.unr = phi i64 [ %.03.i50.i435.ph, %.lr.ph.i49.i434.preheader ], [ %i.bzo, %.lr.ph.i49.i434.prol ]
  %.062.i51.i436.unr = phi ptr [ %.062.i51.i436.ph, %.lr.ph.i49.i434.preheader ], [ %i.bzn, %.lr.ph.i49.i434.prol ]
  %.071.i52.i437.unr = phi ptr [ %.071.i52.i437.ph, %.lr.ph.i49.i434.preheader ], [ %i.bzl, %.lr.ph.i49.i434.prol ]
  %i.bzp = sub nsw i64 %.03.i50.i435.ph, %i.byo
  %i.bzq = icmp ugt i64 %i.bzp, -8
  br i1 %i.bzq, label %_ZN5arrow7compute8internal12_GLOBAL__N_114CastNumberImplINS_8Int8TypeEEEvNS_4Type4typeERKNS_9ArraySpanEPS7_.exit, label %.lr.ph.i49.i434

.lr.ph.i49.i434:                                  ; preds = %.lr.ph.i49.i434.prol.loopexit, %.lr.ph.i49.i434
  %.03.i50.i435 = phi i64 [ %i.cap, %.lr.ph.i49.i434 ], [ %.03.i50.i435.unr, %.lr.ph.i49.i434.prol.loopexit ]
  %.062.i51.i436 = phi ptr [ %i.cao, %.lr.ph.i49.i434 ], [ %.062.i51.i436.unr, %.lr.ph.i49.i434.prol.loopexit ] ; 9 uses
  %.071.i52.i437 = phi ptr [ %i.cam, %.lr.ph.i49.i434 ], [ %.071.i52.i437.unr, %.lr.ph.i49.i434.prol.loopexit ] ; 9 uses
  %i.bzr = getelementptr inbounds nuw i8, ptr %.071.i52.i437, i64 4
  %i.bzs = load i32, ptr %.071.i52.i437, align 4, !tbaa !3
  %i.bzt = getelementptr inbounds nuw i8, ptr %.062.i51.i436, i64 4
  store i32 %i.bzs, ptr %.062.i51.i436, align 4, !tbaa !3
  %i.bzu = getelementptr inbounds nuw i8, ptr %.071.i52.i437, i64 8
  %i.bzv = load i32, ptr %i.bzr, align 4, !tbaa !3
  %i.bzw = getelementptr inbounds nuw i8, ptr %.062.i51.i436, i64 8
  store i32 %i.bzv, ptr %i.bzt, align 4, !tbaa !3
  %i.bzx = getelementptr inbounds nuw i8, ptr %.071.i52.i437, i64 12
  %i.bzy = load i32, ptr %i.bzu, align 4, !tbaa !3
  %i.bzz = getelementptr inbounds nuw i8, ptr %.062.i51.i436, i64 12
  store i32 %i.bzy, ptr %i.bzw, align 4, !tbaa !3
  %i.caa = getelementptr inbounds nuw i8, ptr %.071.i52.i437, i64 16
  %i.cab = load i32, ptr %i.bzx, align 4, !tbaa !3
  %i.cac = getelementptr inbounds nuw i8, ptr %.062.i51.i436, i64 16
  store i32 %i.cab, ptr %i.bzz, align 4, !tbaa !3
  %i.cad = getelementptr inbounds nuw i8, ptr %.071.i52.i437, i64 20
  %i.cae = load i32, ptr %i.caa, align 4, !tbaa !3
  %i.caf = getelementptr inbounds nuw i8, ptr %.062.i51.i436, i64 20
  store i32 %i.cae, ptr %i.cac, align 4, !tbaa !3
  %i.cag = getelementptr inbounds nuw i8, ptr %.071.i52.i437, i64 24
  %i.cah = load i32, ptr %i.cad, align 4, !tbaa !3
  %i.cai = getelementptr inbounds nuw i8, ptr %.062.i51.i436, i64 24
  store i32 %i.cah, ptr %i.caf, align 4, !tbaa !3
  %i.caj = getelementptr inbounds nuw i8, ptr %.071.i52.i437, i64 28
  %i.cak = load i32, ptr %i.cag, align 4, !tbaa !3
  %i.cal = getelementptr inbounds nuw i8, ptr %.062.i51.i436, i64 28
  store i32 %i.cak, ptr %i.cai, align 4, !tbaa !3
  %i.cam = getelementptr inbounds nuw i8, ptr %.071.i52.i437, i64 32
  %i.can = load i32, ptr %i.caj, align 4, !tbaa !3
  %i.cao = getelementptr inbounds nuw i8, ptr %.062.i51.i436, i64 32
  store i32 %i.can, ptr %i.cal, align 4, !tbaa !3
  %i.cap = add nuw nsw i64 %.03.i50.i435, 8       ; 2 uses
  %exitcond.not.i53.i438.7 = icmp eq i64 %i.cap, %i.byo
  br i1 %exitcond.not.i53.i438.7, label %_ZN5arrow7compute8internal12_GLOBAL__N_114CastNumberImplINS_8Int8TypeEEEvNS_4Type4typeERKNS_9ArraySpanEPS7_.exit, label %.lr.ph.i49.i434, !llvm.loop !234

bb.bz:                                            ; preds = %bb.bv
  %i.caq = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.car = load i64, ptr %i.caq, align 8, !tbaa !46
  %i.cas = icmp sgt i64 %i.car, 0
  br i1 %i.cas, label %.lr.ph.preheader.i54.i424, label %_ZN5arrow7compute8internal12_GLOBAL__N_114CastNumberImplINS_8Int8TypeEEEvNS_4Type4typeERKNS_9ArraySpanEPS7_.exit

.lr.ph.preheader.i54.i424:                        ; preds = %bb.bz
  %i.cat = getelementptr i8, ptr %3, i64 56
  %.val28.i425 = load ptr, ptr %i.cat, align 8, !tbaa !42
  %i.cau = getelementptr i8, ptr %3, i64 24
  %.val27.i426 = load i64, ptr %i.cau, align 8, !tbaa !33
  %i.cav = getelementptr inbounds [8 x i8], ptr %.val28.i425, i64 %.val27.i426
  %i.caw = getelementptr inbounds nuw i8, ptr %2, i64 56
  %i.cax = load ptr, ptr %i.caw, align 8, !tbaa !42
  %i.cay = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.caz = load i64, ptr %i.cay, align 8, !tbaa !33
  %i.cba = getelementptr inbounds [4 x i8], ptr %i.cax, i64 %i.caz
  br label %.lr.ph.i55.i427

.lr.ph.i55.i427:                                  ; preds = %.lr.ph.i55.i427, %.lr.ph.preheader.i54.i424
  %.03.i56.i428 = phi i64 [ %i.cbf, %.lr.ph.i55.i427 ], [ 0, %.lr.ph.preheader.i54.i424 ]
  %.062.i57.i429 = phi ptr [ %i.cbe, %.lr.ph.i55.i427 ], [ %i.cav, %.lr.ph.preheader.i54.i424 ] ; 2 uses
  %.071.i58.i430 = phi ptr [ %i.cbb, %.lr.ph.i55.i427 ], [ %i.cba, %.lr.ph.preheader.i54.i424 ] ; 2 uses
  %i.cbb = getelementptr inbounds nuw i8, ptr %.071.i58.i430, i64 4
  %i.cbc = load i32, ptr %.071.i58.i430, align 4, !tbaa !3
  %i.cbd = zext i32 %i.cbc to i64
  %i.cbe = getelementptr inbounds nuw i8, ptr %.062.i57.i429, i64 8
  store i64 %i.cbd, ptr %.062.i57.i429, align 8, !tbaa !71
  %i.cbf = add nuw nsw i64 %.03.i56.i428, 1       ; 2 uses
  %i.cbg = load i64, ptr %i.caq, align 8, !tbaa !46
  %i.cbh = icmp slt i64 %i.cbf, %i.cbg
  br i1 %i.cbh, label %.lr.ph.i55.i427, label %_ZN5arrow7compute8internal12_GLOBAL__N_114CastNumberImplINS_8Int8TypeEEEvNS_4Type4typeERKNS_9ArraySpanEPS7_.exit, !llvm.loop !235

bb.ca:                                            ; preds = %bb.bv
  %i.cbi = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.cbj = load i64, ptr %i.cbi, align 8, !tbaa !46
  %i.cbk = icmp sgt i64 %i.cbj, 0
  br i1 %i.cbk, label %.lr.ph.preheader.i59.i417, label %_ZN5arrow7compute8internal12_GLOBAL__N_114CastNumberImplINS_8Int8TypeEEEvNS_4Type4typeERKNS_9ArraySpanEPS7_.exit

.lr.ph.preheader.i59.i417:                        ; preds = %bb.ca
  %i.cbl = getelementptr i8, ptr %3, i64 56
  %.val30.i418 = load ptr, ptr %i.cbl, align 8, !tbaa !42
  %i.cbm = getelementptr i8, ptr %3, i64 24
  %.val29.i419 = load i64, ptr %i.cbm, align 8, !tbaa !33
  %i.cbn = getelementptr inbounds i8, ptr %.val30.i418, i64 %.val29.i419
  %i.cbo = getelementptr inbounds nuw i8, ptr %2, i64 56
  %i.cbp = load ptr, ptr %i.cbo, align 8, !tbaa !42
  %i.cbq = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.cbr = load i64, ptr %i.cbq, align 8, !tbaa !33
  %i.cbs = getelementptr inbounds [4 x i8], ptr %i.cbp, i64 %i.cbr
  br label %.lr.ph.i60.i420

.lr.ph.i60.i420:                                  ; preds = %.lr.ph.i60.i420, %.lr.ph.preheader.i59.i417
  %.03.i61.i421 = phi i64 [ %i.cbx, %.lr.ph.i60.i420 ], [ 0, %.lr.ph.preheader.i59.i417 ]
  %.062.i62.i422 = phi ptr [ %i.cbw, %.lr.ph.i60.i420 ], [ %i.cbn, %.lr.ph.preheader.i59.i417 ] ; 2 uses
  %.071.i63.i423 = phi ptr [ %i.cbt, %.lr.ph.i60.i420 ], [ %i.cbs, %.lr.ph.preheader.i59.i417 ] ; 2 uses
  %i.cbt = getelementptr inbounds nuw i8, ptr %.071.i63.i423, i64 4
  %i.cbu = load i32, ptr %.071.i63.i423, align 4, !tbaa !3
  %i.cbv = trunc i32 %i.cbu to i8
  %i.cbw = getelementptr inbounds nuw i8, ptr %.062.i62.i422, i64 1
  store i8 %i.cbv, ptr %.062.i62.i422, align 1, !tbaa !47
  %i.cbx = add nuw nsw i64 %.03.i61.i421, 1       ; 2 uses
  %i.cby = load i64, ptr %i.cbi, align 8, !tbaa !46
  %i.cbz = icmp slt i64 %i.cbx, %i.cby
  br i1 %i.cbz, label %.lr.ph.i60.i420, label %_ZN5arrow7compute8internal12_GLOBAL__N_114CastNumberImplINS_8Int8TypeEEEvNS_4Type4typeERKNS_9ArraySpanEPS7_.exit, !llvm.loop !236

bb.cb:                                            ; preds = %bb.bv
  %i.cca = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.ccb = load i64, ptr %i.cca, align 8, !tbaa !46 ; 5 uses
  %i.ccc = icmp sgt i64 %i.ccb, 0
  br i1 %i.ccc, label %.lr.ph.preheader.i64.i409, label %_ZN5arrow7compute8internal12_GLOBAL__N_114CastNumberImplINS_8Int8TypeEEEvNS_4Type4typeERKNS_9ArraySpanEPS7_.exit

.lr.ph.preheader.i64.i409:                        ; preds = %bb.cb
  %i.ccd = getelementptr i8, ptr %3, i64 56
  %.val32.i410 = load ptr, ptr %i.ccd, align 8, !tbaa !42
  %i.cce = getelementptr i8, ptr %3, i64 24
  %.val31.i411 = load i64, ptr %i.cce, align 8, !tbaa !33
  %i.ccf = getelementptr inbounds [2 x i8], ptr %.val32.i410, i64 %.val31.i411 ; 3 uses
  %i.ccg = getelementptr inbounds nuw i8, ptr %2, i64 56
  %i.cch = load ptr, ptr %i.ccg, align 8, !tbaa !42
  %i.cci = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.ccj = load i64, ptr %i.cci, align 8, !tbaa !33
  %i.cck = getelementptr inbounds [4 x i8], ptr %i.cch, i64 %i.ccj ; 3 uses
  %min.iters.check1445 = icmp ult i64 %i.ccb, 8
  br i1 %min.iters.check1445, label %.lr.ph.i65.i412.preheader, label %vector.ph1446

vector.ph1446:                                    ; preds = %.lr.ph.preheader.i64.i409
  %n.vec1448 = and i64 %i.ccb, 9223372036854775800 ; 5 uses
  %i.ccl = shl nuw i64 %n.vec1448, 1
  %i.ccm = getelementptr i8, ptr %i.ccf, i64 %i.ccl
  %i.ccn = shl i64 %n.vec1448, 2
  %i.cco = getelementptr i8, ptr %i.cck, i64 %i.ccn
  br label %vector.body1449

vector.body1449:                                  ; preds = %vector.body1449, %vector.ph1446
  %index1450 = phi i64 [ 0, %vector.ph1446 ], [ %index.next1455, %vector.body1449 ] ; 3 uses
  %i.ccp = shl i64 %index1450, 1
  %next.gep1451 = getelementptr i8, ptr %i.ccf, i64 %i.ccp ; 2 uses
  %i.ccq = shl i64 %index1450, 2
  %next.gep1452 = getelementptr i8, ptr %i.cck, i64 %i.ccq ; 2 uses
  %i.ccr = getelementptr i8, ptr %next.gep1452, i64 16
  %wide.load1453 = load <4 x i32>, ptr %next.gep1452, align 4, !tbaa !3
end_hunk_3

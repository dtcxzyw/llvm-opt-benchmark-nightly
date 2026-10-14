Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/arrow/original/scalar_cast_internal?download=true
inline.NumInlined: 1403
inline.NumDeleted: 810
loop-unroll.NumRuntimeUnrolled: 24
loop-unroll.NumUnrolled: 24
begin_hunk_0_@_ZN5arrow7compute8internal24CastNumberToNumberUnsafeENS_4Type4typeES3_RKNS_9ArraySpanEPS4_:bb.a
  %i.qs = getelementptr i8, ptr %3, i64 24
  %.val.i63 = load i64, ptr %i.qs, align 8, !tbaa !401
  %i.qt = getelementptr inbounds i8, ptr %.val22.i62, i64 %.val.i63
  %i.qu = getelementptr inbounds nuw i8, ptr %2, i64 56
  %i.qv = load ptr, ptr %i.qu, align 8, !tbaa !403
  %i.qw = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.qx = load i64, ptr %i.qw, align 8, !tbaa !401
  %i.qy = getelementptr inbounds [2 x i8], ptr %i.qv, i64 %i.qx
  br label %.lr.ph.i.i64

.lr.ph.i.i64:                                     ; preds = %.lr.ph.i.i64, %.lr.ph.preheader.i.i61
  %.03.i.i65 = phi i64 [ %i.rd, %.lr.ph.i.i64 ], [ 0, %.lr.ph.preheader.i.i61 ]
  %.062.i.i66 = phi ptr [ %i.rc, %.lr.ph.i.i64 ], [ %i.qt, %.lr.ph.preheader.i.i61 ] ; 2 uses
  %.071.i.i67 = phi ptr [ %i.qz, %.lr.ph.i.i64 ], [ %i.qy, %.lr.ph.preheader.i.i61 ] ; 2 uses
  %i.qz = getelementptr inbounds nuw i8, ptr %.071.i.i67, i64 2
  %i.ra = load i16, ptr %.071.i.i67, align 2, !tbaa !406
  %i.rb = trunc i16 %i.ra to i8
  %i.rc = getelementptr inbounds nuw i8, ptr %.062.i.i66, i64 1
  store i8 %i.rb, ptr %.062.i.i66, align 1, !tbaa !49
  %i.rd = add nuw nsw i64 %.03.i.i65, 1           ; 2 uses
  %i.re = load i64, ptr %i.qo, align 8, !tbaa !404
  %i.rf = icmp slt i64 %i.rd, %i.re
  br i1 %i.rf, label %.lr.ph.i.i64, label %_ZN5arrow7compute8internal12_GLOBAL__N_114CastNumberImplINS_8Int8TypeEEEvNS_4Type4typeERKNS_9ArraySpanEPS7_.exit, !llvm.loop !217

bb.p:                                             ; preds = %bb.n
  %i.rg = getelementptr i8, ptr %3, i64 24
  %.val23.i59 = load i64, ptr %i.rg, align 8, !tbaa !401
  %i.rh = getelementptr i8, ptr %3, i64 56
  %.val24.i60 = load ptr, ptr %i.rh, align 8, !tbaa !403
  %i.ri = getelementptr inbounds [2 x i8], ptr %.val24.i60, i64 %.val23.i59
  %i.rj = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.rk = load i64, ptr %i.rj, align 8, !tbaa !401
  %i.rl = getelementptr inbounds nuw i8, ptr %2, i64 56
  %i.rm = load ptr, ptr %i.rl, align 8, !tbaa !403
  %i.rn = getelementptr inbounds [2 x i8], ptr %i.rm, i64 %i.rk
  %i.ro = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.rp = load i64, ptr %i.ro, align 8, !tbaa !404
  %i.rq = shl i64 %i.rp, 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 2 %i.ri, ptr align 2 %i.rn, i64 %i.rq, i1 false)
  br label %_ZN5arrow7compute8internal12_GLOBAL__N_114CastNumberImplINS_8Int8TypeEEEvNS_4Type4typeERKNS_9ArraySpanEPS7_.exit

bb.q:                                             ; preds = %bb.n
  %i.rr = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.rs = load i64, ptr %i.rr, align 8, !tbaa !404 ; 5 uses
  %i.rt = icmp sgt i64 %i.rs, 0
  br i1 %i.rt, label %.lr.ph.preheader.i43.i51, label %_ZN5arrow7compute8internal12_GLOBAL__N_114CastNumberImplINS_8Int8TypeEEEvNS_4Type4typeERKNS_9ArraySpanEPS7_.exit

.lr.ph.preheader.i43.i51:                         ; preds = %bb.q
  %i.ru = getelementptr i8, ptr %3, i64 56
  %.val26.i52 = load ptr, ptr %i.ru, align 8, !tbaa !403
  %i.rv = getelementptr i8, ptr %3, i64 24
  %.val25.i53 = load i64, ptr %i.rv, align 8, !tbaa !401
  %i.rw = getelementptr inbounds [4 x i8], ptr %.val26.i52, i64 %.val25.i53 ; 3 uses
  %i.rx = getelementptr inbounds nuw i8, ptr %2, i64 56
  %i.ry = load ptr, ptr %i.rx, align 8, !tbaa !403
  %i.rz = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.sa = load i64, ptr %i.rz, align 8, !tbaa !401
  %i.sb = getelementptr inbounds [2 x i8], ptr %i.ry, i64 %i.sa ; 3 uses
  %min.iters.check1957 = icmp ult i64 %i.rs, 8
  br i1 %min.iters.check1957, label %.lr.ph.i44.i54.preheader, label %vector.ph1958

vector.ph1958:                                    ; preds = %.lr.ph.preheader.i43.i51
  %n.vec1959 = and i64 %i.rs, 9223372036854775800 ; 5 uses
  %i.sc = shl i64 %n.vec1959, 2
  %i.sd = getelementptr i8, ptr %i.rw, i64 %i.sc
  %i.se = shl nuw i64 %n.vec1959, 1
  %i.sf = getelementptr i8, ptr %i.sb, i64 %i.se
  br label %vector.body1960

vector.body1960:                                  ; preds = %vector.body1960, %vector.ph1958
  %index1961 = phi i64 [ 0, %vector.ph1958 ], [ %index.next1966, %vector.body1960 ] ; 3 uses
  %i.sg = shl i64 %index1961, 2
  %next.gep1962 = getelementptr i8, ptr %i.rw, i64 %i.sg ; 2 uses
  %i.sh = shl i64 %index1961, 1
  %next.gep1963 = getelementptr i8, ptr %i.sb, i64 %i.sh ; 2 uses
  %i.si = getelementptr i8, ptr %next.gep1963, i64 8
  %wide.load1964 = load <4 x i16>, ptr %next.gep1963, align 2, !tbaa !406
  %wide.load1965 = load <4 x i16>, ptr %i.si, align 2, !tbaa !406
  %i.sj = sext <4 x i16> %wide.load1964 to <4 x i32>
  %i.sk = sext <4 x i16> %wide.load1965 to <4 x i32>
  %i.sl = getelementptr i8, ptr %next.gep1962, i64 16
  store <4 x i32> %i.sj, ptr %next.gep1962, align 4, !tbaa !24
  store <4 x i32> %i.sk, ptr %i.sl, align 4, !tbaa !24
  %index.next1966 = add nuw i64 %index1961, 8     ; 2 uses
  %i.sm = icmp eq i64 %index.next1966, %n.vec1959
  br i1 %i.sm, label %middle.block1967, label %vector.body1960, !llvm.loop !218

middle.block1967:                                 ; preds = %vector.body1960
  %cmp.n1968 = icmp eq i64 %i.rs, %n.vec1959
  br i1 %cmp.n1968, label %_ZN5arrow7compute8internal12_GLOBAL__N_114CastNumberImplINS_8Int8TypeEEEvNS_4Type4typeERKNS_9ArraySpanEPS7_.exit, label %.lr.ph.i44.i54.preheader

.lr.ph.i44.i54.preheader:                         ; preds = %.lr.ph.preheader.i43.i51, %middle.block1967
  %.03.i45.i55.ph = phi i64 [ 0, %.lr.ph.preheader.i43.i51 ], [ %n.vec1959, %middle.block1967 ]
  %.062.i46.i56.ph = phi ptr [ %i.rw, %.lr.ph.preheader.i43.i51 ], [ %i.sd, %middle.block1967 ]
  %.071.i47.i57.ph = phi ptr [ %i.sb, %.lr.ph.preheader.i43.i51 ], [ %i.sf, %middle.block1967 ]
  br label %.lr.ph.i44.i54

.lr.ph.i44.i54:                                   ; preds = %.lr.ph.i44.i54.preheader, %.lr.ph.i44.i54
  %.03.i45.i55 = phi i64 [ %i.sr, %.lr.ph.i44.i54 ], [ %.03.i45.i55.ph, %.lr.ph.i44.i54.preheader ]
  %.062.i46.i56 = phi ptr [ %i.sq, %.lr.ph.i44.i54 ], [ %.062.i46.i56.ph, %.lr.ph.i44.i54.preheader ] ; 2 uses
  %.071.i47.i57 = phi ptr [ %i.sn, %.lr.ph.i44.i54 ], [ %.071.i47.i57.ph, %.lr.ph.i44.i54.preheader ] ; 2 uses
  %i.sn = getelementptr inbounds nuw i8, ptr %.071.i47.i57, i64 2
  %i.so = load i16, ptr %.071.i47.i57, align 2, !tbaa !406
  %i.sp = sext i16 %i.so to i32
  %i.sq = getelementptr inbounds nuw i8, ptr %.062.i46.i56, i64 4
  store i32 %i.sp, ptr %.062.i46.i56, align 4, !tbaa !24
  %i.sr = add nuw nsw i64 %.03.i45.i55, 1         ; 2 uses
  %exitcond.not.i.i58 = icmp eq i64 %i.sr, %i.rs
  br i1 %exitcond.not.i.i58, label %_ZN5arrow7compute8internal12_GLOBAL__N_114CastNumberImplINS_8Int8TypeEEEvNS_4Type4typeERKNS_9ArraySpanEPS7_.exit, label %.lr.ph.i44.i54, !llvm.loop !219

bb.r:                                             ; preds = %bb.n
  %i.ss = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.st = load i64, ptr %i.ss, align 8, !tbaa !404
  %i.su = icmp sgt i64 %i.st, 0
  br i1 %i.su, label %.lr.ph.preheader.i48.i, label %_ZN5arrow7compute8internal12_GLOBAL__N_114CastNumberImplINS_8Int8TypeEEEvNS_4Type4typeERKNS_9ArraySpanEPS7_.exit

.lr.ph.preheader.i48.i:                           ; preds = %bb.r
  %i.sv = getelementptr i8, ptr %3, i64 56
  %.val28.i49 = load ptr, ptr %i.sv, align 8, !tbaa !403
  %i.sw = getelementptr i8, ptr %3, i64 24
  %.val27.i50 = load i64, ptr %i.sw, align 8, !tbaa !401
  %i.sx = getelementptr inbounds [8 x i8], ptr %.val28.i49, i64 %.val27.i50
  %i.sy = getelementptr inbounds nuw i8, ptr %2, i64 56
  %i.sz = load ptr, ptr %i.sy, align 8, !tbaa !403
  %i.ta = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.tb = load i64, ptr %i.ta, align 8, !tbaa !401
  %i.tc = getelementptr inbounds [2 x i8], ptr %i.sz, i64 %i.tb
  br label %.lr.ph.i49.i

.lr.ph.i49.i:                                     ; preds = %.lr.ph.i49.i, %.lr.ph.preheader.i48.i
  %.03.i50.i = phi i64 [ %i.th, %.lr.ph.i49.i ], [ 0, %.lr.ph.preheader.i48.i ]
  %.062.i51.i = phi ptr [ %i.tg, %.lr.ph.i49.i ], [ %i.sx, %.lr.ph.preheader.i48.i ] ; 2 uses
  %.071.i52.i = phi ptr [ %i.td, %.lr.ph.i49.i ], [ %i.tc, %.lr.ph.preheader.i48.i ] ; 2 uses
  %i.td = getelementptr inbounds nuw i8, ptr %.071.i52.i, i64 2
  %i.te = load i16, ptr %.071.i52.i, align 2, !tbaa !406
  %i.tf = sext i16 %i.te to i64
  %i.tg = getelementptr inbounds nuw i8, ptr %.062.i51.i, i64 8
  store i64 %i.tf, ptr %.062.i51.i, align 8, !tbaa !414
  %i.th = add nuw nsw i64 %.03.i50.i, 1           ; 2 uses
  %i.ti = load i64, ptr %i.ss, align 8, !tbaa !404
  %i.tj = icmp slt i64 %i.th, %i.ti
  br i1 %i.tj, label %.lr.ph.i49.i, label %_ZN5arrow7compute8internal12_GLOBAL__N_114CastNumberImplINS_8Int8TypeEEEvNS_4Type4typeERKNS_9ArraySpanEPS7_.exit, !llvm.loop !220

bb.s:                                             ; preds = %bb.n
  %i.tk = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.tl = load i64, ptr %i.tk, align 8, !tbaa !404
  %i.tm = icmp sgt i64 %i.tl, 0
  br i1 %i.tm, label %.lr.ph.preheader.i53.i, label %_ZN5arrow7compute8internal12_GLOBAL__N_114CastNumberImplINS_8Int8TypeEEEvNS_4Type4typeERKNS_9ArraySpanEPS7_.exit

.lr.ph.preheader.i53.i:                           ; preds = %bb.s
  %i.tn = getelementptr i8, ptr %3, i64 56
  %.val30.i47 = load ptr, ptr %i.tn, align 8, !tbaa !403
  %i.to = getelementptr i8, ptr %3, i64 24
  %.val29.i48 = load i64, ptr %i.to, align 8, !tbaa !401
  %i.tp = getelementptr inbounds i8, ptr %.val30.i47, i64 %.val29.i48
  %i.tq = getelementptr inbounds nuw i8, ptr %2, i64 56
  %i.tr = load ptr, ptr %i.tq, align 8, !tbaa !403
  %i.ts = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.tt = load i64, ptr %i.ts, align 8, !tbaa !401
  %i.tu = getelementptr inbounds [2 x i8], ptr %i.tr, i64 %i.tt
  br label %.lr.ph.i54.i

.lr.ph.i54.i:                                     ; preds = %.lr.ph.i54.i, %.lr.ph.preheader.i53.i
  %.03.i55.i = phi i64 [ %i.tz, %.lr.ph.i54.i ], [ 0, %.lr.ph.preheader.i53.i ]
  %.062.i56.i = phi ptr [ %i.ty, %.lr.ph.i54.i ], [ %i.tp, %.lr.ph.preheader.i53.i ] ; 2 uses
  %.071.i57.i = phi ptr [ %i.tv, %.lr.ph.i54.i ], [ %i.tu, %.lr.ph.preheader.i53.i ] ; 2 uses
  %i.tv = getelementptr inbounds nuw i8, ptr %.071.i57.i, i64 2
  %i.tw = load i16, ptr %.071.i57.i, align 2, !tbaa !406
  %i.tx = trunc i16 %i.tw to i8
  %i.ty = getelementptr inbounds nuw i8, ptr %.062.i56.i, i64 1
  store i8 %i.tx, ptr %.062.i56.i, align 1, !tbaa !49
  %i.tz = add nuw nsw i64 %.03.i55.i, 1           ; 2 uses
  %i.ua = load i64, ptr %i.tk, align 8, !tbaa !404
  %i.ub = icmp slt i64 %i.tz, %i.ua
  br i1 %i.ub, label %.lr.ph.i54.i, label %_ZN5arrow7compute8internal12_GLOBAL__N_114CastNumberImplINS_8Int8TypeEEEvNS_4Type4typeERKNS_9ArraySpanEPS7_.exit, !llvm.loop !221

bb.t:                                             ; preds = %bb.n
  %i.uc = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.ud = load i64, ptr %i.uc, align 8, !tbaa !404 ; 11 uses
  %i.ue = icmp sgt i64 %i.ud, 0
  br i1 %i.ue, label %iter.check1939, label %_ZN5arrow7compute8internal12_GLOBAL__N_114CastNumberImplINS_8Int8TypeEEEvNS_4Type4typeERKNS_9ArraySpanEPS7_.exit

iter.check1939:                                   ; preds = %bb.t
  %i.uf = getelementptr i8, ptr %3, i64 56
  %.val32.i45 = load ptr, ptr %i.uf, align 8, !tbaa !403 ; 2 uses
  %i.ug = getelementptr i8, ptr %3, i64 24
  %.val31.i46 = load i64, ptr %i.ug, align 8, !tbaa !401 ; 2 uses
  %i.uh = getelementptr inbounds [2 x i8], ptr %.val32.i45, i64 %.val31.i46 ; 6 uses
  %i.ui = getelementptr inbounds nuw i8, ptr %2, i64 56
  %i.uj = load ptr, ptr %i.ui, align 8, !tbaa !403 ; 2 uses
  %i.uk = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.ul = load i64, ptr %i.uk, align 8, !tbaa !401 ; 2 uses
  %i.um = getelementptr inbounds [2 x i8], ptr %i.uj, i64 %i.ul ; 6 uses
  %min.iters.check1922 = icmp ult i64 %i.ud, 4
  br i1 %min.iters.check1922, label %.lr.ph.i59.i.preheader, label %vector.memcheck1918

vector.memcheck1918:                              ; preds = %iter.check1939
  %i.un = ptrtoaddr ptr %i.uj to i64
  %.val32.i451919 = ptrtoaddr ptr %.val32.i45 to i64
  %i.uo = shl i64 %.val31.i46, 1
  %14 = shl i64 %i.ul, 1
  %15 = add i64 %i.uo, %.val32.i451919
  %i.up = add i64 %14, %i.un
  %i.uq = sub i64 %i.up, %15
  %diff.check1920 = icmp ugt i64 %i.uq, -32
  br i1 %diff.check1920, label %.lr.ph.i59.i.preheader, label %vector.main.loop.iter.check1923

vector.main.loop.iter.check1923:                  ; preds = %vector.memcheck1918
  %min.iters.check1924 = icmp ult i64 %i.ud, 16
  br i1 %min.iters.check1924, label %vec.epilog.ph1943, label %vector.ph1925

vector.ph1925:                                    ; preds = %vector.main.loop.iter.check1923
  %i.ur = and i64 %i.ud, 12
  %n.vec1926 = and i64 %i.ud, 9223372036854775792 ; 5 uses
  %i.us = shl nuw i64 %n.vec1926, 1               ; 2 uses
  %i.ut = getelementptr i8, ptr %i.uh, i64 %i.us
  %i.uu = getelementptr i8, ptr %i.um, i64 %i.us
  br label %vector.body1927

vector.body1927:                                  ; preds = %vector.ph1925, %vector.body1927
  %index1928 = phi i64 [ 0, %vector.ph1925 ], [ %index.next1933, %vector.body1927 ] ; 2 uses
  %i.uv = shl i64 %index1928, 1                   ; 2 uses
  %next.gep1929 = getelementptr i8, ptr %i.uh, i64 %i.uv ; 2 uses
  %next.gep1930 = getelementptr i8, ptr %i.um, i64 %i.uv ; 2 uses
  %i.uw = getelementptr i8, ptr %next.gep1930, i64 16
  %wide.load1931 = load <8 x i16>, ptr %next.gep1930, align 2, !tbaa !406
  %wide.load1932 = load <8 x i16>, ptr %i.uw, align 2, !tbaa !406
  %i.ux = getelementptr i8, ptr %next.gep1929, i64 16
  store <8 x i16> %wide.load1931, ptr %next.gep1929, align 2, !tbaa !406
  store <8 x i16> %wide.load1932, ptr %i.ux, align 2, !tbaa !406
  %index.next1933 = add nuw i64 %index1928, 16    ; 2 uses
  %i.uy = icmp eq i64 %index.next1933, %n.vec1926
  br i1 %i.uy, label %middle.block1934, label %vector.body1927, !llvm.loop !222

middle.block1934:                                 ; preds = %vector.body1927
  %cmp.n1935 = icmp eq i64 %i.ud, %n.vec1926
  br i1 %cmp.n1935, label %_ZN5arrow7compute8internal12_GLOBAL__N_114CastNumberImplINS_8Int8TypeEEEvNS_4Type4typeERKNS_9ArraySpanEPS7_.exit, label %vec.epilog.iter.check1941

vec.epilog.iter.check1941:                        ; preds = %middle.block1934
  %min.epilog.iters.check1942 = icmp eq i64 %i.ur, 0
  br i1 %min.epilog.iters.check1942, label %.lr.ph.i59.i.preheader, label %vec.epilog.ph1943, !prof !410

vec.epilog.ph1943:                                ; preds = %vector.main.loop.iter.check1923, %vec.epilog.iter.check1941
  %vec.epilog.resume.val1936 = phi i64 [ %n.vec1926, %vec.epilog.iter.check1941 ], [ 0, %vector.main.loop.iter.check1923 ]
  %n.vec1944 = and i64 %i.ud, 9223372036854775804 ; 4 uses
  %i.uz = shl nuw i64 %n.vec1944, 1               ; 2 uses
  %i.va = getelementptr i8, ptr %i.uh, i64 %i.uz
  %i.vb = getelementptr i8, ptr %i.um, i64 %i.uz
  br label %vec.epilog.vector.body1945

vec.epilog.vector.body1945:                       ; preds = %vec.epilog.vector.body1945, %vec.epilog.ph1943
  %index1946 = phi i64 [ %vec.epilog.resume.val1936, %vec.epilog.ph1943 ], [ %index.next1950, %vec.epilog.vector.body1945 ] ; 2 uses
  %i.vc = shl i64 %index1946, 1                   ; 2 uses
  %next.gep1947 = getelementptr i8, ptr %i.uh, i64 %i.vc
  %next.gep1948 = getelementptr i8, ptr %i.um, i64 %i.vc
  %wide.load1949 = load <4 x i16>, ptr %next.gep1948, align 2, !tbaa !406
  store <4 x i16> %wide.load1949, ptr %next.gep1947, align 2, !tbaa !406
  %index.next1950 = add nuw i64 %index1946, 4     ; 2 uses
  %i.vd = icmp eq i64 %index.next1950, %n.vec1944
  br i1 %i.vd, label %vec.epilog.middle.block1951, label %vec.epilog.vector.body1945, !llvm.loop !223

vec.epilog.middle.block1951:                      ; preds = %vec.epilog.vector.body1945
  %cmp.n1952 = icmp eq i64 %i.ud, %n.vec1944
  br i1 %cmp.n1952, label %_ZN5arrow7compute8internal12_GLOBAL__N_114CastNumberImplINS_8Int8TypeEEEvNS_4Type4typeERKNS_9ArraySpanEPS7_.exit, label %.lr.ph.i59.i.preheader

.lr.ph.i59.i.preheader:                           ; preds = %iter.check1939, %vector.memcheck1918, %vec.epilog.iter.check1941, %vec.epilog.middle.block1951
  %.03.i60.i.ph = phi i64 [ 0, %iter.check1939 ], [ 0, %vector.memcheck1918 ], [ %n.vec1926, %vec.epilog.iter.check1941 ], [ %n.vec1944, %vec.epilog.middle.block1951 ] ; 4 uses
  %.062.i61.i.ph = phi ptr [ %i.uh, %iter.check1939 ], [ %i.uh, %vector.memcheck1918 ], [ %i.ut, %vec.epilog.iter.check1941 ], [ %i.va, %vec.epilog.middle.block1951 ] ; 2 uses
  %.071.i62.i.ph = phi ptr [ %i.um, %iter.check1939 ], [ %i.um, %vector.memcheck1918 ], [ %i.uu, %vec.epilog.iter.check1941 ], [ %i.vb, %vec.epilog.middle.block1951 ] ; 2 uses
  %i.ve = sub nsw i64 %i.ud, %.03.i60.i.ph
  %xtraiter2338 = and i64 %i.ve, 7                ; 2 uses
  %lcmp.mod2339.not = icmp eq i64 %xtraiter2338, 0
  br i1 %lcmp.mod2339.not, label %.lr.ph.i59.i.prol.loopexit, label %.lr.ph.i59.i.prol

.lr.ph.i59.i.prol:                                ; preds = %.lr.ph.i59.i.preheader, %.lr.ph.i59.i.prol
  %.03.i60.i.prol = phi i64 [ %i.vi, %.lr.ph.i59.i.prol ], [ %.03.i60.i.ph, %.lr.ph.i59.i.preheader ]
  %.062.i61.i.prol = phi ptr [ %i.vh, %.lr.ph.i59.i.prol ], [ %.062.i61.i.ph, %.lr.ph.i59.i.preheader ] ; 2 uses
  %.071.i62.i.prol = phi ptr [ %i.vf, %.lr.ph.i59.i.prol ], [ %.071.i62.i.ph, %.lr.ph.i59.i.preheader ] ; 2 uses
  %prol.iter2340 = phi i64 [ %prol.iter2340.next, %.lr.ph.i59.i.prol ], [ 0, %.lr.ph.i59.i.preheader ]
  %i.vf = getelementptr inbounds nuw i8, ptr %.071.i62.i.prol, i64 2 ; 2 uses
  %i.vg = load i16, ptr %.071.i62.i.prol, align 2, !tbaa !406
  %i.vh = getelementptr inbounds nuw i8, ptr %.062.i61.i.prol, i64 2 ; 2 uses
  store i16 %i.vg, ptr %.062.i61.i.prol, align 2, !tbaa !406
  %i.vi = add nuw nsw i64 %.03.i60.i.prol, 1      ; 2 uses
  %prol.iter2340.next = add i64 %prol.iter2340, 1 ; 2 uses
  %prol.iter2340.cmp.not = icmp eq i64 %prol.iter2340.next, %xtraiter2338
  br i1 %prol.iter2340.cmp.not, label %.lr.ph.i59.i.prol.loopexit, label %.lr.ph.i59.i.prol, !llvm.loop !224

.lr.ph.i59.i.prol.loopexit:                       ; preds = %.lr.ph.i59.i.prol, %.lr.ph.i59.i.preheader
  %.03.i60.i.unr = phi i64 [ %.03.i60.i.ph, %.lr.ph.i59.i.preheader ], [ %i.vi, %.lr.ph.i59.i.prol ]
  %.062.i61.i.unr = phi ptr [ %.062.i61.i.ph, %.lr.ph.i59.i.preheader ], [ %i.vh, %.lr.ph.i59.i.prol ]
  %.071.i62.i.unr = phi ptr [ %.071.i62.i.ph, %.lr.ph.i59.i.preheader ], [ %i.vf, %.lr.ph.i59.i.prol ]
  %i.vj = sub nsw i64 %.03.i60.i.ph, %i.ud
  %i.vk = icmp ugt i64 %i.vj, -8
  br i1 %i.vk, label %_ZN5arrow7compute8internal12_GLOBAL__N_114CastNumberImplINS_8Int8TypeEEEvNS_4Type4typeERKNS_9ArraySpanEPS7_.exit, label %.lr.ph.i59.i

.lr.ph.i59.i:                                     ; preds = %.lr.ph.i59.i.prol.loopexit, %.lr.ph.i59.i
  %.03.i60.i = phi i64 [ %i.wj, %.lr.ph.i59.i ], [ %.03.i60.i.unr, %.lr.ph.i59.i.prol.loopexit ]
  %.062.i61.i = phi ptr [ %i.wi, %.lr.ph.i59.i ], [ %.062.i61.i.unr, %.lr.ph.i59.i.prol.loopexit ] ; 9 uses
  %.071.i62.i = phi ptr [ %i.wg, %.lr.ph.i59.i ], [ %.071.i62.i.unr, %.lr.ph.i59.i.prol.loopexit ] ; 9 uses
  %i.vl = getelementptr inbounds nuw i8, ptr %.071.i62.i, i64 2
  %i.vm = load i16, ptr %.071.i62.i, align 2, !tbaa !406
  %i.vn = getelementptr inbounds nuw i8, ptr %.062.i61.i, i64 2
  store i16 %i.vm, ptr %.062.i61.i, align 2, !tbaa !406
  %i.vo = getelementptr inbounds nuw i8, ptr %.071.i62.i, i64 4
  %i.vp = load i16, ptr %i.vl, align 2, !tbaa !406
  %i.vq = getelementptr inbounds nuw i8, ptr %.062.i61.i, i64 4
  store i16 %i.vp, ptr %i.vn, align 2, !tbaa !406
  %i.vr = getelementptr inbounds nuw i8, ptr %.071.i62.i, i64 6
  %i.vs = load i16, ptr %i.vo, align 2, !tbaa !406
  %i.vt = getelementptr inbounds nuw i8, ptr %.062.i61.i, i64 6
  store i16 %i.vs, ptr %i.vq, align 2, !tbaa !406
  %i.vu = getelementptr inbounds nuw i8, ptr %.071.i62.i, i64 8
  %i.vv = load i16, ptr %i.vr, align 2, !tbaa !406
  %i.vw = getelementptr inbounds nuw i8, ptr %.062.i61.i, i64 8
  store i16 %i.vv, ptr %i.vt, align 2, !tbaa !406
  %i.vx = getelementptr inbounds nuw i8, ptr %.071.i62.i, i64 10
  %i.vy = load i16, ptr %i.vu, align 2, !tbaa !406
  %i.vz = getelementptr inbounds nuw i8, ptr %.062.i61.i, i64 10
  store i16 %i.vy, ptr %i.vw, align 2, !tbaa !406
  %i.wa = getelementptr inbounds nuw i8, ptr %.071.i62.i, i64 12
  %i.wb = load i16, ptr %i.vx, align 2, !tbaa !406
  %i.wc = getelementptr inbounds nuw i8, ptr %.062.i61.i, i64 12
  store i16 %i.wb, ptr %i.vz, align 2, !tbaa !406
  %i.wd = getelementptr inbounds nuw i8, ptr %.071.i62.i, i64 14
  %i.we = load i16, ptr %i.wa, align 2, !tbaa !406
  %i.wf = getelementptr inbounds nuw i8, ptr %.062.i61.i, i64 14
  store i16 %i.we, ptr %i.wc, align 2, !tbaa !406
  %i.wg = getelementptr inbounds nuw i8, ptr %.071.i62.i, i64 16
  %i.wh = load i16, ptr %i.wd, align 2, !tbaa !406
  %i.wi = getelementptr inbounds nuw i8, ptr %.062.i61.i, i64 16
  store i16 %i.wh, ptr %i.wf, align 2, !tbaa !406
  %i.wj = add nuw nsw i64 %.03.i60.i, 8           ; 2 uses
  %exitcond.not.i63.i.7 = icmp eq i64 %i.wj, %i.ud
  br i1 %exitcond.not.i63.i.7, label %_ZN5arrow7compute8internal12_GLOBAL__N_114CastNumberImplINS_8Int8TypeEEEvNS_4Type4typeERKNS_9ArraySpanEPS7_.exit, label %.lr.ph.i59.i, !llvm.loop !225

bb.u:                                             ; preds = %bb.n
  %i.wk = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.wl = load i64, ptr %i.wk, align 8, !tbaa !404 ; 5 uses
  %i.wm = icmp sgt i64 %i.wl, 0
  br i1 %i.wm, label %.lr.ph.preheader.i64.i, label %_ZN5arrow7compute8internal12_GLOBAL__N_114CastNumberImplINS_8Int8TypeEEEvNS_4Type4typeERKNS_9ArraySpanEPS7_.exit

.lr.ph.preheader.i64.i:                           ; preds = %bb.u
  %i.wn = getelementptr i8, ptr %3, i64 56
  %.val34.i43 = load ptr, ptr %i.wn, align 8, !tbaa !403
  %i.wo = getelementptr i8, ptr %3, i64 24
  %.val33.i44 = load i64, ptr %i.wo, align 8, !tbaa !401
  %i.wp = getelementptr inbounds [4 x i8], ptr %.val34.i43, i64 %.val33.i44 ; 3 uses
  %i.wq = getelementptr inbounds nuw i8, ptr %2, i64 56
  %i.wr = load ptr, ptr %i.wq, align 8, !tbaa !403
  %i.ws = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.wt = load i64, ptr %i.ws, align 8, !tbaa !401
  %i.wu = getelementptr inbounds [2 x i8], ptr %i.wr, i64 %i.wt ; 3 uses
  %min.iters.check1903 = icmp ult i64 %i.wl, 8
  br i1 %min.iters.check1903, label %.lr.ph.i65.i.preheader, label %vector.ph1904

vector.ph1904:                                    ; preds = %.lr.ph.preheader.i64.i
  %n.vec1905 = and i64 %i.wl, 9223372036854775800 ; 5 uses
  %i.wv = shl i64 %n.vec1905, 2
  %i.ww = getelementptr i8, ptr %i.wp, i64 %i.wv
  %i.wx = shl nuw i64 %n.vec1905, 1
  %i.wy = getelementptr i8, ptr %i.wu, i64 %i.wx
  br label %vector.body1906

vector.body1906:                                  ; preds = %vector.body1906, %vector.ph1904
  %index1907 = phi i64 [ 0, %vector.ph1904 ], [ %index.next1912, %vector.body1906 ] ; 3 uses
  %i.wz = shl i64 %index1907, 2
  %next.gep1908 = getelementptr i8, ptr %i.wp, i64 %i.wz ; 2 uses
  %i.xa = shl i64 %index1907, 1
  %next.gep1909 = getelementptr i8, ptr %i.wu, i64 %i.xa ; 2 uses
  %i.xb = getelementptr i8, ptr %next.gep1909, i64 8
  %wide.load1910 = load <4 x i16>, ptr %next.gep1909, align 2, !tbaa !406
  %wide.load1911 = load <4 x i16>, ptr %i.xb, align 2, !tbaa !406
  %i.xc = sext <4 x i16> %wide.load1910 to <4 x i32>
  %i.xd = sext <4 x i16> %wide.load1911 to <4 x i32>
  %i.xe = getelementptr i8, ptr %next.gep1908, i64 16
  store <4 x i32> %i.xc, ptr %next.gep1908, align 4, !tbaa !24
  store <4 x i32> %i.xd, ptr %i.xe, align 4, !tbaa !24
  %index.next1912 = add nuw i64 %index1907, 8     ; 2 uses
  %i.xf = icmp eq i64 %index.next1912, %n.vec1905
  br i1 %i.xf, label %middle.block1913, label %vector.body1906, !llvm.loop !226

middle.block1913:                                 ; preds = %vector.body1906
  %cmp.n1914 = icmp eq i64 %i.wl, %n.vec1905
  br i1 %cmp.n1914, label %_ZN5arrow7compute8internal12_GLOBAL__N_114CastNumberImplINS_8Int8TypeEEEvNS_4Type4typeERKNS_9ArraySpanEPS7_.exit, label %.lr.ph.i65.i.preheader

.lr.ph.i65.i.preheader:                           ; preds = %.lr.ph.preheader.i64.i, %middle.block1913
  %.03.i66.i.ph = phi i64 [ 0, %.lr.ph.preheader.i64.i ], [ %n.vec1905, %middle.block1913 ]
  %.062.i67.i.ph = phi ptr [ %i.wp, %.lr.ph.preheader.i64.i ], [ %i.ww, %middle.block1913 ]
  %.071.i68.i.ph = phi ptr [ %i.wu, %.lr.ph.preheader.i64.i ], [ %i.wy, %middle.block1913 ]
  br label %.lr.ph.i65.i

.lr.ph.i65.i:                                     ; preds = %.lr.ph.i65.i.preheader, %.lr.ph.i65.i
  %.03.i66.i = phi i64 [ %i.xk, %.lr.ph.i65.i ], [ %.03.i66.i.ph, %.lr.ph.i65.i.preheader ]
  %.062.i67.i = phi ptr [ %i.xj, %.lr.ph.i65.i ], [ %.062.i67.i.ph, %.lr.ph.i65.i.preheader ] ; 2 uses
  %.071.i68.i = phi ptr [ %i.xg, %.lr.ph.i65.i ], [ %.071.i68.i.ph, %.lr.ph.i65.i.preheader ] ; 2 uses
  %i.xg = getelementptr inbounds nuw i8, ptr %.071.i68.i, i64 2
  %i.xh = load i16, ptr %.071.i68.i, align 2, !tbaa !406
  %i.xi = sext i16 %i.xh to i32
  %i.xj = getelementptr inbounds nuw i8, ptr %.062.i67.i, i64 4
  store i32 %i.xi, ptr %.062.i67.i, align 4, !tbaa !24
  %i.xk = add nuw nsw i64 %.03.i66.i, 1           ; 2 uses
  %exitcond.not.i69.i = icmp eq i64 %i.xk, %i.wl
  br i1 %exitcond.not.i69.i, label %_ZN5arrow7compute8internal12_GLOBAL__N_114CastNumberImplINS_8Int8TypeEEEvNS_4Type4typeERKNS_9ArraySpanEPS7_.exit, label %.lr.ph.i65.i, !llvm.loop !227
end_hunk_0
begin_hunk_1_@_ZN5arrow7compute8internal24CastNumberToNumberUnsafeENS_4Type4typeES3_RKNS_9ArraySpanEPS4_:bb.a

middle.block1865:                                 ; preds = %vector.body1858
  %cmp.n1866 = icmp eq i64 %i.abr, %n.vec1857
  br i1 %cmp.n1866, label %_ZN5arrow7compute8internal12_GLOBAL__N_114CastNumberImplINS_8Int8TypeEEEvNS_4Type4typeERKNS_9ArraySpanEPS7_.exit, label %.lr.ph.i44.i133.preheader

.lr.ph.i44.i133.preheader:                        ; preds = %.lr.ph.preheader.i43.i130, %middle.block1865
  %.03.i45.i134.ph = phi i64 [ 0, %.lr.ph.preheader.i43.i130 ], [ %n.vec1857, %middle.block1865 ]
  %.062.i46.i135.ph = phi ptr [ %i.abv, %.lr.ph.preheader.i43.i130 ], [ %i.acc, %middle.block1865 ]
  %.071.i47.i136.ph = phi ptr [ %i.aca, %.lr.ph.preheader.i43.i130 ], [ %i.ace, %middle.block1865 ]
  br label %.lr.ph.i44.i133

.lr.ph.i44.i133:                                  ; preds = %.lr.ph.i44.i133.preheader, %.lr.ph.i44.i133
  %.03.i45.i134 = phi i64 [ %i.acq, %.lr.ph.i44.i133 ], [ %.03.i45.i134.ph, %.lr.ph.i44.i133.preheader ]
  %.062.i46.i135 = phi ptr [ %i.acp, %.lr.ph.i44.i133 ], [ %.062.i46.i135.ph, %.lr.ph.i44.i133.preheader ] ; 2 uses
  %.071.i47.i136 = phi ptr [ %i.acm, %.lr.ph.i44.i133 ], [ %.071.i47.i136.ph, %.lr.ph.i44.i133.preheader ] ; 2 uses
  %i.acm = getelementptr inbounds nuw i8, ptr %.071.i47.i136, i64 4
  %i.acn = load i32, ptr %.071.i47.i136, align 4, !tbaa !24
  %i.aco = trunc i32 %i.acn to i16
  %i.acp = getelementptr inbounds nuw i8, ptr %.062.i46.i135, i64 2
  store i16 %i.aco, ptr %.062.i46.i135, align 2, !tbaa !406
  %i.acq = add nuw nsw i64 %.03.i45.i134, 1       ; 2 uses
  %exitcond.not.i.i137 = icmp eq i64 %i.acq, %i.abr
  br i1 %exitcond.not.i.i137, label %_ZN5arrow7compute8internal12_GLOBAL__N_114CastNumberImplINS_8Int8TypeEEEvNS_4Type4typeERKNS_9ArraySpanEPS7_.exit, label %.lr.ph.i44.i133, !llvm.loop !236

bb.ac:                                            ; preds = %bb.z
  %i.acr = getelementptr i8, ptr %3, i64 24
  %.val25.i128 = load i64, ptr %i.acr, align 8, !tbaa !401
  %i.acs = getelementptr i8, ptr %3, i64 56
  %.val26.i129 = load ptr, ptr %i.acs, align 8, !tbaa !403
  %i.act = getelementptr inbounds [4 x i8], ptr %.val26.i129, i64 %.val25.i128
  %i.acu = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.acv = load i64, ptr %i.acu, align 8, !tbaa !401
  %i.acw = getelementptr inbounds nuw i8, ptr %2, i64 56
  %i.acx = load ptr, ptr %i.acw, align 8, !tbaa !403
  %i.acy = getelementptr inbounds [4 x i8], ptr %i.acx, i64 %i.acv
  %i.acz = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.ada = load i64, ptr %i.acz, align 8, !tbaa !404
  %i.adb = shl i64 %i.ada, 2
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 4 %i.act, ptr align 4 %i.acy, i64 %i.adb, i1 false)
  br label %_ZN5arrow7compute8internal12_GLOBAL__N_114CastNumberImplINS_8Int8TypeEEEvNS_4Type4typeERKNS_9ArraySpanEPS7_.exit

bb.ad:                                            ; preds = %bb.z
  %i.adc = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.add = load i64, ptr %i.adc, align 8, !tbaa !404
  %i.ade = icmp sgt i64 %i.add, 0
  br i1 %i.ade, label %.lr.ph.preheader.i48.i121, label %_ZN5arrow7compute8internal12_GLOBAL__N_114CastNumberImplINS_8Int8TypeEEEvNS_4Type4typeERKNS_9ArraySpanEPS7_.exit

.lr.ph.preheader.i48.i121:                        ; preds = %bb.ad
  %i.adf = getelementptr i8, ptr %3, i64 56
  %.val28.i122 = load ptr, ptr %i.adf, align 8, !tbaa !403
  %i.adg = getelementptr i8, ptr %3, i64 24
  %.val27.i123 = load i64, ptr %i.adg, align 8, !tbaa !401
  %i.adh = getelementptr inbounds [8 x i8], ptr %.val28.i122, i64 %.val27.i123
  %i.adi = getelementptr inbounds nuw i8, ptr %2, i64 56
  %i.adj = load ptr, ptr %i.adi, align 8, !tbaa !403
  %i.adk = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.adl = load i64, ptr %i.adk, align 8, !tbaa !401
  %i.adm = getelementptr inbounds [4 x i8], ptr %i.adj, i64 %i.adl
  br label %.lr.ph.i49.i124

.lr.ph.i49.i124:                                  ; preds = %.lr.ph.i49.i124, %.lr.ph.preheader.i48.i121
  %.03.i50.i125 = phi i64 [ %i.adr, %.lr.ph.i49.i124 ], [ 0, %.lr.ph.preheader.i48.i121 ]
  %.062.i51.i126 = phi ptr [ %i.adq, %.lr.ph.i49.i124 ], [ %i.adh, %.lr.ph.preheader.i48.i121 ] ; 2 uses
  %.071.i52.i127 = phi ptr [ %i.adn, %.lr.ph.i49.i124 ], [ %i.adm, %.lr.ph.preheader.i48.i121 ] ; 2 uses
  %i.adn = getelementptr inbounds nuw i8, ptr %.071.i52.i127, i64 4
  %i.ado = load i32, ptr %.071.i52.i127, align 4, !tbaa !24
  %i.adp = sext i32 %i.ado to i64
  %i.adq = getelementptr inbounds nuw i8, ptr %.062.i51.i126, i64 8
  store i64 %i.adp, ptr %.062.i51.i126, align 8, !tbaa !414
  %i.adr = add nuw nsw i64 %.03.i50.i125, 1       ; 2 uses
  %i.ads = load i64, ptr %i.adc, align 8, !tbaa !404
  %i.adt = icmp slt i64 %i.adr, %i.ads
  br i1 %i.adt, label %.lr.ph.i49.i124, label %_ZN5arrow7compute8internal12_GLOBAL__N_114CastNumberImplINS_8Int8TypeEEEvNS_4Type4typeERKNS_9ArraySpanEPS7_.exit, !llvm.loop !237

bb.ae:                                            ; preds = %bb.z
  %i.adu = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.adv = load i64, ptr %i.adu, align 8, !tbaa !404
  %i.adw = icmp sgt i64 %i.adv, 0
  br i1 %i.adw, label %.lr.ph.preheader.i53.i114, label %_ZN5arrow7compute8internal12_GLOBAL__N_114CastNumberImplINS_8Int8TypeEEEvNS_4Type4typeERKNS_9ArraySpanEPS7_.exit

.lr.ph.preheader.i53.i114:                        ; preds = %bb.ae
  %i.adx = getelementptr i8, ptr %3, i64 56
  %.val30.i115 = load ptr, ptr %i.adx, align 8, !tbaa !403
  %i.ady = getelementptr i8, ptr %3, i64 24
  %.val29.i116 = load i64, ptr %i.ady, align 8, !tbaa !401
  %i.adz = getelementptr inbounds i8, ptr %.val30.i115, i64 %.val29.i116
  %i.aea = getelementptr inbounds nuw i8, ptr %2, i64 56
  %i.aeb = load ptr, ptr %i.aea, align 8, !tbaa !403
  %i.aec = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.aed = load i64, ptr %i.aec, align 8, !tbaa !401
  %i.aee = getelementptr inbounds [4 x i8], ptr %i.aeb, i64 %i.aed
  br label %.lr.ph.i54.i117

.lr.ph.i54.i117:                                  ; preds = %.lr.ph.i54.i117, %.lr.ph.preheader.i53.i114
  %.03.i55.i118 = phi i64 [ %i.aej, %.lr.ph.i54.i117 ], [ 0, %.lr.ph.preheader.i53.i114 ]
  %.062.i56.i119 = phi ptr [ %i.aei, %.lr.ph.i54.i117 ], [ %i.adz, %.lr.ph.preheader.i53.i114 ] ; 2 uses
  %.071.i57.i120 = phi ptr [ %i.aef, %.lr.ph.i54.i117 ], [ %i.aee, %.lr.ph.preheader.i53.i114 ] ; 2 uses
  %i.aef = getelementptr inbounds nuw i8, ptr %.071.i57.i120, i64 4
  %i.aeg = load i32, ptr %.071.i57.i120, align 4, !tbaa !24
  %i.aeh = trunc i32 %i.aeg to i8
  %i.aei = getelementptr inbounds nuw i8, ptr %.062.i56.i119, i64 1
  store i8 %i.aeh, ptr %.062.i56.i119, align 1, !tbaa !49
  %i.aej = add nuw nsw i64 %.03.i55.i118, 1       ; 2 uses
  %i.aek = load i64, ptr %i.adu, align 8, !tbaa !404
  %i.ael = icmp slt i64 %i.aej, %i.aek
  br i1 %i.ael, label %.lr.ph.i54.i117, label %_ZN5arrow7compute8internal12_GLOBAL__N_114CastNumberImplINS_8Int8TypeEEEvNS_4Type4typeERKNS_9ArraySpanEPS7_.exit, !llvm.loop !238

bb.af:                                            ; preds = %bb.z
  %i.aem = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.aen = load i64, ptr %i.aem, align 8, !tbaa !404 ; 5 uses
  %i.aeo = icmp sgt i64 %i.aen, 0
  br i1 %i.aeo, label %.lr.ph.preheader.i58.i106, label %_ZN5arrow7compute8internal12_GLOBAL__N_114CastNumberImplINS_8Int8TypeEEEvNS_4Type4typeERKNS_9ArraySpanEPS7_.exit

.lr.ph.preheader.i58.i106:                        ; preds = %bb.af
  %i.aep = getelementptr i8, ptr %3, i64 56
  %.val32.i107 = load ptr, ptr %i.aep, align 8, !tbaa !403
  %i.aeq = getelementptr i8, ptr %3, i64 24
  %.val31.i108 = load i64, ptr %i.aeq, align 8, !tbaa !401
  %i.aer = getelementptr inbounds [2 x i8], ptr %.val32.i107, i64 %.val31.i108 ; 3 uses
  %i.aes = getelementptr inbounds nuw i8, ptr %2, i64 56
  %i.aet = load ptr, ptr %i.aes, align 8, !tbaa !403
  %i.aeu = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.aev = load i64, ptr %i.aeu, align 8, !tbaa !401
  %i.aew = getelementptr inbounds [4 x i8], ptr %i.aet, i64 %i.aev ; 3 uses
  %min.iters.check1839 = icmp ult i64 %i.aen, 8
  br i1 %min.iters.check1839, label %.lr.ph.i59.i109.preheader, label %vector.ph1840

vector.ph1840:                                    ; preds = %.lr.ph.preheader.i58.i106
  %n.vec1841 = and i64 %i.aen, 9223372036854775800 ; 5 uses
  %i.aex = shl nuw i64 %n.vec1841, 1
  %i.aey = getelementptr i8, ptr %i.aer, i64 %i.aex
  %i.aez = shl i64 %n.vec1841, 2
  %i.afa = getelementptr i8, ptr %i.aew, i64 %i.aez
  br label %vector.body1842

vector.body1842:                                  ; preds = %vector.body1842, %vector.ph1840
  %index1843 = phi i64 [ 0, %vector.ph1840 ], [ %index.next1848, %vector.body1842 ] ; 3 uses
  %i.afb = shl i64 %index1843, 1
  %next.gep1844 = getelementptr i8, ptr %i.aer, i64 %i.afb ; 2 uses
  %i.afc = shl i64 %index1843, 2
  %next.gep1845 = getelementptr i8, ptr %i.aew, i64 %i.afc ; 2 uses
  %i.afd = getelementptr i8, ptr %next.gep1845, i64 16
  %wide.load1846 = load <4 x i32>, ptr %next.gep1845, align 4, !tbaa !24
  %wide.load1847 = load <4 x i32>, ptr %i.afd, align 4, !tbaa !24
  %i.afe = trunc <4 x i32> %wide.load1846 to <4 x i16>
  %i.aff = trunc <4 x i32> %wide.load1847 to <4 x i16>
  %i.afg = getelementptr i8, ptr %next.gep1844, i64 8
  store <4 x i16> %i.afe, ptr %next.gep1844, align 2, !tbaa !406
  store <4 x i16> %i.aff, ptr %i.afg, align 2, !tbaa !406
  %index.next1848 = add nuw i64 %index1843, 8     ; 2 uses
  %i.afh = icmp eq i64 %index.next1848, %n.vec1841
  br i1 %i.afh, label %middle.block1849, label %vector.body1842, !llvm.loop !239

middle.block1849:                                 ; preds = %vector.body1842
  %cmp.n1850 = icmp eq i64 %i.aen, %n.vec1841
  br i1 %cmp.n1850, label %_ZN5arrow7compute8internal12_GLOBAL__N_114CastNumberImplINS_8Int8TypeEEEvNS_4Type4typeERKNS_9ArraySpanEPS7_.exit, label %.lr.ph.i59.i109.preheader

.lr.ph.i59.i109.preheader:                        ; preds = %.lr.ph.preheader.i58.i106, %middle.block1849
  %.03.i60.i110.ph = phi i64 [ 0, %.lr.ph.preheader.i58.i106 ], [ %n.vec1841, %middle.block1849 ]
  %.062.i61.i111.ph = phi ptr [ %i.aer, %.lr.ph.preheader.i58.i106 ], [ %i.aey, %middle.block1849 ]
  %.071.i62.i112.ph = phi ptr [ %i.aew, %.lr.ph.preheader.i58.i106 ], [ %i.afa, %middle.block1849 ]
  br label %.lr.ph.i59.i109

.lr.ph.i59.i109:                                  ; preds = %.lr.ph.i59.i109.preheader, %.lr.ph.i59.i109
  %.03.i60.i110 = phi i64 [ %i.afm, %.lr.ph.i59.i109 ], [ %.03.i60.i110.ph, %.lr.ph.i59.i109.preheader ]
  %.062.i61.i111 = phi ptr [ %i.afl, %.lr.ph.i59.i109 ], [ %.062.i61.i111.ph, %.lr.ph.i59.i109.preheader ] ; 2 uses
  %.071.i62.i112 = phi ptr [ %i.afi, %.lr.ph.i59.i109 ], [ %.071.i62.i112.ph, %.lr.ph.i59.i109.preheader ] ; 2 uses
  %i.afi = getelementptr inbounds nuw i8, ptr %.071.i62.i112, i64 4
  %i.afj = load i32, ptr %.071.i62.i112, align 4, !tbaa !24
  %i.afk = trunc i32 %i.afj to i16
  %i.afl = getelementptr inbounds nuw i8, ptr %.062.i61.i111, i64 2
  store i16 %i.afk, ptr %.062.i61.i111, align 2, !tbaa !406
  %i.afm = add nuw nsw i64 %.03.i60.i110, 1       ; 2 uses
  %exitcond.not.i63.i113 = icmp eq i64 %i.afm, %i.aen
  br i1 %exitcond.not.i63.i113, label %_ZN5arrow7compute8internal12_GLOBAL__N_114CastNumberImplINS_8Int8TypeEEEvNS_4Type4typeERKNS_9ArraySpanEPS7_.exit, label %.lr.ph.i59.i109, !llvm.loop !240

bb.ag:                                            ; preds = %bb.z
  %i.afn = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.afo = load i64, ptr %i.afn, align 8, !tbaa !404 ; 7 uses
  %i.afp = icmp sgt i64 %i.afo, 0
  br i1 %i.afp, label %.lr.ph.preheader.i64.i98, label %_ZN5arrow7compute8internal12_GLOBAL__N_114CastNumberImplINS_8Int8TypeEEEvNS_4Type4typeERKNS_9ArraySpanEPS7_.exit

.lr.ph.preheader.i64.i98:                         ; preds = %bb.ag
  %i.afq = getelementptr i8, ptr %3, i64 56
  %.val34.i99 = load ptr, ptr %i.afq, align 8, !tbaa !403 ; 2 uses
  %i.afr = getelementptr i8, ptr %3, i64 24
  %.val33.i100 = load i64, ptr %i.afr, align 8, !tbaa !401 ; 2 uses
  %i.afs = getelementptr inbounds [4 x i8], ptr %.val34.i99, i64 %.val33.i100 ; 4 uses
  %i.aft = getelementptr inbounds nuw i8, ptr %2, i64 56
  %i.afu = load ptr, ptr %i.aft, align 8, !tbaa !403 ; 2 uses
  %i.afv = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.afw = load i64, ptr %i.afv, align 8, !tbaa !401 ; 2 uses
  %i.afx = getelementptr inbounds [4 x i8], ptr %i.afu, i64 %i.afw ; 4 uses
  %min.iters.check1823 = icmp ult i64 %i.afo, 20
  br i1 %min.iters.check1823, label %.lr.ph.i65.i101.preheader, label %vector.memcheck1819

vector.memcheck1819:                              ; preds = %.lr.ph.preheader.i64.i98
  %i.afy = ptrtoaddr ptr %i.afu to i64
  %.val34.i991820 = ptrtoaddr ptr %.val34.i99 to i64
  %i.afz = shl i64 %.val33.i100, 2
  %16 = shl i64 %i.afw, 2
  %17 = add i64 %i.afz, %.val34.i991820
  %i.aga = add i64 %16, %i.afy
  %i.agb = sub i64 %i.aga, %17
  %diff.check1821 = icmp ugt i64 %i.agb, -32
  br i1 %diff.check1821, label %.lr.ph.i65.i101.preheader, label %vector.ph1824

vector.ph1824:                                    ; preds = %vector.memcheck1819
  %n.vec1825 = and i64 %i.afo, 9223372036854775800 ; 4 uses
  %i.agc = shl i64 %n.vec1825, 2                  ; 2 uses
  %i.agd = getelementptr i8, ptr %i.afs, i64 %i.agc
  %i.age = getelementptr i8, ptr %i.afx, i64 %i.agc
  br label %vector.body1826

vector.body1826:                                  ; preds = %vector.body1826, %vector.ph1824
  %index1827 = phi i64 [ 0, %vector.ph1824 ], [ %index.next1832, %vector.body1826 ] ; 2 uses
  %i.agf = shl i64 %index1827, 2                  ; 2 uses
  %next.gep1828 = getelementptr i8, ptr %i.afs, i64 %i.agf ; 2 uses
  %next.gep1829 = getelementptr i8, ptr %i.afx, i64 %i.agf ; 2 uses
  %i.agg = getelementptr i8, ptr %next.gep1829, i64 16
  %wide.load1830 = load <4 x i32>, ptr %next.gep1829, align 4, !tbaa !24
  %wide.load1831 = load <4 x i32>, ptr %i.agg, align 4, !tbaa !24
  %i.agh = getelementptr i8, ptr %next.gep1828, i64 16
  store <4 x i32> %wide.load1830, ptr %next.gep1828, align 4, !tbaa !24
  store <4 x i32> %wide.load1831, ptr %i.agh, align 4, !tbaa !24
  %index.next1832 = add nuw i64 %index1827, 8     ; 2 uses
  %i.agi = icmp eq i64 %index.next1832, %n.vec1825
  br i1 %i.agi, label %middle.block1833, label %vector.body1826, !llvm.loop !241

middle.block1833:                                 ; preds = %vector.body1826
  %cmp.n1834 = icmp eq i64 %i.afo, %n.vec1825
  br i1 %cmp.n1834, label %_ZN5arrow7compute8internal12_GLOBAL__N_114CastNumberImplINS_8Int8TypeEEEvNS_4Type4typeERKNS_9ArraySpanEPS7_.exit, label %.lr.ph.i65.i101.preheader

.lr.ph.i65.i101.preheader:                        ; preds = %vector.memcheck1819, %.lr.ph.preheader.i64.i98, %middle.block1833
  %.03.i66.i102.ph = phi i64 [ 0, %vector.memcheck1819 ], [ 0, %.lr.ph.preheader.i64.i98 ], [ %n.vec1825, %middle.block1833 ] ; 3 uses
  %.062.i67.i103.ph = phi ptr [ %i.afs, %vector.memcheck1819 ], [ %i.afs, %.lr.ph.preheader.i64.i98 ], [ %i.agd, %middle.block1833 ] ; 2 uses
  %.071.i68.i104.ph = phi ptr [ %i.afx, %vector.memcheck1819 ], [ %i.afx, %.lr.ph.preheader.i64.i98 ], [ %i.age, %middle.block1833 ] ; 2 uses
  %xtraiter2335 = and i64 %i.afo, 7               ; 2 uses
  %lcmp.mod2336.not = icmp eq i64 %xtraiter2335, 0
  br i1 %lcmp.mod2336.not, label %.lr.ph.i65.i101.prol.loopexit, label %.lr.ph.i65.i101.prol

.lr.ph.i65.i101.prol:                             ; preds = %.lr.ph.i65.i101.preheader, %.lr.ph.i65.i101.prol
  %.03.i66.i102.prol = phi i64 [ %i.agm, %.lr.ph.i65.i101.prol ], [ %.03.i66.i102.ph, %.lr.ph.i65.i101.preheader ]
  %.062.i67.i103.prol = phi ptr [ %i.agl, %.lr.ph.i65.i101.prol ], [ %.062.i67.i103.ph, %.lr.ph.i65.i101.preheader ] ; 2 uses
  %.071.i68.i104.prol = phi ptr [ %i.agj, %.lr.ph.i65.i101.prol ], [ %.071.i68.i104.ph, %.lr.ph.i65.i101.preheader ] ; 2 uses
  %prol.iter2337 = phi i64 [ %prol.iter2337.next, %.lr.ph.i65.i101.prol ], [ 0, %.lr.ph.i65.i101.preheader ]
  %i.agj = getelementptr inbounds nuw i8, ptr %.071.i68.i104.prol, i64 4 ; 2 uses
  %i.agk = load i32, ptr %.071.i68.i104.prol, align 4, !tbaa !24
  %i.agl = getelementptr inbounds nuw i8, ptr %.062.i67.i103.prol, i64 4 ; 2 uses
  store i32 %i.agk, ptr %.062.i67.i103.prol, align 4, !tbaa !24
  %i.agm = add nuw nsw i64 %.03.i66.i102.prol, 1  ; 2 uses
  %prol.iter2337.next = add i64 %prol.iter2337, 1 ; 2 uses
  %prol.iter2337.cmp.not = icmp eq i64 %prol.iter2337.next, %xtraiter2335
  br i1 %prol.iter2337.cmp.not, label %.lr.ph.i65.i101.prol.loopexit, label %.lr.ph.i65.i101.prol, !llvm.loop !242

.lr.ph.i65.i101.prol.loopexit:                    ; preds = %.lr.ph.i65.i101.prol, %.lr.ph.i65.i101.preheader
  %.03.i66.i102.unr = phi i64 [ %.03.i66.i102.ph, %.lr.ph.i65.i101.preheader ], [ %i.agm, %.lr.ph.i65.i101.prol ]
  %.062.i67.i103.unr = phi ptr [ %.062.i67.i103.ph, %.lr.ph.i65.i101.preheader ], [ %i.agl, %.lr.ph.i65.i101.prol ]
  %.071.i68.i104.unr = phi ptr [ %.071.i68.i104.ph, %.lr.ph.i65.i101.preheader ], [ %i.agj, %.lr.ph.i65.i101.prol ]
  %i.agn = sub nsw i64 %.03.i66.i102.ph, %i.afo
  %i.ago = icmp ugt i64 %i.agn, -8
  br i1 %i.ago, label %_ZN5arrow7compute8internal12_GLOBAL__N_114CastNumberImplINS_8Int8TypeEEEvNS_4Type4typeERKNS_9ArraySpanEPS7_.exit, label %.lr.ph.i65.i101

.lr.ph.i65.i101:                                  ; preds = %.lr.ph.i65.i101.prol.loopexit, %.lr.ph.i65.i101
  %.03.i66.i102 = phi i64 [ %i.ahn, %.lr.ph.i65.i101 ], [ %.03.i66.i102.unr, %.lr.ph.i65.i101.prol.loopexit ]
  %.062.i67.i103 = phi ptr [ %i.ahm, %.lr.ph.i65.i101 ], [ %.062.i67.i103.unr, %.lr.ph.i65.i101.prol.loopexit ] ; 9 uses
  %.071.i68.i104 = phi ptr [ %i.ahk, %.lr.ph.i65.i101 ], [ %.071.i68.i104.unr, %.lr.ph.i65.i101.prol.loopexit ] ; 9 uses
  %i.agp = getelementptr inbounds nuw i8, ptr %.071.i68.i104, i64 4
  %i.agq = load i32, ptr %.071.i68.i104, align 4, !tbaa !24
  %i.agr = getelementptr inbounds nuw i8, ptr %.062.i67.i103, i64 4
  store i32 %i.agq, ptr %.062.i67.i103, align 4, !tbaa !24
  %i.ags = getelementptr inbounds nuw i8, ptr %.071.i68.i104, i64 8
  %i.agt = load i32, ptr %i.agp, align 4, !tbaa !24
  %i.agu = getelementptr inbounds nuw i8, ptr %.062.i67.i103, i64 8
  store i32 %i.agt, ptr %i.agr, align 4, !tbaa !24
  %i.agv = getelementptr inbounds nuw i8, ptr %.071.i68.i104, i64 12
  %i.agw = load i32, ptr %i.ags, align 4, !tbaa !24
  %i.agx = getelementptr inbounds nuw i8, ptr %.062.i67.i103, i64 12
  store i32 %i.agw, ptr %i.agu, align 4, !tbaa !24
  %i.agy = getelementptr inbounds nuw i8, ptr %.071.i68.i104, i64 16
  %i.agz = load i32, ptr %i.agv, align 4, !tbaa !24
  %i.aha = getelementptr inbounds nuw i8, ptr %.062.i67.i103, i64 16
  store i32 %i.agz, ptr %i.agx, align 4, !tbaa !24
  %i.ahb = getelementptr inbounds nuw i8, ptr %.071.i68.i104, i64 20
  %i.ahc = load i32, ptr %i.agy, align 4, !tbaa !24
  %i.ahd = getelementptr inbounds nuw i8, ptr %.062.i67.i103, i64 20
  store i32 %i.ahc, ptr %i.aha, align 4, !tbaa !24
  %i.ahe = getelementptr inbounds nuw i8, ptr %.071.i68.i104, i64 24
  %i.ahf = load i32, ptr %i.ahb, align 4, !tbaa !24
  %i.ahg = getelementptr inbounds nuw i8, ptr %.062.i67.i103, i64 24
  store i32 %i.ahf, ptr %i.ahd, align 4, !tbaa !24
  %i.ahh = getelementptr inbounds nuw i8, ptr %.071.i68.i104, i64 28
  %i.ahi = load i32, ptr %i.ahe, align 4, !tbaa !24
  %i.ahj = getelementptr inbounds nuw i8, ptr %.062.i67.i103, i64 28
  store i32 %i.ahi, ptr %i.ahg, align 4, !tbaa !24
  %i.ahk = getelementptr inbounds nuw i8, ptr %.071.i68.i104, i64 32
  %i.ahl = load i32, ptr %i.ahh, align 4, !tbaa !24
  %i.ahm = getelementptr inbounds nuw i8, ptr %.062.i67.i103, i64 32
  store i32 %i.ahl, ptr %i.ahj, align 4, !tbaa !24
  %i.ahn = add nuw nsw i64 %.03.i66.i102, 8       ; 2 uses
  %exitcond.not.i69.i105.7 = icmp eq i64 %i.ahn, %i.afo
  br i1 %exitcond.not.i69.i105.7, label %_ZN5arrow7compute8internal12_GLOBAL__N_114CastNumberImplINS_8Int8TypeEEEvNS_4Type4typeERKNS_9ArraySpanEPS7_.exit, label %.lr.ph.i65.i101, !llvm.loop !243

bb.ah:                                            ; preds = %bb.z
  %i.aho = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.ahp = load i64, ptr %i.aho, align 8, !tbaa !404
  %i.ahq = icmp sgt i64 %i.ahp, 0
  br i1 %i.ahq, label %.lr.ph.preheader.i70.i91, label %_ZN5arrow7compute8internal12_GLOBAL__N_114CastNumberImplINS_8Int8TypeEEEvNS_4Type4typeERKNS_9ArraySpanEPS7_.exit

.lr.ph.preheader.i70.i91:                         ; preds = %bb.ah
  %i.ahr = getelementptr i8, ptr %3, i64 56
  %.val36.i92 = load ptr, ptr %i.ahr, align 8, !tbaa !403
  %i.ahs = getelementptr i8, ptr %3, i64 24
  %.val35.i93 = load i64, ptr %i.ahs, align 8, !tbaa !401
  %i.aht = getelementptr inbounds [8 x i8], ptr %.val36.i92, i64 %.val35.i93
  %i.ahu = getelementptr inbounds nuw i8, ptr %2, i64 56
  %i.ahv = load ptr, ptr %i.ahu, align 8, !tbaa !403
  %i.ahw = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.ahx = load i64, ptr %i.ahw, align 8, !tbaa !401
  %i.ahy = getelementptr inbounds [4 x i8], ptr %i.ahv, i64 %i.ahx
  br label %.lr.ph.i71.i94

.lr.ph.i71.i94:                                   ; preds = %.lr.ph.i71.i94, %.lr.ph.preheader.i70.i91
  %.03.i72.i95 = phi i64 [ %i.aid, %.lr.ph.i71.i94 ], [ 0, %.lr.ph.preheader.i70.i91 ]
  %.062.i73.i96 = phi ptr [ %i.aic, %.lr.ph.i71.i94 ], [ %i.aht, %.lr.ph.preheader.i70.i91 ] ; 2 uses
  %.071.i74.i97 = phi ptr [ %i.ahz, %.lr.ph.i71.i94 ], [ %i.ahy, %.lr.ph.preheader.i70.i91 ] ; 2 uses
  %i.ahz = getelementptr inbounds nuw i8, ptr %.071.i74.i97, i64 4
  %i.aia = load i32, ptr %.071.i74.i97, align 4, !tbaa !24
  %i.aib = sext i32 %i.aia to i64
  %i.aic = getelementptr inbounds nuw i8, ptr %.062.i73.i96, i64 8
  store i64 %i.aib, ptr %.062.i73.i96, align 8, !tbaa !414
  %i.aid = add nuw nsw i64 %.03.i72.i95, 1        ; 2 uses
  %i.aie = load i64, ptr %i.aho, align 8, !tbaa !404
  %i.aif = icmp slt i64 %i.aid, %i.aie
  br i1 %i.aif, label %.lr.ph.i71.i94, label %_ZN5arrow7compute8internal12_GLOBAL__N_114CastNumberImplINS_8Int8TypeEEEvNS_4Type4typeERKNS_9ArraySpanEPS7_.exit, !llvm.loop !244

bb.ai:                                            ; preds = %bb.z
  %i.aig = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.aih = load i64, ptr %i.aig, align 8, !tbaa !404 ; 5 uses
  %i.aii = icmp sgt i64 %i.aih, 0
  br i1 %i.aii, label %.lr.ph.preheader.i75.i83, label %_ZN5arrow7compute8internal12_GLOBAL__N_114CastNumberImplINS_8Int8TypeEEEvNS_4Type4typeERKNS_9ArraySpanEPS7_.exit

.lr.ph.preheader.i75.i83:                         ; preds = %bb.ai
  %i.aij = getelementptr i8, ptr %3, i64 56
  %.val38.i84 = load ptr, ptr %i.aij, align 8, !tbaa !403
  %i.aik = getelementptr i8, ptr %3, i64 24
  %.val37.i85 = load i64, ptr %i.aik, align 8, !tbaa !401
  %i.ail = getelementptr inbounds [4 x i8], ptr %.val38.i84, i64 %.val37.i85 ; 3 uses
  %i.aim = getelementptr inbounds nuw i8, ptr %2, i64 56
  %i.ain = load ptr, ptr %i.aim, align 8, !tbaa !403
  %i.aio = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.aip = load i64, ptr %i.aio, align 8, !tbaa !401
  %i.aiq = getelementptr inbounds [4 x i8], ptr %i.ain, i64 %i.aip ; 3 uses
  %min.iters.check1804 = icmp ult i64 %i.aih, 8
  br i1 %min.iters.check1804, label %.lr.ph.i76.i86.preheader, label %vector.ph1805

vector.ph1805:                                    ; preds = %.lr.ph.preheader.i75.i83
  %n.vec1806 = and i64 %i.aih, 9223372036854775800 ; 4 uses
  %i.air = shl i64 %n.vec1806, 2                  ; 2 uses
  %i.ais = getelementptr i8, ptr %i.ail, i64 %i.air
  %i.ait = getelementptr i8, ptr %i.aiq, i64 %i.air
  br label %vector.body1807

vector.body1807:                                  ; preds = %vector.body1807, %vector.ph1805
  %index1808 = phi i64 [ 0, %vector.ph1805 ], [ %index.next1813, %vector.body1807 ] ; 2 uses
  %i.aiu = shl i64 %index1808, 2                  ; 2 uses
  %next.gep1809 = getelementptr i8, ptr %i.ail, i64 %i.aiu ; 2 uses
  %next.gep1810 = getelementptr i8, ptr %i.aiq, i64 %i.aiu ; 2 uses
  %i.aiv = getelementptr i8, ptr %next.gep1810, i64 16
  %wide.load1811 = load <4 x i32>, ptr %next.gep1810, align 4, !tbaa !24
  %wide.load1812 = load <4 x i32>, ptr %i.aiv, align 4, !tbaa !24
  %i.aiw = sitofp <4 x i32> %wide.load1811 to <4 x float>
  %i.aix = sitofp <4 x i32> %wide.load1812 to <4 x float>
  %i.aiy = getelementptr i8, ptr %next.gep1809, i64 16
  store <4 x float> %i.aiw, ptr %next.gep1809, align 4, !tbaa !421
  store <4 x float> %i.aix, ptr %i.aiy, align 4, !tbaa !421
  %index.next1813 = add nuw i64 %index1808, 8     ; 2 uses
  %i.aiz = icmp eq i64 %index.next1813, %n.vec1806
  br i1 %i.aiz, label %middle.block1814, label %vector.body1807, !llvm.loop !245

middle.block1814:                                 ; preds = %vector.body1807
  %cmp.n1815 = icmp eq i64 %i.aih, %n.vec1806
  br i1 %cmp.n1815, label %_ZN5arrow7compute8internal12_GLOBAL__N_114CastNumberImplINS_8Int8TypeEEEvNS_4Type4typeERKNS_9ArraySpanEPS7_.exit, label %.lr.ph.i76.i86.preheader

.lr.ph.i76.i86.preheader:                         ; preds = %.lr.ph.preheader.i75.i83, %middle.block1814
  %.03.i77.i87.ph = phi i64 [ 0, %.lr.ph.preheader.i75.i83 ], [ %n.vec1806, %middle.block1814 ]
  %.062.i78.i88.ph = phi ptr [ %i.ail, %.lr.ph.preheader.i75.i83 ], [ %i.ais, %middle.block1814 ]
  %.071.i79.i89.ph = phi ptr [ %i.aiq, %.lr.ph.preheader.i75.i83 ], [ %i.ait, %middle.block1814 ]
  br label %.lr.ph.i76.i86

.lr.ph.i76.i86:                                   ; preds = %.lr.ph.i76.i86.preheader, %.lr.ph.i76.i86
  %.03.i77.i87 = phi i64 [ %i.aje, %.lr.ph.i76.i86 ], [ %.03.i77.i87.ph, %.lr.ph.i76.i86.preheader ]
  %.062.i78.i88 = phi ptr [ %i.ajd, %.lr.ph.i76.i86 ], [ %.062.i78.i88.ph, %.lr.ph.i76.i86.preheader ] ; 2 uses
  %.071.i79.i89 = phi ptr [ %i.aja, %.lr.ph.i76.i86 ], [ %.071.i79.i89.ph, %.lr.ph.i76.i86.preheader ] ; 2 uses
  %i.aja = getelementptr inbounds nuw i8, ptr %.071.i79.i89, i64 4
  %i.ajb = load i32, ptr %.071.i79.i89, align 4, !tbaa !24
  %i.ajc = sitofp i32 %i.ajb to float
  %i.ajd = getelementptr inbounds nuw i8, ptr %.062.i78.i88, i64 4
  store float %i.ajc, ptr %.062.i78.i88, align 4, !tbaa !421
  %i.aje = add nuw nsw i64 %.03.i77.i87, 1        ; 2 uses
  %exitcond.not.i80.i90 = icmp eq i64 %i.aje, %i.aih
  br i1 %exitcond.not.i80.i90, label %_ZN5arrow7compute8internal12_GLOBAL__N_114CastNumberImplINS_8Int8TypeEEEvNS_4Type4typeERKNS_9ArraySpanEPS7_.exit, label %.lr.ph.i76.i86, !llvm.loop !246

bb.aj:                                            ; preds = %bb.z
end_hunk_1
begin_hunk_2_@_ZN5arrow7compute8internal24CastNumberToNumberUnsafeENS_4Type4typeES3_RKNS_9ArraySpanEPS4_:bb.a
  %i.blg = getelementptr i8, ptr %i.bkz, i64 %i.blb
  %i.blh = getelementptr i8, ptr %i.blg, i64 %i.bkt
  %bound0 = icmp ult ptr %i.bkx, %i.blh
  %bound1 = icmp ult ptr %i.blc, %i.blf
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.i83.i232.preheader, label %vector.ph1578

vector.ph1578:                                    ; preds = %vector.memcheck1577
  %n.vec1579 = and i64 %i.bkt, 9223372036854775804 ; 5 uses
  %i.bli = shl i64 %n.vec1579, 3
  %i.blj = getelementptr i8, ptr %i.bkx, i64 %i.bli
  %i.blk = getelementptr i8, ptr %i.blc, i64 %n.vec1579
  br label %vector.body1580

vector.body1580:                                  ; preds = %vector.body1580, %vector.ph1578
  %index1581 = phi i64 [ 0, %vector.ph1578 ], [ %index.next1586, %vector.body1580 ] ; 3 uses
  %i.bll = shl i64 %index1581, 3
  %next.gep1582 = getelementptr i8, ptr %i.bkx, i64 %i.bll ; 2 uses
  %next.gep1583 = getelementptr i8, ptr %i.blc, i64 %index1581 ; 2 uses
  %i.blm = getelementptr i8, ptr %next.gep1583, i64 2
  %wide.load1584 = load <2 x i8>, ptr %next.gep1583, align 1, !tbaa !49, !alias.scope !437
  %wide.load1585 = load <2 x i8>, ptr %i.blm, align 1, !tbaa !49, !alias.scope !437
  %i.bln = uitofp <2 x i8> %wide.load1584 to <2 x double>
  %i.blo = uitofp <2 x i8> %wide.load1585 to <2 x double>
  %i.blp = getelementptr i8, ptr %next.gep1582, i64 16
  store <2 x double> %i.bln, ptr %next.gep1582, align 8, !tbaa !425, !alias.scope !438, !noalias !437
  store <2 x double> %i.blo, ptr %i.blp, align 8, !tbaa !425, !alias.scope !438, !noalias !437
  %index.next1586 = add nuw i64 %index1581, 4     ; 2 uses
  %i.blq = icmp eq i64 %index.next1586, %n.vec1579
  br i1 %i.blq, label %middle.block1587, label %vector.body1580, !llvm.loop !300

middle.block1587:                                 ; preds = %vector.body1580
  %cmp.n1588 = icmp eq i64 %i.bkt, %n.vec1579
  br i1 %cmp.n1588, label %_ZN5arrow7compute8internal12_GLOBAL__N_114CastNumberImplINS_8Int8TypeEEEvNS_4Type4typeERKNS_9ArraySpanEPS7_.exit, label %.lr.ph.i83.i232.preheader

.lr.ph.i83.i232.preheader:                        ; preds = %vector.memcheck1577, %.lr.ph.preheader.i82.i229, %middle.block1587
  %.03.i84.i233.ph = phi i64 [ 0, %vector.memcheck1577 ], [ 0, %.lr.ph.preheader.i82.i229 ], [ %n.vec1579, %middle.block1587 ] ; 3 uses
  %.062.i85.i234.ph = phi ptr [ %i.bkx, %vector.memcheck1577 ], [ %i.bkx, %.lr.ph.preheader.i82.i229 ], [ %i.blj, %middle.block1587 ] ; 2 uses
  %.071.i86.i235.ph = phi ptr [ %i.blc, %vector.memcheck1577 ], [ %i.blc, %.lr.ph.preheader.i82.i229 ], [ %i.blk, %middle.block1587 ] ; 2 uses
  %xtraiter2293 = and i64 %i.bkt, 3               ; 2 uses
  %lcmp.mod2294.not.a = icmp eq i64 %xtraiter2293, 0
  br i1 %lcmp.mod2294.not.a, label %.lr.ph.i83.i232.prol.loopexit, label %.lr.ph.i83.i232.prol

.lr.ph.i83.i232.prol:                             ; preds = %.lr.ph.i83.i232.preheader, %.lr.ph.i83.i232.prol
  %.03.i84.i233.prol = phi i64 [ %i.blv, %.lr.ph.i83.i232.prol ], [ %.03.i84.i233.ph, %.lr.ph.i83.i232.preheader ]
  %.062.i85.i234.prol = phi ptr [ %i.blu, %.lr.ph.i83.i232.prol ], [ %.062.i85.i234.ph, %.lr.ph.i83.i232.preheader ] ; 2 uses
  %.071.i86.i235.prol = phi ptr [ %i.blr, %.lr.ph.i83.i232.prol ], [ %.071.i86.i235.ph, %.lr.ph.i83.i232.preheader ] ; 2 uses
  %prol.iter2295 = phi i64 [ %prol.iter2295.next, %.lr.ph.i83.i232.prol ], [ 0, %.lr.ph.i83.i232.preheader ]
  %i.blr = getelementptr inbounds nuw i8, ptr %.071.i86.i235.prol, i64 1 ; 2 uses
  %i.bls = load i8, ptr %.071.i86.i235.prol, align 1, !tbaa !49
  %i.blt = uitofp i8 %i.bls to double
  %i.blu = getelementptr inbounds nuw i8, ptr %.062.i85.i234.prol, i64 8 ; 2 uses
  store double %i.blt, ptr %.062.i85.i234.prol, align 8, !tbaa !425
  %i.blv = add nuw nsw i64 %.03.i84.i233.prol, 1  ; 2 uses
  %prol.iter2295.next = add i64 %prol.iter2295, 1 ; 2 uses
  %prol.iter2295.cmp.not = icmp eq i64 %prol.iter2295.next, %xtraiter2293
  br i1 %prol.iter2295.cmp.not, label %.lr.ph.i83.i232.prol.loopexit, label %.lr.ph.i83.i232.prol, !llvm.loop !301

.lr.ph.i83.i232.prol.loopexit:                    ; preds = %.lr.ph.i83.i232.prol, %.lr.ph.i83.i232.preheader
  %.03.i84.i233.unr = phi i64 [ %.03.i84.i233.ph, %.lr.ph.i83.i232.preheader ], [ %i.blv, %.lr.ph.i83.i232.prol ]
  %.062.i85.i234.unr = phi ptr [ %.062.i85.i234.ph, %.lr.ph.i83.i232.preheader ], [ %i.blu, %.lr.ph.i83.i232.prol ]
  %.071.i86.i235.unr = phi ptr [ %.071.i86.i235.ph, %.lr.ph.i83.i232.preheader ], [ %i.blr, %.lr.ph.i83.i232.prol ]
  %i.blw = sub nsw i64 %.03.i84.i233.ph, %i.bkt
  %i.blx = icmp ugt i64 %i.blw, -4
  br i1 %i.blx, label %_ZN5arrow7compute8internal12_GLOBAL__N_114CastNumberImplINS_8Int8TypeEEEvNS_4Type4typeERKNS_9ArraySpanEPS7_.exit, label %.lr.ph.i83.i232

.lr.ph.i83.i232:                                  ; preds = %.lr.ph.i83.i232.prol.loopexit, %.lr.ph.i83.i232
  %.03.i84.i233 = phi i64 [ %i.bmo, %.lr.ph.i83.i232 ], [ %.03.i84.i233.unr, %.lr.ph.i83.i232.prol.loopexit ]
  %.062.i85.i234 = phi ptr [ %i.bmn, %.lr.ph.i83.i232 ], [ %.062.i85.i234.unr, %.lr.ph.i83.i232.prol.loopexit ] ; 5 uses
  %.071.i86.i235 = phi ptr [ %i.bmk, %.lr.ph.i83.i232 ], [ %.071.i86.i235.unr, %.lr.ph.i83.i232.prol.loopexit ] ; 5 uses
  %i.bly = getelementptr inbounds nuw i8, ptr %.071.i86.i235, i64 1
  %i.blz = load i8, ptr %.071.i86.i235, align 1, !tbaa !49
  %i.bma = uitofp i8 %i.blz to double
  %i.bmb = getelementptr inbounds nuw i8, ptr %.062.i85.i234, i64 8
  store double %i.bma, ptr %.062.i85.i234, align 8, !tbaa !425
  %i.bmc = getelementptr inbounds nuw i8, ptr %.071.i86.i235, i64 2
  %i.bmd = load i8, ptr %i.bly, align 1, !tbaa !49
  %i.bme = uitofp i8 %i.bmd to double
  %i.bmf = getelementptr inbounds nuw i8, ptr %.062.i85.i234, i64 16
  store double %i.bme, ptr %i.bmb, align 8, !tbaa !425
  %i.bmg = getelementptr inbounds nuw i8, ptr %.071.i86.i235, i64 3
  %i.bmh = load i8, ptr %i.bmc, align 1, !tbaa !49
  %i.bmi = uitofp i8 %i.bmh to double
  %i.bmj = getelementptr inbounds nuw i8, ptr %.062.i85.i234, i64 24
  store double %i.bmi, ptr %i.bmf, align 8, !tbaa !425
  %i.bmk = getelementptr inbounds nuw i8, ptr %.071.i86.i235, i64 4
  %i.bml = load i8, ptr %i.bmg, align 1, !tbaa !49
  %i.bmm = uitofp i8 %i.bml to double
  %i.bmn = getelementptr inbounds nuw i8, ptr %.062.i85.i234, i64 32
  store double %i.bmm, ptr %i.bmj, align 8, !tbaa !425
  %i.bmo = add nuw nsw i64 %.03.i84.i233, 4       ; 2 uses
  %exitcond.not.i87.i236.3 = icmp eq i64 %i.bmo, %i.bkt
  br i1 %exitcond.not.i87.i236.3, label %_ZN5arrow7compute8internal12_GLOBAL__N_114CastNumberImplINS_8Int8TypeEEEvNS_4Type4typeERKNS_9ArraySpanEPS7_.exit, label %.lr.ph.i83.i232, !llvm.loop !302

bb.bi:                                            ; preds = %bb.ax
  %i.bmp = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.bmq = load i64, ptr %i.bmp, align 8, !tbaa !404
  %i.bmr = icmp sgt i64 %i.bmq, 0
  br i1 %i.bmr, label %.lr.ph.preheader.i88.i222, label %_ZN5arrow7compute8internal12_GLOBAL__N_114CastNumberImplINS_8Int8TypeEEEvNS_4Type4typeERKNS_9ArraySpanEPS7_.exit

.lr.ph.preheader.i88.i222:                        ; preds = %bb.bi
  %i.bms = getelementptr i8, ptr %3, i64 56
  %.val42.i223 = load ptr, ptr %i.bms, align 8, !tbaa !403
  %i.bmt = getelementptr i8, ptr %3, i64 24
  %.val41.i224 = load i64, ptr %i.bmt, align 8, !tbaa !401
  %i.bmu = getelementptr inbounds [2 x i8], ptr %.val42.i223, i64 %.val41.i224
  %i.bmv = getelementptr inbounds nuw i8, ptr %2, i64 56
  %i.bmw = load ptr, ptr %i.bmv, align 8, !tbaa !403
  %i.bmx = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.bmy = load i64, ptr %i.bmx, align 8, !tbaa !401
  %i.bmz = getelementptr inbounds i8, ptr %i.bmw, i64 %i.bmy
  br label %.lr.ph.i89.i225

.lr.ph.i89.i225:                                  ; preds = %.lr.ph.i89.i225, %.lr.ph.preheader.i88.i222
  %.03.i90.i226 = phi ptr [ %i.bna, %.lr.ph.i89.i225 ], [ %i.bmz, %.lr.ph.preheader.i88.i222 ] ; 2 uses
  %.072.i.i227 = phi i64 [ %i.bnf, %.lr.ph.i89.i225 ], [ 0, %.lr.ph.preheader.i88.i222 ]
  %.081.i.i228 = phi ptr [ %i.bne, %.lr.ph.i89.i225 ], [ %i.bmu, %.lr.ph.preheader.i88.i222 ] ; 2 uses
  %i.bna = getelementptr inbounds nuw i8, ptr %.03.i90.i226, i64 1
  %i.bnb = load i8, ptr %.03.i90.i226, align 1, !tbaa !49
  %i.bnc = uitofp i8 %i.bnb to float
  %i.bnd = tail call i16 @_ZN5arrow4util7Float169FromFloatEf(float noundef %i.bnc)
  %i.bne = getelementptr inbounds nuw i8, ptr %.081.i.i228, i64 2
  store i16 %i.bnd, ptr %.081.i.i228, align 2, !tbaa !406
  %i.bnf = add nuw nsw i64 %.072.i.i227, 1        ; 2 uses
  %i.bng = load i64, ptr %i.bmp, align 8, !tbaa !404
  %i.bnh = icmp slt i64 %i.bnf, %i.bng
  br i1 %i.bnh, label %.lr.ph.i89.i225, label %_ZN5arrow7compute8internal12_GLOBAL__N_114CastNumberImplINS_8Int8TypeEEEvNS_4Type4typeERKNS_9ArraySpanEPS7_.exit, !llvm.loop !303

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
  %i.bni = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.bnj = load i64, ptr %i.bni, align 8, !tbaa !404
  %i.bnk = icmp sgt i64 %i.bnj, 0
  br i1 %i.bnk, label %.lr.ph.preheader.i.i370, label %_ZN5arrow7compute8internal12_GLOBAL__N_114CastNumberImplINS_8Int8TypeEEEvNS_4Type4typeERKNS_9ArraySpanEPS7_.exit

.lr.ph.preheader.i.i370:                          ; preds = %bb.bk
  %i.bnl = getelementptr i8, ptr %3, i64 56
  %.val22.i371 = load ptr, ptr %i.bnl, align 8, !tbaa !403
  %i.bnm = getelementptr i8, ptr %3, i64 24
  %.val.i372 = load i64, ptr %i.bnm, align 8, !tbaa !401
  %i.bnn = getelementptr inbounds i8, ptr %.val22.i371, i64 %.val.i372
  %i.bno = getelementptr inbounds nuw i8, ptr %2, i64 56
  %i.bnp = load ptr, ptr %i.bno, align 8, !tbaa !403
  %i.bnq = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.bnr = load i64, ptr %i.bnq, align 8, !tbaa !401
  %i.bns = getelementptr inbounds [2 x i8], ptr %i.bnp, i64 %i.bnr
  br label %.lr.ph.i.i373

.lr.ph.i.i373:                                    ; preds = %.lr.ph.i.i373, %.lr.ph.preheader.i.i370
  %.03.i.i374 = phi i64 [ %i.bnx, %.lr.ph.i.i373 ], [ 0, %.lr.ph.preheader.i.i370 ]
  %.062.i.i375 = phi ptr [ %i.bnw, %.lr.ph.i.i373 ], [ %i.bnn, %.lr.ph.preheader.i.i370 ] ; 2 uses
  %.071.i.i376 = phi ptr [ %i.bnt, %.lr.ph.i.i373 ], [ %i.bns, %.lr.ph.preheader.i.i370 ] ; 2 uses
  %i.bnt = getelementptr inbounds nuw i8, ptr %.071.i.i376, i64 2
  %i.bnu = load i16, ptr %.071.i.i376, align 2, !tbaa !406
  %i.bnv = trunc i16 %i.bnu to i8
  %i.bnw = getelementptr inbounds nuw i8, ptr %.062.i.i375, i64 1
  store i8 %i.bnv, ptr %.062.i.i375, align 1, !tbaa !49
  %i.bnx = add nuw nsw i64 %.03.i.i374, 1         ; 2 uses
  %i.bny = load i64, ptr %i.bni, align 8, !tbaa !404
  %i.bnz = icmp slt i64 %i.bnx, %i.bny
  br i1 %i.bnz, label %.lr.ph.i.i373, label %_ZN5arrow7compute8internal12_GLOBAL__N_114CastNumberImplINS_8Int8TypeEEEvNS_4Type4typeERKNS_9ArraySpanEPS7_.exit, !llvm.loop !304

bb.bl:                                            ; preds = %bb.bj
  %i.boa = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.bob = load i64, ptr %i.boa, align 8, !tbaa !404 ; 11 uses
  %i.boc = icmp sgt i64 %i.bob, 0
  br i1 %i.boc, label %iter.check, label %_ZN5arrow7compute8internal12_GLOBAL__N_114CastNumberImplINS_8Int8TypeEEEvNS_4Type4typeERKNS_9ArraySpanEPS7_.exit

iter.check:                                       ; preds = %bb.bl
  %i.bod = getelementptr i8, ptr %3, i64 56
  %.val24.i363 = load ptr, ptr %i.bod, align 8, !tbaa !403 ; 2 uses
  %i.boe = getelementptr i8, ptr %3, i64 24
  %.val23.i364 = load i64, ptr %i.boe, align 8, !tbaa !401 ; 2 uses
  %i.bof = getelementptr inbounds [2 x i8], ptr %.val24.i363, i64 %.val23.i364 ; 6 uses
  %i.bog = getelementptr inbounds nuw i8, ptr %2, i64 56
  %i.boh = load ptr, ptr %i.bog, align 8, !tbaa !403 ; 2 uses
  %i.boi = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.boj = load i64, ptr %i.boi, align 8, !tbaa !401 ; 2 uses
  %i.bok = getelementptr inbounds [2 x i8], ptr %i.boh, i64 %i.boj ; 6 uses
  %min.iters.check1548 = icmp ult i64 %i.bob, 4
  br i1 %min.iters.check1548, label %.lr.ph.i44.i365.preheader, label %vector.memcheck1544

vector.memcheck1544:                              ; preds = %iter.check
  %i.bol = ptrtoaddr ptr %i.boh to i64
  %.val24.i3631545 = ptrtoaddr ptr %.val24.i363 to i64
  %i.bom = shl i64 %.val23.i364, 1
  %18 = shl i64 %i.boj, 1
  %19 = add i64 %i.bom, %.val24.i3631545
  %i.bon = add i64 %18, %i.bol
  %i.boo = sub i64 %i.bon, %19
  %diff.check1546 = icmp ugt i64 %i.boo, -32
  br i1 %diff.check1546, label %.lr.ph.i44.i365.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %vector.memcheck1544
  %min.iters.check1549 = icmp ult i64 %i.bob, 16
  br i1 %min.iters.check1549, label %vec.epilog.ph, label %vector.ph1550

vector.ph1550:                                    ; preds = %vector.main.loop.iter.check
  %i.bop = and i64 %i.bob, 12
  %n.vec1551 = and i64 %i.bob, 9223372036854775792 ; 5 uses
  %i.boq = shl nuw i64 %n.vec1551, 1              ; 2 uses
  %i.bor = getelementptr i8, ptr %i.bof, i64 %i.boq
  %i.bos = getelementptr i8, ptr %i.bok, i64 %i.boq
  br label %vector.body1552

vector.body1552:                                  ; preds = %vector.ph1550, %vector.body1552
  %index1553 = phi i64 [ 0, %vector.ph1550 ], [ %index.next1558, %vector.body1552 ] ; 2 uses
  %i.bot = shl i64 %index1553, 1                  ; 2 uses
  %next.gep1554 = getelementptr i8, ptr %i.bof, i64 %i.bot ; 2 uses
  %next.gep1555 = getelementptr i8, ptr %i.bok, i64 %i.bot ; 2 uses
  %i.bou = getelementptr i8, ptr %next.gep1555, i64 16
  %wide.load1556 = load <8 x i16>, ptr %next.gep1555, align 2, !tbaa !406
  %wide.load1557 = load <8 x i16>, ptr %i.bou, align 2, !tbaa !406
  %i.bov = getelementptr i8, ptr %next.gep1554, i64 16
  store <8 x i16> %wide.load1556, ptr %next.gep1554, align 2, !tbaa !406
  store <8 x i16> %wide.load1557, ptr %i.bov, align 2, !tbaa !406
  %index.next1558 = add nuw i64 %index1553, 16    ; 2 uses
  %i.bow = icmp eq i64 %index.next1558, %n.vec1551
  br i1 %i.bow, label %middle.block1559, label %vector.body1552, !llvm.loop !305

middle.block1559:                                 ; preds = %vector.body1552
  %cmp.n1560 = icmp eq i64 %i.bob, %n.vec1551
  br i1 %cmp.n1560, label %_ZN5arrow7compute8internal12_GLOBAL__N_114CastNumberImplINS_8Int8TypeEEEvNS_4Type4typeERKNS_9ArraySpanEPS7_.exit, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block1559
  %min.epilog.iters.check = icmp eq i64 %i.bop, 0
  br i1 %min.epilog.iters.check, label %.lr.ph.i44.i365.preheader, label %vec.epilog.ph, !prof !410

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec1551, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec1563 = and i64 %i.bob, 9223372036854775804 ; 4 uses
  %i.box = shl nuw i64 %n.vec1563, 1              ; 2 uses
  %i.boy = getelementptr i8, ptr %i.bof, i64 %i.box
  %i.boz = getelementptr i8, ptr %i.bok, i64 %i.box
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index1564 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next1568, %vec.epilog.vector.body ] ; 2 uses
  %i.bpa = shl i64 %index1564, 1                  ; 2 uses
  %next.gep1565 = getelementptr i8, ptr %i.bof, i64 %i.bpa
  %next.gep1566 = getelementptr i8, ptr %i.bok, i64 %i.bpa
  %wide.load1567 = load <4 x i16>, ptr %next.gep1566, align 2, !tbaa !406
  store <4 x i16> %wide.load1567, ptr %next.gep1565, align 2, !tbaa !406
  %index.next1568 = add nuw i64 %index1564, 4     ; 2 uses
  %i.bpb = icmp eq i64 %index.next1568, %n.vec1563
  br i1 %i.bpb, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !306

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n1569 = icmp eq i64 %i.bob, %n.vec1563
  br i1 %cmp.n1569, label %_ZN5arrow7compute8internal12_GLOBAL__N_114CastNumberImplINS_8Int8TypeEEEvNS_4Type4typeERKNS_9ArraySpanEPS7_.exit, label %.lr.ph.i44.i365.preheader

.lr.ph.i44.i365.preheader:                        ; preds = %iter.check, %vector.memcheck1544, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.03.i45.i366.ph = phi i64 [ 0, %iter.check ], [ 0, %vector.memcheck1544 ], [ %n.vec1551, %vec.epilog.iter.check ], [ %n.vec1563, %vec.epilog.middle.block ] ; 4 uses
  %.062.i46.i367.ph = phi ptr [ %i.bof, %iter.check ], [ %i.bof, %vector.memcheck1544 ], [ %i.bor, %vec.epilog.iter.check ], [ %i.boy, %vec.epilog.middle.block ] ; 2 uses
  %.071.i47.i368.ph = phi ptr [ %i.bok, %iter.check ], [ %i.bok, %vector.memcheck1544 ], [ %i.bos, %vec.epilog.iter.check ], [ %i.boz, %vec.epilog.middle.block ] ; 2 uses
  %i.bpc = sub nsw i64 %i.bob, %.03.i45.i366.ph
  %xtraiter2290 = and i64 %i.bpc, 7               ; 2 uses
  %lcmp.mod2291.not = icmp eq i64 %xtraiter2290, 0
  br i1 %lcmp.mod2291.not, label %.lr.ph.i44.i365.prol.loopexit, label %.lr.ph.i44.i365.prol

.lr.ph.i44.i365.prol:                             ; preds = %.lr.ph.i44.i365.preheader, %.lr.ph.i44.i365.prol
  %.03.i45.i366.prol = phi i64 [ %i.bpg, %.lr.ph.i44.i365.prol ], [ %.03.i45.i366.ph, %.lr.ph.i44.i365.preheader ]
  %.062.i46.i367.prol = phi ptr [ %i.bpf, %.lr.ph.i44.i365.prol ], [ %.062.i46.i367.ph, %.lr.ph.i44.i365.preheader ] ; 2 uses
  %.071.i47.i368.prol = phi ptr [ %i.bpd, %.lr.ph.i44.i365.prol ], [ %.071.i47.i368.ph, %.lr.ph.i44.i365.preheader ] ; 2 uses
  %prol.iter2292 = phi i64 [ %prol.iter2292.next, %.lr.ph.i44.i365.prol ], [ 0, %.lr.ph.i44.i365.preheader ]
  %i.bpd = getelementptr inbounds nuw i8, ptr %.071.i47.i368.prol, i64 2 ; 2 uses
  %i.bpe = load i16, ptr %.071.i47.i368.prol, align 2, !tbaa !406
  %i.bpf = getelementptr inbounds nuw i8, ptr %.062.i46.i367.prol, i64 2 ; 2 uses
  store i16 %i.bpe, ptr %.062.i46.i367.prol, align 2, !tbaa !406
  %i.bpg = add nuw nsw i64 %.03.i45.i366.prol, 1  ; 2 uses
  %prol.iter2292.next = add i64 %prol.iter2292, 1 ; 2 uses
  %prol.iter2292.cmp.not = icmp eq i64 %prol.iter2292.next, %xtraiter2290
  br i1 %prol.iter2292.cmp.not, label %.lr.ph.i44.i365.prol.loopexit, label %.lr.ph.i44.i365.prol, !llvm.loop !307

.lr.ph.i44.i365.prol.loopexit:                    ; preds = %.lr.ph.i44.i365.prol, %.lr.ph.i44.i365.preheader
  %.03.i45.i366.unr = phi i64 [ %.03.i45.i366.ph, %.lr.ph.i44.i365.preheader ], [ %i.bpg, %.lr.ph.i44.i365.prol ]
  %.062.i46.i367.unr = phi ptr [ %.062.i46.i367.ph, %.lr.ph.i44.i365.preheader ], [ %i.bpf, %.lr.ph.i44.i365.prol ]
  %.071.i47.i368.unr = phi ptr [ %.071.i47.i368.ph, %.lr.ph.i44.i365.preheader ], [ %i.bpd, %.lr.ph.i44.i365.prol ]
  %i.bph = sub nsw i64 %.03.i45.i366.ph, %i.bob
  %i.bpi = icmp ugt i64 %i.bph, -8
  br i1 %i.bpi, label %_ZN5arrow7compute8internal12_GLOBAL__N_114CastNumberImplINS_8Int8TypeEEEvNS_4Type4typeERKNS_9ArraySpanEPS7_.exit, label %.lr.ph.i44.i365

.lr.ph.i44.i365:                                  ; preds = %.lr.ph.i44.i365.prol.loopexit, %.lr.ph.i44.i365
  %.03.i45.i366 = phi i64 [ %i.bqh, %.lr.ph.i44.i365 ], [ %.03.i45.i366.unr, %.lr.ph.i44.i365.prol.loopexit ]
  %.062.i46.i367 = phi ptr [ %i.bqg, %.lr.ph.i44.i365 ], [ %.062.i46.i367.unr, %.lr.ph.i44.i365.prol.loopexit ] ; 9 uses
  %.071.i47.i368 = phi ptr [ %i.bqe, %.lr.ph.i44.i365 ], [ %.071.i47.i368.unr, %.lr.ph.i44.i365.prol.loopexit ] ; 9 uses
  %i.bpj = getelementptr inbounds nuw i8, ptr %.071.i47.i368, i64 2
  %i.bpk = load i16, ptr %.071.i47.i368, align 2, !tbaa !406
  %i.bpl = getelementptr inbounds nuw i8, ptr %.062.i46.i367, i64 2
  store i16 %i.bpk, ptr %.062.i46.i367, align 2, !tbaa !406
  %i.bpm = getelementptr inbounds nuw i8, ptr %.071.i47.i368, i64 4
  %i.bpn = load i16, ptr %i.bpj, align 2, !tbaa !406
  %i.bpo = getelementptr inbounds nuw i8, ptr %.062.i46.i367, i64 4
  store i16 %i.bpn, ptr %i.bpl, align 2, !tbaa !406
  %i.bpp = getelementptr inbounds nuw i8, ptr %.071.i47.i368, i64 6
  %i.bpq = load i16, ptr %i.bpm, align 2, !tbaa !406
  %i.bpr = getelementptr inbounds nuw i8, ptr %.062.i46.i367, i64 6
  store i16 %i.bpq, ptr %i.bpo, align 2, !tbaa !406
  %i.bps = getelementptr inbounds nuw i8, ptr %.071.i47.i368, i64 8
  %i.bpt = load i16, ptr %i.bpp, align 2, !tbaa !406
  %i.bpu = getelementptr inbounds nuw i8, ptr %.062.i46.i367, i64 8
  store i16 %i.bpt, ptr %i.bpr, align 2, !tbaa !406
  %i.bpv = getelementptr inbounds nuw i8, ptr %.071.i47.i368, i64 10
  %i.bpw = load i16, ptr %i.bps, align 2, !tbaa !406
  %i.bpx = getelementptr inbounds nuw i8, ptr %.062.i46.i367, i64 10
  store i16 %i.bpw, ptr %i.bpu, align 2, !tbaa !406
  %i.bpy = getelementptr inbounds nuw i8, ptr %.071.i47.i368, i64 12
  %i.bpz = load i16, ptr %i.bpv, align 2, !tbaa !406
  %i.bqa = getelementptr inbounds nuw i8, ptr %.062.i46.i367, i64 12
  store i16 %i.bpz, ptr %i.bpx, align 2, !tbaa !406
  %i.bqb = getelementptr inbounds nuw i8, ptr %.071.i47.i368, i64 14
  %i.bqc = load i16, ptr %i.bpy, align 2, !tbaa !406
  %i.bqd = getelementptr inbounds nuw i8, ptr %.062.i46.i367, i64 14
  store i16 %i.bqc, ptr %i.bqa, align 2, !tbaa !406
  %i.bqe = getelementptr inbounds nuw i8, ptr %.071.i47.i368, i64 16
  %i.bqf = load i16, ptr %i.bqb, align 2, !tbaa !406
  %i.bqg = getelementptr inbounds nuw i8, ptr %.062.i46.i367, i64 16
  store i16 %i.bqf, ptr %i.bqd, align 2, !tbaa !406
  %i.bqh = add nuw nsw i64 %.03.i45.i366, 8       ; 2 uses
  %exitcond.not.i.i369.7 = icmp eq i64 %i.bqh, %i.bob
  br i1 %exitcond.not.i.i369.7, label %_ZN5arrow7compute8internal12_GLOBAL__N_114CastNumberImplINS_8Int8TypeEEEvNS_4Type4typeERKNS_9ArraySpanEPS7_.exit, label %.lr.ph.i44.i365, !llvm.loop !308

bb.bm:                                            ; preds = %bb.bj
  %i.bqi = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.bqj = load i64, ptr %i.bqi, align 8, !tbaa !404 ; 5 uses
  %i.bqk = icmp sgt i64 %i.bqj, 0
  br i1 %i.bqk, label %.lr.ph.preheader.i48.i354, label %_ZN5arrow7compute8internal12_GLOBAL__N_114CastNumberImplINS_8Int8TypeEEEvNS_4Type4typeERKNS_9ArraySpanEPS7_.exit

.lr.ph.preheader.i48.i354:                        ; preds = %bb.bm
  %i.bql = getelementptr i8, ptr %3, i64 56
  %.val26.i355 = load ptr, ptr %i.bql, align 8, !tbaa !403
  %i.bqm = getelementptr i8, ptr %3, i64 24
  %.val25.i356 = load i64, ptr %i.bqm, align 8, !tbaa !401
  %i.bqn = getelementptr inbounds [4 x i8], ptr %.val26.i355, i64 %.val25.i356 ; 3 uses
  %i.bqo = getelementptr inbounds nuw i8, ptr %2, i64 56
  %i.bqp = load ptr, ptr %i.bqo, align 8, !tbaa !403
  %i.bqq = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.bqr = load i64, ptr %i.bqq, align 8, !tbaa !401
  %i.bqs = getelementptr inbounds [2 x i8], ptr %i.bqp, i64 %i.bqr ; 3 uses
  %min.iters.check1529 = icmp ult i64 %i.bqj, 8
  br i1 %min.iters.check1529, label %.lr.ph.i49.i357.preheader, label %vector.ph1530

vector.ph1530:                                    ; preds = %.lr.ph.preheader.i48.i354
  %n.vec1531 = and i64 %i.bqj, 9223372036854775800 ; 5 uses
  %i.bqt = shl i64 %n.vec1531, 2
  %i.bqu = getelementptr i8, ptr %i.bqn, i64 %i.bqt
  %i.bqv = shl nuw i64 %n.vec1531, 1
  %i.bqw = getelementptr i8, ptr %i.bqs, i64 %i.bqv
  br label %vector.body1532

vector.body1532:                                  ; preds = %vector.body1532, %vector.ph1530
  %index1533 = phi i64 [ 0, %vector.ph1530 ], [ %index.next1538, %vector.body1532 ] ; 3 uses
  %i.bqx = shl i64 %index1533, 2
  %next.gep1534 = getelementptr i8, ptr %i.bqn, i64 %i.bqx ; 2 uses
  %i.bqy = shl i64 %index1533, 1
  %next.gep1535 = getelementptr i8, ptr %i.bqs, i64 %i.bqy ; 2 uses
  %i.bqz = getelementptr i8, ptr %next.gep1535, i64 8
  %wide.load1536 = load <4 x i16>, ptr %next.gep1535, align 2, !tbaa !406
  %wide.load1537 = load <4 x i16>, ptr %i.bqz, align 2, !tbaa !406
  %i.bra = zext <4 x i16> %wide.load1536 to <4 x i32>
  %i.brb = zext <4 x i16> %wide.load1537 to <4 x i32>
  %i.brc = getelementptr i8, ptr %next.gep1534, i64 16
  store <4 x i32> %i.bra, ptr %next.gep1534, align 4, !tbaa !24
  store <4 x i32> %i.brb, ptr %i.brc, align 4, !tbaa !24
  %index.next1538 = add nuw i64 %index1533, 8     ; 2 uses
  %i.brd = icmp eq i64 %index.next1538, %n.vec1531
  br i1 %i.brd, label %middle.block1539, label %vector.body1532, !llvm.loop !309

middle.block1539:                                 ; preds = %vector.body1532
  %cmp.n1540 = icmp eq i64 %i.bqj, %n.vec1531
  br i1 %cmp.n1540, label %_ZN5arrow7compute8internal12_GLOBAL__N_114CastNumberImplINS_8Int8TypeEEEvNS_4Type4typeERKNS_9ArraySpanEPS7_.exit, label %.lr.ph.i49.i357.preheader

.lr.ph.i49.i357.preheader:                        ; preds = %.lr.ph.preheader.i48.i354, %middle.block1539
  %.03.i50.i358.ph = phi i64 [ 0, %.lr.ph.preheader.i48.i354 ], [ %n.vec1531, %middle.block1539 ]
  %.062.i51.i359.ph = phi ptr [ %i.bqn, %.lr.ph.preheader.i48.i354 ], [ %i.bqu, %middle.block1539 ]
  %.071.i52.i360.ph = phi ptr [ %i.bqs, %.lr.ph.preheader.i48.i354 ], [ %i.bqw, %middle.block1539 ]
  br label %.lr.ph.i49.i357

.lr.ph.i49.i357:                                  ; preds = %.lr.ph.i49.i357.preheader, %.lr.ph.i49.i357
  %.03.i50.i358 = phi i64 [ %i.bri, %.lr.ph.i49.i357 ], [ %.03.i50.i358.ph, %.lr.ph.i49.i357.preheader ]
  %.062.i51.i359 = phi ptr [ %i.brh, %.lr.ph.i49.i357 ], [ %.062.i51.i359.ph, %.lr.ph.i49.i357.preheader ] ; 2 uses
  %.071.i52.i360 = phi ptr [ %i.bre, %.lr.ph.i49.i357 ], [ %.071.i52.i360.ph, %.lr.ph.i49.i357.preheader ] ; 2 uses
  %i.bre = getelementptr inbounds nuw i8, ptr %.071.i52.i360, i64 2
  %i.brf = load i16, ptr %.071.i52.i360, align 2, !tbaa !406
  %i.brg = zext i16 %i.brf to i32
  %i.brh = getelementptr inbounds nuw i8, ptr %.062.i51.i359, i64 4
  store i32 %i.brg, ptr %.062.i51.i359, align 4, !tbaa !24
  %i.bri = add nuw nsw i64 %.03.i50.i358, 1       ; 2 uses
  %exitcond.not.i53.i361 = icmp eq i64 %i.bri, %i.bqj
  br i1 %exitcond.not.i53.i361, label %_ZN5arrow7compute8internal12_GLOBAL__N_114CastNumberImplINS_8Int8TypeEEEvNS_4Type4typeERKNS_9ArraySpanEPS7_.exit, label %.lr.ph.i49.i357, !llvm.loop !310
end_hunk_2
begin_hunk_3_@_ZN5arrow7compute8internal24CastNumberToNumberUnsafeENS_4Type4typeES3_RKNS_9ArraySpanEPS4_:bb.a
  br i1 %i.bwt, label %middle.block1491, label %vector.body1484, !llvm.loop !318

middle.block1491:                                 ; preds = %vector.body1484
  %cmp.n1492 = icmp eq i64 %i.bvz, %n.vec1483
  br i1 %cmp.n1492, label %_ZN5arrow7compute8internal12_GLOBAL__N_114CastNumberImplINS_8Int8TypeEEEvNS_4Type4typeERKNS_9ArraySpanEPS7_.exit, label %.lr.ph.i82.i310.preheader

.lr.ph.i82.i310.preheader:                        ; preds = %.lr.ph.preheader.i81.i307, %middle.block1491
  %.03.i83.i311.ph = phi i64 [ 0, %.lr.ph.preheader.i81.i307 ], [ %n.vec1483, %middle.block1491 ]
  %.062.i84.i312.ph = phi ptr [ %i.bwd, %.lr.ph.preheader.i81.i307 ], [ %i.bwk, %middle.block1491 ]
  %.071.i85.i313.ph = phi ptr [ %i.bwi, %.lr.ph.preheader.i81.i307 ], [ %i.bwm, %middle.block1491 ]
  br label %.lr.ph.i82.i310

.lr.ph.i82.i310:                                  ; preds = %.lr.ph.i82.i310.preheader, %.lr.ph.i82.i310
  %.03.i83.i311 = phi i64 [ %i.bwy, %.lr.ph.i82.i310 ], [ %.03.i83.i311.ph, %.lr.ph.i82.i310.preheader ]
  %.062.i84.i312 = phi ptr [ %i.bwx, %.lr.ph.i82.i310 ], [ %.062.i84.i312.ph, %.lr.ph.i82.i310.preheader ] ; 2 uses
  %.071.i85.i313 = phi ptr [ %i.bwu, %.lr.ph.i82.i310 ], [ %.071.i85.i313.ph, %.lr.ph.i82.i310.preheader ] ; 2 uses
  %i.bwu = getelementptr inbounds nuw i8, ptr %.071.i85.i313, i64 2
  %i.bwv = load i16, ptr %.071.i85.i313, align 2, !tbaa !406
  %i.bww = uitofp i16 %i.bwv to double
  %i.bwx = getelementptr inbounds nuw i8, ptr %.062.i84.i312, i64 8
  store double %i.bww, ptr %.062.i84.i312, align 8, !tbaa !425
  %i.bwy = add nuw nsw i64 %.03.i83.i311, 1       ; 2 uses
  %exitcond.not.i86.i314 = icmp eq i64 %i.bwy, %i.bvz
  br i1 %exitcond.not.i86.i314, label %_ZN5arrow7compute8internal12_GLOBAL__N_114CastNumberImplINS_8Int8TypeEEEvNS_4Type4typeERKNS_9ArraySpanEPS7_.exit, label %.lr.ph.i82.i310, !llvm.loop !319

bb.bu:                                            ; preds = %bb.bj
  %i.bwz = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.bxa = load i64, ptr %i.bwz, align 8, !tbaa !404
  %i.bxb = icmp sgt i64 %i.bxa, 0
  br i1 %i.bxb, label %.lr.ph.preheader.i87.i300, label %_ZN5arrow7compute8internal12_GLOBAL__N_114CastNumberImplINS_8Int8TypeEEEvNS_4Type4typeERKNS_9ArraySpanEPS7_.exit

.lr.ph.preheader.i87.i300:                        ; preds = %bb.bu
  %i.bxc = getelementptr i8, ptr %3, i64 56
  %.val42.i301 = load ptr, ptr %i.bxc, align 8, !tbaa !403
  %i.bxd = getelementptr i8, ptr %3, i64 24
  %.val41.i302 = load i64, ptr %i.bxd, align 8, !tbaa !401
  %i.bxe = getelementptr inbounds [2 x i8], ptr %.val42.i301, i64 %.val41.i302
  %i.bxf = getelementptr inbounds nuw i8, ptr %2, i64 56
  %i.bxg = load ptr, ptr %i.bxf, align 8, !tbaa !403
  %i.bxh = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.bxi = load i64, ptr %i.bxh, align 8, !tbaa !401
  %i.bxj = getelementptr inbounds [2 x i8], ptr %i.bxg, i64 %i.bxi
  br label %.lr.ph.i88.i303

.lr.ph.i88.i303:                                  ; preds = %.lr.ph.i88.i303, %.lr.ph.preheader.i87.i300
  %.03.i89.i304 = phi ptr [ %i.bxk, %.lr.ph.i88.i303 ], [ %i.bxj, %.lr.ph.preheader.i87.i300 ] ; 2 uses
  %.072.i.i305 = phi i64 [ %i.bxp, %.lr.ph.i88.i303 ], [ 0, %.lr.ph.preheader.i87.i300 ]
  %.081.i.i306 = phi ptr [ %i.bxo, %.lr.ph.i88.i303 ], [ %i.bxe, %.lr.ph.preheader.i87.i300 ] ; 2 uses
  %i.bxk = getelementptr inbounds nuw i8, ptr %.03.i89.i304, i64 2
  %i.bxl = load i16, ptr %.03.i89.i304, align 2, !tbaa !406
  %i.bxm = uitofp i16 %i.bxl to float
  %i.bxn = tail call i16 @_ZN5arrow4util7Float169FromFloatEf(float noundef %i.bxm)
  %i.bxo = getelementptr inbounds nuw i8, ptr %.081.i.i306, i64 2
  store i16 %i.bxn, ptr %.081.i.i306, align 2, !tbaa !406
  %i.bxp = add nuw nsw i64 %.072.i.i305, 1        ; 2 uses
  %i.bxq = load i64, ptr %i.bwz, align 8, !tbaa !404
  %i.bxr = icmp slt i64 %i.bxp, %i.bxq
  br i1 %i.bxr, label %.lr.ph.i88.i303, label %_ZN5arrow7compute8internal12_GLOBAL__N_114CastNumberImplINS_8Int8TypeEEEvNS_4Type4typeERKNS_9ArraySpanEPS7_.exit, !llvm.loop !320

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
  %i.bxs = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.bxt = load i64, ptr %i.bxs, align 8, !tbaa !404
  %i.bxu = icmp sgt i64 %i.bxt, 0
  br i1 %i.bxu, label %.lr.ph.preheader.i.i447, label %_ZN5arrow7compute8internal12_GLOBAL__N_114CastNumberImplINS_8Int8TypeEEEvNS_4Type4typeERKNS_9ArraySpanEPS7_.exit

.lr.ph.preheader.i.i447:                          ; preds = %bb.bw
  %i.bxv = getelementptr i8, ptr %3, i64 56
  %.val22.i448 = load ptr, ptr %i.bxv, align 8, !tbaa !403
  %i.bxw = getelementptr i8, ptr %3, i64 24
  %.val.i449 = load i64, ptr %i.bxw, align 8, !tbaa !401
  %i.bxx = getelementptr inbounds i8, ptr %.val22.i448, i64 %.val.i449
  %i.bxy = getelementptr inbounds nuw i8, ptr %2, i64 56
  %i.bxz = load ptr, ptr %i.bxy, align 8, !tbaa !403
  %i.bya = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.byb = load i64, ptr %i.bya, align 8, !tbaa !401
  %i.byc = getelementptr inbounds [4 x i8], ptr %i.bxz, i64 %i.byb
  br label %.lr.ph.i.i450

.lr.ph.i.i450:                                    ; preds = %.lr.ph.i.i450, %.lr.ph.preheader.i.i447
  %.03.i.i451 = phi i64 [ %i.byh, %.lr.ph.i.i450 ], [ 0, %.lr.ph.preheader.i.i447 ]
  %.062.i.i452 = phi ptr [ %i.byg, %.lr.ph.i.i450 ], [ %i.bxx, %.lr.ph.preheader.i.i447 ] ; 2 uses
  %.071.i.i453 = phi ptr [ %i.byd, %.lr.ph.i.i450 ], [ %i.byc, %.lr.ph.preheader.i.i447 ] ; 2 uses
  %i.byd = getelementptr inbounds nuw i8, ptr %.071.i.i453, i64 4
  %i.bye = load i32, ptr %.071.i.i453, align 4, !tbaa !24
  %i.byf = trunc i32 %i.bye to i8
  %i.byg = getelementptr inbounds nuw i8, ptr %.062.i.i452, i64 1
  store i8 %i.byf, ptr %.062.i.i452, align 1, !tbaa !49
  %i.byh = add nuw nsw i64 %.03.i.i451, 1         ; 2 uses
  %i.byi = load i64, ptr %i.bxs, align 8, !tbaa !404
  %i.byj = icmp slt i64 %i.byh, %i.byi
  br i1 %i.byj, label %.lr.ph.i.i450, label %_ZN5arrow7compute8internal12_GLOBAL__N_114CastNumberImplINS_8Int8TypeEEEvNS_4Type4typeERKNS_9ArraySpanEPS7_.exit, !llvm.loop !321

bb.bx:                                            ; preds = %bb.bv
  %i.byk = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.byl = load i64, ptr %i.byk, align 8, !tbaa !404 ; 5 uses
  %i.bym = icmp sgt i64 %i.byl, 0
  br i1 %i.bym, label %.lr.ph.preheader.i43.i439, label %_ZN5arrow7compute8internal12_GLOBAL__N_114CastNumberImplINS_8Int8TypeEEEvNS_4Type4typeERKNS_9ArraySpanEPS7_.exit

.lr.ph.preheader.i43.i439:                        ; preds = %bb.bx
  %i.byn = getelementptr i8, ptr %3, i64 56
  %.val24.i440 = load ptr, ptr %i.byn, align 8, !tbaa !403
  %i.byo = getelementptr i8, ptr %3, i64 24
  %.val23.i441 = load i64, ptr %i.byo, align 8, !tbaa !401
  %i.byp = getelementptr inbounds [2 x i8], ptr %.val24.i440, i64 %.val23.i441 ; 3 uses
  %i.byq = getelementptr inbounds nuw i8, ptr %2, i64 56
  %i.byr = load ptr, ptr %i.byq, align 8, !tbaa !403
  %i.bys = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.byt = load i64, ptr %i.bys, align 8, !tbaa !401
  %i.byu = getelementptr inbounds [4 x i8], ptr %i.byr, i64 %i.byt ; 3 uses
  %min.iters.check1465 = icmp ult i64 %i.byl, 8
  br i1 %min.iters.check1465, label %.lr.ph.i44.i442.preheader, label %vector.ph1466

vector.ph1466:                                    ; preds = %.lr.ph.preheader.i43.i439
  %n.vec1467 = and i64 %i.byl, 9223372036854775800 ; 5 uses
  %i.byv = shl nuw i64 %n.vec1467, 1
  %i.byw = getelementptr i8, ptr %i.byp, i64 %i.byv
  %i.byx = shl i64 %n.vec1467, 2
  %i.byy = getelementptr i8, ptr %i.byu, i64 %i.byx
  br label %vector.body1468

vector.body1468:                                  ; preds = %vector.body1468, %vector.ph1466
  %index1469 = phi i64 [ 0, %vector.ph1466 ], [ %index.next1474, %vector.body1468 ] ; 3 uses
  %i.byz = shl i64 %index1469, 1
  %next.gep1470 = getelementptr i8, ptr %i.byp, i64 %i.byz ; 2 uses
  %i.bza = shl i64 %index1469, 2
  %next.gep1471 = getelementptr i8, ptr %i.byu, i64 %i.bza ; 2 uses
  %i.bzb = getelementptr i8, ptr %next.gep1471, i64 16
  %wide.load1472 = load <4 x i32>, ptr %next.gep1471, align 4, !tbaa !24
  %wide.load1473 = load <4 x i32>, ptr %i.bzb, align 4, !tbaa !24
  %i.bzc = trunc <4 x i32> %wide.load1472 to <4 x i16>
  %i.bzd = trunc <4 x i32> %wide.load1473 to <4 x i16>
  %i.bze = getelementptr i8, ptr %next.gep1470, i64 8
  store <4 x i16> %i.bzc, ptr %next.gep1470, align 2, !tbaa !406
  store <4 x i16> %i.bzd, ptr %i.bze, align 2, !tbaa !406
  %index.next1474 = add nuw i64 %index1469, 8     ; 2 uses
  %i.bzf = icmp eq i64 %index.next1474, %n.vec1467
  br i1 %i.bzf, label %middle.block1475, label %vector.body1468, !llvm.loop !322

middle.block1475:                                 ; preds = %vector.body1468
  %cmp.n1476 = icmp eq i64 %i.byl, %n.vec1467
  br i1 %cmp.n1476, label %_ZN5arrow7compute8internal12_GLOBAL__N_114CastNumberImplINS_8Int8TypeEEEvNS_4Type4typeERKNS_9ArraySpanEPS7_.exit, label %.lr.ph.i44.i442.preheader

.lr.ph.i44.i442.preheader:                        ; preds = %.lr.ph.preheader.i43.i439, %middle.block1475
  %.03.i45.i443.ph = phi i64 [ 0, %.lr.ph.preheader.i43.i439 ], [ %n.vec1467, %middle.block1475 ]
  %.062.i46.i444.ph = phi ptr [ %i.byp, %.lr.ph.preheader.i43.i439 ], [ %i.byw, %middle.block1475 ]
  %.071.i47.i445.ph = phi ptr [ %i.byu, %.lr.ph.preheader.i43.i439 ], [ %i.byy, %middle.block1475 ]
  br label %.lr.ph.i44.i442

.lr.ph.i44.i442:                                  ; preds = %.lr.ph.i44.i442.preheader, %.lr.ph.i44.i442
  %.03.i45.i443 = phi i64 [ %i.bzk, %.lr.ph.i44.i442 ], [ %.03.i45.i443.ph, %.lr.ph.i44.i442.preheader ]
  %.062.i46.i444 = phi ptr [ %i.bzj, %.lr.ph.i44.i442 ], [ %.062.i46.i444.ph, %.lr.ph.i44.i442.preheader ] ; 2 uses
  %.071.i47.i445 = phi ptr [ %i.bzg, %.lr.ph.i44.i442 ], [ %.071.i47.i445.ph, %.lr.ph.i44.i442.preheader ] ; 2 uses
  %i.bzg = getelementptr inbounds nuw i8, ptr %.071.i47.i445, i64 4
  %i.bzh = load i32, ptr %.071.i47.i445, align 4, !tbaa !24
  %i.bzi = trunc i32 %i.bzh to i16
  %i.bzj = getelementptr inbounds nuw i8, ptr %.062.i46.i444, i64 2
  store i16 %i.bzi, ptr %.062.i46.i444, align 2, !tbaa !406
  %i.bzk = add nuw nsw i64 %.03.i45.i443, 1       ; 2 uses
  %exitcond.not.i.i446 = icmp eq i64 %i.bzk, %i.byl
  br i1 %exitcond.not.i.i446, label %_ZN5arrow7compute8internal12_GLOBAL__N_114CastNumberImplINS_8Int8TypeEEEvNS_4Type4typeERKNS_9ArraySpanEPS7_.exit, label %.lr.ph.i44.i442, !llvm.loop !323

bb.by:                                            ; preds = %bb.bv
  %i.bzl = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.bzm = load i64, ptr %i.bzl, align 8, !tbaa !404 ; 7 uses
  %i.bzn = icmp sgt i64 %i.bzm, 0
  br i1 %i.bzn, label %.lr.ph.preheader.i48.i431, label %_ZN5arrow7compute8internal12_GLOBAL__N_114CastNumberImplINS_8Int8TypeEEEvNS_4Type4typeERKNS_9ArraySpanEPS7_.exit

.lr.ph.preheader.i48.i431:                        ; preds = %bb.by
  %i.bzo = getelementptr i8, ptr %3, i64 56
  %.val26.i432 = load ptr, ptr %i.bzo, align 8, !tbaa !403 ; 2 uses
  %i.bzp = getelementptr i8, ptr %3, i64 24
  %.val25.i433 = load i64, ptr %i.bzp, align 8, !tbaa !401 ; 2 uses
  %i.bzq = getelementptr inbounds [4 x i8], ptr %.val26.i432, i64 %.val25.i433 ; 4 uses
  %i.bzr = getelementptr inbounds nuw i8, ptr %2, i64 56
  %i.bzs = load ptr, ptr %i.bzr, align 8, !tbaa !403 ; 2 uses
  %i.bzt = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.bzu = load i64, ptr %i.bzt, align 8, !tbaa !401 ; 2 uses
  %i.bzv = getelementptr inbounds [4 x i8], ptr %i.bzs, i64 %i.bzu ; 4 uses
  %min.iters.check1449 = icmp ult i64 %i.bzm, 20
  br i1 %min.iters.check1449, label %.lr.ph.i49.i434.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.preheader.i48.i431
  %i.bzw = ptrtoaddr ptr %i.bzs to i64
  %.val26.i4321447 = ptrtoaddr ptr %.val26.i432 to i64
  %i.bzx = shl i64 %.val25.i433, 2
  %20 = shl i64 %i.bzu, 2
  %21 = add i64 %i.bzx, %.val26.i4321447
  %i.bzy = add i64 %20, %i.bzw
  %i.bzz = sub i64 %i.bzy, %21
  %diff.check = icmp ugt i64 %i.bzz, -32
  br i1 %diff.check, label %.lr.ph.i49.i434.preheader, label %vector.ph1450

vector.ph1450:                                    ; preds = %vector.memcheck
  %n.vec1451 = and i64 %i.bzm, 9223372036854775800 ; 4 uses
  %i.caa = shl i64 %n.vec1451, 2                  ; 2 uses
  %i.cab = getelementptr i8, ptr %i.bzq, i64 %i.caa
  %i.cac = getelementptr i8, ptr %i.bzv, i64 %i.caa
  br label %vector.body1452

vector.body1452:                                  ; preds = %vector.body1452, %vector.ph1450
  %index1453 = phi i64 [ 0, %vector.ph1450 ], [ %index.next1458, %vector.body1452 ] ; 2 uses
  %i.cad = shl i64 %index1453, 2                  ; 2 uses
  %next.gep1454 = getelementptr i8, ptr %i.bzq, i64 %i.cad ; 2 uses
  %next.gep1455 = getelementptr i8, ptr %i.bzv, i64 %i.cad ; 2 uses
  %i.cae = getelementptr i8, ptr %next.gep1455, i64 16
  %wide.load1456 = load <4 x i32>, ptr %next.gep1455, align 4, !tbaa !24
  %wide.load1457 = load <4 x i32>, ptr %i.cae, align 4, !tbaa !24
  %i.caf = getelementptr i8, ptr %next.gep1454, i64 16
  store <4 x i32> %wide.load1456, ptr %next.gep1454, align 4, !tbaa !24
  store <4 x i32> %wide.load1457, ptr %i.caf, align 4, !tbaa !24
  %index.next1458 = add nuw i64 %index1453, 8     ; 2 uses
  %i.cag = icmp eq i64 %index.next1458, %n.vec1451
  br i1 %i.cag, label %middle.block1459, label %vector.body1452, !llvm.loop !324

middle.block1459:                                 ; preds = %vector.body1452
  %cmp.n1460 = icmp eq i64 %i.bzm, %n.vec1451
  br i1 %cmp.n1460, label %_ZN5arrow7compute8internal12_GLOBAL__N_114CastNumberImplINS_8Int8TypeEEEvNS_4Type4typeERKNS_9ArraySpanEPS7_.exit, label %.lr.ph.i49.i434.preheader

.lr.ph.i49.i434.preheader:                        ; preds = %vector.memcheck, %.lr.ph.preheader.i48.i431, %middle.block1459
  %.03.i50.i435.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %.lr.ph.preheader.i48.i431 ], [ %n.vec1451, %middle.block1459 ] ; 3 uses
  %.062.i51.i436.ph = phi ptr [ %i.bzq, %vector.memcheck ], [ %i.bzq, %.lr.ph.preheader.i48.i431 ], [ %i.cab, %middle.block1459 ] ; 2 uses
  %.071.i52.i437.ph = phi ptr [ %i.bzv, %vector.memcheck ], [ %i.bzv, %.lr.ph.preheader.i48.i431 ], [ %i.cac, %middle.block1459 ] ; 2 uses
  %xtraiter2288 = and i64 %i.bzm, 7               ; 2 uses
  %lcmp.mod2289.not = icmp eq i64 %xtraiter2288, 0
  br i1 %lcmp.mod2289.not, label %.lr.ph.i49.i434.prol.loopexit, label %.lr.ph.i49.i434.prol

.lr.ph.i49.i434.prol:                             ; preds = %.lr.ph.i49.i434.preheader, %.lr.ph.i49.i434.prol
  %.03.i50.i435.prol = phi i64 [ %i.cak, %.lr.ph.i49.i434.prol ], [ %.03.i50.i435.ph, %.lr.ph.i49.i434.preheader ]
  %.062.i51.i436.prol = phi ptr [ %i.caj, %.lr.ph.i49.i434.prol ], [ %.062.i51.i436.ph, %.lr.ph.i49.i434.preheader ] ; 2 uses
  %.071.i52.i437.prol = phi ptr [ %i.cah, %.lr.ph.i49.i434.prol ], [ %.071.i52.i437.ph, %.lr.ph.i49.i434.preheader ] ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i49.i434.prol ], [ 0, %.lr.ph.i49.i434.preheader ]
  %i.cah = getelementptr inbounds nuw i8, ptr %.071.i52.i437.prol, i64 4 ; 2 uses
  %i.cai = load i32, ptr %.071.i52.i437.prol, align 4, !tbaa !24
  %i.caj = getelementptr inbounds nuw i8, ptr %.062.i51.i436.prol, i64 4 ; 2 uses
  store i32 %i.cai, ptr %.062.i51.i436.prol, align 4, !tbaa !24
  %i.cak = add nuw nsw i64 %.03.i50.i435.prol, 1  ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter2288
  br i1 %prol.iter.cmp.not, label %.lr.ph.i49.i434.prol.loopexit, label %.lr.ph.i49.i434.prol, !llvm.loop !325

.lr.ph.i49.i434.prol.loopexit:                    ; preds = %.lr.ph.i49.i434.prol, %.lr.ph.i49.i434.preheader
  %.03.i50.i435.unr = phi i64 [ %.03.i50.i435.ph, %.lr.ph.i49.i434.preheader ], [ %i.cak, %.lr.ph.i49.i434.prol ]
  %.062.i51.i436.unr = phi ptr [ %.062.i51.i436.ph, %.lr.ph.i49.i434.preheader ], [ %i.caj, %.lr.ph.i49.i434.prol ]
  %.071.i52.i437.unr = phi ptr [ %.071.i52.i437.ph, %.lr.ph.i49.i434.preheader ], [ %i.cah, %.lr.ph.i49.i434.prol ]
  %i.cal = sub nsw i64 %.03.i50.i435.ph, %i.bzm
  %i.cam = icmp ugt i64 %i.cal, -8
  br i1 %i.cam, label %_ZN5arrow7compute8internal12_GLOBAL__N_114CastNumberImplINS_8Int8TypeEEEvNS_4Type4typeERKNS_9ArraySpanEPS7_.exit, label %.lr.ph.i49.i434

.lr.ph.i49.i434:                                  ; preds = %.lr.ph.i49.i434.prol.loopexit, %.lr.ph.i49.i434
  %.03.i50.i435 = phi i64 [ %i.cbl, %.lr.ph.i49.i434 ], [ %.03.i50.i435.unr, %.lr.ph.i49.i434.prol.loopexit ]
  %.062.i51.i436 = phi ptr [ %i.cbk, %.lr.ph.i49.i434 ], [ %.062.i51.i436.unr, %.lr.ph.i49.i434.prol.loopexit ] ; 9 uses
  %.071.i52.i437 = phi ptr [ %i.cbi, %.lr.ph.i49.i434 ], [ %.071.i52.i437.unr, %.lr.ph.i49.i434.prol.loopexit ] ; 9 uses
  %i.can = getelementptr inbounds nuw i8, ptr %.071.i52.i437, i64 4
  %i.cao = load i32, ptr %.071.i52.i437, align 4, !tbaa !24
  %i.cap = getelementptr inbounds nuw i8, ptr %.062.i51.i436, i64 4
  store i32 %i.cao, ptr %.062.i51.i436, align 4, !tbaa !24
  %i.caq = getelementptr inbounds nuw i8, ptr %.071.i52.i437, i64 8
  %i.car = load i32, ptr %i.can, align 4, !tbaa !24
  %i.cas = getelementptr inbounds nuw i8, ptr %.062.i51.i436, i64 8
  store i32 %i.car, ptr %i.cap, align 4, !tbaa !24
  %i.cat = getelementptr inbounds nuw i8, ptr %.071.i52.i437, i64 12
  %i.cau = load i32, ptr %i.caq, align 4, !tbaa !24
  %i.cav = getelementptr inbounds nuw i8, ptr %.062.i51.i436, i64 12
  store i32 %i.cau, ptr %i.cas, align 4, !tbaa !24
  %i.caw = getelementptr inbounds nuw i8, ptr %.071.i52.i437, i64 16
  %i.cax = load i32, ptr %i.cat, align 4, !tbaa !24
  %i.cay = getelementptr inbounds nuw i8, ptr %.062.i51.i436, i64 16
  store i32 %i.cax, ptr %i.cav, align 4, !tbaa !24
  %i.caz = getelementptr inbounds nuw i8, ptr %.071.i52.i437, i64 20
  %i.cba = load i32, ptr %i.caw, align 4, !tbaa !24
  %i.cbb = getelementptr inbounds nuw i8, ptr %.062.i51.i436, i64 20
  store i32 %i.cba, ptr %i.cay, align 4, !tbaa !24
  %i.cbc = getelementptr inbounds nuw i8, ptr %.071.i52.i437, i64 24
  %i.cbd = load i32, ptr %i.caz, align 4, !tbaa !24
  %i.cbe = getelementptr inbounds nuw i8, ptr %.062.i51.i436, i64 24
  store i32 %i.cbd, ptr %i.cbb, align 4, !tbaa !24
  %i.cbf = getelementptr inbounds nuw i8, ptr %.071.i52.i437, i64 28
  %i.cbg = load i32, ptr %i.cbc, align 4, !tbaa !24
  %i.cbh = getelementptr inbounds nuw i8, ptr %.062.i51.i436, i64 28
  store i32 %i.cbg, ptr %i.cbe, align 4, !tbaa !24
  %i.cbi = getelementptr inbounds nuw i8, ptr %.071.i52.i437, i64 32
  %i.cbj = load i32, ptr %i.cbf, align 4, !tbaa !24
  %i.cbk = getelementptr inbounds nuw i8, ptr %.062.i51.i436, i64 32
  store i32 %i.cbj, ptr %i.cbh, align 4, !tbaa !24
  %i.cbl = add nuw nsw i64 %.03.i50.i435, 8       ; 2 uses
  %exitcond.not.i53.i438.7 = icmp eq i64 %i.cbl, %i.bzm
  br i1 %exitcond.not.i53.i438.7, label %_ZN5arrow7compute8internal12_GLOBAL__N_114CastNumberImplINS_8Int8TypeEEEvNS_4Type4typeERKNS_9ArraySpanEPS7_.exit, label %.lr.ph.i49.i434, !llvm.loop !326

bb.bz:                                            ; preds = %bb.bv
  %i.cbm = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.cbn = load i64, ptr %i.cbm, align 8, !tbaa !404
  %i.cbo = icmp sgt i64 %i.cbn, 0
  br i1 %i.cbo, label %.lr.ph.preheader.i54.i424, label %_ZN5arrow7compute8internal12_GLOBAL__N_114CastNumberImplINS_8Int8TypeEEEvNS_4Type4typeERKNS_9ArraySpanEPS7_.exit

.lr.ph.preheader.i54.i424:                        ; preds = %bb.bz
  %i.cbp = getelementptr i8, ptr %3, i64 56
  %.val28.i425 = load ptr, ptr %i.cbp, align 8, !tbaa !403
  %i.cbq = getelementptr i8, ptr %3, i64 24
  %.val27.i426 = load i64, ptr %i.cbq, align 8, !tbaa !401
  %i.cbr = getelementptr inbounds [8 x i8], ptr %.val28.i425, i64 %.val27.i426
  %i.cbs = getelementptr inbounds nuw i8, ptr %2, i64 56
  %i.cbt = load ptr, ptr %i.cbs, align 8, !tbaa !403
  %i.cbu = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.cbv = load i64, ptr %i.cbu, align 8, !tbaa !401
  %i.cbw = getelementptr inbounds [4 x i8], ptr %i.cbt, i64 %i.cbv
  br label %.lr.ph.i55.i427

.lr.ph.i55.i427:                                  ; preds = %.lr.ph.i55.i427, %.lr.ph.preheader.i54.i424
  %.03.i56.i428 = phi i64 [ %i.ccb, %.lr.ph.i55.i427 ], [ 0, %.lr.ph.preheader.i54.i424 ]
  %.062.i57.i429 = phi ptr [ %i.cca, %.lr.ph.i55.i427 ], [ %i.cbr, %.lr.ph.preheader.i54.i424 ] ; 2 uses
  %.071.i58.i430 = phi ptr [ %i.cbx, %.lr.ph.i55.i427 ], [ %i.cbw, %.lr.ph.preheader.i54.i424 ] ; 2 uses
  %i.cbx = getelementptr inbounds nuw i8, ptr %.071.i58.i430, i64 4
  %i.cby = load i32, ptr %.071.i58.i430, align 4, !tbaa !24
  %i.cbz = zext i32 %i.cby to i64
  %i.cca = getelementptr inbounds nuw i8, ptr %.062.i57.i429, i64 8
  store i64 %i.cbz, ptr %.062.i57.i429, align 8, !tbaa !414
  %i.ccb = add nuw nsw i64 %.03.i56.i428, 1       ; 2 uses
  %i.ccc = load i64, ptr %i.cbm, align 8, !tbaa !404
  %i.ccd = icmp slt i64 %i.ccb, %i.ccc
  br i1 %i.ccd, label %.lr.ph.i55.i427, label %_ZN5arrow7compute8internal12_GLOBAL__N_114CastNumberImplINS_8Int8TypeEEEvNS_4Type4typeERKNS_9ArraySpanEPS7_.exit, !llvm.loop !327

bb.ca:                                            ; preds = %bb.bv
  %i.cce = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.ccf = load i64, ptr %i.cce, align 8, !tbaa !404
  %i.ccg = icmp sgt i64 %i.ccf, 0
  br i1 %i.ccg, label %.lr.ph.preheader.i59.i417, label %_ZN5arrow7compute8internal12_GLOBAL__N_114CastNumberImplINS_8Int8TypeEEEvNS_4Type4typeERKNS_9ArraySpanEPS7_.exit

.lr.ph.preheader.i59.i417:                        ; preds = %bb.ca
  %i.cch = getelementptr i8, ptr %3, i64 56
  %.val30.i418 = load ptr, ptr %i.cch, align 8, !tbaa !403
  %i.cci = getelementptr i8, ptr %3, i64 24
  %.val29.i419 = load i64, ptr %i.cci, align 8, !tbaa !401
  %i.ccj = getelementptr inbounds i8, ptr %.val30.i418, i64 %.val29.i419
  %i.cck = getelementptr inbounds nuw i8, ptr %2, i64 56
  %i.ccl = load ptr, ptr %i.cck, align 8, !tbaa !403
  %i.ccm = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.ccn = load i64, ptr %i.ccm, align 8, !tbaa !401
  %i.cco = getelementptr inbounds [4 x i8], ptr %i.ccl, i64 %i.ccn
  br label %.lr.ph.i60.i420

.lr.ph.i60.i420:                                  ; preds = %.lr.ph.i60.i420, %.lr.ph.preheader.i59.i417
  %.03.i61.i421 = phi i64 [ %i.cct, %.lr.ph.i60.i420 ], [ 0, %.lr.ph.preheader.i59.i417 ]
  %.062.i62.i422 = phi ptr [ %i.ccs, %.lr.ph.i60.i420 ], [ %i.ccj, %.lr.ph.preheader.i59.i417 ] ; 2 uses
  %.071.i63.i423 = phi ptr [ %i.ccp, %.lr.ph.i60.i420 ], [ %i.cco, %.lr.ph.preheader.i59.i417 ] ; 2 uses
  %i.ccp = getelementptr inbounds nuw i8, ptr %.071.i63.i423, i64 4
  %i.ccq = load i32, ptr %.071.i63.i423, align 4, !tbaa !24
  %i.ccr = trunc i32 %i.ccq to i8
  %i.ccs = getelementptr inbounds nuw i8, ptr %.062.i62.i422, i64 1
  store i8 %i.ccr, ptr %.062.i62.i422, align 1, !tbaa !49
  %i.cct = add nuw nsw i64 %.03.i61.i421, 1       ; 2 uses
  %i.ccu = load i64, ptr %i.cce, align 8, !tbaa !404
  %i.ccv = icmp slt i64 %i.cct, %i.ccu
  br i1 %i.ccv, label %.lr.ph.i60.i420, label %_ZN5arrow7compute8internal12_GLOBAL__N_114CastNumberImplINS_8Int8TypeEEEvNS_4Type4typeERKNS_9ArraySpanEPS7_.exit, !llvm.loop !328

bb.cb:                                            ; preds = %bb.bv
  %i.ccw = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.ccx = load i64, ptr %i.ccw, align 8, !tbaa !404 ; 5 uses
  %i.ccy = icmp sgt i64 %i.ccx, 0
  br i1 %i.ccy, label %.lr.ph.preheader.i64.i409, label %_ZN5arrow7compute8internal12_GLOBAL__N_114CastNumberImplINS_8Int8TypeEEEvNS_4Type4typeERKNS_9ArraySpanEPS7_.exit

.lr.ph.preheader.i64.i409:                        ; preds = %bb.cb
  %i.ccz = getelementptr i8, ptr %3, i64 56
  %.val32.i410 = load ptr, ptr %i.ccz, align 8, !tbaa !403
  %i.cda = getelementptr i8, ptr %3, i64 24
  %.val31.i411 = load i64, ptr %i.cda, align 8, !tbaa !401
  %i.cdb = getelementptr inbounds [2 x i8], ptr %.val32.i410, i64 %.val31.i411 ; 3 uses
  %i.cdc = getelementptr inbounds nuw i8, ptr %2, i64 56
  %i.cdd = load ptr, ptr %i.cdc, align 8, !tbaa !403
  %i.cde = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.cdf = load i64, ptr %i.cde, align 8, !tbaa !401
  %i.cdg = getelementptr inbounds [4 x i8], ptr %i.cdd, i64 %i.cdf ; 3 uses
  %min.iters.check1432 = icmp ult i64 %i.ccx, 8
  br i1 %min.iters.check1432, label %.lr.ph.i65.i412.preheader, label %vector.ph1433

vector.ph1433:                                    ; preds = %.lr.ph.preheader.i64.i409
  %n.vec1434 = and i64 %i.ccx, 9223372036854775800 ; 5 uses
  %i.cdh = shl nuw i64 %n.vec1434, 1
  %i.cdi = getelementptr i8, ptr %i.cdb, i64 %i.cdh
  %i.cdj = shl i64 %n.vec1434, 2
  %i.cdk = getelementptr i8, ptr %i.cdg, i64 %i.cdj
  br label %vector.body1435

vector.body1435:                                  ; preds = %vector.body1435, %vector.ph1433
  %index1436 = phi i64 [ 0, %vector.ph1433 ], [ %index.next1441, %vector.body1435 ] ; 3 uses
  %i.cdl = shl i64 %index1436, 1
  %next.gep1437 = getelementptr i8, ptr %i.cdb, i64 %i.cdl ; 2 uses
  %i.cdm = shl i64 %index1436, 2
  %next.gep1438 = getelementptr i8, ptr %i.cdg, i64 %i.cdm ; 2 uses
  %i.cdn = getelementptr i8, ptr %next.gep1438, i64 16
end_hunk_3

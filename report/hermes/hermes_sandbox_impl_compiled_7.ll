inline.NumInlined: 10002
inline.NumDeleted: 29
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumUnrolled: 3
begin_hunk_0_@w2c_hermes_void0x20hermes0x3A0x3Aregex0x3A0x3ABracketNode0x3Chermes0x3A0x3Aregex0x3A0x3AUTF16RegexTraits0x3E0x3A0x3ApopulateInstruction0x3Chermes0x3A0x3Aregex0x3A0x3ARegexBytecodeStream0x3A0x3AInstructionWrapper0x3Chermes0x3A0x3Aregex0x3A0x3AU16BracketInsn0x3E0x3E0x28hermes0x3A0x3Aregex0x3A0x3ARegexBytecodeStream0x260x2C0x20hermes0x3A0x3Aregex0x3A0x3ARegexBytecodeStream0x3A0x3AInstructionWrapper0x3Chermes0x3A0x3Aregex0x3A0x3AU16BracketInsn0x3E0x290x20const:bb.a
  %i.iq = getelementptr inbounds nuw i8, ptr %i.ip, i64 4
  store i32 %i.io, ptr %i.iq, align 1
  %i.ir = add i32 %.01882, 8
  %.val2060 = load ptr, ptr %i.d, align 8, !tbaa !8
  %i.is = getelementptr inbounds nuw i8, ptr %.val2060, i64 %i.bx
  %.0.copyload.i2194 = load i32, ptr %i.is, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i2194) #13, !srcloc !14
  %.val2059 = load ptr, ptr %i.d, align 8, !tbaa !8
  %i.it = getelementptr inbounds nuw i8, ptr %.val2059, i64 %i.bu
  %.0.copyload.i2195 = load i32, ptr %i.it, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i2195) #13, !srcloc !14
  %i.iu = shl i32 %.0.copyload.i2195, 3
  %i.iv = sub i32 %.0.copyload.i2194, %.6
  %i.iw = add i32 %i.iv, %i.iu                    ; 2 uses
  %i.ix = tail call i32 @w2c_hermes_memmove(ptr noundef nonnull %0, i32 noundef %i.ir, i32 noundef %.6, i32 noundef %i.iw) #13
  %i.iy = sub i32 %i.iw, %.0.copyload.i2194
  %i.iz = add i32 %i.iy, %i.ix
  %i.ja = ashr i32 %i.iz, 3
  %.val2107 = load ptr, ptr %i.d, align 8, !tbaa !8
  %i.jb = getelementptr inbounds nuw i8, ptr %.val2107, i64 %i.bu
  store i32 %i.ja, ptr %i.jb, align 1
  br label %bb.ar

bb.ar:                                            ; preds = %bb.aq, %bb.ap, %bb.ak
  %i.jc = add i32 %.11864, 1                      ; 2 uses
  %.not1965 = icmp eq i32 %i.jc, %i.dt
  br i1 %.not1965, label %.loopexit2264, label %.preheader2263

.loopexit2264:                                    ; preds = %bb.ar, %bb.v
  %.21865 = phi i32 [ %.01863, %bb.v ], [ %i.dt, %bb.ar ]
  %i.jd = add i32 %.21850, 8
  br label %bb.as

bb.as:                                            ; preds = %.preheader2265, %.loopexit2264
  %.31866 = phi i32 [ %.21865, %.loopexit2264 ], [ %i.dp, %.preheader2265 ] ; 2 uses
  %.31851 = phi i32 [ %i.jd, %.loopexit2264 ], [ %.21850, %.preheader2265 ] ; 2 uses
  %.not1966 = icmp uge i32 %.31866, %i.dl
  %.not1967 = icmp eq i32 %.31851, %i.cp
  %or.cond2012 = select i1 %.not1966, i1 true, i1 %.not1967
  br i1 %or.cond2012, label %.loopexit2266, label %.preheader2265

.loopexit2266:                                    ; preds = %bb.as, %bb.u
  %i.je = add i32 %.01852, 8                      ; 2 uses
  %.not1968 = icmp eq i32 %i.je, %i.co
  br i1 %.not1968, label %bb.at, label %bb.s

bb.at:                                            ; preds = %.loopexit2266
  %.val2058 = load ptr, ptr %i.d, align 8, !tbaa !8
  %i.jf = getelementptr inbounds nuw i8, ptr %.val2058, i64 %i.bu
  %.0.copyload.i2196 = load i32, ptr %i.jf, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i2196) #13, !srcloc !14
  br label %bb.au

bb.au:                                            ; preds = %bb.at, %bb.q
  %.7 = phi i32 [ %.0.copyload.i2196, %bb.at ], [ %.2, %bb.q ] ; 6 uses
  %i.jg = zext i32 %i.bo to i64                   ; 11 uses
  %i.jh = add nuw nsw i64 %i.jg, 4                ; 12 uses
  %.val2140 = load ptr, ptr %i.d, align 8, !tbaa !8
  %i.ji = getelementptr inbounds nuw i8, ptr %.val2140, i64 %i.jh
  store i64 17179869184, ptr %i.ji, align 1
  %i.jj = add i32 %i.b, -40                       ; 5 uses
  %.val2106 = load ptr, ptr %i.d, align 8, !tbaa !8
  %i.jk = getelementptr inbounds nuw i8, ptr %.val2106, i64 %i.jg
  store i32 %i.jj, ptr %i.jk, align 1
  %i.jl = icmp eq i32 %i.bo, %i.cc
  %.not1969 = icmp eq i32 %.7, 0
  %or.cond2025 = select i1 %i.jl, i1 true, i1 %.not1969
  br i1 %or.cond2025, label %bb.ba, label %bb.av

bb.av:                                            ; preds = %bb.au
  %i.jm = icmp ugt i32 %.7, 4
  br i1 %i.jm, label %bb.aw, label %bb.ay

bb.aw:                                            ; preds = %bb.av
  tail call void @w2c_hermes_llvh0x3A0x3ASmallVectorBase0x3A0x3Agrow_pod0x28void0x2A0x2C0x20unsigned0x20long0x2C0x20unsigned0x20long0x29(ptr noundef nonnull %0, i32 noundef %i.bo, i32 noundef %i.jj, i32 noundef %.7, i32 noundef 8) #13
  %.val2057 = load ptr, ptr %i.d, align 8, !tbaa !8
  %i.jn = getelementptr inbounds nuw i8, ptr %.val2057, i64 %i.bu
  %.0.copyload.i2197 = load i32, ptr %i.jn, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i2197) #13, !srcloc !14
  %.not1970 = icmp eq i32 %.0.copyload.i2197, 0
  br i1 %.not1970, label %bb.az, label %bb.ax

bb.ax:                                            ; preds = %bb.aw
  %.val2056 = load ptr, ptr %i.d, align 8, !tbaa !8
  %i.jo = getelementptr inbounds nuw i8, ptr %.val2056, i64 %i.jg
  %.0.copyload.i2198 = load i32, ptr %i.jo, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i2198) #13, !srcloc !14
  br label %bb.ay

bb.ay:                                            ; preds = %bb.av, %bb.ax
  %.31878 = phi i32 [ %.0.copyload.i2197, %bb.ax ], [ %.7, %bb.av ]
  %.51838 = phi i32 [ %.0.copyload.i2198, %bb.ax ], [ %i.jj, %bb.av ]
  %.val2055 = load ptr, ptr %i.d, align 8, !tbaa !8
  %i.jp = getelementptr inbounds nuw i8, ptr %.val2055, i64 %i.bx
  %.0.copyload.i2199 = load i32, ptr %i.jp, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i2199) #13, !srcloc !14
  %i.jq = shl i32 %.31878, 3
  %i.jr = tail call i32 @w2c_hermes_0x5F_memcpy(ptr noundef nonnull %0, i32 noundef %.51838, i32 noundef %.0.copyload.i2199, i32 noundef %i.jq) #13 ; 0 uses
  %.val2054 = load ptr, ptr %i.d, align 8, !tbaa !8
  %i.js = getelementptr inbounds nuw i8, ptr %.val2054, i64 %i.bu
  %.0.copyload.i2200 = load i32, ptr %i.js, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i2200) #13, !srcloc !14
  br label %bb.az

bb.az:                                            ; preds = %bb.aw, %bb.ay
  %.61839 = phi i32 [ 0, %bb.aw ], [ %.0.copyload.i2200, %bb.ay ]
  %.val2105 = load ptr, ptr %i.d, align 8, !tbaa !8
  %i.jt = getelementptr inbounds nuw i8, ptr %.val2105, i64 %i.jh
  store i32 %.7, ptr %i.jt, align 1
  br label %bb.ba

bb.ba:                                            ; preds = %bb.au, %bb.az
  %.41879 = phi i32 [ %.61839, %bb.az ], [ %.7, %bb.au ] ; 2 uses
  %.val2053 = load ptr, ptr %i.d, align 8, !tbaa !8
  %i.ju = getelementptr inbounds nuw i8, ptr %.val2053, i64 %i.bx
  %.0.copyload.i2201 = load i32, ptr %i.ju, align 1 ; 4 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i2201) #13, !srcloc !14
  %.not1971 = icmp eq i32 %.41879, 0
  br i1 %.not1971, label %bb.ce, label %bb.bb

bb.bb:                                            ; preds = %bb.ba
  %.not1972 = icmp eq i8 %.0.copyload.i2164, 0    ; 2 uses
  %i.jv = select i1 %.not1972, i32 226800, i32 225184
  %i.jw = select i1 %.not1972, i32 228200, i32 226792
  %i.jx = shl i32 %.41879, 3
  %i.jy = add i32 %.0.copyload.i2201, %i.jx
  br label %bb.bc

bb.bc:                                            ; preds = %.loopexit2256, %bb.bb
  %.01843 = phi i32 [ %.0.copyload.i2201, %bb.bb ], [ %i.px, %.loopexit2256 ] ; 2 uses
  %i.jz = zext i32 %.01843 to i64
  %.val2130 = load ptr, ptr %i.d, align 8, !tbaa !8
  %i.ka = getelementptr inbounds nuw i8, ptr %.val2130, i64 %i.jz
  %.0.copyload.i2202 = load i64, ptr %i.ka, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i64 %.0.copyload.i2202) #13, !srcloc !33
  %i.kb = lshr i64 %.0.copyload.i2202, 32         ; 2 uses
  %.not1973 = icmp eq i64 %i.kb, 0
  br i1 %.not1973, label %.loopexit2256, label %bb.bd

bb.bd:                                            ; preds = %bb.bc
  %i.kc = trunc nuw i64 %i.kb to i32
  %i.kd = trunc i64 %.0.copyload.i2202 to i32     ; 3 uses
  %i.ke = add i32 %i.kc, %i.kd                    ; 2 uses
  br label %bb.be

bb.be:                                            ; preds = %.loopexit2255, %bb.bd
  %.21847 = phi i32 [ %i.jv, %bb.bd ], [ %i.pw, %.loopexit2255 ] ; 2 uses
  %i.kf = zext i32 %.21847 to i64
  %.val2129 = load ptr, ptr %i.d, align 8, !tbaa !8
  %i.kg = getelementptr inbounds nuw i8, ptr %.val2129, i64 %i.kf
  %.0.copyload.i2203 = load i64, ptr %i.kg, align 1
  %.0.copyload.i2203.fr = freeze i64 %.0.copyload.i2203 ; 6 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i64 %.0.copyload.i2203.fr) #13, !srcloc !33
  %i.kh = trunc i64 %.0.copyload.i2203.fr to i32  ; 3 uses
  %i.ki = and i32 %i.kh, 16777215                 ; 2 uses
  %i.kj = shl i64 %.0.copyload.i2203.fr, 8
  %i.kk = ashr i64 %i.kj, 40                      ; 3 uses
  %i.kl = trunc nsw i64 %i.kk to i32
  %i.km = add nsw i32 %i.ki, %i.kl                ; 2 uses
  %.not1974 = icmp ult i32 %i.km, %i.ke
  br i1 %.not1974, label %bb.bf, label %.loopexit2255

bb.bf:                                            ; preds = %bb.be
  %i.kn = lshr i32 %i.kh, 24                      ; 2 uses
  %i.ko = add nsw i32 %i.km, %i.kn
  %.not1975 = icmp ule i32 %i.ko, %i.kd
  %i.kp = icmp ult i32 %i.kh, 16777216
  %or.cond2013 = or i1 %i.kp, %.not1975
  br i1 %or.cond2013, label %.loopexit2255, label %bb.bg

bb.bg:                                            ; preds = %bb.bf
  %i.kq = add nuw nsw i32 %i.kn, %i.ki
  %i.kr = lshr i64 %.0.copyload.i2203.fr, 56      ; 2 uses
  %i.ks = trunc nuw nsw i64 %i.kr to i32
  %i.kt = icmp eq i64 %i.kr, 0
  br i1 %i.kt, label %bb.bh, label %.split, !prof !25

.split:                                           ; preds = %bb.bg
  %.not19771978 = icmp eq i64 %i.kk, 0
  br i1 %.not19771978, label %.loopexit2255, label %.split.split.preheader

.split.split.preheader:                           ; preds = %.split
  %i.ku = and i64 %.0.copyload.i2203.fr, 16777215
  %i.kv = and i64 %.0.copyload.i2203.fr, 16777215
  %i.kw = zext nneg i32 %i.kq to i64
  br label %.split.split

.split.split:                                     ; preds = %.split.split.preheader, %bb.cc
  %indvars.iv = phi i64 [ %i.ku, %.split.split.preheader ], [ %indvars.iv.next, %bb.cc ] ; 15 uses
  %i.kx = sub nuw nsw i64 %indvars.iv, %i.kv
  %i.ky = trunc nuw nsw i64 %i.kx to i32
  %i.kz = urem i32 %i.ky, %i.ks
  %.not1976.not = icmp eq i32 %i.kz, 0
  br i1 %.not1976.not, label %bb.bi, label %bb.cc

bb.bh:                                            ; preds = %bb.bg
  tail call void @wasm_rt_trap(i32 noundef 3) #14
  unreachable

bb.bi:                                            ; preds = %.split.split
  %i.la = add i64 %indvars.iv, %i.kk
  %i.lb = trunc i64 %i.la to i32                  ; 2 uses
  %i.lc = icmp uge i32 %i.lb, %i.kd
  %.not1979 = icmp ugt i32 %i.ke, %i.lb
  %or.cond2014 = select i1 %i.lc, i1 %.not1979, i1 false
  br i1 %or.cond2014, label %bb.bj, label %bb.cc

bb.bj:                                            ; preds = %bb.bi
  %.val2052 = load ptr, ptr %i.d, align 8, !tbaa !8
  %i.ld = getelementptr inbounds nuw i8, ptr %.val2052, i64 %i.jg
  %.0.copyload.i2204 = load i32, ptr %i.ld, align 1 ; 6 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i2204) #13, !srcloc !14
  %.val2051 = load ptr, ptr %i.d, align 8, !tbaa !8
  %i.le = getelementptr inbounds nuw i8, ptr %.val2051, i64 %i.jh
  %.0.copyload.i2205 = load i32, ptr %i.le, align 1 ; 6 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i2205) #13, !srcloc !14
  %.not1980 = icmp eq i32 %.0.copyload.i2205, 0
  br i1 %.not1980, label %bb.bk, label %bb.bl

bb.bk:                                            ; preds = %bb.bj
  %.val2050 = load ptr, ptr %i.d, align 8, !tbaa !8
  %i.lf = getelementptr inbounds nuw i8, ptr %.val2050, i64 %i.jg
  %i.lg = getelementptr inbounds nuw i8, ptr %i.lf, i64 8
  %.0.copyload.i2206 = load i32, ptr %i.lg, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i2206) #13, !srcloc !14
  %.not1994 = icmp eq i32 %.0.copyload.i2206, 0
  br i1 %.not1994, label %bb.bu, label %bb.bv

bb.bl:                                            ; preds = %bb.bj
  %i.lh = add nuw nsw i64 %indvars.iv, 1          ; 3 uses
  %i.li = or disjoint i64 %indvars.iv, 4294967296
  %i.lj = shl i32 %.0.copyload.i2205, 3
  %i.lk = add i32 %i.lj, %.0.copyload.i2204       ; 3 uses
  br label %.outer

.outer:                                           ; preds = %bb.bq, %bb.bl
  %.51874.ph = phi i32 [ %i.ll, %bb.bq ], [ %.0.copyload.i2205, %bb.bl ]
  %.11858.ph = phi i32 [ %i.ln, %bb.bq ], [ %i.lk, %bb.bl ] ; 3 uses
  %.31825.ph = phi i32 [ %.31825, %bb.bq ], [ %.0.copyload.i2204, %bb.bl ]
  br label %bb.bm

bb.bm:                                            ; preds = %.outer, %bb.bo
  %.51874 = phi i32 [ %i.lz, %bb.bo ], [ %.51874.ph, %.outer ] ; 3 uses
  %.31825 = phi i32 [ %i.lx, %bb.bo ], [ %.31825.ph, %.outer ] ; 4 uses
  %i.ll = lshr i32 %.51874, 1                     ; 5 uses
  %i.lm = shl i32 %i.ll, 3
  %i.ln = add i32 %.31825, %i.lm                  ; 5 uses
  %i.lo = zext i32 %i.ln to i64
  %.val2128 = load ptr, ptr %i.d, align 8, !tbaa !8
  %i.lp = getelementptr inbounds nuw i8, ptr %.val2128, i64 %i.lo
  %.0.copyload.i2207 = load i64, ptr %i.lp, align 1 ; 4 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i64 %.0.copyload.i2207) #13, !srcloc !33
  %i.lq = lshr i64 %.0.copyload.i2207, 32
  %i.lr = add i64 %i.lq, %.0.copyload.i2207
  %i.ls = and i64 %.0.copyload.i2207, 4294967295  ; 3 uses
  %i.lt = icmp samesign ult i64 %indvars.iv, %i.ls ; 2 uses
  %i.lu = and i64 %i.lr, 4294967295               ; 2 uses
  %i.lv = icmp samesign uge i64 %indvars.iv, %i.lu
  %.not1982 = or i1 %i.lt, %i.lv
  br i1 %.not1982, label %bb.bn, label %.loopexit2252

bb.bn:                                            ; preds = %bb.bm
  %i.lw = icmp ne i64 %indvars.iv, %i.lu          ; 2 uses
  %.not1983 = icmp samesign ugt i64 %indvars.iv, %i.ls
  %brmerge2016.not = and i1 %.not1983, %i.lw
  br i1 %brmerge2016.not, label %bb.bo, label %bb.bp

bb.bo:                                            ; preds = %bb.bn
  %i.lx = add i32 %i.ln, 8                        ; 2 uses
  %i.ly = xor i32 %i.ll, -1
  %i.lz = add i32 %.51874, %i.ly                  ; 2 uses
  %.not1984 = icmp eq i32 %i.lz, 0
  br i1 %.not1984, label %.loopexit2251, label %bb.bm

bb.bp:                                            ; preds = %bb.bn
  %i.ma = icmp ne i64 %i.lh, %i.ls
  %i.mb = and i1 %i.ma, %i.lw
  %i.mc = and i1 %i.lt, %i.mb
  br i1 %i.mc, label %bb.bq, label %.loopexit2252

bb.bq:                                            ; preds = %bb.bp
  %.not1985 = icmp eq i32 %i.ll, 0
  br i1 %.not1985, label %.loopexit2251, label %.outer

.loopexit2252:                                    ; preds = %bb.bp, %bb.bm
  %i.md = icmp ugt i32 %.51874, 1
  br i1 %i.md, label %.preheader, label %.loopexit2250

.preheader:                                       ; preds = %.loopexit2252, %.preheader
  %.51880 = phi i32 [ %.71840, %.preheader ], [ %i.ll, %.loopexit2252 ] ; 2 uses
  %.41826 = phi i32 [ %.51827, %.preheader ], [ %.31825, %.loopexit2252 ] ; 2 uses
  %i.me = lshr i32 %.51880, 1                     ; 3 uses
  %i.mf = shl i32 %i.me, 3
  %i.mg = add i32 %i.mf, %.41826                  ; 2 uses
  %i.mh = zext i32 %i.mg to i64
  %.val2127 = load ptr, ptr %i.d, align 8, !tbaa !8
  %i.mi = getelementptr inbounds nuw i8, ptr %.val2127, i64 %i.mh
  %.0.copyload.i2208 = load i64, ptr %i.mi, align 1 ; 4 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i64 %.0.copyload.i2208) #13, !srcloc !33
  %i.mj = lshr i64 %.0.copyload.i2208, 32
  %i.mk = add i64 %i.mj, %.0.copyload.i2208
  %i.ml = and i64 %.0.copyload.i2208, 4294967295
  %.not1987 = icmp samesign ule i64 %indvars.iv, %i.ml
  %i.mm = and i64 %i.mk, 4294967295
  %i.mn = icmp samesign ule i64 %indvars.iv, %i.mm
  %or.cond2020 = select i1 %.not1987, i1 true, i1 %i.mn ; 2 uses
  %i.mo = add i32 %i.mg, 8
  %i.mp = xor i32 %i.me, -1
  %i.mq = add i32 %.51880, %i.mp
  %.71840 = select i1 %or.cond2020, i32 %i.me, i32 %i.mq ; 2 uses
  %.51827 = select i1 %or.cond2020, i32 %.41826, i32 %i.mo ; 2 uses
  %.not1988 = icmp eq i32 %.71840, 0
  br i1 %.not1988, label %.loopexit2250, label %.preheader

.loopexit2250:                                    ; preds = %.preheader, %.loopexit2252
  %.11883 = phi i32 [ %i.ln, %.loopexit2252 ], [ %.51827, %.preheader ] ; 4 uses
  %i.mr = add i32 %i.ln, 8                        ; 3 uses
  %i.ms = icmp eq i32 %i.mr, %.11858.ph
  br i1 %i.ms, label %.loopexit2249, label %bb.br

bb.br:                                            ; preds = %.loopexit2250
  %i.mt = sub i32 %.11858.ph, %i.mr
  %i.mu = ashr i32 %i.mt, 3
  br label %bb.bs

bb.bs:                                            ; preds = %bb.bs, %bb.br
  %.61881 = phi i32 [ %i.mu, %bb.br ], [ %.81841, %bb.bs ] ; 2 uses
  %.11860 = phi i32 [ %i.mr, %bb.br ], [ %.21861, %bb.bs ] ; 2 uses
  %i.mv = lshr i32 %.61881, 1                     ; 3 uses
  %i.mw = shl i32 %i.mv, 3
  %i.mx = add i32 %i.mw, %.11860                  ; 2 uses
  %i.my = zext i32 %i.mx to i64
  %.val2126 = load ptr, ptr %i.d, align 8, !tbaa !8
  %i.mz = getelementptr inbounds nuw i8, ptr %.val2126, i64 %i.my
  %.0.copyload.i2209 = load i64, ptr %i.mz, align 1 ; 4 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i64 %.0.copyload.i2209) #13, !srcloc !33
  %i.na = lshr i64 %.0.copyload.i2209, 32
  %i.nb = add i64 %i.na, %.0.copyload.i2209
  %i.nc = and i64 %.0.copyload.i2209, 4294967295  ; 2 uses
  %i.nd = icmp samesign uge i64 %indvars.iv, %i.nc
  %i.ne = icmp eq i64 %i.lh, %i.nc
  %or.cond2022 = or i1 %i.nd, %i.ne
  %i.nf = and i64 %i.nb, 4294967295
  %i.ng = icmp eq i64 %indvars.iv, %i.nf
  %or.cond2023 = or i1 %or.cond2022, %i.ng        ; 2 uses
  %i.nh = add i32 %i.mx, 8
  %i.ni = xor i32 %i.mv, -1
  %i.nj = add i32 %.61881, %i.ni
  %.21861 = select i1 %or.cond2023, i32 %i.nh, i32 %.11860 ; 2 uses
  %.81841 = select i1 %or.cond2023, i32 %i.nj, i32 %i.mv ; 2 uses
  %.not1989 = icmp eq i32 %.81841, 0
  br i1 %.not1989, label %.loopexit2249, label %bb.bs

.loopexit2249:                                    ; preds = %bb.bs, %.loopexit2250
  %.31862 = phi i32 [ %.11858.ph, %.loopexit2250 ], [ %.21861, %bb.bs ] ; 4 uses
  %.not1990 = icmp eq i32 %.11883, %.31862
  br i1 %.not1990, label %.loopexit2251, label %bb.cb

.loopexit2251:                                    ; preds = %bb.bq, %bb.bo, %.loopexit2249
  %.61828 = phi i32 [ %.11883, %.loopexit2249 ], [ %i.lx, %bb.bo ], [ %.31825, %bb.bq ] ; 3 uses
  %.val2049 = load ptr, ptr %i.d, align 8, !tbaa !8
  %i.nk = getelementptr inbounds nuw i8, ptr %.val2049, i64 %i.jg
  %i.nl = getelementptr inbounds nuw i8, ptr %i.nk, i64 8
  %.0.copyload.i2210 = load i32, ptr %i.nl, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i2210) #13, !srcloc !14
  %.not1991 = icmp eq i32 %.61828, %i.lk
  %i.nm = icmp ugt i32 %.0.copyload.i2210, %.0.copyload.i2205 ; 2 uses
  br i1 %.not1991, label %bb.bt, label %bb.bw

bb.bt:                                            ; preds = %.loopexit2251
  br i1 %i.nm, label %bb.bv, label %bb.bu

bb.bu:                                            ; preds = %bb.bt, %bb.bk
  tail call void @w2c_hermes_llvh0x3A0x3ASmallVectorBase0x3A0x3Agrow_pod0x28void0x2A0x2C0x20unsigned0x20long0x2C0x20unsigned0x20long0x29(ptr noundef nonnull %0, i32 noundef %i.bo, i32 noundef %i.jj, i32 noundef 0, i32 noundef 8) #13
  %.val2048 = load ptr, ptr %i.d, align 8, !tbaa !8
  %i.nn = getelementptr inbounds nuw i8, ptr %.val2048, i64 %i.jg
  %.0.copyload.i2211 = load i32, ptr %i.nn, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i2211) #13, !srcloc !14
  %.val2047 = load ptr, ptr %i.d, align 8, !tbaa !8
  %i.no = getelementptr inbounds nuw i8, ptr %.val2047, i64 %i.jh
  %.0.copyload.i2212 = load i32, ptr %i.no, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i2212) #13, !srcloc !14
  br label %bb.bv

bb.bv:                                            ; preds = %bb.bt, %bb.bk, %bb.bu
  %.41867 = phi i32 [ %.0.copyload.i2212, %bb.bu ], [ 0, %bb.bk ], [ %.0.copyload.i2205, %bb.bt ]
  %.21855 = phi i32 [ %.0.copyload.i2211, %bb.bu ], [ %.0.copyload.i2204, %bb.bk ], [ %.0.copyload.i2204, %bb.bt ]
  %i.np = shl i32 %.41867, 3
  %i.nq = add i32 %.21855, %i.np
  %i.nr = or disjoint i64 %indvars.iv, 4294967296
  %i.ns = zext i32 %i.nq to i64
  %.val2139 = load ptr, ptr %i.d, align 8, !tbaa !8
  %i.nt = getelementptr inbounds nuw i8, ptr %.val2139, i64 %i.ns
  store i64 %i.nr, ptr %i.nt, align 1
  %.val2046 = load ptr, ptr %i.d, align 8, !tbaa !8
  %i.nu = getelementptr inbounds nuw i8, ptr %.val2046, i64 %i.jh
  %.0.copyload.i2213 = load i32, ptr %i.nu, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i2213) #13, !srcloc !14
  %i.nv = add i32 %.0.copyload.i2213, 1
  %.val2104 = load ptr, ptr %i.d, align 8, !tbaa !8
  %i.nw = getelementptr inbounds nuw i8, ptr %.val2104, i64 %i.jh
  store i32 %i.nv, ptr %i.nw, align 1
end_hunk_0

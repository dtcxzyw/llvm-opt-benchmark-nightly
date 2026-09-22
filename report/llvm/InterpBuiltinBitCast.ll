Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm/original/InterpBuiltinBitCast?download=true
inline.NumInlined: 2547
inline.NumDeleted: 1768
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@"_ZN4llvm12function_refIF6ResultN5clang6interp7PtrViewENS3_8PrimTypeENS3_4BitsES6_bEE11callback_fnIZNS3_12DoBitCastPtrERNS3_11InterpStateENS3_7CodePtrERKNS3_7PointerERSD_mE3$_0EES1_lS4_S5_S6_S6_b":bb.a
  %i.hy = and i64 %i.hx, 1073741816
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %i.ht, ptr align 8 %i.hu, i64 %i.hy, i1 false)
  %.pre.i80.i = load i32, ptr %i.hi, align 8, !tbaa !663
  %i.hz = icmp ugt i32 %.pre.i80.i, 64
  br i1 %i.hz, label %bb.ac, label %_ZN5clang6interp10IntegralAPILb1EE17bitcastFromMemoryEPKSt4bytejPS2_.exit.i

bb.ac:                                            ; preds = %_ZN5clang6interp10IntegralAPILb1EE4copyERKN4llvm5APIntE.exit.i.i
  %i.ia = load ptr, ptr %7, align 8, !tbaa !472   ; 2 uses
  %i.ib = icmp eq ptr %i.ia, null
  br i1 %i.ib, label %_ZN5clang6interp10IntegralAPILb1EE17bitcastFromMemoryEPKSt4bytejPS2_.exit.i, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  call void @_ZdaPv(ptr noundef nonnull %i.ia) #18
  br label %_ZN5clang6interp10IntegralAPILb1EE17bitcastFromMemoryEPKSt4bytejPS2_.exit.i

_ZN5clang6interp10IntegralAPILb1EE17bitcastFromMemoryEPKSt4bytejPS2_.exit.i: ; preds = %bb.ad, %bb.ac, %_ZN5clang6interp10IntegralAPILb1EE4copyERKN4llvm5APIntE.exit.i.i, %_ZN5clang6interp10IntegralAPILb1EE4copyERKN4llvm5APIntE.exit.thread.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #16
  br label %bb.cj

bb.ae:                                            ; preds = %bb.s
  %i.ic = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  %i.id = load ptr, ptr %i.ic, align 8, !tbaa !842, !nonnull !31, !align !32 ; 9 uses
  %i.ie = trunc i64 %4 to i32                     ; 4 uses
  %i.if = and i64 %4, 4294967295
  %i.ig = add nuw nsw i64 %i.if, 63
  %i.ih = lshr i64 %i.ig, 6                       ; 2 uses
  %i.ii = icmp eq i64 %i.ih, 1
  br i1 %i.ii, label %_ZN5clang6interp11InterpState7allocAPINS0_10IntegralAPILb0EEEEET_j.exit.i, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.ij = shl nuw nsw i64 %i.ih, 3                ; 3 uses
  %i.ik = getelementptr inbounds nuw i8, ptr %i.id, i64 72 ; 4 uses
  %i.il = getelementptr inbounds nuw i8, ptr %i.id, i64 152 ; 3 uses
  %i.im = load i8, ptr %i.il, align 8, !tbaa !843, !range !465, !noundef !31
  %i.in = trunc nuw i8 %i.im to i1
  br i1 %i.in, label %bb.ag, label %.thread.i82.i

.thread.i82.i:                                    ; preds = %bb.af
  %i.io = getelementptr inbounds nuw i8, ptr %i.id, i64 88
  %i.ip = getelementptr inbounds nuw i8, ptr %i.id, i64 104
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(88) %i.ik, i8 0, i64 64, i1 false)
  store ptr %i.ip, ptr %i.io, align 8, !tbaa !483
  %i.iq = getelementptr inbounds nuw i8, ptr %i.id, i64 100
  store i32 4, ptr %i.iq, align 4, !tbaa !485
  %i.ir = getelementptr inbounds nuw i8, ptr %i.id, i64 136
  store ptr %i.il, ptr %i.ir, align 8, !tbaa !483
  %i.is = getelementptr inbounds nuw i8, ptr %i.id, i64 144
  store i32 0, ptr %i.is, align 8, !tbaa !484
  %i.it = getelementptr inbounds nuw i8, ptr %i.id, i64 148
  store i32 0, ptr %i.it, align 4, !tbaa !485
  store i8 1, ptr %i.il, align 8, !tbaa !843
  br label %bb.ai

bb.ag:                                            ; preds = %bb.af
  %.pre.i.i86.i = load ptr, ptr %i.ik, align 8, !tbaa !611 ; 2 uses
  %.phi.trans.insert.i.i87.i = getelementptr inbounds nuw i8, ptr %i.id, i64 80
  %.pre2.i.i88.i = load i64, ptr %.phi.trans.insert.i.i87.i, align 8, !tbaa !612
  %i.iu = ptrtoint ptr %.pre.i.i86.i to i64
  %i.iv = add i64 %i.ij, %i.iu                    ; 2 uses
  %i.iw = icmp ult i64 %i.iv, %.pre2.i.i88.i
  br i1 %i.iw, label %bb.ah, label %bb.ai, !prof !844

bb.ah:                                            ; preds = %bb.ag
  %i.ix = inttoptr i64 %i.iv to ptr
  store ptr %i.ix, ptr %i.ik, align 8, !tbaa !611
  br label %_ZN5clang6interp11InterpState7allocAPINS0_10IntegralAPILb0EEEEET_j.exit.i

bb.ai:                                            ; preds = %bb.ag, %.thread.i82.i
  %i.iy = call noundef nonnull ptr @_ZN4llvm20BumpPtrAllocatorImplINS_15MallocAllocatorELm4096ELm4096ELm128ELm8EE12AllocateSlowEmmNS_5AlignE(ptr noundef nonnull align 8 dereferenceable(80) %i.ik, i64 noundef %i.ij, i64 noundef %i.ij, i8 3)
  br label %_ZN5clang6interp11InterpState7allocAPINS0_10IntegralAPILb0EEEEET_j.exit.i

_ZN5clang6interp11InterpState7allocAPINS0_10IntegralAPILb0EEEEET_j.exit.i: ; preds = %bb.ai, %bb.ah, %bb.ae
  %.sroa.0.0.i83.i = phi ptr [ null, %bb.ae ], [ %.pre.i.i86.i, %bb.ah ], [ %i.iy, %bb.ai ]
  %i.iz = load i32, ptr %i.bi, align 8, !tbaa !476 ; 2 uses
  %i.ja = load ptr, ptr %11, align 8, !tbaa !475  ; 3 uses
  %i.jb = load ptr, ptr %i.ja, align 8, !tbaa !491 ; 2 uses
  %i.jc = getelementptr inbounds nuw i8, ptr %i.jb, i64 24
  %i.jd = load i32, ptr %i.jc, align 8, !tbaa !501
  %i.je = icmp eq i32 %i.iz, %i.jd
  %.pre322.i = zext i32 %i.iz to i64              ; 3 uses
  br i1 %i.je, label %_ZNK5clang6interp7PtrView5derefINS0_10IntegralAPILb0EEEEERT_v.exit.i, label %bb.aj

bb.aj:                                            ; preds = %_ZN5clang6interp11InterpState7allocAPINS0_10IntegralAPILb0EEEEET_j.exit.i
  %i.jf = getelementptr inbounds nuw i8, ptr %i.ja, i64 %.pre322.i
  %i.jg = getelementptr inbounds nuw i8, ptr %i.jf, i64 32
  %i.jh = load ptr, ptr %i.jg, align 8, !tbaa !504
  br label %_ZNK5clang6interp7PtrView5derefINS0_10IntegralAPILb0EEEEERT_v.exit.i

_ZNK5clang6interp7PtrView5derefINS0_10IntegralAPILb0EEEEERT_v.exit.i: ; preds = %bb.aj, %_ZN5clang6interp11InterpState7allocAPINS0_10IntegralAPILb0EEEEET_j.exit.i
  %.0.i.i.i.i89.i = phi ptr [ %i.jh, %bb.aj ], [ %i.jb, %_ZN5clang6interp11InterpState7allocAPINS0_10IntegralAPILb0EEEEET_j.exit.i ]
  %i.ji = getelementptr inbounds nuw i8, ptr %.0.i.i.i.i89.i, i64 53
  %i.jj = load i8, ptr %i.ji, align 1, !tbaa !571, !range !465, !noundef !31
  %i.jk = trunc nuw i8 %i.jj to i1
  %i.jl = getelementptr inbounds nuw i8, ptr %11, i64 16 ; 2 uses
  %i.jm = load i64, ptr %i.jl, align 8, !tbaa !480 ; 2 uses
  %i.jn = icmp eq i64 %i.jm, %.pre322.i
  %i.jo = and i1 %i.jn, %i.jk                     ; 2 uses
  %.sink6.i90.i = select i1 %i.jo, i64 %.pre322.i, i64 40
  %.sink5.i91.i = select i1 %i.jo, i64 48, i64 %i.jm
  %i.jp = getelementptr inbounds nuw i8, ptr %i.ja, i64 %.sink6.i90.i
  %i.jq = getelementptr inbounds nuw i8, ptr %i.jp, i64 %.sink5.i91.i ; 2 uses
  store ptr %.sroa.0.0.i83.i, ptr %i.jq, align 8, !tbaa !472
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.jq, i64 8
  store i32 %i.ie, ptr %.sroa.4.0..sroa_idx.i, align 8, !tbaa !562
  %i.jr = load ptr, ptr %10, align 8, !tbaa !471
  %i.js = load i32, ptr %i.bi, align 8, !tbaa !476 ; 2 uses
  %i.jt = load ptr, ptr %11, align 8, !tbaa !475  ; 3 uses
  %i.ju = load ptr, ptr %i.jt, align 8, !tbaa !491 ; 2 uses
  %i.jv = getelementptr inbounds nuw i8, ptr %i.ju, i64 24
  %i.jw = load i32, ptr %i.jv, align 8, !tbaa !501
  %i.jx = icmp eq i32 %i.js, %i.jw
  %.pre324.i = zext i32 %i.js to i64              ; 3 uses
  br i1 %i.jx, label %_ZNK5clang6interp7PtrView5derefINS0_10IntegralAPILb0EEEEERT_v.exit95.i, label %bb.ak

bb.ak:                                            ; preds = %_ZNK5clang6interp7PtrView5derefINS0_10IntegralAPILb0EEEEERT_v.exit.i
  %i.jy = getelementptr inbounds nuw i8, ptr %i.jt, i64 %.pre324.i
  %i.jz = getelementptr inbounds nuw i8, ptr %i.jy, i64 32
  %i.ka = load ptr, ptr %i.jz, align 8, !tbaa !504
  br label %_ZNK5clang6interp7PtrView5derefINS0_10IntegralAPILb0EEEEERT_v.exit95.i

_ZNK5clang6interp7PtrView5derefINS0_10IntegralAPILb0EEEEERT_v.exit95.i: ; preds = %bb.ak, %_ZNK5clang6interp7PtrView5derefINS0_10IntegralAPILb0EEEEERT_v.exit.i
  %.0.i.i.i.i92.i = phi ptr [ %i.ka, %bb.ak ], [ %i.ju, %_ZNK5clang6interp7PtrView5derefINS0_10IntegralAPILb0EEEEERT_v.exit.i ]
  %i.kb = getelementptr inbounds nuw i8, ptr %.0.i.i.i.i92.i, i64 53
  %i.kc = load i8, ptr %i.kb, align 1, !tbaa !571, !range !465, !noundef !31
  %i.kd = trunc nuw i8 %i.kc to i1
  %i.ke = load i64, ptr %i.jl, align 8, !tbaa !480 ; 2 uses
  %i.kf = icmp eq i64 %i.ke, %.pre324.i
  %i.kg = and i1 %i.kf, %i.kd                     ; 2 uses
  %.sink6.i93.i = select i1 %i.kg, i64 %.pre324.i, i64 40
  %.sink5.i94.i = select i1 %i.kg, i64 48, i64 %i.ke
  %i.kh = getelementptr inbounds nuw i8, ptr %i.jt, i64 %.sink6.i93.i
  %i.ki = getelementptr inbounds nuw i8, ptr %i.kh, i64 %.sink5.i94.i ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #16
  %i.kj = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 3 uses
  store i32 %i.ie, ptr %i.kj, align 8, !tbaa !663
  %i.kk = icmp ult i32 %i.ie, 65
  br i1 %i.kk, label %bb.al, label %bb.am

bb.al:                                            ; preds = %_ZNK5clang6interp7PtrView5derefINS0_10IntegralAPILb0EEEEERT_v.exit95.i
  store i64 0, ptr %6, align 8, !tbaa !472
  br label %_ZN4llvm5APIntC2Ejmbb.exit.i96.i

bb.am:                                            ; preds = %_ZNK5clang6interp7PtrView5derefINS0_10IntegralAPILb0EEEEERT_v.exit95.i
  call void @_ZN4llvm5APInt12initSlowCaseEmb(ptr noundef nonnull align 8 dereferenceable(12) %6, i64 noundef 0, i1 noundef zeroext false) #16
  br label %_ZN4llvm5APIntC2Ejmbb.exit.i96.i

_ZN4llvm5APIntC2Ejmbb.exit.i96.i:                 ; preds = %bb.am, %bb.al
  %i.kl = lshr i32 %i.ie, 3
  call void @_ZN4llvm17LoadIntFromMemoryERNS_5APIntEPKhj(ptr noundef nonnull align 8 dereferenceable(12) %6, ptr noundef %i.jr, i32 noundef %i.kl) #16
  %i.km = load i32, ptr %i.kj, align 8, !tbaa !663 ; 2 uses
  %i.kn = icmp ult i32 %i.km, 65
  br i1 %i.kn, label %_ZN5clang6interp10IntegralAPILb0EE4copyERKN4llvm5APIntE.exit.thread.i.i, label %_ZN5clang6interp10IntegralAPILb0EE4copyERKN4llvm5APIntE.exit.i.i

_ZN5clang6interp10IntegralAPILb0EE4copyERKN4llvm5APIntE.exit.thread.i.i: ; preds = %_ZN4llvm5APIntC2Ejmbb.exit.i96.i
  %.0.i.i.i97.i = load i64, ptr %6, align 8, !tbaa !472
  store i64 %.0.i.i.i97.i, ptr %i.ki, align 8, !tbaa !472
  br label %_ZN5clang6interp10IntegralAPILb0EE17bitcastFromMemoryEPKSt4bytejPS2_.exit.i

_ZN5clang6interp10IntegralAPILb0EE4copyERKN4llvm5APIntE.exit.i.i: ; preds = %_ZN4llvm5APIntC2Ejmbb.exit.i96.i
  %i.ko = load ptr, ptr %i.ki, align 8, !tbaa !472
  %i.kp = load ptr, ptr %6, align 8
  %i.kq = zext i32 %i.km to i64
  %i.kr = add nuw nsw i64 %i.kq, 63
  %i.ks = lshr i64 %i.kr, 3
  %i.kt = and i64 %i.ks, 1073741816
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %i.ko, ptr align 8 %i.kp, i64 %i.kt, i1 false)
  %.pr.i.i = load i32, ptr %i.kj, align 8, !tbaa !663
  %i.ku = icmp ugt i32 %.pr.i.i, 64
  br i1 %i.ku, label %bb.an, label %_ZN5clang6interp10IntegralAPILb0EE17bitcastFromMemoryEPKSt4bytejPS2_.exit.i

bb.an:                                            ; preds = %_ZN5clang6interp10IntegralAPILb0EE4copyERKN4llvm5APIntE.exit.i.i
  %i.kv = load ptr, ptr %6, align 8, !tbaa !472   ; 2 uses
  %i.kw = icmp eq ptr %i.kv, null
  br i1 %i.kw, label %_ZN5clang6interp10IntegralAPILb0EE17bitcastFromMemoryEPKSt4bytejPS2_.exit.i, label %bb.ao

bb.ao:                                            ; preds = %bb.an
  call void @_ZdaPv(ptr noundef nonnull %i.kv) #18
  br label %_ZN5clang6interp10IntegralAPILb0EE17bitcastFromMemoryEPKSt4bytejPS2_.exit.i

_ZN5clang6interp10IntegralAPILb0EE17bitcastFromMemoryEPKSt4bytejPS2_.exit.i: ; preds = %bb.ao, %bb.an, %_ZN5clang6interp10IntegralAPILb0EE4copyERKN4llvm5APIntE.exit.i.i, %_ZN5clang6interp10IntegralAPILb0EE4copyERKN4llvm5APIntE.exit.thread.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #16
  br label %bb.cj

bb.ap:                                            ; preds = %bb.s
  %.not314.i = icmp eq i64 %.sroa.0268.0.i, 0
  br i1 %.not314.i, label %bb.at, label %bb.aq

bb.aq:                                            ; preds = %bb.ap
  %i.kx = load ptr, ptr %10, align 8, !tbaa !471
  %.0.copyload.i.i = load i8, ptr %i.kx, align 1  ; 2 uses
  %i.ky = trunc i64 %.sroa.0268.0.i to i32        ; 3 uses
  %i.kz = icmp ugt i32 %i.ky, 7
  br i1 %i.kz, label %_ZNK5clang6interp4CharILb1EE8truncateEj.exit.i, label %bb.ar

bb.ar:                                            ; preds = %bb.aq
  %notmask.i.i = shl nsw i32 -1, %i.ky            ; 2 uses
  %i.la = xor i32 %notmask.i.i, -1
  %i.lb = zext i8 %.0.copyload.i.i to i32         ; 2 uses
  %i.lc = and i32 %i.lb, %i.la
  %sext.i.i = shl nuw nsw i32 8388608, %i.ky
  %i.ld = lshr exact i32 %sext.i.i, 24
  %i.le = and i32 %i.ld, %i.lb
  %.not.i98.i = icmp eq i32 %i.le, 0
  %i.lf = select i1 %.not.i98.i, i32 0, i32 %notmask.i.i
  %i.lg = or i32 %i.lf, %i.lc
  %i.lh = trunc i32 %i.lg to i8
  br label %_ZNK5clang6interp4CharILb1EE8truncateEj.exit.i

_ZNK5clang6interp4CharILb1EE8truncateEj.exit.i:   ; preds = %bb.ar, %bb.aq
  %.sroa.0.0.i99.i = phi i8 [ %i.lh, %bb.ar ], [ %.0.copyload.i.i, %bb.aq ]
  %i.li = load i32, ptr %i.bi, align 8, !tbaa !476 ; 2 uses
  %i.lj = load ptr, ptr %11, align 8, !tbaa !475  ; 3 uses
  %i.lk = load ptr, ptr %i.lj, align 8, !tbaa !491 ; 2 uses
  %i.ll = getelementptr inbounds nuw i8, ptr %i.lk, i64 24
  %i.lm = load i32, ptr %i.ll, align 8, !tbaa !501
  %i.ln = icmp eq i32 %i.li, %i.lm
  %.pre328.i = zext i32 %i.li to i64              ; 3 uses
  br i1 %i.ln, label %_ZNK5clang6interp7PtrView5derefINS0_4CharILb1EEEEERT_v.exit.i, label %bb.as

bb.as:                                            ; preds = %_ZNK5clang6interp4CharILb1EE8truncateEj.exit.i
  %i.lo = getelementptr inbounds nuw i8, ptr %i.lj, i64 %.pre328.i
  %i.lp = getelementptr inbounds nuw i8, ptr %i.lo, i64 32
  %i.lq = load ptr, ptr %i.lp, align 8, !tbaa !504
  br label %_ZNK5clang6interp7PtrView5derefINS0_4CharILb1EEEEERT_v.exit.i

_ZNK5clang6interp7PtrView5derefINS0_4CharILb1EEEEERT_v.exit.i: ; preds = %bb.as, %_ZNK5clang6interp4CharILb1EE8truncateEj.exit.i
  %.0.i.i.i.i100.i = phi ptr [ %i.lq, %bb.as ], [ %i.lk, %_ZNK5clang6interp4CharILb1EE8truncateEj.exit.i ]
  %i.lr = getelementptr inbounds nuw i8, ptr %.0.i.i.i.i100.i, i64 53
  %i.ls = load i8, ptr %i.lr, align 1, !tbaa !571, !range !465, !noundef !31
  %i.lt = trunc nuw i8 %i.ls to i1
  %i.lu = getelementptr inbounds nuw i8, ptr %11, i64 16
  %i.lv = load i64, ptr %i.lu, align 8, !tbaa !480 ; 2 uses
  %i.lw = icmp eq i64 %i.lv, %.pre328.i
  %i.lx = and i1 %i.lw, %i.lt                     ; 2 uses
  %.sink6.i101.i = select i1 %i.lx, i64 %.pre328.i, i64 40
  %.sink5.i102.i = select i1 %i.lx, i64 48, i64 %i.lv
  %i.ly = getelementptr inbounds nuw i8, ptr %i.lj, i64 %.sink6.i101.i
  %i.lz = getelementptr inbounds nuw i8, ptr %i.ly, i64 %.sink5.i102.i
  store i8 %.sroa.0.0.i99.i, ptr %i.lz, align 1, !tbaa !472
  br label %bb.cj

bb.at:                                            ; preds = %bb.ap
  %i.ma = load i32, ptr %i.bi, align 8, !tbaa !476 ; 2 uses
  %i.mb = load ptr, ptr %11, align 8, !tbaa !475  ; 3 uses
  %i.mc = load ptr, ptr %i.mb, align 8, !tbaa !491 ; 2 uses
  %i.md = getelementptr inbounds nuw i8, ptr %i.mc, i64 24
  %i.me = load i32, ptr %i.md, align 8, !tbaa !501
  %i.mf = icmp eq i32 %i.ma, %i.me
  %.pre326.i = zext i32 %i.ma to i64              ; 3 uses
  br i1 %i.mf, label %_ZNK5clang6interp7PtrView5derefINS0_4CharILb1EEEEERT_v.exit106.i, label %bb.au

bb.au:                                            ; preds = %bb.at
  %i.mg = getelementptr inbounds nuw i8, ptr %i.mb, i64 %.pre326.i
  %i.mh = getelementptr inbounds nuw i8, ptr %i.mg, i64 32
  %i.mi = load ptr, ptr %i.mh, align 8, !tbaa !504
  br label %_ZNK5clang6interp7PtrView5derefINS0_4CharILb1EEEEERT_v.exit106.i

_ZNK5clang6interp7PtrView5derefINS0_4CharILb1EEEEERT_v.exit106.i: ; preds = %bb.au, %bb.at
  %.0.i.i.i.i103.i = phi ptr [ %i.mi, %bb.au ], [ %i.mc, %bb.at ]
  %i.mj = getelementptr inbounds nuw i8, ptr %.0.i.i.i.i103.i, i64 53
  %i.mk = load i8, ptr %i.mj, align 1, !tbaa !571, !range !465, !noundef !31
  %i.ml = trunc nuw i8 %i.mk to i1
  %i.mm = getelementptr inbounds nuw i8, ptr %11, i64 16
  %i.mn = load i64, ptr %i.mm, align 8, !tbaa !480 ; 2 uses
  %i.mo = icmp eq i64 %i.mn, %.pre326.i
  %i.mp = and i1 %i.mo, %i.ml                     ; 2 uses
  %.sink6.i104.i = select i1 %i.mp, i64 %.pre326.i, i64 40
  %.sink5.i105.i = select i1 %i.mp, i64 48, i64 %i.mn
  %i.mq = getelementptr inbounds nuw i8, ptr %i.mb, i64 %.sink6.i104.i
  %i.mr = getelementptr inbounds nuw i8, ptr %i.mq, i64 %.sink5.i105.i
  store i8 0, ptr %i.mr, align 1, !tbaa !472
  br label %bb.cj

bb.av:                                            ; preds = %bb.s
  %.not313.i = icmp eq i64 %.sroa.0268.0.i, 0
  br i1 %.not313.i, label %bb.ax, label %_ZNK5clang6interp4CharILb0EE8truncateEj.exit.i

_ZNK5clang6interp4CharILb0EE8truncateEj.exit.i:   ; preds = %bb.av
  %i.ms = load ptr, ptr %10, align 8, !tbaa !471
  %.0.copyload.i107.i = load i8, ptr %i.ms, align 1
  %i.mt = trunc i64 %.sroa.0268.0.i to i32        ; 2 uses
  %i.mu = icmp ugt i32 %i.mt, 7
  %notmask.i108.i = shl nsw i32 -1, %i.mt
  %i.mv = trunc nsw i32 %notmask.i108.i to i8
  %i.mw = xor i8 %i.mv, -1
  %i.mx = select i1 %i.mu, i8 -1, i8 %i.mw
  %.sroa.0.0.i109.i = and i8 %.0.copyload.i107.i, %i.mx
  %i.my = load i32, ptr %i.bi, align 8, !tbaa !476 ; 2 uses
  %i.mz = load ptr, ptr %11, align 8, !tbaa !475  ; 3 uses
  %i.na = load ptr, ptr %i.mz, align 8, !tbaa !491 ; 2 uses
  %i.nb = getelementptr inbounds nuw i8, ptr %i.na, i64 24
  %i.nc = load i32, ptr %i.nb, align 8, !tbaa !501
  %i.nd = icmp eq i32 %i.my, %i.nc
  %.pre332.i = zext i32 %i.my to i64              ; 3 uses
  br i1 %i.nd, label %_ZNK5clang6interp7PtrView5derefINS0_4CharILb0EEEEERT_v.exit.i, label %bb.aw

bb.aw:                                            ; preds = %_ZNK5clang6interp4CharILb0EE8truncateEj.exit.i
  %i.ne = getelementptr inbounds nuw i8, ptr %i.mz, i64 %.pre332.i
  %i.nf = getelementptr inbounds nuw i8, ptr %i.ne, i64 32
  %i.ng = load ptr, ptr %i.nf, align 8, !tbaa !504
  br label %_ZNK5clang6interp7PtrView5derefINS0_4CharILb0EEEEERT_v.exit.i

_ZNK5clang6interp7PtrView5derefINS0_4CharILb0EEEEERT_v.exit.i: ; preds = %bb.aw, %_ZNK5clang6interp4CharILb0EE8truncateEj.exit.i
  %.0.i.i.i.i110.i = phi ptr [ %i.ng, %bb.aw ], [ %i.na, %_ZNK5clang6interp4CharILb0EE8truncateEj.exit.i ]
  %i.nh = getelementptr inbounds nuw i8, ptr %.0.i.i.i.i110.i, i64 53
  %i.ni = load i8, ptr %i.nh, align 1, !tbaa !571, !range !465, !noundef !31
  %i.nj = trunc nuw i8 %i.ni to i1
  %i.nk = getelementptr inbounds nuw i8, ptr %11, i64 16
  %i.nl = load i64, ptr %i.nk, align 8, !tbaa !480 ; 2 uses
  %i.nm = icmp eq i64 %i.nl, %.pre332.i
  %i.nn = and i1 %i.nm, %i.nj                     ; 2 uses
  %.sink6.i111.i = select i1 %i.nn, i64 %.pre332.i, i64 40
  %.sink5.i112.i = select i1 %i.nn, i64 48, i64 %i.nl
  %i.no = getelementptr inbounds nuw i8, ptr %i.mz, i64 %.sink6.i111.i
  %i.np = getelementptr inbounds nuw i8, ptr %i.no, i64 %.sink5.i112.i
  store i8 %.sroa.0.0.i109.i, ptr %i.np, align 1, !tbaa !472
  br label %bb.cj

bb.ax:                                            ; preds = %bb.av
  %i.nq = load i32, ptr %i.bi, align 8, !tbaa !476 ; 2 uses
  %i.nr = load ptr, ptr %11, align 8, !tbaa !475  ; 3 uses
  %i.ns = load ptr, ptr %i.nr, align 8, !tbaa !491 ; 2 uses
  %i.nt = getelementptr inbounds nuw i8, ptr %i.ns, i64 24
  %i.nu = load i32, ptr %i.nt, align 8, !tbaa !501
  %i.nv = icmp eq i32 %i.nq, %i.nu
  %.pre330.i = zext i32 %i.nq to i64              ; 3 uses
  br i1 %i.nv, label %_ZNK5clang6interp7PtrView5derefINS0_4CharILb0EEEEERT_v.exit116.i, label %bb.ay

bb.ay:                                            ; preds = %bb.ax
  %i.nw = getelementptr inbounds nuw i8, ptr %i.nr, i64 %.pre330.i
  %i.nx = getelementptr inbounds nuw i8, ptr %i.nw, i64 32
  %i.ny = load ptr, ptr %i.nx, align 8, !tbaa !504
  br label %_ZNK5clang6interp7PtrView5derefINS0_4CharILb0EEEEERT_v.exit116.i

_ZNK5clang6interp7PtrView5derefINS0_4CharILb0EEEEERT_v.exit116.i: ; preds = %bb.ay, %bb.ax
  %.0.i.i.i.i113.i = phi ptr [ %i.ny, %bb.ay ], [ %i.ns, %bb.ax ]
  %i.nz = getelementptr inbounds nuw i8, ptr %.0.i.i.i.i113.i, i64 53
  %i.oa = load i8, ptr %i.nz, align 1, !tbaa !571, !range !465, !noundef !31
  %i.ob = trunc nuw i8 %i.oa to i1
  %i.oc = getelementptr inbounds nuw i8, ptr %11, i64 16
  %i.od = load i64, ptr %i.oc, align 8, !tbaa !480 ; 2 uses
  %i.oe = icmp eq i64 %i.od, %.pre330.i
  %i.of = and i1 %i.oe, %i.ob                     ; 2 uses
  %.sink6.i114.i = select i1 %i.of, i64 %.pre330.i, i64 40
  %.sink5.i115.i = select i1 %i.of, i64 48, i64 %i.od
  %i.og = getelementptr inbounds nuw i8, ptr %i.nr, i64 %.sink6.i114.i
  %i.oh = getelementptr inbounds nuw i8, ptr %i.og, i64 %.sink5.i115.i
  store i8 0, ptr %i.oh, align 1, !tbaa !472
  br label %bb.cj

bb.az:                                            ; preds = %bb.s
  %.not312.i = icmp eq i64 %.sroa.0268.0.i, 0
  br i1 %.not312.i, label %bb.bd, label %bb.ba

bb.ba:                                            ; preds = %bb.az
  %i.oi = load ptr, ptr %10, align 8, !tbaa !471
  %.0.copyload.i117.i = load i16, ptr %i.oi, align 1, !noalias !847 ; 2 uses
  %i.oj = trunc i64 %.sroa.0268.0.i to i32        ; 3 uses
  %i.ok = icmp ugt i32 %i.oj, 15
  br i1 %i.ok, label %_ZNK5clang6interp8IntegralILj16ELb1EE8truncateEj.exit.i, label %bb.bb

bb.bb:                                            ; preds = %bb.ba
  %notmask.i118.i = shl nsw i32 -1, %i.oj         ; 2 uses
  %i.ol = xor i32 %notmask.i118.i, -1
  %i.om = zext i16 %.0.copyload.i117.i to i32     ; 2 uses
  %i.on = and i32 %i.om, %i.ol
  %sext.i119.i = shl nuw nsw i32 32768, %i.oj
  %i.oo = lshr exact i32 %sext.i119.i, 16
  %i.op = and i32 %i.oo, %i.om
  %.not.i120.i = icmp eq i32 %i.op, 0
  %i.oq = select i1 %.not.i120.i, i32 0, i32 %notmask.i118.i
  %i.or = or i32 %i.oq, %i.on
  %i.os = trunc i32 %i.or to i16
  br label %_ZNK5clang6interp8IntegralILj16ELb1EE8truncateEj.exit.i

_ZNK5clang6interp8IntegralILj16ELb1EE8truncateEj.exit.i: ; preds = %bb.bb, %bb.ba
  %.sroa.6252.0.i = phi i16 [ %i.os, %bb.bb ], [ %.0.copyload.i117.i, %bb.ba ]
  %i.ot = load i32, ptr %i.bi, align 8, !tbaa !476 ; 2 uses
  %i.ou = load ptr, ptr %11, align 8, !tbaa !475  ; 3 uses
  %i.ov = load ptr, ptr %i.ou, align 8, !tbaa !491 ; 2 uses
  %i.ow = getelementptr inbounds nuw i8, ptr %i.ov, i64 24
  %i.ox = load i32, ptr %i.ow, align 8, !tbaa !501
  %i.oy = icmp eq i32 %i.ot, %i.ox
  %.pre336.i = zext i32 %i.ot to i64              ; 3 uses
  br i1 %i.oy, label %_ZNK5clang6interp7PtrView5derefINS0_8IntegralILj16ELb1EEEEERT_v.exit.i, label %bb.bc

bb.bc:                                            ; preds = %_ZNK5clang6interp8IntegralILj16ELb1EE8truncateEj.exit.i
  %i.oz = getelementptr inbounds nuw i8, ptr %i.ou, i64 %.pre336.i
  %i.pa = getelementptr inbounds nuw i8, ptr %i.oz, i64 32
  %i.pb = load ptr, ptr %i.pa, align 8, !tbaa !504
  br label %_ZNK5clang6interp7PtrView5derefINS0_8IntegralILj16ELb1EEEEERT_v.exit.i

_ZNK5clang6interp7PtrView5derefINS0_8IntegralILj16ELb1EEEEERT_v.exit.i: ; preds = %bb.bc, %_ZNK5clang6interp8IntegralILj16ELb1EE8truncateEj.exit.i
  %.0.i.i.i.i121.i = phi ptr [ %i.pb, %bb.bc ], [ %i.ov, %_ZNK5clang6interp8IntegralILj16ELb1EE8truncateEj.exit.i ]
  %i.pc = getelementptr inbounds nuw i8, ptr %.0.i.i.i.i121.i, i64 53
  %i.pd = load i8, ptr %i.pc, align 1, !tbaa !571, !range !465, !noundef !31
  %i.pe = trunc nuw i8 %i.pd to i1
  %i.pf = getelementptr inbounds nuw i8, ptr %11, i64 16
  %i.pg = load i64, ptr %i.pf, align 8, !tbaa !480 ; 2 uses
  %i.ph = icmp eq i64 %i.pg, %.pre336.i
  %i.pi = and i1 %i.ph, %i.pe                     ; 2 uses
  %.sink6.i122.i = select i1 %i.pi, i64 %.pre336.i, i64 40
  %.sink5.i123.i = select i1 %i.pi, i64 48, i64 %i.pg
  %i.pj = getelementptr inbounds nuw i8, ptr %i.ou, i64 %.sink6.i122.i
  %i.pk = getelementptr inbounds nuw i8, ptr %i.pj, i64 %.sink5.i123.i ; 2 uses
  store i8 0, ptr %i.pk, align 8, !tbaa !661
  %.sroa.6252.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.pk, i64 8
  store i16 %.sroa.6252.0.i, ptr %.sroa.6252.0..sroa_idx.i, align 8
  br label %bb.cj

bb.bd:                                            ; preds = %bb.az
  %i.pl = load i32, ptr %i.bi, align 8, !tbaa !476 ; 2 uses
  %i.pm = load ptr, ptr %11, align 8, !tbaa !475  ; 3 uses
  %i.pn = load ptr, ptr %i.pm, align 8, !tbaa !491 ; 2 uses
  %i.po = getelementptr inbounds nuw i8, ptr %i.pn, i64 24
  %i.pp = load i32, ptr %i.po, align 8, !tbaa !501
  %i.pq = icmp eq i32 %i.pl, %i.pp
  %.pre334.i = zext i32 %i.pl to i64              ; 3 uses
  br i1 %i.pq, label %_ZNK5clang6interp7PtrView5derefINS0_8IntegralILj16ELb1EEEEERT_v.exit127.i, label %bb.be

bb.be:                                            ; preds = %bb.bd
  %i.pr = getelementptr inbounds nuw i8, ptr %i.pm, i64 %.pre334.i
  %i.ps = getelementptr inbounds nuw i8, ptr %i.pr, i64 32
  %i.pt = load ptr, ptr %i.ps, align 8, !tbaa !504
  br label %_ZNK5clang6interp7PtrView5derefINS0_8IntegralILj16ELb1EEEEERT_v.exit127.i

_ZNK5clang6interp7PtrView5derefINS0_8IntegralILj16ELb1EEEEERT_v.exit127.i: ; preds = %bb.be, %bb.bd
  %.0.i.i.i.i124.i = phi ptr [ %i.pt, %bb.be ], [ %i.pn, %bb.bd ]
  %i.pu = getelementptr inbounds nuw i8, ptr %.0.i.i.i.i124.i, i64 53
  %i.pv = load i8, ptr %i.pu, align 1, !tbaa !571, !range !465, !noundef !31
  %i.pw = trunc nuw i8 %i.pv to i1
  %i.px = getelementptr inbounds nuw i8, ptr %11, i64 16
  %i.py = load i64, ptr %i.px, align 8, !tbaa !480 ; 2 uses
  %i.pz = icmp eq i64 %i.py, %.pre334.i
  %i.qa = and i1 %i.pz, %i.pw                     ; 2 uses
  %.sink6.i125.i = select i1 %i.qa, i64 %.pre334.i, i64 40
  %.sink5.i126.i = select i1 %i.qa, i64 48, i64 %i.py
  %i.qb = getelementptr inbounds nuw i8, ptr %i.pm, i64 %.sink6.i125.i
  %i.qc = getelementptr inbounds nuw i8, ptr %i.qb, i64 %.sink5.i126.i ; 2 uses
  store i8 0, ptr %i.qc, align 8, !tbaa !661
  %.sroa.4244.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.qc, i64 8
  store i16 0, ptr %.sroa.4244.0..sroa_idx.i, align 8
  br label %bb.cj

bb.bf:                                            ; preds = %bb.s
  %.not311.i = icmp eq i64 %.sroa.0268.0.i, 0
  br i1 %.not311.i, label %bb.bh, label %_ZNK5clang6interp8IntegralILj16ELb0EE8truncateEj.exit.i

_ZNK5clang6interp8IntegralILj16ELb0EE8truncateEj.exit.i: ; preds = %bb.bf
  %i.qd = load ptr, ptr %10, align 8, !tbaa !471
  %.0.copyload.i128.i = load i16, ptr %i.qd, align 1, !noalias !848
  %i.qe = trunc i64 %.sroa.0268.0.i to i32        ; 2 uses
  %i.qf = icmp ugt i32 %i.qe, 15
  %notmask.i129.i = shl nsw i32 -1, %i.qe
  %i.qg = trunc nsw i32 %notmask.i129.i to i16
  %i.qh = xor i16 %i.qg, -1
  %i.qi = select i1 %i.qf, i16 -1, i16 %i.qh
  %.sroa.6240.0.i = and i16 %.0.copyload.i128.i, %i.qi
  %i.qj = load i32, ptr %i.bi, align 8, !tbaa !476 ; 2 uses
  %i.qk = load ptr, ptr %11, align 8, !tbaa !475  ; 3 uses
  %i.ql = load ptr, ptr %i.qk, align 8, !tbaa !491 ; 2 uses
  %i.qm = getelementptr inbounds nuw i8, ptr %i.ql, i64 24
  %i.qn = load i32, ptr %i.qm, align 8, !tbaa !501
  %i.qo = icmp eq i32 %i.qj, %i.qn
  %.pre340.i = zext i32 %i.qj to i64              ; 3 uses
  br i1 %i.qo, label %_ZNK5clang6interp7PtrView5derefINS0_8IntegralILj16ELb0EEEEERT_v.exit.i, label %bb.bg

bb.bg:                                            ; preds = %_ZNK5clang6interp8IntegralILj16ELb0EE8truncateEj.exit.i
  %i.qp = getelementptr inbounds nuw i8, ptr %i.qk, i64 %.pre340.i
  %i.qq = getelementptr inbounds nuw i8, ptr %i.qp, i64 32
  %i.qr = load ptr, ptr %i.qq, align 8, !tbaa !504
  br label %_ZNK5clang6interp7PtrView5derefINS0_8IntegralILj16ELb0EEEEERT_v.exit.i

_ZNK5clang6interp7PtrView5derefINS0_8IntegralILj16ELb0EEEEERT_v.exit.i: ; preds = %bb.bg, %_ZNK5clang6interp8IntegralILj16ELb0EE8truncateEj.exit.i
  %.0.i.i.i.i130.i = phi ptr [ %i.qr, %bb.bg ], [ %i.ql, %_ZNK5clang6interp8IntegralILj16ELb0EE8truncateEj.exit.i ]
  %i.qs = getelementptr inbounds nuw i8, ptr %.0.i.i.i.i130.i, i64 53
  %i.qt = load i8, ptr %i.qs, align 1, !tbaa !571, !range !465, !noundef !31
  %i.qu = trunc nuw i8 %i.qt to i1
  %i.qv = getelementptr inbounds nuw i8, ptr %11, i64 16
  %i.qw = load i64, ptr %i.qv, align 8, !tbaa !480 ; 2 uses
  %i.qx = icmp eq i64 %i.qw, %.pre340.i
  %i.qy = and i1 %i.qx, %i.qu                     ; 2 uses
  %.sink6.i131.i = select i1 %i.qy, i64 %.pre340.i, i64 40
  %.sink5.i132.i = select i1 %i.qy, i64 48, i64 %i.qw
  %i.qz = getelementptr inbounds nuw i8, ptr %i.qk, i64 %.sink6.i131.i
  %i.ra = getelementptr inbounds nuw i8, ptr %i.qz, i64 %.sink5.i132.i ; 2 uses
  store i8 0, ptr %i.ra, align 8, !tbaa !661
  %.sroa.6240.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ra, i64 8
  store i16 %.sroa.6240.0.i, ptr %.sroa.6240.0..sroa_idx.i, align 8
  br label %bb.cj

bb.bh:                                            ; preds = %bb.bf
  %i.rb = load i32, ptr %i.bi, align 8, !tbaa !476 ; 2 uses
  %i.rc = load ptr, ptr %11, align 8, !tbaa !475  ; 3 uses
  %i.rd = load ptr, ptr %i.rc, align 8, !tbaa !491 ; 2 uses
  %i.re = getelementptr inbounds nuw i8, ptr %i.rd, i64 24
  %i.rf = load i32, ptr %i.re, align 8, !tbaa !501
  %i.rg = icmp eq i32 %i.rb, %i.rf
  %.pre338.i = zext i32 %i.rb to i64              ; 3 uses
  br i1 %i.rg, label %_ZNK5clang6interp7PtrView5derefINS0_8IntegralILj16ELb0EEEEERT_v.exit136.i, label %bb.bi

bb.bi:                                            ; preds = %bb.bh
  %i.rh = getelementptr inbounds nuw i8, ptr %i.rc, i64 %.pre338.i
  %i.ri = getelementptr inbounds nuw i8, ptr %i.rh, i64 32
  %i.rj = load ptr, ptr %i.ri, align 8, !tbaa !504
  br label %_ZNK5clang6interp7PtrView5derefINS0_8IntegralILj16ELb0EEEEERT_v.exit136.i

_ZNK5clang6interp7PtrView5derefINS0_8IntegralILj16ELb0EEEEERT_v.exit136.i: ; preds = %bb.bi, %bb.bh
  %.0.i.i.i.i133.i = phi ptr [ %i.rj, %bb.bi ], [ %i.rd, %bb.bh ]
  %i.rk = getelementptr inbounds nuw i8, ptr %.0.i.i.i.i133.i, i64 53
  %i.rl = load i8, ptr %i.rk, align 1, !tbaa !571, !range !465, !noundef !31
  %i.rm = trunc nuw i8 %i.rl to i1
  %i.rn = getelementptr inbounds nuw i8, ptr %11, i64 16
  %i.ro = load i64, ptr %i.rn, align 8, !tbaa !480 ; 2 uses
  %i.rp = icmp eq i64 %i.ro, %.pre338.i
  %i.rq = and i1 %i.rp, %i.rm                     ; 2 uses
  %.sink6.i134.i = select i1 %i.rq, i64 %.pre338.i, i64 40
  %.sink5.i135.i = select i1 %i.rq, i64 48, i64 %i.ro
  %i.rr = getelementptr inbounds nuw i8, ptr %i.rc, i64 %.sink6.i134.i
  %i.rs = getelementptr inbounds nuw i8, ptr %i.rr, i64 %.sink5.i135.i ; 2 uses
  store i8 0, ptr %i.rs, align 8, !tbaa !661
  %.sroa.4232.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.rs, i64 8
  store i16 0, ptr %.sroa.4232.0..sroa_idx.i, align 8
  br label %bb.cj

bb.bj:                                            ; preds = %bb.s
  %.not310.i = icmp eq i64 %.sroa.0268.0.i, 0
  br i1 %.not310.i, label %bb.bn, label %bb.bk

bb.bk:                                            ; preds = %bb.bj
  %i.rt = load ptr, ptr %10, align 8, !tbaa !471
  %.0.copyload.i137.i = load i32, ptr %i.rt, align 1, !noalias !849 ; 3 uses
  %i.ru = trunc i64 %.sroa.0268.0.i to i32        ; 3 uses
  %i.rv = icmp ugt i32 %i.ru, 31
  br i1 %i.rv, label %_ZNK5clang6interp8IntegralILj32ELb1EE8truncateEj.exit.i, label %bb.bl

bb.bl:                                            ; preds = %bb.bk
  %notmask.i138.i = shl nsw i32 -1, %i.ru         ; 2 uses
  %i.rw = xor i32 %notmask.i138.i, -1
  %i.rx = add nsw i32 %i.ru, -1
  %i.ry = shl nuw nsw i32 1, %i.rx
  %i.rz = and i32 %.0.copyload.i137.i, %i.rw
  %i.sa = and i32 %.0.copyload.i137.i, %i.ry
  %.not.i139.i = icmp eq i32 %i.sa, 0
  %i.sb = select i1 %.not.i139.i, i32 0, i32 %notmask.i138.i
  %i.sc = or i32 %i.sb, %i.rz
  br label %_ZNK5clang6interp8IntegralILj32ELb1EE8truncateEj.exit.i

_ZNK5clang6interp8IntegralILj32ELb1EE8truncateEj.exit.i: ; preds = %bb.bl, %bb.bk
  %.sroa.6228.0.i = phi i32 [ %i.sc, %bb.bl ], [ %.0.copyload.i137.i, %bb.bk ]
  %i.sd = load i32, ptr %i.bi, align 8, !tbaa !476 ; 2 uses
  %i.se = load ptr, ptr %11, align 8, !tbaa !475  ; 3 uses
  %i.sf = load ptr, ptr %i.se, align 8, !tbaa !491 ; 2 uses
  %i.sg = getelementptr inbounds nuw i8, ptr %i.sf, i64 24
  %i.sh = load i32, ptr %i.sg, align 8, !tbaa !501
  %i.si = icmp eq i32 %i.sd, %i.sh
  %.pre344.i = zext i32 %i.sd to i64              ; 3 uses
  br i1 %i.si, label %_ZNK5clang6interp7PtrView5derefINS0_8IntegralILj32ELb1EEEEERT_v.exit.i, label %bb.bm

bb.bm:                                            ; preds = %_ZNK5clang6interp8IntegralILj32ELb1EE8truncateEj.exit.i
  %i.sj = getelementptr inbounds nuw i8, ptr %i.se, i64 %.pre344.i
  %i.sk = getelementptr inbounds nuw i8, ptr %i.sj, i64 32
  %i.sl = load ptr, ptr %i.sk, align 8, !tbaa !504
  br label %_ZNK5clang6interp7PtrView5derefINS0_8IntegralILj32ELb1EEEEERT_v.exit.i

_ZNK5clang6interp7PtrView5derefINS0_8IntegralILj32ELb1EEEEERT_v.exit.i: ; preds = %bb.bm, %_ZNK5clang6interp8IntegralILj32ELb1EE8truncateEj.exit.i
  %.0.i.i.i.i140.i = phi ptr [ %i.sl, %bb.bm ], [ %i.sf, %_ZNK5clang6interp8IntegralILj32ELb1EE8truncateEj.exit.i ]
  %i.sm = getelementptr inbounds nuw i8, ptr %.0.i.i.i.i140.i, i64 53
end_hunk_0

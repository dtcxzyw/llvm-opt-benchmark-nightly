Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/cpython/original/unicode_format?download=true
inline.NumInlined: 83
inline.NumDeleted: 26
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0_@PyUnicode_Format:bb.a
  store <4 x i32> %broadcast.splat761, ptr %next.gep764, align 4, !tbaa !10
  store <4 x i32> %broadcast.splat761, ptr %i.zi, align 4, !tbaa !10
  %index.next765 = add nuw i64 %index763, 8       ; 2 uses
  %i.zj = icmp eq i64 %index.next765, %n.vec759
  br i1 %i.zj, label %middle.block766, label %vector.body762, !llvm.loop !69

middle.block766:                                  ; preds = %vector.body762
  %cmp.n767 = icmp eq i64 %i.ze, %n.vec759
  br i1 %cmp.n767, label %_PyUnicode_Fill.exit.i.i, label %.lr.ph.i.i.i.preheader777

.lr.ph.i.i.i.preheader777:                        ; preds = %.lr.ph.i.i.i.preheader, %middle.block766
  %.028.i.i.i.ph = phi ptr [ %i.yo, %.lr.ph.i.i.i.preheader ], [ %i.zg, %middle.block766 ]
  br label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %.lr.ph.i.i.i.preheader777, %.lr.ph.i.i.i
  %.028.i.i.i = phi ptr [ %i.zk, %.lr.ph.i.i.i ], [ %.028.i.i.i.ph, %.lr.ph.i.i.i.preheader777 ] ; 2 uses
  store i32 %.0160.i.i, ptr %.028.i.i.i, align 4, !tbaa !10
  %i.zk = getelementptr i8, ptr %.028.i.i.i, i64 4 ; 2 uses
  %i.zl = icmp ult ptr %i.zk, %i.yp
  br i1 %i.zl, label %.lr.ph.i.i.i, label %_PyUnicode_Fill.exit.i.i, !llvm.loop !70

bb.ja:                                            ; preds = %bb.iw
  unreachable

_PyUnicode_Fill.exit.i.i:                         ; preds = %.lr.ph.i.i.i, %.lr.ph30.i.i.i, %middle.block766, %middle.block737, %vec.epilog.middle.block753, %bb.iz, %bb.iy, %bb.ix
  %i.zm = phi i64 [ %i.xi, %middle.block737 ], [ %i.xi, %bb.iz ], [ %.pre233.i.i, %bb.ix ], [ %i.xi, %bb.iy ], [ %i.xi, %middle.block766 ], [ %i.xi, %vec.epilog.middle.block753 ], [ %i.xi, %.lr.ph30.i.i.i ], [ %i.xi, %.lr.ph.i.i.i ]
  %i.zn = add i64 %i.zm, %i.xe
  store i64 %i.zn, ptr %i.ax, align 8, !tbaa !44
  store i64 %.3170.i.i, ptr %i.ap, align 8, !tbaa !86
  br label %bb.jb

bb.jb:                                            ; preds = %_PyUnicode_Fill.exit.i.i, %bb.iv
  %i.zo = phi i64 [ %.3170.i.i, %_PyUnicode_Fill.exit.i.i ], [ %i.xc, %bb.iv ] ; 4 uses
  br i1 %.not196.i34.i, label %bb.jc, label %bb.jq

bb.jc:                                            ; preds = %bb.jb
  %.not200.i.i = icmp eq i32 %i.ur, 0
  br i1 %.not200.i.i, label %bb.jh, label %bb.jd

bb.jd:                                            ; preds = %bb.jc
  %i.zp = load i32, ptr %i.ay, align 8, !tbaa !45
  %i.zq = load ptr, ptr %i.az, align 8, !tbaa !46 ; 3 uses
  %i.zr = load i64, ptr %i.ax, align 8, !tbaa !44 ; 5 uses
  switch i32 %i.zp, label %bb.jg [
    i32 1, label %bb.je
    i32 2, label %bb.jf
  ]

bb.je:                                            ; preds = %bb.jd
  %i.zs = trunc nuw nsw i32 %.1164.i.i to i8
  %i.zt = getelementptr i8, ptr %i.zq, i64 %i.zr
  store i8 %i.zs, ptr %i.zt, align 1, !tbaa !14
  %.pre234.i.i = load i64, ptr %i.ax, align 8, !tbaa !44
  br label %PyUnicode_WRITE.exit214.i.i

bb.jf:                                            ; preds = %bb.jd
  %i.zu = trunc nuw nsw i32 %.1164.i.i to i16
  %i.zv = getelementptr [2 x i8], ptr %i.zq, i64 %i.zr
  store i16 %i.zu, ptr %i.zv, align 2, !tbaa !39
  br label %PyUnicode_WRITE.exit214.i.i

bb.jg:                                            ; preds = %bb.jd
  %i.zw = getelementptr [4 x i8], ptr %i.zq, i64 %i.zr
  store i32 %.1164.i.i, ptr %i.zw, align 4, !tbaa !10
  br label %PyUnicode_WRITE.exit214.i.i

PyUnicode_WRITE.exit214.i.i:                      ; preds = %bb.jg, %bb.jf, %bb.je
  %i.zx = phi i64 [ %.pre234.i.i, %bb.je ], [ %i.zr, %bb.jf ], [ %i.zr, %bb.jg ]
  %i.zy = add i64 %i.zx, 1
  store i64 %i.zy, ptr %i.ax, align 8, !tbaa !44
  br label %bb.jh

bb.jh:                                            ; preds = %PyUnicode_WRITE.exit214.i.i, %bb.jc
  br i1 %.not197.i53.i, label %bb.jq, label %bb.ji

bb.ji:                                            ; preds = %bb.jh
  switch i32 %.0.i69.i, label %bb.jq [
    i32 120, label %bb.jj
    i32 88, label %bb.jj
    i32 111, label %bb.jj
  ]

bb.jj:                                            ; preds = %bb.ji, %bb.ji, %bb.ji
  %i.zz = load i32, ptr %i.ay, align 8, !tbaa !45
  %i.aaa = load ptr, ptr %i.az, align 8, !tbaa !46 ; 5 uses
  %i.aab = load i64, ptr %i.ax, align 8, !tbaa !44 ; 5 uses
  switch i32 %i.zz, label %bb.jm [
    i32 1, label %bb.jk
    i32 2, label %bb.jl
  ]

bb.jk:                                            ; preds = %bb.jj
  %i.aac = getelementptr i8, ptr %i.aaa, i64 %i.aab
  store i8 48, ptr %i.aac, align 1, !tbaa !14
  %.pre235.i.i = load ptr, ptr %i.az, align 8, !tbaa !46
  %.pre236.i.i = load i64, ptr %i.ax, align 8, !tbaa !44
  br label %PyUnicode_WRITE.exit215.i.i

bb.jl:                                            ; preds = %bb.jj
  %i.aad = getelementptr [2 x i8], ptr %i.aaa, i64 %i.aab
  store i16 48, ptr %i.aad, align 2, !tbaa !39
  br label %PyUnicode_WRITE.exit215.i.i

bb.jm:                                            ; preds = %bb.jj
  %i.aae = getelementptr [4 x i8], ptr %i.aaa, i64 %i.aab
  store i32 48, ptr %i.aae, align 4, !tbaa !10
  br label %PyUnicode_WRITE.exit215.i.i

PyUnicode_WRITE.exit215.i.i:                      ; preds = %bb.jm, %bb.jl, %bb.jk
  %i.aaf = phi i64 [ %.pre236.i.i, %bb.jk ], [ %i.aab, %bb.jl ], [ %i.aab, %bb.jm ] ; 3 uses
  %i.aag = phi ptr [ %.pre235.i.i, %bb.jk ], [ %i.aaa, %bb.jl ], [ %i.aaa, %bb.jm ] ; 3 uses
  %i.aah = load i32, ptr %i.ay, align 8, !tbaa !45
  %i.aai = add i64 %i.aaf, 1                      ; 3 uses
  switch i32 %i.aah, label %bb.jp [
    i32 1, label %bb.jn
    i32 2, label %bb.jo
  ]

bb.jn:                                            ; preds = %PyUnicode_WRITE.exit215.i.i
  %i.aaj = trunc nuw nsw i32 %.0.i69.i to i8
  %i.aak = getelementptr i8, ptr %i.aag, i64 %i.aai
  store i8 %i.aaj, ptr %i.aak, align 1, !tbaa !14
  %.pre237.i.i = load i64, ptr %i.ax, align 8, !tbaa !44
  br label %PyUnicode_WRITE.exit216.i.i

bb.jo:                                            ; preds = %PyUnicode_WRITE.exit215.i.i
  %i.aal = trunc nuw nsw i32 %.0.i69.i to i16
  %i.aam = getelementptr [2 x i8], ptr %i.aag, i64 %i.aai
  store i16 %i.aal, ptr %i.aam, align 2, !tbaa !39
  br label %PyUnicode_WRITE.exit216.i.i

bb.jp:                                            ; preds = %PyUnicode_WRITE.exit215.i.i
  %i.aan = getelementptr [4 x i8], ptr %i.aag, i64 %i.aai
  store i32 %.0.i69.i, ptr %i.aan, align 4, !tbaa !10
  br label %PyUnicode_WRITE.exit216.i.i

PyUnicode_WRITE.exit216.i.i:                      ; preds = %bb.jp, %bb.jo, %bb.jn
  %i.aao = phi i64 [ %.pre237.i.i, %bb.jn ], [ %i.aaf, %bb.jo ], [ %i.aaf, %bb.jp ]
  %i.aap = add i64 %i.aao, 2
  store i64 %i.aap, ptr %i.ax, align 8, !tbaa !44
  %i.aaq = add nuw nsw i64 %.3.i.i, 2
  br label %bb.jq

bb.jq:                                            ; preds = %PyUnicode_WRITE.exit216.i.i, %bb.ji, %bb.jh, %bb.jb
  %.4.i.i = phi i64 [ %i.aaq, %PyUnicode_WRITE.exit216.i.i ], [ %.3.i.i, %bb.ji ], [ %.3.i.i, %bb.jh ], [ %.3.i.i, %bb.jb ]
  %.not202.i.i = icmp eq i64 %.3170.i.i, 0
  br i1 %.not202.i.i, label %bb.js, label %bb.jr

bb.jr:                                            ; preds = %bb.jq
  %i.aar = load ptr, ptr %i.v, align 8, !tbaa !89
  %i.aas = load i64, ptr %i.ax, align 8, !tbaa !44
  call void @_PyUnicode_FastCopyCharacters(ptr noundef %i.aar, i64 noundef %i.aas, ptr noundef nonnull %i.tr, i64 noundef %.4.i.i, i64 noundef %.3170.i.i) #8
  %i.aat = load i64, ptr %i.ax, align 8, !tbaa !44
  %i.aau = add i64 %i.aat, %.3170.i.i
  store i64 %i.aau, ptr %i.ax, align 8, !tbaa !44
  br label %bb.js

bb.js:                                            ; preds = %bb.jr, %bb.jq
  %i.aav = icmp sgt i64 %i.zo, %.3170.i.i
  br i1 %i.aav, label %bb.jt, label %unicode_format_arg_output.exit.i

bb.jt:                                            ; preds = %bb.js
  %i.aaw = sub i64 %i.zo, %.3170.i.i              ; 4 uses
  %i.aax = load i32, ptr %i.ay, align 8, !tbaa !45
  %i.aay = load ptr, ptr %i.az, align 8, !tbaa !46 ; 4 uses
  %i.aaz = ptrtoaddr ptr %i.aay to i64            ; 6 uses
  %i.aba = load i64, ptr %i.ax, align 8, !tbaa !44 ; 12 uses
  switch i32 %i.aax, label %bb.jx [
    i32 1, label %bb.ju
    i32 2, label %bb.jv
    i32 4, label %bb.jw
  ]

bb.ju:                                            ; preds = %bb.jt
  %i.abb = getelementptr i8, ptr %i.aay, i64 %i.aba
  call void @llvm.memset.p0.i64(ptr align 1 %i.abb, i8 32, i64 %i.aaw, i1 false)
  %.pre238.i.i = load i64, ptr %i.ax, align 8, !tbaa !44
  br label %_PyUnicode_Fill.exit221.i.i

bb.jv:                                            ; preds = %bb.jt
  %i.abc = getelementptr [2 x i8], ptr %i.aay, i64 %i.aba ; 7 uses
  %i.abd = getelementptr [2 x i8], ptr %i.abc, i64 %i.aaw ; 2 uses
  %i.abe = icmp ult ptr %i.abc, %i.abd
  br i1 %i.abe, label %iter.check, label %_PyUnicode_Fill.exit221.i.i

iter.check:                                       ; preds = %bb.jv
  %i.abf = shl i64 %i.zo, 1
  %i.abg = add i64 %i.abf, %i.aaz
  %i.abh = shl i64 %i.aba, 1                      ; 3 uses
  %i.abi = add i64 %i.abg, %i.abh
  %i.abj = shl i64 %.3170.i.i, 1
  %i.abk = sub i64 %i.abi, %i.abj
  %i.abl = add i64 %i.aaz, 2
  %i.abm = add i64 %i.abl, %i.abh
  %umax = call i64 @llvm.umax.i64(i64 %i.abk, i64 %i.abm)
  %i.abn = xor i64 %i.aaz, -1
  %i.abo = add i64 %umax, %i.abn
  %i.abp = sub i64 %i.abo, %i.abh                 ; 3 uses
  %i.abq = lshr i64 %i.abp, 1
  %i.abr = add nuw i64 %i.abq, 1                  ; 5 uses
  %min.iters.check = icmp ult i64 %i.abp, 14
  br i1 %min.iters.check, label %.lr.ph30.i219.i.i.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check710 = icmp ult i64 %i.abp, 30
  br i1 %min.iters.check710, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.abs = and i64 %i.abr, 8
  %n.vec = and i64 %i.abr, -16                    ; 4 uses
  %i.abt = shl i64 %n.vec, 1
  %i.abu = getelementptr i8, ptr %i.abc, i64 %i.abt
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.abv = shl i64 %index, 1
  %next.gep = getelementptr i8, ptr %i.abc, i64 %i.abv ; 2 uses
  %i.abw = getelementptr i8, ptr %next.gep, i64 16
  store <8 x i16> splat (i16 32), ptr %next.gep, align 2, !tbaa !39
  store <8 x i16> splat (i16 32), ptr %i.abw, align 2, !tbaa !39
  %index.next = add nuw i64 %index, 16            ; 2 uses
  %i.abx = icmp eq i64 %index.next, %n.vec
  br i1 %i.abx, label %middle.block, label %vector.body, !llvm.loop !71

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.abr, %n.vec
  br i1 %cmp.n, label %_PyUnicode_Fill.exit221.i.i, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.abs, 0
  br i1 %min.epilog.iters.check, label %.lr.ph30.i219.i.i.preheader, label %vec.epilog.ph, !prof !90

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec711 = and i64 %i.abr, -8                  ; 3 uses
  %i.aby = shl i64 %n.vec711, 1
  %i.abz = getelementptr i8, ptr %i.abc, i64 %i.aby
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index712 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next714, %vec.epilog.vector.body ] ; 2 uses
  %i.aca = shl i64 %index712, 1
  %next.gep713 = getelementptr i8, ptr %i.abc, i64 %i.aca
  store <8 x i16> splat (i16 32), ptr %next.gep713, align 2, !tbaa !39
  %index.next714 = add nuw i64 %index712, 8       ; 2 uses
  %i.acb = icmp eq i64 %index.next714, %n.vec711
  br i1 %i.acb, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !72

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n715 = icmp eq i64 %i.abr, %n.vec711
  br i1 %cmp.n715, label %_PyUnicode_Fill.exit221.i.i, label %.lr.ph30.i219.i.i.preheader

.lr.ph30.i219.i.i.preheader:                      ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.02629.i220.i.i.ph = phi ptr [ %i.abc, %iter.check ], [ %i.abu, %vec.epilog.iter.check ], [ %i.abz, %vec.epilog.middle.block ]
  br label %.lr.ph30.i219.i.i

.lr.ph30.i219.i.i:                                ; preds = %.lr.ph30.i219.i.i.preheader, %.lr.ph30.i219.i.i
  %.02629.i220.i.i = phi ptr [ %i.acc, %.lr.ph30.i219.i.i ], [ %.02629.i220.i.i.ph, %.lr.ph30.i219.i.i.preheader ] ; 2 uses
  store i16 32, ptr %.02629.i220.i.i, align 2, !tbaa !39
  %i.acc = getelementptr i8, ptr %.02629.i220.i.i, i64 2 ; 2 uses
  %i.acd = icmp ult ptr %i.acc, %i.abd
  br i1 %i.acd, label %.lr.ph30.i219.i.i, label %_PyUnicode_Fill.exit221.i.i, !llvm.loop !73

bb.jw:                                            ; preds = %bb.jt
  %i.ace = getelementptr [4 x i8], ptr %i.aay, i64 %i.aba ; 5 uses
  %i.acf = getelementptr [4 x i8], ptr %i.ace, i64 %i.aaw ; 2 uses
  %i.acg = icmp ult ptr %i.ace, %i.acf
  br i1 %i.acg, label %.lr.ph.i217.i.i.preheader, label %_PyUnicode_Fill.exit221.i.i

.lr.ph.i217.i.i.preheader:                        ; preds = %bb.jw
  %i.ach = shl i64 %i.zo, 2
  %i.aci = shl i64 %i.aba, 2                      ; 3 uses
  %i.acj = shl i64 %.3170.i.i, 2
  %i.ack = add i64 %i.ach, %i.aaz
  %i.acl = add i64 %i.ack, %i.aci
  %i.acm = sub i64 %i.acl, %i.acj
  %i.acn = add i64 %i.aci, %i.aaz
  %i.aco = add i64 %i.acn, 4
  %i.acp = call i64 @llvm.umax.i64(i64 %i.acm, i64 %i.aco)
  %i.acq = xor i64 %i.aaz, -1
  %i.acr = add i64 %i.acp, %i.acq
  %i.acs = sub i64 %i.acr, %i.aci                 ; 2 uses
  %i.act = lshr i64 %i.acs, 2
  %i.acu = add nuw nsw i64 %i.act, 1              ; 2 uses
  %min.iters.check717 = icmp ult i64 %i.acs, 28
  br i1 %min.iters.check717, label %.lr.ph.i217.i.i.preheader775, label %vector.ph718

vector.ph718:                                     ; preds = %.lr.ph.i217.i.i.preheader
  %n.vec719 = and i64 %i.acu, 9223372036854775800 ; 3 uses
  %i.acv = shl i64 %n.vec719, 2
  %i.acw = getelementptr i8, ptr %i.ace, i64 %i.acv
  br label %vector.body720

vector.body720:                                   ; preds = %vector.body720, %vector.ph718
  %index721 = phi i64 [ 0, %vector.ph718 ], [ %index.next723, %vector.body720 ] ; 2 uses
  %i.acx = shl i64 %index721, 2
  %next.gep722 = getelementptr i8, ptr %i.ace, i64 %i.acx ; 2 uses
  %i.acy = getelementptr i8, ptr %next.gep722, i64 16
  store <4 x i32> splat (i32 32), ptr %next.gep722, align 4, !tbaa !10
  store <4 x i32> splat (i32 32), ptr %i.acy, align 4, !tbaa !10
  %index.next723 = add nuw i64 %index721, 8       ; 2 uses
  %i.acz = icmp eq i64 %index.next723, %n.vec719
  br i1 %i.acz, label %middle.block724, label %vector.body720, !llvm.loop !74

middle.block724:                                  ; preds = %vector.body720
  %cmp.n725 = icmp eq i64 %i.acu, %n.vec719
  br i1 %cmp.n725, label %_PyUnicode_Fill.exit221.i.i, label %.lr.ph.i217.i.i.preheader775

.lr.ph.i217.i.i.preheader775:                     ; preds = %.lr.ph.i217.i.i.preheader, %middle.block724
  %.028.i218.i.i.ph = phi ptr [ %i.ace, %.lr.ph.i217.i.i.preheader ], [ %i.acw, %middle.block724 ]
  br label %.lr.ph.i217.i.i

.lr.ph.i217.i.i:                                  ; preds = %.lr.ph.i217.i.i.preheader775, %.lr.ph.i217.i.i
  %.028.i218.i.i = phi ptr [ %i.ada, %.lr.ph.i217.i.i ], [ %.028.i218.i.i.ph, %.lr.ph.i217.i.i.preheader775 ] ; 2 uses
  store i32 32, ptr %.028.i218.i.i, align 4, !tbaa !10
  %i.ada = getelementptr i8, ptr %.028.i218.i.i, i64 4 ; 2 uses
  %i.adb = icmp ult ptr %i.ada, %i.acf
  br i1 %i.adb, label %.lr.ph.i217.i.i, label %_PyUnicode_Fill.exit221.i.i, !llvm.loop !75

bb.jx:                                            ; preds = %bb.jt
  unreachable

_PyUnicode_Fill.exit221.i.i:                      ; preds = %.lr.ph.i217.i.i, %.lr.ph30.i219.i.i, %middle.block724, %middle.block, %vec.epilog.middle.block, %bb.jw, %bb.jv, %bb.ju
  %i.adc = phi i64 [ %i.aba, %middle.block ], [ %i.aba, %bb.jw ], [ %.pre238.i.i, %bb.ju ], [ %i.aba, %bb.jv ], [ %i.aba, %middle.block724 ], [ %i.aba, %vec.epilog.middle.block ], [ %i.aba, %.lr.ph30.i219.i.i ], [ %i.aba, %.lr.ph.i217.i.i ]
  %i.add = add i64 %i.adc, %i.aaw
  store i64 %i.add, ptr %i.ax, align 8, !tbaa !44
  br label %unicode_format_arg_output.exit.i

unicode_format_arg_output.exit.i:                 ; preds = %_PyUnicode_Fill.exit221.i.i, %bb.js, %bb.ic, %bb.gz
  %.0.i55.i = phi i1 [ %i.tz, %bb.gz ], [ true, %bb.ic ], [ false, %_PyUnicode_Fill.exit221.i.i ], [ false, %bb.js ]
  %i.ade = load i32, ptr %i.tr, align 8, !tbaa !14 ; 2 uses
  %.not.i.i47 = icmp sgt i32 %i.ade, -1
  br i1 %.not.i.i47, label %bb.jy, label %Py_DECREF.exit.i

bb.jy:                                            ; preds = %unicode_format_arg_output.exit.i
  %i.adf = add nsw i32 %i.ade, -1                 ; 2 uses
  store i32 %i.adf, ptr %i.tr, align 8, !tbaa !14
  %i.adg = icmp eq i32 %i.adf, 0
  br i1 %i.adg, label %bb.jz, label %Py_DECREF.exit.i

bb.jz:                                            ; preds = %bb.jy
  call void @_Py_Dealloc(ptr noundef nonnull %i.tr) #8
  br label %Py_DECREF.exit.i

Py_DECREF.exit.i:                                 ; preds = %bb.jz, %bb.jy, %unicode_format_arg_output.exit.i
  br i1 %.0.i55.i, label %unicode_format_arg_parse.exit.thread.i, label %unicode_format_arg_format.exit.thread94.i

unicode_format_arg_format.exit.thread94.i:        ; preds = %Py_DECREF.exit.i, %bb.gn, %bb.ff, %Py_DECREF.exit77.i.i.i, %bb.dy
  %i.adh = load ptr, ptr %i.au, align 8, !tbaa !85
  %.not18.i = icmp eq ptr %i.adh, null
  br i1 %.not18.i, label %bb.kc, label %bb.ka

bb.ka:                                            ; preds = %unicode_format_arg_format.exit.thread94.i
  %i.adi = load i64, ptr %i.af, align 8, !tbaa !37
  %i.adj = load i64, ptr %i.ae, align 8, !tbaa !36
  %i.adk = icmp slt i64 %i.adi, %i.adj
  br i1 %i.adk, label %bb.kb, label %bb.kc

bb.kb:                                            ; preds = %bb.ka
  %i.adl = load ptr, ptr @PyExc_TypeError, align 8, !tbaa !13
  call void @PyErr_SetString(ptr noundef %i.adl, ptr noundef nonnull @.str.5) #8
  br label %unicode_format_arg_parse.exit.thread.i

bb.kc:                                            ; preds = %bb.ka, %unicode_format_arg_format.exit.thread94.i
  %.not.i61.i = icmp eq ptr %i.ev, null
  br i1 %.not.i61.i, label %unicode_format_arg.exit, label %bb.kd

bb.kd:                                            ; preds = %bb.kc
  %i.adm = load i32, ptr %i.ev, align 8, !tbaa !14 ; 2 uses
  %.not.i.i62.i = icmp sgt i32 %i.adm, -1
  br i1 %.not.i.i62.i, label %bb.ke, label %unicode_format_arg.exit

bb.ke:                                            ; preds = %bb.kd
  %i.adn = add nsw i32 %i.adm, -1                 ; 2 uses
  store i32 %i.adn, ptr %i.ev, align 8, !tbaa !14
  %i.ado = icmp eq i32 %i.adn, 0
  br i1 %i.ado, label %bb.kf, label %unicode_format_arg.exit

bb.kf:                                            ; preds = %bb.ke
  call void @_Py_Dealloc(ptr noundef nonnull %i.ev) #8
  br label %unicode_format_arg.exit

unicode_format_arg_parse.exit.thread.i:           ; preds = %Py_DECREF.exit.i, %unicode_format_arg_format.exit.i, %bb.gn, %formatchar.exit.i.i, %bb.fg, %bb.ff, %Py_DECREF.exit.i.i.i, %Py_DECREF.exit77.i.i.i, %bb.dy, %unicode_format_getnextarg.exit.i27.i, %bb.ck, %unicode_format_getnextarg.exit.i.i, %bb.kb, %bb.gx, %bb.gw, %bb.gv, %bb.gt, %bb.gr, %bb.el, %unicode_format_getnextarg.exit.thread.i24.i, %.thread239.i.i, %bb.dk, %bb.ct, %bb.cj, %bb.cb, %bb.bj, %unicode_format_getnextarg.exit.thread.i.i, %bb.az
  %.not.i64.i = icmp eq ptr %i.ev, null
  br i1 %.not.i64.i, label %unicode_format_arg.exit.thread, label %unicode_format_arg_parse.exit.thread.thread109.i

unicode_format_arg_parse.exit.thread.thread109.i: ; preds = %Py_DECREF.exit.i.i, %unicode_format_arg_parse.exit.thread.i, %bb.fu, %bb.fa, %bb.ev, %bb.cv, %bb.cn, %bb.bl, %bb.bd
  %i.adp = phi ptr [ %i.ev, %unicode_format_arg_parse.exit.thread.i ], [ %i.ev, %bb.bd ], [ %i.ev, %bb.cn ], [ %i.ev, %bb.bl ], [ %i.ev, %bb.fa ], [ %i.ev, %bb.cv ], [ %i.ev, %bb.ev ], [ %i.ev, %bb.fu ], [ %i.eg, %Py_DECREF.exit.i.i ] ; 3 uses
  %i.adq = load i32, ptr %i.adp, align 8, !tbaa !14 ; 2 uses
  %.not.i.i65.i = icmp sgt i32 %i.adq, -1
  br i1 %.not.i.i65.i, label %bb.kg, label %unicode_format_arg.exit.thread

bb.kg:                                            ; preds = %unicode_format_arg_parse.exit.thread.thread109.i
  %i.adr = add nsw i32 %i.adq, -1                 ; 2 uses
  store i32 %i.adr, ptr %i.adp, align 8, !tbaa !14
  %i.ads = icmp eq i32 %i.adr, 0
  br i1 %i.ads, label %bb.kh, label %unicode_format_arg.exit.thread

bb.kh:                                            ; preds = %bb.kg
  call void @_Py_Dealloc(ptr noundef nonnull %i.adp) #8
  br label %unicode_format_arg.exit.thread

unicode_format_arg.exit.thread:                   ; preds = %bb.y, %.critedge.i22.i, %unicode_format_arg_parse.exit.thread.i, %unicode_format_arg_parse.exit.thread.thread109.i, %bb.kg, %bb.kh, %bb.ae, %.critedge.thread.i.i, %bb.cx, %bb.cy, %bb.cq, %bb.cp, %bb.bn, %bb.bo, %bb.bg, %bb.bf, %bb.as, %bb.ex, %bb.ey, %bb.fc, %bb.fd, %bb.fw, %bb.fx
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #8
  br label %.loopexit

unicode_format_arg.exit:                          ; preds = %_PyUnicodeWriter_WriteCharInline.exit.i, %bb.kc, %bb.kd, %bb.ke, %bb.kf
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #8
  br label %bb.ki

bb.ki:                                            ; preds = %unicode_format_arg.exit, %.critedge
  %i.adt = load i64, ptr %i.t, align 8, !tbaa !80 ; 2 uses
  %i.adu = add i64 %i.adt, -1                     ; 3 uses
  store i64 %i.adu, ptr %i.t, align 8, !tbaa !80
  %i.adv = icmp sgt i64 %i.adu, -1
  br i1 %i.adv, label %bb.k, label %._crit_edge247.loopexit, !llvm.loop !76

._crit_edge247.loopexit:                          ; preds = %bb.ki
  %.pre378 = load ptr, ptr %i.au, align 8
  br label %._crit_edge247

._crit_edge247:                                   ; preds = %._crit_edge247.loopexit, %bb.j
  %i.adw = phi ptr [ %.pre378, %._crit_edge247.loopexit ], [ %.sink578, %bb.j ]
  %i.adx = load i64, ptr %i.af, align 8, !tbaa !37 ; 2 uses
  %i.ady = load i64, ptr %i.ae, align 8, !tbaa !36 ; 3 uses
  %i.adz = icmp sge i64 %i.adx, %i.ady
  %i.aea = icmp ne ptr %i.adw, null
  %or.cond4 = select i1 %i.adz, i1 true, i1 %i.aea
  br i1 %or.cond4, label %bb.kk, label %bb.kj

bb.kj:                                            ; preds = %._crit_edge247
  %i.aeb = load ptr, ptr @PyExc_TypeError, align 8, !tbaa !13
  %i.aec = icmp slt i64 %i.ady, 0                 ; 2 uses
  %i.aed = select i1 %i.aec, i64 0, i64 %i.adx
  %i.aee = select i1 %i.aec, i64 1, i64 %i.ady
  %i.aef = call ptr (ptr, ptr, ...) @PyErr_Format(ptr noundef %i.aeb, ptr noundef nonnull @.str.3, i64 noundef %i.aed, i64 noundef %i.aee) #8 ; 0 uses
  br label %.loopexit

bb.kk:                                            ; preds = %._crit_edge247
  %i.aeg = load i32, ptr %i.ag, align 8, !tbaa !84
  %.not25 = icmp eq i32 %i.aeg, 0
  br i1 %.not25, label %Py_DECREF.exit30, label %bb.kl

end_hunk_0
begin_hunk_1_@formatfloat:bb.a

bb.h:                                             ; preds = %bb.f
  %i.q = tail call ptr (ptr, ptr, ...) @PyErr_Format(ptr noundef %i.n, ptr noundef nonnull @.str.34, i32 noundef %i.o, ptr noundef nonnull %0) #8 ; 0 uses
  br label %bb.o

bb.i:                                             ; preds = %bb.b, %bb.a
  %i.r = getelementptr i8, ptr %2, i64 16
  %i.s = load i32, ptr %i.r, align 8, !tbaa !48   ; 2 uses
  %i.t = icmp slt i32 %i.s, 0
  %spec.store.select = select i1 %i.t, i32 6, i32 %i.s
  %i.u = getelementptr i8, ptr %2, i64 4
  %i.v = load i32, ptr %i.u, align 4, !tbaa !47
  %i.w = lshr i32 %i.v, 1
  %spec.select = and i32 %i.w, 4
  %i.x = load i32, ptr %2, align 8, !tbaa !41
  %i.y = trunc i32 %i.x to i8
  %i.z = tail call ptr @PyOS_double_to_string(double noundef %i.a, i8 noundef signext %i.y, i32 noundef %spec.store.select, i32 noundef %spec.select, ptr noundef null) #8 ; 6 uses
  %i.aa = icmp eq ptr %i.z, null
  br i1 %i.aa, label %bb.o, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ab = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.z) #9 ; 2 uses
  %.not37 = icmp eq ptr %4, null
  br i1 %.not37, label %bb.m, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ac = tail call i32 @_PyUnicodeWriter_WriteASCIIString(ptr noundef nonnull %4, ptr noundef nonnull %i.z, i64 noundef %i.ab) #8
  %i.ad = icmp slt i32 %i.ac, 0
  br i1 %i.ad, label %bb.l, label %bb.n

bb.l:                                             ; preds = %bb.k
  tail call void @PyMem_Free(ptr noundef nonnull %i.z) #8
  br label %bb.o

bb.m:                                             ; preds = %bb.j
  %i.ae = tail call ptr @_PyUnicode_FromASCII(ptr noundef nonnull %i.z, i64 noundef %i.ab) #8
  store ptr %i.ae, ptr %3, align 8, !tbaa !13
  br label %bb.n

bb.n:                                             ; preds = %bb.k, %bb.m
  tail call void @PyMem_Free(ptr noundef nonnull %i.z) #8
  br label %bb.o

bb.o:                                             ; preds = %bb.i, %bb.c, %bb.g, %bb.h, %bb.e, %bb.n, %bb.l
  %.031 = phi i32 [ 0, %bb.n ], [ -1, %bb.c ], [ -1, %bb.l ], [ -1, %bb.e ], [ -1, %bb.h ], [ -1, %bb.g ], [ -1, %bb.i ]
  ret i32 %.031
}

declare ptr @PyUnicode_FromOrdinal(i32 noundef) local_unnamed_addr #2

declare i32 @_PyUnicode_IsPrintable(i32 noundef) local_unnamed_addr #2

declare i32 @PyNumber_Check(ptr noundef) local_unnamed_addr #2

declare ptr @_PyNumber_Index(ptr noundef) local_unnamed_addr #2

declare ptr @PyNumber_Long(ptr noundef) local_unnamed_addr #2

declare double @PyFloat_AsDouble(ptr noundef) local_unnamed_addr #2

declare ptr @PyOS_double_to_string(double noundef, i8 noundef signext, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i64 @strlen(ptr noundef captures(none)) local_unnamed_addr #4

declare i32 @_PyUnicodeWriter_WriteASCIIString(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #2

declare void @PyMem_Free(ptr noundef) local_unnamed_addr #2

declare i64 @PyLong_AsLongAndOverflow(ptr noundef, ptr noundef) local_unnamed_addr #2

declare i32 @_PyUnicodeWriter_WriteStr(ptr noundef, ptr noundef) local_unnamed_addr #2

declare i32 @_PyUnicode_FindMaxChar(ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #2

declare void @_PyUnicode_FastCopyCharacters(ptr noundef, i64 noundef, ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #5

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umax.i32(i32, i32) #6

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smin.i64(i64, i64) #6

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smax.i64(i64, i64) #6

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #7

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #6

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { inlinehint nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #6 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #7 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #8 = { nounwind }
attributes #9 = { nounwind willreturn memory(read) }

!llvm.module.flags = !{!0, !1, !2, !3, !4, !5}
!llvm.ident = !{!6}
!llvm.errno.tbaa = !{!10}

!0 = !{i32 7, !"Dwarf Version", i32 5}
!1 = !{i32 2, !"Debug Info Version", i32 3}
!2 = !{i32 8, !"PIC Level", i32 2}
!3 = !{i32 7, !"PIE Level", i32 2}
!4 = !{i32 7, !"uwtable", i32 2}
!5 = !{i32 7, !"debug-info-assignment-tracking", i1 true}
!6 = !{!"Ubuntu clang version 23.0.0 (++20260326081736+e69c7312f31b-1~exp1~20260326081905.1542)"}
!7 = !{!"Simple C/C++ TBAA"}
!8 = !{!"omnipotent char", !7, i64 0}
!9 = !{!"int", !8, i64 0}
!10 = !{!9, !9, i64 0}
!11 = !{!"any pointer", !8, i64 0}
!12 = !{!"p1 _ZTS7_object", !11, i64 0}
!13 = !{!12, !12, i64 0}
!14 = !{!8, !8, i64 0}
!15 = !{!"p1 _ZTS11_typeobject", !11, i64 0}
!16 = !{!"_object", !8, i64 0, !15, i64 8}
!17 = !{!"long", !8, i64 0}
!18 = !{!"_PyUnicodeObject_state", !9, i64 0, !9, i64 0, !9, i64 0, !9, i64 0, !9, i64 0}
!19 = !{!"", !16, i64 0, !17, i64 16, !17, i64 24, !18, i64 32}
!20 = !{!19, !17, i64 16}
!21 = !{!"llvm.loop.mustprogress"}
!22 = !{!"llvm.loop.isvectorized", i32 1}
!23 = !{!"llvm.loop.unroll.runtime.disable"}
!24 = !{!"branch_weights", i32 4, i32 12}
!25 = !{!16, !15, i64 8}
!26 = !{!"PyVarObject", !16, i64 0, !17, i64 16}
!27 = !{!"p1 omnipotent char", !11, i64 0}
!28 = !{!"p1 _ZTS11PyMethodDef", !11, i64 0}
!29 = !{!"p1 _ZTS11PyMemberDef", !11, i64 0}
!30 = !{!"p1 _ZTS11PyGetSetDef", !11, i64 0}
!31 = !{!"short", !8, i64 0}
!32 = !{!"_typeobject", !26, i64 0, !27, i64 24, !17, i64 32, !17, i64 40, !11, i64 48, !17, i64 56, !11, i64 64, !11, i64 72, !11, i64 80, !11, i64 88, !11, i64 96, !11, i64 104, !11, i64 112, !11, i64 120, !11, i64 128, !11, i64 136, !11, i64 144, !11, i64 152, !11, i64 160, !17, i64 168, !27, i64 176, !11, i64 184, !11, i64 192, !11, i64 200, !17, i64 208, !11, i64 216, !11, i64 224, !28, i64 232, !29, i64 240, !30, i64 248, !15, i64 256, !12, i64 264, !11, i64 272, !11, i64 280, !17, i64 288, !11, i64 296, !11, i64 304, !11, i64 312, !11, i64 320, !11, i64 328, !12, i64 336, !12, i64 344, !12, i64 352, !11, i64 360, !12, i64 368, !11, i64 376, !9, i64 384, !11, i64 392, !11, i64 400, !8, i64 408, !31, i64 410}
!33 = !{!32, !17, i64 168}
!34 = !{!"", !12, i64 0, !11, i64 8, !9, i64 16, !9, i64 20, !17, i64 24, !17, i64 32, !17, i64 40, !9, i64 48, !8, i64 52, !8, i64 53}
!35 = !{!"unicode_formatter_t", !12, i64 0, !9, i64 8, !17, i64 16, !17, i64 24, !12, i64 32, !9, i64 40, !17, i64 48, !17, i64 56, !11, i64 64, !12, i64 72, !34, i64 80}
!36 = !{!35, !17, i64 16}
!37 = !{!35, !17, i64 24}
!38 = !{!35, !12, i64 0}
!39 = !{!31, !31, i64 0}
!40 = !{!"unicode_format_arg_t", !9, i64 0, !9, i64 4, !17, i64 8, !9, i64 16, !9, i64 20, !17, i64 24, !12, i64 32}
!41 = !{!40, !9, i64 0}
!42 = !{!34, !9, i64 20}
!43 = !{!34, !17, i64 24}
!44 = !{!34, !17, i64 32}
!45 = !{!34, !9, i64 16}
!46 = !{!34, !11, i64 8}
!47 = !{!40, !9, i64 4}
!48 = !{!40, !9, i64 16}
!49 = !{!40, !12, i64 32}
!50 = distinct !{!50, !59}
!51 = distinct !{!51, !21}
!52 = distinct !{!52, !21, !22, !23}
!53 = distinct !{!53, !21, !22, !23}
!54 = distinct !{!54, !59}
!55 = distinct !{!55, !21, !22}
!56 = distinct !{!56, !21, !22, !23}
!57 = distinct !{!57, !21, !22, !23}
!58 = distinct !{!58, !21, !23, !22}
!59 = !{!"llvm.loop.unroll.disable"}
!60 = !{!"branch_weights", i32 4, i32 28}
!61 = distinct !{!61, !21}
!62 = distinct !{!62, !21}
!63 = distinct !{!63, !21}
!64 = distinct !{!64, !21}
!65 = distinct !{!65, !21}
!66 = distinct !{!66, !21, !22, !23}
!67 = distinct !{!67, !21, !22, !23}
!68 = distinct !{!68, !21, !23, !22}
!69 = distinct !{!69, !21, !22, !23}
!70 = distinct !{!70, !21, !23, !22}
!71 = distinct !{!71, !21, !22, !23}
!72 = distinct !{!72, !21, !22, !23}
!73 = distinct !{!73, !21, !23, !22}
!74 = distinct !{!74, !21, !22, !23}
!75 = distinct !{!75, !21, !23, !22}
!76 = distinct !{!76, !21}
!77 = !{!35, !12, i64 72}
!78 = !{!35, !11, i64 64}
!79 = !{!35, !9, i64 40}
!80 = !{!35, !17, i64 48}
!81 = !{!35, !17, i64 56}
!82 = !{!35, !17, i64 120}
!83 = !{!35, !8, i64 132}
!84 = !{!35, !9, i64 8}
!85 = !{!35, !12, i64 32}
!86 = !{!40, !17, i64 8}
!87 = !{!40, !9, i64 20}
!88 = !{!40, !17, i64 24}
!89 = !{!34, !12, i64 0}
!90 = !{!"branch_weights", i32 8, i32 8}
end_hunk_1

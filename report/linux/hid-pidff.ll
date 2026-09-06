Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/linux/original/hid-pidff?download=true
inline.NumInlined: 154
inline.NumDeleted: 50
loop-unroll.NumCompletelyUnrolled: 10
loop-unroll.NumRuntimeUnrolled: 6
loop-unroll.NumUnrolled: 16
begin_hunk_0_@hid_pidff_init_with_quirks:bb.a
  br i1 %.not43.i.i, label %bb.ej, label %bb.ei

bb.ei:                                            ; preds = %bb.eh
  %i.xv = getelementptr i8, ptr %i.d, i64 195     ; 2 uses
  tail call void asm sideeffect ".pushsection .smp_locks,\22a\22\0A.balign 4\0A.long 671f - .\0A.popsection\0A671:\0A\09lock orb ${1:b},$0", "=*m,iq,*m,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i8) %i.xv, i32 4, ptr elementtype(i8) %i.xv) #12, !srcloc !27
  %i.xw = getelementptr i8, ptr %i.d, i64 194     ; 2 uses
  tail call void asm sideeffect ".pushsection .smp_locks,\22a\22\0A.balign 4\0A.long 671f - .\0A.popsection\0A671:\0A\09lock orb ${1:b},$0", "=*m,iq,*m,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i8) %i.xw, i32 2, ptr elementtype(i8) %i.xw) #12, !srcloc !27
  br label %bb.ej

bb.ej:                                            ; preds = %bb.ei, %bb.eh
  %i.xx = load i32, ptr %i.lm, align 8
  %.not44.i.i = icmp eq i32 %i.xx, 0
  br i1 %.not44.i.i, label %bb.el, label %bb.ek

bb.ek:                                            ; preds = %bb.ej
  %i.xy = getelementptr i8, ptr %i.d, i64 195     ; 2 uses
  tail call void asm sideeffect ".pushsection .smp_locks,\22a\22\0A.balign 4\0A.long 671f - .\0A.popsection\0A671:\0A\09lock orb ${1:b},$0", "=*m,iq,*m,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i8) %i.xy, i32 2, ptr elementtype(i8) %i.xy) #12, !srcloc !27
  %i.xz = getelementptr i8, ptr %i.d, i64 194     ; 2 uses
  tail call void asm sideeffect ".pushsection .smp_locks,\22a\22\0A.balign 4\0A.long 671f - .\0A.popsection\0A671:\0A\09lock orb ${1:b},$0", "=*m,iq,*m,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i8) %i.xz, i32 2, ptr elementtype(i8) %i.xz) #12, !srcloc !27
  br label %bb.el

bb.el:                                            ; preds = %bb.ek, %bb.ej
  %i.ya = load i32, ptr %i.lx, align 4
  %.not45.i.i = icmp eq i32 %i.ya, 0
  br i1 %.not45.i.i, label %bb.en, label %bb.em

bb.em:                                            ; preds = %bb.el
  %i.yb = getelementptr i8, ptr %i.d, i64 195     ; 2 uses
  tail call void asm sideeffect ".pushsection .smp_locks,\22a\22\0A.balign 4\0A.long 671f - .\0A.popsection\0A671:\0A\09lock orb ${1:b},$0", "=*m,iq,*m,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i8) %i.yb, i32 8, ptr elementtype(i8) %i.yb) #12, !srcloc !27
  %i.yc = getelementptr i8, ptr %i.d, i64 194     ; 2 uses
  tail call void asm sideeffect ".pushsection .smp_locks,\22a\22\0A.balign 4\0A.long 671f - .\0A.popsection\0A671:\0A\09lock orb ${1:b},$0", "=*m,iq,*m,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i8) %i.yc, i32 2, ptr elementtype(i8) %i.yc) #12, !srcloc !27
  br label %bb.en

bb.en:                                            ; preds = %bb.em, %bb.el
  %i.yd = load i32, ptr %i.mi, align 8
  %.not46.i.i = icmp eq i32 %i.yd, 0
  br i1 %.not46.i.i, label %bb.ep, label %bb.eo

bb.eo:                                            ; preds = %bb.en
  %i.ye = getelementptr i8, ptr %i.d, i64 195     ; 2 uses
  tail call void asm sideeffect ".pushsection .smp_locks,\22a\22\0A.balign 4\0A.long 671f - .\0A.popsection\0A671:\0A\09lock orb ${1:b},$0", "=*m,iq,*m,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i8) %i.ye, i32 16, ptr elementtype(i8) %i.ye) #12, !srcloc !27
  %i.yf = getelementptr i8, ptr %i.d, i64 194     ; 2 uses
  tail call void asm sideeffect ".pushsection .smp_locks,\22a\22\0A.balign 4\0A.long 671f - .\0A.popsection\0A671:\0A\09lock orb ${1:b},$0", "=*m,iq,*m,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i8) %i.yf, i32 2, ptr elementtype(i8) %i.yf) #12, !srcloc !27
  br label %bb.ep

bb.ep:                                            ; preds = %bb.eo, %bb.en
  %i.yg = load i32, ptr %i.mt, align 4
  %.not47.i.i = icmp eq i32 %i.yg, 0
  br i1 %.not47.i.i, label %bb.er, label %bb.eq

bb.eq:                                            ; preds = %bb.ep
  %i.yh = getelementptr i8, ptr %i.d, i64 194     ; 2 uses
  tail call void asm sideeffect ".pushsection .smp_locks,\22a\22\0A.balign 4\0A.long 671f - .\0A.popsection\0A671:\0A\09lock orb ${1:b},$0", "=*m,iq,*m,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i8) %i.yh, i32 8, ptr elementtype(i8) %i.yh) #12, !srcloc !27
  br label %bb.er

bb.er:                                            ; preds = %bb.eq, %bb.ep
  %i.yi = load i32, ptr %i.ne, align 8
  %.not48.i.i = icmp eq i32 %i.yi, 0
  br i1 %.not48.i.i, label %bb.et, label %bb.es

bb.es:                                            ; preds = %bb.er
  %i.yj = getelementptr i8, ptr %i.d, i64 194     ; 2 uses
  tail call void asm sideeffect ".pushsection .smp_locks,\22a\22\0A.balign 4\0A.long 671f - .\0A.popsection\0A671:\0A\09lock orb ${1:b},$0", "=*m,iq,*m,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i8) %i.yj, i32 32, ptr elementtype(i8) %i.yj) #12, !srcloc !27
  br label %bb.et

bb.et:                                            ; preds = %bb.es, %bb.er
  %i.yk = load i32, ptr %i.np, align 4
  %.not49.i.i = icmp eq i32 %i.yk, 0
  br i1 %.not49.i.i, label %bb.ev, label %bb.eu

bb.eu:                                            ; preds = %bb.et
  %i.yl = getelementptr i8, ptr %i.d, i64 194     ; 2 uses
  tail call void asm sideeffect ".pushsection .smp_locks,\22a\22\0A.balign 4\0A.long 671f - .\0A.popsection\0A671:\0A\09lock orb ${1:b},$0", "=*m,iq,*m,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i8) %i.yl, i32 64, ptr elementtype(i8) %i.yl) #12, !srcloc !27
  br label %bb.ev

bb.ev:                                            ; preds = %bb.eu, %bb.et
  %i.ym = load i32, ptr %i.oa, align 8
  %.not50.i.i = icmp eq i32 %i.ym, 0
  br i1 %.not50.i.i, label %bb.ex, label %bb.ew

bb.ew:                                            ; preds = %bb.ev
  %i.yn = getelementptr i8, ptr %i.d, i64 194     ; 2 uses
  tail call void asm sideeffect ".pushsection .smp_locks,\22a\22\0A.balign 4\0A.long 671f - .\0A.popsection\0A671:\0A\09lock orb ${1:b},$0", "=*m,iq,*m,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i8) %i.yn, i32 16, ptr elementtype(i8) %i.yn) #12, !srcloc !27
  br label %bb.ex

pidff_find_effects.exit.i:                        ; preds = %.critedge.9.i.i, %.critedge.8.i.i, %.critedge.7.i.i, %.critedge.6.i.i, %.critedge.5.i.i, %.critedge.4.i.i, %.critedge.3.i.i, %.critedge.2.i.i, %.critedge.1.i.i, %.critedge.i.i, %pidff_find_special_fields.exit.i
  %.03853.lcssa.wide.i.i = phi i32 [ 0, %pidff_find_special_fields.exit.i ], [ 1, %.critedge.i.i ], [ 2, %.critedge.1.i.i ], [ 3, %.critedge.2.i.i ], [ 4, %.critedge.3.i.i ], [ 5, %.critedge.4.i.i ], [ 6, %.critedge.5.i.i ], [ 7, %.critedge.6.i.i ], [ 8, %.critedge.7.i.i ], [ 9, %.critedge.8.i.i ], [ 10, %.critedge.9.i.i ]
  %i.yo = load ptr, ptr %i.h, align 8
  %i.yp = getelementptr i8, ptr %i.yo, i64 6344
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %i.yp, ptr noundef nonnull @.str.27, i32 noundef %.03853.lcssa.wide.i.i) #9
  br label %pidff_reports_ok.exit.thread

bb.ex:                                            ; preds = %bb.ew, %bb.ev
  %i.yq = getelementptr i8, ptr %i.h, i64 224
  %i.yr = getelementptr i8, ptr %i.h, i64 72
  %i.ys = load ptr, ptr %i.yr, align 8
  %i.yt = tail call fastcc i32 @pidff_find_fields(ptr noundef %i.yq, ptr noundef nonnull @pidff_set_envelope, ptr noundef %i.ys, i32 noundef 5, i32 noundef 1, ptr noundef %i.i) #11, !srcloc !28
  %.not69.i = icmp eq i32 %i.yt, 0
  br i1 %.not69.i, label %bb.fe, label %bb.ey

bb.ey:                                            ; preds = %bb.ex
  %i.yu = getelementptr i8, ptr %i.d, i64 184     ; 6 uses
  %i.yv = tail call i8 asm sideeffect ".pushsection .smp_locks,\22a\22\0A.balign 4\0A.long 671f - .\0A.popsection\0A671:\0A\09lock  btrq  $2, $0", "=*m,={@ccc},Ir,*m,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i64) %i.yu, i64 82, ptr elementtype(i64) %i.yu) #12, !srcloc !29 ; 2 uses
  %i.yw = icmp ult i8 %i.yv, 2
  tail call void @llvm.assume(i1 %i.yw)
  %i.yx = trunc nuw i8 %i.yv to i1
  br i1 %i.yx, label %bb.ez, label %bb.fa

bb.ez:                                            ; preds = %bb.ey
  %i.yy = load ptr, ptr %i.h, align 8
  %i.yz = getelementptr i8, ptr %i.yy, i64 6344
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %i.yz, ptr noundef nonnull @.str.9) #9
  br label %bb.fa

bb.fa:                                            ; preds = %bb.ez, %bb.ey
  %i.za = tail call i8 asm sideeffect ".pushsection .smp_locks,\22a\22\0A.balign 4\0A.long 671f - .\0A.popsection\0A671:\0A\09lock  btrq  $2, $0", "=*m,={@ccc},Ir,*m,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i64) %i.yu, i64 87, ptr elementtype(i64) %i.yu) #12, !srcloc !29 ; 2 uses
  %i.zb = icmp ult i8 %i.za, 2
  tail call void @llvm.assume(i1 %i.zb)
  %i.zc = trunc nuw i8 %i.za to i1
  br i1 %i.zc, label %bb.fb, label %bb.fc

bb.fb:                                            ; preds = %bb.fa
  %i.zd = load ptr, ptr %i.h, align 8
  %i.ze = getelementptr i8, ptr %i.zd, i64 6344
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %i.ze, ptr noundef nonnull @.str.10) #9
  br label %bb.fc

bb.fc:                                            ; preds = %bb.fb, %bb.fa
  %i.zf = tail call i8 asm sideeffect ".pushsection .smp_locks,\22a\22\0A.balign 4\0A.long 671f - .\0A.popsection\0A671:\0A\09lock  btrq  $2, $0", "=*m,={@ccc},Ir,*m,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i64) %i.yu, i64 81, ptr elementtype(i64) %i.yu) #12, !srcloc !29 ; 2 uses
  %i.zg = icmp ult i8 %i.zf, 2
  tail call void @llvm.assume(i1 %i.zg)
  %i.zh = trunc nuw i8 %i.zf to i1
  br i1 %i.zh, label %bb.fd, label %bb.fe

bb.fd:                                            ; preds = %bb.fc
  %i.zi = load ptr, ptr %i.h, align 8
  %i.zj = getelementptr i8, ptr %i.zi, i64 6344
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %i.zj, ptr noundef nonnull @.str.11) #9
  br label %bb.fe

bb.fe:                                            ; preds = %bb.fd, %bb.fc, %bb.ex
  %i.zk = getelementptr i8, ptr %i.h, i64 512
  %i.zl = getelementptr i8, ptr %i.h, i64 96
  %i.zm = load ptr, ptr %i.zl, align 8
  %i.zn = tail call fastcc i32 @pidff_find_fields(ptr noundef %i.zk, ptr noundef nonnull @pidff_set_constant, ptr noundef %i.zm, i32 noundef 2, i32 noundef 1, ptr noundef %i.i) #11, !srcloc !30
  %.not70.i = icmp eq i32 %i.zn, 0
  br i1 %.not70.i, label %bb.fh, label %bb.ff

bb.ff:                                            ; preds = %bb.fe
  %i.zo = getelementptr i8, ptr %i.d, i64 184     ; 2 uses
  %i.zp = tail call i8 asm sideeffect ".pushsection .smp_locks,\22a\22\0A.balign 4\0A.long 671f - .\0A.popsection\0A671:\0A\09lock  btrq  $2, $0", "=*m,={@ccc},Ir,*m,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i64) %i.zo, i64 82, ptr elementtype(i64) %i.zo) #12, !srcloc !29 ; 2 uses
  %i.zq = icmp ult i8 %i.zp, 2
  tail call void @llvm.assume(i1 %i.zq)
  %i.zr = trunc nuw i8 %i.zp to i1
  br i1 %i.zr, label %bb.fg, label %bb.fh

bb.fg:                                            ; preds = %bb.ff
  %i.zs = load ptr, ptr %i.h, align 8
  %i.zt = getelementptr i8, ptr %i.zs, i64 6344
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %i.zt, ptr noundef nonnull @.str.12) #9
  br label %bb.fh

bb.fh:                                            ; preds = %bb.fg, %bb.ff, %bb.fe
  %i.zu = getelementptr i8, ptr %i.h, i64 544
  %i.zv = getelementptr i8, ptr %i.h, i64 104
  %i.zw = load ptr, ptr %i.zv, align 8
  %i.zx = tail call fastcc i32 @pidff_find_fields(ptr noundef %i.zu, ptr noundef nonnull @pidff_set_ramp, ptr noundef %i.zw, i32 noundef 3, i32 noundef 1, ptr noundef %i.i) #11, !srcloc !31
  %.not71.i = icmp eq i32 %i.zx, 0
  br i1 %.not71.i, label %bb.fk, label %bb.fi

bb.fi:                                            ; preds = %bb.fh
  %i.zy = getelementptr i8, ptr %i.d, i64 184     ; 2 uses
  %i.zz = tail call i8 asm sideeffect ".pushsection .smp_locks,\22a\22\0A.balign 4\0A.long 671f - .\0A.popsection\0A671:\0A\09lock  btrq  $2, $0", "=*m,={@ccc},Ir,*m,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i64) %i.zy, i64 87, ptr elementtype(i64) %i.zy) #12, !srcloc !29 ; 2 uses
  %i.aaa = icmp ult i8 %i.zz, 2
  tail call void @llvm.assume(i1 %i.aaa)
  %i.aab = trunc nuw i8 %i.zz to i1
  br i1 %i.aab, label %bb.fj, label %bb.fk

bb.fj:                                            ; preds = %bb.fi
  %i.aac = load ptr, ptr %i.h, align 8
  %i.aad = getelementptr i8, ptr %i.aac, i64 6344
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %i.aad, ptr noundef nonnull @.str.13) #9
  br label %bb.fk

bb.fk:                                            ; preds = %bb.fj, %bb.fi, %bb.fh
  %i.aae = getelementptr i8, ptr %i.h, i64 304
  %i.aaf = getelementptr i8, ptr %i.h, i64 80
  %i.aag = load ptr, ptr %i.aaf, align 8
  %i.aah = tail call fastcc i32 @pidff_find_fields(ptr noundef %i.aae, ptr noundef nonnull @pidff_set_condition, ptr noundef %i.aag, i32 noundef 8, i32 noundef 1, ptr noundef %i.i) #11, !srcloc !32
  %.not72.i = icmp eq i32 %i.aah, 0
  br i1 %.not72.i, label %bb.fn, label %bb.fl

bb.fl:                                            ; preds = %bb.fk
  %i.aai = getelementptr i8, ptr %i.d, i64 184    ; 8 uses
  %i.aaj = tail call i8 asm sideeffect ".pushsection .smp_locks,\22a\22\0A.balign 4\0A.long 671f - .\0A.popsection\0A671:\0A\09lock  btrq  $2, $0", "=*m,={@ccc},Ir,*m,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i64) %i.aai, i64 83, ptr elementtype(i64) %i.aai) #12, !srcloc !29 ; 2 uses
  %i.aak = icmp ult i8 %i.aaj, 2
  tail call void @llvm.assume(i1 %i.aak)
  %i.aal = tail call i8 asm sideeffect ".pushsection .smp_locks,\22a\22\0A.balign 4\0A.long 671f - .\0A.popsection\0A671:\0A\09lock  btrq  $2, $0", "=*m,={@ccc},Ir,*m,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i64) %i.aai, i64 85, ptr elementtype(i64) %i.aai) #12, !srcloc !29 ; 2 uses
  %i.aam = icmp ult i8 %i.aal, 2
  tail call void @llvm.assume(i1 %i.aam)
  %2 = or i8 %i.aal, %i.aaj
  %i.aan = tail call i8 asm sideeffect ".pushsection .smp_locks,\22a\22\0A.balign 4\0A.long 671f - .\0A.popsection\0A671:\0A\09lock  btrq  $2, $0", "=*m,={@ccc},Ir,*m,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i64) %i.aai, i64 84, ptr elementtype(i64) %i.aai) #12, !srcloc !29 ; 2 uses
  %i.aao = icmp ult i8 %i.aan, 2
  tail call void @llvm.assume(i1 %i.aao)
  %3 = or i8 %2, %i.aan
  %i.aap = tail call i8 asm sideeffect ".pushsection .smp_locks,\22a\22\0A.balign 4\0A.long 671f - .\0A.popsection\0A671:\0A\09lock  btrq  $2, $0", "=*m,={@ccc},Ir,*m,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i64) %i.aai, i64 86, ptr elementtype(i64) %i.aai) #12, !srcloc !29 ; 2 uses
  %i.aaq = icmp ult i8 %i.aap, 2
  tail call void @llvm.assume(i1 %i.aaq)
  %i.aar = or i8 %3, %i.aap
  %.not81.i = icmp eq i8 %i.aar, 0
  br i1 %.not81.i, label %bb.fn, label %bb.fm

bb.fm:                                            ; preds = %bb.fl
  %i.aas = load ptr, ptr %i.h, align 8
  %i.aat = getelementptr i8, ptr %i.aas, i64 6344
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %i.aat, ptr noundef nonnull @.str.14) #9
  br label %bb.fn

bb.fn:                                            ; preds = %bb.fm, %bb.fl, %bb.fk
  %i.aau = getelementptr i8, ptr %i.h, i64 432
  %i.aav = getelementptr i8, ptr %i.h, i64 88
  %i.aaw = load ptr, ptr %i.aav, align 8
  %i.aax = tail call fastcc i32 @pidff_find_fields(ptr noundef %i.aau, ptr noundef nonnull @pidff_set_periodic, ptr noundef %i.aaw, i32 noundef 5, i32 noundef 1, ptr noundef %i.i) #11, !srcloc !33
  %.not73.i = icmp eq i32 %i.aax, 0
  br i1 %.not73.i, label %bb.fq, label %bb.fo

bb.fo:                                            ; preds = %bb.fn
  %i.aay = getelementptr i8, ptr %i.d, i64 184    ; 2 uses
  %i.aaz = tail call i8 asm sideeffect ".pushsection .smp_locks,\22a\22\0A.balign 4\0A.long 671f - .\0A.popsection\0A671:\0A\09lock  btrq  $2, $0", "=*m,={@ccc},Ir,*m,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i64) %i.aay, i64 81, ptr elementtype(i64) %i.aay) #12, !srcloc !29 ; 2 uses
  %i.aba = icmp ult i8 %i.aaz, 2
  tail call void @llvm.assume(i1 %i.aba)
  %i.abb = trunc nuw i8 %i.aaz to i1
  br i1 %i.abb, label %bb.fp, label %bb.fq

bb.fp:                                            ; preds = %bb.fo
  %i.abc = load ptr, ptr %i.h, align 8
  %i.abd = getelementptr i8, ptr %i.abc, i64 6344
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %i.abd, ptr noundef nonnull @.str.15) #9
  br label %bb.fq

bb.fq:                                            ; preds = %bb.fp, %bb.fo, %bb.fn
  %i.abe = getelementptr i8, ptr %i.h, i64 640
  %i.abf = load ptr, ptr %i.v, align 8
  %i.abg = tail call fastcc i32 @pidff_find_fields(ptr noundef %i.abe, ptr noundef nonnull @pidff_pool, ptr noundef %i.abf, i32 noundef 3, i32 noundef 0, ptr noundef %i.i) #11, !srcloc !34 ; 0 uses
  %i.abh = getelementptr i8, ptr %i.h, i64 592    ; 2 uses
  %i.abi = load ptr, ptr %i.t, align 8
  %i.abj = tail call fastcc i32 @pidff_find_fields(ptr noundef %i.abh, ptr noundef nonnull @pidff_device_gain, ptr noundef %i.abi, i32 noundef 1, i32 noundef 1, ptr noundef %i.i) #11, !srcloc !35
  %.not74.i = icmp eq i32 %i.abj, 0
  br i1 %.not74.i, label %bb.fr, label %pidff_init_fields.exit

bb.fr:                                            ; preds = %bb.fq
  %i.abk = getelementptr i8, ptr %i.d, i64 196    ; 2 uses
  tail call void asm sideeffect ".pushsection .smp_locks,\22a\22\0A.balign 4\0A.long 671f - .\0A.popsection\0A671:\0A\09lock orb ${1:b},$0", "=*m,iq,*m,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i8) %i.abk, i32 1, ptr elementtype(i8) %i.abk) #12, !srcloc !27
  br label %pidff_init_fields.exit

pidff_init_fields.exit:                           ; preds = %bb.fr, %bb.fq
  %i.abl = load ptr, ptr %i.h, align 8            ; 4 uses
  %i.abm = getelementptr i8, ptr %i.abl, i64 7120
  %i.abn = getelementptr i8, ptr %i.h, i64 664
  br label %bb.ft

bb.fs:                                            ; preds = %bb.fv
  %i.abo = add nuw nsw i32 %.010.i, 1             ; 2 uses
  %exitcond.not.i = icmp eq i32 %i.abo, 20
  br i1 %exitcond.not.i, label %bb.fw, label %bb.ft, !llvm.loop !19

bb.ft:                                            ; preds = %bb.fs, %pidff_init_fields.exit
  %.010.i = phi i32 [ 0, %pidff_init_fields.exit ], [ %i.abo, %bb.fs ]
  %i.abp = load ptr, ptr %i.v, align 8
  tail call void @hid_hw_request(ptr noundef %i.abl, ptr noundef %i.abp, i32 noundef 1) #10
  %i.abq = load ptr, ptr %i.abm, align 8
  %i.abr = getelementptr i8, ptr %i.abq, i64 56
  %i.abs = load ptr, ptr %i.abr, align 8          ; 2 uses
  %.not.i.i68 = icmp eq ptr %i.abs, null
  br i1 %.not.i.i68, label %hid_hw_wait.exit.i, label %bb.fu

bb.fu:                                            ; preds = %bb.ft
  %i.abt = tail call i32 %i.abs(ptr noundef %i.abl) #10, !inline_history !20 ; 0 uses
  br label %hid_hw_wait.exit.i

hid_hw_wait.exit.i:                               ; preds = %bb.fu, %bb.ft
  %i.abu = load ptr, ptr %i.abn, align 8          ; 2 uses
  %.not.i69 = icmp eq ptr %i.abu, null
  br i1 %.not.i69, label %pidff_fetch_pool.exit, label %bb.fv

bb.fv:                                            ; preds = %hid_hw_wait.exit.i
  %i.abv = load i32, ptr %i.abu, align 4          ; 2 uses
  %i.abw = icmp sgt i32 %i.abv, 1
  br i1 %i.abw, label %pidff_fetch_pool.exit, label %bb.fs

bb.fw:                                            ; preds = %bb.fs
  %i.abx = getelementptr i8, ptr %i.abl, i64 6344
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %i.abx, ptr noundef nonnull @.str.28, i32 noundef %i.abv) #9
  br label %pidff_fetch_pool.exit

pidff_fetch_pool.exit:                            ; preds = %hid_hw_wait.exit.i, %bb.fv, %bb.fw
  %i.aby = load ptr, ptr %i.abh, align 8          ; 2 uses
  %.not.i70 = icmp eq ptr %i.aby, null
  br i1 %.not.i70, label %pidff_set_gain_report.exit, label %bb.fx

bb.fx:                                            ; preds = %pidff_fetch_pool.exit
  %i.abz = getelementptr i8, ptr %i.h, i64 600
  %.val4.i = load ptr, ptr %i.abz, align 8
  %i.aca = getelementptr i8, ptr %i.aby, i64 76
  %.val.val5.i = load i32, ptr %i.aca, align 4
  store i32 %.val.val5.i, ptr %.val4.i, align 4
  %i.acb = load ptr, ptr %i.h, align 8
  %i.acc = load ptr, ptr %i.t, align 8
  tail call void @hid_hw_request(ptr noundef %i.acb, ptr noundef %i.acc, i32 noundef 9) #10
  br label %pidff_set_gain_report.exit

pidff_set_gain_report.exit:                       ; preds = %pidff_fetch_pool.exit, %bb.fx
  %i.acd = tail call fastcc i32 @pidff_request_effect_upload(ptr noundef nonnull readonly %i.h, i32 noundef 1) #11, !srcloc !36 ; 2 uses
  %.not.i71 = icmp eq i32 %i.acd, 0
  br i1 %.not.i71, label %bb.fy, label %pidff_check_autocenter.exit

bb.fy:                                            ; preds = %pidff_set_gain_report.exit
  %i.ace = load ptr, ptr %i.am, align 8
  %i.acf = load i32, ptr %i.ace, align 4
  %i.acg = load ptr, ptr %i.aj, align 8
  %i.ach = getelementptr i8, ptr %i.acg, i64 72
  %i.aci = load i32, ptr %i.ach, align 8
  %i.acj = add i32 %i.aci, 1
  %i.ack = icmp eq i32 %i.acf, %i.acj
  br i1 %i.ack, label %bb.fz, label %bb.ga

bb.fz:                                            ; preds = %bb.fy
  tail call fastcc void @pidff_autocenter(ptr noundef nonnull readonly %i.h, i16 noundef zeroext -1) #11, !srcloc !37
  %i.acl = getelementptr i8, ptr %i.d, i64 196    ; 2 uses
  tail call void asm sideeffect ".pushsection .smp_locks,\22a\22\0A.balign 4\0A.long 671f - .\0A.popsection\0A671:\0A\09lock orb ${1:b},$0", "=*m,iq,*m,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i8) %i.acl, i32 2, ptr elementtype(i8) %i.acl) #12, !srcloc !27
  br label %bb.gb

bb.ga:                                            ; preds = %bb.fy
  %i.acm = load ptr, ptr %i.h, align 8
  %i.acn = getelementptr i8, ptr %i.acm, i64 6344
  tail call void (ptr, ptr, ...) @_dev_notice(ptr noundef %i.acn, ptr noundef nonnull @.str.30) #9
  br label %bb.gb

pidff_check_autocenter.exit:                      ; preds = %pidff_set_gain_report.exit
  %i.aco = load ptr, ptr %i.h, align 8
  %i.acp = getelementptr i8, ptr %i.aco, i64 6344
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %i.acp, ptr noundef nonnull @.str.29) #9
  br label %pidff_reports_ok.exit.thread

bb.gb:                                            ; preds = %bb.fz, %bb.ga
  %i.acq = load ptr, ptr %i.am, align 8
  %i.acr = load i32, ptr %i.acq, align 4
  %i.acs = getelementptr i8, ptr %i.h, i64 728
  %i.act = load ptr, ptr %i.acs, align 8
  store i32 %i.acr, ptr %i.act, align 4
  %i.acu = load ptr, ptr %i.h, align 8
  %i.acv = load ptr, ptr %i.z, align 8
  tail call void @hid_hw_request(ptr noundef %i.acu, ptr noundef %i.acv, i32 noundef 9) #10
  %i.acw = load ptr, ptr %i.aj, align 8           ; 2 uses
  %i.acx = getelementptr i8, ptr %i.acw, i64 76
  %i.acy = load i32, ptr %i.acx, align 4
  %i.acz = getelementptr i8, ptr %i.acw, i64 72
  %i.ada = load i32, ptr %i.acz, align 8
  %i.adb = add i32 %i.acy, 1
  %i.adc = sub i32 %i.adb, %i.ada
  %spec.store.select = tail call i32 @llvm.smin.i32(i32 %i.adc, i32 64)
  %i.add = getelementptr i8, ptr %i.h, i64 680
  %i.ade = load ptr, ptr %i.add, align 8          ; 2 uses
  %.not65 = icmp eq ptr %i.ade, null
  br i1 %.not65, label %bb.ge, label %bb.gc

bb.gc:                                            ; preds = %bb.gb
  %i.adf = load i32, ptr %i.ade, align 4
  %i.adg = icmp eq i32 %i.adf, 0
  br i1 %i.adg, label %bb.gd, label %bb.ge

bb.gd:                                            ; preds = %bb.gc
  %i.adh = getelementptr i8, ptr %0, i64 6344
  tail call void (ptr, ptr, ...) @_dev_notice(ptr noundef %i.adh, ptr noundef nonnull @.str) #9
  br label %pidff_reports_ok.exit.thread

bb.ge:                                            ; preds = %bb.gc, %bb.gb
  %i.adi = tail call i32 @input_ff_create(ptr noundef %i.d, i32 noundef %spec.store.select) #10 ; 2 uses
  %.not66 = icmp eq i32 %i.adi, 0
  br i1 %.not66, label %bb.gf, label %pidff_reports_ok.exit.thread

bb.gf:                                            ; preds = %bb.ge
  %i.adj = getelementptr i8, ptr %i.d, i64 248
  %i.adk = load ptr, ptr %i.adj, align 8          ; 6 uses
  %i.adl = getelementptr i8, ptr %i.adk, i64 56
  store ptr %i.h, ptr %i.adl, align 8
  store ptr @pidff_upload_effect, ptr %i.adk, align 8
  %i.adm = getelementptr i8, ptr %i.adk, i64 8
  store ptr @pidff_erase_effect, ptr %i.adm, align 8
  %i.adn = getelementptr i8, ptr %i.adk, i64 24
  store ptr @pidff_set_gain, ptr %i.adn, align 8
  %i.ado = getelementptr i8, ptr %i.adk, i64 32
  store ptr @pidff_set_autocenter, ptr %i.ado, align 8
  %i.adp = getelementptr i8, ptr %i.adk, i64 16
  store ptr @pidff_playback, ptr %i.adp, align 8
  %i.adq = getelementptr i8, ptr %i.d, i64 536
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %i.adq, ptr noundef nonnull @.str.1) #9
  tail call fastcc void @hid_device_io_stop(ptr noundef %0) #11, !srcloc !38
  br label %bb.gi

pidff_reports_ok.exit.thread:                     ; preds = %bb.bh, %bb.bj, %bb.bl, %bb.bn, %pidff_find_special_keys.exit154.thread.i.i, %bb.bf, %pidff_find_special_keys.exit188.thread.i.i, %pidff_find_special_keys.exit171.thread.i.i, %pidff_find_effects.exit.i, %bb.o, %bb.s, %bb.q, %bb.m, %bb.k, %bb.h, %bb.j, %bb.g, %bb.f, %bb.i, %hid_device_io_start.exit, %pidff_check_autocenter.exit, %pidff_reports_ok.exit, %bb.ge, %bb.gd
  %.056 = phi i32 [ -19, %bb.k ], [ %i.acd, %pidff_check_autocenter.exit ], [ -1, %bb.gd ], [ %i.adi, %bb.ge ], [ -19, %pidff_reports_ok.exit ], [ -19, %hid_device_io_start.exit ], [ -19, %bb.i ], [ -19, %bb.f ], [ -19, %bb.g ], [ -19, %bb.j ], [ -19, %bb.h ], [ -19, %bb.m ], [ -19, %bb.q ], [ -19, %bb.s ], [ -19, %bb.o ], [ -19, %pidff_find_effects.exit.i ], [ -19, %pidff_find_special_keys.exit171.thread.i.i ], [ -19, %pidff_find_special_keys.exit188.thread.i.i ], [ -19, %bb.bf ], [ -19, %pidff_find_special_keys.exit154.thread.i.i ], [ -19, %bb.bn ], [ -19, %bb.bl ], [ -19, %bb.bj ], [ -19, %bb.bh ]
  %i.adr = load i8, ptr %i.k, align 4, !range !14, !noundef !15
  %i.ads = trunc nuw i8 %i.adr to i1
  br i1 %i.ads, label %bb.gh, label %bb.gg

bb.gg:                                            ; preds = %pidff_reports_ok.exit.thread
  %i.adt = getelementptr i8, ptr %0, i64 6344
end_hunk_0

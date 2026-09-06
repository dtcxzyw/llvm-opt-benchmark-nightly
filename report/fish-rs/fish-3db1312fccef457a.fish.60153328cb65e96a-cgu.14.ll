Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/fish-rs/original/fish-3db1312fccef457a.fish.60153328cb65e96a-cgu.14?download=true
inline.NumInlined: 1814
inline.NumDeleted: 645
loop-unroll.NumCompletelyUnrolled: 27
loop-unroll.NumUnrolled: 27
begin_hunk_0_@_RNvNtNtCs8frGy5WneL6_4fish8builtins11commandline11commandline:bb.a

bb.cm:                                            ; preds = %bb.ag
  call void @llvm.lifetime.start.p0(ptr nonnull %i.s)
  invoke void @_RNvMs5_NtCs1xwejQucwHj_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.s, i64 noundef %i.fs, i1 noundef zeroext false, i64 noundef 4, i64 noundef 4)
          to label %bb.cn unwind label %.loopexit.split-lp1278.loopexit

.invoke3311:                                      ; preds = %bb.ag, %bb.af, %bb.ae, %bb.ad, %bb.q
  %i.ip = phi ptr [ @537, %bb.af ], [ @536, %bb.ae ], [ @535, %bb.ad ], [ @534, %bb.q ], [ @538, %bb.ag ]
  invoke void @_RNvNtCs3oUPovFnLWP_4core6option13unwrap_failed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.ip) #34
          to label %.cont3312 unwind label %.loopexit.split-lp1278.loopexit.split-lp

.cont3312:                                        ; preds = %.invoke3311
  unreachable

bb.cn:                                            ; preds = %bb.cm
  %i.iq = load i64, ptr %i.s, align 8, !range !10, !noundef !8
  %i.ir = trunc nuw i64 %i.iq to i1
  %i.is = load i64, ptr %i.ey, align 8, !range !30, !noundef !8 ; 4 uses
  br i1 %i.ir, label %bb.co, label %bb.cp, !prof !9

bb.co:                                            ; preds = %bb.cn
  %i.it = load i64, ptr %i.ez, align 8
  br label %.invoke3309

.invoke3309:                                      ; preds = %bb.ba, %bb.bk, %bb.bu, %bb.ce, %bb.co
  %i.iu = phi i64 [ %i.is, %bb.co ], [ %i.if, %bb.ce ], [ %i.ht, %bb.bu ], [ %i.hh, %bb.bk ], [ %i.gv, %bb.ba ]
  %i.iv = phi i64 [ %i.it, %bb.co ], [ %i.ig, %bb.ce ], [ %i.hu, %bb.bu ], [ %i.hi, %bb.bk ], [ %i.gw, %bb.ba ]
  invoke void @_RNvNtCs1xwejQucwHj_5alloc7raw_vec12handle_error(i64 noundef %i.iu, i64 %i.iv) #34
          to label %.cont3310 unwind label %.loopexit.split-lp1278.loopexit.split-lp

.cont3310:                                        ; preds = %.invoke3309
  unreachable

bb.cp:                                            ; preds = %bb.cn
  %i.iw = load ptr, ptr %i.ez, align 8, !nonnull !8, !noundef !8 ; 3 uses
  %i.ix = icmp ule i64 %i.fs, %i.is
  call void @llvm.assume(i1 %i.ix)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s)
  %.not711 = icmp eq i64 %i.fs, 0
  br i1 %.not711, label %bb.cq, label %bb.cu

bb.cq:                                            ; preds = %bb.cu, %bb.cp
  %i.iy = load i64, ptr %i.cy, align 8, !range !14, !alias.scope !1809, !noundef !8
  %i.iz = icmp eq i64 %i.iy, -1
  br i1 %i.iz, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringEECs8frGy5WneL6_4fish.exit820, label %bb.cr

bb.cr:                                            ; preds = %bb.cq
  invoke void @_RNvXsp_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecmENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.cy)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringECs8frGy5WneL6_4fish.exit.i816 unwind label %bb.cs

bb.cs:                                            ; preds = %bb.cr
  %i.ja = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecmENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.cy)
          to label %.body817 unwind label %bb.ct

bb.ct:                                            ; preds = %bb.cs
  %i.jb = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #30
  unreachable

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringECs8frGy5WneL6_4fish.exit.i816: ; preds = %bb.cr
  invoke void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecmENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.cy)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringEECs8frGy5WneL6_4fish.exit820 unwind label %bb.cv

bb.cu:                                            ; preds = %bb.cp
  %i.jc = shl nuw nsw i64 %i.fs, 2
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %i.iw, ptr nonnull align 4 %i.fr, i64 %i.jc, i1 false)
  br label %bb.cq

bb.cv:                                            ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringECs8frGy5WneL6_4fish.exit.i816
  %i.jd = landingpad { ptr, i32 }
          cleanup
  br label %.body817

.body817:                                         ; preds = %bb.cs, %bb.cv
  %eh.lpad-body818 = phi { ptr, i32 } [ %i.jd, %bb.cv ], [ %i.ja, %bb.cs ]
  store i64 %i.is, ptr %i.cy, align 8
  store ptr %i.iw, ptr %.sroa.5572.0..sroa_idx573, align 8
  store i64 %i.fs, ptr %.sroa.6575.0..sroa_idx576, align 8
  br label %.body886

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringEECs8frGy5WneL6_4fish.exit820: ; preds = %bb.cq, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringECs8frGy5WneL6_4fish.exit.i816
  store i64 %i.is, ptr %i.cy, align 8
  store ptr %i.iw, ptr %.sroa.5572.0..sroa_idx573, align 8
  store i64 %i.fs, ptr %.sroa.6575.0..sroa_idx576, align 8
  br label %.backedge3867

bb.cw:                                            ; preds = %bb.ai
  %i.je = load i64, ptr %i.eg, align 8, !noundef !8 ; 2 uses
  %i.jf = icmp ult i64 %i.fu, %i.je
  br i1 %i.jf, label %bb.cx, label %.invoke3307

bb.cx:                                            ; preds = %bb.cw
  %i.jg = load ptr, ptr %i.ef, align 8, !nonnull !8, !align !17, !noundef !8
  %i.jh = getelementptr inbounds nuw [16 x i8], ptr %i.jg, i64 %i.fu ; 2 uses
  %i.ji = load ptr, ptr %i.jh, align 8, !nonnull !8, !align !23, !noundef !8
  %i.jj = getelementptr inbounds nuw i8, ptr %i.jh, i64 8
  %i.jk = load i64, ptr %i.jj, align 8, !noundef !8
  br label %.invoke3304

bb.cy:                                            ; preds = %bb.aj
  %i.jl = load i64, ptr %i.eg, align 8, !noundef !8 ; 2 uses
  %i.jm = icmp ult i64 %i.fx, %i.jl
  br i1 %i.jm, label %bb.cz, label %.invoke3307

bb.cz:                                            ; preds = %bb.cy
  %i.jn = load ptr, ptr %i.ef, align 8, !nonnull !8, !align !17, !noundef !8
  %i.jo = getelementptr inbounds nuw [16 x i8], ptr %i.jn, i64 %i.fx ; 2 uses
  %i.jp = load ptr, ptr %i.jo, align 8, !nonnull !8, !align !23, !noundef !8
  %i.jq = getelementptr inbounds nuw i8, ptr %i.jo, i64 8
  %i.jr = load i64, ptr %i.jq, align 8, !noundef !8
  invoke void @_RNvNtNtNtCs8frGy5WneL6_4fish8builtins6shared4misc27builtin_unexpected_argument(ptr noundef nonnull align 8 %0, ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %1, ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) %i.ev, i64 noundef %i.ex, ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) %i.jp, i64 noundef %i.jr, i1 noundef zeroext true)
          to label %.loopexit1276 unwind label %.loopexit.split-lp1278.loopexit.split-lp

bb.da:                                            ; preds = %bb.ak
  %i.js = load i64, ptr %i.eg, align 8, !noundef !8 ; 2 uses
  %i.jt = icmp ult i64 %i.ga, %i.js
  br i1 %i.jt, label %bb.db, label %.invoke3307

bb.db:                                            ; preds = %bb.da
  %i.ju = load ptr, ptr %i.ef, align 8, !nonnull !8, !align !17, !noundef !8
  %i.jv = getelementptr inbounds nuw [16 x i8], ptr %i.ju, i64 %i.ga ; 2 uses
  %i.jw = load ptr, ptr %i.jv, align 8, !nonnull !8, !align !23, !noundef !8
  %i.jx = getelementptr inbounds nuw i8, ptr %i.jv, i64 8
  %i.jy = load i64, ptr %i.jx, align 8, !noundef !8
  invoke void @_RNvNtNtNtCs8frGy5WneL6_4fish8builtins6shared4misc22builtin_unknown_option(ptr noundef nonnull align 8 %0, ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %1, ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) %i.ev, i64 noundef %i.ex, ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) %i.jw, i64 noundef %i.jy, i1 noundef zeroext true)
          to label %.loopexit1276 unwind label %.loopexit.split-lp1278.loopexit.split-lp

.invoke3307:                                      ; preds = %bb.a, %bb.da, %bb.cy, %bb.cw
  %i.jz = phi i64 [ %i.fx, %bb.cy ], [ %i.fu, %bb.cw ], [ %i.ga, %bb.da ], [ 0, %bb.a ]
  %i.ka = phi i64 [ %i.jl, %bb.cy ], [ %i.je, %bb.cw ], [ %i.js, %bb.da ], [ 0, %bb.a ]
  %i.kb = phi ptr [ @542, %bb.cy ], [ @540, %bb.cw ], [ @544, %bb.da ], [ @527, %bb.a ]
  invoke void @_RNvNtCs3oUPovFnLWP_4core9panicking18panic_bounds_check(i64 noundef %i.jz, i64 noundef %i.ka, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.kb) #34
          to label %.cont3308 unwind label %.loopexit.split-lp1278.loopexit.split-lp

.cont3308:                                        ; preds = %.invoke3307
  unreachable

.loopexit1276:                                    ; preds = %.backedge, %.invoke3304, %.thread1253, %bb.ja, %bb.ji, %bb.lj, %bb.lw, %bb.kp, %bb.mo, %bb.mf, %bb.ek, %bb.em, %bb.eo, %bb.es, %bb.eq, %bb.lo, %bb.ka, %bb.dj, %bb.nc, %bb.dy, %bb.db, %bb.cz, %bb.ah, %bb.ax, %bb.nt, %bb.nv, %bb.dv, %bb.mq, %bb.mv, %bb.mx, %bb.mz
  %.sroa.0495.2 = phi i8 [ 1, %bb.mz ], [ 1, %bb.nv ], [ 1, %bb.dj ], [ 1, %.invoke3304 ], [ 1, %bb.nt ], [ 1, %bb.dy ], [ 1, %bb.mx ], [ 1, %bb.mq ], [ 1, %bb.db ], [ 1, %bb.ka ], [ 1, %bb.mv ], [ 1, %bb.dv ], [ 1, %bb.cz ], [ 1, %bb.lo ], [ 1, %bb.ah ], [ 1, %bb.ax ], [ 1, %bb.nc ], [ 1, %bb.mo ], [ 1, %bb.ja ], [ 1, %bb.lw ], [ 1, %bb.lj ], [ 1, %bb.kp ], [ 1, %bb.eo ], [ %.sroa.0495.121258, %.thread1253 ], [ 1, %bb.mf ], [ 1, %bb.ek ], [ 1, %bb.em ], [ 1, %bb.eq ], [ 1, %bb.ji ], [ 1, %bb.es ], [ 1, %.backedge ] ; 6 uses
  %.sroa.61103.1 = phi i64 [ 8589934592, %bb.mz ], [ 8589934592, %bb.nv ], [ 0, %bb.dj ], [ 8589934592, %.invoke3304 ], [ 8589934592, %bb.nt ], [ 4294967296, %bb.dy ], [ 8589934592, %bb.mx ], [ 8589934592, %bb.mq ], [ 8589934592, %bb.db ], [ 0, %bb.ka ], [ 8589934592, %bb.mv ], [ 8589934592, %bb.dv ], [ 8589934592, %bb.cz ], [ 0, %bb.lo ], [ 8589934592, %bb.ah ], [ 8589934592, %bb.ax ], [ 0, %bb.nc ], [ 8589934592, %bb.mo ], [ 0, %bb.ja ], [ 8589934592, %bb.lw ], [ 8589934592, %bb.lj ], [ 8589934592, %bb.kp ], [ %.736, %bb.eo ], [ %.sroa.61103.31259, %.thread1253 ], [ 8589934592, %bb.mf ], [ %., %bb.ek ], [ %.734, %bb.em ], [ 4294967296, %bb.eq ], [ 0, %bb.ji ], [ 4294967296, %bb.es ], [ 0, %.backedge ] ; 2 uses
  %.sroa.0.1 = phi i64 [ 1, %bb.mz ], [ 1, %bb.nv ], [ 0, %bb.dj ], [ 1, %.invoke3304 ], [ 1, %bb.nt ], [ 1, %bb.dy ], [ 1, %bb.mx ], [ 1, %bb.mq ], [ 1, %bb.db ], [ 0, %bb.ka ], [ 1, %bb.mv ], [ 1, %bb.dv ], [ 1, %bb.cz ], [ 0, %bb.lo ], [ 0, %bb.ah ], [ 1, %bb.ax ], [ 0, %bb.nc ], [ 1, %bb.mo ], [ 0, %bb.ja ], [ 1, %bb.lw ], [ 1, %bb.lj ], [ 1, %bb.kp ], [ %.737, %bb.eo ], [ %.sroa.0.31260, %.thread1253 ], [ 1, %bb.mf ], [ %.733, %bb.ek ], [ %.735, %bb.em ], [ 1, %bb.eq ], [ 0, %bb.ji ], [ 1, %bb.es ], [ 0, %.backedge ] ; 2 uses
  invoke void @_RNvXsp_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecINtNtB7_6borrow3CowNtNtCslLGyqsphxMB_10widestring6utfstr8Utf32StrEENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(136) %i.cw)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecINtNtBG_6borrow3CowNtNtCslLGyqsphxMB_10widestring6utfstr8Utf32StrEEECs8frGy5WneL6_4fish.exit.i unwind label %bb.dc

bb.dc:                                            ; preds = %.loopexit1276
  %i.kc = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecINtNtB7_6borrow3CowNtNtCslLGyqsphxMB_10widestring6utfstr8Utf32StrEENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(136) %i.cw)
          to label %.body821.thread unwind label %bb.dd

bb.dd:                                            ; preds = %bb.dc
  %i.kd = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #30
  unreachable

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecINtNtBG_6borrow3CowNtNtCslLGyqsphxMB_10widestring6utfstr8Utf32StrEEECs8frGy5WneL6_4fish.exit.i: ; preds = %.loopexit1276
  invoke void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecINtNtB7_6borrow3CowNtNtCslLGyqsphxMB_10widestring6utfstr8Utf32StrEENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(136) %i.cw)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtCshMbxjpSxucW_12fish_wgetopt9WGetopterECs8frGy5WneL6_4fish.exit unwind label %.body821.thread1248

bb.de:                                            ; preds = %bb.f
  %i.ke = load i64, ptr %i.eg, align 8, !noundef !8 ; 5 uses
  %i.kf = load i64, ptr %i.ep, align 8, !noundef !8 ; 6 uses
  %i.kg = sub i64 %i.ke, %i.kf                    ; 3 uses
  %i.kh = icmp ult i64 %i.ke, %i.kf
  br i1 %i.kh, label %.invoke3305, label %bb.df

bb.df:                                            ; preds = %bb.de
  br i1 %.sroa.0118.0, label %bb.dh, label %bb.dg

bb.dg:                                            ; preds = %bb.df
  br i1 %.sroa.0119.0, label %bb.dj, label %bb.di

bb.dh:                                            ; preds = %bb.df
  %i.ki = trunc nuw i8 %.sroa.0110.0 to i1
  %i.kj = and i8 %.sroa.0114.0, %.sroa.0104.0
  %i.kk = icmp ne i8 %i.kj, -1
  %or.cond742.not = or i1 %i.kk, %i.ki
  br i1 %or.cond742.not, label %bb.nd, label %bb.ne

bb.di:                                            ; preds = %bb.dg
  %i.kl = trunc nuw i8 %.sroa.0127.0 to i1
  %i.km = trunc nuw i8 %.sroa.0130.0 to i1
  %i.kn = or i8 %.sroa.0127.0, %.sroa.0130.0
  %or.cond7.not3864 = icmp eq i8 %i.kn, 0
  %i.ko = icmp eq i64 %i.ke, %i.kf                ; 7 uses
  %or.cond8 = or i1 %i.ko, %or.cond7.not3864
  br i1 %or.cond8, label %bb.dk, label %bb.dl

bb.dj:                                            ; preds = %bb.dg
  %i.kp = load i64, ptr %i.da, align 8, !range !10, !noundef !8
  %i.kq = trunc nuw i64 %i.kp to i1
  br i1 %i.kq, label %bb.na, label %.loopexit1276

bb.dk:                                            ; preds = %bb.di
  %i.kr = trunc nuw i8 %.sroa.0143.0 to i1
  %i.ks = trunc nuw i8 %.sroa.0133.0 to i1        ; 2 uses
  %4 = trunc nuw i8 %.sroa.0120.0 to i1           ; 3 uses
  %i.kt = or i8 %.sroa.0120.0, %.sroa.0139.0
  %5 = or i8 %.sroa.0133.0, %i.kt
  %i.ku = or i8 %5, %.sroa.0143.0
  %or.cond17.not = icmp eq i8 %i.ku, 0
  br i1 %or.cond17.not, label %bb.dn, label %bb.dm

bb.dl:                                            ; preds = %bb.di
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ci)
  %i.kv = invoke { ptr, i64 } @_RNvMNtNtCs8frGy5WneL6_4fish12localization7gettextNtB2_17LocalizableString8localize(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @588)
          to label %bb.my unwind label %.loopexit.split-lp1278.loopexit.split-lp ; 2 uses

bb.dm:                                            ; preds = %bb.dk
  %.old = icmp ugt i64 %i.kg, 1
  br i1 %.old, label %bb.dp, label %bb.do

bb.dn:                                            ; preds = %bb.dk
  %i.kw = trunc nuw i8 %.sroa.0147.0 to i1
  %i.kx = icmp ugt i64 %i.kg, 1
  %or.cond11 = and i1 %i.kx, %i.kw
  br i1 %or.cond11, label %bb.dp, label %bb.do

bb.do:                                            ; preds = %bb.dn, %bb.dm
  %.not667.not = icmp eq i8 %.sroa.0104.0, -1     ; 2 uses
  br i1 %.not667.not, label %bb.dq, label %.thread

bb.dp:                                            ; preds = %bb.dn, %bb.dm
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ch)
  %i.ky = invoke { ptr, i64 } @_RNvMNtNtCs8frGy5WneL6_4fish12localization7gettextNtB2_17LocalizableString8localize(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @588)
          to label %bb.mw unwind label %.loopexit.split-lp1278.loopexit.split-lp ; 2 uses

bb.dq:                                            ; preds = %bb.do
  %i.kz = icmp ne i8 %.sroa.0327.0, -1
  %i.la = or i8 %.sroa.0153.0, %.sroa.0110.0
  %i.lb = icmp ne i8 %i.la, 0
  %or.cond23 = or i1 %i.kz, %i.lb
  br i1 %or.cond23, label %bb.dr, label %bb.ds

bb.dr:                                            ; preds = %bb.dq
  %i.lc = trunc nuw i8 %.sroa.0110.0 to i1
  %i.ld = or i8 %.sroa.0139.0, %.sroa.0143.0
  %i.le = or i8 %.sroa.0147.0, %i.ld
  %i.lf = or i8 %.sroa.0133.0, %i.le
  %i.lg = or i8 %i.lf, %.sroa.0120.0
  %or.cond35 = icmp ne i8 %i.lg, 0
  %6 = trunc nuw i8 %.sroa.0151.0 to i1
  %or.cond38 = or i1 %or.cond35, %6
  %i.lh = and i8 %.sroa.0153.0, %.sroa.0120.0
  %or.cond41 = icmp eq i8 %i.lh, 0
  %or.cond1268.not = and i1 %or.cond41, %or.cond38
  br i1 %or.cond1268.not, label %bb.dt, label %bb.ds

.thread:                                          ; preds = %bb.do
  %i.li = or i8 %.sroa.0139.0, %.sroa.0143.0
  %i.lj = or i8 %.sroa.0147.0, %i.li
  %i.lk = or i8 %.sroa.0133.0, %i.lj
  %i.ll = or i8 %i.lk, %.sroa.0120.0
  %or.cond351232 = icmp ne i8 %i.ll, 0
  %7 = trunc nuw i8 %.sroa.0151.0 to i1
  %or.cond381233 = or i1 %or.cond351232, %7
  %or.cond381233.not = xor i1 %or.cond381233, true
  %brmerge1266 = or i1 %or.cond381233.not, %4
  br i1 %brmerge1266, label %.thread._crit_edge, label %bb.dt

.thread._crit_edge:                               ; preds = %.thread
  %.pre2627 = trunc nuw i8 %.sroa.0110.0 to i1
  br label %bb.ds

bb.ds:                                            ; preds = %.thread._crit_edge, %bb.dr, %bb.dq
  %.pre-phi = phi i1 [ %.pre2627, %.thread._crit_edge ], [ %i.lc, %bb.dr ], [ false, %bb.dq ] ; 2 uses
  %i.lm = icmp ne i8 %.sroa.0327.0, -1
  %or.cond44 = select i1 %i.lm, i1 true, i1 %.pre-phi
  %or.cond44.not = xor i1 %or.cond44, true
  %or.cond46 = or i1 %i.ko, %or.cond44.not
  br i1 %or.cond46, label %bb.dw, label %bb.dx

bb.dt:                                            ; preds = %bb.dr, %.thread
  call void @llvm.lifetime.start.p0(ptr nonnull %i.cg)
  %i.ln = invoke { ptr, i64 } @_RNvMNtNtCs8frGy5WneL6_4fish12localization7gettextNtB2_17LocalizableString8localize(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @548)
          to label %bb.du unwind label %.loopexit.split-lp1278.loopexit.split-lp ; 2 uses

bb.du:                                            ; preds = %bb.dt
  %i.lo = extractvalue { ptr, i64 } %i.ln, 0
  %i.lp = extractvalue { ptr, i64 } %i.ln, 1
  store i64 -1, ptr %i.cg, align 8, !alias.scope !1810
  %.sroa.01002.sroa.0.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.cg, i64 8
  store ptr %i.lo, ptr %.sroa.01002.sroa.0.sroa.4.0..sroa_idx, align 8, !alias.scope !1810
  %.sroa.01002.sroa.0.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.cg, i64 16
  store i64 %i.lp, ptr %.sroa.01002.sroa.0.sroa.5.0..sroa_idx, align 8, !alias.scope !1810
  %.sroa.01002.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.cg, i64 24
  store ptr %i.ev, ptr %.sroa.01002.sroa.4.0..sroa_idx, align 8, !alias.scope !1810
  %.sroa.01002.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.cg, i64 32
  store i64 %i.ex, ptr %.sroa.01002.sroa.5.0..sroa_idx, align 8, !alias.scope !1810
  %.sroa.01002.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.cg, i64 40
  store ptr null, ptr %.sroa.01002.sroa.6.0..sroa_idx, align 8, !alias.scope !1810
  %.sroa.41003.0..sroa_idx1004 = getelementptr inbounds nuw i8, ptr %i.cg, i64 56
  store ptr %0, ptr %.sroa.41003.0..sroa_idx1004, align 8, !alias.scope !1810
  %.sroa.51006.0..sroa_idx1007 = getelementptr inbounds nuw i8, ptr %i.cg, i64 64
  store i8 1, ptr %.sroa.51006.0..sroa_idx1007, align 8, !alias.scope !1810
  invoke void @_RNvMNtNtNtCs8frGy5WneL6_4fish8builtins6shared5errorNtB2_5Error6finish(ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(72) %i.cg, ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %1)
          to label %bb.dv unwind label %.loopexit.split-lp1278.loopexit.split-lp

bb.dv:                                            ; preds = %bb.du
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cg)
  br label %.loopexit1276

bb.dw:                                            ; preds = %bb.ds
  %i.lq = trunc nuw i8 %.sroa.0153.0 to i1        ; 5 uses
  %i.lr = and i8 %.sroa.0104.0, %.sroa.0327.0
  %brmerge = icmp ne i8 %i.lr, -1
  %or.cond745 = and i1 %brmerge, %i.lq
  br i1 %or.cond745, label %bb.dz, label %bb.dy

bb.dx:                                            ; preds = %bb.ds
  call void @llvm.lifetime.start.p0(ptr nonnull %i.cf)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ce)
  store i64 0, ptr %i.ce, align 8
  %.sroa.4582.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ce, i64 8
  store ptr inttoptr (i64 4 to ptr), ptr %.sroa.4582.0..sroa_idx, align 8
  %.sroa.5583.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ce, i64 16
  store i64 0, ptr %.sroa.5583.0..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.cd)
  %i.ls = invoke { ptr, i64 } @_RNvMNtNtCs8frGy5WneL6_4fish12localization7gettextNtB2_17LocalizableString8localize(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @531)
          to label %bb.mr unwind label %.loopexit.split-lp1330 ; 2 uses

bb.dy:                                            ; preds = %bb.dw
  %i.lt = icmp ne i8 %.sroa.0114.0, -1            ; 2 uses
  %or.cond48 = and i1 %i.lt, %i.ko
  br i1 %or.cond48, label %.loopexit1276, label %bb.ea

bb.dz:                                            ; preds = %bb.dw
  call void @llvm.lifetime.start.p0(ptr nonnull %i.cb)
  %i.lu = invoke { ptr, i64 } @_RNvMNtNtCs8frGy5WneL6_4fish12localization7gettextNtB2_17LocalizableString8localize(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @548)
          to label %bb.mp unwind label %.loopexit.split-lp1278.loopexit.split-lp ; 2 uses

bb.ea:                                            ; preds = %bb.dy
  %.sroa.0114.0. = select i1 %i.lt, i8 %.sroa.0114.0, i8 0 ; 2 uses
  %.sroa.0104.0.load109375 = select i1 %.not667.not, i8 0, i8 %.sroa.0104.0 ; 3 uses
  %i.lv = icmp eq i8 %.sroa.0114.0., 2
  br i1 %i.lv, label %bb.eb, label %bb.ec

bb.eb:                                            ; preds = %bb.ea
  br i1 %i.lq, label %bb.ee, label %bb.ed

bb.ec:                                            ; preds = %bb.ed, %bb.ea
  %i.lw = or i8 %.sroa.0133.0, %.sroa.0139.0
  %or.cond51.not = icmp eq i8 %i.lw, 0
  br i1 %or.cond51.not, label %bb.ei, label %bb.eh

bb.ed:                                            ; preds = %bb.eb
  %i.lx = icmp eq i8 %.sroa.0104.0.load109375, 3
  br i1 %i.lx, label %bb.eg, label %bb.ec

bb.ee:                                            ; preds = %bb.eb
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ca)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bz)
  store i64 0, ptr %i.bz, align 8
  %.sroa.4585.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bz, i64 8
  store ptr inttoptr (i64 4 to ptr), ptr %.sroa.4585.0..sroa_idx, align 8
  %.sroa.5586.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bz, i64 16
  store i64 0, ptr %.sroa.5586.0..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.by)
  %i.ly = invoke { ptr, i64 } @_RNvMNtNtCs8frGy5WneL6_4fish12localization7gettextNtB2_17LocalizableString8localize(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @579)
          to label %bb.mi unwind label %bb.mh     ; 2 uses

bb.ef:                                            ; preds = %bb.gb
  unreachable

bb.eg:                                            ; preds = %bb.ed
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bw)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bv)
  store i64 0, ptr %i.bv, align 8
  %.sroa.4588.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bv, i64 8
  store ptr inttoptr (i64 4 to ptr), ptr %.sroa.4588.0..sroa_idx, align 8
  %.sroa.5589.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bv, i64 16
  store i64 0, ptr %.sroa.5589.0..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bu)
  %i.lz = invoke { ptr, i64 } @_RNvMNtNtCs8frGy5WneL6_4fish12localization7gettextNtB2_17LocalizableString8localize(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @579)
          to label %bb.lz unwind label %bb.ly     ; 2 uses

bb.eh:                                            ; preds = %bb.ec
  br i1 %i.ko, label %bb.jj, label %bb.kb

bb.ei:                                            ; preds = %bb.ec
  br i1 %i.kr, label %bb.ek, label %bb.ej

bb.ej:                                            ; preds = %bb.ei
  %i.ma = trunc nuw i8 %.sroa.0147.0 to i1
  br i1 %i.ma, label %bb.em, label %bb.el

bb.ek:                                            ; preds = %bb.ei
  %i.mb = getelementptr inbounds nuw i8, ptr %i.da, i64 98
  %i.mc = load i8, ptr %i.mb, align 2, !range !11, !noundef !8
  %i.md = trunc nuw i8 %i.mc to i1                ; 2 uses
  %. = select i1 %i.md, i64 0, i64 4294967296
  %not.1270 = xor i1 %i.md, true
  %.733 = zext i1 %not.1270 to i64
  br label %.loopexit1276

bb.el:                                            ; preds = %bb.ej
  %i.me = trunc nuw i8 %.sroa.0151.0 to i1
  br i1 %i.me, label %bb.eo, label %bb.en

bb.em:                                            ; preds = %bb.ej
  %i.mf = getelementptr inbounds nuw i8, ptr %i.da, i64 96
  %i.mg = load i8, ptr %i.mf, align 8, !range !11, !noundef !8
  %i.mh = trunc nuw i8 %i.mg to i1                ; 2 uses
  %.734 = select i1 %i.mh, i64 0, i64 4294967296
  %not.1269 = xor i1 %i.mh, true
  %.735 = zext i1 %not.1269 to i64
  br label %.loopexit1276

bb.en:                                            ; preds = %bb.el
  br i1 %i.kl, label %bb.eq, label %bb.ep

bb.eo:                                            ; preds = %bb.el
  %i.mi = getelementptr inbounds nuw i8, ptr %i.da, i64 96
  %i.mj = load i8, ptr %i.mi, align 8, !range !11, !noundef !8
  %i.mk = trunc nuw i8 %i.mj to i1
  %i.ml = getelementptr inbounds nuw i8, ptr %i.da, i64 97
  %i.mm = load i8, ptr %i.ml, align 1, !range !11
  %i.mn = trunc nuw i8 %i.mm to i1
  %or.cond63 = select i1 %i.mk, i1 %i.mn, i1 false ; 2 uses
  %.736 = select i1 %or.cond63, i64 0, i64 4294967296
  %not.or.cond63 = xor i1 %or.cond63, true
  %.737 = zext i1 %not.or.cond63 to i64
  br label %.loopexit1276

bb.ep:                                            ; preds = %bb.en
  br i1 %i.km, label %bb.es, label %bb.er

bb.eq:                                            ; preds = %bb.en
  %i.mo = load i64, ptr %i.da, align 8, !range !10, !noundef !8
  %i.mp = trunc nuw i64 %i.mo to i1
  br i1 %i.mp, label %bb.jb, label %.loopexit1276

bb.er:                                            ; preds = %bb.ep
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ao)
  br i1 %i.lq, label %bb.eu, label %bb.et

bb.es:                                            ; preds = %bb.ep
  %i.mq = load i64, ptr %i.da, align 8, !range !10, !noundef !8
  %i.mr = trunc nuw i64 %i.mq to i1
  br i1 %i.mr, label %bb.it, label %.loopexit1276

bb.et:                                            ; preds = %bb.er
  %i.ms = load i64, ptr %i.cz, align 8, !range !14, !noundef !8
  %.not670 = icmp eq i64 %i.ms, -1
  br i1 %.not670, label %bb.ez, label %bb.ev

bb.eu:                                            ; preds = %bb.er
  %i.mt = getelementptr inbounds nuw i8, ptr %i.da, i64 48 ; 2 uses
  %i.mu = load i64, ptr %i.mt, align 8, !range !14, !noundef !8
  %.not673 = icmp eq i64 %i.mu, -1
  br i1 %.not673, label %.thread1253, label %bb.fw

bb.ev:                                            ; preds = %bb.et
  %i.mv = load i64, ptr %.sroa.6519.0..sroa_idx520, align 8, !noundef !8 ; 2 uses
  %i.mw = icmp ult i64 %i.mv, 2305843009213693952
  call void @llvm.assume(i1 %i.mw)
  br label %bb.ew

bb.ew:                                            ; preds = %bb.fd, %bb.fr, %bb.fw, %bb.ev
  %.sroa.0450.0 = phi ptr [ %i.ao, %bb.fw ], [ %i.cz, %bb.ev ], [ %i.ao, %bb.fr ], [ %i.nl, %bb.fd ] ; 15 uses
  %.sroa.0464.0 = phi i64 [ %i.or, %bb.fw ], [ %i.mv, %bb.ev ], [ %i.ol, %bb.fr ], [ %i.nn, %bb.fd ] ; 7 uses
  %.sroa.0492.0 = phi i8 [ 1, %bb.fw ], [ 0, %bb.ev ], [ 1, %bb.fr ], [ 0, %bb.fd ] ; 20 uses
  %.sroa.0495.3 = phi i8 [ 0, %bb.fw ], [ 1, %bb.ev ], [ 1, %bb.fr ], [ 1, %bb.fd ] ; 27 uses
  br i1 %.sroa.0160.0, label %bb.fy, label %bb.fx

bb.ex:                                            ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueANtNtCs1HV6ixfL8cZ_11fish_printf3arg3Argj1_ECs8frGy5WneL6_4fish.exit837, %bb.hy, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueANtNtCs1HV6ixfL8cZ_11fish_printf3arg3Argj1_ECs8frGy5WneL6_4fish.exit833, %bb.gv, %bb.ey
  %.sroa.0492.1 = phi i8 [ %.sroa.0492.2, %bb.ey ], [ %.sroa.0492.0, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueANtNtCs1HV6ixfL8cZ_11fish_printf3arg3Argj1_ECs8frGy5WneL6_4fish.exit833 ], [ %.sroa.0492.0, %bb.hy ], [ %.sroa.0492.0, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueANtNtCs1HV6ixfL8cZ_11fish_printf3arg3Argj1_ECs8frGy5WneL6_4fish.exit837 ], [ %.sroa.0492.0, %bb.gv ]
  %.sroa.0495.4 = phi i8 [ %.sroa.0495.5, %bb.ey ], [ %.sroa.0495.3, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueANtNtCs1HV6ixfL8cZ_11fish_printf3arg3Argj1_ECs8frGy5WneL6_4fish.exit833 ], [ %.sroa.0495.3, %bb.hy ], [ %.sroa.0495.3, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueANtNtCs1HV6ixfL8cZ_11fish_printf3arg3Argj1_ECs8frGy5WneL6_4fish.exit837 ], [ %.sroa.0495.3, %bb.gv ] ; 2 uses
  %.pn681 = phi { ptr, i32 } [ %i.my, %bb.ey ], [ %.pn679, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueANtNtCs1HV6ixfL8cZ_11fish_printf3arg3Argj1_ECs8frGy5WneL6_4fish.exit833 ], [ %i.sm, %bb.hy ], [ %.pn677, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueANtNtCs1HV6ixfL8cZ_11fish_printf3arg3Argj1_ECs8frGy5WneL6_4fish.exit837 ], [ %i.ra, %bb.gv ] ; 2 uses
  %i.mx = trunc nuw i8 %.sroa.0492.1 to i1
  br i1 %i.mx, label %bb.ir, label %.body886

bb.ey:                                            ; preds = %.invoke3317, %.invoke3315, %bb.gf, %bb.ge, %bb.gm, %bb.io, %bb.ik, %.noexc838, %bb.ib, %bb.hz, %bb.gw, %bb.gt, %bb.gs, %bb.gg, %bb.ga, %bb.fu, %bb.fi, %bb.fc
  %.sroa.0492.2 = phi i8 [ %.sroa.0492.0, %bb.io ], [ %.sroa.0492.0, %bb.ga ], [ %.sroa.0492.0, %bb.hz ], [ %.sroa.0492.0, %bb.ik ], [ 0, %bb.fi ], [ %.sroa.0492.0, %bb.gg ], [ %.sroa.0492.0, %.noexc838 ], [ 0, %.invoke3315 ], [ 0, %bb.fc ], [ 0, %bb.fu ], [ %.sroa.0492.0, %bb.ib ], [ %.sroa.0492.0, %.invoke3317 ], [ %.sroa.0492.0, %bb.gm ], [ %.sroa.0492.0, %bb.gf ], [ %.sroa.0492.0, %bb.gw ], [ %.sroa.0492.0, %bb.ge ], [ %.sroa.0492.0, %bb.gt ], [ %.sroa.0492.0, %bb.gs ]
  %.sroa.0495.5 = phi i8 [ %.sroa.0495.3, %bb.io ], [ %.sroa.0495.3, %bb.ga ], [ %.sroa.0495.3, %bb.hz ], [ %.sroa.0495.3, %bb.ik ], [ 1, %bb.fi ], [ %.sroa.0495.3, %bb.gg ], [ %.sroa.0495.3, %.noexc838 ], [ 1, %.invoke3315 ], [ 1, %bb.fc ], [ 1, %bb.fu ], [ %.sroa.0495.3, %bb.ib ], [ %.sroa.0495.3, %.invoke3317 ], [ %.sroa.0495.3, %bb.gm ], [ %.sroa.0495.3, %bb.gf ], [ %.sroa.0495.3, %bb.gw ], [ %.sroa.0495.3, %bb.ge ], [ %.sroa.0495.3, %bb.gt ], [ %.sroa.0495.3, %bb.gs ]
  %i.my = landingpad { ptr, i32 }
          cleanup
  br label %bb.ex

bb.ez:                                            ; preds = %bb.et
  %i.mz = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 2 uses
  %i.na = load ptr, ptr %i.mz, align 8, !nonnull !8, !noundef !8 ; 2 uses
  %i.nb = getelementptr inbounds nuw i8, ptr %i.na, i64 16 ; 3 uses
  %i.nc = load i64, ptr %i.nb, align 8, !noalias !1811, !noundef !8 ; 3 uses
  %i.nd = icmp ult i64 %i.nc, 9223372036854775807
  br i1 %i.nd, label %bb.fa, label %.invoke3315, !prof !24

bb.fa:                                            ; preds = %bb.ez
  %i.ne = add nuw nsw i64 %i.nc, 1
  store i64 %i.ne, ptr %i.nb, align 8, !noalias !1811
  %i.nf = getelementptr inbounds nuw i8, ptr %i.na, i64 24
  %i.ng = load i64, ptr %i.nf, align 8, !range !14, !noundef !8
  %.not671 = icmp eq i64 %i.ng, -1
  store i64 %i.nc, ptr %i.nb, align 8
  br i1 %.not671, label %bb.fb, label %bb.fk

bb.fb:                                            ; preds = %bb.fa
  %i.nh = getelementptr inbounds nuw i8, ptr %0, i64 424
  %i.ni = load i8, ptr %i.nh, align 8, !range !11, !noundef !8
  %i.nj = trunc nuw i8 %i.ni to i1
  br i1 %i.nj, label %bb.fd, label %bb.fc

bb.fc:                                            ; preds = %bb.fb
  %i.nk = invoke noundef zeroext i1 @_RNvNtCs8frGy5WneL6_4fish4proc22is_interactive_session()
          to label %bb.fe unwind label %bb.ey

bb.fd:                                            ; preds = %bb.fe, %bb.fb
  %i.nl = getelementptr inbounds nuw i8, ptr %i.da, i64 24
  %i.nm = getelementptr inbounds nuw i8, ptr %i.da, i64 80
  %i.nn = load i64, ptr %i.nm, align 8, !noundef !8
  br label %bb.ew

bb.fe:                                            ; preds = %bb.fc
  br i1 %i.nk, label %bb.fd, label %bb.ff

bb.ff:                                            ; preds = %bb.fe
  call void @llvm.lifetime.start.p0(ptr nonnull %i.al)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ak)
  %i.no = getelementptr inbounds nuw i8, ptr %i.ak, i64 8
  store ptr @551, ptr %i.no, align 8
  %i.np = getelementptr inbounds nuw i8, ptr %i.ak, i64 16
  store i64 47, ptr %i.np, align 8
  store i64 -1, ptr %i.ak, align 8
  %i.nq = invoke { ptr, i64 } @_RNvMNtNtCs8frGy5WneL6_4fish12localization7gettextNtB2_17LocalizableString8localize(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.ak)
          to label %bb.fh unwind label %bb.fg     ; 2 uses

bb.fg:                                            ; preds = %bb.fh, %bb.ff
  %i.nr = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCs8frGy5WneL6_4fish12localization7gettext17LocalizableStringEBH_(ptr noalias nofree noundef align 8 dereferenceable(24) %i.ak) #29
          to label %.body886 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.fh:                                            ; preds = %bb.ff
  %i.ns = extractvalue { ptr, i64 } %i.nq, 0
  %i.nt = extractvalue { ptr, i64 } %i.nq, 1
  store i64 -1, ptr %i.al, align 8, !alias.scope !1812
  %.sroa.01189.sroa.0.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.al, i64 8
  store ptr %i.ns, ptr %.sroa.01189.sroa.0.sroa.4.0..sroa_idx, align 8, !alias.scope !1812
  %.sroa.01189.sroa.0.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.al, i64 16
  store i64 %i.nt, ptr %.sroa.01189.sroa.0.sroa.5.0..sroa_idx, align 8, !alias.scope !1812
  %.sroa.01189.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.al, i64 24
  store ptr %i.ev, ptr %.sroa.01189.sroa.4.0..sroa_idx, align 8, !alias.scope !1812
  %.sroa.01189.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.al, i64 32
  store i64 %i.ex, ptr %.sroa.01189.sroa.5.0..sroa_idx, align 8, !alias.scope !1812
  %.sroa.01189.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.al, i64 40
  store ptr null, ptr %.sroa.01189.sroa.6.0..sroa_idx, align 8, !alias.scope !1812
  %.sroa.41190.0..sroa_idx1191 = getelementptr inbounds nuw i8, ptr %i.al, i64 56
  store ptr %0, ptr %.sroa.41190.0..sroa_idx1191, align 8, !alias.scope !1812
  %.sroa.51193.0..sroa_idx1194 = getelementptr inbounds nuw i8, ptr %i.al, i64 64
  store i8 1, ptr %.sroa.51193.0..sroa_idx1194, align 8, !alias.scope !1812
  invoke void @_RNvMNtNtNtCs8frGy5WneL6_4fish8builtins6shared5errorNtB2_5Error6finish(ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(72) %i.al, ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %1)
          to label %bb.fi unwind label %bb.fg

bb.fi:                                            ; preds = %bb.fh
  call void @llvm.lifetime.end.p0(ptr nonnull %i.al)
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCs8frGy5WneL6_4fish12localization7gettext17LocalizableStringEBH_(ptr noalias nofree noundef align 8 dereferenceable(24) %i.ak)
          to label %bb.fj unwind label %bb.ey

bb.fj:                                            ; preds = %bb.fi
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ak)
  br label %.thread1253

bb.fk:                                            ; preds = %bb.fa
  %.not = xor i1 %4, true
  %or.cond53 = or i1 %i.ko, %.not
  br i1 %or.cond53, label %bb.fm, label %bb.fl

bb.fl:                                            ; preds = %bb.fk
  call void @llvm.lifetime.start.p0(ptr nonnull %i.an)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.am)
  %i.nu = getelementptr inbounds nuw i8, ptr %i.am, i64 8
  store ptr @554, ptr %i.nu, align 8
  %i.nv = getelementptr inbounds nuw i8, ptr %i.am, i64 16
  store i64 75, ptr %i.nv, align 8
  store i64 -1, ptr %i.am, align 8
  %i.nw = invoke { ptr, i64 } @_RNvMNtNtCs8frGy5WneL6_4fish12localization7gettextNtB2_17LocalizableString8localize(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.am)
          to label %bb.ft unwind label %bb.fs     ; 2 uses

bb.fm:                                            ; preds = %bb.fk
  %i.nx = load ptr, ptr %i.mz, align 8, !nonnull !8, !noundef !8 ; 2 uses
  %i.ny = getelementptr inbounds nuw i8, ptr %i.nx, i64 16 ; 6 uses
  %i.nz = load i64, ptr %i.ny, align 8, !noalias !1813, !noundef !8 ; 2 uses
  %i.oa = icmp ult i64 %i.nz, 9223372036854775807
  br i1 %i.oa, label %bb.fn, label %.invoke3315, !prof !24

.invoke3315:                                      ; preds = %bb.fm, %bb.ez
  %i.ob = phi ptr [ @550, %bb.ez ], [ @552, %bb.fm ]
  invoke void @_RNvNtCs3oUPovFnLWP_4core4cell30panic_already_mutably_borrowed(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.ob) #28
          to label %.cont3316 unwind label %bb.ey

.cont3316:                                        ; preds = %.invoke3315
  unreachable

bb.fn:                                            ; preds = %bb.fm
  %i.oc = add nuw nsw i64 %i.nz, 1
  store i64 %i.oc, ptr %i.ny, align 8, !noalias !1813
  %i.od = getelementptr inbounds nuw i8, ptr %i.nx, i64 24 ; 2 uses
  %i.oe = load i64, ptr %i.od, align 8, !range !14, !noundef !8
  %.not672 = icmp eq i64 %i.oe, -1
  br i1 %.not672, label %bb.fp, label %bb.fo, !prof !9

bb.fo:                                            ; preds = %bb.fn
  call void @llvm.lifetime.start.p0(ptr nonnull %i.r)
  invoke void @_RNvXsb_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecmENtNtCs3oUPovFnLWP_4core5clone5Clone5cloneCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.r, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.od)
          to label %bb.fr unwind label %bb.fq

bb.fp:                                            ; preds = %bb.fn
  invoke void @_RNvNtCs3oUPovFnLWP_4core6option13unwrap_failed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @553) #34
          to label %bb.c unwind label %bb.fq

bb.fq:                                            ; preds = %bb.fp, %bb.fo
  %i.of = landingpad { ptr, i32 }
          cleanup
  %i.og = load i64, ptr %i.ny, align 8, !noundef !8
  %i.oh = add i64 %i.og, -1
  store i64 %i.oh, ptr %i.ny, align 8
  br label %.body886

bb.fr:                                            ; preds = %bb.fo
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ao, ptr noundef nonnull align 8 dereferenceable(24) %i.r, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r)
  %i.oi = load i64, ptr %i.ny, align 8, !noundef !8
  %i.oj = add i64 %i.oi, -1
  store i64 %i.oj, ptr %i.ny, align 8
  %i.ok = getelementptr inbounds nuw i8, ptr %i.ao, i64 16
  %i.ol = load i64, ptr %i.ok, align 8, !noundef !8 ; 2 uses
  %i.om = icmp ult i64 %i.ol, 2305843009213693952
  call void @llvm.assume(i1 %i.om)
  br label %bb.ew

bb.fs:                                            ; preds = %bb.ft, %bb.fl
  %i.on = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCs8frGy5WneL6_4fish12localization7gettext17LocalizableStringEBH_(ptr noalias nofree noundef align 8 dereferenceable(24) %i.am) #29
          to label %.body886 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.ft:                                            ; preds = %bb.fl
  %i.oo = extractvalue { ptr, i64 } %i.nw, 0
  %i.op = extractvalue { ptr, i64 } %i.nw, 1
  store i64 -1, ptr %i.an, align 8, !alias.scope !1814
  %.sroa.01168.sroa.0.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.an, i64 8
  store ptr %i.oo, ptr %.sroa.01168.sroa.0.sroa.4.0..sroa_idx, align 8, !alias.scope !1814
  %.sroa.01168.sroa.0.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.an, i64 16
  store i64 %i.op, ptr %.sroa.01168.sroa.0.sroa.5.0..sroa_idx, align 8, !alias.scope !1814
  %.sroa.01168.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.an, i64 24
  store ptr %i.ev, ptr %.sroa.01168.sroa.4.0..sroa_idx, align 8, !alias.scope !1814
  %.sroa.01168.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.an, i64 32
  store i64 %i.ex, ptr %.sroa.01168.sroa.5.0..sroa_idx, align 8, !alias.scope !1814
  %.sroa.01168.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.an, i64 40
  store ptr null, ptr %.sroa.01168.sroa.6.0..sroa_idx, align 8, !alias.scope !1814
  %.sroa.41169.0..sroa_idx1170 = getelementptr inbounds nuw i8, ptr %i.an, i64 56
  store ptr %0, ptr %.sroa.41169.0..sroa_idx1170, align 8, !alias.scope !1814
  %.sroa.51172.0..sroa_idx1173 = getelementptr inbounds nuw i8, ptr %i.an, i64 64
  store i8 1, ptr %.sroa.51172.0..sroa_idx1173, align 8, !alias.scope !1814
  invoke void @_RNvMNtNtNtCs8frGy5WneL6_4fish8builtins6shared5errorNtB2_5Error6finish(ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(72) %i.an, ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %1)
          to label %bb.fu unwind label %bb.fs

bb.fu:                                            ; preds = %bb.ft
  call void @llvm.lifetime.end.p0(ptr nonnull %i.an)
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCs8frGy5WneL6_4fish12localization7gettext17LocalizableStringEBH_(ptr noalias nofree noundef align 8 dereferenceable(24) %i.am)
          to label %bb.fv unwind label %bb.ey

bb.fv:                                            ; preds = %bb.fu
  call void @llvm.lifetime.end.p0(ptr nonnull %i.am)
  br label %.thread1253

bb.fw:                                            ; preds = %bb.eu
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ao, ptr noundef nonnull align 8 dereferenceable(24) %i.mt, i64 24, i1 false)
  %i.oq = getelementptr inbounds nuw i8, ptr %i.da, i64 72
  %i.or = load i64, ptr %i.oq, align 8, !noundef !8
  br label %bb.ew

bb.fx:                                            ; preds = %bb.ew
  br i1 %.sroa.0161.0, label %bb.ga, label %bb.fz

bb.fy:                                            ; preds = %bb.ew
  %i.os = getelementptr inbounds nuw i8, ptr %.sroa.0450.0, i64 16
  %i.ot = load i64, ptr %i.os, align 8, !noundef !8 ; 3 uses
  %i.ou = icmp ult i64 %i.ot, 2305843009213693952
  call void @llvm.assume(i1 %i.ou)
  %i.ov = icmp eq i64 %i.ot, 0
  br i1 %i.ov, label %bb.im, label %bb.io

bb.fz:                                            ; preds = %bb.fx
  br i1 %i.lq, label %bb.gc, label %bb.gb

bb.ga:                                            ; preds = %bb.fx
  %i.ow = invoke noundef zeroext i1 @_RNvNtNtCs8frGy5WneL6_4fish6reader6reader25reader_showing_suggestion(ptr noalias nofree noundef nonnull align 8 dereferenceable(432) %0)
          to label %bb.in unwind label %bb.ey     ; 2 uses

bb.gb:                                            ; preds = %bb.fz
  switch i8 %.sroa.0104.0.load109375, label %bb.ef [
    i8 0, label %bb.gd
    i8 1, label %bb.ge
    i8 2, label %bb.gf
    i8 3, label %bb.gg
  ]

bb.gc:                                            ; preds = %bb.fz
  %i.ox = getelementptr inbounds nuw i8, ptr %.sroa.0450.0, i64 16
  %i.oy = load i64, ptr %i.ox, align 8, !noundef !8 ; 2 uses
  %i.oz = icmp ult i64 %i.oy, 2305843009213693952
  call void @llvm.assume(i1 %i.oz)
  br label %bb.gh

bb.gd:                                            ; preds = %bb.gb
  %i.pa = getelementptr inbounds nuw i8, ptr %.sroa.0450.0, i64 16
  %i.pb = load i64, ptr %i.pa, align 8, !noundef !8 ; 2 uses
  %i.pc = icmp ult i64 %i.pb, 2305843009213693952
  call void @llvm.assume(i1 %i.pc)
  br label %bb.gh

bb.ge:                                            ; preds = %bb.gb
  %i.pd = getelementptr inbounds nuw i8, ptr %.sroa.0450.0, i64 8
  %i.pe = load ptr, ptr %i.pd, align 8, !nonnull !8, !noundef !8
  %i.pf = getelementptr inbounds nuw i8, ptr %.sroa.0450.0, i64 16
  %i.pg = load i64, ptr %i.pf, align 8, !noundef !8
  %i.ph = invoke fastcc { i64, i64 } @_RNvNtCs8frGy5WneL6_4fish10parse_util25get_job_or_process_extent(i1 noundef zeroext false, ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) %i.pe, i64 noundef %i.pg, i64 noundef %.sroa.0464.0, ptr noalias nofree noundef align 8 dereferenceable_or_null(24) null)
          to label %_RNvNtCs8frGy5WneL6_4fish10parse_util14get_job_extent.exit unwind label %bb.ey ; 2 uses

bb.gf:                                            ; preds = %bb.gb
  %i.pi = getelementptr inbounds nuw i8, ptr %.sroa.0450.0, i64 8
  %i.pj = load ptr, ptr %i.pi, align 8, !nonnull !8, !noundef !8
  %i.pk = getelementptr inbounds nuw i8, ptr %.sroa.0450.0, i64 16
  %i.pl = load i64, ptr %i.pk, align 8, !noundef !8
  %i.pm = invoke fastcc { i64, i64 } @_RNvNtCs8frGy5WneL6_4fish10parse_util25get_job_or_process_extent(i1 noundef zeroext true, ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) %i.pj, i64 noundef %i.pl, i64 noundef %.sroa.0464.0, ptr noalias nofree noundef align 8 dereferenceable_or_null(24) null)
          to label %_RNvNtCs8frGy5WneL6_4fish10parse_util18get_process_extent.exit unwind label %bb.ey ; 2 uses

bb.gg:                                            ; preds = %bb.gb
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aj)
  %i.pn = getelementptr inbounds nuw i8, ptr %.sroa.0450.0, i64 8
  %i.po = load ptr, ptr %i.pn, align 8, !nonnull !8, !noundef !8
  %i.pp = getelementptr inbounds nuw i8, ptr %.sroa.0450.0, i64 16
  %i.pq = load i64, ptr %i.pp, align 8, !noundef !8
  invoke void @_RNvNtCs8frGy5WneL6_4fish10parse_util16get_token_extent(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %i.aj, ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) %i.po, i64 noundef %i.pq, i64 noundef %.sroa.0464.0)
          to label %bb.gi unwind label %bb.ey

bb.gh:                                            ; preds = %bb.gi, %_RNvNtCs8frGy5WneL6_4fish10parse_util18get_process_extent.exit, %_RNvNtCs8frGy5WneL6_4fish10parse_util14get_job_extent.exit, %bb.gd, %bb.gc
  %.sroa.0476.0 = phi i64 [ 0, %bb.gc ], [ 0, %bb.gd ], [ %i.pr, %_RNvNtCs8frGy5WneL6_4fish10parse_util14get_job_extent.exit ], [ %i.pt, %_RNvNtCs8frGy5WneL6_4fish10parse_util18get_process_extent.exit ], [ %i.pv, %bb.gi ] ; 6 uses
  %.sroa.9.0 = phi i64 [ %i.oy, %bb.gc ], [ %i.pb, %bb.gd ], [ %i.ps, %_RNvNtCs8frGy5WneL6_4fish10parse_util14get_job_extent.exit ], [ %i.pu, %_RNvNtCs8frGy5WneL6_4fish10parse_util18get_process_extent.exit ], [ %i.px, %bb.gi ] ; 2 uses
  br i1 %4, label %bb.gk, label %bb.gj

_RNvNtCs8frGy5WneL6_4fish10parse_util14get_job_extent.exit: ; preds = %bb.ge
  %i.pr = extractvalue { i64, i64 } %i.ph, 0
  %i.ps = extractvalue { i64, i64 } %i.ph, 1
  br label %bb.gh

_RNvNtCs8frGy5WneL6_4fish10parse_util18get_process_extent.exit: ; preds = %bb.gf
  %i.pt = extractvalue { i64, i64 } %i.pm, 0
  %i.pu = extractvalue { i64, i64 } %i.pm, 1
  br label %bb.gh

bb.gi:                                            ; preds = %bb.gg
  %i.pv = load i64, ptr %i.aj, align 8, !noundef !8
  %i.pw = getelementptr inbounds nuw i8, ptr %i.aj, i64 8
  %i.px = load i64, ptr %i.pw, align 8, !noundef !8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aj)
  br label %bb.gh

bb.gj:                                            ; preds = %bb.gh
  br i1 %i.ko, label %bb.gm, label %bb.gl

bb.gk:                                            ; preds = %bb.gh
  br i1 %i.ko, label %bb.hr, label %bb.hs

bb.gl:                                            ; preds = %bb.gj
  call void @llvm.lifetime.start.p0(ptr nonnull %i.y)
  %i.py = icmp eq i64 %i.kg, 1
  br i1 %i.py, label %bb.go, label %bb.gp

bb.gm:                                            ; preds = %bb.gj
  %i.pz = icmp eq i8 %.sroa.0104.0.load109375, 3
  %i.qa = getelementptr inbounds nuw i8, ptr %.sroa.0450.0, i64 8
  %i.qb = load ptr, ptr %i.qa, align 8, !nonnull !8, !noundef !8
  %i.qc = getelementptr inbounds nuw i8, ptr %.sroa.0450.0, i64 16
  %i.qd = load i64, ptr %i.qc, align 8, !noundef !8
  %i.qe = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.val791 = load ptr, ptr %i.qe, align 8
  invoke fastcc void @_RNvNtNtCs8frGy5WneL6_4fish8builtins11commandline10write_part(ptr noalias nofree noundef align 8 dereferenceable(432) %0, i64 noundef %.sroa.0476.0, i64 noundef %.sroa.9.0, i1 noundef zeroext %i.pz, i1 noundef zeroext %.pre-phi, i8 noundef %.sroa.0327.0, ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) %i.qb, i64 noundef %i.qd, i64 noundef %.sroa.0464.0, ptr %.val791)
          to label %bb.gn unwind label %bb.ey

bb.gn:                                            ; preds = %bb.gm, %bb.gx
  %i.qf = trunc nuw i8 %.sroa.0492.0 to i1
  br i1 %i.qf, label %bb.gz, label %bb.gy

bb.go:                                            ; preds = %bb.gl
  %i.qg = load i64, ptr %i.ep, align 8, !noundef !8 ; 3 uses
  %i.qh = icmp ult i64 %i.qg, %3
  br i1 %i.qh, label %bb.gq, label %.invoke3317

bb.gp:                                            ; preds = %bb.gl
  call void @llvm.lifetime.start.p0(ptr nonnull %i.x)
  %i.qi = load i64, ptr %i.eg, align 8, !noundef !8 ; 4 uses
  %i.qj = load i64, ptr %i.ep, align 8, !noundef !8 ; 4 uses
  %i.qk = icmp ugt i64 %i.qj, %i.qi
  br i1 %i.qk, label %bb.gt, label %bb.gs, !prof !9

bb.gq:                                            ; preds = %bb.go
  %i.ql = getelementptr inbounds nuw [16 x i8], ptr %2, i64 %i.qg ; 2 uses
  %i.qm = load ptr, ptr %i.ql, align 8, !nonnull !8, !align !23, !noundef !8 ; 2 uses
  %i.qn = getelementptr inbounds nuw i8, ptr %i.ql, i64 8
  %i.qo = load i64, ptr %i.qn, align 8, !noundef !8 ; 2 uses
  %i.qp = getelementptr inbounds nuw i8, ptr %i.y, i64 8
  store ptr %i.qm, ptr %i.qp, align 8
  %i.qq = getelementptr inbounds nuw i8, ptr %i.y, i64 16
  store i64 %i.qo, ptr %i.qq, align 8
  store i64 -1, ptr %i.y, align 8
  br label %bb.gr

bb.gr:                                            ; preds = %bb.gu, %bb.gq
  %i.qr = phi i64 [ %.pre2626, %bb.gu ], [ %i.qo, %bb.gq ]
  %i.qs = phi ptr [ %.pre, %bb.gu ], [ %i.qm, %bb.gq ]
  %i.qt = getelementptr inbounds nuw i8, ptr %.sroa.0450.0, i64 8
  %i.qu = load ptr, ptr %i.qt, align 8, !nonnull !8, !noundef !8
  %i.qv = getelementptr inbounds nuw i8, ptr %.sroa.0450.0, i64 16
  %i.qw = load i64, ptr %i.qv, align 8, !noundef !8
  invoke fastcc void @_RNvNtNtCs8frGy5WneL6_4fish8builtins11commandline12replace_part(ptr noundef nonnull align 8 %0, i64 noundef %.sroa.0476.0, i64 noundef %.sroa.9.0, ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) %i.qs, i64 noundef %i.qr, i8 noundef %.sroa.0114.0., ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) %i.qu, i64 noundef %i.qw, i64 noundef %.sroa.0464.0, i1 noundef zeroext %i.lq)
          to label %bb.gw unwind label %bb.gv

bb.gs:                                            ; preds = %bb.gp
  %i.qx = load ptr, ptr %i.ef, align 8, !nonnull !8, !align !17, !noundef !8
  %i.qy = sub nuw i64 %i.qi, %i.qj
  %i.qz = getelementptr inbounds nuw [16 x i8], ptr %i.qx, i64 %i.qj
  invoke void @_RINvCskeBJdk8gjxq_17fish_wcstringutil12join_stringsRNtNtCslLGyqsphxMB_10widestring6utfstr8Utf32StrECs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.x, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) %i.qz, i64 noundef %i.qy, i32 noundef 10)
          to label %bb.gu unwind label %bb.ey

bb.gt:                                            ; preds = %bb.gp
  invoke void @_RNvNtNtCs3oUPovFnLWP_4core5slice5index16slice_index_fail(i64 noundef %i.qj, i64 noundef %i.qi, i64 noundef %i.qi, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @556) #34
          to label %bb.c unwind label %bb.ey

bb.gu:                                            ; preds = %bb.gs
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.y, ptr noundef nonnull align 8 dereferenceable(24) %i.x, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.x)
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %i.y, i64 8
  %.pre = load ptr, ptr %.phi.trans.insert, align 8
  %.phi.trans.insert2625 = getelementptr inbounds nuw i8, ptr %i.y, i64 16
  %.pre2626 = load i64, ptr %.phi.trans.insert2625, align 8
  br label %bb.gr

bb.gv:                                            ; preds = %bb.gr
  %i.ra = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc6borrow3CowNtNtCslLGyqsphxMB_10widestring6utfstr8Utf32StrEECs8frGy5WneL6_4fish(ptr noalias nofree noundef align 8 dereferenceable(24) %i.y) #29
          to label %bb.ex unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.gw:                                            ; preds = %bb.gr
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc6borrow3CowNtNtCslLGyqsphxMB_10widestring6utfstr8Utf32StrEECs8frGy5WneL6_4fish(ptr noalias nofree noundef align 8 dereferenceable(24) %i.y)
          to label %bb.gx unwind label %bb.ey

bb.gx:                                            ; preds = %bb.gw
  call void @llvm.lifetime.end.p0(ptr nonnull %i.y)
  br label %bb.gn

bb.gy:                                            ; preds = %bb.gz, %bb.gn
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ao)
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtCshMbxjpSxucW_12fish_wgetopt9WGetopterECs8frGy5WneL6_4fish(ptr noalias nofree noundef align 8 dereferenceable(136) %i.cw)
          to label %bb.hb unwind label %.body821.thread1248

bb.gz:                                            ; preds = %bb.gn
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringECs8frGy5WneL6_4fish(ptr noalias nofree noundef align 8 dereferenceable(24) %i.ao)
          to label %bb.gy unwind label %.loopexit.split-lp1278.loopexit.split-lp

bb.ha:                                            ; preds = %.body886
  br i1 %.sroa.0500.0, label %.body821.thread, label %.body875

.body821.thread1248:                              ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecINtNtBG_6borrow3CowNtNtCslLGyqsphxMB_10widestring6utfstr8Utf32StrEEECs8frGy5WneL6_4fish.exit.i, %bb.gy
  %.sroa.0495.7.ph = phi i8 [ %.sroa.0495.3, %bb.gy ], [ %.sroa.0495.2, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecINtNtBG_6borrow3CowNtNtCslLGyqsphxMB_10widestring6utfstr8Utf32StrEEECs8frGy5WneL6_4fish.exit.i ]
  %lpad.thr_comm = landingpad { ptr, i32 }
          cleanup
  br label %.body821.thread

.body821:                                         ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecINtNtBG_6borrow3CowNtNtCslLGyqsphxMB_10widestring6utfstr8Utf32StrEEECs8frGy5WneL6_4fish.exit.i890
  %lpad.thr_comm.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %.body875

bb.hb:                                            ; preds = %bb.gy
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cw)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cx)
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringEECs8frGy5WneL6_4fish(ptr noalias nofree noundef align 8 dereferenceable(24) %i.cy)
          to label %bb.hd unwind label %bb.hc

.body875:                                         ; preds = %bb.om, %bb.nx, %bb.hc, %.body821, %.body821.thread, %bb.ha
  %.sroa.0495.8 = phi i8 [ %.sroa.0495.61239, %.body821.thread ], [ %.sroa.0495.0, %bb.ha ], [ %.sroa.0495.2, %bb.nx ], [ 1, %.body821 ], [ %.sroa.0495.9, %bb.hc ], [ 1, %bb.om ]
  %.pn727.pn.pn = phi { ptr, i32 } [ %.pn727.pn1240, %.body821.thread ], [ %.pn727, %bb.ha ], [ %i.act, %bb.nx ], [ %lpad.thr_comm.split-lp, %.body821 ], [ %i.rb, %bb.hc ], [ %i.adm, %bb.om ]
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringEECs8frGy5WneL6_4fish(ptr noalias nofree noundef align 8 dereferenceable(24) %i.cz) #29
          to label %.body881 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.hc:                                            ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringECs8frGy5WneL6_4fish.exit.i874, %bb.hb
  %.sroa.0495.9 = phi i8 [ %.sroa.0495.2, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringECs8frGy5WneL6_4fish.exit.i874 ], [ %.sroa.0495.3, %bb.hb ]
  %i.rb = landingpad { ptr, i32 }
          cleanup
  br label %.body875

bb.hd:                                            ; preds = %bb.hb
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cy)
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringEECs8frGy5WneL6_4fish(ptr noalias nofree noundef align 8 dereferenceable(24) %i.cz)
          to label %bb.hf unwind label %bb.he

.body881:                                         ; preds = %bb.oa, %bb.he, %.body875
  %.sroa.0495.10 = phi i8 [ %.sroa.0495.8, %.body875 ], [ %.sroa.0495.11, %bb.he ], [ %.sroa.0495.14, %bb.oa ]
  %.pn727.pn.pn.pn = phi { ptr, i32 } [ %.pn727.pn.pn, %.body875 ], [ %i.rd, %bb.he ], [ %i.acx, %bb.oa ] ; 2 uses
  %i.rc = getelementptr inbounds nuw i8, ptr %i.da, i64 24
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringECs8frGy5WneL6_4fish(ptr noalias nofree noundef align 8 dereferenceable(24) %i.rc) #29
          to label %bb.pb unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.he:                                            ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringECs8frGy5WneL6_4fish.exit.i880, %bb.hd
  %.sroa.0495.11 = phi i8 [ %.sroa.0495.14, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringECs8frGy5WneL6_4fish.exit.i880 ], [ %.sroa.0495.3, %bb.hd ]
  %i.rd = landingpad { ptr, i32 }
          cleanup
  br label %.body881

bb.hf:                                            ; preds = %bb.hd
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cz)
  %i.re = getelementptr inbounds nuw i8, ptr %i.da, i64 24
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringECs8frGy5WneL6_4fish(ptr noalias nofree noundef align 8 dereferenceable(24) %i.re)
          to label %bb.hj unwind label %bb.hg

bb.hg:                                            ; preds = %bb.hf
  %i.rf = landingpad { ptr, i32 }
          cleanup                                 ; 3 uses
  %i.rg = getelementptr inbounds nuw i8, ptr %i.da, i64 88 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !1815)
  %i.rh = load ptr, ptr %i.rg, align 8, !alias.scope !1815, !noundef !8 ; 2 uses
  %i.ri = icmp eq ptr %i.rh, null
  br i1 %i.ri, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs1xwejQucwHj_5alloc4sync3ArcNtNtNtCs8frGy5WneL6_4fish7history7history7HistoryEEEB1B_.exit, label %bb.hh

bb.hh:                                            ; preds = %bb.hg
  %i.rj = atomicrmw sub ptr %i.rh, i64 1 release, align 8, !noalias !1816
  %i.rk = icmp eq i64 %i.rj, 1
  br i1 %i.rk, label %bb.hi, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs1xwejQucwHj_5alloc4sync3ArcNtNtNtCs8frGy5WneL6_4fish7history7history7HistoryEEEB1B_.exit

bb.hi:                                            ; preds = %bb.hh
  fence acquire
  invoke void @_RNvMsn_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArcNtNtNtCs8frGy5WneL6_4fish7history7history7HistoryE9drop_slowBM_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.rg) #33
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs1xwejQucwHj_5alloc4sync3ArcNtNtNtCs8frGy5WneL6_4fish7history7history7HistoryEEEB1B_.exit unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.hj:                                            ; preds = %bb.hf
  %i.rl = getelementptr inbounds nuw i8, ptr %i.da, i64 88 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !1817)
  %i.rm = load ptr, ptr %i.rl, align 8, !alias.scope !1817, !noundef !8 ; 2 uses
end_hunk_0
begin_hunk_1_@_RNvNtNtCs8frGy5WneL6_4fish8builtins11commandline11commandline:bb.a
  %.sroa.41062.0..sroa_idx1063 = getelementptr inbounds nuw i8, ptr %i.ca, i64 56
  store ptr %0, ptr %.sroa.41062.0..sroa_idx1063, align 8, !alias.scope !1858
  %.sroa.51065.0..sroa_idx1066 = getelementptr inbounds nuw i8, ptr %i.ca, i64 64
  store i8 1, ptr %.sroa.51065.0..sroa_idx1066, align 8, !alias.scope !1858
  invoke void @_RNvMNtNtNtCs8frGy5WneL6_4fish8builtins6shared5errorNtB2_5Error6finish(ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(72) %i.ca, ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %1)
          to label %bb.mo unwind label %.loopexit.split-lp1278.loopexit.split-lp

bb.mo:                                            ; preds = %bb.mn
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ca)
  br label %.loopexit1276

bb.mp:                                            ; preds = %bb.dz
  %i.aag = extractvalue { ptr, i64 } %i.lu, 0
  %i.aah = extractvalue { ptr, i64 } %i.lu, 1
  store i64 -1, ptr %i.cb, align 8, !alias.scope !1859
  %.sroa.01039.sroa.0.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.cb, i64 8
  store ptr %i.aag, ptr %.sroa.01039.sroa.0.sroa.4.0..sroa_idx, align 8, !alias.scope !1859
  %.sroa.01039.sroa.0.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.cb, i64 16
  store i64 %i.aah, ptr %.sroa.01039.sroa.0.sroa.5.0..sroa_idx, align 8, !alias.scope !1859
  %.sroa.01039.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.cb, i64 24
  store ptr %i.ev, ptr %.sroa.01039.sroa.4.0..sroa_idx, align 8, !alias.scope !1859
  %.sroa.01039.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.cb, i64 32
  store i64 %i.ex, ptr %.sroa.01039.sroa.5.0..sroa_idx, align 8, !alias.scope !1859
  %.sroa.01039.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.cb, i64 40
  store ptr null, ptr %.sroa.01039.sroa.6.0..sroa_idx, align 8, !alias.scope !1859
  %.sroa.41040.0..sroa_idx1041 = getelementptr inbounds nuw i8, ptr %i.cb, i64 56
  store ptr %0, ptr %.sroa.41040.0..sroa_idx1041, align 8, !alias.scope !1859
  %.sroa.51043.0..sroa_idx1044 = getelementptr inbounds nuw i8, ptr %i.cb, i64 64
  store i8 1, ptr %.sroa.51043.0..sroa_idx1044, align 8, !alias.scope !1859
  invoke void @_RNvMNtNtNtCs8frGy5WneL6_4fish8builtins6shared5errorNtB2_5Error6finish(ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(72) %i.cb, ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %1)
          to label %bb.mq unwind label %.loopexit.split-lp1278.loopexit.split-lp

bb.mq:                                            ; preds = %bb.mp
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cb)
  br label %.loopexit1276

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueANtNtCs1HV6ixfL8cZ_11fish_printf3arg3Argj1_ECs8frGy5WneL6_4fish.exit865: ; preds = %bb.ms, %.loopexit1329, %.loopexit.split-lp1330
  %.pn = phi { ptr, i32 } [ %lpad.loopexit.split-lp1332, %.loopexit.split-lp1330 ], [ %lpad.loopexit1331, %.loopexit1329 ], [ %i.aak, %bb.ms ]
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringECs8frGy5WneL6_4fish(ptr noalias nofree noundef align 8 dereferenceable(24) %i.ce) #29
          to label %.body886 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.loopexit1329:                                    ; preds = %.noexc866.preheader
  %lpad.loopexit1331 = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueANtNtCs1HV6ixfL8cZ_11fish_printf3arg3Argj1_ECs8frGy5WneL6_4fish.exit865

.loopexit.split-lp1330:                           ; preds = %bb.dx
  %lpad.loopexit.split-lp1332 = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueANtNtCs1HV6ixfL8cZ_11fish_printf3arg3Argj1_ECs8frGy5WneL6_4fish.exit865

bb.mr:                                            ; preds = %bb.dx
  %i.aai = extractvalue { ptr, i64 } %i.ls, 0
  %i.aaj = extractvalue { ptr, i64 } %i.ls, 1
  call void @llvm.lifetime.start.p0(ptr nonnull %i.cc)
  store i64 0, ptr %i.cc, align 8
  %.sroa.4371.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.cc, i64 8
  store ptr @585, ptr %.sroa.4371.0..sroa_idx, align 8
  %.sroa.5372.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.cc, i64 16
  store i64 78, ptr %.sroa.5372.0..sroa_idx, align 8
  invoke void @_RINvNtCs1HV6ixfL8cZ_11fish_printf11printf_impl14sprintf_localeNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringRNtNtB12_6utfstr8Utf32StrECs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull sret([16 x i8]) align 8 captures(none) dereferenceable(16) %i.cd, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.ce, ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) %i.aai, i64 noundef %i.aaj, ptr noalias nofree noundef readonly align 4 captures(address, read_provenance) dereferenceable(16) @39, ptr noalias nofree noundef nonnull align 8 %i.cc, i64 noundef 1)
          to label %bb.mt unwind label %bb.ms

bb.ms:                                            ; preds = %bb.mu, %bb.mr
  %i.aak = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs1HV6ixfL8cZ_11fish_printf3arg3ArgECs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.cc)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueANtNtCs1HV6ixfL8cZ_11fish_printf3arg3Argj1_ECs8frGy5WneL6_4fish.exit865 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.mt:                                            ; preds = %bb.mr
  call void @llvm.experimental.noalias.scope.decl(metadata !1860)
  %i.aal = load i8, ptr %i.cd, align 8, !range !11, !alias.scope !1860, !noalias !1861, !noundef !8
  %i.aam = trunc nuw i8 %i.aal to i1
  br i1 %i.aam, label %bb.mu, label %.noexc866.preheader, !prof !9

bb.mu:                                            ; preds = %bb.mt
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p), !noalias !1862
  %i.aan = getelementptr inbounds nuw i8, ptr %i.cd, i64 1
  %i.aao = load i8, ptr %i.aan, align 1, !range !28, !alias.scope !1860, !noalias !1861, !noundef !8
  store i8 %i.aao, ptr %i.p, align 1, !noalias !1862
  invoke void @_RNvNtCs3oUPovFnLWP_4core6result13unwrap_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @81, i64 noundef 43, ptr noundef nonnull %i.p, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @84, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @586) #28
          to label %.noexc747 unwind label %bb.ms

.noexc747:                                        ; preds = %bb.mu
  unreachable

.noexc866.preheader:                              ; preds = %bb.mt
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs1HV6ixfL8cZ_11fish_printf3arg3ArgECs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.cc)
          to label %.noexc866 unwind label %.loopexit1329

.noexc866:                                        ; preds = %.noexc866.preheader
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cc)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cd)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.cf, ptr noundef nonnull align 8 dereferenceable(24) %i.ce, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ce)
  %.sroa.01022.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.cf, i64 24
  store ptr %i.ev, ptr %.sroa.01022.sroa.4.0..sroa_idx, align 8, !alias.scope !1863
  %.sroa.01022.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.cf, i64 32
  store i64 %i.ex, ptr %.sroa.01022.sroa.5.0..sroa_idx, align 8, !alias.scope !1863
  %.sroa.01022.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.cf, i64 40
  store ptr null, ptr %.sroa.01022.sroa.6.0..sroa_idx, align 8, !alias.scope !1863
  %.sroa.41023.0..sroa_idx1024 = getelementptr inbounds nuw i8, ptr %i.cf, i64 56
  store ptr %0, ptr %.sroa.41023.0..sroa_idx1024, align 8, !alias.scope !1863
  %.sroa.51026.0..sroa_idx1027 = getelementptr inbounds nuw i8, ptr %i.cf, i64 64
  store i8 1, ptr %.sroa.51026.0..sroa_idx1027, align 8, !alias.scope !1863
  invoke void @_RNvMNtNtNtCs8frGy5WneL6_4fish8builtins6shared5errorNtB2_5Error6finish(ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(72) %i.cf, ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %1)
          to label %bb.mv unwind label %.loopexit.split-lp1278.loopexit.split-lp

bb.mv:                                            ; preds = %.noexc866
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cf)
  br label %.loopexit1276

bb.mw:                                            ; preds = %bb.dp
  %i.aap = extractvalue { ptr, i64 } %i.ky, 0
  %i.aaq = extractvalue { ptr, i64 } %i.ky, 1
  store i64 -1, ptr %i.ch, align 8, !alias.scope !1864
  %.sroa.0982.sroa.0.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ch, i64 8
  store ptr %i.aap, ptr %.sroa.0982.sroa.0.sroa.4.0..sroa_idx, align 8, !alias.scope !1864
  %.sroa.0982.sroa.0.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ch, i64 16
  store i64 %i.aaq, ptr %.sroa.0982.sroa.0.sroa.5.0..sroa_idx, align 8, !alias.scope !1864
  %.sroa.0982.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ch, i64 24
  store ptr %i.ev, ptr %.sroa.0982.sroa.4.0..sroa_idx, align 8, !alias.scope !1864
  %.sroa.0982.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ch, i64 32
  store i64 %i.ex, ptr %.sroa.0982.sroa.5.0..sroa_idx, align 8, !alias.scope !1864
  %.sroa.0982.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ch, i64 40
  store ptr null, ptr %.sroa.0982.sroa.6.0..sroa_idx, align 8, !alias.scope !1864
  %.sroa.4983.0..sroa_idx984 = getelementptr inbounds nuw i8, ptr %i.ch, i64 56
  store ptr %0, ptr %.sroa.4983.0..sroa_idx984, align 8, !alias.scope !1864
  %.sroa.5986.0..sroa_idx987 = getelementptr inbounds nuw i8, ptr %i.ch, i64 64
  store i8 1, ptr %.sroa.5986.0..sroa_idx987, align 8, !alias.scope !1864
  invoke void @_RNvMNtNtNtCs8frGy5WneL6_4fish8builtins6shared5errorNtB2_5Error6finish(ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(72) %i.ch, ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %1)
          to label %bb.mx unwind label %.loopexit.split-lp1278.loopexit.split-lp

bb.mx:                                            ; preds = %bb.mw
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ch)
  br label %.loopexit1276

bb.my:                                            ; preds = %bb.dl
  %i.aar = extractvalue { ptr, i64 } %i.kv, 0
  %i.aas = extractvalue { ptr, i64 } %i.kv, 1
  store i64 -1, ptr %i.ci, align 8, !alias.scope !1865
  %.sroa.0962.sroa.0.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ci, i64 8
  store ptr %i.aar, ptr %.sroa.0962.sroa.0.sroa.4.0..sroa_idx, align 8, !alias.scope !1865
  %.sroa.0962.sroa.0.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ci, i64 16
  store i64 %i.aas, ptr %.sroa.0962.sroa.0.sroa.5.0..sroa_idx, align 8, !alias.scope !1865
  %.sroa.0962.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ci, i64 24
  store ptr %i.ev, ptr %.sroa.0962.sroa.4.0..sroa_idx, align 8, !alias.scope !1865
  %.sroa.0962.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ci, i64 32
  store i64 %i.ex, ptr %.sroa.0962.sroa.5.0..sroa_idx, align 8, !alias.scope !1865
  %.sroa.0962.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ci, i64 40
  store ptr null, ptr %.sroa.0962.sroa.6.0..sroa_idx, align 8, !alias.scope !1865
  %.sroa.4963.0..sroa_idx964 = getelementptr inbounds nuw i8, ptr %i.ci, i64 56
  store ptr %0, ptr %.sroa.4963.0..sroa_idx964, align 8, !alias.scope !1865
  %.sroa.5966.0..sroa_idx967 = getelementptr inbounds nuw i8, ptr %i.ci, i64 64
  store i8 1, ptr %.sroa.5966.0..sroa_idx967, align 8, !alias.scope !1865
  invoke void @_RNvMNtNtNtCs8frGy5WneL6_4fish8builtins6shared5errorNtB2_5Error6finish(ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(72) %i.ci, ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %1)
          to label %bb.mz unwind label %.loopexit.split-lp1278.loopexit.split-lp

bb.mz:                                            ; preds = %bb.my
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ci)
  br label %.loopexit1276

bb.na:                                            ; preds = %bb.dj
  %i.aat = getelementptr inbounds nuw i8, ptr %i.da, i64 8
  %i.aau = load i64, ptr %i.aat, align 8, !noundef !8 ; 3 uses
  %i.aav = getelementptr inbounds nuw i8, ptr %i.da, i64 16
  %i.aaw = load i64, ptr %i.aav, align 8, !noundef !8 ; 3 uses
  %i.aax = getelementptr inbounds nuw i8, ptr %i.da, i64 40
  %.val784 = load i64, ptr %i.aax, align 8, !noundef !8
  %i.aay = icmp ult i64 %i.aaw, %i.aau
  %.not.i.i = icmp ugt i64 %i.aaw, %.val784
  %or.cond.i.i = or i1 %i.aay, %.not.i.i
  br i1 %or.cond.i.i, label %bb.nb, label %bb.nc, !prof !9

bb.nb:                                            ; preds = %bb.na
  invoke void @_RNvNtCs3oUPovFnLWP_4core6option13expect_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @34, i64 noundef 19, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @589) #28
          to label %.noexc868 unwind label %.loopexit.split-lp1278.loopexit.split-lp

.noexc868:                                        ; preds = %bb.nb
  unreachable

bb.nc:                                            ; preds = %bb.na
  %i.aaz = getelementptr inbounds nuw i8, ptr %i.da, i64 32
  %.val = load ptr, ptr %i.aaz, align 8, !nonnull !8, !noundef !8
  %i.aba = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.abb = load ptr, ptr %i.aba, align 8, !nonnull !8, !align !17, !noundef !8
  %i.abc = getelementptr inbounds nuw [4 x i8], ptr %.val, i64 %i.aau
  %i.abd = sub nuw i64 %i.aaw, %i.aau
  %i.abe = invoke noundef zeroext i1 @_RINvMsc_NtCs8frGy5WneL6_4fish2ioNtB6_12OutputStream6appendRNtNtCslLGyqsphxMB_10widestring6utfstr8Utf32StrEB8_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.abb, ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) %i.abc, i64 noundef %i.abd)
          to label %.loopexit1276 unwind label %.loopexit.split-lp1278.loopexit.split-lp ; 0 uses

bb.nd:                                            ; preds = %bb.ne, %bb.dh
  call void @llvm.lifetime.start.p0(ptr nonnull %i.cp)
  %i.abf = invoke { ptr, i64 } @_RNvMNtNtCs8frGy5WneL6_4fish12localization7gettextNtB2_17LocalizableString8localize(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @548)
          to label %bb.nu unwind label %.loopexit.split-lp1278.loopexit.split-lp ; 2 uses

bb.ne:                                            ; preds = %bb.dh
  %i.abg = icmp ne i8 %.sroa.0327.0, -1
  %i.abh = or i8 %.sroa.0133.0, %.sroa.0120.0
  %i.abi = or i8 %.sroa.0139.0, %i.abh
  %i.abj = or i8 %i.abi, %.sroa.0143.0
  %i.abk = or i8 %.sroa.0147.0, %i.abj
  %i.abl = or i8 %i.abk, %.sroa.0127.0
  %8 = icmp ne i8 %i.abl, 0
  %or.cond84 = or i1 %i.abg, %8
  %9 = trunc nuw i8 %.sroa.0130.0 to i1
  %or.cond87 = or i1 %or.cond84, %9
  br i1 %or.cond87, label %bb.nd, label %bb.nf

bb.nf:                                            ; preds = %bb.ne
  %i.abm = icmp eq i64 %i.ke, %i.kf
  br i1 %i.abm, label %.invoke3304, label %.lr.ph

.invoke3304:                                      ; preds = %bb.nf, %bb.cx
  %i.abn = phi ptr [ %i.ji, %bb.cx ], [ @590, %bb.nf ]
  %i.abo = phi i64 [ %i.jk, %bb.cx ], [ 10, %bb.nf ]
  invoke void @_RNvNtNtNtCs8frGy5WneL6_4fish8builtins6shared4misc24builtin_missing_argument(ptr noundef nonnull align 8 %0, ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %1, ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) %i.ev, i64 noundef %i.ex, ptr noalias nofree noundef readonly align 4 captures(address, read_provenance) null, i64 undef, ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) %i.abn, i64 noundef %i.abo, i1 noundef zeroext true)
          to label %.loopexit1276 unwind label %.loopexit.split-lp1278.loopexit.split-lp

.lr.ph:                                           ; preds = %bb.nf
  %i.abp = load ptr, ptr %i.ef, align 8, !nonnull !8, !align !17, !noundef !8 ; 2 uses
  %i.abq = getelementptr inbounds nuw [16 x i8], ptr %i.abp, i64 %i.ke
  %i.abr = getelementptr inbounds nuw [16 x i8], ptr %i.abp, i64 %i.kf
  %i.abs = getelementptr inbounds nuw i8, ptr %0, i64 141
  %i.abt = getelementptr inbounds nuw i8, ptr %i.cj, i64 8
  %.sroa.45.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.cj, i64 16
  %.sroa.56.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.cj, i64 24
  %.sroa.6.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.cj, i64 32
  br label %bb.ng

bb.ng:                                            ; preds = %.lr.ph, %.backedge
  %.sroa.0362.01974 = phi ptr [ %i.abr, %.lr.ph ], [ %i.abu, %.backedge ] ; 5 uses
  %i.abu = getelementptr inbounds nuw i8, ptr %.sroa.0362.01974, i64 16 ; 2 uses
  %i.abv = load ptr, ptr %.sroa.0362.01974, align 8, !nonnull !8, !align !23, !noundef !8
  %i.abw = getelementptr inbounds nuw i8, ptr %.sroa.0362.01974, i64 8
  %i.abx = load i64, ptr %i.abw, align 8, !noundef !8
  %i.aby = invoke noundef i8 @_RNvNtNtCs8frGy5WneL6_4fish5input7binding23input_function_get_code(ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) %i.abv, i64 noundef %i.abx)
          to label %bb.nh unwind label %.loopexit1277 ; 2 uses

bb.nh:                                            ; preds = %bb.ng
  switch i8 %i.aby, label %bb.nk [
    i8 -1, label %bb.ni
    i8 43, label %bb.nj
    i8 92, label %bb.nj
    i8 93, label %bb.nj
  ]

bb.ni:                                            ; preds = %bb.nh
  call void @llvm.lifetime.start.p0(ptr nonnull %i.co)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.cn)
  store i64 0, ptr %i.cn, align 8
  %.sroa.4579.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.cn, i64 8
  store ptr inttoptr (i64 4 to ptr), ptr %.sroa.4579.0..sroa_idx, align 8
  %.sroa.5580.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.cn, i64 16
  store i64 0, ptr %.sroa.5580.0..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.cm)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.cl)
  %i.abz = getelementptr inbounds nuw i8, ptr %i.cl, i64 8
  store ptr @591, ptr %i.abz, align 8
  %i.aca = getelementptr inbounds nuw i8, ptr %i.cl, i64 16
  store i64 27, ptr %i.aca, align 8
  store i64 -1, ptr %i.cl, align 8
  %i.acb = invoke { ptr, i64 } @_RNvMNtNtCs8frGy5WneL6_4fish12localization7gettextNtB2_17LocalizableString8localize(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.cl)
          to label %bb.nm unwind label %.loopexit.split-lp1273 ; 2 uses

bb.nj:                                            ; preds = %bb.nh, %bb.nh, %bb.nh
  %.val792 = load i8, ptr %i.abs, align 1, !range !11, !noundef !8
  %i.acc = trunc nuw i8 %.val792 to i1
  br i1 %i.acc, label %.backedge, label %bb.nk

bb.nk:                                            ; preds = %bb.nj, %bb.nh
  call void @llvm.lifetime.start.p0(ptr nonnull %i.cj)
  store i64 0, ptr %i.abt, align 8, !alias.scope !1866
  store ptr inttoptr (i64 4 to ptr), ptr %.sroa.45.0..sroa_idx.i, align 8, !alias.scope !1866
  store i64 0, ptr %.sroa.56.0..sroa_idx.i, align 8, !alias.scope !1866
  store i8 %i.aby, ptr %.sroa.6.0..sroa_idx.i, align 8, !alias.scope !1866
  store i64 -9223372036854775808, ptr %i.cj, align 8, !alias.scope !1866
  invoke void @_RNvNtNtCs8frGy5WneL6_4fish6reader6reader27reader_execute_readline_cmd(ptr noalias nofree noundef nonnull align 8 dereferenceable(432) %0, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(48) %i.cj)
          to label %bb.nl unwind label %.loopexit1277

bb.nl:                                            ; preds = %bb.nk
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cj)
  br label %.backedge

.backedge:                                        ; preds = %bb.nl, %bb.nj
  %i.acd = icmp eq ptr %i.abu, %i.abq
  br i1 %i.acd, label %.loopexit1276, label %bb.ng

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueANtNtCs1HV6ixfL8cZ_11fish_printf3arg3Argj1_ECs8frGy5WneL6_4fish.exit870: ; preds = %bb.nn, %.loopexit1272, %.loopexit.split-lp1273
  %.pn704 = phi { ptr, i32 } [ %lpad.loopexit.split-lp1275, %.loopexit.split-lp1273 ], [ %lpad.loopexit1274, %.loopexit1272 ], [ %i.acj, %bb.nn ]
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCs8frGy5WneL6_4fish12localization7gettext17LocalizableStringEBH_(ptr noalias nofree noundef align 8 dereferenceable(24) %i.cl) #29
          to label %bb.nq unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.loopexit1272:                                    ; preds = %.noexc871.preheader
  %lpad.loopexit1274 = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueANtNtCs1HV6ixfL8cZ_11fish_printf3arg3Argj1_ECs8frGy5WneL6_4fish.exit870

.loopexit.split-lp1273:                           ; preds = %bb.ni
  %lpad.loopexit.split-lp1275 = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueANtNtCs1HV6ixfL8cZ_11fish_printf3arg3Argj1_ECs8frGy5WneL6_4fish.exit870

bb.nm:                                            ; preds = %bb.ni
  %i.ace = getelementptr inbounds nuw i8, ptr %.sroa.0362.01974, i64 8
  %i.acf = extractvalue { ptr, i64 } %i.acb, 0
  %i.acg = extractvalue { ptr, i64 } %i.acb, 1
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ck)
  %i.ach = load ptr, ptr %.sroa.0362.01974, align 8, !nonnull !8, !align !23, !noundef !8
  %i.aci = load i64, ptr %i.ace, align 8, !noundef !8
  store i64 1, ptr %i.ck, align 8
  %.sroa.4365.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ck, i64 8
  store ptr %i.ach, ptr %.sroa.4365.0..sroa_idx, align 8
  %.sroa.5366.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ck, i64 16
  store i64 %i.aci, ptr %.sroa.5366.0..sroa_idx, align 8
  invoke void @_RINvNtCs1HV6ixfL8cZ_11fish_printf11printf_impl14sprintf_localeNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringRNtNtB12_6utfstr8Utf32StrECs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull sret([16 x i8]) align 8 captures(none) dereferenceable(16) %i.cm, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.cn, ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) %i.acf, i64 noundef %i.acg, ptr noalias nofree noundef readonly align 4 captures(address, read_provenance) dereferenceable(16) @39, ptr noalias nofree noundef nonnull align 8 %i.ck, i64 noundef 1)
          to label %bb.no unwind label %bb.nn

bb.nn:                                            ; preds = %bb.np, %bb.nm
  %i.acj = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs1HV6ixfL8cZ_11fish_printf3arg3ArgECs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.ck)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueANtNtCs1HV6ixfL8cZ_11fish_printf3arg3Argj1_ECs8frGy5WneL6_4fish.exit870 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.no:                                            ; preds = %bb.nm
  call void @llvm.experimental.noalias.scope.decl(metadata !1867)
  %i.ack = load i8, ptr %i.cm, align 8, !range !11, !alias.scope !1867, !noalias !1868, !noundef !8
  %i.acl = trunc nuw i8 %i.ack to i1
  br i1 %i.acl, label %bb.np, label %.noexc871.preheader, !prof !9

bb.np:                                            ; preds = %bb.no
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q), !noalias !1869
  %i.acm = getelementptr inbounds nuw i8, ptr %i.cm, i64 1
  %i.acn = load i8, ptr %i.acm, align 1, !range !28, !alias.scope !1867, !noalias !1868, !noundef !8
  store i8 %i.acn, ptr %i.q, align 1, !noalias !1869
  invoke void @_RNvNtCs3oUPovFnLWP_4core6result13unwrap_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @81, i64 noundef 43, ptr noundef nonnull %i.q, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @84, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @592) #28
          to label %.noexc746 unwind label %bb.nn

.noexc746:                                        ; preds = %bb.np
  unreachable

.noexc871.preheader:                              ; preds = %bb.no
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs1HV6ixfL8cZ_11fish_printf3arg3ArgECs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.ck)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueANtNtCs1HV6ixfL8cZ_11fish_printf3arg3Argj1_ECs8frGy5WneL6_4fish.exit872 unwind label %.loopexit1272

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueANtNtCs1HV6ixfL8cZ_11fish_printf3arg3Argj1_ECs8frGy5WneL6_4fish.exit872: ; preds = %.noexc871.preheader
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ck)
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCs8frGy5WneL6_4fish12localization7gettext17LocalizableStringEBH_(ptr noalias nofree noundef align 8 dereferenceable(24) %i.cl)
          to label %bb.ns unwind label %bb.nr

bb.nq:                                            ; preds = %bb.nr, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueANtNtCs1HV6ixfL8cZ_11fish_printf3arg3Argj1_ECs8frGy5WneL6_4fish.exit870
  %.pn706 = phi { ptr, i32 } [ %i.aco, %bb.nr ], [ %.pn704, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueANtNtCs1HV6ixfL8cZ_11fish_printf3arg3Argj1_ECs8frGy5WneL6_4fish.exit870 ]
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringECs8frGy5WneL6_4fish(ptr noalias nofree noundef align 8 dereferenceable(24) %i.cn) #29
          to label %.body886 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.nr:                                            ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueANtNtCs1HV6ixfL8cZ_11fish_printf3arg3Argj1_ECs8frGy5WneL6_4fish.exit872
  %i.aco = landingpad { ptr, i32 }
          cleanup
  br label %bb.nq

bb.ns:                                            ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueANtNtCs1HV6ixfL8cZ_11fish_printf3arg3Argj1_ECs8frGy5WneL6_4fish.exit872
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cl)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cm)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.co, ptr noundef nonnull align 8 dereferenceable(24) %i.cn, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cn)
  %.sroa.0945.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.co, i64 24
  store ptr %i.ev, ptr %.sroa.0945.sroa.4.0..sroa_idx, align 8, !alias.scope !1870
  %.sroa.0945.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.co, i64 32
  store i64 %i.ex, ptr %.sroa.0945.sroa.5.0..sroa_idx, align 8, !alias.scope !1870
  %.sroa.0945.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.co, i64 40
  store ptr null, ptr %.sroa.0945.sroa.6.0..sroa_idx, align 8, !alias.scope !1870
  %.sroa.4946.0..sroa_idx947 = getelementptr inbounds nuw i8, ptr %i.co, i64 56
  store ptr %0, ptr %.sroa.4946.0..sroa_idx947, align 8, !alias.scope !1870
  %.sroa.5949.0..sroa_idx950 = getelementptr inbounds nuw i8, ptr %i.co, i64 64
  store i8 1, ptr %.sroa.5949.0..sroa_idx950, align 8, !alias.scope !1870
  invoke void @_RNvMNtNtNtCs8frGy5WneL6_4fish8builtins6shared5errorNtB2_5Error6finish(ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(72) %i.co, ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %1)
          to label %bb.nt unwind label %.loopexit.split-lp1278.loopexit.split-lp

bb.nt:                                            ; preds = %bb.ns
  call void @llvm.lifetime.end.p0(ptr nonnull %i.co)
  br label %.loopexit1276

bb.nu:                                            ; preds = %bb.nd
  %i.acp = extractvalue { ptr, i64 } %i.abf, 0
  %i.acq = extractvalue { ptr, i64 } %i.abf, 1
  store i64 -1, ptr %i.cp, align 8, !alias.scope !1871
  %.sroa.0925.sroa.0.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.cp, i64 8
  store ptr %i.acp, ptr %.sroa.0925.sroa.0.sroa.4.0..sroa_idx, align 8, !alias.scope !1871
  %.sroa.0925.sroa.0.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.cp, i64 16
  store i64 %i.acq, ptr %.sroa.0925.sroa.0.sroa.5.0..sroa_idx, align 8, !alias.scope !1871
  %.sroa.0925.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.cp, i64 24
  store ptr %i.ev, ptr %.sroa.0925.sroa.4.0..sroa_idx, align 8, !alias.scope !1871
  %.sroa.0925.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.cp, i64 32
  store i64 %i.ex, ptr %.sroa.0925.sroa.5.0..sroa_idx, align 8, !alias.scope !1871
  %.sroa.0925.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.cp, i64 40
  store ptr null, ptr %.sroa.0925.sroa.6.0..sroa_idx, align 8, !alias.scope !1871
  %.sroa.4926.0..sroa_idx927 = getelementptr inbounds nuw i8, ptr %i.cp, i64 56
  store ptr %0, ptr %.sroa.4926.0..sroa_idx927, align 8, !alias.scope !1871
  %.sroa.5929.0..sroa_idx930 = getelementptr inbounds nuw i8, ptr %i.cp, i64 64
  store i8 1, ptr %.sroa.5929.0..sroa_idx930, align 8, !alias.scope !1871
  invoke void @_RNvMNtNtNtCs8frGy5WneL6_4fish8builtins6shared5errorNtB2_5Error6finish(ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(72) %i.cp, ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %1)
          to label %bb.nv unwind label %.loopexit.split-lp1278.loopexit.split-lp

bb.nv:                                            ; preds = %bb.nu
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cp)
  br label %.loopexit1276

end_hunk_1

Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/fish-rs/original/fish-3db1312fccef457a.fish.60153328cb65e96a-cgu.14?download=true
inline.NumInlined: 1814
inline.NumDeleted: 645
loop-unroll.NumCompletelyUnrolled: 27
loop-unroll.NumUnrolled: 27
begin_hunk_0_@_RNvMs6_NtCs8frGy5WneL6_4fish15parse_constantsNtB5_10ParseError20describe_with_prefix:bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  call void @_RNvXsb_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecmENtNtCs3oUPovFnLWP_4core5clone5Clone5cloneCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.d, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %1)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.m, ptr noundef nonnull align 8 dereferenceable(24) %i.d, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  br label %bb.r

.body:                                            ; preds = %.peel.begin, %bb.l, %bb.g, %bb.i
  %.pn = phi { ptr, i32 } [ %i.ai, %bb.i ], [ %i.aa, %bb.g ], [ %i.ar, %bb.l ], [ %i.ar, %.peel.begin ]
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCs8frGy5WneL6_4fish12localization7gettext17LocalizableStringEBH_(ptr noalias nofree noundef align 8 dereferenceable(24) %i.j) #29
          to label %.body87 unwind label %bb.s

bb.g:                                             ; preds = %bb.e
  %i.aa = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.h:                                             ; preds = %bb.e
  %i.ab = extractvalue { ptr, i64 } %i.z, 0
  %i.ac = extractvalue { ptr, i64 } %i.z, 1
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i)
  %i.ad = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.ae = load ptr, ptr %i.ad, align 8, !nonnull !8, !noundef !8
  %i.af = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.ag = load i64, ptr %i.af, align 8, !noundef !8
  store i64 1, ptr %i.i, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  store ptr %4, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.i, i64 16
  store i64 %5, ptr %.sroa.5.0..sroa_idx, align 8
  %i.ah = getelementptr inbounds nuw i8, ptr %i.i, i64 32 ; 2 uses
  store i64 1, ptr %i.ah, align 8
  %.sroa.42.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.i, i64 40
  store ptr %i.ae, ptr %.sroa.42.0..sroa_idx, align 8
  %.sroa.53.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.i, i64 48
  store i64 %i.ag, ptr %.sroa.53.0..sroa_idx, align 8
  invoke void @_RINvNtCs1HV6ixfL8cZ_11fish_printf11printf_impl14sprintf_localeNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringRNtNtB12_6utfstr8Utf32StrECs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull sret([16 x i8]) align 8 captures(none) dereferenceable(16) %i.k, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.l, ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) %i.ab, i64 noundef %i.ac, ptr noalias nofree noundef readonly align 4 captures(address, read_provenance) dereferenceable(16) @39, ptr noalias nofree noundef nonnull align 8 %i.i, i64 noundef 2)
          to label %bb.j unwind label %bb.i

bb.i:                                             ; preds = %bb.k, %bb.h
  %i.ai = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueANtNtCs1HV6ixfL8cZ_11fish_printf3arg3Argj2_ECs8frGy5WneL6_4fish(ptr noalias nofree noundef align 8 dereferenceable(64) %i.i) #29
          to label %.body unwind label %bb.s

bb.j:                                             ; preds = %bb.h
  call void @llvm.experimental.noalias.scope.decl(metadata !971)
  %i.aj = load i8, ptr %i.k, align 8, !range !11, !alias.scope !971, !noalias !972, !noundef !8
  %i.ak = trunc nuw i8 %i.aj to i1
  br i1 %i.ak, label %bb.k, label %.preheader284.preheader, !prof !9

bb.k:                                             ; preds = %bb.j
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !973
  %i.al = getelementptr inbounds nuw i8, ptr %i.k, i64 1
  %i.am = load i8, ptr %i.al, align 1, !range !28, !alias.scope !971, !noalias !972, !noundef !8
  store i8 %i.am, ptr %i.a, align 1, !noalias !973
  invoke void @_RNvNtCs3oUPovFnLWP_4core6result13unwrap_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @81, i64 noundef 43, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @84, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @177) #28
          to label %.noexc unwind label %bb.i

.noexc:                                           ; preds = %bb.k
  unreachable

.preheader284:                                    ; preds = %.preheader284.preheader
  %i.an = getelementptr inbounds nuw i8, ptr %i.i, i64 32
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs1HV6ixfL8cZ_11fish_printf3arg3ArgECs8frGy5WneL6_4fish(ptr noalias nofree noundef align 8 dereferenceable(32) %i.an)
          to label %.preheader284.1 unwind label %.peel.begin

.preheader284.1:                                  ; preds = %.preheader284
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  %i.ao = load i64, ptr %i.j, align 8, !range !14, !alias.scope !974, !noundef !8
  %i.ap = icmp eq i64 %i.ao, -1
  br i1 %i.ap, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCs8frGy5WneL6_4fish12localization7gettext17LocalizableStringEBH_.exit, label %bb.n

.preheader284.preheader:                          ; preds = %bb.j
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs1HV6ixfL8cZ_11fish_printf3arg3ArgECs8frGy5WneL6_4fish(ptr noalias nofree noundef align 8 dereferenceable(32) %i.i)
          to label %.preheader284 unwind label %.peel.begin

.peel.begin:                                      ; preds = %.preheader284, %.preheader284.preheader
  %i.aq = phi i1 [ false, %.preheader284.preheader ], [ true, %.preheader284 ]
  %i.ar = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  br i1 %i.aq, label %.body, label %bb.l

bb.l:                                             ; preds = %.peel.begin
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs1HV6ixfL8cZ_11fish_printf3arg3ArgECs8frGy5WneL6_4fish(ptr noalias nofree noundef align 8 dereferenceable(32) %i.ah) #29
          to label %.body unwind label %bb.m

bb.m:                                             ; preds = %bb.l
  %lpad.loopexit.split-lp311 = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #30
  unreachable

bb.n:                                             ; preds = %.preheader284.1
  invoke void @_RNvXsp_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecmENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.j)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringECs8frGy5WneL6_4fish.exit.i unwind label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.as = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecmENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.j)
          to label %.body87 unwind label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.at = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #30
  unreachable

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringECs8frGy5WneL6_4fish.exit.i: ; preds = %bb.n
  invoke void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecmENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.j)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCs8frGy5WneL6_4fish12localization7gettext17LocalizableStringEBH_.exit unwind label %bb.q

.body87:                                          ; preds = %bb.q, %bb.o, %.body
  %.pn71 = phi { ptr, i32 } [ %.pn, %.body ], [ %i.au, %bb.q ], [ %i.as, %bb.o ]
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringECs8frGy5WneL6_4fish(ptr noalias nofree noundef align 8 dereferenceable(24) %i.l) #29
          to label %.thread205 unwind label %bb.s

bb.q:                                             ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringECs8frGy5WneL6_4fish.exit.i
  %i.au = landingpad { ptr, i32 }
          cleanup
  br label %.body87

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCs8frGy5WneL6_4fish12localization7gettext17LocalizableStringEBH_.exit: ; preds = %.preheader284.1, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringECs8frGy5WneL6_4fish.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.m, ptr noundef nonnull align 8 dereferenceable(24) %i.l, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l)
  br label %bb.r

bb.r:                                             ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCs8frGy5WneL6_4fish12localization7gettext17LocalizableStringEBH_.exit, %bb.f
  br i1 %7, label %bb.cn, label %bb.t

bb.s:                                             ; preds = %.thread, %bb.ck, %bb.bs, %.body139, %.body87, %bb.i, %.body
  %i.av = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #30
  unreachable

.thread205:                                       ; preds = %bb.bg, %.thread, %.body87
  %.pn81.pn = phi { ptr, i32 } [ %.pn81204, %.thread ], [ %i.es, %bb.bg ], [ %.pn71, %.body87 ]
  resume { ptr, i32 } %.pn81.pn

bb.t:                                             ; preds = %bb.r
  %i.aw = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.ax = load i64, ptr %i.aw, align 8, !noundef !8 ; 4 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.az = load i64, ptr %i.ay, align 8, !noundef !8
  %.not = icmp ult i64 %i.ax, %3
  br i1 %.not, label %bb.v, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.ba = icmp eq i64 %3, 0
  br i1 %i.ba, label %.invoke, label %bb.w

bb.v:                                             ; preds = %bb.t, %bb.w
  %.sroa.020.0 = phi i64 [ 0, %bb.w ], [ %i.az, %bb.t ] ; 2 uses
  %.sroa.05.0 = phi i64 [ %i.bd, %bb.w ], [ %i.ax, %bb.t ] ; 22 uses
  %i.bb = add i64 %.sroa.05.0, %.sroa.020.0       ; 2 uses
  %i.bc = icmp ult i64 %i.bb, %.sroa.05.0
  br i1 %i.bc, label %.invoke332, label %bb.y

bb.w:                                             ; preds = %bb.u
  %i.bd = add i64 %3, -1
  br label %bb.v

.thread208.loopexit:                              ; preds = %bb.aw
  %lpad.loopexit281 = landingpad { ptr, i32 }
          cleanup
  br label %.thread

.thread208.loopexit.split-lp:                     ; preds = %.invoke336, %.invoke334, %.invoke332, %.invoke, %bb.av, %bb.an, %bb.ax
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %.thread

bb.x:                                             ; preds = %bb.by, %bb.bl, %bb.bi
  unreachable

bb.y:                                             ; preds = %bb.v
  %i.be = icmp ugt i64 %i.bb, %3
  br i1 %i.be, label %bb.z, label %bb.aa

bb.z:                                             ; preds = %bb.y
  %i.bf = icmp ult i64 %3, %i.ax
  br i1 %i.bf, label %.invoke, label %bb.ab

bb.aa:                                            ; preds = %bb.y, %bb.ab
  %.sroa.020.1 = phi i64 [ %i.bg, %bb.ab ], [ %.sroa.020.0, %bb.y ] ; 4 uses
  %.not73 = icmp eq i64 %.sroa.05.0, 0            ; 2 uses
  br i1 %.not73, label %.loopexit283, label %bb.ac

bb.ab:                                            ; preds = %bb.z
  %i.bg = sub nuw i64 %3, %i.ax
  br label %bb.aa

bb.ac:                                            ; preds = %bb.aa
  %.not74 = icmp ugt i64 %.sroa.05.0, %3
  br i1 %.not74, label %.invoke334, label %bb.ad, !prof !34

.loopexit283:                                     ; preds = %_RNCINvNvNtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator8position5checkRcNCNvMs6_NtCs8frGy5WneL6_4fish15parse_constantsNtB1q_10ParseError20describe_with_prefix0E0B1s_.exit.i, %bb.af, %bb.aa
  %.sroa.053.0 = phi i64 [ 0, %bb.aa ], [ %i.bt, %bb.af ], [ 0, %_RNCINvNvNtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator8position5checkRcNCNvMs6_NtCs8frGy5WneL6_4fish15parse_constantsNtB1q_10ParseError20describe_with_prefix0E0B1s_.exit.i ] ; 10 uses
  %i.bh = icmp eq i64 %.sroa.020.1, 0
  br i1 %i.bh, label %bb.ah, label %bb.ag

bb.ad:                                            ; preds = %bb.ac
  %.idx = shl nuw nsw i64 %.sroa.05.0, 2
  %i.bi = getelementptr inbounds nuw i8, ptr %2, i64 %.idx
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.ad, %_RNCINvNvNtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator8position5checkRcNCNvMs6_NtCs8frGy5WneL6_4fish15parse_constantsNtB1q_10ParseError20describe_with_prefix0E0B1s_.exit.i
  %i.bj = phi ptr [ %i.bl, %_RNCINvNvNtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator8position5checkRcNCNvMs6_NtCs8frGy5WneL6_4fish15parse_constantsNtB1q_10ParseError20describe_with_prefix0E0B1s_.exit.i ], [ %i.bi, %bb.ad ]
  %i.bk = phi i64 [ %i.bn, %_RNCINvNvNtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator8position5checkRcNCNvMs6_NtCs8frGy5WneL6_4fish15parse_constantsNtB1q_10ParseError20describe_with_prefix0E0B1s_.exit.i ], [ 0, %bb.ad ] ; 3 uses
  %i.bl = getelementptr inbounds i8, ptr %i.bj, i64 -4 ; 3 uses
  %.val6.i = load i32, ptr %i.bl, align 4, !range !27, !noalias !975, !noundef !8
  %i.bm = icmp eq i32 %.val6.i, 10
  br i1 %i.bm, label %bb.ae, label %_RNCINvNvNtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator8position5checkRcNCNvMs6_NtCs8frGy5WneL6_4fish15parse_constantsNtB1q_10ParseError20describe_with_prefix0E0B1s_.exit.i

_RNCINvNvNtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator8position5checkRcNCNvMs6_NtCs8frGy5WneL6_4fish15parse_constantsNtB1q_10ParseError20describe_with_prefix0E0B1s_.exit.i: ; preds = %.lr.ph.i
  %i.bn = add nuw nsw i64 %i.bk, 1
  %i.bo = icmp eq ptr %2, %i.bl
  br i1 %i.bo, label %.loopexit283, label %.lr.ph.i

.invoke334:                                       ; preds = %_RINvXs1V_NtCslLGyqsphxMB_10widestring9utfstringNtB7_11Utf32StringINtNtNtNtCs3oUPovFnLWP_4core4iter6traits7collect6ExtendcE6extendNtNtNtB1a_3str4iter5CharsECs8frGy5WneL6_4fish.exit, %bb.ah, %bb.ac
  %i.bp = phi i64 [ 0, %bb.ac ], [ %.sroa.05.0.load1028, %bb.ah ], [ %.sroa.053.0, %_RINvXs1V_NtCslLGyqsphxMB_10widestring9utfstringNtB7_11Utf32StringINtNtNtNtCs3oUPovFnLWP_4core4iter6traits7collect6ExtendcE6extendNtNtNtB1a_3str4iter5CharsECs8frGy5WneL6_4fish.exit ]
  %i.bq = phi i64 [ %.sroa.05.0, %bb.ac ], [ %3, %bb.ah ], [ %.sroa.02.0.i, %_RINvXs1V_NtCslLGyqsphxMB_10widestring9utfstringNtB7_11Utf32StringINtNtNtNtCs3oUPovFnLWP_4core4iter6traits7collect6ExtendcE6extendNtNtNtB1a_3str4iter5CharsECs8frGy5WneL6_4fish.exit ]
  %i.br = phi ptr [ @196, %bb.ac ], [ @195, %bb.ah ], [ @194, %_RINvXs1V_NtCslLGyqsphxMB_10widestring9utfstringNtB7_11Utf32StringINtNtNtNtCs3oUPovFnLWP_4core4iter6traits7collect6ExtendcE6extendNtNtNtB1a_3str4iter5CharsECs8frGy5WneL6_4fish.exit ]
  invoke void @_RNvNtNtCs3oUPovFnLWP_4core5slice5index16slice_index_fail(i64 noundef %i.bp, i64 noundef %i.bq, i64 noundef %3, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.br) #34
          to label %.cont335 unwind label %.thread208.loopexit.split-lp

.cont335:                                         ; preds = %.invoke334
  unreachable

bb.ae:                                            ; preds = %.lr.ph.i
  %i.bs = icmp ult i64 %.sroa.05.0, %i.bk
  br i1 %i.bs, label %.invoke, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.bt = sub nuw i64 %.sroa.05.0, %i.bk
  br label %.loopexit283

bb.ag:                                            ; preds = %.loopexit283
  %i.bu = add i64 %.sroa.020.1, %.sroa.05.0       ; 3 uses
  %i.bv = icmp ult i64 %i.bu, %.sroa.05.0
  br i1 %i.bv, label %.invoke332, label %bb.ai

bb.ah:                                            ; preds = %.loopexit283, %bb.aj
  %.sroa.05.0.load1028 = phi i64 [ %i.bz, %bb.aj ], [ %.sroa.05.0, %.loopexit283 ] ; 5 uses
  %i.bw = icmp ugt i64 %.sroa.05.0.load1028, %3
  br i1 %i.bw, label %.invoke334, label %bb.ak, !prof !9

bb.ai:                                            ; preds = %bb.ag
  %i.bx = icmp eq i64 %i.bu, 0
  br i1 %i.bx, label %.invoke, label %bb.aj

.invoke332:                                       ; preds = %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionjE6map_orjNCNvMs6_NtCs8frGy5WneL6_4fish15parse_constantsNtB10_10ParseError20describe_with_prefixs0_0EB12_.exit, %bb.ag, %bb.v
  %i.by = phi ptr [ @179, %bb.v ], [ @182, %bb.ag ], [ @183, %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionjE6map_orjNCNvMs6_NtCs8frGy5WneL6_4fish15parse_constantsNtB10_10ParseError20describe_with_prefixs0_0EB12_.exit ]
  invoke void @_RNvNtNtCs3oUPovFnLWP_4core9panicking11panic_const24panic_const_add_overflow(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.by) #34
          to label %.cont333 unwind label %.thread208.loopexit.split-lp

.cont333:                                         ; preds = %.invoke332
  unreachable

bb.aj:                                            ; preds = %bb.ai
  %i.bz = add i64 %i.bu, -1
  br label %bb.ah

.invoke:                                          ; preds = %bb.u, %bb.ap, %bb.ai, %bb.ae, %bb.z
  %i.ca = phi ptr [ @181, %bb.ae ], [ @182, %bb.ai ], [ @180, %bb.z ], [ @184, %bb.ap ], [ @178, %bb.u ]
  invoke void @_RNvNtNtCs3oUPovFnLWP_4core9panicking11panic_const24panic_const_sub_overflow(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.ca) #34
          to label %.cont unwind label %.thread208.loopexit.split-lp

.cont:                                            ; preds = %.invoke
  unreachable

bb.ak:                                            ; preds = %bb.ah
  %.idx220 = shl nuw nsw i64 %.sroa.05.0.load1028, 2 ; 2 uses
  %.idx219 = shl nuw nsw i64 %3, 2                ; 2 uses
  %i.cb = getelementptr inbounds nuw i8, ptr %2, i64 %.idx219
  %i.cc = sub nuw nsw i64 %3, %.sroa.05.0.load1028
  %i.cd = icmp samesign eq i64 %.idx220, %.idx219
  br i1 %i.cd, label %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionjE6map_orjNCNvMs6_NtCs8frGy5WneL6_4fish15parse_constantsNtB10_10ParseError20describe_with_prefixs0_0EB12_.exit, label %.lr.ph.i91.preheader

.lr.ph.i91.preheader:                             ; preds = %bb.ak
  %i.ce = getelementptr inbounds nuw i8, ptr %2, i64 %.idx220
  br label %.lr.ph.i91

.lr.ph.i91:                                       ; preds = %.lr.ph.i91.preheader, %bb.al
  %.sroa.02.07.i = phi i64 [ %i.ci, %bb.al ], [ 0, %.lr.ph.i91.preheader ] ; 4 uses
  %i.cf = phi ptr [ %i.ch, %bb.al ], [ %i.ce, %.lr.ph.i91.preheader ] ; 2 uses
  %.val.i = load i32, ptr %i.cf, align 4, !range !27, !noalias !976, !noundef !8
  %i.cg = icmp eq i32 %.val.i, 10
  br i1 %i.cg, label %bb.am, label %bb.al

bb.al:                                            ; preds = %.lr.ph.i91
  %i.ch = getelementptr inbounds nuw i8, ptr %i.cf, i64 4 ; 2 uses
  %i.ci = add nuw nsw i64 %.sroa.02.07.i, 1
  %i.cj = icmp eq ptr %i.ch, %i.cb
  br i1 %i.cj, label %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionjE6map_orjNCNvMs6_NtCs8frGy5WneL6_4fish15parse_constantsNtB10_10ParseError20describe_with_prefixs0_0EB12_.exit, label %.lr.ph.i91

bb.am:                                            ; preds = %.lr.ph.i91
  %i.ck = icmp ult i64 %.sroa.02.07.i, %i.cc
  call void @llvm.assume(i1 %i.ck)
  %i.cl = add i64 %.sroa.02.07.i, %.sroa.05.0.load1028 ; 2 uses
  %i.cm = icmp ult i64 %i.cl, %.sroa.02.07.i
  br i1 %i.cm, label %bb.an, label %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionjE6map_orjNCNvMs6_NtCs8frGy5WneL6_4fish15parse_constantsNtB10_10ParseError20describe_with_prefixs0_0EB12_.exit

bb.an:                                            ; preds = %bb.am
  invoke void @_RNvNtNtCs3oUPovFnLWP_4core9panicking11panic_const24panic_const_add_overflow(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @25) #28
          to label %.noexc94 unwind label %.thread208.loopexit.split-lp

.noexc94:                                         ; preds = %bb.an
  unreachable

_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionjE6map_orjNCNvMs6_NtCs8frGy5WneL6_4fish15parse_constantsNtB10_10ParseError20describe_with_prefixs0_0EB12_.exit: ; preds = %bb.al, %bb.ak, %bb.am
  %.sroa.02.0.i = phi i64 [ %i.cl, %bb.am ], [ %3, %bb.ak ], [ %3, %bb.al ] ; 8 uses
  %i.cn = add i64 %.sroa.020.1, %.sroa.05.0       ; 2 uses
  %i.co = icmp ult i64 %i.cn, %.sroa.05.0
  br i1 %i.co, label %.invoke332, label %bb.ao

bb.ao:                                            ; preds = %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionjE6map_orjNCNvMs6_NtCs8frGy5WneL6_4fish15parse_constantsNtB10_10ParseError20describe_with_prefixs0_0EB12_.exit
  %i.cp = icmp ugt i64 %i.cn, %.sroa.02.0.i
  br i1 %i.cp, label %bb.ap, label %bb.aq

bb.ap:                                            ; preds = %bb.ao
  %i.cq = icmp ult i64 %.sroa.02.0.i, %.sroa.05.0
  br i1 %i.cq, label %.invoke, label %bb.ar

bb.aq:                                            ; preds = %bb.ao, %bb.ar
  %.sroa.020.2 = phi i64 [ %i.cr, %bb.ar ], [ %.sroa.020.1, %bb.ao ] ; 3 uses
  %.not75 = icmp ult i64 %.sroa.02.0.i, %.sroa.053.0
  br i1 %.not75, label %.invoke336, label %bb.as, !prof !9

bb.ar:                                            ; preds = %bb.ap
  %i.cr = sub nuw i64 %.sroa.02.0.i, %.sroa.05.0
  br label %bb.aq

.invoke336:                                       ; preds = %bb.as, %bb.aq
  %i.cs = phi ptr [ @185, %bb.aq ], [ @187, %bb.as ]
  %i.ct = phi i64 [ 40, %bb.aq ], [ 37, %bb.as ]
  %i.cu = phi ptr [ @186, %bb.aq ], [ @188, %bb.as ]
  invoke void @_RNvNtCs3oUPovFnLWP_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.cs, i64 noundef %i.ct, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.cu) #34
          to label %.cont337 unwind label %.thread208.loopexit.split-lp

.cont337:                                         ; preds = %.invoke336
  unreachable

bb.as:                                            ; preds = %bb.aq
  %.not76 = icmp ult i64 %.sroa.05.0, %.sroa.053.0
  br i1 %.not76, label %.invoke336, label %bb.at, !prof !9

bb.at:                                            ; preds = %bb.as
  %or.cond = and i1 %6, %.not73
  br i1 %or.cond, label %bb.cn, label %bb.au

bb.au:                                            ; preds = %bb.at
  %i.cv = getelementptr inbounds nuw i8, ptr %i.m, i64 16 ; 17 uses
  %i.cw = load i64, ptr %i.cv, align 8, !noundef !8 ; 2 uses
  %i.cx = icmp ult i64 %i.cw, 2305843009213693952
  call void @llvm.assume(i1 %i.cx)
  %i.cy = icmp eq i64 %i.cw, 0
  br i1 %i.cy, label %_RINvXs1V_NtCslLGyqsphxMB_10widestring9utfstringNtB7_11Utf32StringINtNtNtNtCs3oUPovFnLWP_4core4iter6traits7collect6ExtendcE6extendNtNtNtB1a_3str4iter5CharsECs8frGy5WneL6_4fish.exit, label %bb.av

bb.av:                                            ; preds = %bb.au
  invoke void @_RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VecmE7reserveCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.m, i64 noundef 1)
          to label %.noexc95 unwind label %.thread208.loopexit.split-lp

.noexc95:                                         ; preds = %bb.av
  %i.cz = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  %i.da = load i64, ptr %i.cv, align 8, !alias.scope !977, !noundef !8 ; 3 uses
  %i.db = load i64, ptr %i.m, align 8, !range !15, !alias.scope !977, !noundef !8
  %i.dc = icmp eq i64 %i.da, %i.db
  br i1 %i.dc, label %bb.aw, label %_RNCINvNvNtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator8for_each4callcNCINvXs1V_NtCslLGyqsphxMB_10widestring9utfstringNtB1q_11Utf32StringINtNtBa_7collect6ExtendcE6extendNtNtNtBe_3str4iter5CharsE0E0Cs8frGy5WneL6_4fish.exit.i.i.i

bb.aw:                                            ; preds = %.noexc95
  invoke void @_RNvMs4_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecmE8grow_oneCs4iCdMoxqDDc_12aho_corasick(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.m) #33
          to label %_RNCINvNvNtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator8for_each4callcNCINvXs1V_NtCslLGyqsphxMB_10widestring9utfstringNtB1q_11Utf32StringINtNtBa_7collect6ExtendcE6extendNtNtNtBe_3str4iter5CharsE0E0Cs8frGy5WneL6_4fish.exit.i.i.i unwind label %.thread208.loopexit

_RNCINvNvNtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator8for_each4callcNCINvXs1V_NtCslLGyqsphxMB_10widestring9utfstringNtB1q_11Utf32StringINtNtBa_7collect6ExtendcE6extendNtNtNtBe_3str4iter5CharsE0E0Cs8frGy5WneL6_4fish.exit.i.i.i: ; preds = %bb.aw, %.noexc95
  %i.dd = load ptr, ptr %i.cz, align 8, !alias.scope !977, !nonnull !8, !noundef !8
  %i.de = getelementptr inbounds nuw [4 x i8], ptr %i.dd, i64 %i.da
  store i32 10, ptr %i.de, align 4
  %i.df = add i64 %i.da, 1
  store i64 %i.df, ptr %i.cv, align 8, !alias.scope !977
  br label %_RINvXs1V_NtCslLGyqsphxMB_10widestring9utfstringNtB7_11Utf32StringINtNtNtNtCs3oUPovFnLWP_4core4iter6traits7collect6ExtendcE6extendNtNtNtB1a_3str4iter5CharsECs8frGy5WneL6_4fish.exit

_RINvXs1V_NtCslLGyqsphxMB_10widestring9utfstringNtB7_11Utf32StringINtNtNtNtCs3oUPovFnLWP_4core4iter6traits7collect6ExtendcE6extendNtNtNtB1a_3str4iter5CharsECs8frGy5WneL6_4fish.exit: ; preds = %_RNCINvNvNtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator8for_each4callcNCINvXs1V_NtCslLGyqsphxMB_10widestring9utfstringNtB1q_11Utf32StringINtNtBa_7collect6ExtendcE6extendNtNtNtBe_3str4iter5CharsE0E0Cs8frGy5WneL6_4fish.exit.i.i.i, %bb.au
  %.not77 = icmp ugt i64 %.sroa.02.0.i, %3
  br i1 %.not77, label %.invoke334, label %bb.ax, !prof !34

bb.ax:                                            ; preds = %_RINvXs1V_NtCslLGyqsphxMB_10widestring9utfstringNtB7_11Utf32StringINtNtNtNtCs3oUPovFnLWP_4core4iter6traits7collect6ExtendcE6extendNtNtNtB1a_3str4iter5CharsECs8frGy5WneL6_4fish.exit
  %i.dg = sub nuw i64 %.sroa.02.0.i, %.sroa.053.0 ; 3 uses
  %i.dh = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %.sroa.053.0
  invoke void @_RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VecmE7reserveCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.m, i64 noundef range(i64 0, 4611686018427387904) %i.dg)
          to label %.noexc97 unwind label %.thread208.loopexit.split-lp

.noexc97:                                         ; preds = %bb.ax
  %i.di = load i64, ptr %i.cv, align 8, !alias.scope !978, !noalias !979, !noundef !8 ; 3 uses
  %i.dj = icmp ult i64 %i.di, 2305843009213693952
  call void @llvm.assume(i1 %i.dj)
  %.not.i.i = icmp eq i64 %.sroa.02.0.i, %.sroa.053.0
  br i1 %.not.i.i, label %bb.az, label %bb.ay

bb.ay:                                            ; preds = %.noexc97
  %i.dk = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  %i.dl = load ptr, ptr %i.dk, align 8, !alias.scope !978, !noalias !979, !nonnull !8, !noundef !8
  %i.dm = getelementptr inbounds nuw [4 x i8], ptr %i.dl, i64 %i.di
  %i.dn = shl nuw nsw i64 %i.dg, 2
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %i.dm, ptr nonnull readonly align 4 %i.dh, i64 %i.dn, i1 false)
  %.pre.i.i = load i64, ptr %i.cv, align 8, !alias.scope !978, !noalias !979
  br label %bb.az

bb.az:                                            ; preds = %.noexc97, %bb.ay
  %i.do = phi i64 [ %.pre.i.i, %bb.ay ], [ %i.di, %.noexc97 ]
  %i.dp = add i64 %i.do, %i.dg
  store i64 %i.dp, ptr %i.cv, align 8, !alias.scope !978, !noalias !979
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h)
  store i64 0, ptr %i.h, align 8
  %.sroa.451.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.h, i64 8 ; 5 uses
  store ptr inttoptr (i64 4 to ptr), ptr %.sroa.451.0..sroa_idx, align 8
  %.sroa.552.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.h, i64 16 ; 8 uses
  store i64 0, ptr %.sroa.552.0..sroa_idx, align 8
  %i.dq = sub nuw i64 %.sroa.05.0, %.sroa.053.0
  invoke void @_RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VecmE7reserveCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.h, i64 noundef %i.dq)
          to label %.preheader unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.preheader:                                       ; preds = %bb.az
  %i.dr = icmp ult i64 %.sroa.053.0, %.sroa.05.0
  br i1 %i.dr, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %.preheader
  %i.ds = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %i.dt = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  %umax = call i64 @llvm.umax.i64(i64 %.sroa.053.0, i64 %3) ; 2 uses
  br label %bb.bb

.body139:                                         ; preds = %.loopexit, %.loopexit.split-lp.loopexit.split-lp.loopexit, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit, %.loopexit.split-lp.loopexit, %bb.cl, %bb.bt, %bb.ck, %bb.bs
  %.pn79 = phi { ptr, i32 } [ %lpad.phi261, %bb.bs ], [ %lpad.phi271, %bb.ck ], [ %i.gx, %bb.bt ], [ %i.jr, %bb.cl ], [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit262, %.loopexit.split-lp.loopexit ], [ %lpad.loopexit265, %.loopexit.split-lp.loopexit.split-lp.loopexit ], [ %lpad.loopexit272, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit ], [ %lpad.loopexit275, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit ], [ %lpad.loopexit278, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit ], [ %lpad.loopexit.split-lp279, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ]
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringECs8frGy5WneL6_4fish(ptr noalias nofree noundef align 8 dereferenceable(24) %i.h) #29
          to label %.thread unwind label %bb.s

.loopexit:                                        ; preds = %bb.bv
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %.body139

.loopexit.split-lp.loopexit:                      ; preds = %bb.be
  %lpad.loopexit262 = landingpad { ptr, i32 }
          cleanup
  br label %.body139

.loopexit.split-lp.loopexit.split-lp.loopexit:    ; preds = %bb.ba
  %lpad.loopexit265 = landingpad { ptr, i32 }
          cleanup
  br label %.body139

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit: ; preds = %bb.ca
  %lpad.loopexit272 = landingpad { ptr, i32 }
          cleanup
  br label %.body139

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit: ; preds = %bb.cc
  %lpad.loopexit275 = landingpad { ptr, i32 }
          cleanup
  br label %.body139

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit: ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VechEECs8frGy5WneL6_4fish.exit.i194, %bb.cb, %bb.bz, %bb.cf, %bb.cd
  %lpad.loopexit278 = landingpad { ptr, i32 }
          cleanup
  br label %.body139

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs1xwejQucwHj_5alloc6string6StringECs8frGy5WneL6_4fish.exit, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VechEECs8frGy5WneL6_4fish.exit.i, %bb.bd, %_RNCINvNvNtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator8for_each4callcNCINvXs1V_NtCslLGyqsphxMB_10widestring9utfstringNtB1q_11Utf32StringINtNtBa_7collect6ExtendcE6extendNtNtNtBe_3str4iter5CharsE0E0Cs8frGy5WneL6_4fish.exit.i.i.i102, %._crit_edge, %bb.by, %bb.bn, %bb.bl, %bb.bk, %bb.bi, %bb.az
  %lpad.loopexit.split-lp279 = landingpad { ptr, i32 }
          cleanup
  br label %.body139

._crit_edge:                                      ; preds = %_RINvXs1V_NtCslLGyqsphxMB_10widestring9utfstringNtB7_11Utf32StringINtNtNtNtCs3oUPovFnLWP_4core4iter6traits7collect6ExtendcE6extendNtNtNtB1a_3str4iter5CharsECs8frGy5WneL6_4fish.exit165, %.preheader
  invoke void @_RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VecmE7reserveCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.m, i64 noundef 1)
          to label %.noexc106 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc106:                                        ; preds = %._crit_edge
  %i.du = getelementptr inbounds nuw i8, ptr %i.m, i64 8 ; 5 uses
  %i.dv = load i64, ptr %i.cv, align 8, !alias.scope !980, !noundef !8 ; 3 uses
  %i.dw = load i64, ptr %i.m, align 8, !range !15, !alias.scope !980, !noundef !8
  %i.dx = icmp eq i64 %i.dv, %i.dw
  br i1 %i.dx, label %bb.ba, label %_RNCINvNvNtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator8for_each4callcNCINvXs1V_NtCslLGyqsphxMB_10widestring9utfstringNtB1q_11Utf32StringINtNtBa_7collect6ExtendcE6extendNtNtNtBe_3str4iter5CharsE0E0Cs8frGy5WneL6_4fish.exit.i.i.i102

bb.ba:                                            ; preds = %.noexc106
  invoke void @_RNvMs4_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecmE8grow_oneCs4iCdMoxqDDc_12aho_corasick(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.m) #33
          to label %_RNCINvNvNtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator8for_each4callcNCINvXs1V_NtCslLGyqsphxMB_10widestring9utfstringNtB1q_11Utf32StringINtNtBa_7collect6ExtendcE6extendNtNtNtBe_3str4iter5CharsE0E0Cs8frGy5WneL6_4fish.exit.i.i.i102 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit

_RNCINvNvNtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator8for_each4callcNCINvXs1V_NtCslLGyqsphxMB_10widestring9utfstringNtB1q_11Utf32StringINtNtBa_7collect6ExtendcE6extendNtNtNtBe_3str4iter5CharsE0E0Cs8frGy5WneL6_4fish.exit.i.i.i102: ; preds = %bb.ba, %.noexc106
  %i.dy = load ptr, ptr %i.du, align 8, !alias.scope !980, !nonnull !8, !noundef !8
  %i.dz = getelementptr inbounds nuw [4 x i8], ptr %i.dy, i64 %i.dv
  store i32 10, ptr %i.dz, align 4
  %i.ea = add i64 %i.dv, 1
  store i64 %i.ea, ptr %i.cv, align 8, !alias.scope !980
  %.val = load ptr, ptr %.sroa.451.0..sroa_idx, align 8, !nonnull !8, !noundef !8
  %.val85 = load i64, ptr %.sroa.552.0..sroa_idx, align 8, !noundef !8 ; 4 uses
  invoke void @_RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VecmE7reserveCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.m, i64 noundef range(i64 0, 4611686018427387904) %.val85)
          to label %.noexc111 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.bb:                                            ; preds = %.lr.ph, %_RINvXs1V_NtCslLGyqsphxMB_10widestring9utfstringNtB7_11Utf32StringINtNtNtNtCs3oUPovFnLWP_4core4iter6traits7collect6ExtendcE6extendNtNtNtB1a_3str4iter5CharsECs8frGy5WneL6_4fish.exit165
  %.sroa.053.2296 = phi i64 [ %.sroa.053.0, %.lr.ph ], [ %i.eb, %_RINvXs1V_NtCslLGyqsphxMB_10widestring9utfstringNtB7_11Utf32StringINtNtNtNtCs3oUPovFnLWP_4core4iter6traits7collect6ExtendcE6extendNtNtNtB1a_3str4iter5CharsECs8frGy5WneL6_4fish.exit165 ] ; 3 uses
  %i.eb = add i64 %.sroa.053.2296, 1              ; 2 uses
  %exitcond.not = icmp eq i64 %.sroa.053.2296, %umax
  br i1 %exitcond.not, label %bb.by, label %bb.bx

.noexc111:                                        ; preds = %_RNCINvNvNtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator8for_each4callcNCINvXs1V_NtCslLGyqsphxMB_10widestring9utfstringNtB1q_11Utf32StringINtNtBa_7collect6ExtendcE6extendNtNtNtBe_3str4iter5CharsE0E0Cs8frGy5WneL6_4fish.exit.i.i.i102
  %i.ec = load i64, ptr %i.cv, align 8, !alias.scope !981, !noundef !8 ; 3 uses
  %i.ed = icmp ult i64 %i.ec, 2305843009213693952
  call void @llvm.assume(i1 %i.ed)
  %.not.i.i109 = icmp eq i64 %.val85, 0
  br i1 %.not.i.i109, label %bb.bd, label %bb.bc

bb.bc:                                            ; preds = %.noexc111
  %i.ee = load ptr, ptr %i.du, align 8, !alias.scope !981, !nonnull !8, !noundef !8
  %i.ef = getelementptr inbounds nuw [4 x i8], ptr %i.ee, i64 %i.ec
  %i.eg = shl nuw nsw i64 %.val85, 2
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %i.ef, ptr nonnull readonly align 4 %.val, i64 %i.eg, i1 false)
  %.pre.i.i110 = load i64, ptr %i.cv, align 8, !alias.scope !981
  br label %bb.bd

bb.bd:                                            ; preds = %bb.bc, %.noexc111
  %i.eh = phi i64 [ %.pre.i.i110, %bb.bc ], [ %i.ec, %.noexc111 ]
  %i.ei = add i64 %i.eh, %.val85
  store i64 %i.ei, ptr %i.cv, align 8, !alias.scope !981
  invoke void @_RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VecmE7reserveCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.m, i64 noundef 1)
          to label %.noexc120 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc120:                                        ; preds = %bb.bd
  %i.ej = load i64, ptr %i.cv, align 8, !alias.scope !982, !noundef !8 ; 3 uses
  %i.ek = load i64, ptr %i.m, align 8, !range !15, !alias.scope !982, !noundef !8
  %i.el = icmp eq i64 %i.ej, %i.ek
  br i1 %i.el, label %bb.be, label %_RNCINvNvNtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator8for_each4callcNCINvXs1V_NtCslLGyqsphxMB_10widestring9utfstringNtB1q_11Utf32StringINtNtBa_7collect6ExtendcE6extendNtNtNtBe_3str4iter5CharsE0E0Cs8frGy5WneL6_4fish.exit.i.i.i116

bb.be:                                            ; preds = %.noexc120
  invoke void @_RNvMs4_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecmE8grow_oneCs4iCdMoxqDDc_12aho_corasick(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.m) #33
          to label %_RNCINvNvNtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator8for_each4callcNCINvXs1V_NtCslLGyqsphxMB_10widestring9utfstringNtB1q_11Utf32StringINtNtBa_7collect6ExtendcE6extendNtNtNtBe_3str4iter5CharsE0E0Cs8frGy5WneL6_4fish.exit.i.i.i116 unwind label %.loopexit.split-lp.loopexit

_RNCINvNvNtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator8for_each4callcNCINvXs1V_NtCslLGyqsphxMB_10widestring9utfstringNtB1q_11Utf32StringINtNtBa_7collect6ExtendcE6extendNtNtNtBe_3str4iter5CharsE0E0Cs8frGy5WneL6_4fish.exit.i.i.i116: ; preds = %bb.be, %.noexc120
  %i.em = load ptr, ptr %i.du, align 8, !alias.scope !982, !nonnull !8, !noundef !8
  %i.en = getelementptr inbounds nuw [4 x i8], ptr %i.em, i64 %i.ej
  store i32 94, ptr %i.en, align 4
  %i.eo = add i64 %i.ej, 1
  store i64 %i.eo, ptr %i.cv, align 8, !alias.scope !982
  %i.ep = icmp ugt i64 %.sroa.020.2, 1
  br i1 %i.ep, label %bb.bf, label %_RINvXs1V_NtCslLGyqsphxMB_10widestring9utfstringNtB7_11Utf32StringINtNtNtNtCs3oUPovFnLWP_4core4iter6traits7collect6ExtendcE6extendNtNtNtB1a_3str4iter5CharsECs8frGy5WneL6_4fish.exit153

bb.bf:                                            ; preds = %_RNCINvNvNtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator8for_each4callcNCINvXs1V_NtCslLGyqsphxMB_10widestring9utfstringNtB1q_11Utf32StringINtNtBa_7collect6ExtendcE6extendNtNtNtBe_3str4iter5CharsE0E0Cs8frGy5WneL6_4fish.exit.i.i.i116
  %i.eq = add i64 %.sroa.020.2, %.sroa.05.0       ; 2 uses
  %i.er = icmp ult i64 %i.eq, %.sroa.05.0
  br i1 %i.er, label %bb.bi, label %bb.bj

_RINvXs1V_NtCslLGyqsphxMB_10widestring9utfstringNtB7_11Utf32StringINtNtNtNtCs3oUPovFnLWP_4core4iter6traits7collect6ExtendcE6extendNtNtNtB1a_3str4iter5CharsECs8frGy5WneL6_4fish.exit153: ; preds = %_RNCINvNvNtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator8for_each4callcNCINvXs1V_NtCslLGyqsphxMB_10widestring9utfstringNtB1q_11Utf32StringINtNtBa_7collect6ExtendcE6extendNtNtNtBe_3str4iter5CharsE0E0Cs8frGy5WneL6_4fish.exit.i.i.i147, %bb.bm, %_RNCINvNvNtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator8for_each4callcNCINvXs1V_NtCslLGyqsphxMB_10widestring9utfstringNtB1q_11Utf32StringINtNtBa_7collect6ExtendcE6extendNtNtNtBe_3str4iter5CharsE0E0Cs8frGy5WneL6_4fish.exit.i.i.i116
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.m, i64 24, i1 false)
  invoke void @_RNvXsp_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecmENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.h)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecmEECs8frGy5WneL6_4fish.exit.i unwind label %bb.bg

bb.bg:                                            ; preds = %_RINvXs1V_NtCslLGyqsphxMB_10widestring9utfstringNtB7_11Utf32StringINtNtNtNtCs3oUPovFnLWP_4core4iter6traits7collect6ExtendcE6extendNtNtNtB1a_3str4iter5CharsECs8frGy5WneL6_4fish.exit153
  %i.es = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecmENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.h)
          to label %.thread205 unwind label %bb.bh

bb.bh:                                            ; preds = %bb.bg
  %i.et = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #30
  unreachable

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecmEECs8frGy5WneL6_4fish.exit.i: ; preds = %_RINvXs1V_NtCslLGyqsphxMB_10widestring9utfstringNtB7_11Utf32StringINtNtNtNtCs3oUPovFnLWP_4core4iter6traits7collect6ExtendcE6extendNtNtNtB1a_3str4iter5CharsECs8frGy5WneL6_4fish.exit153
  call void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecmENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.h)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m)
  br label %bb.bw

bb.bi:                                            ; preds = %bb.bf
  invoke void @_RNvNtNtCs3oUPovFnLWP_4core9panicking11panic_const24panic_const_add_overflow(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @190) #34
          to label %bb.x unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.bj:                                            ; preds = %bb.bf
  %.not78 = icmp ugt i64 %i.eq, %3
  br i1 %.not78, label %bb.bl, label %bb.bk, !prof !9

bb.bk:                                            ; preds = %bb.bj
  %i.eu = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %.sroa.05.0
  %i.ev = invoke { i64, i64 } @_RNvCsiolMeYWJ97s_13fish_fallback13fish_wcswidth(ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) %i.eu, i64 noundef %.sroa.020.2)
          to label %bb.bm unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 2 uses

bb.bl:                                            ; preds = %bb.bj
  invoke void @_RNvNtCs3oUPovFnLWP_4core6option13expect_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @34, i64 noundef 19, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @192) #34
          to label %bb.x unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.bm:                                            ; preds = %bb.bk
  %i.ew = extractvalue { i64, i64 } %i.ev, 0
  %i.ex = trunc nuw i64 %i.ew to i1
  %i.ey = extractvalue { i64, i64 } %i.ev, 1
  %.sroa.035.0 = select i1 %i.ex, i64 %i.ey, i64 0 ; 2 uses
  %i.ez = icmp ugt i64 %.sroa.035.0, 1
  br i1 %i.ez, label %bb.bn, label %_RINvXs1V_NtCslLGyqsphxMB_10widestring9utfstringNtB7_11Utf32StringINtNtNtNtCs3oUPovFnLWP_4core4iter6traits7collect6ExtendcE6extendNtNtNtB1a_3str4iter5CharsECs8frGy5WneL6_4fish.exit153

bb.bn:                                            ; preds = %bb.bm
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  %i.fa = add i64 %.sroa.035.0, -2
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  invoke void @_RNvMNtCs1xwejQucwHj_5alloc5sliceSh6repeatCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.b, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @191, i64 noundef 1, i64 noundef %i.fa)
          to label %bb.bo unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.bo:                                            ; preds = %bb.bn
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.f, ptr noundef nonnull align 8 dereferenceable(24) %i.b, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %i.fb = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %i.fc = load ptr, ptr %i.fb, align 8, !nonnull !8, !noundef !8 ; 2 uses
  %i.fd = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  %i.fe = load i64, ptr %i.fd, align 8, !noundef !8 ; 4 uses
  %i.ff = getelementptr inbounds nuw i8, ptr %i.fc, i64 %i.fe ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !983)
  %i.fg = lshr i64 %i.fe, 2
  %i.fh = and i64 %i.fe, 3
  %.not.i.i126 = icmp ne i64 %i.fh, 0
  %i.fi = zext i1 %.not.i.i126 to i64
  %.sroa.0.0.i.i127 = add nuw nsw i64 %i.fg, %i.fi
  invoke void @_RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VecmE7reserveCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.m, i64 noundef %.sroa.0.0.i.i127)
          to label %.noexc136 unwind label %.loopexit.split-lp258

.noexc136:                                        ; preds = %bb.bo
  call void @llvm.experimental.noalias.scope.decl(metadata !984)
  call void @llvm.experimental.noalias.scope.decl(metadata !985)
  %.not.i9.i.i.i = icmp samesign eq i64 %i.fe, 0
  br i1 %.not.i9.i.i.i, label %_RINvXs1V_NtCslLGyqsphxMB_10widestring9utfstringNtB7_11Utf32StringINtNtNtNtCs3oUPovFnLWP_4core4iter6traits7collect6ExtendcE6extendNtNtNtB1a_3str4iter5CharsECs8frGy5WneL6_4fish.exit138, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %.noexc136, %_RNCINvNvNtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator8for_each4callcNCINvXs1V_NtCslLGyqsphxMB_10widestring9utfstringNtB1q_11Utf32StringINtNtBa_7collect6ExtendcE6extendNtNtNtBe_3str4iter5CharsE0E0Cs8frGy5WneL6_4fish.exit.i.i.i132
  %.sroa.0.010.i.i.i128 = phi ptr [ %.sroa.0.1.ph.i.i.i130, %_RNCINvNvNtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator8for_each4callcNCINvXs1V_NtCslLGyqsphxMB_10widestring9utfstringNtB1q_11Utf32StringINtNtBa_7collect6ExtendcE6extendNtNtNtBe_3str4iter5CharsE0E0Cs8frGy5WneL6_4fish.exit.i.i.i132 ], [ %i.fc, %.noexc136 ] ; 5 uses
  %i.fj = getelementptr inbounds nuw i8, ptr %.sroa.0.010.i.i.i128, i64 1 ; 3 uses
  %i.fk = load i8, ptr %.sroa.0.010.i.i.i128, align 1, !noalias !986, !noundef !8 ; 5 uses
  %i.fl = icmp sgt i8 %i.fk, -1
  br i1 %i.fl, label %bb.bp, label %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs8frGy5WneL6_4fish.exit12.i.i.i.i.i129

_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs8frGy5WneL6_4fish.exit12.i.i.i.i.i129: ; preds = %.lr.ph.i.i.i
  %i.fm = and i8 %i.fk, 31
  %i.fn = zext nneg i8 %i.fm to i32               ; 3 uses
  %i.fo = icmp ne ptr %i.fj, %i.ff
  call void @llvm.assume(i1 %i.fo)
  %i.fp = getelementptr inbounds nuw i8, ptr %.sroa.0.010.i.i.i128, i64 2 ; 3 uses
  %i.fq = load i8, ptr %i.fj, align 1, !noalias !986, !noundef !8
  %i.fr = shl nuw nsw i32 %i.fn, 6
  %i.fs = and i8 %i.fq, 63
  %i.ft = zext nneg i8 %i.fs to i32               ; 2 uses
  %i.fu = or disjoint i32 %i.fr, %i.ft
  %i.fv = icmp samesign ugt i8 %i.fk, -33
  br i1 %i.fv, label %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs8frGy5WneL6_4fish.exit14.i.i.i.i.i134, label %bb.bq

bb.bp:                                            ; preds = %.lr.ph.i.i.i
  %i.fw = zext nneg i8 %i.fk to i32
  br label %bb.bq

_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs8frGy5WneL6_4fish.exit14.i.i.i.i.i134: ; preds = %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs8frGy5WneL6_4fish.exit12.i.i.i.i.i129
  %i.fx = icmp ne ptr %i.fp, %i.ff
  call void @llvm.assume(i1 %i.fx)
  %i.fy = getelementptr inbounds nuw i8, ptr %.sroa.0.010.i.i.i128, i64 3 ; 3 uses
  %i.fz = load i8, ptr %i.fp, align 1, !noalias !986, !noundef !8
  %i.ga = shl nuw nsw i32 %i.ft, 6
  %i.gb = and i8 %i.fz, 63
  %i.gc = zext nneg i8 %i.gb to i32
  %i.gd = or disjoint i32 %i.ga, %i.gc            ; 2 uses
  %i.ge = shl nuw nsw i32 %i.fn, 12
  %i.gf = or disjoint i32 %i.gd, %i.ge
  %i.gg = icmp samesign ugt i8 %i.fk, -17
  br i1 %i.gg, label %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs8frGy5WneL6_4fish.exit16.i.i.i.i.i135, label %bb.bq

_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs8frGy5WneL6_4fish.exit16.i.i.i.i.i135: ; preds = %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs8frGy5WneL6_4fish.exit14.i.i.i.i.i134
  %i.gh = icmp ne ptr %i.fy, %i.ff
  call void @llvm.assume(i1 %i.gh)
  %i.gi = getelementptr inbounds nuw i8, ptr %.sroa.0.010.i.i.i128, i64 4
  %i.gj = load i8, ptr %i.fy, align 1, !noalias !986, !noundef !8
  %i.gk = shl nuw nsw i32 %i.fn, 18
  %i.gl = and i32 %i.gk, 1835008
  %i.gm = shl nuw nsw i32 %i.gd, 6
  %i.gn = and i8 %i.gj, 63
  %i.go = zext nneg i8 %i.gn to i32
  %i.gp = or disjoint i32 %i.gm, %i.go
  %i.gq = or disjoint i32 %i.gp, %i.gl
  br label %bb.bq

bb.bq:                                            ; preds = %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs8frGy5WneL6_4fish.exit16.i.i.i.i.i135, %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs8frGy5WneL6_4fish.exit14.i.i.i.i.i134, %bb.bp, %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs8frGy5WneL6_4fish.exit12.i.i.i.i.i129
  %.sroa.0.1.ph.i.i.i130 = phi ptr [ %i.fp, %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs8frGy5WneL6_4fish.exit12.i.i.i.i.i129 ], [ %i.fy, %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs8frGy5WneL6_4fish.exit14.i.i.i.i.i134 ], [ %i.gi, %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs8frGy5WneL6_4fish.exit16.i.i.i.i.i135 ], [ %i.fj, %bb.bp ] ; 2 uses
  %spec.select.i.ph.i.i.i131 = phi i32 [ %i.fu, %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs8frGy5WneL6_4fish.exit12.i.i.i.i.i129 ], [ %i.gf, %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs8frGy5WneL6_4fish.exit14.i.i.i.i.i134 ], [ %i.gq, %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs8frGy5WneL6_4fish.exit16.i.i.i.i.i135 ], [ %i.fw, %bb.bp ]
  %i.gr = load i64, ptr %i.cv, align 8, !alias.scope !987, !noundef !8 ; 3 uses
  %i.gs = load i64, ptr %i.m, align 8, !range !15, !alias.scope !987, !noundef !8
  %i.gt = icmp eq i64 %i.gr, %i.gs
  br i1 %i.gt, label %bb.br, label %_RNCINvNvNtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator8for_each4callcNCINvXs1V_NtCslLGyqsphxMB_10widestring9utfstringNtB1q_11Utf32StringINtNtBa_7collect6ExtendcE6extendNtNtNtBe_3str4iter5CharsE0E0Cs8frGy5WneL6_4fish.exit.i.i.i132

bb.br:                                            ; preds = %bb.bq
  invoke void @_RNvMs4_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecmE8grow_oneCs4iCdMoxqDDc_12aho_corasick(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.m) #33
          to label %_RNCINvNvNtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator8for_each4callcNCINvXs1V_NtCslLGyqsphxMB_10widestring9utfstringNtB1q_11Utf32StringINtNtBa_7collect6ExtendcE6extendNtNtNtBe_3str4iter5CharsE0E0Cs8frGy5WneL6_4fish.exit.i.i.i132 unwind label %.loopexit257

_RNCINvNvNtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator8for_each4callcNCINvXs1V_NtCslLGyqsphxMB_10widestring9utfstringNtB1q_11Utf32StringINtNtBa_7collect6ExtendcE6extendNtNtNtBe_3str4iter5CharsE0E0Cs8frGy5WneL6_4fish.exit.i.i.i132: ; preds = %bb.br, %bb.bq
  %i.gu = load ptr, ptr %i.du, align 8, !alias.scope !987, !nonnull !8, !noundef !8
  %i.gv = getelementptr inbounds nuw [4 x i8], ptr %i.gu, i64 %i.gr
  store i32 %spec.select.i.ph.i.i.i131, ptr %i.gv, align 4
  %i.gw = add i64 %i.gr, 1
  store i64 %i.gw, ptr %i.cv, align 8, !alias.scope !987
  %.not.i.i.i.i133 = icmp eq ptr %.sroa.0.1.ph.i.i.i130, %i.ff
  br i1 %.not.i.i.i.i133, label %_RINvXs1V_NtCslLGyqsphxMB_10widestring9utfstringNtB7_11Utf32StringINtNtNtNtCs3oUPovFnLWP_4core4iter6traits7collect6ExtendcE6extendNtNtNtB1a_3str4iter5CharsECs8frGy5WneL6_4fish.exit138, label %.lr.ph.i.i.i

.loopexit257:                                     ; preds = %bb.br
  %lpad.loopexit259 = landingpad { ptr, i32 }
          cleanup
  br label %bb.bs

.loopexit.split-lp258:                            ; preds = %bb.bo
  %lpad.loopexit.split-lp260 = landingpad { ptr, i32 }
          cleanup
  br label %bb.bs

bb.bs:                                            ; preds = %.loopexit.split-lp258, %.loopexit257
  %lpad.phi261 = phi { ptr, i32 } [ %lpad.loopexit259, %.loopexit257 ], [ %lpad.loopexit.split-lp260, %.loopexit.split-lp258 ]
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs1xwejQucwHj_5alloc6string6StringECs8frGy5WneL6_4fish(ptr noalias nofree noundef align 8 dereferenceable(24) %i.f) #29
          to label %.body139 unwind label %bb.s

_RINvXs1V_NtCslLGyqsphxMB_10widestring9utfstringNtB7_11Utf32StringINtNtNtNtCs3oUPovFnLWP_4core4iter6traits7collect6ExtendcE6extendNtNtNtB1a_3str4iter5CharsECs8frGy5WneL6_4fish.exit138: ; preds = %_RNCINvNvNtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator8for_each4callcNCINvXs1V_NtCslLGyqsphxMB_10widestring9utfstringNtB1q_11Utf32StringINtNtBa_7collect6ExtendcE6extendNtNtNtBe_3str4iter5CharsE0E0Cs8frGy5WneL6_4fish.exit.i.i.i132, %.noexc136
  invoke void @_RNvXsp_NtCs1xwejQucwHj_5alloc3vecINtB5_3VechENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.f)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VechEECs8frGy5WneL6_4fish.exit.i unwind label %bb.bt

bb.bt:                                            ; preds = %_RINvXs1V_NtCslLGyqsphxMB_10widestring9utfstringNtB7_11Utf32StringINtNtNtNtCs3oUPovFnLWP_4core4iter6traits7collect6ExtendcE6extendNtNtNtB1a_3str4iter5CharsECs8frGy5WneL6_4fish.exit138
  %i.gx = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVechENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.f)
          to label %.body139 unwind label %bb.bu

bb.bu:                                            ; preds = %bb.bt
  %i.gy = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #30
  unreachable

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VechEECs8frGy5WneL6_4fish.exit.i: ; preds = %_RINvXs1V_NtCslLGyqsphxMB_10widestring9utfstringNtB7_11Utf32StringINtNtNtNtCs3oUPovFnLWP_4core4iter6traits7collect6ExtendcE6extendNtNtNtB1a_3str4iter5CharsECs8frGy5WneL6_4fish.exit138
  invoke void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVechENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.f)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs1xwejQucwHj_5alloc6string6StringECs8frGy5WneL6_4fish.exit unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs1xwejQucwHj_5alloc6string6StringECs8frGy5WneL6_4fish.exit: ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VechEECs8frGy5WneL6_4fish.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  invoke void @_RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VecmE7reserveCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.m, i64 noundef 1)
          to label %.noexc151 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc151:                                        ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs1xwejQucwHj_5alloc6string6StringECs8frGy5WneL6_4fish.exit
  %i.gz = load i64, ptr %i.cv, align 8, !alias.scope !988, !noundef !8 ; 3 uses
  %i.ha = load i64, ptr %i.m, align 8, !range !15, !alias.scope !988, !noundef !8
  %i.hb = icmp eq i64 %i.gz, %i.ha
  br i1 %i.hb, label %bb.bv, label %_RNCINvNvNtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator8for_each4callcNCINvXs1V_NtCslLGyqsphxMB_10widestring9utfstringNtB1q_11Utf32StringINtNtBa_7collect6ExtendcE6extendNtNtNtBe_3str4iter5CharsE0E0Cs8frGy5WneL6_4fish.exit.i.i.i147

bb.bv:                                            ; preds = %.noexc151
  invoke void @_RNvMs4_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecmE8grow_oneCs4iCdMoxqDDc_12aho_corasick(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.m) #33
          to label %_RNCINvNvNtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator8for_each4callcNCINvXs1V_NtCslLGyqsphxMB_10widestring9utfstringNtB1q_11Utf32StringINtNtBa_7collect6ExtendcE6extendNtNtNtBe_3str4iter5CharsE0E0Cs8frGy5WneL6_4fish.exit.i.i.i147 unwind label %.loopexit

_RNCINvNvNtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator8for_each4callcNCINvXs1V_NtCslLGyqsphxMB_10widestring9utfstringNtB1q_11Utf32StringINtNtBa_7collect6ExtendcE6extendNtNtNtBe_3str4iter5CharsE0E0Cs8frGy5WneL6_4fish.exit.i.i.i147: ; preds = %bb.bv, %.noexc151
  %i.hc = load ptr, ptr %i.du, align 8, !alias.scope !988, !nonnull !8, !noundef !8
  %i.hd = getelementptr inbounds nuw [4 x i8], ptr %i.hc, i64 %i.gz
  store i32 94, ptr %i.hd, align 4
  %i.he = add i64 %i.gz, 1
  store i64 %i.he, ptr %i.cv, align 8, !alias.scope !988
  br label %_RINvXs1V_NtCslLGyqsphxMB_10widestring9utfstringNtB7_11Utf32StringINtNtNtNtCs3oUPovFnLWP_4core4iter6traits7collect6ExtendcE6extendNtNtNtB1a_3str4iter5CharsECs8frGy5WneL6_4fish.exit153

bb.bw:                                            ; preds = %bb.cp, %bb.cn, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecmEECs8frGy5WneL6_4fish.exit.i
  ret void

bb.bx:                                            ; preds = %bb.bb
  %i.hf = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %.sroa.053.2296
  %i.hg = load i32, ptr %i.hf, align 4, !range !27, !noundef !8 ; 2 uses
  switch i32 %i.hg, label %bb.cd [
    i32 9, label %bb.bz
    i32 10, label %bb.cb
  ]

bb.by:                                            ; preds = %bb.bb
  invoke void @_RNvNtCs3oUPovFnLWP_4core9panicking18panic_bounds_check(i64 noundef %umax, i64 noundef %3, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @193) #34
          to label %bb.x unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.bz:                                            ; preds = %bb.bx
  invoke void @_RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VecmE7reserveCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.h, i64 noundef 1)
          to label %.noexc163 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit

.noexc163:                                        ; preds = %bb.bz
  %i.hh = load i64, ptr %.sroa.552.0..sroa_idx, align 8, !alias.scope !989, !noundef !8 ; 3 uses
  %i.hi = load i64, ptr %i.h, align 8, !range !15, !alias.scope !989, !noundef !8
  %i.hj = icmp eq i64 %i.hh, %i.hi
  br i1 %i.hj, label %bb.ca, label %_RNCINvNvNtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator8for_each4callcNCINvXs1V_NtCslLGyqsphxMB_10widestring9utfstringNtB1q_11Utf32StringINtNtBa_7collect6ExtendcE6extendNtNtNtBe_3str4iter5CharsE0E0Cs8frGy5WneL6_4fish.exit.i.i.i159

bb.ca:                                            ; preds = %.noexc163
  invoke void @_RNvMs4_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecmE8grow_oneCs4iCdMoxqDDc_12aho_corasick(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.h) #33
          to label %_RNCINvNvNtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator8for_each4callcNCINvXs1V_NtCslLGyqsphxMB_10widestring9utfstringNtB1q_11Utf32StringINtNtBa_7collect6ExtendcE6extendNtNtNtBe_3str4iter5CharsE0E0Cs8frGy5WneL6_4fish.exit.i.i.i159 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit

_RNCINvNvNtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator8for_each4callcNCINvXs1V_NtCslLGyqsphxMB_10widestring9utfstringNtB1q_11Utf32StringINtNtBa_7collect6ExtendcE6extendNtNtNtBe_3str4iter5CharsE0E0Cs8frGy5WneL6_4fish.exit.i.i.i159: ; preds = %bb.ca, %.noexc163
  %i.hk = load ptr, ptr %.sroa.451.0..sroa_idx, align 8, !alias.scope !989, !nonnull !8, !noundef !8
  %i.hl = getelementptr inbounds nuw [4 x i8], ptr %i.hk, i64 %i.hh
  store i32 9, ptr %i.hl, align 4
  %i.hm = add i64 %i.hh, 1
  store i64 %i.hm, ptr %.sroa.552.0..sroa_idx, align 8, !alias.scope !989
  br label %_RINvXs1V_NtCslLGyqsphxMB_10widestring9utfstringNtB7_11Utf32StringINtNtNtNtCs3oUPovFnLWP_4core4iter6traits7collect6ExtendcE6extendNtNtNtB1a_3str4iter5CharsECs8frGy5WneL6_4fish.exit165

_RINvXs1V_NtCslLGyqsphxMB_10widestring9utfstringNtB7_11Utf32StringINtNtNtNtCs3oUPovFnLWP_4core4iter6traits7collect6ExtendcE6extendNtNtNtB1a_3str4iter5CharsECs8frGy5WneL6_4fish.exit165: ; preds = %_RNCINvNvNtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator8for_each4callcNCINvXs1V_NtCslLGyqsphxMB_10widestring9utfstringNtB1q_11Utf32StringINtNtBa_7collect6ExtendcE6extendNtNtNtBe_3str4iter5CharsE0E0Cs8frGy5WneL6_4fish.exit.i.i.i171, %_RNCINvNvNtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator8for_each4callcNCINvXs1V_NtCslLGyqsphxMB_10widestring9utfstringNtB1q_11Utf32StringINtNtBa_7collect6ExtendcE6extendNtNtNtBe_3str4iter5CharsE0E0Cs8frGy5WneL6_4fish.exit.i.i.i159, %bb.ce, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs1xwejQucwHj_5alloc6string6StringECs8frGy5WneL6_4fish.exit198
  %exitcond312.not = icmp eq i64 %i.eb, %.sroa.05.0
  br i1 %exitcond312.not, label %._crit_edge, label %bb.bb

bb.cb:                                            ; preds = %bb.bx
  invoke void @_RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VecmE7reserveCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.h, i64 noundef 1)
          to label %.noexc175 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit

.noexc175:                                        ; preds = %bb.cb
  %i.hn = load i64, ptr %.sroa.552.0..sroa_idx, align 8, !alias.scope !990, !noundef !8 ; 3 uses
  %i.ho = load i64, ptr %i.h, align 8, !range !15, !alias.scope !990, !noundef !8
  %i.hp = icmp eq i64 %i.hn, %i.ho
  br i1 %i.hp, label %bb.cc, label %_RNCINvNvNtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator8for_each4callcNCINvXs1V_NtCslLGyqsphxMB_10widestring9utfstringNtB1q_11Utf32StringINtNtBa_7collect6ExtendcE6extendNtNtNtBe_3str4iter5CharsE0E0Cs8frGy5WneL6_4fish.exit.i.i.i171

bb.cc:                                            ; preds = %.noexc175
  invoke void @_RNvMs4_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecmE8grow_oneCs4iCdMoxqDDc_12aho_corasick(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.h) #33
          to label %_RNCINvNvNtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator8for_each4callcNCINvXs1V_NtCslLGyqsphxMB_10widestring9utfstringNtB1q_11Utf32StringINtNtBa_7collect6ExtendcE6extendNtNtNtBe_3str4iter5CharsE0E0Cs8frGy5WneL6_4fish.exit.i.i.i171 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit

_RNCINvNvNtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator8for_each4callcNCINvXs1V_NtCslLGyqsphxMB_10widestring9utfstringNtB1q_11Utf32StringINtNtBa_7collect6ExtendcE6extendNtNtNtBe_3str4iter5CharsE0E0Cs8frGy5WneL6_4fish.exit.i.i.i171: ; preds = %bb.cc, %.noexc175
  %i.hq = load ptr, ptr %.sroa.451.0..sroa_idx, align 8, !alias.scope !990, !nonnull !8, !noundef !8
  %i.hr = getelementptr inbounds nuw [4 x i8], ptr %i.hq, i64 %i.hn
  store i32 32, ptr %i.hr, align 4
  %i.hs = add i64 %i.hn, 1
  store i64 %i.hs, ptr %.sroa.552.0..sroa_idx, align 8, !alias.scope !990
  br label %_RINvXs1V_NtCslLGyqsphxMB_10widestring9utfstringNtB7_11Utf32StringINtNtNtNtCs3oUPovFnLWP_4core4iter6traits7collect6ExtendcE6extendNtNtNtB1a_3str4iter5CharsECs8frGy5WneL6_4fish.exit165

bb.cd:                                            ; preds = %bb.bx
  %i.ht = invoke { i64, i64 } @_RNvCsiolMeYWJ97s_13fish_fallback12fish_wcwidth(i32 noundef %i.hg)
          to label %bb.ce unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit ; 2 uses

bb.ce:                                            ; preds = %bb.cd
  %i.hu = extractvalue { i64, i64 } %i.ht, 0
  %i.hv = trunc nuw i64 %i.hu to i1
  br i1 %i.hv, label %bb.cf, label %_RINvXs1V_NtCslLGyqsphxMB_10widestring9utfstringNtB7_11Utf32StringINtNtNtNtCs3oUPovFnLWP_4core4iter6traits7collect6ExtendcE6extendNtNtNtB1a_3str4iter5CharsECs8frGy5WneL6_4fish.exit165

bb.cf:                                            ; preds = %bb.ce
  %i.hw = extractvalue { i64, i64 } %i.ht, 1
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  invoke void @_RNvMNtCs1xwejQucwHj_5alloc5sliceSh6repeatCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.c, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @115, i64 noundef 1, i64 noundef %i.hw)
          to label %bb.cg unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit

bb.cg:                                            ; preds = %bb.cf
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.g, ptr noundef nonnull align 8 dereferenceable(24) %i.c, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  %i.hx = load ptr, ptr %i.ds, align 8, !nonnull !8, !noundef !8 ; 2 uses
  %i.hy = load i64, ptr %i.dt, align 8, !noundef !8 ; 4 uses
  %i.hz = getelementptr inbounds nuw i8, ptr %i.hx, i64 %i.hy ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !991)
  %i.ia = lshr i64 %i.hy, 2
  %i.ib = and i64 %i.hy, 3
  %.not.i.i178 = icmp ne i64 %i.ib, 0
  %i.ic = zext i1 %.not.i.i178 to i64
  %.sroa.0.0.i.i179 = add nuw nsw i64 %i.ia, %i.ic
  invoke void @_RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VecmE7reserveCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.h, i64 noundef %.sroa.0.0.i.i179)
          to label %.noexc190 unwind label %.loopexit.split-lp268

.noexc190:                                        ; preds = %bb.cg
  call void @llvm.experimental.noalias.scope.decl(metadata !992)
  call void @llvm.experimental.noalias.scope.decl(metadata !993)
  %.not.i9.i.i.i180 = icmp samesign eq i64 %i.hy, 0
  br i1 %.not.i9.i.i.i180, label %_RINvXs1V_NtCslLGyqsphxMB_10widestring9utfstringNtB7_11Utf32StringINtNtNtNtCs3oUPovFnLWP_4core4iter6traits7collect6ExtendcE6extendNtNtNtB1a_3str4iter5CharsECs8frGy5WneL6_4fish.exit192, label %.lr.ph.i.i.i181

.lr.ph.i.i.i181:                                  ; preds = %.noexc190, %_RNCINvNvNtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator8for_each4callcNCINvXs1V_NtCslLGyqsphxMB_10widestring9utfstringNtB1q_11Utf32StringINtNtBa_7collect6ExtendcE6extendNtNtNtBe_3str4iter5CharsE0E0Cs8frGy5WneL6_4fish.exit.i.i.i186
  %.sroa.0.010.i.i.i182 = phi ptr [ %.sroa.0.1.ph.i.i.i184, %_RNCINvNvNtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator8for_each4callcNCINvXs1V_NtCslLGyqsphxMB_10widestring9utfstringNtB1q_11Utf32StringINtNtBa_7collect6ExtendcE6extendNtNtNtBe_3str4iter5CharsE0E0Cs8frGy5WneL6_4fish.exit.i.i.i186 ], [ %i.hx, %.noexc190 ] ; 5 uses
  %i.id = getelementptr inbounds nuw i8, ptr %.sroa.0.010.i.i.i182, i64 1 ; 3 uses
  %i.ie = load i8, ptr %.sroa.0.010.i.i.i182, align 1, !noalias !994, !noundef !8 ; 5 uses
  %i.if = icmp sgt i8 %i.ie, -1
  br i1 %i.if, label %bb.ch, label %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs8frGy5WneL6_4fish.exit12.i.i.i.i.i183

_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs8frGy5WneL6_4fish.exit12.i.i.i.i.i183: ; preds = %.lr.ph.i.i.i181
  %i.ig = and i8 %i.ie, 31
  %i.ih = zext nneg i8 %i.ig to i32               ; 3 uses
  %i.ii = icmp ne ptr %i.id, %i.hz
  call void @llvm.assume(i1 %i.ii)
  %i.ij = getelementptr inbounds nuw i8, ptr %.sroa.0.010.i.i.i182, i64 2 ; 3 uses
  %i.ik = load i8, ptr %i.id, align 1, !noalias !994, !noundef !8
  %i.il = shl nuw nsw i32 %i.ih, 6
  %i.im = and i8 %i.ik, 63
  %i.in = zext nneg i8 %i.im to i32               ; 2 uses
  %i.io = or disjoint i32 %i.il, %i.in
  %i.ip = icmp samesign ugt i8 %i.ie, -33
  br i1 %i.ip, label %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs8frGy5WneL6_4fish.exit14.i.i.i.i.i188, label %bb.ci

bb.ch:                                            ; preds = %.lr.ph.i.i.i181
  %i.iq = zext nneg i8 %i.ie to i32
  br label %bb.ci

_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs8frGy5WneL6_4fish.exit14.i.i.i.i.i188: ; preds = %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs8frGy5WneL6_4fish.exit12.i.i.i.i.i183
  %i.ir = icmp ne ptr %i.ij, %i.hz
  call void @llvm.assume(i1 %i.ir)
  %i.is = getelementptr inbounds nuw i8, ptr %.sroa.0.010.i.i.i182, i64 3 ; 3 uses
  %i.it = load i8, ptr %i.ij, align 1, !noalias !994, !noundef !8
  %i.iu = shl nuw nsw i32 %i.in, 6
  %i.iv = and i8 %i.it, 63
  %i.iw = zext nneg i8 %i.iv to i32
  %i.ix = or disjoint i32 %i.iu, %i.iw            ; 2 uses
  %i.iy = shl nuw nsw i32 %i.ih, 12
  %i.iz = or disjoint i32 %i.ix, %i.iy
  %i.ja = icmp samesign ugt i8 %i.ie, -17
  br i1 %i.ja, label %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs8frGy5WneL6_4fish.exit16.i.i.i.i.i189, label %bb.ci

_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs8frGy5WneL6_4fish.exit16.i.i.i.i.i189: ; preds = %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs8frGy5WneL6_4fish.exit14.i.i.i.i.i188
  %i.jb = icmp ne ptr %i.is, %i.hz
  call void @llvm.assume(i1 %i.jb)
  %i.jc = getelementptr inbounds nuw i8, ptr %.sroa.0.010.i.i.i182, i64 4
  %i.jd = load i8, ptr %i.is, align 1, !noalias !994, !noundef !8
  %i.je = shl nuw nsw i32 %i.ih, 18
  %i.jf = and i32 %i.je, 1835008
  %i.jg = shl nuw nsw i32 %i.ix, 6
  %i.jh = and i8 %i.jd, 63
  %i.ji = zext nneg i8 %i.jh to i32
  %i.jj = or disjoint i32 %i.jg, %i.ji
  %i.jk = or disjoint i32 %i.jj, %i.jf
  br label %bb.ci

bb.ci:                                            ; preds = %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs8frGy5WneL6_4fish.exit16.i.i.i.i.i189, %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs8frGy5WneL6_4fish.exit14.i.i.i.i.i188, %bb.ch, %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs8frGy5WneL6_4fish.exit12.i.i.i.i.i183
  %.sroa.0.1.ph.i.i.i184 = phi ptr [ %i.ij, %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs8frGy5WneL6_4fish.exit12.i.i.i.i.i183 ], [ %i.is, %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs8frGy5WneL6_4fish.exit14.i.i.i.i.i188 ], [ %i.jc, %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs8frGy5WneL6_4fish.exit16.i.i.i.i.i189 ], [ %i.id, %bb.ch ] ; 2 uses
  %spec.select.i.ph.i.i.i185 = phi i32 [ %i.io, %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs8frGy5WneL6_4fish.exit12.i.i.i.i.i183 ], [ %i.iz, %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs8frGy5WneL6_4fish.exit14.i.i.i.i.i188 ], [ %i.jk, %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs8frGy5WneL6_4fish.exit16.i.i.i.i.i189 ], [ %i.iq, %bb.ch ]
  %i.jl = load i64, ptr %.sroa.552.0..sroa_idx, align 8, !alias.scope !995, !noundef !8 ; 3 uses
  %i.jm = load i64, ptr %i.h, align 8, !range !15, !alias.scope !995, !noundef !8
  %i.jn = icmp eq i64 %i.jl, %i.jm
  br i1 %i.jn, label %bb.cj, label %_RNCINvNvNtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator8for_each4callcNCINvXs1V_NtCslLGyqsphxMB_10widestring9utfstringNtB1q_11Utf32StringINtNtBa_7collect6ExtendcE6extendNtNtNtBe_3str4iter5CharsE0E0Cs8frGy5WneL6_4fish.exit.i.i.i186

bb.cj:                                            ; preds = %bb.ci
  invoke void @_RNvMs4_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecmE8grow_oneCs4iCdMoxqDDc_12aho_corasick(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.h) #33
          to label %_RNCINvNvNtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator8for_each4callcNCINvXs1V_NtCslLGyqsphxMB_10widestring9utfstringNtB1q_11Utf32StringINtNtBa_7collect6ExtendcE6extendNtNtNtBe_3str4iter5CharsE0E0Cs8frGy5WneL6_4fish.exit.i.i.i186 unwind label %.loopexit267

_RNCINvNvNtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator8for_each4callcNCINvXs1V_NtCslLGyqsphxMB_10widestring9utfstringNtB1q_11Utf32StringINtNtBa_7collect6ExtendcE6extendNtNtNtBe_3str4iter5CharsE0E0Cs8frGy5WneL6_4fish.exit.i.i.i186: ; preds = %bb.cj, %bb.ci
  %i.jo = load ptr, ptr %.sroa.451.0..sroa_idx, align 8, !alias.scope !995, !nonnull !8, !noundef !8
  %i.jp = getelementptr inbounds nuw [4 x i8], ptr %i.jo, i64 %i.jl
  store i32 %spec.select.i.ph.i.i.i185, ptr %i.jp, align 4
  %i.jq = add i64 %i.jl, 1
  store i64 %i.jq, ptr %.sroa.552.0..sroa_idx, align 8, !alias.scope !995
  %.not.i.i.i.i187 = icmp eq ptr %.sroa.0.1.ph.i.i.i184, %i.hz
  br i1 %.not.i.i.i.i187, label %_RINvXs1V_NtCslLGyqsphxMB_10widestring9utfstringNtB7_11Utf32StringINtNtNtNtCs3oUPovFnLWP_4core4iter6traits7collect6ExtendcE6extendNtNtNtB1a_3str4iter5CharsECs8frGy5WneL6_4fish.exit192, label %.lr.ph.i.i.i181

.loopexit267:                                     ; preds = %bb.cj
  %lpad.loopexit269 = landingpad { ptr, i32 }
          cleanup
  br label %bb.ck

.loopexit.split-lp268:                            ; preds = %bb.cg
  %lpad.loopexit.split-lp270 = landingpad { ptr, i32 }
          cleanup
  br label %bb.ck

bb.ck:                                            ; preds = %.loopexit.split-lp268, %.loopexit267
  %lpad.phi271 = phi { ptr, i32 } [ %lpad.loopexit269, %.loopexit267 ], [ %lpad.loopexit.split-lp270, %.loopexit.split-lp268 ]
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs1xwejQucwHj_5alloc6string6StringECs8frGy5WneL6_4fish(ptr noalias nofree noundef align 8 dereferenceable(24) %i.g) #29
          to label %.body139 unwind label %bb.s

_RINvXs1V_NtCslLGyqsphxMB_10widestring9utfstringNtB7_11Utf32StringINtNtNtNtCs3oUPovFnLWP_4core4iter6traits7collect6ExtendcE6extendNtNtNtB1a_3str4iter5CharsECs8frGy5WneL6_4fish.exit192: ; preds = %_RNCINvNvNtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator8for_each4callcNCINvXs1V_NtCslLGyqsphxMB_10widestring9utfstringNtB1q_11Utf32StringINtNtBa_7collect6ExtendcE6extendNtNtNtBe_3str4iter5CharsE0E0Cs8frGy5WneL6_4fish.exit.i.i.i186, %.noexc190
  invoke void @_RNvXsp_NtCs1xwejQucwHj_5alloc3vecINtB5_3VechENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.g)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VechEECs8frGy5WneL6_4fish.exit.i194 unwind label %bb.cl

bb.cl:                                            ; preds = %_RINvXs1V_NtCslLGyqsphxMB_10widestring9utfstringNtB7_11Utf32StringINtNtNtNtCs3oUPovFnLWP_4core4iter6traits7collect6ExtendcE6extendNtNtNtB1a_3str4iter5CharsECs8frGy5WneL6_4fish.exit192
  %i.jr = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVechENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.g)
          to label %.body139 unwind label %bb.cm

bb.cm:                                            ; preds = %bb.cl
  %i.js = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #30
  unreachable

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VechEECs8frGy5WneL6_4fish.exit.i194: ; preds = %_RINvXs1V_NtCslLGyqsphxMB_10widestring9utfstringNtB7_11Utf32StringINtNtNtNtCs3oUPovFnLWP_4core4iter6traits7collect6ExtendcE6extendNtNtNtB1a_3str4iter5CharsECs8frGy5WneL6_4fish.exit192
  invoke void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVechENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.g)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs1xwejQucwHj_5alloc6string6StringECs8frGy5WneL6_4fish.exit198 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs1xwejQucwHj_5alloc6string6StringECs8frGy5WneL6_4fish.exit198: ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VechEECs8frGy5WneL6_4fish.exit.i194
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  br label %_RINvXs1V_NtCslLGyqsphxMB_10widestring9utfstringNtB7_11Utf32StringINtNtNtNtCs3oUPovFnLWP_4core4iter6traits7collect6ExtendcE6extendNtNtNtB1a_3str4iter5CharsECs8frGy5WneL6_4fish.exit165

end_hunk_0

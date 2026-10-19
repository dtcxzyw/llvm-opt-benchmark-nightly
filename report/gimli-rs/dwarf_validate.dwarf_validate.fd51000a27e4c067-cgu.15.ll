Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/gimli-rs/original/dwarf_validate.dwarf_validate.fd51000a27e4c067-cgu.15?download=true
inline.NumInlined: 106
inline.NumDeleted: 66
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@_RNvMs_NtNtCsi68uqYEhoRA_5gimli4read6abbrevINtB4_11DebugAbbrevINtNtB6_12endian_slice11EndianSliceNtNtB8_9endianity13RunTimeEndianEE13abbreviationsCslKoDbeUmNq5_14dwarf_validate:bb.a
  %i.da = or disjoint i16 %i.cz, %i.cw            ; 2 uses
  %i.db = icmp sgt i8 %i.cu, -1
  br i1 %i.db, label %_RNvYINtNtNtCsi68uqYEhoRA_5gimli4read12endian_slice11EndianSliceNtNtB9_9endianity13RunTimeEndianENtNtB7_6reader6Reader16read_uleb128_u16CslKoDbeUmNq5_14dwarf_validate.exit91.i.i.i, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  call void @llvm.experimental.noalias.scope.decl(metadata !141)
  %.not.i65.i.i87.i.i.i = icmp eq i64 %i.ct, 0
  br i1 %.not.i65.i.i87.i.i.i, label %bb.ai, label %bb.aj

bb.ai:                                            ; preds = %bb.ah
  %i.dc = ptrtoint ptr %i.cs to i64
  br label %.loopexit.i.i

bb.aj:                                            ; preds = %bb.ah
  %i.dd = getelementptr inbounds nuw i8, ptr %i.cj, i64 3 ; 2 uses
  %i.de = add i64 %i.ck, -3                       ; 2 uses
  %i.df = load i8, ptr %i.cs, align 1, !noalias !142, !noundef !5 ; 2 uses
  store ptr %i.dd, ptr %i.h, align 8, !alias.scope !143, !captures !8
  store i64 %i.de, ptr %i.m, align 8, !alias.scope !143
  %i.dg = icmp ugt i8 %i.df, 3
  br i1 %i.dg, label %.loopexit.i.i, label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  %i.dh = zext nneg i8 %i.df to i16
  %i.di = shl nuw i16 %i.dh, 14
  %i.dj = or disjoint i16 %i.di, %i.da
  br label %_RNvYINtNtNtCsi68uqYEhoRA_5gimli4read12endian_slice11EndianSliceNtNtB9_9endianity13RunTimeEndianENtNtB7_6reader6Reader16read_uleb128_u16CslKoDbeUmNq5_14dwarf_validate.exit91.i.i.i

_RNvYINtNtNtCsi68uqYEhoRA_5gimli4read12endian_slice11EndianSliceNtNtB9_9endianity13RunTimeEndianENtNtB7_6reader6Reader16read_uleb128_u16CslKoDbeUmNq5_14dwarf_validate.exit91.i.i.i: ; preds = %bb.ak, %bb.ag, %bb.ad
  %.promoted39.i.i.i.i.i = phi ptr [ %i.dd, %bb.ak ], [ %i.cm, %bb.ad ], [ %i.cs, %bb.ag ] ; 3 uses
  %.promoted.i.i.i.i.i = phi i64 [ %i.de, %bb.ak ], [ %i.cn, %bb.ad ], [ %i.ct, %bb.ag ] ; 4 uses
  %.sroa.1398.0.i.i.i = phi i16 [ %i.dj, %bb.ak ], [ %i.cq, %bb.ad ], [ %i.da, %bb.ag ] ; 3 uses
  %i.dk = icmp eq i16 %.sroa.13.0.i.i22.i, 0
  br i1 %i.dk, label %bb.al, label %bb.am

bb.al:                                            ; preds = %_RNvYINtNtNtCsi68uqYEhoRA_5gimli4read12endian_slice11EndianSliceNtNtB9_9endianity13RunTimeEndianENtNtB7_6reader6Reader16read_uleb128_u16CslKoDbeUmNq5_14dwarf_validate.exit91.i.i.i
  %i.dl = icmp eq i16 %.sroa.1398.0.i.i.i, 0
  br i1 %i.dl, label %.noexc.i, label %.loopexit.i.i

bb.am:                                            ; preds = %_RNvYINtNtNtCsi68uqYEhoRA_5gimli4read12endian_slice11EndianSliceNtNtB9_9endianity13RunTimeEndianENtNtB7_6reader6Reader16read_uleb128_u16CslKoDbeUmNq5_14dwarf_validate.exit91.i.i.i
  switch i16 %.sroa.1398.0.i.i.i, label %bb.aw [
    i16 0, label %.loopexit.i.i
    i16 33, label %bb.an
  ]

bb.an:                                            ; preds = %bb.am
  call void @llvm.experimental.noalias.scope.decl(metadata !144)
  call void @llvm.experimental.noalias.scope.decl(metadata !145)
  %.not.i.i.i92.i.i.i782 = icmp eq i64 %.promoted.i.i.i.i.i, 0
  br i1 %.not.i.i.i92.i.i.i782, label %._crit_edge, label %.lr.ph

bb.ao:                                            ; preds = %bb.aq
  %.not.i.i.i92.i.i.i = icmp eq i64 %i.dq, 0
  br i1 %.not.i.i.i92.i.i.i, label %._crit_edge.loopexit, label %.lr.ph

._crit_edge.loopexit:                             ; preds = %bb.ao
  store ptr %i.dp, ptr %i.h, align 8, !alias.scope !146
  store i64 %i.dq, ptr %i.m, align 8, !alias.scope !146
  br label %._crit_edge

._crit_edge:                                      ; preds = %bb.an, %._crit_edge.loopexit
  %.lcssa = phi ptr [ %i.dp, %._crit_edge.loopexit ], [ %.promoted39.i.i.i.i.i, %bb.an ]
  %i.dm = ptrtoint ptr %.lcssa to i64
  br label %.loopexit.i.i

.lr.ph:                                           ; preds = %bb.an, %bb.ao
  %.sroa.0.0.i.i.i.i.i784 = phi i64 [ %i.dy, %bb.ao ], [ 0, %bb.an ]
  %.sroa.04.0.i.i.i.i.i783 = phi i32 [ %i.dz, %bb.ao ], [ 0, %bb.an ] ; 3 uses
  %i.dn = phi i64 [ %i.dq, %bb.ao ], [ %.promoted.i.i.i.i.i, %bb.an ]
  %i.do = phi ptr [ %i.dp, %bb.ao ], [ %.promoted39.i.i.i.i.i, %bb.an ] ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !147)
  %i.dp = getelementptr inbounds nuw i8, ptr %i.do, i64 1 ; 6 uses
  %i.dq = add i64 %i.dn, -1                       ; 6 uses
  %i.dr = load i8, ptr %i.do, align 1, !noalias !148, !noundef !5 ; 4 uses
  %i.ds = icmp eq i32 %.sroa.04.0.i.i.i.i.i783, 63
  br i1 %i.ds, label %bb.ap, label %bb.aq

bb.ap:                                            ; preds = %.lr.ph
  switch i8 %i.dr, label %.loopexit.i.i.loopexit [
    i8 0, label %bb.aq
    i8 127, label %bb.aq
  ]

bb.aq:                                            ; preds = %bb.ap, %bb.ap, %.lr.ph
  %i.dt = and i8 %i.dr, 127
  %i.du = zext nneg i8 %i.dt to i64
  %i.dv = and i32 %.sroa.04.0.i.i.i.i.i783, 63
  %i.dw = zext nneg i32 %i.dv to i64
  %i.dx = shl i64 %i.du, %i.dw
  %i.dy = or i64 %i.dx, %.sroa.0.0.i.i.i.i.i784   ; 2 uses
  %i.dz = add i32 %.sroa.04.0.i.i.i.i.i783, 7     ; 3 uses
  %i.ea = icmp sgt i8 %i.dr, -1
  br i1 %i.ea, label %bb.ar, label %bb.ao

bb.ar:                                            ; preds = %bb.aq
  store ptr %i.dp, ptr %i.h, align 8, !alias.scope !146
  store i64 %i.dq, ptr %i.m, align 8, !alias.scope !146
  %i.eb = icmp slt i32 %i.dz, 64
  %i.ec = icmp samesign ugt i8 %i.dr, 63
  %or.cond.i.i.i.i.i = and i1 %i.eb, %i.ec
  %i.ed = and i32 %i.dz, 63
  %i.ee = zext nneg i32 %i.ed to i64
  %i.ef = shl nsw i64 -1, %i.ee
  %i.eg = select i1 %or.cond.i.i.i.i.i, i64 %i.ef, i64 0
  %.sroa.0.1.i.i.i.i.i = or i64 %i.dy, %i.eg
  br label %bb.aw

bb.as:                                            ; preds = %bb.aw
  %i.eh = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsi68uqYEhoRA_5gimli4read6abbrev10AttributesECslKoDbeUmNq5_14dwarf_validate(ptr noalias nofree noundef align 8 dereferenceable(96) %i.b) #20
          to label %.body.i unwind label %bb.ay, !noalias !128

.loopexit.i.i.loopexit:                           ; preds = %bb.ap
  store ptr %i.dp, ptr %i.h, align 8, !alias.scope !146
  store i64 %i.dq, ptr %i.m, align 8, !alias.scope !146
  br label %.loopexit.i.i

.loopexit.i.i:                                    ; preds = %bb.al, %bb.am, %bb.aj, %bb.z, %.loopexit.i.i.loopexit, %._crit_edge, %bb.ai, %bb.af, %bb.ab, %bb.y, %bb.v, %._crit_edge.i.i
  %.sroa.12.sroa.0.0.ph.i.i = phi i64 [ 6, %bb.aj ], [ 17, %._crit_edge ], [ 17, %bb.af ], [ 17, %bb.ai ], [ 17, %bb.ab ], [ 17, %bb.v ], [ 17, %bb.y ], [ 17, %._crit_edge.i.i ], [ 7, %.loopexit.i.i.loopexit ], [ 10, %bb.am ], [ 6, %bb.z ], [ 9, %bb.al ]
  %.sroa.20.0.ph.i.i = phi i64 [ undef, %bb.am ], [ %i.dm, %._crit_edge ], [ %i.cr, %bb.af ], [ %i.dc, %bb.ai ], [ %i.cl, %bb.ab ], [ %i.bq, %bb.v ], [ %i.cb, %bb.y ], [ %i.bi, %._crit_edge.i.i ], [ undef, %.loopexit.i.i.loopexit ], [ undef, %bb.z ], [ undef, %bb.aj ], [ undef, %bb.al ]
  %i.ei = load i64, ptr %i.b, align 8, !range !6, !alias.scope !149, !noalias !128, !noundef !5
  %i.ej = icmp eq i64 %i.ei, 0
  br i1 %i.ej, label %.noexc.thread.i, label %bb.at

bb.at:                                            ; preds = %.loopexit.i.i
  invoke void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecNtNtNtCsi68uqYEhoRA_5gimli4read6abbrev22AttributeSpecificationENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCslKoDbeUmNq5_14dwarf_validate(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.v)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtNtCsi68uqYEhoRA_5gimli4read6abbrev22AttributeSpecificationEECslKoDbeUmNq5_14dwarf_validate.exit.i.i.i unwind label %bb.au, !noalias !128

bb.au:                                            ; preds = %bb.at
  %i.ek = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecNtNtNtCsi68uqYEhoRA_5gimli4read6abbrev22AttributeSpecificationENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCslKoDbeUmNq5_14dwarf_validate(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.v)
          to label %.body.i unwind label %bb.av, !noalias !128

bb.av:                                            ; preds = %bb.au
  %i.el = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #18, !noalias !128
  unreachable

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtNtCsi68uqYEhoRA_5gimli4read6abbrev22AttributeSpecificationEECslKoDbeUmNq5_14dwarf_validate.exit.i.i.i: ; preds = %bb.at
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecNtNtNtCsi68uqYEhoRA_5gimli4read6abbrev22AttributeSpecificationENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCslKoDbeUmNq5_14dwarf_validate(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.v)
          to label %.noexc.thread.i unwind label %.loopexit.split-lp.i, !noalias !107

bb.aw:                                            ; preds = %bb.ar, %bb.am
  %i.em = phi ptr [ %i.dp, %bb.ar ], [ %.promoted39.i.i.i.i.i, %bb.am ] ; 2 uses
  %i.en = phi i64 [ %i.dq, %bb.ar ], [ %.promoted.i.i.i.i.i, %bb.am ] ; 2 uses
  %.sroa.082.0.i.i.i = phi i64 [ %.sroa.0.1.i.i.i.i.i, %bb.ar ], [ 0, %bb.am ]
  %.sroa.20.16.insert.ext.i.i = zext i16 %.sroa.13.0.i.i22.i to i64
  %.sroa.20.18.insert.ext.i.i = zext i16 %.sroa.1398.0.i.i.i to i64
  %.sroa.20.18.insert.shift.i.i = shl nuw nsw i64 %.sroa.20.18.insert.ext.i.i, 16
  %.sroa.20.18.insert.insert.i.i = or disjoint i64 %.sroa.20.18.insert.shift.i.i, %.sroa.20.16.insert.ext.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !128
  store i64 %.sroa.082.0.i.i.i, ptr %i.a, align 8, !noalias !128
  store i64 %.sroa.20.18.insert.insert.i.i, ptr %.sroa.2.sroa.2.0..sroa_idx.i.i, align 8, !noalias !128
  invoke void @_RNvMs6_NtNtCsi68uqYEhoRA_5gimli4read6abbrevNtB5_10Attributes4push(ptr noalias nofree noundef nonnull align 8 dereferenceable(96) %i.b, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(16) %i.a)
          to label %bb.ax unwind label %bb.as, !noalias !128

bb.ax:                                            ; preds = %bb.aw
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !128
  %.not.i.i.i.i.i23.i = icmp eq i64 %i.en, 0
  br i1 %.not.i.i.i.i.i23.i, label %._crit_edge.i.i, label %.lr.ph.i.i

bb.ay:                                            ; preds = %bb.as
  %i.eo = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #18, !noalias !128
  unreachable

.noexc.thread.i:                                  ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtNtCsi68uqYEhoRA_5gimli4read6abbrev22AttributeSpecificationEECslKoDbeUmNq5_14dwarf_validate.exit.i.i.i, %.loopexit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !128
  br label %.loopexit42.i

.noexc.i:                                         ; preds = %bb.al
  %.sroa.0.0.copyload.i = load i64, ptr %i.b, align 8, !noalias !150 ; 2 uses
  %i.ep = load <2 x i64>, ptr %i.v, align 8, !noalias !150 ; 3 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %.sroa.10.i, ptr noundef nonnull align 8 dereferenceable(72) %.sroa.10.0..sroa_idx.i, i64 72, i1 false), !noalias !150
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !128
  %i.eq = icmp eq i64 %.sroa.0.0.copyload.i, 2
  br i1 %i.eq, label %.loopexit42.i.loopexit, label %bb.az

.loopexit42.i.loopexit:                           ; preds = %.noexc.i
  %i.er = extractelement <2 x i64> %i.ep, i64 1
  %i.es = extractelement <2 x i64> %i.ep, i64 0
  br label %.loopexit42.i

.loopexit42.i:                                    ; preds = %.loopexit42.i.loopexit, %.noexc.thread.i
  %.sroa.6.035.i = phi i64 [ %.sroa.12.sroa.0.0.ph.i.i, %.noexc.thread.i ], [ %i.es, %.loopexit42.i.loopexit ]
  %.sroa.926.034.i = phi i64 [ %.sroa.20.0.ph.i.i, %.noexc.thread.i ], [ %i.er, %.loopexit42.i.loopexit ]
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.10.i)
  store i64 %.sroa.6.035.i, ptr %.sroa.414.0..sroa_idx.i, align 8, !noalias !114
  br label %.thread.i

bb.az:                                            ; preds = %.noexc.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %.sroa.838.0..sroa_idx39.i.i, ptr noundef nonnull align 8 dereferenceable(72) %.sroa.10.i, i64 72, i1 false), !noalias !110
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.10.i)
  store i64 %.sroa.0.0.copyload.i, ptr %i.c, align 8, !noalias !110
  store <2 x i64> %i.ep, ptr %.sroa.636.0..sroa_idx37.i.i, align 8, !noalias !110
  invoke void @_RNvMs5_NtNtCsi68uqYEhoRA_5gimli4read6abbrevNtB5_12Abbreviation3new(ptr noalias nofree noundef nonnull sret([112 x i8]) align 8 captures(none) dereferenceable(112) %i.f, i64 noundef %i.z, i16 noundef %.sroa.13.0.i.i.i, i8 noundef %i.bh, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(96) %i.c)
          to label %bb.ba unwind label %.loopexit43.split.i, !noalias !107

.loopexit43.split.i:                              ; preds = %bb.bc, %bb.az
  %lpad.loopexit.i = landingpad { ptr, i32 }
          cleanup
  br label %.body.i

.loopexit.split-lp.i:                             ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtNtCsi68uqYEhoRA_5gimli4read6abbrev22AttributeSpecificationEECslKoDbeUmNq5_14dwarf_validate.exit.i.i.i
  %lpad.loopexit.split-lp.i = landingpad { ptr, i32 }
          cleanup
  br label %.body.i

.body.i:                                          ; preds = %.loopexit.split-lp.i, %.loopexit43.split.i, %bb.au, %bb.as
  %eh.lpad-body.i = phi { ptr, i32 } [ %i.eh, %bb.as ], [ %i.ek, %bb.au ], [ %lpad.loopexit.i, %.loopexit43.split.i ], [ %lpad.loopexit.split-lp.i, %.loopexit.split-lp.i ]
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsi68uqYEhoRA_5gimli4read6abbrev13AbbreviationsECslKoDbeUmNq5_14dwarf_validate(ptr noalias nofree noundef align 8 dereferenceable(48) %i.g) #20
          to label %common.resume.i unwind label %bb.bk, !noalias !107

.thread.i:                                        ; preds = %.loopexit42.i, %.loopexit39.i, %.loopexit.i, %bb.e
  %.sroa.926.034.i.sink = phi i64 [ %.sroa.926.034.i, %.loopexit42.i ], [ %.sroa.1383.0.ph.i.i, %.loopexit39.i ], [ %.sroa.13.0.ph.i.i, %.loopexit.i ], [ %.sroa.545.0.copyload.i.i, %bb.e ]
  %.sroa.636.i.sroa.7.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  store i64 %.sroa.926.034.i.sink, ptr %.sroa.636.i.sroa.7.0..sroa_idx.i, align 8, !noalias !107
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !107
  br label %.loopexit44.i

.thread:                                          ; preds = %.split.i, %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !107
  br label %.split214.i.sink.split

bb.ba:                                            ; preds = %bb.az
  %.pr.i = load i64, ptr %i.f, align 8, !noalias !107 ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !107
  %i.et = icmp eq i64 %.pr.i, -1
  br i1 %i.et, label %.loopexit44.i, label %bb.bb

.loopexit44.i:                                    ; preds = %bb.ba, %.thread.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.7.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.414.0..sroa_idx.i, i64 16, i1 false), !noalias !107
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !107
  %i.eu = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.eu, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.7.i, i64 16, i1 false), !noalias !106
  store i64 -1, ptr %0, align 8, !alias.scope !105
  br label %bb.be

bb.bb:                                            ; preds = %bb.ba
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.7.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.414.0..sroa_idx.i, i64 16, i1 false), !noalias !107
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(88) %.sroa.4.i, ptr noundef nonnull align 8 dereferenceable(88) %.sroa.515.0..sroa_idx.i, i64 88, i1 false), !noalias !107
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !107
  %.not.i = icmp eq i64 %.pr.i, 2
  br i1 %.not.i, label %.split214.i, label %bb.bc

bb.bc:                                            ; preds = %bb.bb
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !107
  store i64 %.pr.i, ptr %i.e, align 8, !noalias !107
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.3.0..sroa_idx.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.7.i, i64 16, i1 false), !noalias !107
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(88) %.sroa.4.0..sroa_idx.i, ptr noundef nonnull align 8 dereferenceable(88) %.sroa.4.i, i64 88, i1 false), !noalias !107
  %i.ev = load i64, ptr %i.w, align 8, !noalias !107, !noundef !5
  %i.ew = invoke noundef zeroext i1 @_RNvMs4_NtNtCsi68uqYEhoRA_5gimli4read6abbrevNtB5_13Abbreviations6insert(ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %i.g, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(112) %i.e)
          to label %bb.bd unwind label %.loopexit43.split.i, !noalias !107

.split214.i.sink.split:                           ; preds = %.thread37.us.i, %.thread
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !107
  br label %.split214.i

.split214.i:                                      ; preds = %bb.bb, %.split214.i.sink.split
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 8 dereferenceable(48) %i.g, i64 48, i1 false), !noalias !106
  br label %_RINvMs4_NtNtCsi68uqYEhoRA_5gimli4read6abbrevNtB6_13Abbreviations5parseINtNtB8_12endian_slice11EndianSliceNtNtBa_9endianity13RunTimeEndianEECslKoDbeUmNq5_14dwarf_validate.exit

bb.bd:                                            ; preds = %bb.bc
  br i1 %i.ew, label %.split216.i, label %.split.i

.split.i:                                         ; preds = %bb.bd
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !107
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !107
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !107
  %i.ex = icmp eq i64 %.promoted.i.i.i.i.i, 0
  br i1 %i.ex, label %.thread, label %bb.d, !llvm.loop !101

.split216.i:                                      ; preds = %bb.bd
  %i.ey = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i8 13, ptr %i.ey, align 8, !alias.scope !105
  %.sroa.47.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.ev, ptr %.sroa.47.0..sroa_idx.i, align 8, !alias.scope !105
  store i64 -1, ptr %0, align 8, !alias.scope !105
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !107
  br label %bb.be

bb.be:                                            ; preds = %.split216.i, %.loopexit44.i
  invoke void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecNtNtNtCsi68uqYEhoRA_5gimli4read6abbrev12AbbreviationENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCslKoDbeUmNq5_14dwarf_validate(ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %i.g)
          to label %bb.bg unwind label %bb.bf, !noalias !107

bb.bf:                                            ; preds = %bb.be
  %i.ez = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecNtNtNtCsi68uqYEhoRA_5gimli4read6abbrev12AbbreviationENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCslKoDbeUmNq5_14dwarf_validate(ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %i.g)
          to label %.body.i.i unwind label %bb.bh, !noalias !107

bb.bg:                                            ; preds = %bb.be
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecNtNtNtCsi68uqYEhoRA_5gimli4read6abbrev12AbbreviationENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCslKoDbeUmNq5_14dwarf_validate(ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %i.g)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsi68uqYEhoRA_5gimli4read6abbrev13AbbreviationsECslKoDbeUmNq5_14dwarf_validate.exit.i unwind label %bb.bi, !noalias !107

bb.bh:                                            ; preds = %bb.bf
  %i.fa = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #18, !noalias !107
  unreachable

bb.bi:                                            ; preds = %bb.bg
  %i.fb = landingpad { ptr, i32 }
          cleanup
  br label %.body.i.i

.body.i.i:                                        ; preds = %bb.bi, %bb.bf
  %eh.lpad-body.i.i = phi { ptr, i32 } [ %i.fb, %bb.bi ], [ %i.ez, %bb.bf ]
  invoke void @_RNvXNtNtNtCsexYYUdYSQU6_5alloc11collections5btree3mapINtB2_8BTreeMapyNtNtNtCsi68uqYEhoRA_5gimli4read6abbrev12AbbreviationENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCslKoDbeUmNq5_14dwarf_validate(ptr noalias nofree noundef nonnull readonly align 8 dereferenceable(24) %i.t)
          to label %common.resume.i unwind label %bb.bj, !noalias !107

bb.bj:                                            ; preds = %.body.i.i
  %i.fc = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #18, !noalias !107
  unreachable

common.resume.i:                                  ; preds = %.body.i.i, %.body.i
  %common.resume.op.i = phi { ptr, i32 } [ %eh.lpad-body.i.i, %.body.i.i ], [ %eh.lpad-body.i, %.body.i ]
  resume { ptr, i32 } %common.resume.op.i

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsi68uqYEhoRA_5gimli4read6abbrev13AbbreviationsECslKoDbeUmNq5_14dwarf_validate.exit.i: ; preds = %bb.bg
  call void @_RNvXNtNtNtCsexYYUdYSQU6_5alloc11collections5btree3mapINtB2_8BTreeMapyNtNtNtCsi68uqYEhoRA_5gimli4read6abbrev12AbbreviationENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCslKoDbeUmNq5_14dwarf_validate(ptr noalias nofree noundef nonnull readonly align 8 dereferenceable(24) %i.t), !noalias !107
  br label %_RINvMs4_NtNtCsi68uqYEhoRA_5gimli4read6abbrevNtB6_13Abbreviations5parseINtNtB8_12endian_slice11EndianSliceNtNtBa_9endianity13RunTimeEndianEECslKoDbeUmNq5_14dwarf_validate.exit

bb.bk:                                            ; preds = %.body.i
  %i.fd = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #18, !noalias !107
  unreachable

_RINvMs4_NtNtCsi68uqYEhoRA_5gimli4read6abbrevNtB6_13Abbreviations5parseINtNtB8_12endian_slice11EndianSliceNtNtBa_9endianity13RunTimeEndianEECslKoDbeUmNq5_14dwarf_validate.exit: ; preds = %.split214.i, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsi68uqYEhoRA_5gimli4read6abbrev13AbbreviationsECslKoDbeUmNq5_14dwarf_validate.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !107
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.7.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.4.i)
  br label %bb.bl

bb.bl:                                            ; preds = %_RINvMs4_NtNtCsi68uqYEhoRA_5gimli4read6abbrevNtB6_13Abbreviations5parseINtNtB8_12endian_slice11EndianSliceNtNtBa_9endianity13RunTimeEndianEECslKoDbeUmNq5_14dwarf_validate.exit, %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(inaccessiblemem: write) uwtable
define hidden { ptr, i64 } @_RNvMsa_NtNtCskKLDkoKarTP_4core5slice4iterINtB5_7IterMutINtNtNtCsi68uqYEhoRA_5gimli4read4unit10UnitHeaderINtNtBW_12endian_slice11EndianSliceNtNtBY_9endianity13RunTimeEndianEjEE10into_sliceCslKoDbeUmNq5_14dwarf_validate(ptr noundef nonnull %0, ptr noundef %1) unnamed_addr #2 {
bb.a:
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %1) ]
  %i.a = ptrtoint ptr %1 to i64
  %i.b = ptrtoint ptr %0 to i64
  %i.c = sub nuw i64 %i.a, %i.b
  %i.d = udiv exact i64 %i.c, 80
  %i.e = insertvalue { ptr, i64 } poison, ptr %0, 0
  %i.f = insertvalue { ptr, i64 } %i.e, i64 %i.d, 1
  ret { ptr, i64 } %i.f
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvMsb_NtCs3Kj8CJc7CAH_10wasmparser7readersINtB5_11SubsectionsNtNtNtB5_4core5names4NameE4readCslKoDbeUmNq5_14dwarf_validate(ptr dead_on_unwind noalias nofree noundef writable sret([48 x i8]) align 8 captures(none) dereferenceable(48) %0, ptr noalias nofree noundef align 8 dereferenceable(32) %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 4 uses
  %i.b = alloca [32 x i8], align 8                ; 7 uses
  %i.c = alloca [16 x i8], align 8                ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  call void @_RNvMs1_NtCs3Kj8CJc7CAH_10wasmparser13binary_readerNtB5_12BinaryReader7read_u7(ptr noalias nofree noundef nonnull sret([16 x i8]) align 8 captures(none) dereferenceable(16) %i.c, ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %1)
  %i.d = load i8, ptr %i.c, align 8, !range !7, !noundef !5
  %i.e = trunc nuw i8 %i.d to i1
  br i1 %i.e, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.g = load ptr, ptr %i.f, align 8, !nonnull !5, !align !9, !noundef !5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.g, ptr %i.h, align 8
  store i8 -1, ptr %0, align 8
  br label %bb.f

bb.c:                                             ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 1
  %i.j = load i8, ptr %i.i, align 1, !noundef !5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @_RNvMs1_NtCs3Kj8CJc7CAH_10wasmparser13binary_readerNtB5_12BinaryReader11read_reader(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(address) dereferenceable(32) %i.b, ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %1)
  %i.k = load ptr, ptr %i.b, align 8, !noundef !5 ; 2 uses
  %i.l = icmp eq ptr %i.k, null
  %i.m = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.n = load ptr, ptr %i.m, align 8              ; 2 uses
  br i1 %i.l, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.n, ptr %i.o, align 8
  store i8 -1, ptr %0, align 8
  br label %bb.f

bb.e:                                             ; preds = %bb.c
  %.sroa.58.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %.sroa.8.0..sroa_idx6 = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.8.0..sroa_idx6, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.58.0..sroa_idx, i64 16, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  store ptr %i.k, ptr %i.a, align 8
  %.sroa.6.0..sroa_idx4 = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr %i.n, ptr %.sroa.6.0..sroa_idx4, align 8
  call void @_RNvXs0_NtNtNtCs3Kj8CJc7CAH_10wasmparser7readers4core5namesNtB5_4NameNtB9_10Subsection11from_reader(ptr noalias nofree noundef nonnull sret([48 x i8]) align 8 captures(none) dereferenceable(48) %0, i8 noundef %i.j, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(32) %i.a)
  br label %bb.f

bb.f:                                             ; preds = %bb.b, %bb.d, %bb.e
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvMsb_NtCs3Kj8CJc7CAH_10wasmparser7readersINtB5_11SubsectionsNtNtNtB5_4core7linking7LinkingE4readCslKoDbeUmNq5_14dwarf_validate(ptr dead_on_unwind noalias nofree noundef writable sret([48 x i8]) align 8 captures(none) dereferenceable(48) %0, ptr noalias nofree noundef align 8 dereferenceable(32) %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 4 uses
  %i.b = alloca [32 x i8], align 8                ; 7 uses
  %i.c = alloca [16 x i8], align 8                ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  call void @_RNvMs1_NtCs3Kj8CJc7CAH_10wasmparser13binary_readerNtB5_12BinaryReader7read_u7(ptr noalias nofree noundef nonnull sret([16 x i8]) align 8 captures(none) dereferenceable(16) %i.c, ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %1)
  %i.d = load i8, ptr %i.c, align 8, !range !7, !noundef !5
  %i.e = trunc nuw i8 %i.d to i1
  br i1 %i.e, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.g = load ptr, ptr %i.f, align 8, !nonnull !5, !align !9, !noundef !5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.g, ptr %i.h, align 8
  store i8 -1, ptr %0, align 8
  br label %bb.f

bb.c:                                             ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 1
  %i.j = load i8, ptr %i.i, align 1, !noundef !5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @_RNvMs1_NtCs3Kj8CJc7CAH_10wasmparser13binary_readerNtB5_12BinaryReader11read_reader(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(address) dereferenceable(32) %i.b, ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %1)
  %i.k = load ptr, ptr %i.b, align 8, !noundef !5 ; 2 uses
  %i.l = icmp eq ptr %i.k, null
  %i.m = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.n = load ptr, ptr %i.m, align 8              ; 2 uses
  br i1 %i.l, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.n, ptr %i.o, align 8
  store i8 -1, ptr %0, align 8
  br label %bb.f

bb.e:                                             ; preds = %bb.c
  %.sroa.58.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %.sroa.8.0..sroa_idx6 = getelementptr inbounds nuw i8, ptr %i.a, i64 16
end_hunk_0

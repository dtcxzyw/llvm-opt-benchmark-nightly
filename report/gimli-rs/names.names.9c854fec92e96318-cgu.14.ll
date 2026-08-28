Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/gimli-rs/original/names.names.9c854fec92e96318-cgu.14?download=true
inline.NumInlined: 157
inline.NumDeleted: 86
begin_hunk_0_@_RNvCsdr9GKMNitvw_5names4main:bb.a

.lr.ph:                                           ; preds = %bb.ci, %bb.cu
  %.sroa.0143.0577 = phi i1 [ %.sroa.0143.1, %bb.cu ], [ true, %bb.ci ] ; 4 uses
  %.sroa.0144.0576 = phi ptr [ %i.gq, %bb.cu ], [ %i.gm, %bb.ci ] ; 15 uses
  %i.gq = getelementptr inbounds nuw i8, ptr %.sroa.0144.0576, i64 24 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.x)
  %i.gr = getelementptr inbounds nuw i8, ptr %.sroa.0144.0576, i64 16 ; 2 uses
  %i.gs = load i16, ptr %i.gr, align 8, !noundef !11
  store i16 %i.gs, ptr %i.x, align 2
  call void @llvm.lifetime.start.p0(ptr nonnull %i.w)
  store ptr %i.x, ptr %i.w, align 8
  store ptr @_RNvXs4i_NtCsi68uqYEhoRA_5gimli9constantsNtB6_5DwIdxNtNtCskKLDkoKarTP_4core3fmt7Display3fmt, ptr %.sroa.4328.0..sroa_idx, align 8
  invoke void @_RNvNtNtCsG258MDvU3F_3std2io5stdio6__print(ptr noundef nonnull @5, ptr noundef nonnull %i.w)
          to label %bb.cj unwind label %.loopexit

._crit_edge:                                      ; preds = %bb.cu
  br i1 %.sroa.0143.1, label %.critedge, label %bb.ds

bb.cj:                                            ; preds = %.lr.ph
  call void @llvm.lifetime.end.p0(ptr nonnull %i.w)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.x)
  %i.gt = load i16, ptr %i.gr, align 8, !noundef !11
  switch i16 %i.gt, label %bb.ck [
    i16 1, label %bb.cl
    i16 2, label %bb.cm
    i16 3, label %bb.cn
    i16 4, label %bb.co
    i16 5, label %bb.cp
  ]

bb.ck:                                            ; preds = %bb.cj
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j)
  store ptr %.sroa.0144.0576, ptr %i.j, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i)
  store ptr %i.j, ptr %i.i, align 8
  store ptr @_RNvXs1g_NtCskKLDkoKarTP_4core3fmtRINtNtNtCsi68uqYEhoRA_5gimli4read5names18NameAttributeValueINtNtBB_8relocate14RelocateReaderINtNtBB_12endian_slice11EndianSliceNtNtBD_9endianity13RunTimeEndianERNtCsdr9GKMNitvw_5names13RelocationMapEENtB6_5Debug3fmtB38_, ptr %.sroa.4398.0..sroa_idx, align 8
  invoke void @_RNvNtNtCsG258MDvU3F_3std2io5stdio6__print(ptr noundef nonnull @6, ptr noundef nonnull %i.i)
          to label %bb.dr unwind label %.loopexit

bb.cl:                                            ; preds = %bb.cj
  call void @llvm.lifetime.start.p0(ptr nonnull %i.v)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.u)
  invoke void @_RNvMsg_NtNtCsi68uqYEhoRA_5gimli4read5namesINtB5_13NameAttributeINtNtB7_8relocate14RelocateReaderINtNtB7_12endian_slice11EndianSliceNtNtB9_9endianity13RunTimeEndianERNtCsdr9GKMNitvw_5names13RelocationMapEE12compile_unitB2F_(ptr noalias nofree noundef nonnull sret([16 x i8]) align 8 captures(address) dereferenceable(16) %i.u, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %.sroa.0144.0576, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(496) %i.aj)
          to label %bb.cq unwind label %.loopexit

bb.cm:                                            ; preds = %bb.cj
  call void @llvm.lifetime.start.p0(ptr nonnull %i.s)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.r)
  invoke void @_RNvMsg_NtNtCsi68uqYEhoRA_5gimli4read5namesINtB5_13NameAttributeINtNtB7_8relocate14RelocateReaderINtNtB7_12endian_slice11EndianSliceNtNtB9_9endianity13RunTimeEndianERNtCsdr9GKMNitvw_5names13RelocationMapEE9type_unitB2F_(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.r, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %.sroa.0144.0576, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(496) %i.aj)
          to label %bb.cx unwind label %.loopexit

bb.cn:                                            ; preds = %bb.cj
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p)
  %i.gu = load i8, ptr %.sroa.0144.0576, align 8, !range !276, !noundef !11
  %i.gv = icmp eq i8 %i.gu, 1
  br i1 %i.gv, label %bb.dc, label %bb.dd

bb.co:                                            ; preds = %bb.cj
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n)
  %i.gw = load i8, ptr %.sroa.0144.0576, align 8, !range !276, !noundef !11
  switch i8 %i.gw, label %default.unreachable612 [
    i8 1, label %bb.dg
    i8 2, label %bb.dh
    i8 0, label %bb.di
  ]

bb.cp:                                            ; preds = %bb.cj
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l)
  %i.gx = load i8, ptr %.sroa.0144.0576, align 8, !range !276, !noundef !11
  %i.gy = icmp eq i8 %i.gx, 0
  br i1 %i.gy, label %bb.dm, label %bb.dn

bb.cq:                                            ; preds = %bb.cl
  %i.gz = load i8, ptr %i.u, align 8, !range !275, !noundef !11 ; 2 uses
  %.not412 = icmp eq i8 %i.gz, -1
  br i1 %.not412, label %bb.cs, label %bb.cr

bb.cr:                                            ; preds = %bb.cq
  %.sroa.4345.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.u, i64 1
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.4491)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %.sroa.4491, ptr noundef nonnull align 1 dereferenceable(7) %.sroa.4345.0..sroa_idx, i64 7, i1 false)
  %.sroa.5346.0.copyload = load i64, ptr %i.ez, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.u)
  %i.ha = invoke fastcc noundef nonnull align 8 ptr @_RNvNtCsexYYUdYSQU6_5alloc5boxed14box_new_uninit(i64 noundef 16) #24
          to label %bb.cv unwind label %.loopexit.split-lp.loopexit.split-lp ; 4 uses

bb.cs:                                            ; preds = %bb.cq
  %i.hb = load i64, ptr %i.ez, align 8, !noundef !11
  call void @llvm.lifetime.end.p0(ptr nonnull %i.u)
  store i64 %i.hb, ptr %i.v, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.t)
  store ptr %i.v, ptr %i.t, align 8
  store ptr @_RNvXs6_NtNtCskKLDkoKarTP_4core3fmt3numjNtB7_8LowerHex3fmt, ptr %.sroa.4350.0..sroa_idx, align 8
  invoke void @_RNvNtNtCsG258MDvU3F_3std2io5stdio6__print(ptr noundef nonnull @6, ptr noundef nonnull %i.t)
          to label %bb.ct unwind label %.loopexit

bb.ct:                                            ; preds = %bb.cs
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.v)
  br label %bb.cu

bb.cu:                                            ; preds = %bb.dr, %bb.do, %bb.dk, %bb.de, %bb.da, %bb.ct
  %.sroa.0143.1 = phi i1 [ %.sroa.0143.0577, %bb.dr ], [ false, %bb.ct ], [ false, %bb.da ], [ %.sroa.0143.0577, %bb.de ], [ %.sroa.0143.0577, %bb.dk ], [ %.sroa.0143.0577, %bb.do ] ; 2 uses
  %i.hc = icmp eq ptr %i.gq, %i.go
  br i1 %i.hc, label %._crit_edge, label %.lr.ph

bb.cv:                                            ; preds = %bb.cr
  store i8 %i.gz, ptr %i.ha, align 8
  %.sroa.4491.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ha, i64 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %.sroa.4491.0..sroa_idx, ptr noundef nonnull align 1 dereferenceable(7) %.sroa.4491, i64 7, i1 false)
  %.sroa.5492.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ha, i64 8
  store i64 %.sroa.5346.0.copyload, ptr %.sroa.5492.0..sroa_idx, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.4491)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.v)
  br label %bb.cw

bb.cw:                                            ; preds = %bb.dp, %bb.dl, %bb.df, %bb.db, %bb.cv
  %.sroa.0.1 = phi ptr [ %i.ha, %bb.cv ], [ %i.hg, %bb.db ], [ %i.hn, %bb.df ], [ %i.hv, %bb.dl ], [ %i.ia, %bb.dp ]
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCsi68uqYEhoRA_5gimli4read5names9NameEntryINtNtBG_8relocate14RelocateReaderINtNtBG_12endian_slice11EndianSliceNtNtBI_9endianity13RunTimeEndianERNtCsdr9GKMNitvw_5names13RelocationMapEEEB33_(ptr noalias nofree noundef align 8 dereferenceable(48) %i.z)
          to label %bb.dq unwind label %.loopexit.split-lp529.loopexit.split-lp.loopexit.split-lp

bb.cx:                                            ; preds = %bb.cm
  %i.hd = load i64, ptr %i.r, align 8, !range !269, !noundef !11
  %i.he = trunc nuw i64 %i.hd to i1
  %i.hf = load <2 x i64>, ptr %i.ey, align 8      ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r)
  br i1 %i.he, label %bb.cy, label %bb.cz

bb.cy:                                            ; preds = %bb.cx
  %i.hg = invoke fastcc noundef nonnull align 8 ptr @_RNvNtCsexYYUdYSQU6_5alloc5boxed14box_new_uninit(i64 noundef 16) #24
          to label %bb.db unwind label %.loopexit.split-lp.loopexit.split-lp ; 3 uses

bb.cz:                                            ; preds = %bb.cx
  store <2 x i64> %i.hf, ptr %i.s, align 16
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q)
  store ptr %i.s, ptr %i.q, align 8
  store ptr @_RNvXsz_NtNtCsi68uqYEhoRA_5gimli4read5namesINtB5_12NameTypeUnitjENtNtCskKLDkoKarTP_4core3fmt5Debug3fmtCsdr9GKMNitvw_5names, ptr %.sroa.4358.0..sroa_idx, align 8
  invoke void @_RNvNtNtCsG258MDvU3F_3std2io5stdio6__print(ptr noundef nonnull @9, ptr noundef nonnull %i.q)
          to label %bb.da unwind label %.loopexit

bb.da:                                            ; preds = %bb.cz
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s)
  br label %bb.cu

bb.db:                                            ; preds = %bb.cy
  %i.hh = extractelement <2 x i64> %i.hf, i64 0
  store i64 %i.hh, ptr %i.hg, align 8
  %.sroa.4494.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.hg, i64 8
  %i.hi = extractelement <2 x i64> %i.hf, i64 1
  store i64 %i.hi, ptr %.sroa.4494.0..sroa_idx, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s)
  br label %bb.cw

bb.dc:                                            ; preds = %bb.cn
  %i.hj = getelementptr inbounds nuw i8, ptr %.sroa.0144.0576, i64 8
  %i.hk = load i64, ptr %i.hj, align 8, !noundef !11
  store i64 %i.hk, ptr %i.p, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o)
  store ptr %i.p, ptr %i.o, align 8
  store ptr @_RNvXs6_NtNtCskKLDkoKarTP_4core3fmt3numjNtB7_8LowerHex3fmt, ptr %.sroa.4372.0..sroa_idx, align 8
  invoke void @_RNvNtNtCsG258MDvU3F_3std2io5stdio6__print(ptr noundef nonnull @6, ptr noundef nonnull %i.o)
          to label %bb.de unwind label %.loopexit

bb.dd:                                            ; preds = %bb.cn
  %i.hl = getelementptr inbounds nuw i8, ptr %.sroa.0144.0576, i64 18
  %i.hm = load i16, ptr %i.hl, align 2, !noundef !11
  %i.hn = invoke fastcc noundef nonnull align 8 ptr @_RNvNtCsexYYUdYSQU6_5alloc5boxed14box_new_uninit(i64 noundef 16) #24
          to label %bb.df unwind label %.loopexit.split-lp.loopexit.split-lp ; 3 uses

bb.de:                                            ; preds = %bb.dc
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p)
  br label %bb.cu

bb.df:                                            ; preds = %bb.dd
  store i8 64, ptr %i.hn, align 8
  %.sroa.4497.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.hn, i64 2
  store i16 %i.hm, ptr %.sroa.4497.0..sroa_idx, align 2
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p)
  br label %bb.cw

bb.dg:                                            ; preds = %bb.co
  %i.ho = getelementptr inbounds nuw i8, ptr %.sroa.0144.0576, i64 8
  %i.hp = load i64, ptr %i.ho, align 8, !noundef !11
  br label %bb.dj

bb.dh:                                            ; preds = %bb.co
  %i.hq = getelementptr inbounds nuw i8, ptr %.sroa.0144.0576, i64 1
  %i.hr = load i8, ptr %i.hq, align 1, !range !15, !noundef !11
  %i.hs = trunc nuw i8 %i.hr to i1
  br i1 %i.hs, label %bb.dj, label %bb.di

bb.di:                                            ; preds = %bb.dh, %bb.co
  %i.ht = getelementptr inbounds nuw i8, ptr %.sroa.0144.0576, i64 18
  %i.hu = load i16, ptr %i.ht, align 2, !noundef !11
  %i.hv = invoke fastcc noundef nonnull align 8 ptr @_RNvNtCsexYYUdYSQU6_5alloc5boxed14box_new_uninit(i64 noundef 16) #24
          to label %bb.dl unwind label %.loopexit.split-lp.loopexit.split-lp ; 2 uses

bb.dj:                                            ; preds = %bb.dh, %bb.dg
  %.sroa.6189.0.a = phi i64 [ %i.hp, %bb.dg ], [ undef, %bb.dh ]
  %.sroa.11191.0 = phi i64 [ 1, %bb.dg ], [ 0, %bb.dh ]
  store i64 %.sroa.11191.0, ptr %i.n, align 8
  store i64 %.sroa.6189.0.a, ptr %i.ex, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m)
  store ptr %i.n, ptr %i.m, align 8
  store ptr @_RNvXsR_NtCskKLDkoKarTP_4core6optionINtB5_6OptionNtNtNtCsi68uqYEhoRA_5gimli4read5names15NameEntryOffsetENtNtB7_3fmt5Debug3fmtCsdr9GKMNitvw_5names, ptr %.sroa.4380.0..sroa_idx, align 8
  invoke void @_RNvNtNtCsG258MDvU3F_3std2io5stdio6__print(ptr noundef nonnull @6, ptr noundef nonnull %i.m)
          to label %bb.dk unwind label %.loopexit

bb.dk:                                            ; preds = %bb.dj
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n)
  br label %bb.cu

bb.dl:                                            ; preds = %bb.di
  %.sroa.0334.2.insert.ext = zext i16 %i.hu to i64
  %.sroa.0334.2.insert.shift = shl nuw nsw i64 %.sroa.0334.2.insert.ext, 16
  %.sroa.0334.0.insert.insert = or disjoint i64 %.sroa.0334.2.insert.shift, 64
  store i64 %.sroa.0334.0.insert.insert, ptr %i.hv, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n)
  br label %bb.cw

bb.dm:                                            ; preds = %bb.cp
  %i.hw = getelementptr inbounds nuw i8, ptr %.sroa.0144.0576, i64 8
  %i.hx = load i64, ptr %i.hw, align 8, !noundef !11
  store i64 %i.hx, ptr %i.l, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k)
  store ptr %i.l, ptr %i.k, align 8
  store ptr @_RNvXsC_NtNtCskKLDkoKarTP_4core3fmt3numyNtB7_8LowerHex3fmt, ptr %.sroa.4394.0..sroa_idx, align 8
  invoke void @_RNvNtNtCsG258MDvU3F_3std2io5stdio6__print(ptr noundef nonnull @10, ptr noundef nonnull %i.k)
          to label %bb.do unwind label %.loopexit

bb.dn:                                            ; preds = %bb.cp
  %i.hy = getelementptr inbounds nuw i8, ptr %.sroa.0144.0576, i64 18
  %i.hz = load i16, ptr %i.hy, align 2, !noundef !11
  %i.ia = invoke fastcc noundef nonnull align 8 ptr @_RNvNtCsexYYUdYSQU6_5alloc5boxed14box_new_uninit(i64 noundef 16) #24
          to label %bb.dp unwind label %.loopexit.split-lp.loopexit.split-lp ; 3 uses

bb.do:                                            ; preds = %bb.dm
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l)
  br label %bb.cu

bb.dp:                                            ; preds = %bb.dn
  store i8 64, ptr %i.ia, align 8
  %.sroa.4503.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ia, i64 2
  store i16 %i.hz, ptr %.sroa.4503.0..sroa_idx, align 2
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l)
  br label %bb.cw

bb.dq:                                            ; preds = %bb.dy, %bb.cw
  %.sroa.0.2 = phi ptr [ %i.gl, %bb.dy ], [ %.sroa.0.1, %bb.cw ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.z)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aa)
  br label %bb.ea

bb.dr:                                            ; preds = %bb.ck
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j)
  br label %bb.cu

bb.ds:                                            ; preds = %bb.dt, %._crit_edge
  invoke void @_RNvNtNtCsG258MDvU3F_3std2io5stdio6__print(ptr noundef nonnull @12, ptr noundef nonnull inttoptr (i64 3 to ptr))
          to label %bb.du unwind label %.loopexit.split-lp.loopexit

.critedge:                                        ; preds = %bb.ci, %._crit_edge
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h)
  store ptr %i.ag, ptr %i.h, align 8
  store ptr @_RNvXsR_NtCskKLDkoKarTP_4core6optionINtB5_6OptionNtNtCsi68uqYEhoRA_5gimli6common15DebugInfoOffsetENtNtB7_3fmt5Debug3fmtCsdr9GKMNitvw_5names, ptr %.sroa.4402.0..sroa_idx, align 8
  invoke void @_RNvNtNtCsG258MDvU3F_3std2io5stdio6__print(ptr noundef nonnull @11, ptr noundef nonnull %i.h)
          to label %bb.dt unwind label %.loopexit.split-lp.loopexit

bb.dt:                                            ; preds = %.critedge
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  br label %bb.ds

bb.du:                                            ; preds = %bb.ds
  invoke void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecINtNtNtCsi68uqYEhoRA_5gimli4read5names13NameAttributeINtNtBK_8relocate14RelocateReaderINtNtBK_12endian_slice11EndianSliceNtNtBM_9endianity13RunTimeEndianERNtCsdr9GKMNitvw_5names13RelocationMapEEENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropB3c_(ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %i.z)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecINtNtNtCsi68uqYEhoRA_5gimli4read5names13NameAttributeINtNtB1d_8relocate14RelocateReaderINtNtB1d_12endian_slice11EndianSliceNtNtB1f_9endianity13RunTimeEndianERNtCsdr9GKMNitvw_5names13RelocationMapEEEEB3I_.exit.i unwind label %bb.dv

bb.dv:                                            ; preds = %bb.du
  %i.ib = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecINtNtNtCsi68uqYEhoRA_5gimli4read5names13NameAttributeINtNtBR_8relocate14RelocateReaderINtNtBR_12endian_slice11EndianSliceNtNtBT_9endianity13RunTimeEndianERNtCsdr9GKMNitvw_5names13RelocationMapEEENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropB3j_(ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %i.z)
          to label %.body458 unwind label %bb.dw

bb.dw:                                            ; preds = %bb.dv
  %i.ic = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #19
  unreachable

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecINtNtNtCsi68uqYEhoRA_5gimli4read5names13NameAttributeINtNtB1d_8relocate14RelocateReaderINtNtB1d_12endian_slice11EndianSliceNtNtB1f_9endianity13RunTimeEndianERNtCsdr9GKMNitvw_5names13RelocationMapEEEEB3I_.exit.i: ; preds = %bb.du
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecINtNtNtCsi68uqYEhoRA_5gimli4read5names13NameAttributeINtNtBR_8relocate14RelocateReaderINtNtBR_12endian_slice11EndianSliceNtNtBT_9endianity13RunTimeEndianERNtCsdr9GKMNitvw_5names13RelocationMapEEENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropB3j_(ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %i.z)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCsi68uqYEhoRA_5gimli4read5names9NameEntryINtNtBG_8relocate14RelocateReaderINtNtBG_12endian_slice11EndianSliceNtNtBI_9endianity13RunTimeEndianERNtCsdr9GKMNitvw_5names13RelocationMapEEEB33_.exit unwind label %.loopexit528

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCsi68uqYEhoRA_5gimli4read5names9NameEntryINtNtBG_8relocate14RelocateReaderINtNtBG_12endian_slice11EndianSliceNtNtBI_9endianity13RunTimeEndianERNtCsdr9GKMNitvw_5names13RelocationMapEEEB33_.exit: ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecINtNtNtCsi68uqYEhoRA_5gimli4read5names13NameAttributeINtNtB1d_8relocate14RelocateReaderINtNtB1d_12endian_slice11EndianSliceNtNtB1f_9endianity13RunTimeEndianERNtCsdr9GKMNitvw_5names13RelocationMapEEEEB3I_.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.z)
  br label %bb.cd

bb.dx:                                            ; preds = %bb.ad, %.body449, %bb.ey, %bb.ev, %.loopexit.split-lp, %.body458, %.body461, %.body465, %bb.aj, %.body442
  %i.id = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #19
  unreachable

bb.dy:                                            ; preds = %bb.cf
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.gl, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.8303, i64 16, i1 false)
  br label %bb.dq

bb.dz:                                            ; preds = %bb.cb
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.gj, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.0125, i64 16, i1 false)
  br label %bb.ea

bb.ea:                                            ; preds = %bb.dq, %bb.dz, %bb.eb, %bb.ec, %bb.ed
  %.sroa.0.4 = phi ptr [ %i.fr, %bb.ed ], [ %i.gb, %bb.eb ], [ %i.fy, %bb.ec ], [ %i.gj, %bb.dz ], [ %.sroa.0.2, %bb.dq ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ad)
  br label %bb.ef

bb.eb:                                            ; preds = %bb.bw
  store ptr inttoptr (i64 26 to ptr), ptr %i.gb, align 8
  br label %bb.ea

bb.ec:                                            ; preds = %bb.bt
  store <2 x ptr> %i.fx, ptr %i.fy, align 8
  br label %bb.ea

bb.ed:                                            ; preds = %bb.bn
  store <2 x i32> %i.fq, ptr %i.fr, align 8
  %.sroa.6485.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.fr, i64 8
  store i64 %.sroa.5268.0.copyload, ptr %.sroa.6485.0..sroa_idx, align 8
  br label %bb.ea

bb.ee:                                            ; preds = %bb.bk
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.fo, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.054, i64 16, i1 false)
  br label %bb.ef

bb.ef:                                            ; preds = %bb.ea, %bb.ee, %bb.ei
  %.sroa.0.7 = phi ptr [ %i.fl, %bb.ei ], [ %i.fo, %bb.ee ], [ %.sroa.0.4, %bb.ea ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ag)
  invoke void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecNtNtNtCsi68uqYEhoRA_5gimli4read5names16NameAbbreviationENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsdr9GKMNitvw_5names(ptr noalias nofree noundef nonnull align 8 dereferenceable(496) %i.aj)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsi68uqYEhoRA_5gimli4read5names17NameAbbreviationsECsdr9GKMNitvw_5names.exit.i unwind label %bb.eg

bb.eg:                                            ; preds = %bb.ef
  %i.ie = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecNtNtNtCsi68uqYEhoRA_5gimli4read5names16NameAbbreviationENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsdr9GKMNitvw_5names(ptr noalias nofree noundef nonnull align 8 dereferenceable(496) %i.aj)
          to label %.body461 unwind label %bb.eh

bb.eh:                                            ; preds = %bb.eg
  %i.if = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #19
  unreachable

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsi68uqYEhoRA_5gimli4read5names17NameAbbreviationsECsdr9GKMNitvw_5names.exit.i: ; preds = %bb.ef
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecNtNtNtCsi68uqYEhoRA_5gimli4read5names16NameAbbreviationENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsdr9GKMNitvw_5names(ptr noalias nofree noundef nonnull align 8 dereferenceable(496) %i.aj)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCsi68uqYEhoRA_5gimli4read5names9NameIndexINtNtBG_8relocate14RelocateReaderINtNtBG_12endian_slice11EndianSliceNtNtBI_9endianity13RunTimeEndianERNtCsdr9GKMNitvw_5names13RelocationMapEEEB33_.exit unwind label %.loopexit.split-lp539

bb.ei:                                            ; preds = %bb.bh
  %i.ig = extractelement <2 x i64> %i.fk, i64 0
  store i64 %i.ig, ptr %i.fl, align 8
  %.sroa.4482.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.fl, i64 8
  %i.ih = extractelement <2 x i64> %i.fk, i64 1
  store i64 %i.ih, ptr %.sroa.4482.0..sroa_idx, align 8
  br label %bb.ef

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCsi68uqYEhoRA_5gimli4read5names9NameIndexINtNtBG_8relocate14RelocateReaderINtNtBG_12endian_slice11EndianSliceNtNtBI_9endianity13RunTimeEndianERNtCsdr9GKMNitvw_5names13RelocationMapEEEB33_.exit: ; preds = %bb.en, %bb.eo, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsi68uqYEhoRA_5gimli4read5names17NameAbbreviationsECsdr9GKMNitvw_5names.exit.i
  %.sroa.0.8 = phi ptr [ %.sroa.0.7, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsi68uqYEhoRA_5gimli4read5names17NameAbbreviationsECsdr9GKMNitvw_5names.exit.i ], [ %i.fb, %bb.eo ], [ %i.fh, %bb.en ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aj)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ak)
  call void @llvm.experimental.noalias.scope.decl(metadata !277)
  call void @llvm.experimental.noalias.scope.decl(metadata !280)
  %i.ii = load ptr, ptr %i.am, align 8, !alias.scope !283, !noundef !11 ; 2 uses
  %i.ij = icmp eq ptr %i.ii, null
  br i1 %i.ij, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsexYYUdYSQU6_5alloc4sync3ArcINtNtNtCsi68uqYEhoRA_5gimli4read5dwarf5DwarfINtNtB1A_8relocate14RelocateReaderINtNtB1A_12endian_slice11EndianSliceNtNtB1C_9endianity13RunTimeEndianERNtCsdr9GKMNitvw_5names13RelocationMapEEEEEB3W_.exit.i, label %bb.ej

bb.ej:                                            ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCsi68uqYEhoRA_5gimli4read5names9NameIndexINtNtBG_8relocate14RelocateReaderINtNtBG_12endian_slice11EndianSliceNtNtBI_9endianity13RunTimeEndianERNtCsdr9GKMNitvw_5names13RelocationMapEEEB33_.exit
  %i.ik = atomicrmw sub ptr %i.ii, i64 1 release, align 8, !noalias !284
  %i.il = icmp eq i64 %i.ik, 1
  br i1 %i.il, label %bb.ek, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsexYYUdYSQU6_5alloc4sync3ArcINtNtNtCsi68uqYEhoRA_5gimli4read5dwarf5DwarfINtNtB1A_8relocate14RelocateReaderINtNtB1A_12endian_slice11EndianSliceNtNtB1C_9endianity13RunTimeEndianERNtCsdr9GKMNitvw_5names13RelocationMapEEEEEB3W_.exit.i

bb.ek:                                            ; preds = %bb.ej
  fence acquire
  invoke void @_RNvMsn_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcINtNtNtCsi68uqYEhoRA_5gimli4read5dwarf5DwarfINtNtBL_8relocate14RelocateReaderINtNtBL_12endian_slice11EndianSliceNtNtBN_9endianity13RunTimeEndianERNtCsdr9GKMNitvw_5names13RelocationMapEEE9drop_slowB34_(ptr noalias nofree noundef nonnull align 8 dereferenceable(936) %i.am) #21
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsexYYUdYSQU6_5alloc4sync3ArcINtNtNtCsi68uqYEhoRA_5gimli4read5dwarf5DwarfINtNtB1A_8relocate14RelocateReaderINtNtB1A_12endian_slice11EndianSliceNtNtB1C_9endianity13RunTimeEndianERNtCsdr9GKMNitvw_5names13RelocationMapEEEEEB3W_.exit.i unwind label %bb.el

bb.el:                                            ; preds = %bb.ek
  %i.im = landingpad { ptr, i32 }
          cleanup
  %i.in = getelementptr inbounds nuw i8, ptr %i.am, i64 8
  invoke void @_RNvXNtNtNtCsexYYUdYSQU6_5alloc11collections5btree3mapINtB2_8BTreeMapyINtNtCskKLDkoKarTP_4core6result6ResultINtNtB8_4sync3ArcNtNtNtCsi68uqYEhoRA_5gimli4read6abbrev13AbbreviationsENtB22_5ErrorEENtNtNtB1a_3ops4drop4Drop4dropCsdr9GKMNitvw_5names(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.in)
          to label %.body465 unwind label %bb.em

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsexYYUdYSQU6_5alloc4sync3ArcINtNtNtCsi68uqYEhoRA_5gimli4read5dwarf5DwarfINtNtB1A_8relocate14RelocateReaderINtNtB1A_12endian_slice11EndianSliceNtNtB1C_9endianity13RunTimeEndianERNtCsdr9GKMNitvw_5names13RelocationMapEEEEEB3W_.exit.i: ; preds = %bb.ek, %bb.ej, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCsi68uqYEhoRA_5gimli4read5names9NameIndexINtNtBG_8relocate14RelocateReaderINtNtBG_12endian_slice11EndianSliceNtNtBI_9endianity13RunTimeEndianERNtCsdr9GKMNitvw_5names13RelocationMapEEEB33_.exit
  %i.io = getelementptr inbounds nuw i8, ptr %i.am, i64 8
  invoke void @_RNvXNtNtNtCsexYYUdYSQU6_5alloc11collections5btree3mapINtB2_8BTreeMapyINtNtCskKLDkoKarTP_4core6result6ResultINtNtB8_4sync3ArcNtNtNtCsi68uqYEhoRA_5gimli4read6abbrev13AbbreviationsENtB22_5ErrorEENtNtNtB1a_3ops4drop4Drop4dropCsdr9GKMNitvw_5names(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.io)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCsi68uqYEhoRA_5gimli4read5dwarf5DwarfINtNtBG_8relocate14RelocateReaderINtNtBG_12endian_slice11EndianSliceNtNtBI_9endianity13RunTimeEndianERNtCsdr9GKMNitvw_5names13RelocationMapEEEB2Z_.exit unwind label %bb.ao

bb.em:                                            ; preds = %bb.el
  %i.ip = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #19
end_hunk_0

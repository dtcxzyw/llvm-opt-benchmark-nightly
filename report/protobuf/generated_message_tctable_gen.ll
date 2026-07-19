inline.NumInlined: 1028
inline.NumDeleted: 519
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumRuntimeUnrolled: 4
loop-unroll.NumUnrolled: 6
begin_hunk_0_@_ZN6google8protobuf8internal17TailCallTableInfoC2EPKNS0_10DescriptorERKNS2_14MessageOptionsEN4absl12lts_202505124SpanIKNS2_12FieldOptionsEEE:bb.a
  %i.yw = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i120, i64 8
  %i.yx = load ptr, ptr %i.yw, align 8, !tbaa !145 ; 3 uses
  %.not.i.i.i.i.i.i.i.i.i121 = icmp eq ptr %i.yx, null
  br i1 %.not.i.i.i.i.i.i.i.i.i121, label %_ZSt8_DestroyIN6google8protobuf8internal17TailCallTableInfo14SkipEntryBlockEEvPT_.exit.i.i.i.i122, label %bb.fp

bb.fp:                                            ; preds = %.lr.ph.i.i.i.i119
  %i.yy = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i120, i64 24
  %i.yz = load ptr, ptr %i.yy, align 8, !tbaa !148
  %i.za = ptrtoint ptr %i.yz to i64
  %i.zb = ptrtoint ptr %i.yx to i64
  %i.zc = sub i64 %i.za, %i.zb
  call void @_ZdlPvm(ptr noundef nonnull %i.yx, i64 noundef %i.zc) #18
  br label %_ZSt8_DestroyIN6google8protobuf8internal17TailCallTableInfo14SkipEntryBlockEEvPT_.exit.i.i.i.i122

_ZSt8_DestroyIN6google8protobuf8internal17TailCallTableInfo14SkipEntryBlockEEvPT_.exit.i.i.i.i122: ; preds = %bb.fp, %.lr.ph.i.i.i.i119
  %i.zd = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i120, i64 32 ; 2 uses
  %.not.i.i.i.i123 = icmp eq ptr %i.zd, %i.yv
  br i1 %.not.i.i.i.i123, label %_ZSt8_DestroyIPN6google8protobuf8internal17TailCallTableInfo14SkipEntryBlockES4_EvT_S6_RSaIT0_E.exitthread-pre-split.i.i124, label %.lr.ph.i.i.i.i119, !llvm.loop !149

_ZSt8_DestroyIPN6google8protobuf8internal17TailCallTableInfo14SkipEntryBlockES4_EvT_S6_RSaIT0_E.exitthread-pre-split.i.i124: ; preds = %_ZSt8_DestroyIN6google8protobuf8internal17TailCallTableInfo14SkipEntryBlockEEvPT_.exit.i.i.i.i122
  %.pr.i.i125 = load ptr, ptr %i.xz, align 8, !tbaa !141
  br label %_ZSt8_DestroyIPN6google8protobuf8internal17TailCallTableInfo14SkipEntryBlockES4_EvT_S6_RSaIT0_E.exit.i.i126

_ZSt8_DestroyIPN6google8protobuf8internal17TailCallTableInfo14SkipEntryBlockES4_EvT_S6_RSaIT0_E.exit.i.i126: ; preds = %_ZSt8_DestroyIPN6google8protobuf8internal17TailCallTableInfo14SkipEntryBlockES4_EvT_S6_RSaIT0_E.exitthread-pre-split.i.i124, %_ZN6google8protobuf8internal17TailCallTableInfo15NumToEntryTableaSEOS3_.exit117
  %i.ze = phi ptr [ %.pr.i.i125, %_ZSt8_DestroyIPN6google8protobuf8internal17TailCallTableInfo14SkipEntryBlockES4_EvT_S6_RSaIT0_E.exitthread-pre-split.i.i124 ], [ %i.yu, %_ZN6google8protobuf8internal17TailCallTableInfo15NumToEntryTableaSEOS3_.exit117 ] ; 3 uses
  %.not.i.i1.i.i127 = icmp eq ptr %i.ze, null
  br i1 %.not.i.i1.i.i127, label %_ZN6google8protobuf8internal17TailCallTableInfo15NumToEntryTableD2Ev.exit128, label %bb.fq

bb.fq:                                            ; preds = %_ZSt8_DestroyIPN6google8protobuf8internal17TailCallTableInfo14SkipEntryBlockES4_EvT_S6_RSaIT0_E.exit.i.i126
  %i.zf = load ptr, ptr %i.yh, align 8, !tbaa !143
  %i.zg = ptrtoint ptr %i.zf to i64
  %i.zh = ptrtoint ptr %i.ze to i64
  %i.zi = sub i64 %i.zg, %i.zh
  call void @_ZdlPvm(ptr noundef nonnull %i.ze, i64 noundef %i.zi) #18
  br label %_ZN6google8protobuf8internal17TailCallTableInfo15NumToEntryTableD2Ev.exit128

_ZN6google8protobuf8internal17TailCallTableInfo15NumToEntryTableD2Ev.exit128: ; preds = %_ZSt8_DestroyIPN6google8protobuf8internal17TailCallTableInfo14SkipEntryBlockES4_EvT_S6_RSaIT0_E.exit.i.i126, %bb.fq
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #19
  %i.zj = load ptr, ptr %i.ek, align 8, !tbaa !44
  %i.zk = load ptr, ptr %i.d, align 8, !tbaa !41  ; 2 uses
  %i.zl = ptrtoint ptr %i.zj to i64
  %i.zm = ptrtoint ptr %i.zk to i64
  %i.zn = sub i64 %i.zl, %i.zm
  %i.zo = sdiv exact i64 %i.zn, 24                ; 2 uses
  %i.zp = icmp eq i64 %i.zo, %4
  br i1 %i.zp, label %bb.fs, label %bb.fr, !prof !57

bb.fr:                                            ; preds = %_ZN6google8protobuf8internal17TailCallTableInfo15NumToEntryTableD2Ev.exit128
  %i.zq = invoke noundef nonnull ptr @_ZN4absl12lts_2025051212log_internal17MakeCheckOpStringImmEEPKcT_T0_S4_(i64 noundef %i.zo, i64 noundef %4, ptr noundef nonnull @.str.2)
          to label %_ZN4absl12lts_2025051212log_internal12Check_EQImplImmEEPKcRKT_RKT0_S4_.exit unwind label %bb.fu

bb.fs:                                            ; preds = %_ZN6google8protobuf8internal17TailCallTableInfo15NumToEntryTableD2Ev.exit128
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #19
  invoke fastcc void @_ZN6google8protobuf8internal12_GLOBAL__N_118GenerateFieldNamesEPKNS0_10DescriptorEN4absl12lts_202505124SpanIKNS1_17TailCallTableInfo14FieldEntryInfoEEERKNS9_14MessageOptionsENS8_IKNS9_12FieldOptionsEEE(ptr dead_on_unwind noalias writable align 8 %12, ptr noundef nonnull %1, ptr %i.zk, i64 %4)
          to label %bb.fy unwind label %bb.gb

bb.ft:                                            ; preds = %_ZNSt6vectorIN6google8protobuf8internal17TailCallTableInfo13FastFieldInfoESaIS4_EE6assignIPS4_vEEvT_S9_.exit
  %i.zr = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #19
  br label %bb.gc

bb.fu:                                            ; preds = %bb.fr
  %i.zs = landingpad { ptr, i32 }
          cleanup
  br label %bb.gc

_ZN4absl12lts_2025051212log_internal12Check_EQImplImmEEPKcRKT_RKT0_S4_.exit: ; preds = %bb.fr
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #19
  invoke void @_ZN4absl12lts_2025051212log_internal15LogMessageFatalC1EPKciS4_(ptr noundef nonnull align 8 dereferenceable(16) %11, ptr noundef nonnull @.str.1, i32 noundef 952, ptr noundef nonnull %i.zq) #20
          to label %bb.fv unwind label %bb.fw

bb.fv:                                            ; preds = %_ZN4absl12lts_2025051212log_internal12Check_EQImplImmEEPKcRKT_RKT0_S4_.exit
  invoke void @_ZN4absl12lts_2025051212log_internal10LogMessage5FlushEv(ptr noundef nonnull align 8 dereferenceable(16) %11)
          to label %_ZNKO4absl12lts_2025051212log_internal7VoidifyaaIRNS1_10LogMessageEEEvOT_.exit unwind label %bb.fx

_ZNKO4absl12lts_2025051212log_internal7VoidifyaaIRNS1_10LogMessageEEEvOT_.exit: ; preds = %bb.fv
  call void @_ZN4absl12lts_2025051212log_internal15LogMessageFatalD1Ev(ptr noundef nonnull align 8 dereferenceable(16) %11) #21
  unreachable

bb.fw:                                            ; preds = %_ZN4absl12lts_2025051212log_internal12Check_EQImplImmEEPKcRKT_RKT0_S4_.exit
  %i.zt = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #19
  br label %bb.gc

bb.fx:                                            ; preds = %bb.fv
  %i.zu = landingpad { ptr, i32 }
          cleanup                                 ; 0 uses
  call void @_ZN4absl12lts_2025051212log_internal15LogMessageFatalD1Ev(ptr noundef nonnull align 8 dereferenceable(16) %11) #21
  unreachable

bb.fy:                                            ; preds = %bb.fs
  %i.zv = load ptr, ptr %i.h, align 8, !tbaa !150 ; 3 uses
  %i.zw = getelementptr inbounds nuw i8, ptr %0, i64 128 ; 2 uses
  %i.zx = load ptr, ptr %i.zw, align 8, !tbaa !151
  %i.zy = load <2 x ptr>, ptr %12, align 16, !tbaa !152
  store <2 x ptr> %i.zy, ptr %i.h, align 8, !tbaa !152
  %i.zz = getelementptr inbounds nuw i8, ptr %12, i64 16
  %i.aaa = load ptr, ptr %i.zz, align 16, !tbaa !151
  store ptr %i.aaa, ptr %i.zw, align 8, !tbaa !151
  %.not.i.i.i.i.i131 = icmp eq ptr %i.zv, null
  br i1 %.not.i.i.i.i.i131, label %_ZNSt6vectorIhSaIhEED2Ev.exit134, label %bb.fz

bb.fz:                                            ; preds = %bb.fy
  %i.aab = ptrtoint ptr %i.zx to i64
  %i.aac = ptrtoint ptr %i.zv to i64
  %i.aad = sub i64 %i.aab, %i.aac
  call void @_ZdlPvm(ptr noundef nonnull %i.zv, i64 noundef %i.aad) #18
  br label %_ZNSt6vectorIhSaIhEED2Ev.exit134

_ZNSt6vectorIhSaIhEED2Ev.exit134:                 ; preds = %bb.fz, %bb.fy
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #19
  br label %bb.ga

bb.ga:                                            ; preds = %_ZNSt6vectorIhSaIhEED2Ev.exit134, %_ZNSt6vectorIhSaIhEED2Ev.exit
  ret void

bb.gb:                                            ; preds = %bb.fs
  %i.aae = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #19
  br label %bb.gc

bb.gc:                                            ; preds = %.loopexit, %.loopexit.split-lp, %bb.fu, %bb.fw, %bb.gb, %bb.ft
  %.pn.pn = phi { ptr, i32 } [ %i.zs, %bb.fu ], [ %i.aae, %bb.gb ], [ %i.zr, %bb.ft ], [ %i.zt, %bb.fw ], [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ]
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #19
  br label %bb.gd

bb.gd:                                            ; preds = %bb.fi, %bb.gc, %bb.fh, %bb.w, %bb.v, %bb.m, %bb.k, %bb.j, %bb.i
  %.pn70 = phi { ptr, i32 } [ %i.df, %bb.w ], [ %i.de, %bb.v ], [ %i.aw, %bb.k ], [ %i.av, %bb.j ], [ %i.bb, %bb.m ], [ %i.au, %bb.i ], [ %i.xg, %bb.fh ], [ %.pn.pn, %bb.gc ], [ %i.xh, %bb.fi ]
  %i.aaf = load ptr, ptr %i.h, align 8, !tbaa !150 ; 3 uses
  %.not.i.i.i135 = icmp eq ptr %i.aaf, null
  br i1 %.not.i.i.i135, label %_ZNSt6vectorIhSaIhEED2Ev.exit136, label %bb.ge

bb.ge:                                            ; preds = %bb.gd
  %i.aag = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.aah = load ptr, ptr %i.aag, align 8, !tbaa !151
  %i.aai = ptrtoint ptr %i.aah to i64
  %i.aaj = ptrtoint ptr %i.aaf to i64
  %i.aak = sub i64 %i.aai, %i.aaj
  call void @_ZdlPvm(ptr noundef nonnull %i.aaf, i64 noundef %i.aak) #18
  br label %_ZNSt6vectorIhSaIhEED2Ev.exit136

_ZNSt6vectorIhSaIhEED2Ev.exit136:                 ; preds = %bb.gd, %bb.ge
  call void @_ZN6google8protobuf8internal17TailCallTableInfo15NumToEntryTableD2Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %i.f) #19
  %i.aal = load ptr, ptr %i.e, align 8, !tbaa !49 ; 3 uses
  %.not.i.i.i137 = icmp eq ptr %i.aal, null
  br i1 %.not.i.i.i137, label %_ZNSt6vectorIN6google8protobuf8internal17TailCallTableInfo8AuxEntryESaIS4_EED2Ev.exit, label %bb.gf

bb.gf:                                            ; preds = %_ZNSt6vectorIhSaIhEED2Ev.exit136
  %i.aam = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.aan = load ptr, ptr %i.aam, align 8, !tbaa !74
  %i.aao = ptrtoint ptr %i.aan to i64
  %i.aap = ptrtoint ptr %i.aal to i64
  %i.aaq = sub i64 %i.aao, %i.aap
  call void @_ZdlPvm(ptr noundef nonnull %i.aal, i64 noundef %i.aaq) #18
  br label %_ZNSt6vectorIN6google8protobuf8internal17TailCallTableInfo8AuxEntryESaIS4_EED2Ev.exit

_ZNSt6vectorIN6google8protobuf8internal17TailCallTableInfo8AuxEntryESaIS4_EED2Ev.exit: ; preds = %_ZNSt6vectorIhSaIhEED2Ev.exit136, %bb.gf
  %i.aar = load ptr, ptr %i.d, align 8, !tbaa !41 ; 3 uses
  %.not.i.i.i138 = icmp eq ptr %i.aar, null
  br i1 %.not.i.i.i138, label %_ZNSt6vectorIN6google8protobuf8internal17TailCallTableInfo14FieldEntryInfoESaIS4_EED2Ev.exit139, label %bb.gg

bb.gg:                                            ; preds = %_ZNSt6vectorIN6google8protobuf8internal17TailCallTableInfo8AuxEntryESaIS4_EED2Ev.exit
  %i.aas = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.aat = load ptr, ptr %i.aas, align 8, !tbaa !45
  %i.aau = ptrtoint ptr %i.aat to i64
  %i.aav = ptrtoint ptr %i.aar to i64
  %i.aaw = sub i64 %i.aau, %i.aav
  call void @_ZdlPvm(ptr noundef nonnull %i.aar, i64 noundef %i.aaw) #18
  br label %_ZNSt6vectorIN6google8protobuf8internal17TailCallTableInfo14FieldEntryInfoESaIS4_EED2Ev.exit139

_ZNSt6vectorIN6google8protobuf8internal17TailCallTableInfo14FieldEntryInfoESaIS4_EED2Ev.exit139: ; preds = %_ZNSt6vectorIN6google8protobuf8internal17TailCallTableInfo8AuxEntryESaIS4_EED2Ev.exit, %bb.gg
  %i.aax = load ptr, ptr %i.c, align 8, !tbaa !136 ; 3 uses
  %.not.i.i.i140 = icmp eq ptr %i.aax, null
  br i1 %.not.i.i.i140, label %_ZNSt6vectorIN6google8protobuf8internal17TailCallTableInfo13FastFieldInfoESaIS4_EED2Ev.exit, label %bb.gh

bb.gh:                                            ; preds = %_ZNSt6vectorIN6google8protobuf8internal17TailCallTableInfo14FieldEntryInfoESaIS4_EED2Ev.exit139
  %i.aay = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.aaz = load ptr, ptr %i.aay, align 8, !tbaa !138
  %i.aba = ptrtoint ptr %i.aaz to i64
  %i.abb = ptrtoint ptr %i.aax to i64
  %i.abc = sub i64 %i.aba, %i.abb
  call void @_ZdlPvm(ptr noundef nonnull %i.aax, i64 noundef %i.abc) #18
  br label %_ZNSt6vectorIN6google8protobuf8internal17TailCallTableInfo13FastFieldInfoESaIS4_EED2Ev.exit

_ZNSt6vectorIN6google8protobuf8internal17TailCallTableInfo13FastFieldInfoESaIS4_EED2Ev.exit: ; preds = %_ZNSt6vectorIN6google8protobuf8internal17TailCallTableInfo14FieldEntryInfoESaIS4_EED2Ev.exit139, %bb.gh
  resume { ptr, i32 } %.pn70
}

; Function Attrs: mustprogress uwtable
define internal fastcc void @_ZN6google8protobuf8internal12_GLOBAL__N_119MakeNumToEntryTableEN4absl12lts_202505124SpanIKNS1_17TailCallTableInfo12FieldOptionsEEE(ptr dead_on_unwind noalias nonnull writable align 8 initializes((0, 4), (8, 32)) %0, ptr nofree readonly captures(none) %1, i64 %2) unnamed_addr #0 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.absl::lts_20250512::log_internal::LogMessageFatal", align 8 ; 6 uses
  %4 = alloca %"struct.google::protobuf::internal::TailCallTableInfo::SkipEntryBlock", align 8 ; 7 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.a, i8 0, i64 24, i1 false)
  store i32 -1, ptr %0, align 8, !tbaa !140
  %i.b = trunc i64 %2 to i16                      ; 3 uses
  %.not99 = icmp eq i16 %i.b, 0
  br i1 %.not99, label %.thread81, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.a
  %5 = and i64 %2, 65535
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.b
  %i.c = phi i32 [ -1, %.lr.ph.preheader ], [ %i.n, %bb.b ]
  %indvars.iv = phi i64 [ 0, %.lr.ph.preheader ], [ %indvars.iv.next, %bb.b ] ; 3 uses
  %i.d = getelementptr inbounds nuw [24 x i8], ptr %1, i64 %indvars.iv
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !50
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 4
  %i.g = load i32, ptr %i.f, align 4, !tbaa !7    ; 2 uses
  %i.h = icmp sgt i32 %i.g, 32
  br i1 %i.h, label %.preheader, label %bb.b

.preheader:                                       ; preds = %.lr.ph
  %6 = trunc nuw i64 %indvars.iv to i16           ; 2 uses
  %.not52104 = icmp eq i16 %6, %i.b
  br i1 %.not52104, label %.thread81, label %.lr.ph109

.lr.ph109:                                        ; preds = %.preheader
  %i.i = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 3 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.l = getelementptr inbounds nuw i8, ptr %4, i64 24 ; 2 uses
  br label %bb.c

bb.b:                                             ; preds = %.lr.ph
  %i.m = add nsw i32 %i.g, -1
  %.neg = shl nsw i32 -1, %i.m
  %i.n = add i32 %i.c, %.neg                      ; 2 uses
  store i32 %i.n, ptr %0, align 8, !tbaa !140
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %.not = icmp eq i64 %indvars.iv.next, %5
  br i1 %.not, label %.thread81, label %.lr.ph, !llvm.loop !172

bb.c:                                             ; preds = %.lr.ph109, %._crit_edge
  %.1108 = phi i16 [ %6, %.lr.ph109 ], [ %i.ci, %._crit_edge ] ; 3 uses
  %.045107 = phi ptr [ null, %.lr.ph109 ], [ %.146, %._crit_edge ]
  %.047106 = phi i1 [ true, %.lr.ph109 ], [ false, %._crit_edge ]
  %i.o = phi i1 [ false, %.lr.ph109 ], [ true, %._crit_edge ]
  %.049105 = phi i32 [ 0, %.lr.ph109 ], [ %i.ch, %._crit_edge ] ; 3 uses
  %i.p = zext i16 %.1108 to i64
  %i.q = getelementptr inbounds nuw [24 x i8], ptr %1, i64 %i.p
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !50
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 4
  %i.t = load i32, ptr %i.s, align 4, !tbaa !7    ; 7 uses
  %i.u = icmp ugt i32 %i.t, %.049105
  br i1 %i.u, label %bb.e, label %bb.d, !prof !57

bb.d:                                             ; preds = %bb.c
  %i.v = zext i32 %i.t to i64
  %i.w = zext i32 %.049105 to i64
  %i.x = invoke noundef nonnull ptr @_ZN4absl12lts_2025051212log_internal17MakeCheckOpStringIllEEPKcT_T0_S4_(i64 noundef %i.v, i64 noundef %i.w, ptr noundef nonnull @.str.4)
          to label %_ZN4absl12lts_2025051212log_internal12Check_GTImplIjjEEPKcRKT_RKT0_S4_.exit unwind label %bb.f

bb.e:                                             ; preds = %bb.c
  %i.y = sub nuw i32 %i.t, %.049105
  %i.z = icmp ugt i32 %i.y, 96
  %or.cond = select i1 %i.o, i1 %i.z, i1 false
  %i.aa = or i1 %.047106, %or.cond
  br i1 %i.aa, label %bb.j, label %bb.o

bb.f:                                             ; preds = %bb.d
  %i.ab = landingpad { ptr, i32 }
          cleanup
  br label %bb.v

_ZN4absl12lts_2025051212log_internal12Check_GTImplIjjEEPKcRKT_RKT0_S4_.exit: ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #19
  invoke void @_ZN4absl12lts_2025051212log_internal15LogMessageFatalC1EPKciS4_(ptr noundef nonnull align 8 dereferenceable(16) %3, ptr noundef nonnull @.str.1, i32 noundef 456, ptr noundef nonnull %i.x) #20
          to label %bb.g unwind label %bb.h

bb.g:                                             ; preds = %_ZN4absl12lts_2025051212log_internal12Check_GTImplIjjEEPKcRKT_RKT0_S4_.exit
  invoke void @_ZN4absl12lts_2025051212log_internal10LogMessage5FlushEv(ptr noundef nonnull align 8 dereferenceable(16) %3)
          to label %_ZNKO4absl12lts_2025051212log_internal7VoidifyaaIRNS1_10LogMessageEEEvOT_.exit unwind label %bb.i

_ZNKO4absl12lts_2025051212log_internal7VoidifyaaIRNS1_10LogMessageEEEvOT_.exit: ; preds = %bb.g
  call void @_ZN4absl12lts_2025051212log_internal15LogMessageFatalD1Ev(ptr noundef nonnull align 8 dereferenceable(16) %3) #21
  unreachable

bb.h:                                             ; preds = %_ZN4absl12lts_2025051212log_internal12Check_GTImplIjjEEPKcRKT_RKT0_S4_.exit
  %i.ac = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #19
  br label %bb.v

bb.i:                                             ; preds = %bb.g
  %i.ad = landingpad { ptr, i32 }
          cleanup                                 ; 0 uses
  call void @_ZN4absl12lts_2025051212log_internal15LogMessageFatalD1Ev(ptr noundef nonnull align 8 dereferenceable(16) %3) #21
  unreachable

bb.j:                                             ; preds = %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #19
  store i32 %i.t, ptr %4, align 8, !tbaa !173
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.i, i8 0, i64 24, i1 false)
  %i.ae = load ptr, ptr %i.j, align 8, !tbaa !142 ; 5 uses
  %i.af = load ptr, ptr %i.k, align 8, !tbaa !143
  %.not.i.i = icmp eq ptr %i.ae, %i.af
  br i1 %.not.i.i, label %bb.k, label %_ZNSt6vectorIN6google8protobuf8internal17TailCallTableInfo14SkipEntryBlockESaIS4_EE9push_backEOS4_.exit.thread

_ZNSt6vectorIN6google8protobuf8internal17TailCallTableInfo14SkipEntryBlockESaIS4_EE9push_backEOS4_.exit.thread: ; preds = %bb.j
  store i32 %i.t, ptr %i.ae, align 8, !tbaa !173
  %i.ag = getelementptr inbounds nuw i8, ptr %i.ae, i64 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ag, i8 0, i64 24, i1 false)
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ae, i64 32
  store ptr %i.ah, ptr %i.j, align 8, !tbaa !142
  br label %_ZN6google8protobuf8internal17TailCallTableInfo14SkipEntryBlockD2Ev.exit

bb.k:                                             ; preds = %bb.j
  invoke void @_ZNSt6vectorIN6google8protobuf8internal17TailCallTableInfo14SkipEntryBlockESaIS4_EE17_M_realloc_insertIJS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %i.a, ptr %i.ae, ptr noundef nonnull align 8 dereferenceable(32) %4)
          to label %_ZNSt6vectorIN6google8protobuf8internal17TailCallTableInfo14SkipEntryBlockESaIS4_EE9push_backEOS4_.exit unwind label %bb.m

_ZNSt6vectorIN6google8protobuf8internal17TailCallTableInfo14SkipEntryBlockESaIS4_EE9push_backEOS4_.exit: ; preds = %bb.k
  %.pr = load ptr, ptr %i.i, align 8, !tbaa !145  ; 3 uses
  %.not.i.i.i.i = icmp eq ptr %.pr, null
  br i1 %.not.i.i.i.i, label %_ZN6google8protobuf8internal17TailCallTableInfo14SkipEntryBlockD2Ev.exit, label %bb.l

bb.l:                                             ; preds = %_ZNSt6vectorIN6google8protobuf8internal17TailCallTableInfo14SkipEntryBlockESaIS4_EE9push_backEOS4_.exit
  %i.ai = load ptr, ptr %i.l, align 8, !tbaa !148
  %i.aj = ptrtoint ptr %i.ai to i64
  %i.ak = ptrtoint ptr %.pr to i64
  %i.al = sub i64 %i.aj, %i.ak
  call void @_ZdlPvm(ptr noundef nonnull %.pr, i64 noundef %i.al) #18
  br label %_ZN6google8protobuf8internal17TailCallTableInfo14SkipEntryBlockD2Ev.exit

_ZN6google8protobuf8internal17TailCallTableInfo14SkipEntryBlockD2Ev.exit: ; preds = %_ZNSt6vectorIN6google8protobuf8internal17TailCallTableInfo14SkipEntryBlockESaIS4_EE9push_backEOS4_.exit.thread, %_ZNSt6vectorIN6google8protobuf8internal17TailCallTableInfo14SkipEntryBlockESaIS4_EE9push_backEOS4_.exit, %bb.l
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #19
  %i.am = load ptr, ptr %i.j, align 8, !tbaa !144
  %i.an = getelementptr inbounds i8, ptr %i.am, i64 -32
  br label %bb.o

bb.m:                                             ; preds = %bb.k
  %i.ao = landingpad { ptr, i32 }
          cleanup
  %i.ap = load ptr, ptr %i.i, align 8, !tbaa !145 ; 3 uses
  %.not.i.i.i.i61 = icmp eq ptr %i.ap, null
  br i1 %.not.i.i.i.i61, label %_ZN6google8protobuf8internal17TailCallTableInfo14SkipEntryBlockD2Ev.exit62, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.aq = load ptr, ptr %i.l, align 8, !tbaa !148
  %i.ar = ptrtoint ptr %i.aq to i64
  %i.as = ptrtoint ptr %i.ap to i64
  %i.at = sub i64 %i.ar, %i.as
  call void @_ZdlPvm(ptr noundef nonnull %i.ap, i64 noundef %i.at) #18
  br label %_ZN6google8protobuf8internal17TailCallTableInfo14SkipEntryBlockD2Ev.exit62

_ZN6google8protobuf8internal17TailCallTableInfo14SkipEntryBlockD2Ev.exit62: ; preds = %bb.m, %bb.n
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #19
  br label %bb.v

bb.o:                                             ; preds = %_ZN6google8protobuf8internal17TailCallTableInfo14SkipEntryBlockD2Ev.exit, %bb.e
  %.146 = phi ptr [ %i.an, %_ZN6google8protobuf8internal17TailCallTableInfo14SkipEntryBlockD2Ev.exit ], [ %.045107, %bb.e ] ; 5 uses
  %i.au = load i32, ptr %.146, align 8, !tbaa !173
  %i.av = sub i32 %i.t, %i.au                     ; 2 uses
  %i.aw = lshr i32 %i.av, 4
  %i.ax = and i32 %i.av, 15                       ; 2 uses
  %i.ay = zext nneg i32 %i.aw to i64              ; 3 uses
  %i.az = getelementptr inbounds nuw i8, ptr %.146, i64 8 ; 3 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %.146, i64 16 ; 4 uses
  %i.bb = load ptr, ptr %i.ba, align 8, !tbaa !178 ; 2 uses
  %i.bc = load ptr, ptr %i.az, align 8, !tbaa !145 ; 3 uses
  %i.bd = ptrtoint ptr %i.bb to i64
  %i.be = ptrtoint ptr %i.bc to i64
  %i.bf = sub i64 %i.bd, %i.be                    ; 2 uses
  %i.bg = ashr exact i64 %i.bf, 2                 ; 2 uses
  %.not54101 = icmp ugt i64 %i.bg, %i.ay
  br i1 %.not54101, label %._crit_edge, label %.lr.ph102

.lr.ph102:                                        ; preds = %bb.o
  %i.bh = getelementptr inbounds nuw i8, ptr %.146, i64 24 ; 2 uses
  %.sroa.6.0.insert.ext = zext i16 %.1108 to i32
  %.sroa.6.0.insert.shift = shl nuw i32 %.sroa.6.0.insert.ext, 16
  %.sroa.0.0.insert.insert = or disjoint i32 %.sroa.6.0.insert.shift, 65535 ; 2 uses
  br label %bb.p

bb.p:                                             ; preds = %.lr.ph102, %_ZNSt6vectorIN6google8protobuf8internal17TailCallTableInfo11SkipEntry16ESaIS4_EE9push_backEOS4_.exit
  %i.bi = phi i64 [ %i.bg, %.lr.ph102 ], [ %i.cc, %_ZNSt6vectorIN6google8protobuf8internal17TailCallTableInfo11SkipEntry16ESaIS4_EE9push_backEOS4_.exit ] ; 2 uses
  %i.bj = phi i64 [ %i.bf, %.lr.ph102 ], [ %i.cb, %_ZNSt6vectorIN6google8protobuf8internal17TailCallTableInfo11SkipEntry16ESaIS4_EE9push_backEOS4_.exit ] ; 5 uses
  %i.bk = phi ptr [ %i.bc, %.lr.ph102 ], [ %i.bx, %_ZNSt6vectorIN6google8protobuf8internal17TailCallTableInfo11SkipEntry16ESaIS4_EE9push_backEOS4_.exit ] ; 3 uses
  %i.bl = phi ptr [ %i.bb, %.lr.ph102 ], [ %i.by, %_ZNSt6vectorIN6google8protobuf8internal17TailCallTableInfo11SkipEntry16ESaIS4_EE9push_backEOS4_.exit ] ; 2 uses
  %i.bm = load ptr, ptr %i.bh, align 8, !tbaa !148
  %.not.i.i63 = icmp eq ptr %i.bl, %i.bm
  br i1 %.not.i.i63, label %bb.r, label %bb.q

bb.q:                                             ; preds = %bb.p
  store i32 %.sroa.0.0.insert.insert, ptr %i.bl, align 2
  %i.bn = load ptr, ptr %i.ba, align 8, !tbaa !178
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bn, i64 4 ; 2 uses
  store ptr %i.bo, ptr %i.ba, align 8, !tbaa !178
  %.pre = load ptr, ptr %i.az, align 8, !tbaa !145
  br label %_ZNSt6vectorIN6google8protobuf8internal17TailCallTableInfo11SkipEntry16ESaIS4_EE9push_backEOS4_.exit

bb.r:                                             ; preds = %bb.p
  %i.bp = icmp eq i64 %i.bj, 9223372036854775804
  br i1 %i.bp, label %bb.s, label %_ZNKSt6vectorIN6google8protobuf8internal17TailCallTableInfo11SkipEntry16ESaIS4_EE12_M_check_lenEmPKc.exit.i.i.i

bb.s:                                             ; preds = %bb.r
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.5) #16
          to label %.noexc65 unwind label %.loopexit.split-lp

.noexc65:                                         ; preds = %bb.s
  unreachable

_ZNKSt6vectorIN6google8protobuf8internal17TailCallTableInfo11SkipEntry16ESaIS4_EE12_M_check_lenEmPKc.exit.i.i.i: ; preds = %bb.r
  %.sroa.speculated.i.i.i.i = call i64 @llvm.umax.i64(i64 %i.bi, i64 1)
  %i.bq = add nuw nsw i64 %.sroa.speculated.i.i.i.i, %i.bi ; 2 uses
  %i.br = shl nuw nsw i64 %i.bq, 2
  %i.bs = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.br) #17
          to label %.noexc66 unwind label %.loopexit ; 5 uses

.noexc66:                                         ; preds = %_ZNKSt6vectorIN6google8protobuf8internal17TailCallTableInfo11SkipEntry16ESaIS4_EE12_M_check_lenEmPKc.exit.i.i.i
  %i.bt = getelementptr inbounds i8, ptr %i.bs, i64 %i.bj ; 2 uses
  store i32 %.sroa.0.0.insert.insert, ptr %i.bt, align 2
  %i.bu = icmp sgt i64 %i.bj, 0
  br i1 %i.bu, label %bb.t, label %_ZNSt6vectorIN6google8protobuf8internal17TailCallTableInfo11SkipEntry16ESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit16.i.i.i

bb.t:                                             ; preds = %.noexc66
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 2 %i.bs, ptr align 2 %i.bk, i64 %i.bj, i1 false)
  br label %_ZNSt6vectorIN6google8protobuf8internal17TailCallTableInfo11SkipEntry16ESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit16.i.i.i

_ZNSt6vectorIN6google8protobuf8internal17TailCallTableInfo11SkipEntry16ESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit16.i.i.i: ; preds = %bb.t, %.noexc66
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bt, i64 4 ; 2 uses
  %.not.i17.i.i.i = icmp eq ptr %i.bk, null
  br i1 %.not.i17.i.i.i, label %_ZNSt6vectorIN6google8protobuf8internal17TailCallTableInfo11SkipEntry16ESaIS4_EE17_M_realloc_insertIJS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i.i, label %bb.u

bb.u:                                             ; preds = %_ZNSt6vectorIN6google8protobuf8internal17TailCallTableInfo11SkipEntry16ESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit16.i.i.i
  call void @_ZdlPvm(ptr noundef nonnull %i.bk, i64 noundef %i.bj) #18
  br label %_ZNSt6vectorIN6google8protobuf8internal17TailCallTableInfo11SkipEntry16ESaIS4_EE17_M_realloc_insertIJS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i.i

_ZNSt6vectorIN6google8protobuf8internal17TailCallTableInfo11SkipEntry16ESaIS4_EE17_M_realloc_insertIJS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i.i: ; preds = %bb.u, %_ZNSt6vectorIN6google8protobuf8internal17TailCallTableInfo11SkipEntry16ESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit16.i.i.i
  store ptr %i.bs, ptr %i.az, align 8, !tbaa !145
  store ptr %i.bv, ptr %i.ba, align 8, !tbaa !178
  %i.bw = getelementptr inbounds nuw [4 x i8], ptr %i.bs, i64 %i.bq
  store ptr %i.bw, ptr %i.bh, align 8, !tbaa !148
  br label %_ZNSt6vectorIN6google8protobuf8internal17TailCallTableInfo11SkipEntry16ESaIS4_EE9push_backEOS4_.exit

end_hunk_0

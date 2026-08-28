Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/opencv/original/smiledetect?download=true
inline.NumInlined: 382
inline.NumDeleted: 119
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@main:bb.a
  store i64 0, ptr %i.cx, align 8, !tbaa !13
  store i8 0, ptr %i.cw, align 1, !tbaa !16
  %i.cy = load ptr, ptr %14, align 8, !tbaa !18   ; 2 uses
  %i.cz = getelementptr inbounds nuw i8, ptr %14, i64 16 ; 2 uses
  %i.da = icmp eq ptr %i.cy, %i.cz
  br i1 %i.da, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit114, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i112

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i112: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit111
  %i.db = load i64, ptr %i.cz, align 8, !tbaa !16
  %i.dc = add i64 %i.db, 1
  call void @_ZdlPvm(ptr noundef %i.cy, i64 noundef %i.dc) #18
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit114

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit114: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit111, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i112
  %i.dd = load ptr, ptr %15, align 8, !tbaa !18   ; 2 uses
  %i.de = icmp eq ptr %i.dd, %i.ca
  br i1 %i.de, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit117, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i115

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i115: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit114
  %i.df = load i64, ptr %i.ca, align 8, !tbaa !16
  %i.dg = add i64 %i.df, 1
  call void @_ZdlPvm(ptr noundef %i.dd, i64 noundef %i.dg) #18
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit117

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit117: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit114, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i115
  %i.dh = load ptr, ptr %16, align 8, !tbaa !18   ; 2 uses
  %i.di = icmp eq ptr %i.dh, %i.bx
  br i1 %i.di, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit120, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i118

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i118: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit117
  %i.dj = load i64, ptr %i.bx, align 8, !tbaa !16
  %i.dk = add i64 %i.dj, 1
  call void @_ZdlPvm(ptr noundef %i.dh, i64 noundef %i.dk) #18
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit120

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit120: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit117, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i118
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #17
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #17
  %i.dl = getelementptr inbounds nuw i8, ptr %17, i64 16 ; 6 uses
  store ptr %i.dl, ptr %17, align 8, !tbaa !9
  store i64 8100124590907945588, ptr %i.dl, align 8
  %i.dm = getelementptr inbounds nuw i8, ptr %17, i64 8
  store i64 8, ptr %i.dm, align 8, !tbaa !13
  %i.dn = getelementptr inbounds nuw i8, ptr %17, i64 24
  store i8 0, ptr %i.dn, align 8, !tbaa !16
  %i.do = invoke noundef zeroext i1 @_ZNK2cv17CommandLineParser3hasERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(8) %8, ptr noundef nonnull align 8 dereferenceable(32) %17)
          to label %bb.aa unwind label %bb.am

bb.aa:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit120
  %i.dp = load ptr, ptr %17, align 8, !tbaa !18   ; 2 uses
  %i.dq = icmp eq ptr %i.dp, %i.dl
  br i1 %i.dq, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit127, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i125

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i125: ; preds = %bb.aa
  %i.dr = load i64, ptr %i.dl, align 8, !tbaa !16
  %i.ds = add i64 %i.dr, 1
  call void @_ZdlPvm(ptr noundef %i.dp, i64 noundef %i.ds) #18
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit127

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit127: ; preds = %bb.aa, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i125
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #17
  call void @llvm.lifetime.start.p0(ptr nonnull %18) #17
  call void @llvm.lifetime.start.p0(ptr nonnull %19) #17
  %i.dt = getelementptr inbounds nuw i8, ptr %19, i64 16 ; 6 uses
  store ptr %i.dt, ptr %19, align 8, !tbaa !9
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(6) %i.dt, ptr noundef nonnull align 1 dereferenceable(6) @.str.6, i64 6, i1 false)
  %i.du = getelementptr inbounds nuw i8, ptr %19, i64 8
  store i64 6, ptr %i.du, align 8, !tbaa !13
  %i.dv = getelementptr inbounds nuw i8, ptr %19, i64 22
  store i8 0, ptr %i.dv, align 2, !tbaa !16
  %i.dw = getelementptr inbounds nuw i8, ptr %18, i64 16 ; 10 uses
  store ptr %i.dw, ptr %18, align 8, !tbaa !9, !alias.scope !25
  %i.dx = getelementptr inbounds nuw i8, ptr %18, i64 8 ; 6 uses
  store i64 0, ptr %i.dx, align 8, !tbaa !13, !alias.scope !25
  store i8 0, ptr %i.dw, align 8, !tbaa !16, !alias.scope !25
  invoke void @_ZNK2cv17CommandLineParser9getByNameERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEbNS_5ParamEPv(ptr noundef nonnull align 8 dereferenceable(8) %8, ptr noundef nonnull align 8 dereferenceable(32) %19, i1 noundef zeroext true, i32 noundef 3, ptr noundef nonnull align 8 %18)
          to label %_ZNK2cv17CommandLineParser3getINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEET_RKS7_b.exit137 unwind label %bb.ab

bb.ab:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit127
  %i.dy = landingpad { ptr, i32 }
          cleanup
  %i.dz = load ptr, ptr %18, align 8, !tbaa !18, !alias.scope !25 ; 2 uses
  %i.ea = icmp eq ptr %i.dz, %i.dw
  br i1 %i.ea, label %.body135, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i132

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i132: ; preds = %bb.ab
  %i.eb = load i64, ptr %i.dw, align 8, !tbaa !16, !alias.scope !25
  %i.ec = add i64 %i.eb, 1
  call void @_ZdlPvm(ptr noundef %i.dz, i64 noundef %i.ec) #18
  br label %.body135

_ZNK2cv17CommandLineParser3getINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEET_RKS7_b.exit137: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit127
  %i.ed = load ptr, ptr %5, align 8, !tbaa !18    ; 6 uses
  %i.ee = icmp eq ptr %i.ed, %i.c
  %i.ef = load ptr, ptr %18, align 8, !tbaa !18   ; 5 uses
  %i.eg = icmp eq ptr %i.ef, %i.dw                ; 2 uses
  br i1 %i.ee, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i143, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i138

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i143: ; preds = %_ZNK2cv17CommandLineParser3getINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEET_RKS7_b.exit137
  br i1 %i.eg, label %bb.ac, label %.thread.i144

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i138: ; preds = %_ZNK2cv17CommandLineParser3getINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEET_RKS7_b.exit137
  br i1 %i.eg, label %bb.ac, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i139

bb.ac:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i138, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i143
  %i.eh = load i64, ptr %i.dx, align 8, !tbaa !13 ; 3 uses
  %i.ei = icmp ult i64 %i.eh, 16
  call void @llvm.assume(i1 %i.ei)
  switch i64 %i.eh, label %bb.ae [
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i141
    i64 1, label %bb.ad
  ]

bb.ad:                                            ; preds = %bb.ac
  %i.ej = load i8, ptr %i.ef, align 1, !tbaa !16
  store i8 %i.ej, ptr %i.ed, align 1, !tbaa !16
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i141

bb.ae:                                            ; preds = %bb.ac
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.ed, ptr align 1 %i.ef, i64 %i.eh, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i141

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i141: ; preds = %bb.ae, %bb.ad, %bb.ac
  %i.ek = load i64, ptr %i.dx, align 8, !tbaa !13 ; 2 uses
  store i64 %i.ek, ptr %i.d, align 8, !tbaa !13
  %i.el = load ptr, ptr %5, align 8, !tbaa !18
  %i.em = getelementptr inbounds nuw i8, ptr %i.el, i64 %i.ek
  store i8 0, ptr %i.em, align 1, !tbaa !16
  %.pre.i142 = load ptr, ptr %18, align 8, !tbaa !18
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit145

.thread.i144:                                     ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i143
  store ptr %i.ef, ptr %5, align 8, !tbaa !18
  %i.en = load <2 x i64>, ptr %i.dx, align 8, !tbaa !16
  store <2 x i64> %i.en, ptr %i.d, align 8, !tbaa !16
  br label %bb.ag

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i139: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i138
  %i.eo = load i64, ptr %i.c, align 8, !tbaa !16
  store ptr %i.ef, ptr %5, align 8, !tbaa !18
  %i.ep = load <2 x i64>, ptr %i.dx, align 8, !tbaa !16
  store <2 x i64> %i.ep, ptr %i.d, align 8, !tbaa !16
  %.not.i140 = icmp eq ptr %i.ed, null
  br i1 %.not.i140, label %bb.ag, label %bb.af

bb.af:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i139
  store ptr %i.ed, ptr %18, align 8, !tbaa !18
  store i64 %i.eo, ptr %i.dw, align 8, !tbaa !16
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit145

bb.ag:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i139, %.thread.i144
  store ptr %i.dw, ptr %18, align 8, !tbaa !18
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit145

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit145: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i141, %bb.af, %bb.ag
  %i.eq = phi ptr [ %.pre.i142, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i141 ], [ %i.ed, %bb.af ], [ %i.dw, %bb.ag ]
  store i64 0, ptr %i.dx, align 8, !tbaa !13
  store i8 0, ptr %i.eq, align 1, !tbaa !16
  %i.er = load ptr, ptr %18, align 8, !tbaa !18   ; 2 uses
  %i.es = icmp eq ptr %i.er, %i.dw
  br i1 %i.es, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit148, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i146

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i146: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit145
  %i.et = load i64, ptr %i.dw, align 8, !tbaa !16
  %i.eu = add i64 %i.et, 1
  call void @_ZdlPvm(ptr noundef %i.er, i64 noundef %i.eu) #18
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit148

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit148: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit145, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i146
  %i.ev = load ptr, ptr %19, align 8, !tbaa !18   ; 2 uses
  %i.ew = icmp eq ptr %i.ev, %i.dt
  br i1 %i.ew, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit151, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i149

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i149: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit148
  %i.ex = load i64, ptr %i.dt, align 8, !tbaa !16
  %i.ey = add i64 %i.ex, 1
  call void @_ZdlPvm(ptr noundef %i.ev, i64 noundef %i.ey) #18
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit151

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit151: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit148, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i149
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #17
  call void @llvm.lifetime.start.p0(ptr nonnull %20) #17
  %i.ez = getelementptr inbounds nuw i8, ptr %20, i64 16 ; 6 uses
  store ptr %i.ez, ptr %20, align 8, !tbaa !9
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(5) %i.ez, ptr noundef nonnull align 1 dereferenceable(5) @.str.7, i64 5, i1 false)
  %i.fa = getelementptr inbounds nuw i8, ptr %20, i64 8
  store i64 5, ptr %i.fa, align 8, !tbaa !13
  %i.fb = getelementptr inbounds nuw i8, ptr %20, i64 21
  store i8 0, ptr %i.fb, align 1, !tbaa !16
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #17
  store i32 0, ptr %i.a, align 4, !tbaa !28
  invoke void @_ZNK2cv17CommandLineParser9getByNameERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEbNS_5ParamEPv(ptr noundef nonnull align 8 dereferenceable(8) %8, ptr noundef nonnull align 8 dereferenceable(32) %20, i1 noundef zeroext true, i32 noundef 0, ptr noundef nonnull %i.a)
          to label %bb.ah unwind label %bb.an

bb.ah:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit151
  %i.fc = load i32, ptr %i.a, align 4, !tbaa !28
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #17
  %i.fd = load ptr, ptr %20, align 8, !tbaa !18   ; 2 uses
  %i.fe = icmp eq ptr %i.fd, %i.ez
  br i1 %i.fe, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit159, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i157

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i157: ; preds = %bb.ah
  %i.ff = load i64, ptr %i.ez, align 8, !tbaa !16
  %i.fg = add i64 %i.ff, 1
  call void @_ZdlPvm(ptr noundef %i.fd, i64 noundef %i.fg) #18
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit159

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit159: ; preds = %bb.ah, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i157
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #17
  %i.fh = invoke noundef zeroext i1 @_ZNK2cv17CommandLineParser5checkEv(ptr noundef nonnull align 8 dereferenceable(8) %8)
          to label %bb.ai unwind label %.loopexit.split-lp

bb.ai:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit159
  br i1 %i.fh, label %bb.ao, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  invoke fastcc void @_ZL4helpPPKc(ptr noundef %1)
          to label %.loopexit288 unwind label %.loopexit.split-lp

bb.ak:                                            ; preds = %_ZNK2cv17CommandLineParser3getINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEET_RKS7_b.exit
  %i.fi = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.fj = load ptr, ptr %12, align 8, !tbaa !18   ; 2 uses
  %i.fk = icmp eq ptr %i.fj, %i.am
  br i1 %i.fk, label %.body, label %.body.sink.split

.body.sink.split:                                 ; preds = %bb.ak, %bb.m
  %.sink372.a = phi ptr [ %i.ap, %bb.m ], [ %i.fj, %bb.ak ]
  %.pn47.ph = phi { ptr, i32 } [ %i.ao, %bb.m ], [ %i.fi, %bb.ak ]
  %i.fl = load i64, ptr %i.am, align 8, !tbaa !16
  %i.fm = add i64 %i.fl, 1
  call void @_ZdlPvm(ptr noundef %.sink372.a, i64 noundef %i.fm) #18
  br label %.body

.body:                                            ; preds = %.body.sink.split, %bb.ak, %bb.m
  %.pn47 = phi { ptr, i32 } [ %i.ao, %bb.m ], [ %i.fi, %bb.ak ], [ %.pn47.ph, %.body.sink.split ]
  %i.fn = load ptr, ptr %13, align 8, !tbaa !18   ; 2 uses
  %i.fo = icmp eq ptr %i.fn, %i.aj
  br i1 %i.fo, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit165, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i163

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i163: ; preds = %.body
  %i.fp = load i64, ptr %i.aj, align 8, !tbaa !16
  %i.fq = add i64 %i.fp, 1
  call void @_ZdlPvm(ptr noundef %i.fn, i64 noundef %i.fq) #18
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit165

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit165: ; preds = %.body, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i163
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #17
  br label %bb.cc

bb.al:                                            ; preds = %_ZNK2cv17CommandLineParser3getINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEET_RKS7_b.exit103
  %i.fr = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.fs = load ptr, ptr %15, align 8, !tbaa !18   ; 2 uses
  %i.ft = icmp eq ptr %i.fs, %i.ca
  br i1 %i.ft, label %.body101, label %.body101.sink.split

.body101.sink.split:                              ; preds = %bb.al, %bb.t
  %.sink375 = phi ptr [ %i.cd, %bb.t ], [ %i.fs, %bb.al ]
  %.pn50.ph = phi { ptr, i32 } [ %i.cc, %bb.t ], [ %i.fr, %bb.al ]
  %i.fu = load i64, ptr %i.ca, align 8, !tbaa !16
  %i.fv = add i64 %i.fu, 1
  call void @_ZdlPvm(ptr noundef %.sink375, i64 noundef %i.fv) #18
  br label %.body101

.body101:                                         ; preds = %.body101.sink.split, %bb.al, %bb.t
  %.pn50 = phi { ptr, i32 } [ %i.cc, %bb.t ], [ %i.fr, %bb.al ], [ %.pn50.ph, %.body101.sink.split ]
  %i.fw = load ptr, ptr %16, align 8, !tbaa !18   ; 2 uses
  %i.fx = icmp eq ptr %i.fw, %i.bx
  br i1 %i.fx, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit171, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i169

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i169: ; preds = %.body101
  %i.fy = load i64, ptr %i.bx, align 8, !tbaa !16
  %i.fz = add i64 %i.fy, 1
  call void @_ZdlPvm(ptr noundef %i.fw, i64 noundef %i.fz) #18
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit171

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit171: ; preds = %.body101, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i169
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #17
  br label %bb.cc

bb.am:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit120
  %i.ga = landingpad { ptr, i32 }
          cleanup
  %i.gb = load ptr, ptr %17, align 8, !tbaa !18   ; 2 uses
  %i.gc = icmp eq ptr %i.gb, %i.dl
  br i1 %i.gc, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit174, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i172

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i172: ; preds = %bb.am
  %i.gd = load i64, ptr %i.dl, align 8, !tbaa !16
  %i.ge = add i64 %i.gd, 1
  call void @_ZdlPvm(ptr noundef %i.gb, i64 noundef %i.ge) #18
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit174

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit174: ; preds = %bb.am, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i172
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #17
  br label %bb.cc

.body135:                                         ; preds = %bb.ab, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i132
  %i.gf = load ptr, ptr %19, align 8, !tbaa !18   ; 2 uses
  %i.gg = icmp eq ptr %i.gf, %i.dt
  br i1 %i.gg, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit177, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i175

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i175: ; preds = %.body135
  %i.gh = load i64, ptr %i.dt, align 8, !tbaa !16
  %i.gi = add i64 %i.gh, 1
  call void @_ZdlPvm(ptr noundef %i.gf, i64 noundef %i.gi) #18
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit177

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit177: ; preds = %.body135, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i175
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #17
  br label %bb.cc

bb.an:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit151
  %i.gj = landingpad { ptr, i32 }
          cleanup
  %i.gk = load ptr, ptr %20, align 8, !tbaa !18   ; 2 uses
  %i.gl = icmp eq ptr %i.gk, %i.ez
  br i1 %i.gl, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit180, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i178

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i178: ; preds = %bb.an
  %i.gm = load i64, ptr %i.ez, align 8, !tbaa !16
  %i.gn = add i64 %i.gm, 1
  call void @_ZdlPvm(ptr noundef %i.gk, i64 noundef %i.gn) #18
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit180

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit180: ; preds = %bb.an, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i178
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #17
  br label %bb.cc

bb.ao:                                            ; preds = %bb.ai
  %.024287 = call i32 @llvm.smax.i32(i32 %i.fc, i32 1)
  %.024 = uitofp nneg i32 %.024287 to double
  %i.go = invoke noundef zeroext i1 @_ZN2cv17CascadeClassifier4loadERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(16) %6, ptr noundef nonnull align 8 dereferenceable(32) @_Z11cascadeNameB5cxx11)
          to label %bb.ap unwind label %.loopexit.split-lp

bb.ap:                                            ; preds = %bb.ao
  br i1 %i.go, label %bb.as, label %bb.aq

bb.aq:                                            ; preds = %bb.ap
  %i.gp = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cerr, ptr noundef nonnull @.str.8, i64 noundef 34)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit unwind label %.loopexit.split-lp ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit: ; preds = %bb.aq
  %i.gq = load ptr, ptr @_ZSt4cerr, align 8, !tbaa !29
  %i.gr = getelementptr i8, ptr %i.gq, i64 -24
  %i.gs = load i64, ptr %i.gr, align 8
  %i.gt = getelementptr inbounds i8, ptr @_ZSt4cerr, i64 %i.gs
  %i.gu = getelementptr inbounds nuw i8, ptr %i.gt, i64 240
  %i.gv = load ptr, ptr %i.gu, align 8, !tbaa !31 ; 5 uses
  %.not.i.i.i = icmp eq ptr %i.gv, null
  br i1 %.not.i.i.i, label %.invoke, label %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i

.invoke:                                          ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit212, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit208, %_ZNSolsEPFRSoS_E.exit204.a, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit202, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit184, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit
  invoke void @_ZSt16__throw_bad_castv() #19
          to label %.cont unwind label %.loopexit.split-lp

.cont:                                            ; preds = %.invoke
  unreachable

_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit
  %i.gw = getelementptr inbounds nuw i8, ptr %i.gv, i64 56
  %i.gx = load i8, ptr %i.gw, align 8, !tbaa !47
  %.not.i1.i.i = icmp eq i8 %i.gx, 0
  br i1 %.not.i1.i.i, label %bb.ar, label %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i.invoke.sink.split

bb.ar:                                            ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i
  invoke void @_ZNKSt5ctypeIcE13_M_widen_initEv(ptr noundef nonnull align 8 dereferenceable(570) %i.gv)
          to label %.noexc222.invoke.a unwind label %.loopexit.split-lp

.noexc222.invoke.a:                               ; preds = %bb.ar, %bb.cb, %bb.av
  %.sink = phi ptr [ %i.ho, %bb.av ], [ %i.lf, %bb.cb ], [ %i.gv, %bb.ar ] ; 2 uses
  %i.gy = load ptr, ptr %.sink, align 8, !tbaa !29
  %i.gz = getelementptr inbounds nuw i8, ptr %i.gy, i64 48
  %i.ha = load ptr, ptr %i.gz, align 8
  %i.hb = invoke noundef signext i8 %i.ha(ptr noundef nonnull align 8 dereferenceable(570) %.sink, i8 noundef signext 10)
          to label %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i.invoke unwind label %.loopexit.split-lp, !inline_history !53

_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i.invoke.sink.split: ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i, %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i271, %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i227
  %.sink371 = phi ptr [ %i.ho, %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i227 ], [ %i.lf, %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i271 ], [ %i.gv, %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i ]
  %i.hc = getelementptr inbounds nuw i8, ptr %.sink371, i64 67
  %i.hd = load i8, ptr %i.hc, align 1, !tbaa !16
  br label %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i.invoke

_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i.invoke: ; preds = %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i.invoke.sink.split, %.noexc222.invoke.a
  %i.he = phi i8 [ %i.hb, %.noexc222.invoke.a ], [ %i.hd, %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i.invoke.sink.split ]
  %i.hf = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cerr, i8 noundef signext %i.he)
          to label %.noexc224.invoke unwind label %.loopexit.split-lp

.noexc224.invoke:                                 ; preds = %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i.invoke
  %i.hg = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8) %i.hf)
          to label %_ZNSolsEPFRSoS_E.exit.invoke unwind label %.loopexit.split-lp ; 0 uses

_ZNSolsEPFRSoS_E.exit.invoke:                     ; preds = %.noexc224.invoke
  invoke fastcc void @_ZL4helpPPKc(ptr noundef %1)
          to label %.loopexit288 unwind label %.loopexit.split-lp

bb.as:                                            ; preds = %bb.ap
  %i.hh = invoke noundef zeroext i1 @_ZN2cv17CascadeClassifier4loadERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(16) %7, ptr noundef nonnull align 8 dereferenceable(32) @_Z17nestedCascadeNameB5cxx11)
          to label %bb.at unwind label %.loopexit.split-lp

bb.at:                                            ; preds = %bb.as
  br i1 %i.hh, label %bb.aw, label %bb.au

bb.au:                                            ; preds = %bb.at
  %i.hi = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cerr, ptr noundef nonnull @.str.9, i64 noundef 35)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit184 unwind label %.loopexit.split-lp ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit184: ; preds = %bb.au
  %i.hj = load ptr, ptr @_ZSt4cerr, align 8, !tbaa !29
  %i.hk = getelementptr i8, ptr %i.hj, i64 -24
  %i.hl = load i64, ptr %i.hk, align 8
  %i.hm = getelementptr inbounds i8, ptr @_ZSt4cerr, i64 %i.hl
  %i.hn = getelementptr inbounds nuw i8, ptr %i.hm, i64 240
  %i.ho = load ptr, ptr %i.hn, align 8, !tbaa !31 ; 5 uses
  %.not.i.i.i226 = icmp eq ptr %i.ho, null
  br i1 %.not.i.i.i226, label %.invoke, label %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i227

_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i227: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit184
  %i.hp = getelementptr inbounds nuw i8, ptr %i.ho, i64 56
  %i.hq = load i8, ptr %i.hp, align 8, !tbaa !47
  %.not.i1.i.i228 = icmp eq i8 %i.hq, 0
  br i1 %.not.i1.i.i228, label %bb.av, label %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i.invoke.sink.split

bb.av:                                            ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i227
  invoke void @_ZNKSt5ctypeIcE13_M_widen_initEv(ptr noundef nonnull align 8 dereferenceable(570) %i.ho)
          to label %.noexc222.invoke.a unwind label %.loopexit.split-lp

bb.aw:                                            ; preds = %bb.at
  %i.hr = load i64, ptr %i.d, align 8, !tbaa !13  ; 2 uses
  %i.hs = icmp eq i64 %i.hr, 0
  br i1 %i.hs, label %.thread, label %bb.ax

bb.ax:                                            ; preds = %bb.aw
  %i.ht = load ptr, ptr %5, align 8, !tbaa !18
  %i.hu = load i8, ptr %i.ht, align 1, !tbaa !16
  %i.hv = sext i8 %i.hu to i32
  %isdigittmp = add nsw i32 %i.hv, -48            ; 2 uses
  %isdigit = icmp ult i32 %isdigittmp, 10
  %i.hw = icmp eq i64 %i.hr, 1
  %or.cond = and i1 %i.hw, %isdigit
  br i1 %or.cond, label %.thread, label %bb.bc

.thread:                                          ; preds = %bb.ax, %bb.aw
  %i.hx = phi i32 [ 0, %bb.aw ], [ %isdigittmp, %bb.ax ] ; 2 uses
  %i.hy = invoke noundef zeroext i1 @_ZN2cv12VideoCapture4openEii(ptr noundef nonnull align 8 dereferenceable(25) %2, i32 noundef %i.hx, i32 noundef 0)
          to label %bb.ay unwind label %bb.bb

bb.ay:                                            ; preds = %.thread
  br i1 %i.hy, label %_ZNSolsEPFRSoS_E.exit192, label %bb.az

bb.az:                                            ; preds = %bb.ay
  %i.hz = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, ptr noundef nonnull @.str.10, i64 noundef 21)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit188.a unwind label %bb.bb ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit188.a: ; preds = %bb.az
  %i.ia = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, i32 noundef %i.hx)
          to label %bb.ba unwind label %bb.bb     ; 2 uses

bb.ba:                                            ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit188.a
  %i.ib = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.ia, ptr noundef nonnull @.str.11, i64 noundef 12)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit190 unwind label %bb.bb ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit190: ; preds = %bb.ba
  %i.ic = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_(ptr noundef nonnull align 8 dereferenceable(8) %i.ia)
          to label %_ZNSolsEPFRSoS_E.exit192 unwind label %bb.bb, !inline_history !54 ; 0 uses

bb.bb:                                            ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit190, %bb.ba, %bb.az, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit188.a, %.thread
  %i.id = landingpad { ptr, i32 }
          cleanup
  br label %bb.cc

bb.bc:                                            ; preds = %bb.ax
  call void @llvm.lifetime.start.p0(ptr nonnull %21) #17
  invoke void @_ZN2cv7samples14findFileOrKeepERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEb(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %21, ptr noundef nonnull align 8 dereferenceable(32) %5, i1 noundef zeroext false)
          to label %bb.bd unwind label %bb.bg

bb.bd:                                            ; preds = %bb.bc
  %i.ie = call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull align 8 dereferenceable(32) %21) #17 ; 0 uses
  %i.if = load ptr, ptr %21, align 8, !tbaa !18   ; 2 uses
  %i.ig = getelementptr inbounds nuw i8, ptr %21, i64 16 ; 2 uses
  %i.ih = icmp eq ptr %i.if, %i.ig
  br i1 %i.ih, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit195, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i193

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i193: ; preds = %bb.bd
  %i.ii = load i64, ptr %i.ig, align 8, !tbaa !16
  %i.ij = add i64 %i.ii, 1
  call void @_ZdlPvm(ptr noundef %i.if, i64 noundef %i.ij) #18
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit195

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit195: ; preds = %bb.bd, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i193
  call void @llvm.lifetime.end.p0(ptr nonnull %21) #17
  %i.ik = invoke noundef zeroext i1 @_ZN2cv12VideoCapture4openERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEi(ptr noundef nonnull align 8 dereferenceable(25) %2, ptr noundef nonnull align 8 dereferenceable(32) %5, i32 noundef 0)
          to label %bb.be unwind label %.loopexit.split-lp

bb.be:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit195
  br i1 %i.ik, label %_ZNSolsEPFRSoS_E.exit192, label %bb.bf

bb.bf:                                            ; preds = %bb.be
  %i.il = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, ptr noundef nonnull @.str.12, i64 noundef 15)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit197 unwind label %.loopexit.split-lp ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit197: ; preds = %bb.bf
  %i.im = load ptr, ptr %5, align 8, !tbaa !18
  %i.in = load i64, ptr %i.d, align 8, !tbaa !13
  %i.io = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, ptr noundef %i.im, i64 noundef %i.in)
          to label %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit unwind label %.loopexit.split-lp

_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit197
  %i.ip = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_(ptr noundef nonnull align 8 dereferenceable(8) %i.io)
          to label %_ZNSolsEPFRSoS_E.exit192 unwind label %.loopexit.split-lp, !inline_history !54 ; 0 uses

bb.bg:                                            ; preds = %bb.bc
  %i.iq = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %21) #17
  br label %bb.cc

_ZNSolsEPFRSoS_E.exit192:                         ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit190, %bb.ay, %bb.be
  %i.ir = invoke noundef zeroext i1 @_ZNK2cv12VideoCapture8isOpenedEv(ptr noundef nonnull align 8 dereferenceable(25) %2)
          to label %bb.bh unwind label %.loopexit.split-lp

bb.bh:                                            ; preds = %_ZNSolsEPFRSoS_E.exit192
  br i1 %i.ir, label %bb.bi, label %bb.ca

bb.bi:                                            ; preds = %bb.bh
  %i.is = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, ptr noundef nonnull @.str.13, i64 noundef 36)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit202 unwind label %.loopexit.split-lp ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit202: ; preds = %bb.bi
  %i.it = load ptr, ptr @_ZSt4cout, align 8, !tbaa !29
  %i.iu = getelementptr i8, ptr %i.it, i64 -24
  %i.iv = load i64, ptr %i.iu, align 8
  %i.iw = getelementptr inbounds i8, ptr @_ZSt4cout, i64 %i.iv
  %i.ix = getelementptr inbounds nuw i8, ptr %i.iw, i64 240
  %i.iy = load ptr, ptr %i.ix, align 8, !tbaa !31 ; 6 uses
  %.not.i.i.i237 = icmp eq ptr %i.iy, null
  br i1 %.not.i.i.i237, label %.invoke, label %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i238

_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i238: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit202
  %i.iz = getelementptr inbounds nuw i8, ptr %i.iy, i64 56
  %i.ja = load i8, ptr %i.iz, align 8, !tbaa !47
  %.not.i1.i.i239 = icmp eq i8 %i.ja, 0
  br i1 %.not.i1.i.i239, label %bb.bk, label %bb.bj

bb.bj:                                            ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i238
  %i.jb = getelementptr inbounds nuw i8, ptr %i.iy, i64 67
  %i.jc = load i8, ptr %i.jb, align 1, !tbaa !16
  br label %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i240

bb.bk:                                            ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i238
  invoke void @_ZNKSt5ctypeIcE13_M_widen_initEv(ptr noundef nonnull align 8 dereferenceable(570) %i.iy)
          to label %.noexc243.a unwind label %.loopexit.split-lp

.noexc243.a:                                      ; preds = %bb.bk
  %i.jd = load ptr, ptr %i.iy, align 8, !tbaa !29
  %i.je = getelementptr inbounds nuw i8, ptr %i.jd, i64 48
  %i.jf = load ptr, ptr %i.je, align 8
  %i.jg = invoke noundef signext i8 %i.jf(ptr noundef nonnull align 8 dereferenceable(570) %i.iy, i8 noundef signext 10)
          to label %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i240 unwind label %.loopexit.split-lp, !inline_history !53

_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i240: ; preds = %.noexc243.a, %bb.bj
  %.0.i.i.i241 = phi i8 [ %i.jc, %bb.bj ], [ %i.jg, %.noexc243.a ]
  %i.jh = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, i8 noundef signext %.0.i.i.i241)
          to label %.noexc245 unwind label %.loopexit.split-lp

.noexc245:                                        ; preds = %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i240
  %i.ji = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8) %i.jh)
          to label %_ZNSolsEPFRSoS_E.exit204.a unwind label %.loopexit.split-lp ; 0 uses

_ZNSolsEPFRSoS_E.exit204.a:                       ; preds = %.noexc245
  %i.jj = load ptr, ptr @_ZSt4cout, align 8, !tbaa !29
  %i.jk = getelementptr i8, ptr %i.jj, i64 -24
  %i.jl = load i64, ptr %i.jk, align 8
  %i.jm = getelementptr inbounds i8, ptr @_ZSt4cout, i64 %i.jl
  %i.jn = getelementptr inbounds nuw i8, ptr %i.jm, i64 240
  %i.jo = load ptr, ptr %i.jn, align 8, !tbaa !31 ; 6 uses
  %.not.i.i.i248 = icmp eq ptr %i.jo, null
  br i1 %.not.i.i.i248, label %.invoke, label %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i249

_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i249: ; preds = %_ZNSolsEPFRSoS_E.exit204.a
  %i.jp = getelementptr inbounds nuw i8, ptr %i.jo, i64 56
  %i.jq = load i8, ptr %i.jp, align 8, !tbaa !47
  %.not.i1.i.i250 = icmp eq i8 %i.jq, 0
  br i1 %.not.i1.i.i250, label %bb.bm, label %bb.bl

bb.bl:                                            ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i249
  %i.jr = getelementptr inbounds nuw i8, ptr %i.jo, i64 67
  %i.js = load i8, ptr %i.jr, align 1, !tbaa !16
  br label %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i251

bb.bm:                                            ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i249
  invoke void @_ZNKSt5ctypeIcE13_M_widen_initEv(ptr noundef nonnull align 8 dereferenceable(570) %i.jo)
          to label %.noexc254.a unwind label %.loopexit.split-lp

.noexc254.a:                                      ; preds = %bb.bm
  %i.jt = load ptr, ptr %i.jo, align 8, !tbaa !29
  %i.ju = getelementptr inbounds nuw i8, ptr %i.jt, i64 48
  %i.jv = load ptr, ptr %i.ju, align 8
  %i.jw = invoke noundef signext i8 %i.jv(ptr noundef nonnull align 8 dereferenceable(570) %i.jo, i8 noundef signext 10)
          to label %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i251 unwind label %.loopexit.split-lp, !inline_history !53

_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i251: ; preds = %.noexc254.a, %bb.bl
  %.0.i.i.i252 = phi i8 [ %i.js, %bb.bl ], [ %i.jw, %.noexc254.a ]
  %i.jx = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, i8 noundef signext %.0.i.i.i252)
          to label %.noexc256 unwind label %.loopexit.split-lp

.noexc256:                                        ; preds = %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i251
  %i.jy = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8) %i.jx)
          to label %_ZNSolsEPFRSoS_E.exit206 unwind label %.loopexit.split-lp ; 4 uses

_ZNSolsEPFRSoS_E.exit206:                         ; preds = %.noexc256
  %i.jz = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.jy, ptr noundef nonnull @.str.14, i64 noundef 78)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit208 unwind label %.loopexit.split-lp ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit208: ; preds = %_ZNSolsEPFRSoS_E.exit206
  %i.ka = load ptr, ptr %i.jy, align 8, !tbaa !29
  %i.kb = getelementptr i8, ptr %i.ka, i64 -24
  %i.kc = load i64, ptr %i.kb, align 8
  %i.kd = getelementptr inbounds i8, ptr %i.jy, i64 %i.kc
  %i.ke = getelementptr inbounds nuw i8, ptr %i.kd, i64 240
  %i.kf = load ptr, ptr %i.ke, align 8, !tbaa !31 ; 6 uses
  %.not.i.i.i259 = icmp eq ptr %i.kf, null
  br i1 %.not.i.i.i259, label %.invoke, label %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i260

_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i260: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit208
  %i.kg = getelementptr inbounds nuw i8, ptr %i.kf, i64 56
  %i.kh = load i8, ptr %i.kg, align 8, !tbaa !47
  %.not.i1.i.i261 = icmp eq i8 %i.kh, 0
  br i1 %.not.i1.i.i261, label %bb.bo, label %bb.bn

bb.bn:                                            ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i260
  %i.ki = getelementptr inbounds nuw i8, ptr %i.kf, i64 67
  %i.kj = load i8, ptr %i.ki, align 1, !tbaa !16
  br label %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i262

bb.bo:                                            ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i260
  invoke void @_ZNKSt5ctypeIcE13_M_widen_initEv(ptr noundef nonnull align 8 dereferenceable(570) %i.kf)
          to label %.noexc265.a unwind label %.loopexit.split-lp

.noexc265.a:                                      ; preds = %bb.bo
  %i.kk = load ptr, ptr %i.kf, align 8, !tbaa !29
  %i.kl = getelementptr inbounds nuw i8, ptr %i.kk, i64 48
  %i.km = load ptr, ptr %i.kl, align 8
  %i.kn = invoke noundef signext i8 %i.km(ptr noundef nonnull align 8 dereferenceable(570) %i.kf, i8 noundef signext 10)
          to label %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i262 unwind label %.loopexit.split-lp, !inline_history !53

_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i262: ; preds = %.noexc265.a, %bb.bn
  %.0.i.i.i263 = phi i8 [ %i.kj, %bb.bn ], [ %i.kn, %.noexc265.a ]
  %i.ko = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %i.jy, i8 noundef signext %.0.i.i.i263)
          to label %.noexc267 unwind label %.loopexit.split-lp

.noexc267:                                        ; preds = %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i262
  %i.kp = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8) %i.ko)
          to label %_ZNSolsEPFRSoS_E.exit210 unwind label %.loopexit.split-lp ; 0 uses

_ZNSolsEPFRSoS_E.exit210:                         ; preds = %.noexc267, %bb.bu
  %i.kq = invoke noundef nonnull align 8 dereferenceable(25) ptr @_ZN2cv12VideoCapturersERNS_3MatE(ptr noundef nonnull align 8 dereferenceable(25) %2, ptr noundef nonnull align 8 dereferenceable(208) %3)
          to label %bb.bp unwind label %.loopexit ; 0 uses

bb.bp:                                            ; preds = %_ZNSolsEPFRSoS_E.exit210
  %i.kr = invoke noundef zeroext i1 @_ZNK2cv3Mat5emptyEv(ptr noundef nonnull align 8 dereferenceable(208) %3)
          to label %bb.bq unwind label %.loopexit

bb.bq:                                            ; preds = %bb.bp
  br i1 %i.kr, label %.loopexit288, label %bb.br

bb.br:                                            ; preds = %bb.bq
  call void @llvm.lifetime.start.p0(ptr nonnull %22) #17
  invoke void @_ZNK2cv3Mat5cloneEv(ptr dead_on_unwind nonnull writable sret(%"class.cv::Mat") align 8 %22, ptr noundef nonnull align 8 dereferenceable(208) %3)
          to label %bb.bs unwind label %bb.bv

bb.bs:                                            ; preds = %bb.br
  invoke void @_Z13detectAndDrawRN2cv3MatERNS_17CascadeClassifierES3_db(ptr noundef nonnull align 8 dereferenceable(208) %22, ptr noundef nonnull align 8 dereferenceable(16) %6, ptr noundef nonnull align 8 dereferenceable(16) %7, double noundef %.024, i1 noundef zeroext %i.do)
          to label %bb.bt unwind label %bb.bw

bb.bt:                                            ; preds = %bb.bs
  %i.ks = invoke noundef i32 @_ZN2cv7waitKeyEi(i32 noundef 10)
          to label %bb.bu unwind label %bb.bx     ; 2 uses

bb.bu:                                            ; preds = %bb.bt
  %sext.mask = and i32 %i.ks, 255
  %i.kt = icmp eq i32 %sext.mask, 27
  %i.ku = and i32 %i.ks, 223
  %i.kv = icmp eq i32 %i.ku, 81
  %or.cond5 = or i1 %i.kt, %i.kv
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %22) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %22) #17
  br i1 %or.cond5, label %.loopexit288, label %_ZNSolsEPFRSoS_E.exit210

bb.bv:                                            ; preds = %bb.br
  %i.kw = landingpad { ptr, i32 }
          cleanup
  br label %bb.bz

bb.bw:                                            ; preds = %bb.bs
  %i.kx = landingpad { ptr, i32 }
          cleanup
  br label %bb.by

bb.bx:                                            ; preds = %bb.bt
  %i.ky = landingpad { ptr, i32 }
          cleanup
  br label %bb.by

bb.by:                                            ; preds = %bb.bx, %bb.bw
  %.pn59 = phi { ptr, i32 } [ %i.ky, %bb.bx ], [ %i.kx, %bb.bw ]
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %22) #17
  br label %bb.bz

bb.bz:                                            ; preds = %bb.by, %bb.bv
  %.pn59.pn = phi { ptr, i32 } [ %.pn59, %bb.by ], [ %i.kw, %bb.bv ]
  call void @llvm.lifetime.end.p0(ptr nonnull %22) #17
  br label %bb.cc

bb.ca:                                            ; preds = %bb.bh
  %i.kz = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cerr, ptr noundef nonnull @.str.15, i64 noundef 33)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit212 unwind label %.loopexit.split-lp ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit212: ; preds = %bb.ca
  %i.la = load ptr, ptr @_ZSt4cerr, align 8, !tbaa !29
  %i.lb = getelementptr i8, ptr %i.la, i64 -24
  %i.lc = load i64, ptr %i.lb, align 8
  %i.ld = getelementptr inbounds i8, ptr @_ZSt4cerr, i64 %i.lc
  %i.le = getelementptr inbounds nuw i8, ptr %i.ld, i64 240
  %i.lf = load ptr, ptr %i.le, align 8, !tbaa !31 ; 5 uses
  %.not.i.i.i270 = icmp eq ptr %i.lf, null
  br i1 %.not.i.i.i270, label %.invoke, label %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i271

_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i271: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit212
  %i.lg = getelementptr inbounds nuw i8, ptr %i.lf, i64 56
  %i.lh = load i8, ptr %i.lg, align 8, !tbaa !47
  %.not.i1.i.i272 = icmp eq i8 %i.lh, 0
  br i1 %.not.i1.i.i272, label %bb.cb, label %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i.invoke.sink.split

bb.cb:                                            ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i271
  invoke void @_ZNKSt5ctypeIcE13_M_widen_initEv(ptr noundef nonnull align 8 dereferenceable(570) %i.lf)
          to label %.noexc222.invoke.a unwind label %.loopexit.split-lp

.loopexit288:                                     ; preds = %bb.bu, %bb.bq, %_ZNSolsEPFRSoS_E.exit.invoke, %bb.aj, %bb.f
  %.042 = phi i32 [ 0, %bb.f ], [ 1, %bb.aj ], [ -1, %_ZNSolsEPFRSoS_E.exit.invoke ], [ 0, %bb.bq ], [ 0, %bb.bu ]
  call void @_ZN2cv17CommandLineParserD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %8) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #17
  call void @_ZN2cv17CascadeClassifierD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %7) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #17
  call void @_ZN2cv17CascadeClassifierD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %6) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #17
  %i.li = load ptr, ptr %5, align 8, !tbaa !18    ; 2 uses
  %i.lj = icmp eq ptr %i.li, %i.c
  br i1 %i.lj, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit217, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i215

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i215: ; preds = %.loopexit288
  %i.lk = load i64, ptr %i.c, align 8, !tbaa !16
  %i.ll = add i64 %i.lk, 1
  call void @_ZdlPvm(ptr noundef %i.li, i64 noundef %i.ll) #18
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit217

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit217: ; preds = %.loopexit288, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i215
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #17
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %4) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #17
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %3) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #17
  call void @_ZN2cv12VideoCaptureD1Ev(ptr noundef nonnull align 8 dead_on_return(25) dereferenceable(25) %2) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #17
  ret i32 %.042

bb.cc:                                            ; preds = %.loopexit, %.loopexit.split-lp, %bb.bz, %bb.bg, %bb.bb, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit180, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit177, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit174, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit171, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit165, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit80
  %.pn62 = phi { ptr, i32 } [ %i.ae, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit80 ], [ %.pn59.pn, %bb.bz ], [ %i.id, %bb.bb ], [ %i.iq, %bb.bg ], [ %i.gj, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit180 ], [ %i.dy, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit177 ], [ %i.ga, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit174 ], [ %.pn50, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit171 ], [ %.pn47, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit165 ], [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ]
  call void @_ZN2cv17CommandLineParserD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %8) #17
  br label %bb.cd

bb.cd:                                            ; preds = %bb.cc, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit77
  %.pn62.pn = phi { ptr, i32 } [ %.pn62, %bb.cc ], [ %.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit77 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #17
  call void @_ZN2cv17CascadeClassifierD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %7) #17
  br label %bb.ce

bb.ce:                                            ; preds = %bb.cd, %bb.i
  %.pn62.pn.pn = phi { ptr, i32 } [ %.pn62.pn, %bb.cd ], [ %i.x, %bb.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #17
  call void @_ZN2cv17CascadeClassifierD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %6) #17
  br label %bb.cf

bb.cf:                                            ; preds = %bb.ce, %bb.h
  %.pn62.pn.pn.pn = phi { ptr, i32 } [ %.pn62.pn.pn, %bb.ce ], [ %i.w, %bb.h ]
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #17
  br label %bb.cg

bb.cg:                                            ; preds = %bb.cf, %bb.g
  %.pn62.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn62.pn.pn.pn, %bb.cf ], [ %i.v, %bb.g ]
  %i.lm = load ptr, ptr %5, align 8, !tbaa !18    ; 2 uses
  %i.ln = icmp eq ptr %i.lm, %i.c
  br i1 %i.ln, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit220, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i218

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i218: ; preds = %bb.cg
  %i.lo = load i64, ptr %i.c, align 8, !tbaa !16
  %i.lp = add i64 %i.lo, 1
  call void @_ZdlPvm(ptr noundef %i.lm, i64 noundef %i.lp) #18
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit220

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit220: ; preds = %bb.cg, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i218
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #17
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %4) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #17
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %3) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #17
  call void @_ZN2cv12VideoCaptureD1Ev(ptr noundef nonnull align 8 dead_on_return(25) dereferenceable(25) %2) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #17
  resume { ptr, i32 } %.pn62.pn.pn.pn.pn
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #3

declare void @_ZN2cv12VideoCaptureC1Ev(ptr noundef nonnull align 8 dereferenceable(25)) unnamed_addr #4

; Function Attrs: nounwind
declare void @_ZN2cv3MatC1Ev(ptr noundef nonnull align 8 dereferenceable(208)) unnamed_addr #5

; Function Attrs: mustprogress norecurse uwtable
define internal fastcc void @_ZL4helpPPKc(ptr nofree noundef readonly captures(none) %0) unnamed_addr #2 {
bb.a:
  %i.a = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, ptr noundef nonnull @.str.17, i64 noundef 54) ; 0 uses
  %i.b = load ptr, ptr %0, align 8, !tbaa !55     ; 3 uses
  %.not.i = icmp eq ptr %i.b, null
  br i1 %.not.i, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.c = load ptr, ptr @_ZSt4cout, align 8, !tbaa !29
  %i.d = getelementptr i8, ptr %i.c, i64 -24
  %i.e = load i64, ptr %i.d, align 8
  %i.f = getelementptr inbounds i8, ptr @_ZSt4cout, i64 %i.e ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 32
  %i.h = load i32, ptr %i.g, align 8, !tbaa !56
  %i.i = or i32 %i.h, 1
  tail call void @_ZNSt9basic_iosIcSt11char_traitsIcEE5clearESt12_Ios_Iostate(ptr noundef nonnull align 8 dereferenceable(264) %i.f, i32 noundef %i.i)
  br label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit

bb.c:                                             ; preds = %bb.a
  %i.j = tail call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.b) #17
  %i.k = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, ptr noundef nonnull %i.b, i64 noundef %i.j) ; 0 uses
  br label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit: ; preds = %bb.b, %bb.c
  %i.l = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, ptr noundef nonnull @.str.18, i64 noundef 275) ; 0 uses
  %i.m = load ptr, ptr %0, align 8, !tbaa !55     ; 3 uses
  %.not.i2 = icmp eq ptr %i.m, null
  br i1 %.not.i2, label %bb.d, label %bb.e

bb.d:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit
  %i.n = load ptr, ptr @_ZSt4cout, align 8, !tbaa !29
  %i.o = getelementptr i8, ptr %i.n, i64 -24
  %i.p = load i64, ptr %i.o, align 8
  %i.q = getelementptr inbounds i8, ptr @_ZSt4cout, i64 %i.p ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 32
  %i.s = load i32, ptr %i.r, align 8, !tbaa !56
  %i.t = or i32 %i.s, 1
  tail call void @_ZNSt9basic_iosIcSt11char_traitsIcEE5clearESt12_Ios_Iostate(ptr noundef nonnull align 8 dereferenceable(264) %i.q, i32 noundef %i.t)
  br label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit3

bb.e:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit
  %i.u = tail call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.m) #17
  %i.v = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, ptr noundef nonnull %i.m, i64 noundef %i.u) ; 0 uses
  br label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit3

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit3: ; preds = %bb.d, %bb.e
  %i.w = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, ptr noundef nonnull @.str.19, i64 noundef 196) ; 0 uses
  %i.x = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, ptr noundef nonnull @.str.20, i64 noundef 5) ; 0 uses
  %i.y = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, ptr noundef nonnull @.str.21, i64 noundef 1) ; 0 uses
  %i.z = load ptr, ptr @_ZSt4cout, align 8, !tbaa !29
  %i.aa = getelementptr i8, ptr %i.z, i64 -24
  %i.ab = load i64, ptr %i.aa, align 8
  %i.ac = getelementptr inbounds i8, ptr @_ZSt4cout, i64 %i.ab
end_hunk_0

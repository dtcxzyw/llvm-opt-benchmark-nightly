Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/wireshark/original/data_source_tab?download=true
inline.NumInlined: 1659
inline.NumDeleted: 762
begin_hunk_0_@_ZN13DataSourceTab18handleSetOffsetEndEi:bb.a
  store <2 x ptr> %i.ct, ptr %11, align 16
  %i.cv = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 2 uses
  %i.cw = getelementptr inbounds nuw i8, ptr %11, i64 16 ; 2 uses
  %i.cx = load i64, ptr %i.cv, align 16
  %i.cy = load i64, ptr %i.cw, align 16
  store i64 %i.cy, ptr %i.cv, align 16
  store i64 %i.cx, ptr %i.cw, align 16
  %.not.i.i.i155 = icmp eq ptr %i.cu, null
  br i1 %.not.i.i.i155, label %_ZN7QStringD2Ev.exit158, label %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i156

_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i156:   ; preds = %_ZN13DataSourceTab2trEPKcS1_i.exit154
  %i.cz = atomicrmw sub ptr %i.cu, i32 1 acq_rel, align 4
  %.not.i.i157 = icmp eq i32 %i.cz, 1
  br i1 %.not.i.i157, label %bb.ah, label %_ZN7QStringD2Ev.exit158

bb.ah:                                            ; preds = %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i156
  %i.da = load ptr, ptr %11, align 16
  call void @_ZN10QArrayData10deallocateEPS_xx(ptr noundef %i.da, i64 noundef 2, i64 noundef 8) #26
  br label %_ZN7QStringD2Ev.exit158

_ZN7QStringD2Ev.exit158:                          ; preds = %_ZN13DataSourceTab2trEPKcS1_i.exit154, %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i156, %bb.ah
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #26
  br label %bb.aj

bb.ai:                                            ; preds = %bb.ag
  %i.db = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #26
  br label %bb.cf

bb.aj:                                            ; preds = %_ZN7QStringD2Ev.exit153, %_ZN7QStringD2Ev.exit158, %_ZN7QStringD2Ev.exit132
  %.049 = phi i32 [ %i.au, %_ZN7QStringD2Ev.exit132 ], [ %i.cb, %_ZN7QStringD2Ev.exit153 ], [ %i.cp, %_ZN7QStringD2Ev.exit158 ] ; 2 uses
  %.0 = phi i32 [ %i.aw, %_ZN7QStringD2Ev.exit132 ], [ %i.cd, %_ZN7QStringD2Ev.exit153 ], [ %i.cr, %_ZN7QStringD2Ev.exit158 ] ; 2 uses
  %i.dc = icmp slt i32 %.049, 0
  %i.dd = icmp slt i32 %.0, 1
  %or.cond3 = or i1 %i.dc, %i.dd
  br i1 %or.cond3, label %bb.ak, label %bb.an

bb.ak:                                            ; preds = %bb.aj
  %i.de = getelementptr i8, ptr %.069, i64 188
  %i.df = load i32, ptr %i.de, align 4
  %i.dg = getelementptr i8, ptr %.069, i64 192
  %i.dh = load i32, ptr %i.dg, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #26
  invoke void @_ZNK11QMetaObject2trEPKcS1_i(ptr dead_on_unwind nonnull writable sret(%class.QString) align 8 %12, ptr noundef nonnull align 8 dereferenceable_or_null(56) @_ZN13DataSourceTab16staticMetaObjectE, ptr noundef nonnull @.str.14, ptr noundef null, i32 noundef -1)
          to label %_ZN13DataSourceTab2trEPKcS1_i.exit159 unwind label %bb.am

_ZN13DataSourceTab2trEPKcS1_i.exit159:            ; preds = %bb.ak
  %i.di = load <2 x ptr>, ptr %12, align 16
  %i.dj = load <2 x ptr>, ptr %8, align 16
  %i.dk = load ptr, ptr %8, align 16              ; 2 uses
  store <2 x ptr> %i.di, ptr %8, align 16
  store <2 x ptr> %i.dj, ptr %12, align 16
  %i.dl = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 2 uses
  %i.dm = getelementptr inbounds nuw i8, ptr %12, i64 16 ; 2 uses
  %i.dn = load i64, ptr %i.dl, align 16
  %i.do = load i64, ptr %i.dm, align 16
  store i64 %i.do, ptr %i.dl, align 16
  store i64 %i.dn, ptr %i.dm, align 16
  %.not.i.i.i160 = icmp eq ptr %i.dk, null
  br i1 %.not.i.i.i160, label %_ZN7QStringD2Ev.exit163, label %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i161

_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i161:   ; preds = %_ZN13DataSourceTab2trEPKcS1_i.exit159
  %i.dp = atomicrmw sub ptr %i.dk, i32 1 acq_rel, align 4
  %.not.i.i162 = icmp eq i32 %i.dp, 1
  br i1 %.not.i.i162, label %bb.al, label %_ZN7QStringD2Ev.exit163

bb.al:                                            ; preds = %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i161
  %i.dq = load ptr, ptr %12, align 16
  call void @_ZN10QArrayData10deallocateEPS_xx(ptr noundef %i.dq, i64 noundef 2, i64 noundef 8) #26
  br label %_ZN7QStringD2Ev.exit163

_ZN7QStringD2Ev.exit163:                          ; preds = %_ZN13DataSourceTab2trEPKcS1_i.exit159, %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i161, %bb.al
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #26
  br label %bb.an

bb.am:                                            ; preds = %bb.ak
  %i.dr = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #26
  br label %bb.cf

bb.an:                                            ; preds = %bb.aj, %_ZN7QStringD2Ev.exit163
  %.150 = phi i32 [ %i.df, %_ZN7QStringD2Ev.exit163 ], [ %.049, %bb.aj ] ; 7 uses
  %.1 = phi i32 [ %i.dh, %_ZN7QStringD2Ev.exit163 ], [ %.0, %bb.aj ] ; 3 uses
  %i.ds = icmp sgt i32 %.150, -1
  %i.dt = icmp sgt i32 %.1, 0
  %or.cond5 = and i1 %i.ds, %i.dt
  br i1 %or.cond5, label %bb.ao, label %bb.bw

bb.ao:                                            ; preds = %bb.an
  %i.du = add nsw i32 %.150, -1
  %i.dv = add i32 %i.du, %.1                      ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #26
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #26
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #26
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #26
  invoke void @_ZNK11QMetaObject2trEPKcS1_i(ptr dead_on_unwind nonnull writable sret(%class.QString) align 8 %16, ptr noundef nonnull align 8 dereferenceable_or_null(56) @_ZN13DataSourceTab16staticMetaObjectE, ptr noundef nonnull @.str.16, ptr noundef null, i32 noundef -1)
          to label %_ZN13DataSourceTab2trEPKcS1_i.exit164 unwind label %bb.ba

_ZN13DataSourceTab2trEPKcS1_i.exit164:            ; preds = %bb.ao
  invoke void @_ZNK7QString3argERKS_i5QChar(ptr dead_on_unwind nonnull writable sret(%class.QString) align 8 %15, ptr noundef nonnull align 8 dereferenceable_or_null(24) %16, ptr noundef nonnull align 8 dereferenceable(24) %8, i32 noundef 0, i16 32)
          to label %bb.ap unwind label %bb.bb

bb.ap:                                            ; preds = %_ZN13DataSourceTab2trEPKcS1_i.exit164
  %i.dw = zext nneg i32 %.150 to i64
  invoke void @_ZNK7QString3argExii5QChar(ptr dead_on_unwind nonnull writable sret(%class.QString) align 8 %14, ptr noundef nonnull align 8 dereferenceable_or_null(24) %15, i64 noundef %i.dw, i32 noundef 0, i32 noundef 10, i16 32)
          to label %_ZNK7QString3argEiii5QChar.exit165 unwind label %bb.bc

_ZNK7QString3argEiii5QChar.exit165:               ; preds = %bb.ap
  %i.dx = zext nneg i32 %.1 to i64
  invoke void @_ZNK7QString3argExii5QChar(ptr dead_on_unwind nonnull writable sret(%class.QString) align 8 %13, ptr noundef nonnull align 8 dereferenceable_or_null(24) %14, i64 noundef %i.dx, i32 noundef 0, i32 noundef 10, i16 32)
          to label %_ZNK7QString3argEiii5QChar.exit166 unwind label %bb.bd

_ZNK7QString3argEiii5QChar.exit166:               ; preds = %_ZNK7QString3argEiii5QChar.exit165
  %i.dy = invoke noundef align 8 dereferenceable(24) ptr @_ZN7QString6appendERKS_(ptr noundef nonnull align 8 dereferenceable_or_null(24) %3, ptr noundef nonnull align 8 dereferenceable(24) %13)
          to label %bb.aq unwind label %bb.be     ; 0 uses

bb.aq:                                            ; preds = %_ZNK7QString3argEiii5QChar.exit166
  %i.dz = load ptr, ptr %13, align 8              ; 2 uses
  %.not.i.i.i167 = icmp eq ptr %i.dz, null
  br i1 %.not.i.i.i167, label %_ZN7QStringD2Ev.exit170, label %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i168

_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i168:   ; preds = %bb.aq
  %i.ea = atomicrmw sub ptr %i.dz, i32 1 acq_rel, align 4
  %.not.i.i169 = icmp eq i32 %i.ea, 1
  br i1 %.not.i.i169, label %bb.ar, label %_ZN7QStringD2Ev.exit170

bb.ar:                                            ; preds = %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i168
  %i.eb = load ptr, ptr %13, align 8
  call void @_ZN10QArrayData10deallocateEPS_xx(ptr noundef %i.eb, i64 noundef 2, i64 noundef 8) #26
  br label %_ZN7QStringD2Ev.exit170

_ZN7QStringD2Ev.exit170:                          ; preds = %bb.aq, %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i168, %bb.ar
  %i.ec = load ptr, ptr %14, align 8              ; 2 uses
  %.not.i.i.i171 = icmp eq ptr %i.ec, null
  br i1 %.not.i.i.i171, label %_ZN7QStringD2Ev.exit174, label %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i172

_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i172:   ; preds = %_ZN7QStringD2Ev.exit170
  %i.ed = atomicrmw sub ptr %i.ec, i32 1 acq_rel, align 4
  %.not.i.i173 = icmp eq i32 %i.ed, 1
  br i1 %.not.i.i173, label %bb.as, label %_ZN7QStringD2Ev.exit174

bb.as:                                            ; preds = %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i172
  %i.ee = load ptr, ptr %14, align 8
  call void @_ZN10QArrayData10deallocateEPS_xx(ptr noundef %i.ee, i64 noundef 2, i64 noundef 8) #26
  br label %_ZN7QStringD2Ev.exit174

_ZN7QStringD2Ev.exit174:                          ; preds = %_ZN7QStringD2Ev.exit170, %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i172, %bb.as
  %i.ef = load ptr, ptr %15, align 8              ; 2 uses
  %.not.i.i.i175 = icmp eq ptr %i.ef, null
  br i1 %.not.i.i.i175, label %_ZN7QStringD2Ev.exit178, label %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i176

_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i176:   ; preds = %_ZN7QStringD2Ev.exit174
  %i.eg = atomicrmw sub ptr %i.ef, i32 1 acq_rel, align 4
  %.not.i.i177 = icmp eq i32 %i.eg, 1
  br i1 %.not.i.i177, label %bb.at, label %_ZN7QStringD2Ev.exit178

bb.at:                                            ; preds = %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i176
  %i.eh = load ptr, ptr %15, align 8
  call void @_ZN10QArrayData10deallocateEPS_xx(ptr noundef %i.eh, i64 noundef 2, i64 noundef 8) #26
  br label %_ZN7QStringD2Ev.exit178

_ZN7QStringD2Ev.exit178:                          ; preds = %_ZN7QStringD2Ev.exit174, %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i176, %bb.at
  %i.ei = load ptr, ptr %16, align 8              ; 2 uses
  %.not.i.i.i179 = icmp eq ptr %i.ei, null
  br i1 %.not.i.i.i179, label %_ZN7QStringD2Ev.exit182, label %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i180

_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i180:   ; preds = %_ZN7QStringD2Ev.exit178
  %i.ej = atomicrmw sub ptr %i.ei, i32 1 acq_rel, align 4
  %.not.i.i181 = icmp eq i32 %i.ej, 1
  br i1 %.not.i.i181, label %bb.au, label %_ZN7QStringD2Ev.exit182

bb.au:                                            ; preds = %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i180
  %i.ek = load ptr, ptr %16, align 8
  call void @_ZN10QArrayData10deallocateEPS_xx(ptr noundef %i.ek, i64 noundef 2, i64 noundef 8) #26
  br label %_ZN7QStringD2Ev.exit182

_ZN7QStringD2Ev.exit182:                          ; preds = %_ZN7QStringD2Ev.exit178, %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i180, %bb.au
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #26
  %.not83 = icmp samesign ult i32 %i.h, %.150
  %.not84 = icmp sgt i32 %i.h, %i.dv
  %or.cond103 = select i1 %.not83, i1 true, i1 %.not84
  %.not85 = icmp samesign ult i32 %1, %.150
  %or.cond104 = or i1 %.not85, %or.cond103
  %.not86 = icmp sgt i32 %1, %i.dv
  %or.cond105 = select i1 %or.cond104, i1 true, i1 %.not86
  br i1 %or.cond105, label %bb.bq, label %bb.av

bb.av:                                            ; preds = %_ZN7QStringD2Ev.exit182
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #26
  call void @llvm.lifetime.start.p0(ptr nonnull %18) #26
  call void @llvm.lifetime.start.p0(ptr nonnull %19) #26
  invoke void @_ZNK11QMetaObject2trEPKcS1_i(ptr dead_on_unwind nonnull writable sret(%class.QString) align 8 %19, ptr noundef nonnull align 8 dereferenceable_or_null(56) @_ZN13DataSourceTab16staticMetaObjectE, ptr noundef nonnull @.str.17, ptr noundef null, i32 noundef -1)
          to label %_ZN13DataSourceTab2trEPKcS1_i.exit183 unwind label %bb.bj

_ZN13DataSourceTab2trEPKcS1_i.exit183:            ; preds = %bb.av
  %i.el = sub nuw nsw i32 %i.h, %.150
  %22 = zext nneg i32 %i.el to i64
  invoke void @_ZNK7QString3argExii5QChar(ptr dead_on_unwind nonnull writable sret(%class.QString) align 8 %18, ptr noundef nonnull align 8 dereferenceable_or_null(24) %19, i64 noundef %22, i32 noundef 0, i32 noundef 10, i16 32)
          to label %_ZNK7QString3argEiii5QChar.exit184 unwind label %bb.bk

_ZNK7QString3argEiii5QChar.exit184:               ; preds = %_ZN13DataSourceTab2trEPKcS1_i.exit183
  %i.em = sub nuw nsw i32 %1, %.150
  %23 = zext nneg i32 %i.em to i64
  invoke void @_ZNK7QString3argExii5QChar(ptr dead_on_unwind nonnull writable sret(%class.QString) align 8 %17, ptr noundef nonnull align 8 dereferenceable_or_null(24) %18, i64 noundef %23, i32 noundef 0, i32 noundef 10, i16 32)
          to label %_ZNK7QString3argEiii5QChar.exit185 unwind label %bb.bl

_ZNK7QString3argEiii5QChar.exit185:               ; preds = %_ZNK7QString3argEiii5QChar.exit184
  %i.en = invoke noundef align 8 dereferenceable(24) ptr @_ZN7QString6appendERKS_(ptr noundef nonnull align 8 dereferenceable_or_null(24) %3, ptr noundef nonnull align 8 dereferenceable(24) %17)
          to label %bb.aw unwind label %bb.bm     ; 0 uses

bb.aw:                                            ; preds = %_ZNK7QString3argEiii5QChar.exit185
  %i.eo = load ptr, ptr %17, align 8              ; 2 uses
  %.not.i.i.i186 = icmp eq ptr %i.eo, null
  br i1 %.not.i.i.i186, label %_ZN7QStringD2Ev.exit189, label %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i187

_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i187:   ; preds = %bb.aw
  %i.ep = atomicrmw sub ptr %i.eo, i32 1 acq_rel, align 4
  %.not.i.i188 = icmp eq i32 %i.ep, 1
  br i1 %.not.i.i188, label %bb.ax, label %_ZN7QStringD2Ev.exit189

bb.ax:                                            ; preds = %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i187
  %i.eq = load ptr, ptr %17, align 8
  call void @_ZN10QArrayData10deallocateEPS_xx(ptr noundef %i.eq, i64 noundef 2, i64 noundef 8) #26
  br label %_ZN7QStringD2Ev.exit189

_ZN7QStringD2Ev.exit189:                          ; preds = %bb.aw, %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i187, %bb.ax
  %i.er = load ptr, ptr %18, align 8              ; 2 uses
  %.not.i.i.i190 = icmp eq ptr %i.er, null
  br i1 %.not.i.i.i190, label %_ZN7QStringD2Ev.exit193, label %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i191

_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i191:   ; preds = %_ZN7QStringD2Ev.exit189
  %i.es = atomicrmw sub ptr %i.er, i32 1 acq_rel, align 4
  %.not.i.i192 = icmp eq i32 %i.es, 1
  br i1 %.not.i.i192, label %bb.ay, label %_ZN7QStringD2Ev.exit193

bb.ay:                                            ; preds = %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i191
  %i.et = load ptr, ptr %18, align 8
  call void @_ZN10QArrayData10deallocateEPS_xx(ptr noundef %i.et, i64 noundef 2, i64 noundef 8) #26
  br label %_ZN7QStringD2Ev.exit193

_ZN7QStringD2Ev.exit193:                          ; preds = %_ZN7QStringD2Ev.exit189, %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i191, %bb.ay
  %i.eu = load ptr, ptr %19, align 8              ; 2 uses
  %.not.i.i.i194 = icmp eq ptr %i.eu, null
  br i1 %.not.i.i.i194, label %_ZN7QStringD2Ev.exit197, label %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i195

_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i195:   ; preds = %_ZN7QStringD2Ev.exit193
  %i.ev = atomicrmw sub ptr %i.eu, i32 1 acq_rel, align 4
  %.not.i.i196 = icmp eq i32 %i.ev, 1
  br i1 %.not.i.i196, label %bb.az, label %_ZN7QStringD2Ev.exit197

bb.az:                                            ; preds = %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i195
  %i.ew = load ptr, ptr %19, align 8
  call void @_ZN10QArrayData10deallocateEPS_xx(ptr noundef %i.ew, i64 noundef 2, i64 noundef 8) #26
  br label %_ZN7QStringD2Ev.exit197

_ZN7QStringD2Ev.exit197:                          ; preds = %_ZN7QStringD2Ev.exit193, %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i195, %bb.az
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #26
  br label %bb.bw

bb.ba:                                            ; preds = %bb.ao
  %i.ex = landingpad { ptr, i32 }
          cleanup
  br label %_ZN7QStringD2Ev.exit213

bb.bb:                                            ; preds = %_ZN13DataSourceTab2trEPKcS1_i.exit164
  %i.ey = landingpad { ptr, i32 }
          cleanup
  br label %_ZN7QStringD2Ev.exit209

bb.bc:                                            ; preds = %bb.ap
  %i.ez = landingpad { ptr, i32 }
          cleanup
  br label %_ZN7QStringD2Ev.exit205

bb.bd:                                            ; preds = %_ZNK7QString3argEiii5QChar.exit165
  %i.fa = landingpad { ptr, i32 }
          cleanup
  br label %_ZN7QStringD2Ev.exit201

bb.be:                                            ; preds = %_ZNK7QString3argEiii5QChar.exit166
  %i.fb = landingpad { ptr, i32 }
          cleanup                                 ; 3 uses
  %i.fc = load ptr, ptr %13, align 8              ; 2 uses
  %.not.i.i.i198 = icmp eq ptr %i.fc, null
  br i1 %.not.i.i.i198, label %_ZN7QStringD2Ev.exit201, label %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i199

_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i199:   ; preds = %bb.be
  %i.fd = atomicrmw sub ptr %i.fc, i32 1 acq_rel, align 4
  %.not.i.i200 = icmp eq i32 %i.fd, 1
  br i1 %.not.i.i200, label %bb.bf, label %_ZN7QStringD2Ev.exit201

bb.bf:                                            ; preds = %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i199
  %i.fe = load ptr, ptr %13, align 8
  call void @_ZN10QArrayData10deallocateEPS_xx(ptr noundef %i.fe, i64 noundef 2, i64 noundef 8) #26
  br label %_ZN7QStringD2Ev.exit201

_ZN7QStringD2Ev.exit201:                          ; preds = %bb.bf, %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i199, %bb.be, %bb.bd
  %.pn78 = phi { ptr, i32 } [ %i.fa, %bb.bd ], [ %i.fb, %bb.be ], [ %i.fb, %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i199 ], [ %i.fb, %bb.bf ] ; 3 uses
  %i.ff = load ptr, ptr %14, align 8              ; 2 uses
  %.not.i.i.i202 = icmp eq ptr %i.ff, null
  br i1 %.not.i.i.i202, label %_ZN7QStringD2Ev.exit205, label %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i203

_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i203:   ; preds = %_ZN7QStringD2Ev.exit201
  %i.fg = atomicrmw sub ptr %i.ff, i32 1 acq_rel, align 4
  %.not.i.i204 = icmp eq i32 %i.fg, 1
  br i1 %.not.i.i204, label %bb.bg, label %_ZN7QStringD2Ev.exit205

bb.bg:                                            ; preds = %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i203
  %i.fh = load ptr, ptr %14, align 8
  call void @_ZN10QArrayData10deallocateEPS_xx(ptr noundef %i.fh, i64 noundef 2, i64 noundef 8) #26
  br label %_ZN7QStringD2Ev.exit205

_ZN7QStringD2Ev.exit205:                          ; preds = %bb.bg, %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i203, %_ZN7QStringD2Ev.exit201, %bb.bc
  %.pn78.pn = phi { ptr, i32 } [ %i.ez, %bb.bc ], [ %.pn78, %_ZN7QStringD2Ev.exit201 ], [ %.pn78, %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i203 ], [ %.pn78, %bb.bg ] ; 3 uses
  %i.fi = load ptr, ptr %15, align 8              ; 2 uses
  %.not.i.i.i206 = icmp eq ptr %i.fi, null
  br i1 %.not.i.i.i206, label %_ZN7QStringD2Ev.exit209, label %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i207

_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i207:   ; preds = %_ZN7QStringD2Ev.exit205
  %i.fj = atomicrmw sub ptr %i.fi, i32 1 acq_rel, align 4
  %.not.i.i208 = icmp eq i32 %i.fj, 1
  br i1 %.not.i.i208, label %bb.bh, label %_ZN7QStringD2Ev.exit209

bb.bh:                                            ; preds = %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i207
  %i.fk = load ptr, ptr %15, align 8
  call void @_ZN10QArrayData10deallocateEPS_xx(ptr noundef %i.fk, i64 noundef 2, i64 noundef 8) #26
  br label %_ZN7QStringD2Ev.exit209

_ZN7QStringD2Ev.exit209:                          ; preds = %bb.bh, %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i207, %_ZN7QStringD2Ev.exit205, %bb.bb
  %.pn78.pn.pn = phi { ptr, i32 } [ %i.ey, %bb.bb ], [ %.pn78.pn, %_ZN7QStringD2Ev.exit205 ], [ %.pn78.pn, %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i207 ], [ %.pn78.pn, %bb.bh ] ; 3 uses
  %i.fl = load ptr, ptr %16, align 8              ; 2 uses
  %.not.i.i.i210 = icmp eq ptr %i.fl, null
  br i1 %.not.i.i.i210, label %_ZN7QStringD2Ev.exit213, label %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i211

_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i211:   ; preds = %_ZN7QStringD2Ev.exit209
  %i.fm = atomicrmw sub ptr %i.fl, i32 1 acq_rel, align 4
  %.not.i.i212 = icmp eq i32 %i.fm, 1
  br i1 %.not.i.i212, label %bb.bi, label %_ZN7QStringD2Ev.exit213

bb.bi:                                            ; preds = %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i211
  %i.fn = load ptr, ptr %16, align 8
  call void @_ZN10QArrayData10deallocateEPS_xx(ptr noundef %i.fn, i64 noundef 2, i64 noundef 8) #26
  br label %_ZN7QStringD2Ev.exit213

_ZN7QStringD2Ev.exit213:                          ; preds = %bb.bi, %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i211, %_ZN7QStringD2Ev.exit209, %bb.ba
  %.pn78.pn.pn.pn = phi { ptr, i32 } [ %i.ex, %bb.ba ], [ %.pn78.pn.pn, %_ZN7QStringD2Ev.exit209 ], [ %.pn78.pn.pn, %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i211 ], [ %.pn78.pn.pn, %bb.bi ]
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #26
  br label %bb.cf

bb.bj:                                            ; preds = %bb.av
  %i.fo = landingpad { ptr, i32 }
          cleanup
  br label %_ZN7QStringD2Ev.exit225

bb.bk:                                            ; preds = %_ZN13DataSourceTab2trEPKcS1_i.exit183
  %i.fp = landingpad { ptr, i32 }
          cleanup
  br label %_ZN7QStringD2Ev.exit221

bb.bl:                                            ; preds = %_ZNK7QString3argEiii5QChar.exit184
  %i.fq = landingpad { ptr, i32 }
          cleanup
  br label %_ZN7QStringD2Ev.exit217

bb.bm:                                            ; preds = %_ZNK7QString3argEiii5QChar.exit185
  %i.fr = landingpad { ptr, i32 }
          cleanup                                 ; 3 uses
  %i.fs = load ptr, ptr %17, align 8              ; 2 uses
  %.not.i.i.i214 = icmp eq ptr %i.fs, null
  br i1 %.not.i.i.i214, label %_ZN7QStringD2Ev.exit217, label %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i215

_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i215:   ; preds = %bb.bm
  %i.ft = atomicrmw sub ptr %i.fs, i32 1 acq_rel, align 4
  %.not.i.i216 = icmp eq i32 %i.ft, 1
  br i1 %.not.i.i216, label %bb.bn, label %_ZN7QStringD2Ev.exit217

bb.bn:                                            ; preds = %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i215
  %i.fu = load ptr, ptr %17, align 8
  call void @_ZN10QArrayData10deallocateEPS_xx(ptr noundef %i.fu, i64 noundef 2, i64 noundef 8) #26
  br label %_ZN7QStringD2Ev.exit217

_ZN7QStringD2Ev.exit217:                          ; preds = %bb.bn, %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i215, %bb.bm, %bb.bl
  %.pn89 = phi { ptr, i32 } [ %i.fq, %bb.bl ], [ %i.fr, %bb.bm ], [ %i.fr, %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i215 ], [ %i.fr, %bb.bn ] ; 3 uses
  %i.fv = load ptr, ptr %18, align 8              ; 2 uses
  %.not.i.i.i218 = icmp eq ptr %i.fv, null
  br i1 %.not.i.i.i218, label %_ZN7QStringD2Ev.exit221, label %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i219

_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i219:   ; preds = %_ZN7QStringD2Ev.exit217
  %i.fw = atomicrmw sub ptr %i.fv, i32 1 acq_rel, align 4
  %.not.i.i220 = icmp eq i32 %i.fw, 1
  br i1 %.not.i.i220, label %bb.bo, label %_ZN7QStringD2Ev.exit221

bb.bo:                                            ; preds = %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i219
  %i.fx = load ptr, ptr %18, align 8
  call void @_ZN10QArrayData10deallocateEPS_xx(ptr noundef %i.fx, i64 noundef 2, i64 noundef 8) #26
  br label %_ZN7QStringD2Ev.exit221

_ZN7QStringD2Ev.exit221:                          ; preds = %bb.bo, %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i219, %_ZN7QStringD2Ev.exit217, %bb.bk
end_hunk_0
begin_hunk_1_@_ZN13DataSourceTab23applyAnnotationsToViewsEv:bb.a
  %i.ae = getelementptr i8, ptr %0, i64 72        ; 4 uses
  %i.af = getelementptr i8, ptr %0, i64 80        ; 3 uses
  %i.ag = getelementptr i8, ptr %0, i64 88
  %i.ah = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %3, i64 12
  %i.aj = getelementptr inbounds nuw i8, ptr %3, i64 14
  %i.ak = getelementptr inbounds nuw i8, ptr %3, i64 24 ; 6 uses
  %i.al = getelementptr inbounds nuw i8, ptr %3, i64 4
  %i.am = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 3 uses
  %i.an = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  br i1 %i.ad, label %.lr.ph88.split, label %.lr.ph88.split.us

.lr.ph88.split.us:                                ; preds = %.lr.ph88, %_ZN5QListIN17HexDataSourceView18ByteViewAnnotationEED2Ev.exit.us
  %.sroa.078.087.us = phi ptr [ %i.ba, %_ZN5QListIN17HexDataSourceView18ByteViewAnnotationEED2Ev.exit.us ], [ %i.y, %.lr.ph88 ] ; 2 uses
  %i.ao = load ptr, ptr %.sroa.078.087.us, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #26
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) dereferenceable_or_null(24) %2, i8 0, i64 24, i1 false)
  invoke void @_ZN17HexDataSourceView14setAnnotationsERK5QListINS_18ByteViewAnnotationEE(ptr noundef align 8 dereferenceable_or_null(464) %i.ao, ptr noundef nonnull align 8 dereferenceable(24) %2)
          to label %bb.g unwind label %.split.us

bb.g:                                             ; preds = %.lr.ph88.split.us
  %i.ap = load ptr, ptr %2, align 8               ; 2 uses
  %.not.i.i.i64.us = icmp eq ptr %i.ap, null
  br i1 %.not.i.i.i64.us, label %_ZN5QListIN17HexDataSourceView18ByteViewAnnotationEED2Ev.exit.us, label %_ZN17QArrayDataPointerIN17HexDataSourceView18ByteViewAnnotationEE5derefEv.exit.i.i.us

_ZN17QArrayDataPointerIN17HexDataSourceView18ByteViewAnnotationEE5derefEv.exit.i.i.us: ; preds = %bb.g
  %i.aq = atomicrmw sub ptr %i.ap, i32 1 acq_rel, align 4
  %.not.i.i65.us = icmp eq i32 %i.aq, 1
  br i1 %.not.i.i65.us, label %bb.h, label %_ZN5QListIN17HexDataSourceView18ByteViewAnnotationEED2Ev.exit.us

bb.h:                                             ; preds = %_ZN17QArrayDataPointerIN17HexDataSourceView18ByteViewAnnotationEE5derefEv.exit.i.i.us
  %i.ar = load ptr, ptr %i.an, align 8            ; 2 uses
  %i.as = load i64, ptr %i.am, align 8
  %.idx.i.i.i.us = mul i64 %i.as, 48              ; 2 uses
  %i.at = getelementptr i8, ptr %i.ar, i64 %.idx.i.i.i.us
  %.not4.i.i.i.i.i.i.us = icmp eq i64 %.idx.i.i.i.us, 0
  br i1 %.not4.i.i.i.i.i.i.us, label %_ZN9QtPrivate16QGenericArrayOpsIN17HexDataSourceView18ByteViewAnnotationEE10destroyAllEv.exit.i.i.us, label %.lr.ph.i.i.i.i.i.i.us

.lr.ph.i.i.i.i.i.i.us:                            ; preds = %bb.h, %_ZSt8_DestroyIN17HexDataSourceView18ByteViewAnnotationEEvPT_.exit.i.i.i.i.i.i.us
  %.05.i.i.i.i.i.i.us = phi ptr [ %i.ay, %_ZSt8_DestroyIN17HexDataSourceView18ByteViewAnnotationEEvPT_.exit.i.i.i.i.i.i.us ], [ %i.ar, %bb.h ] ; 2 uses
  %i.au = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i.i.us, i64 24 ; 2 uses
  %i.av = load ptr, ptr %i.au, align 8            ; 2 uses
  %.not.i.i.i.i.i.i.i.i.i.i.i.us = icmp eq ptr %i.av, null
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i.us, label %_ZSt8_DestroyIN17HexDataSourceView18ByteViewAnnotationEEvPT_.exit.i.i.i.i.i.i.us, label %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i.i.i.i.i.i.i.i.i.us

_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i.i.i.i.i.i.i.i.i.us: ; preds = %.lr.ph.i.i.i.i.i.i.us
  %i.aw = atomicrmw sub ptr %i.av, i32 1 acq_rel, align 4
  %.not.i.i.i.i.i.i.i.i.i.i.us = icmp eq i32 %i.aw, 1
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.us, label %bb.i, label %_ZSt8_DestroyIN17HexDataSourceView18ByteViewAnnotationEEvPT_.exit.i.i.i.i.i.i.us

bb.i:                                             ; preds = %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i.i.i.i.i.i.i.i.i.us
  %i.ax = load ptr, ptr %i.au, align 8
  call void @_ZN10QArrayData10deallocateEPS_xx(ptr noundef %i.ax, i64 noundef 2, i64 noundef 8) #26
  br label %_ZSt8_DestroyIN17HexDataSourceView18ByteViewAnnotationEEvPT_.exit.i.i.i.i.i.i.us

_ZSt8_DestroyIN17HexDataSourceView18ByteViewAnnotationEEvPT_.exit.i.i.i.i.i.i.us: ; preds = %bb.i, %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i.i.i.i.i.i.i.i.i.us, %.lr.ph.i.i.i.i.i.i.us
  %i.ay = getelementptr i8, ptr %.05.i.i.i.i.i.i.us, i64 48 ; 2 uses
  %.not.i.i.i.i.i.i66.us = icmp eq ptr %i.ay, %i.at
  br i1 %.not.i.i.i.i.i.i66.us, label %_ZN9QtPrivate16QGenericArrayOpsIN17HexDataSourceView18ByteViewAnnotationEE10destroyAllEv.exit.i.i.us, label %.lr.ph.i.i.i.i.i.i.us, !llvm.loop !89

_ZN9QtPrivate16QGenericArrayOpsIN17HexDataSourceView18ByteViewAnnotationEE10destroyAllEv.exit.i.i.us: ; preds = %_ZSt8_DestroyIN17HexDataSourceView18ByteViewAnnotationEEvPT_.exit.i.i.i.i.i.i.us, %bb.h
  %i.az = load ptr, ptr %2, align 8
  call void @_ZN10QArrayData10deallocateEPS_xx(ptr noundef %i.az, i64 noundef 48, i64 noundef 8) #26
  br label %_ZN5QListIN17HexDataSourceView18ByteViewAnnotationEED2Ev.exit.us

_ZN5QListIN17HexDataSourceView18ByteViewAnnotationEED2Ev.exit.us: ; preds = %_ZN9QtPrivate16QGenericArrayOpsIN17HexDataSourceView18ByteViewAnnotationEE10destroyAllEv.exit.i.i.us, %_ZN17QArrayDataPointerIN17HexDataSourceView18ByteViewAnnotationEE5derefEv.exit.i.i.us, %bb.g
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #26
  %i.ba = getelementptr i8, ptr %.sroa.078.087.us, i64 8 ; 2 uses
  %.not82.us = icmp eq ptr %i.ba, %i.ac
  br i1 %.not82.us, label %._crit_edge, label %.lr.ph88.split.us

.split.us:                                        ; preds = %.lr.ph88.split.us
  %i.bb = landingpad { ptr, i32 }
          cleanup
  br label %bb.aa

._crit_edge:                                      ; preds = %_ZN5QListIN17HexDataSourceView18ByteViewAnnotationEED2Ev.exit.us, %_ZN5QListIN17HexDataSourceView18ByteViewAnnotationEED2Ev.exit, %_ZN5QListIP17HexDataSourceViewE3endEv.exit
  %i.bc = load ptr, ptr %1, align 8               ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.bc, null
  br i1 %.not.i.i.i, label %_ZN5QListIP17HexDataSourceViewED2Ev.exit, label %_ZN17QArrayDataPointerIP17HexDataSourceViewE5derefEv.exit.i.i

_ZN17QArrayDataPointerIP17HexDataSourceViewE5derefEv.exit.i.i: ; preds = %._crit_edge
  %i.bd = atomicrmw sub ptr %i.bc, i32 1 acq_rel, align 4
  %.not.i.i = icmp eq i32 %i.bd, 1
  br i1 %.not.i.i, label %bb.j, label %_ZN5QListIP17HexDataSourceViewED2Ev.exit

bb.j:                                             ; preds = %_ZN17QArrayDataPointerIP17HexDataSourceViewE5derefEv.exit.i.i
  %i.be = load ptr, ptr %1, align 8
  call void @_ZN10QArrayData10deallocateEPS_xx(ptr noundef %i.be, i64 noundef 8, i64 noundef 8) #26
  br label %_ZN5QListIP17HexDataSourceViewED2Ev.exit

_ZN5QListIP17HexDataSourceViewED2Ev.exit:         ; preds = %._crit_edge, %_ZN17QArrayDataPointerIP17HexDataSourceViewE5derefEv.exit.i.i, %bb.j
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #26
  ret void

bb.k:                                             ; preds = %_ZNK17QArrayDataPointerIP17HexDataSourceViewE11needsDetachEv.exit.thread.i.i.i
  %i.bf = landingpad { ptr, i32 }
          cleanup
  br label %bb.ab

bb.l:                                             ; preds = %_ZNK17QArrayDataPointerIP17HexDataSourceViewE11needsDetachEv.exit.thread.i.i.i48
  %i.bg = landingpad { ptr, i32 }
          cleanup
  br label %bb.ab

.lr.ph88.split:                                   ; preds = %.lr.ph88, %_ZN5QListIN17HexDataSourceView18ByteViewAnnotationEED2Ev.exit
  %.sroa.078.087 = phi ptr [ %i.dm, %_ZN5QListIN17HexDataSourceView18ByteViewAnnotationEED2Ev.exit ], [ %i.y, %.lr.ph88 ] ; 2 uses
  %i.bh = load ptr, ptr %.sroa.078.087, align 8   ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #26
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) dereferenceable_or_null(24) %2, i8 0, i64 24, i1 false)
  %i.bi = getelementptr i8, ptr %i.bh, i64 56
  %i.bj = load i64, ptr %i.bi, align 8
  %i.bk = trunc i64 %i.bj to i32                  ; 3 uses
  %i.bl = icmp sgt i32 %i.bk, 0
  br i1 %i.bl, label %bb.m, label %.loopexit

bb.m:                                             ; preds = %.lr.ph88.split
  %i.bm = load ptr, ptr %i.ae, align 8            ; 3 uses
  %.not.i.i.i.i50 = icmp eq ptr %i.bm, null
  br i1 %.not.i.i.i.i50, label %_ZNK17QArrayDataPointerIN13DataSourceTab19FrameByteAnnotationEE11needsDetachEv.exit.thread.i.i.i, label %_ZNK17QArrayDataPointerIN13DataSourceTab19FrameByteAnnotationEE11needsDetachEv.exit.i.i.i

_ZNK17QArrayDataPointerIN13DataSourceTab19FrameByteAnnotationEE11needsDetachEv.exit.i.i.i: ; preds = %bb.m
  %i.bn = load atomic i32, ptr %i.bm monotonic, align 4
  %i.bo = icmp sgt i32 %i.bn, 1
  br i1 %i.bo, label %_ZNK17QArrayDataPointerIN13DataSourceTab19FrameByteAnnotationEE11needsDetachEv.exit.thread.i.i.i, label %.thread121

.thread121:                                       ; preds = %_ZNK17QArrayDataPointerIN13DataSourceTab19FrameByteAnnotationEE11needsDetachEv.exit.i.i.i
  %i.bp = load ptr, ptr %i.af, align 8
  br label %_ZNK17QArrayDataPointerIN13DataSourceTab19FrameByteAnnotationEE11needsDetachEv.exit.i.i.i53

_ZNK17QArrayDataPointerIN13DataSourceTab19FrameByteAnnotationEE11needsDetachEv.exit.thread.i.i.i: ; preds = %_ZNK17QArrayDataPointerIN13DataSourceTab19FrameByteAnnotationEE11needsDetachEv.exit.i.i.i, %bb.m
  invoke void @_ZN17QArrayDataPointerIN13DataSourceTab19FrameByteAnnotationEE17reallocateAndGrowEN10QArrayData14GrowthPositionExPS2_(ptr noundef align 8 dereferenceable_or_null(24) %i.ae, i32 noundef 0, i64 noundef 0, ptr noundef null)
          to label %bb.n unwind label %bb.o

bb.n:                                             ; preds = %_ZNK17QArrayDataPointerIN13DataSourceTab19FrameByteAnnotationEE11needsDetachEv.exit.thread.i.i.i
  %.pre91 = load ptr, ptr %i.ae, align 8          ; 2 uses
  %i.bq = load ptr, ptr %i.af, align 8            ; 2 uses
  %.not.i.i.i.i52 = icmp eq ptr %.pre91, null
  br i1 %.not.i.i.i.i52, label %_ZNK17QArrayDataPointerIN13DataSourceTab19FrameByteAnnotationEE11needsDetachEv.exit.thread.i.i.i54, label %_ZNK17QArrayDataPointerIN13DataSourceTab19FrameByteAnnotationEE11needsDetachEv.exit.i.i.i53

_ZNK17QArrayDataPointerIN13DataSourceTab19FrameByteAnnotationEE11needsDetachEv.exit.i.i.i53: ; preds = %.thread121, %bb.n
  %i.br = phi ptr [ %i.bp, %.thread121 ], [ %i.bq, %bb.n ] ; 3 uses
  %i.bs = phi ptr [ %i.bm, %.thread121 ], [ %.pre91, %bb.n ]
  %i.bt = load atomic i32, ptr %i.bs monotonic, align 4
  %i.bu = icmp sgt i32 %i.bt, 1
  br i1 %i.bu, label %_ZNK17QArrayDataPointerIN13DataSourceTab19FrameByteAnnotationEE11needsDetachEv.exit.thread.i.i.i54, label %_ZN5QListIN13DataSourceTab19FrameByteAnnotationEE3endEv.exit

_ZNK17QArrayDataPointerIN13DataSourceTab19FrameByteAnnotationEE11needsDetachEv.exit.thread.i.i.i54: ; preds = %_ZNK17QArrayDataPointerIN13DataSourceTab19FrameByteAnnotationEE11needsDetachEv.exit.i.i.i53, %bb.n
  %i.bv = phi ptr [ %i.br, %_ZNK17QArrayDataPointerIN13DataSourceTab19FrameByteAnnotationEE11needsDetachEv.exit.i.i.i53 ], [ %i.bq, %bb.n ]
  invoke void @_ZN17QArrayDataPointerIN13DataSourceTab19FrameByteAnnotationEE17reallocateAndGrowEN10QArrayData14GrowthPositionExPS2_(ptr noundef align 8 dereferenceable_or_null(24) %i.ae, i32 noundef 0, i64 noundef 0, ptr noundef null)
          to label %_ZNK17QArrayDataPointerIN13DataSourceTab19FrameByteAnnotationEE11needsDetachEv.exit.thread.i.i.i54._ZN5QListIN13DataSourceTab19FrameByteAnnotationEE3endEv.exit_crit_edge unwind label %bb.p

_ZNK17QArrayDataPointerIN13DataSourceTab19FrameByteAnnotationEE11needsDetachEv.exit.thread.i.i.i54._ZN5QListIN13DataSourceTab19FrameByteAnnotationEE3endEv.exit_crit_edge: ; preds = %_ZNK17QArrayDataPointerIN13DataSourceTab19FrameByteAnnotationEE11needsDetachEv.exit.thread.i.i.i54
  %.pre92 = load ptr, ptr %i.af, align 8
  br label %_ZN5QListIN13DataSourceTab19FrameByteAnnotationEE3endEv.exit

_ZN5QListIN13DataSourceTab19FrameByteAnnotationEE3endEv.exit: ; preds = %_ZNK17QArrayDataPointerIN13DataSourceTab19FrameByteAnnotationEE11needsDetachEv.exit.thread.i.i.i54._ZN5QListIN13DataSourceTab19FrameByteAnnotationEE3endEv.exit_crit_edge, %_ZNK17QArrayDataPointerIN13DataSourceTab19FrameByteAnnotationEE11needsDetachEv.exit.i.i.i53
  %i.bw = phi ptr [ %i.bv, %_ZNK17QArrayDataPointerIN13DataSourceTab19FrameByteAnnotationEE11needsDetachEv.exit.thread.i.i.i54._ZN5QListIN13DataSourceTab19FrameByteAnnotationEE3endEv.exit_crit_edge ], [ %i.br, %_ZNK17QArrayDataPointerIN13DataSourceTab19FrameByteAnnotationEE11needsDetachEv.exit.i.i.i53 ] ; 2 uses
  %i.bx = phi ptr [ %.pre92, %_ZNK17QArrayDataPointerIN13DataSourceTab19FrameByteAnnotationEE11needsDetachEv.exit.thread.i.i.i54._ZN5QListIN13DataSourceTab19FrameByteAnnotationEE3endEv.exit_crit_edge ], [ %i.br, %_ZNK17QArrayDataPointerIN13DataSourceTab19FrameByteAnnotationEE11needsDetachEv.exit.i.i.i53 ]
  %i.by = load i64, ptr %i.ag, align 8
  %i.bz = getelementptr [56 x i8], ptr %i.bx, i64 %i.by ; 2 uses
  %.not8384 = icmp eq ptr %i.bw, %i.bz
  br i1 %.not8384, label %.loopexit, label %.lr.ph

.split:                                           ; preds = %.loopexit
  %i.ca = landingpad { ptr, i32 }
          cleanup
  br label %bb.aa

bb.o:                                             ; preds = %_ZNK17QArrayDataPointerIN13DataSourceTab19FrameByteAnnotationEE11needsDetachEv.exit.thread.i.i.i
  %i.cb = landingpad { ptr, i32 }
          cleanup
  br label %bb.aa

bb.p:                                             ; preds = %_ZNK17QArrayDataPointerIN13DataSourceTab19FrameByteAnnotationEE11needsDetachEv.exit.thread.i.i.i54
  %i.cc = landingpad { ptr, i32 }
          cleanup
  br label %bb.aa

.lr.ph:                                           ; preds = %_ZN5QListIN13DataSourceTab19FrameByteAnnotationEE3endEv.exit, %bb.u
  %.sroa.0.085 = phi ptr [ %i.cw, %bb.u ], [ %i.bw, %_ZN5QListIN13DataSourceTab19FrameByteAnnotationEE3endEv.exit ] ; 6 uses
  %i.cd = load i32, ptr %.sroa.0.085, align 8
  %.not = icmp eq i32 %i.cd, %.0.i
  br i1 %.not, label %bb.q, label %bb.u

bb.q:                                             ; preds = %.lr.ph
  %i.ce = getelementptr inbounds nuw i8, ptr %.sroa.0.085, i64 4 ; 2 uses
  %i.cf = load i32, ptr %i.ce, align 4            ; 3 uses
  %i.cg = icmp slt i32 %i.cf, 0
  br i1 %i.cg, label %bb.u, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.ch = getelementptr inbounds nuw i8, ptr %.sroa.0.085, i64 8
  %i.ci = load i32, ptr %i.ch, align 8            ; 2 uses
  %i.cj = icmp sgt i32 %i.ci, 0
  %.not39 = icmp slt i32 %i.cf, %i.bk
  %or.cond45 = and i1 %.not39, %i.cj
  br i1 %or.cond45, label %bb.s, label %bb.u

bb.s:                                             ; preds = %bb.r
  %i.ck = sub nuw nsw i32 %i.bk, %i.cf
  %.sroa.speculated = call i32 @llvm.umin.i32(i32 %i.ci, i32 %i.ck)
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #26
  store i32 0, ptr %i.ah, align 8
  store i16 -1, ptr %i.ai, align 4
  store i64 0, ptr %i.aj, align 2
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) dereferenceable_or_null(24) %i.ak, i8 0, i64 24, i1 false)
  %i.cl = load i32, ptr %i.ce, align 4
  store i32 %i.cl, ptr %3, align 8
  store i32 %.sroa.speculated, ptr %i.al, align 4
  %i.cm = getelementptr inbounds nuw i8, ptr %.sroa.0.085, i64 12
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(14) %i.ah, ptr noundef nonnull align 4 dereferenceable(14) %i.cm, i64 14, i1 false)
  %i.cn = getelementptr inbounds nuw i8, ptr %.sroa.0.085, i64 32
  %i.co = call noundef align 8 dereferenceable(24) ptr @_ZN7QStringaSERKS_(ptr noundef nonnull align 8 dereferenceable_or_null(24) %i.ak, ptr noundef nonnull align 8 dereferenceable(24) %i.cn) #26 ; 0 uses
  %i.cp = load i64, ptr %i.am, align 8
  invoke void @_ZN9QtPrivate16QGenericArrayOpsIN17HexDataSourceView18ByteViewAnnotationEE7emplaceIJRKS2_EEEvxDpOT_(ptr noundef nonnull align 8 dereferenceable_or_null(24) %2, i64 noundef %i.cp, ptr noundef nonnull align 8 dereferenceable(48) %3)
          to label %.noexc56 unwind label %bb.v

.noexc56:                                         ; preds = %bb.s
  %i.cq = load ptr, ptr %2, align 8               ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.cq, null
  br i1 %.not.i.i.i.i.i.i, label %_ZNK17QArrayDataPointerIN17HexDataSourceView18ByteViewAnnotationEE11needsDetachEv.exit.thread.i.i.i.i.i, label %_ZNK17QArrayDataPointerIN17HexDataSourceView18ByteViewAnnotationEE11needsDetachEv.exit.i.i.i.i.i

_ZNK17QArrayDataPointerIN17HexDataSourceView18ByteViewAnnotationEE11needsDetachEv.exit.i.i.i.i.i: ; preds = %.noexc56
  %i.cr = load atomic i32, ptr %i.cq monotonic, align 4
  %i.cs = icmp sgt i32 %i.cr, 1
  br i1 %i.cs, label %_ZNK17QArrayDataPointerIN17HexDataSourceView18ByteViewAnnotationEE11needsDetachEv.exit.thread.i.i.i.i.i, label %_ZN5QListIN17HexDataSourceView18ByteViewAnnotationEE6appendERKS1_.exit

_ZNK17QArrayDataPointerIN17HexDataSourceView18ByteViewAnnotationEE11needsDetachEv.exit.thread.i.i.i.i.i: ; preds = %_ZNK17QArrayDataPointerIN17HexDataSourceView18ByteViewAnnotationEE11needsDetachEv.exit.i.i.i.i.i, %.noexc56
  invoke void @_ZN17QArrayDataPointerIN17HexDataSourceView18ByteViewAnnotationEE17reallocateAndGrowEN10QArrayData14GrowthPositionExPS2_(ptr noundef nonnull align 8 dereferenceable_or_null(24) %2, i32 noundef 0, i64 noundef 0, ptr noundef null)
          to label %_ZN5QListIN17HexDataSourceView18ByteViewAnnotationEE6appendERKS1_.exit unwind label %bb.v

_ZN5QListIN17HexDataSourceView18ByteViewAnnotationEE6appendERKS1_.exit: ; preds = %_ZNK17QArrayDataPointerIN17HexDataSourceView18ByteViewAnnotationEE11needsDetachEv.exit.i.i.i.i.i, %_ZNK17QArrayDataPointerIN17HexDataSourceView18ByteViewAnnotationEE11needsDetachEv.exit.thread.i.i.i.i.i
  %i.ct = load ptr, ptr %i.ak, align 8            ; 2 uses
  %.not.i.i.i.i58 = icmp eq ptr %i.ct, null
  br i1 %.not.i.i.i.i58, label %_ZN17HexDataSourceView18ByteViewAnnotationD2Ev.exit, label %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i.i

_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i.i:    ; preds = %_ZN5QListIN17HexDataSourceView18ByteViewAnnotationEE6appendERKS1_.exit
  %i.cu = atomicrmw sub ptr %i.ct, i32 1 acq_rel, align 4
  %.not.i.i.i59 = icmp eq i32 %i.cu, 1
  br i1 %.not.i.i.i59, label %bb.t, label %_ZN17HexDataSourceView18ByteViewAnnotationD2Ev.exit

bb.t:                                             ; preds = %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i.i
  %i.cv = load ptr, ptr %i.ak, align 8
  call void @_ZN10QArrayData10deallocateEPS_xx(ptr noundef %i.cv, i64 noundef 2, i64 noundef 8) #26
  br label %_ZN17HexDataSourceView18ByteViewAnnotationD2Ev.exit

_ZN17HexDataSourceView18ByteViewAnnotationD2Ev.exit: ; preds = %_ZN5QListIN17HexDataSourceView18ByteViewAnnotationEE6appendERKS1_.exit, %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i.i, %bb.t
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #26
  br label %bb.u

bb.u:                                             ; preds = %_ZN17HexDataSourceView18ByteViewAnnotationD2Ev.exit, %bb.q, %bb.r, %.lr.ph
  %i.cw = getelementptr i8, ptr %.sroa.0.085, i64 56 ; 2 uses
  %.not83 = icmp eq ptr %i.cw, %i.bz
  br i1 %.not83, label %.loopexit, label %.lr.ph

bb.v:                                             ; preds = %_ZNK17QArrayDataPointerIN17HexDataSourceView18ByteViewAnnotationEE11needsDetachEv.exit.thread.i.i.i.i.i, %bb.s
  %i.cx = landingpad { ptr, i32 }
          cleanup
  %i.cy = load ptr, ptr %i.ak, align 8            ; 2 uses
  %.not.i.i.i.i60 = icmp eq ptr %i.cy, null
  br i1 %.not.i.i.i.i60, label %_ZN17HexDataSourceView18ByteViewAnnotationD2Ev.exit63, label %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i.i61

_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i.i61:  ; preds = %bb.v
  %i.cz = atomicrmw sub ptr %i.cy, i32 1 acq_rel, align 4
  %.not.i.i.i62 = icmp eq i32 %i.cz, 1
  br i1 %.not.i.i.i62, label %bb.w, label %_ZN17HexDataSourceView18ByteViewAnnotationD2Ev.exit63

bb.w:                                             ; preds = %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i.i61
  %i.da = load ptr, ptr %i.ak, align 8
  call void @_ZN10QArrayData10deallocateEPS_xx(ptr noundef %i.da, i64 noundef 2, i64 noundef 8) #26
  br label %_ZN17HexDataSourceView18ByteViewAnnotationD2Ev.exit63

_ZN17HexDataSourceView18ByteViewAnnotationD2Ev.exit63: ; preds = %bb.v, %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i.i61, %bb.w
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #26
  br label %bb.aa

.loopexit:                                        ; preds = %bb.u, %_ZN5QListIN13DataSourceTab19FrameByteAnnotationEE3endEv.exit, %.lr.ph88.split
  invoke void @_ZN17HexDataSourceView14setAnnotationsERK5QListINS_18ByteViewAnnotationEE(ptr noundef align 8 dereferenceable_or_null(464) %i.bh, ptr noundef nonnull align 8 dereferenceable(24) %2)
          to label %bb.x unwind label %.split

bb.x:                                             ; preds = %.loopexit
  %i.db = load ptr, ptr %2, align 8               ; 2 uses
  %.not.i.i.i64 = icmp eq ptr %i.db, null
  br i1 %.not.i.i.i64, label %_ZN5QListIN17HexDataSourceView18ByteViewAnnotationEED2Ev.exit, label %_ZN17QArrayDataPointerIN17HexDataSourceView18ByteViewAnnotationEE5derefEv.exit.i.i

_ZN17QArrayDataPointerIN17HexDataSourceView18ByteViewAnnotationEE5derefEv.exit.i.i: ; preds = %bb.x
  %i.dc = atomicrmw sub ptr %i.db, i32 1 acq_rel, align 4
  %.not.i.i65 = icmp eq i32 %i.dc, 1
  br i1 %.not.i.i65, label %bb.y, label %_ZN5QListIN17HexDataSourceView18ByteViewAnnotationEED2Ev.exit

bb.y:                                             ; preds = %_ZN17QArrayDataPointerIN17HexDataSourceView18ByteViewAnnotationEE5derefEv.exit.i.i
  %i.dd = load ptr, ptr %i.an, align 8            ; 2 uses
  %i.de = load i64, ptr %i.am, align 8
  %.idx.i.i.i = mul i64 %i.de, 48                 ; 2 uses
  %i.df = getelementptr i8, ptr %i.dd, i64 %.idx.i.i.i
  %.not4.i.i.i.i.i.i = icmp eq i64 %.idx.i.i.i, 0
  br i1 %.not4.i.i.i.i.i.i, label %_ZN9QtPrivate16QGenericArrayOpsIN17HexDataSourceView18ByteViewAnnotationEE10destroyAllEv.exit.i.i, label %.lr.ph.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %bb.y, %_ZSt8_DestroyIN17HexDataSourceView18ByteViewAnnotationEEvPT_.exit.i.i.i.i.i.i
  %.05.i.i.i.i.i.i = phi ptr [ %i.dk, %_ZSt8_DestroyIN17HexDataSourceView18ByteViewAnnotationEEvPT_.exit.i.i.i.i.i.i ], [ %i.dd, %bb.y ] ; 2 uses
  %i.dg = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i.i, i64 24 ; 2 uses
  %i.dh = load ptr, ptr %i.dg, align 8            ; 2 uses
  %.not.i.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.dh, null
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i, label %_ZSt8_DestroyIN17HexDataSourceView18ByteViewAnnotationEEvPT_.exit.i.i.i.i.i.i, label %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i.i.i.i.i.i.i.i.i

_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i.i.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i
  %i.di = atomicrmw sub ptr %i.dh, i32 1 acq_rel, align 4
  %.not.i.i.i.i.i.i.i.i.i.i = icmp eq i32 %i.di, 1
  br i1 %.not.i.i.i.i.i.i.i.i.i.i, label %bb.z, label %_ZSt8_DestroyIN17HexDataSourceView18ByteViewAnnotationEEvPT_.exit.i.i.i.i.i.i

bb.z:                                             ; preds = %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i.i.i.i.i.i.i.i.i
  %i.dj = load ptr, ptr %i.dg, align 8
  call void @_ZN10QArrayData10deallocateEPS_xx(ptr noundef %i.dj, i64 noundef 2, i64 noundef 8) #26
  br label %_ZSt8_DestroyIN17HexDataSourceView18ByteViewAnnotationEEvPT_.exit.i.i.i.i.i.i

_ZSt8_DestroyIN17HexDataSourceView18ByteViewAnnotationEEvPT_.exit.i.i.i.i.i.i: ; preds = %bb.z, %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i.i.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i
  %i.dk = getelementptr i8, ptr %.05.i.i.i.i.i.i, i64 48 ; 2 uses
  %.not.i.i.i.i.i.i66 = icmp eq ptr %i.dk, %i.df
  br i1 %.not.i.i.i.i.i.i66, label %_ZN9QtPrivate16QGenericArrayOpsIN17HexDataSourceView18ByteViewAnnotationEE10destroyAllEv.exit.i.i, label %.lr.ph.i.i.i.i.i.i, !llvm.loop !89

_ZN9QtPrivate16QGenericArrayOpsIN17HexDataSourceView18ByteViewAnnotationEE10destroyAllEv.exit.i.i: ; preds = %_ZSt8_DestroyIN17HexDataSourceView18ByteViewAnnotationEEvPT_.exit.i.i.i.i.i.i, %bb.y
  %i.dl = load ptr, ptr %2, align 8
  call void @_ZN10QArrayData10deallocateEPS_xx(ptr noundef %i.dl, i64 noundef 48, i64 noundef 8) #26
  br label %_ZN5QListIN17HexDataSourceView18ByteViewAnnotationEED2Ev.exit

_ZN5QListIN17HexDataSourceView18ByteViewAnnotationEED2Ev.exit: ; preds = %bb.x, %_ZN17QArrayDataPointerIN17HexDataSourceView18ByteViewAnnotationEE5derefEv.exit.i.i, %_ZN9QtPrivate16QGenericArrayOpsIN17HexDataSourceView18ByteViewAnnotationEE10destroyAllEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #26
  %i.dm = getelementptr i8, ptr %.sroa.078.087, i64 8 ; 2 uses
  %.not82 = icmp eq ptr %i.dm, %i.ac
  br i1 %.not82, label %._crit_edge, label %.lr.ph88.split

bb.aa:                                            ; preds = %.split, %.split.us, %bb.o, %_ZN17HexDataSourceView18ByteViewAnnotationD2Ev.exit63, %bb.p
  %.pn.pn.pn = phi { ptr, i32 } [ %i.cc, %bb.p ], [ %i.cb, %bb.o ], [ %i.cx, %_ZN17HexDataSourceView18ByteViewAnnotationD2Ev.exit63 ], [ %i.ca, %.split ], [ %i.bb, %.split.us ]
  call void @_ZN5QListIN17HexDataSourceView18ByteViewAnnotationEED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable_or_null(24) %2) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #26
  br label %bb.ab

bb.ab:                                            ; preds = %bb.l, %bb.aa, %bb.k
  %.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %i.bf, %bb.k ], [ %.pn.pn.pn, %bb.aa ], [ %i.bg, %bb.l ]
  %i.dn = load ptr, ptr %1, align 8               ; 2 uses
  %.not.i.i.i67 = icmp eq ptr %i.dn, null
  br i1 %.not.i.i.i67, label %_ZN5QListIP17HexDataSourceViewED2Ev.exit70, label %_ZN17QArrayDataPointerIP17HexDataSourceViewE5derefEv.exit.i.i68

_ZN17QArrayDataPointerIP17HexDataSourceViewE5derefEv.exit.i.i68: ; preds = %bb.ab
  %i.do = atomicrmw sub ptr %i.dn, i32 1 acq_rel, align 4
  %.not.i.i69 = icmp eq i32 %i.do, 1
  br i1 %.not.i.i69, label %bb.ac, label %_ZN5QListIP17HexDataSourceViewED2Ev.exit70

bb.ac:                                            ; preds = %_ZN17QArrayDataPointerIP17HexDataSourceViewE5derefEv.exit.i.i68
  %i.dp = load ptr, ptr %1, align 8
  call void @_ZN10QArrayData10deallocateEPS_xx(ptr noundef %i.dp, i64 noundef 8, i64 noundef 8) #26
  br label %_ZN5QListIP17HexDataSourceViewED2Ev.exit70

_ZN5QListIP17HexDataSourceViewED2Ev.exit70:       ; preds = %bb.ab, %_ZN17QArrayDataPointerIP17HexDataSourceViewE5derefEv.exit.i.i68, %bb.ac
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #26
  br label %common.resume
}

; Function Attrs: nounwind null_pointer_is_valid
declare noundef align 8 dereferenceable(24) ptr @_ZN7QStringaSERKS_(ptr noundef align 8 dereferenceable_or_null(24), ptr noundef align 8 dereferenceable(24)) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare void @_ZN17HexDataSourceView14setAnnotationsERK5QListINS_18ByteViewAnnotationEE(ptr noundef align 8 dereferenceable_or_null(464), ptr noundef align 8 dereferenceable(24)) local_unnamed_addr #1

; Function Attrs: inlinehint mustprogress nounwind null_pointer_is_valid sspstrong uwtable
define linkonce_odr void @_ZN5QListIN17HexDataSourceView18ByteViewAnnotationEED2Ev(ptr noundef align 8 dead_on_return(24) dereferenceable_or_null(24) %0) unnamed_addr #6 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8                ; 2 uses
  %.not.i.i = icmp eq ptr %i.a, null
  br i1 %.not.i.i, label %_ZN17QArrayDataPointerIN17HexDataSourceView18ByteViewAnnotationEED2Ev.exit, label %_ZN17QArrayDataPointerIN17HexDataSourceView18ByteViewAnnotationEE5derefEv.exit.i

_ZN17QArrayDataPointerIN17HexDataSourceView18ByteViewAnnotationEE5derefEv.exit.i: ; preds = %bb.a
  %i.b = atomicrmw sub ptr %i.a, i32 1 acq_rel, align 4
  %.not.i = icmp eq i32 %i.b, 1
  br i1 %.not.i, label %bb.b, label %_ZN17QArrayDataPointerIN17HexDataSourceView18ByteViewAnnotationEED2Ev.exit

bb.b:                                             ; preds = %_ZN17QArrayDataPointerIN17HexDataSourceView18ByteViewAnnotationEE5derefEv.exit.i
  %i.c = getelementptr i8, ptr %0, i64 8
  %i.d = load ptr, ptr %i.c, align 8              ; 2 uses
  %i.e = getelementptr i8, ptr %0, i64 16
  %i.f = load i64, ptr %i.e, align 8
  %.idx.i.i = mul i64 %i.f, 48                    ; 2 uses
  %i.g = getelementptr i8, ptr %i.d, i64 %.idx.i.i
  %.not4.i.i.i.i.i = icmp eq i64 %.idx.i.i, 0
  br i1 %.not4.i.i.i.i.i, label %_ZN9QtPrivate16QGenericArrayOpsIN17HexDataSourceView18ByteViewAnnotationEE10destroyAllEv.exit.i, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %bb.b, %_ZSt8_DestroyIN17HexDataSourceView18ByteViewAnnotationEEvPT_.exit.i.i.i.i.i
  %.05.i.i.i.i.i = phi ptr [ %i.l, %_ZSt8_DestroyIN17HexDataSourceView18ByteViewAnnotationEEvPT_.exit.i.i.i.i.i ], [ %i.d, %bb.b ] ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i, i64 24 ; 2 uses
  %i.i = load ptr, ptr %i.h, align 8              ; 2 uses
  %.not.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.i, null
  br i1 %.not.i.i.i.i.i.i.i.i.i.i, label %_ZSt8_DestroyIN17HexDataSourceView18ByteViewAnnotationEEvPT_.exit.i.i.i.i.i, label %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i.i.i.i.i.i.i.i

_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i
  %i.j = atomicrmw sub ptr %i.i, i32 1 acq_rel, align 4
  %.not.i.i.i.i.i.i.i.i.i = icmp eq i32 %i.j, 1
  br i1 %.not.i.i.i.i.i.i.i.i.i, label %bb.c, label %_ZSt8_DestroyIN17HexDataSourceView18ByteViewAnnotationEEvPT_.exit.i.i.i.i.i

bb.c:                                             ; preds = %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i.i.i.i.i.i.i.i
  %i.k = load ptr, ptr %i.h, align 8
  tail call void @_ZN10QArrayData10deallocateEPS_xx(ptr noundef %i.k, i64 noundef 2, i64 noundef 8) #26
end_hunk_1
begin_hunk_2_@_ZN9QtPrivate30q_relocate_overlap_n_left_moveIPN13DataSourceTab19FrameByteAnnotationExEEvT_T0_S4_:bb.a
_ZN13DataSourceTab19FrameByteAnnotationD2Ev.exit.i: ; preds = %bb.d, %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i.i.i, %bb.c
  %i.bc = load ptr, ptr %3, align 8               ; 2 uses
  %i.bd = load ptr, ptr %i.bc, align 8            ; 2 uses
  %i.be = load ptr, ptr %i.a, align 8
  %.not.i = icmp eq ptr %i.bd, %i.be
  br i1 %.not.i, label %_ZZN9QtPrivate30q_relocate_overlap_n_left_moveIPN13DataSourceTab19FrameByteAnnotationExEEvT_T0_S4_EN10DestructorD2Ev.exit, label %bb.c, !llvm.loop !156

_ZZN9QtPrivate30q_relocate_overlap_n_left_moveIPN13DataSourceTab19FrameByteAnnotationExEEvT_T0_S4_EN10DestructorD2Ev.exit: ; preds = %_ZN13DataSourceTab19FrameByteAnnotationD2Ev.exit.i, %._crit_edge29
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #26
  ret void
}

; Function Attrs: mustprogress null_pointer_is_valid sspstrong uwtable
define linkonce_odr void @_ZN9QtPrivate30q_relocate_overlap_n_left_moveISt16reverse_iteratorIPN13DataSourceTab19FrameByteAnnotationEExEEvT_T0_S6_(ptr noundef align 8 dead_on_return %0, i64 noundef %1, ptr noundef align 8 dead_on_return %2) local_unnamed_addr #0 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %struct.Destructor.257, align 8     ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #26
  %i.a = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 5 uses
  %i.b = load ptr, ptr %2, align 8                ; 5 uses
  store ptr %i.b, ptr %i.a, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.d = sub i64 0, %1
  %i.e = getelementptr [56 x i8], ptr %i.b, i64 %i.d ; 5 uses
  %i.f = load ptr, ptr %0, align 8                ; 5 uses
  %i.g = icmp ult ptr %i.e, %i.f                  ; 2 uses
  %i.h = select i1 %i.g, ptr %i.f, ptr %i.e       ; 2 uses
  %i.i = select i1 %i.g, ptr %i.e, ptr %i.f       ; 2 uses
  %.not10 = icmp eq ptr %i.b, %i.h
  br i1 %.not10, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %.lr.ph
  %i.j = phi ptr [ %i.z, %.lr.ph ], [ %i.f, %bb.a ] ; 4 uses
  %i.k = phi ptr [ %i.aa, %.lr.ph ], [ %i.b, %bb.a ] ; 4 uses
  %i.l = getelementptr i8, ptr %i.k, i64 -56
  %i.m = getelementptr i8, ptr %i.j, i64 -56
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef align 8 dereferenceable(26) dereferenceable_or_null(56) %i.l, ptr noundef align 8 dereferenceable(56) %i.m, i64 26, i1 false)
  %i.n = getelementptr i8, ptr %i.k, i64 -24
  %i.o = getelementptr i8, ptr %i.j, i64 -24      ; 2 uses
  %i.p = load ptr, ptr %i.o, align 8
  store ptr %i.p, ptr %i.n, align 8
  %i.q = getelementptr i8, ptr %i.k, i64 -16
  %i.r = getelementptr i8, ptr %i.j, i64 -16
  %i.s = load ptr, ptr %i.r, align 8
  store ptr %i.s, ptr %i.q, align 8
  %i.t = getelementptr i8, ptr %i.k, i64 -8
  %i.u = getelementptr i8, ptr %i.j, i64 -8
  %i.v = load i64, ptr %i.u, align 8
  store i64 %i.v, ptr %i.t, align 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.o, i8 0, i64 24, i1 false)
  %i.w = load ptr, ptr %2, align 8
  %i.x = getelementptr i8, ptr %i.w, i64 -56
  store ptr %i.x, ptr %2, align 8
  %i.y = load ptr, ptr %0, align 8
  %i.z = getelementptr i8, ptr %i.y, i64 -56      ; 3 uses
  store ptr %i.z, ptr %0, align 8
  %i.aa = load ptr, ptr %2, align 8               ; 3 uses
  %.not = icmp eq ptr %i.aa, %i.h
  br i1 %.not, label %._crit_edge, label %.lr.ph, !llvm.loop !157

._crit_edge:                                      ; preds = %.lr.ph, %bb.a
  %i.ab = phi ptr [ %i.f, %bb.a ], [ %i.z, %.lr.ph ] ; 2 uses
  %i.ac = phi ptr [ %i.b, %bb.a ], [ %i.aa, %.lr.ph ] ; 3 uses
  %i.ad = ptrtoint ptr %i.ac to i64
  store i64 %i.ad, ptr %i.c, align 8
  store ptr %i.c, ptr %3, align 8
  %.not811 = icmp eq ptr %i.ac, %i.e
  br i1 %.not811, label %._crit_edge14, label %.lr.ph13

.lr.ph13:                                         ; preds = %._crit_edge, %.lr.ph13
  %i.ae = phi ptr [ %i.ax, %.lr.ph13 ], [ %i.ab, %._crit_edge ] ; 4 uses
  %i.af = phi ptr [ %i.ay, %.lr.ph13 ], [ %i.ac, %._crit_edge ] ; 4 uses
  %i.ag = getelementptr i8, ptr %i.ae, i64 -56
  %i.ah = getelementptr i8, ptr %i.af, i64 -56
  call void @llvm.memcpy.p0.p0.i64(ptr noundef align 8 dereferenceable(26) dereferenceable_or_null(56) %i.ah, ptr noundef align 8 dereferenceable(56) %i.ag, i64 26, i1 false)
  %i.ai = getelementptr i8, ptr %i.af, i64 -24    ; 2 uses
  %i.aj = getelementptr i8, ptr %i.ae, i64 -24    ; 2 uses
  %i.ak = load ptr, ptr %i.ai, align 8
  %i.al = load ptr, ptr %i.aj, align 8
  store ptr %i.al, ptr %i.ai, align 8
  store ptr %i.ak, ptr %i.aj, align 8
  %i.am = getelementptr i8, ptr %i.af, i64 -16    ; 2 uses
  %i.an = getelementptr i8, ptr %i.ae, i64 -16    ; 2 uses
  %i.ao = load ptr, ptr %i.am, align 8
  %i.ap = load ptr, ptr %i.an, align 8
  store ptr %i.ap, ptr %i.am, align 8
  store ptr %i.ao, ptr %i.an, align 8
  %i.aq = getelementptr i8, ptr %i.af, i64 -8     ; 2 uses
  %i.ar = getelementptr i8, ptr %i.ae, i64 -8     ; 2 uses
  %i.as = load i64, ptr %i.aq, align 8
  %i.at = load i64, ptr %i.ar, align 8
  store i64 %i.at, ptr %i.aq, align 8
  store i64 %i.as, ptr %i.ar, align 8
  %i.au = load ptr, ptr %2, align 8
  %i.av = getelementptr i8, ptr %i.au, i64 -56
  store ptr %i.av, ptr %2, align 8
  %i.aw = load ptr, ptr %0, align 8
  %i.ax = getelementptr i8, ptr %i.aw, i64 -56    ; 3 uses
  store ptr %i.ax, ptr %0, align 8
  %i.ay = load ptr, ptr %2, align 8               ; 2 uses
  %.not8 = icmp eq ptr %i.ay, %i.e
  br i1 %.not8, label %._crit_edge14, label %.lr.ph13, !llvm.loop !158

._crit_edge14:                                    ; preds = %.lr.ph13, %._crit_edge
  %i.az = phi ptr [ %i.ab, %._crit_edge ], [ %i.ax, %.lr.ph13 ] ; 2 uses
  store ptr %i.a, ptr %3, align 8
  %.not915 = icmp eq ptr %i.az, %i.i
  br i1 %.not915, label %._crit_edge18, label %.lr.ph17

.lr.ph17:                                         ; preds = %._crit_edge14, %_ZN13DataSourceTab19FrameByteAnnotationD2Ev.exit
  %i.ba = phi ptr [ %i.bg, %_ZN13DataSourceTab19FrameByteAnnotationD2Ev.exit ], [ %i.az, %._crit_edge14 ] ; 2 uses
  %i.bb = getelementptr i8, ptr %i.ba, i64 56
  store ptr %i.bb, ptr %0, align 8
  %i.bc = getelementptr inbounds nuw i8, ptr %i.ba, i64 32 ; 2 uses
  %i.bd = load ptr, ptr %i.bc, align 8            ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.bd, null
  br i1 %.not.i.i.i.i, label %_ZN13DataSourceTab19FrameByteAnnotationD2Ev.exit, label %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i.i

_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i.i:    ; preds = %.lr.ph17
  %i.be = atomicrmw sub ptr %i.bd, i32 1 acq_rel, align 4
  %.not.i.i.i = icmp eq i32 %i.be, 1
  br i1 %.not.i.i.i, label %bb.b, label %_ZN13DataSourceTab19FrameByteAnnotationD2Ev.exit

bb.b:                                             ; preds = %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i.i
  %i.bf = load ptr, ptr %i.bc, align 8
  call void @_ZN10QArrayData10deallocateEPS_xx(ptr noundef %i.bf, i64 noundef 2, i64 noundef 8) #26
  br label %_ZN13DataSourceTab19FrameByteAnnotationD2Ev.exit

_ZN13DataSourceTab19FrameByteAnnotationD2Ev.exit: ; preds = %.lr.ph17, %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i.i, %bb.b
  %i.bg = load ptr, ptr %0, align 8               ; 2 uses
  %.not9 = icmp eq ptr %i.bg, %i.i
  br i1 %.not9, label %._crit_edge18.loopexit, label %.lr.ph17, !llvm.loop !159

._crit_edge18.loopexit:                           ; preds = %_ZN13DataSourceTab19FrameByteAnnotationD2Ev.exit
  %.pre = load ptr, ptr %3, align 8
  br label %._crit_edge18

._crit_edge18:                                    ; preds = %._crit_edge18.loopexit, %._crit_edge14
  %i.bh = phi ptr [ %.pre, %._crit_edge18.loopexit ], [ %i.a, %._crit_edge14 ] ; 2 uses
  %i.bi = load ptr, ptr %i.a, align 8             ; 2 uses
  %i.bj = load ptr, ptr %i.bh, align 8            ; 3 uses
  %.not1.i = icmp eq ptr %i.bj, %i.bi
  br i1 %.not1.i, label %_ZZN9QtPrivate30q_relocate_overlap_n_left_moveISt16reverse_iteratorIPN13DataSourceTab19FrameByteAnnotationEExEEvT_T0_S6_EN10DestructorD2Ev.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %._crit_edge18
  %i.bk = icmp ult ptr %i.bi, %i.bj
  %.neg.i = select i1 %i.bk, i64 -1, i64 1
  br label %bb.c

bb.c:                                             ; preds = %.lr.ph.i, %_ZN13DataSourceTab19FrameByteAnnotationD2Ev.exit.i
  %i.bl = phi ptr [ %i.bj, %.lr.ph.i ], [ %i.bv, %_ZN13DataSourceTab19FrameByteAnnotationD2Ev.exit.i ]
  %i.bm = phi ptr [ %i.bh, %.lr.ph.i ], [ %i.bu, %_ZN13DataSourceTab19FrameByteAnnotationD2Ev.exit.i ]
  %i.bn = getelementptr [56 x i8], ptr %i.bl, i64 %.neg.i
  store ptr %i.bn, ptr %i.bm, align 8
  %i.bo = load ptr, ptr %3, align 8
  %i.bp = load ptr, ptr %i.bo, align 8
  %i.bq = getelementptr i8, ptr %i.bp, i64 -24    ; 2 uses
  %i.br = load ptr, ptr %i.bq, align 8            ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.br, null
  br i1 %.not.i.i.i.i.i, label %_ZN13DataSourceTab19FrameByteAnnotationD2Ev.exit.i, label %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i.i.i

_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i.i.i:  ; preds = %bb.c
  %i.bs = atomicrmw sub ptr %i.br, i32 1 acq_rel, align 4
  %.not.i.i.i.i4 = icmp eq i32 %i.bs, 1
  br i1 %.not.i.i.i.i4, label %bb.d, label %_ZN13DataSourceTab19FrameByteAnnotationD2Ev.exit.i

bb.d:                                             ; preds = %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i.i.i
  %i.bt = load ptr, ptr %i.bq, align 8
  call void @_ZN10QArrayData10deallocateEPS_xx(ptr noundef %i.bt, i64 noundef 2, i64 noundef 8) #26
  br label %_ZN13DataSourceTab19FrameByteAnnotationD2Ev.exit.i

_ZN13DataSourceTab19FrameByteAnnotationD2Ev.exit.i: ; preds = %bb.d, %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i.i.i, %bb.c
  %i.bu = load ptr, ptr %3, align 8               ; 2 uses
  %i.bv = load ptr, ptr %i.bu, align 8            ; 2 uses
  %i.bw = load ptr, ptr %i.a, align 8
  %.not.i = icmp eq ptr %i.bv, %i.bw
  br i1 %.not.i, label %_ZZN9QtPrivate30q_relocate_overlap_n_left_moveISt16reverse_iteratorIPN13DataSourceTab19FrameByteAnnotationEExEEvT_T0_S6_EN10DestructorD2Ev.exit, label %bb.c, !llvm.loop !160

_ZZN9QtPrivate30q_relocate_overlap_n_left_moveISt16reverse_iteratorIPN13DataSourceTab19FrameByteAnnotationEExEEvT_T0_S6_EN10DestructorD2Ev.exit: ; preds = %_ZN13DataSourceTab19FrameByteAnnotationD2Ev.exit.i, %._crit_edge18
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #26
  ret void
}

; Function Attrs: null_pointer_is_valid
declare void @_Z23qt_qFindChildren_helperPK7QObjectRK7QStringRK11QMetaObjectP5QListIPvE6QFlagsIN2Qt15FindChildOptionEE(ptr noundef, ptr noundef align 8 dereferenceable(24), ptr noundef align 8 dereferenceable(56), ptr noundef, i32) local_unnamed_addr #1

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smax.i64(i64, i64) #22

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #23

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smin.i64(i64, i64) #22

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.abs.i32(i32, i1 immarg) #24

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #22

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umin.i32(i32, i32) #22

attributes #0 = { mustprogress null_pointer_is_valid sspstrong uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "probe-stack"="inline-asm" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { null_pointer_is_valid "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { nounwind null_pointer_is_valid "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nobuiltin null_pointer_is_valid allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nobuiltin nounwind null_pointer_is_valid "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { inlinehint mustprogress nounwind null_pointer_is_valid sspstrong uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "probe-stack"="inline-asm" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #8 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "probe-stack"="inline-asm" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "probe-stack"="inline-asm" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { mustprogress nocallback nofree nosync nounwind null_pointer_is_valid willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { inlinehint nounwind null_pointer_is_valid sspstrong uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "probe-stack"="inline-asm" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { null_pointer_is_valid sspstrong uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "probe-stack"="inline-asm" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { mustprogress nounwind null_pointer_is_valid sspstrong uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "probe-stack"="inline-asm" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { noinline noreturn nounwind null_pointer_is_valid sspstrong uwtable "no-trapping-math"="true" "probe-stack"="inline-asm" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #15 = { cold nofree noreturn }
attributes #16 = { mustprogress nofree nounwind null_pointer_is_valid willreturn memory(read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #17 = { inlinehint mustprogress null_pointer_is_valid sspstrong uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "probe-stack"="inline-asm" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #18 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "probe-stack"="inline-asm" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #19 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #20 = { cold noreturn null_pointer_is_valid "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #21 = { mustprogress noinline null_pointer_is_valid sspstrong uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "probe-stack"="inline-asm" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #22 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #23 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #24 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #25 = { builtin allocsize(0) }
attributes #26 = { nounwind }
attributes #27 = { builtin nounwind }
attributes #28 = { noreturn nounwind }
attributes #29 = { nounwind willreturn memory(read) }
attributes #30 = { cold noreturn }

!llvm.module.flags = !{!0, !1, !2, !3, !4}
!llvm.ident = !{!5}

!0 = !{i32 8, !"cf-protection-return", i32 1}
!1 = !{i32 8, !"cf-protection-branch", i32 1}
!2 = !{i32 4, !"probe-stack", !"inline-asm"}
!3 = !{i32 8, !"PIC Level", i32 2}
!4 = !{i32 7, !"uwtable", i32 2}
!5 = !{!"Ubuntu clang version 24.0.0 (++20260805082234+d31b11c260ae-1~exp1~20260805082243.1767)"}
!6 = !{!7}
!7 = distinct !{!7, !8, !"_ZN7QObject7connectIM12ThemeManagerFvvEZN13DataSourceTabC1EP7QWidgetP12epan_dissectE3$_0EENSt9enable_ifIXaaeqsr9QtPrivate15FunctionPointerIT0_EE13ArgumentCountngLi1Entsr3stdE16is_convertible_vISB_PKcEEN11QMetaObject10ConnectionEE4typeEPKN9QtPrivate15FunctionPointerIT_E6ObjectESK_PKS_SB_N2Qt14ConnectionTypeE: argument 0"}
!8 = distinct !{!8, !"_ZN7QObject7connectIM12ThemeManagerFvvEZN13DataSourceTabC1EP7QWidgetP12epan_dissectE3$_0EENSt9enable_ifIXaaeqsr9QtPrivate15FunctionPointerIT0_EE13ArgumentCountngLi1Entsr3stdE16is_convertible_vISB_PKcEEN11QMetaObject10ConnectionEE4typeEPKN9QtPrivate15FunctionPointerIT_E6ObjectESK_PKS_SB_N2Qt14ConnectionTypeE"}
!9 = !{!10}
!10 = distinct !{!10, !11, !"_ZNK7QWidget11fontMetricsEv: argument 0"}
!11 = distinct !{!11, !"_ZNK7QWidget11fontMetricsEv"}
!12 = !{i8 0, i8 2}
!13 = !{}
!14 = !{!15}
!15 = distinct !{!15, !16, !"_ZN7QObject7connectIM15MainApplicationFvvEZN13DataSourceTabC1EP7QWidgetP12epan_dissectE3$_1EENSt9enable_ifIXaaeqsr9QtPrivate15FunctionPointerIT0_EE13ArgumentCountngLi1Entsr3stdE16is_convertible_vISB_PKcEEN11QMetaObject10ConnectionEE4typeEPKN9QtPrivate15FunctionPointerIT_E6ObjectESK_PKS_SB_N2Qt14ConnectionTypeE: argument 0"}
!16 = distinct !{!16, !"_ZN7QObject7connectIM15MainApplicationFvvEZN13DataSourceTabC1EP7QWidgetP12epan_dissectE3$_1EENSt9enable_ifIXaaeqsr9QtPrivate15FunctionPointerIT0_EE13ArgumentCountngLi1Entsr3stdE16is_convertible_vISB_PKcEEN11QMetaObject10ConnectionEE4typeEPKN9QtPrivate15FunctionPointerIT_E6ObjectESK_PKS_SB_N2Qt14ConnectionTypeE"}
!17 = distinct !{!17, !18}
!18 = !{!"llvm.loop.mustprogress"}
!19 = !{!20}
!20 = distinct !{!20, !21, !"_ZN7QObject7connectIM13DataSourceTabFvP16FieldInformationEM10MainWindowFvS3_EEEN11QMetaObject10ConnectionEPKN9QtPrivate15FunctionPointerIT_E6ObjectESD_PKNSC_IT0_E6ObjectESI_N2Qt14ConnectionTypeE: argument 0"}
!21 = distinct !{!21, !"_ZN7QObject7connectIM13DataSourceTabFvP16FieldInformationEM10MainWindowFvS3_EEEN11QMetaObject10ConnectionEPKN9QtPrivate15FunctionPointerIT_E6ObjectESD_PKNSC_IT0_E6ObjectESI_N2Qt14ConnectionTypeE"}
!22 = !{!23}
!23 = distinct !{!23, !24, !"_ZN7QObject7connectIM13DataSourceTabFvP16FieldInformationEM10MainWindowFvS3_EEEN11QMetaObject10ConnectionEPKN9QtPrivate15FunctionPointerIT_E6ObjectESD_PKNSC_IT0_E6ObjectESI_N2Qt14ConnectionTypeE: argument 0"}
!24 = distinct !{!24, !"_ZN7QObject7connectIM13DataSourceTabFvP16FieldInformationEM10MainWindowFvS3_EEEN11QMetaObject10ConnectionEPKN9QtPrivate15FunctionPointerIT_E6ObjectESD_PKNSC_IT0_E6ObjectESI_N2Qt14ConnectionTypeE"}
!25 = !{!26}
!26 = distinct !{!26, !27, !"_ZN7QObject7connectIM10MainWindowFv5QListIiEEM13DataSourceTabFvS3_EEEN11QMetaObject10ConnectionEPKN9QtPrivate15FunctionPointerIT_E6ObjectESD_PKNSC_IT0_E6ObjectESI_N2Qt14ConnectionTypeE: argument 0"}
!27 = distinct !{!27, !"_ZN7QObject7connectIM10MainWindowFv5QListIiEEM13DataSourceTabFvS3_EEEN11QMetaObject10ConnectionEPKN9QtPrivate15FunctionPointerIT_E6ObjectESD_PKNSC_IT0_E6ObjectESI_N2Qt14ConnectionTypeE"}
!28 = !{!29}
!29 = distinct !{!29, !30, !"_ZN7QObject7connectIM10MainWindowFvP13_capture_fileEM13DataSourceTabFvS3_EEEN11QMetaObject10ConnectionEPKN9QtPrivate15FunctionPointerIT_E6ObjectESD_PKNSC_IT0_E6ObjectESI_N2Qt14ConnectionTypeE: argument 0"}
!30 = distinct !{!30, !"_ZN7QObject7connectIM10MainWindowFvP13_capture_fileEM13DataSourceTabFvS3_EEEN11QMetaObject10ConnectionEPKN9QtPrivate15FunctionPointerIT_E6ObjectESD_PKNSC_IT0_E6ObjectESI_N2Qt14ConnectionTypeE"}
!31 = !{!32}
!32 = distinct !{!32, !33, !"_ZN7QObject7connectIM10MainWindowFvP16FieldInformationEM13DataSourceTabFvS3_EEEN11QMetaObject10ConnectionEPKN9QtPrivate15FunctionPointerIT_E6ObjectESD_PKNSC_IT0_E6ObjectESI_N2Qt14ConnectionTypeE: argument 0"}
!33 = distinct !{!33, !"_ZN7QObject7connectIM10MainWindowFvP16FieldInformationEM13DataSourceTabFvS3_EEEN11QMetaObject10ConnectionEPKN9QtPrivate15FunctionPointerIT_E6ObjectESD_PKNSC_IT0_E6ObjectESI_N2Qt14ConnectionTypeE"}
!34 = !{!35}
!35 = distinct !{!35, !36, !"_ZN7QObject7connectIM10MainWindowFviEM13DataSourceTabFviEEEN11QMetaObject10ConnectionEPKN9QtPrivate15FunctionPointerIT_E6ObjectESB_PKNSA_IT0_E6ObjectESG_N2Qt14ConnectionTypeE: argument 0"}
!36 = distinct !{!36, !"_ZN7QObject7connectIM10MainWindowFviEM13DataSourceTabFviEEEN11QMetaObject10ConnectionEPKN9QtPrivate15FunctionPointerIT_E6ObjectESB_PKNSA_IT0_E6ObjectESG_N2Qt14ConnectionTypeE"}
!37 = distinct !{!37, !18}
!38 = !{!39}
!39 = distinct !{!39, !40, !"_ZNK7QObject12findChildrenIP18BaseDataSourceViewEE5QListIT_ERK7QString6QFlagsIN2Qt15FindChildOptionEE: argument 0"}
!40 = distinct !{!40, !"_ZNK7QObject12findChildrenIP18BaseDataSourceViewEE5QListIT_ERK7QString6QFlagsIN2Qt15FindChildOptionEE"}
!41 = distinct !{null, null}
!42 = distinct !{!42, !18}
!43 = distinct !{!43, !18}
!44 = !{!45}
!45 = distinct !{!45, !46, !"_ZNK7QObject12findChildrenIP17HexDataSourceViewEE5QListIT_E6QFlagsIN2Qt15FindChildOptionEE: argument 0"}
!46 = distinct !{!46, !"_ZNK7QObject12findChildrenIP17HexDataSourceViewEE5QListIT_E6QFlagsIN2Qt15FindChildOptionEE"}
!47 = !{!48}
!48 = distinct !{!48, !49, !"_ZN7QObject7connectIM13DataSourceTabFvvEM18BaseDataSourceViewFvvEEEN11QMetaObject10ConnectionEPKN9QtPrivate15FunctionPointerIT_E6ObjectESB_PKNSA_IT0_E6ObjectESG_N2Qt14ConnectionTypeE: argument 0"}
!49 = distinct !{!49, !"_ZN7QObject7connectIM13DataSourceTabFvvEM18BaseDataSourceViewFvvEEEN11QMetaObject10ConnectionEPKN9QtPrivate15FunctionPointerIT_E6ObjectESB_PKNSA_IT0_E6ObjectESG_N2Qt14ConnectionTypeE"}
!50 = !{!51}
!51 = distinct !{!51, !52, !"_ZN7QObject7connectIM18BaseDataSourceViewFviEM13DataSourceTabFviEEEN11QMetaObject10ConnectionEPKN9QtPrivate15FunctionPointerIT_E6ObjectESB_PKNSA_IT0_E6ObjectESG_N2Qt14ConnectionTypeE: argument 0"}
!52 = distinct !{!52, !"_ZN7QObject7connectIM18BaseDataSourceViewFviEM13DataSourceTabFviEEEN11QMetaObject10ConnectionEPKN9QtPrivate15FunctionPointerIT_E6ObjectESB_PKNSA_IT0_E6ObjectESG_N2Qt14ConnectionTypeE"}
!53 = !{!54}
!54 = distinct !{!54, !55, !"_ZN7QObject7connectIM18BaseDataSourceViewFviEM13DataSourceTabFviEEEN11QMetaObject10ConnectionEPKN9QtPrivate15FunctionPointerIT_E6ObjectESB_PKNSA_IT0_E6ObjectESG_N2Qt14ConnectionTypeE: argument 0"}
!55 = distinct !{!55, !"_ZN7QObject7connectIM18BaseDataSourceViewFviEM13DataSourceTabFviEEEN11QMetaObject10ConnectionEPKN9QtPrivate15FunctionPointerIT_E6ObjectESB_PKNSA_IT0_E6ObjectESG_N2Qt14ConnectionTypeE"}
!56 = !{!57}
!57 = distinct !{!57, !58, !"_ZN7QObject7connectIM17HexDataSourceViewFvvEM13DataSourceTabFvvEEEN11QMetaObject10ConnectionEPKN9QtPrivate15FunctionPointerIT_E6ObjectESB_PKNSA_IT0_E6ObjectESG_N2Qt14ConnectionTypeE: argument 0"}
!58 = distinct !{!58, !"_ZN7QObject7connectIM17HexDataSourceViewFvvEM13DataSourceTabFvvEEEN11QMetaObject10ConnectionEPKN9QtPrivate15FunctionPointerIT_E6ObjectESB_PKNSA_IT0_E6ObjectESG_N2Qt14ConnectionTypeE"}
!59 = !{!60}
!60 = distinct !{!60, !61, !"_ZN7QObject7connectIM13DataSourceTabFvvEM17HexDataSourceViewFvvEEEN11QMetaObject10ConnectionEPKN9QtPrivate15FunctionPointerIT_E6ObjectESB_PKNSA_IT0_E6ObjectESG_N2Qt14ConnectionTypeE: argument 0"}
!61 = distinct !{!61, !"_ZN7QObject7connectIM13DataSourceTabFvvEM17HexDataSourceViewFvvEEEN11QMetaObject10ConnectionEPKN9QtPrivate15FunctionPointerIT_E6ObjectESB_PKNSA_IT0_E6ObjectESG_N2Qt14ConnectionTypeE"}
!62 = !{!63}
!63 = distinct !{!63, !64, !"_ZN7QObject7connectIM13DataSourceTabFvvEM17HexDataSourceViewFvvEEEN11QMetaObject10ConnectionEPKN9QtPrivate15FunctionPointerIT_E6ObjectESB_PKNSA_IT0_E6ObjectESG_N2Qt14ConnectionTypeE: argument 0"}
!64 = distinct !{!64, !"_ZN7QObject7connectIM13DataSourceTabFvvEM17HexDataSourceViewFvvEEEN11QMetaObject10ConnectionEPKN9QtPrivate15FunctionPointerIT_E6ObjectESB_PKNSA_IT0_E6ObjectESG_N2Qt14ConnectionTypeE"}
!65 = !{!66}
!66 = distinct !{!66, !67, !"_ZN7QObject7connectIM17HexDataSourceViewFvvEM13DataSourceTabFvvEEEN11QMetaObject10ConnectionEPKN9QtPrivate15FunctionPointerIT_E6ObjectESB_PKNSA_IT0_E6ObjectESG_N2Qt14ConnectionTypeE: argument 0"}
!67 = distinct !{!67, !"_ZN7QObject7connectIM17HexDataSourceViewFvvEM13DataSourceTabFvvEEEN11QMetaObject10ConnectionEPKN9QtPrivate15FunctionPointerIT_E6ObjectESB_PKNSA_IT0_E6ObjectESG_N2Qt14ConnectionTypeE"}
!68 = !{!69}
!69 = distinct !{!69, !70, !"_ZN7QObject7connectIM17HexDataSourceViewFvvEM13DataSourceTabFvvEEEN11QMetaObject10ConnectionEPKN9QtPrivate15FunctionPointerIT_E6ObjectESB_PKNSA_IT0_E6ObjectESG_N2Qt14ConnectionTypeE: argument 0"}
!70 = distinct !{!70, !"_ZN7QObject7connectIM17HexDataSourceViewFvvEM13DataSourceTabFvvEEEN11QMetaObject10ConnectionEPKN9QtPrivate15FunctionPointerIT_E6ObjectESB_PKNSA_IT0_E6ObjectESG_N2Qt14ConnectionTypeE"}
!71 = !{!72}
!72 = distinct !{!72, !73, !"_ZN7QObject7connectIM17HexDataSourceViewFvvEM13DataSourceTabFvvEEEN11QMetaObject10ConnectionEPKN9QtPrivate15FunctionPointerIT_E6ObjectESB_PKNSA_IT0_E6ObjectESG_N2Qt14ConnectionTypeE: argument 0"}
!73 = distinct !{!73, !"_ZN7QObject7connectIM17HexDataSourceViewFvvEM13DataSourceTabFvvEEEN11QMetaObject10ConnectionEPKN9QtPrivate15FunctionPointerIT_E6ObjectESB_PKNSA_IT0_E6ObjectESG_N2Qt14ConnectionTypeE"}
!74 = !{!75}
!75 = distinct !{!75, !76, !"_ZN7QObject7connectIM17HexDataSourceViewFviEM13DataSourceTabFviEEEN11QMetaObject10ConnectionEPKN9QtPrivate15FunctionPointerIT_E6ObjectESB_PKNSA_IT0_E6ObjectESG_N2Qt14ConnectionTypeE: argument 0"}
!76 = distinct !{!76, !"_ZN7QObject7connectIM17HexDataSourceViewFviEM13DataSourceTabFviEEEN11QMetaObject10ConnectionEPKN9QtPrivate15FunctionPointerIT_E6ObjectESB_PKNSA_IT0_E6ObjectESG_N2Qt14ConnectionTypeE"}
!77 = !{!78}
!78 = distinct !{!78, !79, !"_ZN7QObject7connectIM17HexDataSourceViewFviEM13DataSourceTabFviEEEN11QMetaObject10ConnectionEPKN9QtPrivate15FunctionPointerIT_E6ObjectESB_PKNSA_IT0_E6ObjectESG_N2Qt14ConnectionTypeE: argument 0"}
!79 = distinct !{!79, !"_ZN7QObject7connectIM17HexDataSourceViewFviEM13DataSourceTabFviEEEN11QMetaObject10ConnectionEPKN9QtPrivate15FunctionPointerIT_E6ObjectESB_PKNSA_IT0_E6ObjectESG_N2Qt14ConnectionTypeE"}
!80 = !{!81}
!81 = distinct !{!81, !82, !"_ZN7QObject7connectIM17HexDataSourceViewFvvEM13DataSourceTabFvvEEEN11QMetaObject10ConnectionEPKN9QtPrivate15FunctionPointerIT_E6ObjectESB_PKNSA_IT0_E6ObjectESG_N2Qt14ConnectionTypeE: argument 0"}
!82 = distinct !{!82, !"_ZN7QObject7connectIM17HexDataSourceViewFvvEM13DataSourceTabFvvEEEN11QMetaObject10ConnectionEPKN9QtPrivate15FunctionPointerIT_E6ObjectESB_PKNSA_IT0_E6ObjectESG_N2Qt14ConnectionTypeE"}
!83 = !{ptr @_ZN13DataSourceTab23highlightedFieldChangedEP16FieldInformation}
!84 = distinct !{!84, !18}
!85 = distinct !{!85, !18}
!86 = !{!87}
!87 = distinct !{!87, !88, !"_ZNK7QObject12findChildrenIP17HexDataSourceViewEE5QListIT_E6QFlagsIN2Qt15FindChildOptionEE: argument 0"}
!88 = distinct !{!88, !"_ZNK7QObject12findChildrenIP17HexDataSourceViewEE5QListIT_E6QFlagsIN2Qt15FindChildOptionEE"}
!89 = distinct !{!89, !18}
!90 = !{!91}
!91 = distinct !{!91, !92, !"_ZN7QObject7connectIM14QPlainTextEditFvvEZN12_GLOBAL__N_120AnnotationEditDialogC1EP7QWidgetEUlvE_EENSt9enable_ifIXaaeqsr9QtPrivate15FunctionPointerIT0_EE13ArgumentCountngLi1Entsr3stdE16is_convertible_vISA_PKcEEN11QMetaObject10ConnectionEE4typeEPKN9QtPrivate15FunctionPointerIT_E6ObjectESJ_PKS_SA_N2Qt14ConnectionTypeE: argument 0"}
!92 = distinct !{!92, !"_ZN7QObject7connectIM14QPlainTextEditFvvEZN12_GLOBAL__N_120AnnotationEditDialogC1EP7QWidgetEUlvE_EENSt9enable_ifIXaaeqsr9QtPrivate15FunctionPointerIT0_EE13ArgumentCountngLi1Entsr3stdE16is_convertible_vISA_PKcEEN11QMetaObject10ConnectionEE4typeEPKN9QtPrivate15FunctionPointerIT_E6ObjectESJ_PKS_SA_N2Qt14ConnectionTypeE"}
!93 = !{!94}
!94 = distinct !{!94, !95, !"_ZN7QObject7connectIM16QDialogButtonBoxFvvEM7QDialogFvvEEEN11QMetaObject10ConnectionEPKN9QtPrivate15FunctionPointerIT_E6ObjectESB_PKNSA_IT0_E6ObjectESG_N2Qt14ConnectionTypeE: argument 0"}
!95 = distinct !{!95, !"_ZN7QObject7connectIM16QDialogButtonBoxFvvEM7QDialogFvvEEEN11QMetaObject10ConnectionEPKN9QtPrivate15FunctionPointerIT_E6ObjectESB_PKNSA_IT0_E6ObjectESG_N2Qt14ConnectionTypeE"}
!96 = !{!97}
!97 = distinct !{!97, !98, !"_ZN7QObject7connectIM16QDialogButtonBoxFvvEM7QDialogFvvEEEN11QMetaObject10ConnectionEPKN9QtPrivate15FunctionPointerIT_E6ObjectESB_PKNSA_IT0_E6ObjectESG_N2Qt14ConnectionTypeE: argument 0"}
!98 = distinct !{!98, !"_ZN7QObject7connectIM16QDialogButtonBoxFvvEM7QDialogFvvEEEN11QMetaObject10ConnectionEPKN9QtPrivate15FunctionPointerIT_E6ObjectESB_PKNSA_IT0_E6ObjectESG_N2Qt14ConnectionTypeE"}
!99 = !{!100}
!100 = distinct !{!100, !101, !"_ZN7QObject7connectIM15QAbstractButtonFvbEZN12_GLOBAL__N_120AnnotationEditDialogC1EP7QWidgetEUlvE0_EENSt9enable_ifIXaaeqsr9QtPrivate15FunctionPointerIT0_EE13ArgumentCountngLi1Entsr3stdE16is_convertible_vISA_PKcEEN11QMetaObject10ConnectionEE4typeEPKN9QtPrivate15FunctionPointerIT_E6ObjectESJ_PKS_SA_N2Qt14ConnectionTypeE: argument 0"}
!101 = distinct !{!101, !"_ZN7QObject7connectIM15QAbstractButtonFvbEZN12_GLOBAL__N_120AnnotationEditDialogC1EP7QWidgetEUlvE0_EENSt9enable_ifIXaaeqsr9QtPrivate15FunctionPointerIT0_EE13ArgumentCountngLi1Entsr3stdE16is_convertible_vISA_PKcEEN11QMetaObject10ConnectionEE4typeEPKN9QtPrivate15FunctionPointerIT_E6ObjectESJ_PKS_SA_N2Qt14ConnectionTypeE"}
!102 = !{!103}
!103 = distinct !{!103, !104, !"_ZNK14QPlainTextEdit11toPlainTextEv: argument 0"}
!104 = distinct !{!104, !"_ZNK14QPlainTextEdit11toPlainTextEv"}
!105 = distinct !{!105, !18}
!106 = !{!107}
!107 = distinct !{!107, !108, !"_ZNK7QObject12findChildrenIP18BaseDataSourceViewEE5QListIT_E6QFlagsIN2Qt15FindChildOptionEE: argument 0"}
!108 = distinct !{!108, !"_ZNK7QObject12findChildrenIP18BaseDataSourceViewEE5QListIT_E6QFlagsIN2Qt15FindChildOptionEE"}
!109 = distinct !{!109, !18}
!110 = !{!111, !113}
!111 = distinct !{!111, !112, !"_ZNK11QStringView3argIJR7QStringS2_EEES1_DpOT_: argument 0"}
!112 = distinct !{!112, !"_ZNK11QStringView3argIJR7QStringS2_EEES1_DpOT_"}
!113 = distinct !{!113, !114, !"_ZNK7QString3argIJRS_S1_EEENSt9enable_ifIXaagesZT_Li2Esr3std7is_sameIN9QtPrivate8BoolListIJXspsr33is_convertible_to_view_or_qstringIT_EE5valueELb1EEEENS4_IJLb1EXspsr33is_convertible_to_view_or_qstringIS5_EE5valueEEEEEE5valueES_E4typeEDpOS5_: argument 0"}
!114 = distinct !{!114, !"_ZNK7QString3argIJRS_S1_EEENSt9enable_ifIXaagesZT_Li2Esr3std7is_sameIN9QtPrivate8BoolListIJXspsr33is_convertible_to_view_or_qstringIT_EE5valueELb1EEEENS4_IJLb1EXspsr33is_convertible_to_view_or_qstringIS5_EE5valueEEEEEE5valueES_E4typeEDpOS5_"}
!115 = !{!116}
!116 = distinct !{!116, !117, !"_ZN9QtPrivate16qStringLikeToArgERK7QString: argument 0"}
!117 = distinct !{!117, !"_ZN9QtPrivate16qStringLikeToArgERK7QString"}
!118 = !{!116, !111, !113}
!119 = !{!120}
!120 = distinct !{!120, !121, !"_ZN9QtPrivate16qStringLikeToArgERK7QString: argument 0"}
!121 = distinct !{!121, !"_ZN9QtPrivate16qStringLikeToArgERK7QString"}
!122 = !{!120, !111, !113}
!123 = !{!124, !113}
!124 = distinct !{!124, !125, !"_ZN9QtPrivate20argToQStringDispatchI11QStringViewJNS_14QStringViewArgES2_EEE7QStringT_DpRKT0_: argument 0"}
!125 = distinct !{!125, !"_ZN9QtPrivate20argToQStringDispatchI11QStringViewJNS_14QStringViewArgES2_EEE7QStringT_DpRKT0_"}
!126 = !{!127}
!127 = distinct !{!127, !128, !"_ZNK14QPlainTextEdit11toPlainTextEv: argument 0"}
!128 = distinct !{!128, !"_ZNK14QPlainTextEdit11toPlainTextEv"}
!129 = distinct !{null, null}
!130 = distinct !{null}
!131 = distinct !{null}
!132 = distinct !{null, null}
!133 = distinct !{null, null}
!134 = distinct !{null, null}
!135 = distinct !{null, null}
!136 = distinct !{null, null}
!137 = distinct !{null, null}
!138 = distinct !{null, null}
!139 = distinct !{!139, !18}
!140 = distinct !{!140, !18}
!141 = distinct !{!141, !18}
!142 = distinct !{!142, !18}
!143 = distinct !{!143, !18}
!144 = distinct !{!144, !18}
!145 = distinct !{!145, !18}
!146 = distinct !{!146, !18}
!147 = distinct !{!147, !18}
!148 = distinct !{!148, !18}
!149 = distinct !{!149, !18}
!150 = distinct !{!150, !18}
!151 = distinct !{!151, !18}
!152 = distinct !{!152, !18}
!153 = distinct !{!153, !18}
!154 = distinct !{!154, !18}
!155 = distinct !{!155, !18}
!156 = distinct !{!156, !18}
!157 = distinct !{!157, !18}
!158 = distinct !{!158, !18}
!159 = distinct !{!159, !18}
!160 = distinct !{!160, !18}
end_hunk_2

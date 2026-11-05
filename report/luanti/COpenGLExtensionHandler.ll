Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/luanti/original/COpenGLExtensionHandler?download=true
inline.NumInlined: 862
inline.NumDeleted: 35
begin_hunk_0_@_ZN5video23COpenGLExtensionHandler14initExtensionsEPNS_15IContextManagerEb:bb.a
  br label %bb.rz

bb.qi:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1790
  %i.dzg = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit2306

bb.qj:                                            ; preds = %.noexc1793
  %i.dzh = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.dzi = load ptr, ptr %160, align 8, !tbaa !43 ; 2 uses
  %i.dzj = icmp eq ptr %i.dzi, %i.cnc
  br i1 %i.dzj, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit2306, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i2304

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i2304: ; preds = %bb.qj
  %i.dzk = load i64, ptr %i.cnc, align 8, !tbaa !8
  %i.dzl = add i64 %i.dzk, 1
  call void @_ZdlPvm(ptr noundef %i.dzi, i64 noundef %i.dzl) #16
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit2306

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit2306: ; preds = %bb.qj, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i2304, %bb.qi
  %.pn683 = phi { ptr, i32 } [ %i.dzg, %bb.qi ], [ %i.dzh, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i2304 ], [ %i.dzh, %bb.qj ]
  call void @llvm.lifetime.end.p0(ptr nonnull %160) #13
  br label %bb.rz

bb.qk:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1797
  %i.dzm = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit2309

bb.ql:                                            ; preds = %.noexc1800
  %i.dzn = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.dzo = load ptr, ptr %161, align 8, !tbaa !43 ; 2 uses
  %i.dzp = icmp eq ptr %i.dzo, %i.cnr
  br i1 %i.dzp, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit2309, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i2307

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i2307: ; preds = %bb.ql
  %i.dzq = load i64, ptr %i.cnr, align 8, !tbaa !8
  %i.dzr = add i64 %i.dzq, 1
  call void @_ZdlPvm(ptr noundef %i.dzo, i64 noundef %i.dzr) #16
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit2309

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit2309: ; preds = %bb.ql, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i2307, %bb.qk
  %.pn685 = phi { ptr, i32 } [ %i.dzm, %bb.qk ], [ %i.dzn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i2307 ], [ %i.dzn, %bb.ql ]
  call void @llvm.lifetime.end.p0(ptr nonnull %161) #13
  br label %bb.rz

bb.qm:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1804
  %i.dzs = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit2312

bb.qn:                                            ; preds = %.noexc1807
  %i.dzt = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.dzu = load ptr, ptr %162, align 8, !tbaa !43 ; 2 uses
  %i.dzv = icmp eq ptr %i.dzu, %i.cog
  br i1 %i.dzv, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit2312, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i2310

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i2310: ; preds = %bb.qn
  %i.dzw = load i64, ptr %i.cog, align 8, !tbaa !8
  %i.dzx = add i64 %i.dzw, 1
  call void @_ZdlPvm(ptr noundef %i.dzu, i64 noundef %i.dzx) #16
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit2312

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit2312: ; preds = %bb.qn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i2310, %bb.qm
  %.pn687 = phi { ptr, i32 } [ %i.dzs, %bb.qm ], [ %i.dzt, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i2310 ], [ %i.dzt, %bb.qn ]
  call void @llvm.lifetime.end.p0(ptr nonnull %162) #13
  br label %bb.rz

bb.qo:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1811
  %i.dzy = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit2315

bb.qp:                                            ; preds = %.noexc1814
  %i.dzz = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.eaa = load ptr, ptr %163, align 8, !tbaa !43 ; 2 uses
  %i.eab = icmp eq ptr %i.eaa, %i.cov
  br i1 %i.eab, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit2315, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i2313

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i2313: ; preds = %bb.qp
  %i.eac = load i64, ptr %i.cov, align 8, !tbaa !8
  %i.ead = add i64 %i.eac, 1
  call void @_ZdlPvm(ptr noundef %i.eaa, i64 noundef %i.ead) #16
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit2315

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit2315: ; preds = %bb.qp, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i2313, %bb.qo
  %.pn689 = phi { ptr, i32 } [ %i.dzy, %bb.qo ], [ %i.dzz, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i2313 ], [ %i.dzz, %bb.qp ]
  call void @llvm.lifetime.end.p0(ptr nonnull %163) #13
  br label %bb.rz

bb.qq:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1818
  %i.eae = landingpad { ptr, i32 }
          cleanup
  %i.eaf = load ptr, ptr %164, align 8, !tbaa !43 ; 2 uses
  %i.eag = icmp eq ptr %i.eaf, %i.cpk
  br i1 %i.eag, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit2318, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i2316

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i2316: ; preds = %bb.qq
  %i.eah = load i64, ptr %i.cpk, align 8, !tbaa !8
  %i.eai = add i64 %i.eah, 1
  call void @_ZdlPvm(ptr noundef %i.eaf, i64 noundef %i.eai) #16
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit2318

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit2318: ; preds = %bb.qq, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i2316
  call void @llvm.lifetime.end.p0(ptr nonnull %164) #13
  br label %bb.rz

bb.qr:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1825
  %i.eaj = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit2321

bb.qs:                                            ; preds = %.noexc1828
  %i.eak = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.eal = load ptr, ptr %165, align 8, !tbaa !43 ; 2 uses
  %i.eam = icmp eq ptr %i.eal, %i.cpw
  br i1 %i.eam, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit2321, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i2319

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i2319: ; preds = %bb.qs
  %i.ean = load i64, ptr %i.cpw, align 8, !tbaa !8
  %i.eao = add i64 %i.ean, 1
  call void @_ZdlPvm(ptr noundef %i.eal, i64 noundef %i.eao) #16
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit2321

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit2321: ; preds = %bb.qs, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i2319, %bb.qr
  %.pn693 = phi { ptr, i32 } [ %i.eaj, %bb.qr ], [ %i.eak, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i2319 ], [ %i.eak, %bb.qs ]
  call void @llvm.lifetime.end.p0(ptr nonnull %165) #13
  br label %bb.rz

bb.qt:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1832, %bb.fv
  call void @glGetIntegerv(i32 noundef 34018, ptr noundef nonnull %i.dq)
  %i.eap = load i32, ptr %i.dq, align 4, !tbaa !208
  %i.eaq = trunc i32 %i.eap to i8
  %i.ear = getelementptr inbounds nuw i8, ptr %0, i64 556
  store i8 %i.eaq, ptr %i.ear, align 4, !tbaa !30
  %.pre = load i16, ptr %i.ef, align 4, !tbaa !27
  %i.eas = icmp ugt i16 %.pre, 199
  br i1 %i.eas, label %bb.qu, label %.thread3157

.thread3157:                                      ; preds = %bb.fv, %bb.qt
  %i.eat = getelementptr inbounds nuw i8, ptr %0, i64 238
  %i.eau = load i8, ptr %i.eat, align 2, !tbaa !21, !range !24, !noundef !25
  %i.eav = trunc nuw i8 %i.eau to i1
  br i1 %i.eav, label %bb.qu, label %bb.qv

bb.qu:                                            ; preds = %.thread3157, %bb.qt
  store i32 0, ptr %i.dq, align 4, !tbaa !208
  call void @glGetIntegerv(i32 noundef 35661, ptr noundef nonnull %i.dq)
  %i.eaw = getelementptr inbounds nuw i8, ptr %0, i64 556 ; 2 uses
  %i.eax = load i32, ptr %i.dq, align 4, !tbaa !208
  %i.eay = trunc i32 %i.eax to i8
  %i.eaz = load i8, ptr %i.eaw, align 4, !tbaa !8
  %.sroa.speculated2324 = call i8 @llvm.umax.i8(i8 %i.eaz, i8 %i.eay)
  store i8 %.sroa.speculated2324, ptr %i.eaw, align 4, !tbaa !30
  br label %bb.qv

bb.qv:                                            ; preds = %bb.qu, %.thread3157
  %i.eba = getelementptr inbounds nuw i8, ptr %0, i64 335
  %i.ebb = load i8, ptr %i.eba, align 1, !tbaa !21, !range !24, !noundef !25
  %i.ebc = trunc nuw i8 %i.ebb to i1
  br i1 %i.ebc, label %bb.qw, label %bb.qx

bb.qw:                                            ; preds = %bb.qv
  call void @glGetIntegerv(i32 noundef 34047, ptr noundef nonnull %i.dq)
  %i.ebd = load i32, ptr %i.dq, align 4, !tbaa !208
  %i.ebe = trunc i32 %i.ebd to i8
  %i.ebf = getelementptr inbounds nuw i8, ptr %0, i64 2
  store i8 %i.ebe, ptr %i.ebf, align 2, !tbaa !209
  br label %bb.qx

bb.qx:                                            ; preds = %bb.qw, %bb.qv
  %i.ebg = load i16, ptr %i.ef, align 4, !tbaa !27
  %i.ebh = icmp ugt i16 %i.ebg, 101
  br i1 %i.ebh, label %bb.qy, label %bb.qz

bb.qy:                                            ; preds = %bb.qx
  call void @glGetIntegerv(i32 noundef 33001, ptr noundef nonnull %i.dq)
  %i.ebi = load i32, ptr %i.dq, align 4, !tbaa !208
  %i.ebj = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i32 %i.ebi, ptr %i.ebj, align 4, !tbaa !16
  br label %bb.qz

bb.qz:                                            ; preds = %bb.qy, %bb.qx
  call void @glGetIntegerv(i32 noundef 3379, ptr noundef nonnull %i.dq)
  %i.ebk = load i32, ptr %i.dq, align 4, !tbaa !208
  %i.ebl = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 %i.ebk, ptr %i.ebl, align 8, !tbaa !17
  %i.ebm = getelementptr inbounds nuw i8, ptr %0, i64 139
  %i.ebn = load i8, ptr %i.ebm, align 1, !tbaa !21, !range !24, !noundef !25
  %i.ebo = trunc nuw i8 %i.ebn to i1
  %i.ebp = getelementptr inbounds nuw i8, ptr %0, i64 290
  %i.ebq = load i8, ptr %i.ebp, align 2, !range !24
  %i.ebr = trunc nuw i8 %i.ebq to i1
  %or.cond6.i = select i1 %i.ebo, i1 true, i1 %i.ebr
  %i.ebs = getelementptr inbounds nuw i8, ptr %0, i64 405
  %166 = load i8, ptr %i.ebs, align 1, !range !24
  %167 = trunc nuw i8 %166 to i1
  %or.cond9.i = select i1 %or.cond6.i, i1 true, i1 %167
  %168 = getelementptr inbounds nuw i8, ptr %0, i64 406
  %i.ebt = load i8, ptr %168, align 2, !range !24
  %i.ebu = trunc nuw i8 %i.ebt to i1
  %i.ebv = select i1 %or.cond9.i, i1 true, i1 %i.ebu
  br i1 %i.ebv, label %bb.ra, label %bb.rb

bb.ra:                                            ; preds = %bb.qz
  call void @glGetIntegerv(i32 noundef 36320, ptr noundef nonnull %i.dq)
  %i.ebw = load i32, ptr %i.dq, align 4, !tbaa !208
  %i.ebx = getelementptr inbounds nuw i8, ptr %0, i64 12
  store i32 %i.ebw, ptr %i.ebx, align 4, !tbaa !18
  br label %bb.rb

bb.rb:                                            ; preds = %bb.ra, %bb.qz
  %i.eby = getelementptr inbounds nuw i8, ptr %0, i64 337
  %i.ebz = load i8, ptr %i.eby, align 1, !tbaa !21, !range !24, !noundef !25
  %i.eca = trunc nuw i8 %i.ebz to i1
  br i1 %i.eca, label %bb.rc, label %bb.rd

bb.rc:                                            ; preds = %bb.rb
  %i.ecb = getelementptr inbounds nuw i8, ptr %0, i64 16
  call void @glGetFloatv(i32 noundef 34045, ptr noundef nonnull %i.ecb)
  br label %bb.rd

bb.rd:                                            ; preds = %bb.rc, %bb.rb
  call void @glGetIntegerv(i32 noundef 3072, ptr noundef nonnull %i.dq)
  %i.ecc = load i32, ptr %i.dq, align 4, !tbaa !208
  %i.ecd = trunc i32 %i.ecc to i8
  %i.ece = getelementptr inbounds nuw i8, ptr %0, i64 3
  store i8 %i.ecd, ptr %i.ece, align 1, !tbaa !210
  %i.ecf = getelementptr inbounds nuw i8, ptr %0, i64 121
  %i.ecg = load i8, ptr %i.ecf, align 1, !tbaa !21, !range !24, !noundef !25
  %i.ech = trunc nuw i8 %i.ecg to i1
  br i1 %i.ech, label %.sink.split, label %bb.re

bb.re:                                            ; preds = %bb.rd
  %i.eci = getelementptr inbounds nuw i8, ptr %0, i64 243
  %i.ecj = load i8, ptr %i.eci, align 1, !tbaa !21, !range !24, !noundef !25
  %i.eck = trunc nuw i8 %i.ecj to i1
  br i1 %i.eck, label %.sink.split, label %bb.rf

.sink.split:                                      ; preds = %bb.re, %bb.rd
  call void @glGetIntegerv(i32 noundef 34852, ptr noundef nonnull %i.dq)
  %i.ecl = load i32, ptr %i.dq, align 4, !tbaa !208
  %i.ecm = trunc i32 %i.ecl to i8
  %i.ecn = getelementptr inbounds nuw i8, ptr %0, i64 555
  store i8 %i.ecm, ptr %i.ecn, align 1, !tbaa !211
  br label %bb.rf

bb.rf:                                            ; preds = %.sink.split, %bb.re
  %i.eco = getelementptr inbounds nuw i8, ptr %0, i64 137
  %i.ecp = load i8, ptr %i.eco, align 1, !tbaa !21, !range !24, !noundef !25
  %i.ecq = trunc nuw i8 %i.ecp to i1
  br i1 %i.ecq, label %.sink.split3162, label %bb.rg

bb.rg:                                            ; preds = %bb.rf
  %i.ecr = getelementptr inbounds nuw i8, ptr %0, i64 288
  %i.ecs = load i8, ptr %i.ecr, align 8, !tbaa !21, !range !24, !noundef !25
  %i.ect = trunc nuw i8 %i.ecs to i1
  br i1 %i.ect, label %.sink.split3162, label %bb.rh

.sink.split3162:                                  ; preds = %bb.rg, %bb.rf
  call void @glGetIntegerv(i32 noundef 36063, ptr noundef nonnull %i.dq)
  %i.ecu = load i32, ptr %i.dq, align 4, !tbaa !208
  %i.ecv = trunc i32 %i.ecu to i8
  %i.ecw = getelementptr inbounds nuw i8, ptr %0, i64 554
  store i8 %i.ecv, ptr %i.ecw, align 2, !tbaa !212
  br label %bb.rh

bb.rh:                                            ; preds = %.sink.split3162, %bb.rg
  %i.ecx = getelementptr inbounds nuw i8, ptr %0, i64 20
  call void @glGetFloatv(i32 noundef 33902, ptr noundef nonnull %i.ecx)
  %i.ecy = getelementptr inbounds nuw i8, ptr %0, i64 28
  call void @glGetFloatv(i32 noundef 33901, ptr noundef nonnull %i.ecy)
  %i.ecz = getelementptr inbounds nuw i8, ptr %0, i64 36
  call void @glGetFloatv(i32 noundef 2850, ptr noundef nonnull %i.ecz)
  %i.eda = getelementptr inbounds nuw i8, ptr %0, i64 44
  call void @glGetFloatv(i32 noundef 2834, ptr noundef nonnull %i.eda)
  %i.edb = load i16, ptr %i.ef, align 4, !tbaa !27
  %i.edc = icmp ugt i16 %i.edb, 199
  br i1 %i.edc, label %bb.ri, label %bb.rk

bb.ri:                                            ; preds = %bb.rh
  %i.edd = call i32 @glGetError()                 ; 0 uses
  %i.ede = call ptr @glGetString(i32 noundef 35724)
  %i.edf = call i32 @glGetError()
  %i.edg = icmp eq i32 %i.edf, 1280
  br i1 %i.edg, label %.sink.split3165, label %bb.rj

bb.rj:                                            ; preds = %bb.ri
  %i.edh = call double @strtod(ptr noundef nonnull captures(none) %i.ede, ptr noundef null) #13, !inline_history !34
  %i.edi = fptrunc double %i.edh to float         ; 2 uses
  %i.edj = call float @llvm.floor.f32(float %i.edi) ; 2 uses
  %i.edk = fptosi float %i.edj to i32
  %i.edl = mul nsw i32 %i.edk, 100
  %i.edm = fsub float %i.edi, %i.edj
  %i.edn = fmul float %i.edm, 1.000000e+01
  %i.edo = fadd float %i.edn, 5.000000e-01
  %i.edp = call noundef float @llvm.floor.f32(float %i.edo)
  %i.edq = fptosi float %i.edp to i32
  %i.edr = add nsw i32 %i.edl, %i.edq
  %i.eds = trunc i32 %i.edr to i16
  br label %.sink.split3165

.sink.split3165:                                  ; preds = %bb.ri, %bb.rj
  %.sink = phi i16 [ %i.eds, %bb.rj ], [ 100, %bb.ri ]
  %i.edt = getelementptr inbounds nuw i8, ptr %0, i64 54
  store i16 %.sink, ptr %i.edt, align 2, !tbaa !213
  br label %bb.rk

bb.rk:                                            ; preds = %.sink.split3165, %bb.rh
  %i.edu = load ptr, ptr %i.fu, align 8, !tbaa !45
  %.not696 = icmp eq ptr %i.edu, null
  br i1 %.not696, label %bb.rm, label %bb.rl

bb.rl:                                            ; preds = %bb.rk
  %i.edv = load ptr, ptr %i.gj, align 8, !tbaa !46
  %.not697 = icmp eq ptr %i.edv, null
  br i1 %.not697, label %bb.rm, label %bb.rn

bb.rm:                                            ; preds = %bb.rl, %bb.rk
  %i.edw = getelementptr inbounds nuw i8, ptr %0, i64 556
  store i8 1, ptr %i.edw, align 4, !tbaa !30
  call void @_ZN2os7Printer3logEPKc10ELOG_LEVEL(ptr noundef nonnull @.str.169, i32 noundef 2)
  br label %bb.ro

bb.rn:                                            ; preds = %bb.rl
  %i.edx = getelementptr inbounds nuw i8, ptr %0, i64 556 ; 2 uses
  %i.edy = load i8, ptr %i.edx, align 4, !tbaa !8
  %.sroa.speculated = call i8 @llvm.umin.i8(i8 %i.edy, i8 4)
  store i8 %.sroa.speculated, ptr %i.edx, align 4, !tbaa !30
  br label %bb.ro

bb.ro:                                            ; preds = %bb.rn, %bb.rm
  %i.edz = getelementptr inbounds nuw i8, ptr %0, i64 158
  %i.eea = load i8, ptr %i.edz, align 2, !tbaa !21, !range !24, !noundef !25
  %i.eeb = trunc nuw i8 %i.eea to i1
  br i1 %i.eeb, label %bb.rp, label %bb.rr

bb.rp:                                            ; preds = %bb.ro
  %i.eec = load ptr, ptr %i.bos, align 8, !tbaa !158 ; 2 uses
  %.not.i = icmp eq ptr %i.eec, null
  br i1 %.not.i, label %_ZN5video23COpenGLExtensionHandler15extGlGetQueryivEjjPi.exit, label %bb.rq

bb.rq:                                            ; preds = %bb.rp
  call void %i.eec(i32 noundef 35092, i32 noundef 34916, ptr noundef nonnull %i.dq), !inline_history !37
  br label %_ZN5video23COpenGLExtensionHandler15extGlGetQueryivEjjPi.exit

_ZN5video23COpenGLExtensionHandler15extGlGetQueryivEjjPi.exit: ; preds = %bb.rp, %bb.rq
  %i.eed = load i32, ptr %i.dq, align 4, !tbaa !208
  %i.eee = icmp sgt i32 %i.eed, 0
  %i.eef = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.eeg = zext i1 %i.eee to i8
  store i8 %i.eeg, ptr %i.eef, align 8, !tbaa !214
  br label %bb.ru

bb.rr:                                            ; preds = %bb.ro
  %i.eeh = getelementptr inbounds nuw i8, ptr %0, i64 415
  %i.eei = load i8, ptr %i.eeh, align 1, !tbaa !21, !range !24, !noundef !25
  %i.eej = trunc nuw i8 %i.eei to i1
  br i1 %i.eej, label %bb.rs, label %bb.rt

bb.rs:                                            ; preds = %bb.rr
  call void @glGetIntegerv(i32 noundef 34916, ptr noundef nonnull %i.dq)
  %i.eek = load i32, ptr %i.dq, align 4, !tbaa !208
  %i.eel = icmp sgt i32 %i.eek, 0
  %i.eem = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.een = zext i1 %i.eel to i8
  store i8 %i.een, ptr %i.eem, align 8, !tbaa !214
  br label %bb.ru

bb.rt:                                            ; preds = %bb.rr
  %i.eeo = getelementptr inbounds nuw i8, ptr %0, i64 56
  store i8 0, ptr %i.eeo, align 8, !tbaa !214
  br label %bb.ru

bb.ru:                                            ; preds = %bb.rs, %bb.rt, %_ZN5video23COpenGLExtensionHandler15extGlGetQueryivEjjPi.exit
  %i.eep = load i16, ptr %i.ef, align 4, !tbaa !27
  %i.eeq = icmp ugt i16 %i.eep, 103
  br i1 %i.eeq, label %bb.ry, label %bb.rv

bb.rv:                                            ; preds = %bb.ru
  %i.eer = getelementptr inbounds nuw i8, ptr %0, i64 267
  %i.ees = load i8, ptr %i.eer, align 1, !tbaa !21, !range !24, !noundef !25
  %i.eet = trunc nuw i8 %i.ees to i1
  br i1 %i.eet, label %bb.ry, label %bb.rw

bb.rw:                                            ; preds = %bb.rv
  %i.eeu = getelementptr inbounds nuw i8, ptr %0, i64 268
  %i.eev = load i8, ptr %i.eeu, align 4, !tbaa !21, !range !24, !noundef !25
  %i.eew = trunc nuw i8 %i.eev to i1
  br i1 %i.eew, label %bb.ry, label %bb.rx

bb.rx:                                            ; preds = %bb.rw
  %i.eex = getelementptr inbounds nuw i8, ptr %0, i64 266
  %i.eey = load i8, ptr %i.eex, align 2, !tbaa !21, !range !24, !noundef !25
  br label %bb.ry

bb.ry:                                            ; preds = %bb.rx, %bb.rw, %bb.rv, %bb.ru
  %i.eez = phi i8 [ 1, %bb.rw ], [ 1, %bb.rv ], [ 1, %bb.ru ], [ %i.eey, %bb.rx ]
  %i.efa = getelementptr inbounds nuw i8, ptr %0, i64 552
  store i8 %i.eez, ptr %i.efa, align 8, !tbaa !31
  call void @llvm.lifetime.end.p0(ptr nonnull %i.dq) #13
  ret void

bb.rz:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit2321, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit2318, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit2315, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit2312, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit2309, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit2306, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit2303, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit2300, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit2297, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit2294, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit2291, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit2288, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit2285, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit2282, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit2279, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit2276, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit2273, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit2270, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit2267, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit2264, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit2261, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit2258, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit2255, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit2252, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit2249, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit2246, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit2243, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit2240, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit2237, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit2234, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit2231, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit2228, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit2225, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit2222, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit2219, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit2216, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit2213, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit2210, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit2207, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit2204, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit2201, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit2198, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit2195, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit2192, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit2189, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit2186, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit2183, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit2180, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit2177, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit2174, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit2171, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit2168, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit2165, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit2162, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit2159, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit2156, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit2153, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit2150, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit2147, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit2144, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit2141, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit2138, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit2135, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit2132, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit2129, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit2126, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit2123, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit2120, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit2117, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit2114, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit2111, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit2108, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit2105, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit2102, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit2099, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit2096, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit2093, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit2090, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit2087, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit2084, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit2081, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit2078, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit2075, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit2072, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit2069, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit2066, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit2063, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit2060, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit2057, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit2054, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit2051, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit2048, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit2045, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit2042, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit2039, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit2036, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit2033, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit2030, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit2027, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit2024, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit2021, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit2018, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit2015, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit2012, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit2009, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit2006, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit2003, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit2000, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1997, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1994, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1991, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1988, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1985, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1982, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1979, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1976, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1973, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1970, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1967, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1964, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1961, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1958, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1955, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1952, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1949, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1946, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1943, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1940, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1937, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1934, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1931, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1928, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1925, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1922, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1919, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1916, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1913, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1910, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1907, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1904, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1901, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1898, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1895, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1892, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1889, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1886, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1883, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1880, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1877, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1874, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1871, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1868, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1865, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1862, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1859, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1856, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1853, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1850, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1847, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1844, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1841, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1838, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1835
  %.pn693.pn = phi { ptr, i32 } [ %.pn693, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit2321 ], [ %i.eae, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit2318 ], [ %.pn689, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit2315 ], [ %.pn687, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit2312 ], [ %.pn685, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit2309 ], [ %.pn683, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit2306 ], [ %i.dzb, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit2303 ], [ %.pn679, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit2300 ], [ %i.dyq, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit2297 ], [ %.pn675, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit2294 ], [ %.pn673, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit2291 ], [ %i.dxz, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit2288 ], [ %.pn669, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit2285 ], [ %.pn667, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit2282 ], [ %.pn665, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit2279 ], [ %.pn663, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit2276 ], [ %.pn661, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit2273 ], [ %.pn659, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit2270 ], [ %.pn657, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit2267 ], [ %.pn655, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit2264 ], [ %.pn653, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit2261 ], [ %.pn651, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit2258 ], [ %.pn649, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit2255 ], [ %.pn647, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit2252 ], [ %.pn645, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit2249 ], [ %.pn643, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit2246 ], [ %.pn641, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit2243 ], [ %.pn639, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit2240 ], [ %.pn637, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit2237 ], [ %i.dtw, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit2234 ], [ %.pn633, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit2231 ], [ %.pn631, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit2228 ], [ %.pn629, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit2225 ], [ %.pn627, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit2222 ], [ %.pn625, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit2219 ], [ %.pn623, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit2216 ], [ %i.dsh, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit2213 ], [ %.pn619, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit2210 ], [ %.pn617, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit2207 ], [ %.pn615, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit2204 ], [ %.pn613, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit2201 ], [ %.pn611, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit2198 ], [ %.pn609, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit2195 ], [ %.pn607, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit2192 ], [ %.pn605, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit2189 ], [ %.pn603, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit2186 ], [ %.pn601, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit2183 ], [ %.pn599, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit2180 ], [ %.pn597, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit2177 ], [ %i.dpi, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit2174 ], [ %i.dpd, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit2171 ], [ %i.doy, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit2168 ], [ %i.dot, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit2165 ], [ %.pn587, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit2162 ], [ %i.doi, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit2159 ], [ %.pn583, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit2156 ], [ %.pn581, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit2153 ], [ %.pn579, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit2150 ], [ %.pn577, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit2147 ], [ %.pn575, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit2144 ], [ %.pn573, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit2141 ], [ %i.dmt, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit2138 ], [ %.pn569, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit2135 ], [ %i.dmi, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit2132 ], [ %.pn565, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit2129 ], [ %.pn563, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit2126 ], [ %.pn561, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit2123 ], [ %i.dll, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit2120 ], [ %i.dlg, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit2117 ], [ %i.dlb, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit2114 ], [ %.pn553, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit2111 ], [ %.pn551, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit2108 ], [ %.pn549, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit2105 ], [ %.pn547, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit2102 ], [ %.pn545, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit2099 ], [ %.pn543, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit2096 ], [ %.pn541, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit2093 ], [ %.pn539, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit2090 ], [ %.pn537, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit2087 ], [ %.pn535, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit2084 ], [ %.pn533, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit2081 ], [ %.pn531, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit2078 ], [ %.pn529, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit2075 ], [ %.pn527, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit2072 ], [ %.pn525, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit2069 ], [ %.pn523, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit2066 ], [ %.pn521, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit2063 ], [ %.pn519, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit2060 ], [ %.pn517, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit2057 ], [ %.pn515, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit2054 ], [ %.pn513, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit2051 ], [ %.pn511, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit2048 ], [ %.pn509, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit2045 ], [ %.pn507, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit2042 ], [ %.pn505, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit2039 ], [ %.pn503, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit2036 ], [ %.pn501, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit2033 ], [ %.pn499, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit2030 ], [ %.pn497, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit2027 ], [ %.pn495, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit2024 ], [ %.pn493, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit2021 ], [ %.pn491, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit2018 ], [ %.pn489, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit2015 ], [ %.pn487, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit2012 ], [ %.pn485, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit2009 ], [ %.pn483, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit2006 ], [ %.pn481, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit2003 ], [ %.pn479, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit2000 ], [ %.pn477, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1997 ], [ %.pn475, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1994 ], [ %.pn473, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1991 ], [ %.pn471, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1988 ], [ %.pn469, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1985 ], [ %i.day, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1982 ], [ %i.dat, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1979 ], [ %i.dao, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1976 ], [ %i.daj, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1973 ], [ %i.dae, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1970 ], [ %i.czz, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1967 ], [ %i.czu, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1964 ], [ %i.czp, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1961 ], [ %i.czk, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1958 ], [ %i.czf, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1955 ], [ %i.cza, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1952 ], [ %i.cyv, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1949 ], [ %.pn443, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1946 ], [ %.pn441, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1943 ], [ %i.cye, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1940 ], [ %i.cxz, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1937 ], [ %.pn435, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1934 ], [ %.pn433, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1931 ], [ %.pn431, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1928 ], [ %i.cxc, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1925 ], [ %.pn427, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1922 ], [ %.pn425, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1919 ], [ %i.cwl, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1916 ], [ %i.cwg, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1913 ], [ %.pn419, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1910 ], [ %i.cvv, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1907 ], [ %.pn415, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1904 ], [ %i.cvk, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1901 ], [ %.pn411, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1898 ], [ %i.cuz, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1895 ], [ %.pn407, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1892 ], [ %i.cuo, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1889 ], [ %.pn403, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1886 ], [ %i.cud, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1883 ], [ %.pn399, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1880 ], [ %i.cts, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1877 ], [ %.pn395, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1874 ], [ %i.cth, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1871 ], [ %.pn391, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1868 ], [ %.pn389, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1865 ], [ %.pn387, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1862 ], [ %.pn385, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1859 ], [ %i.cse, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1856 ], [ %.pn381, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1853 ], [ %i.crt, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1850 ], [ %.pn377, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1847 ], [ %i.cri, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1844 ], [ %.pn373, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1841 ], [ %.pn371, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1838 ], [ %.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1835 ]
  resume { ptr, i32 } %.pn693.pn
}

declare ptr @glGetString(i32 noundef) local_unnamed_addr #3

declare void @_ZN2os7Printer3logEPKc10ELOG_LEVEL(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i64 @strlen(ptr noundef captures(none)) local_unnamed_addr #4

; Function Attrs: nobuiltin allocsize(0)
declare noundef nonnull ptr @_Znam(i64 noundef) local_unnamed_addr #5

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i32 @strcmp(ptr noundef captures(none), ptr noundef captures(none)) local_unnamed_addr #4

; Function Attrs: nobuiltin nounwind
declare void @_ZdaPv(ptr noundef) local_unnamed_addr #6

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i32 @strncmp(ptr noundef captures(none), ptr noundef captures(none), i64 noundef) local_unnamed_addr #4

declare i32 @__gxx_personality_v0(...)

declare void @glGetIntegerv(i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define noundef zeroext i1 @_ZNK5video23COpenGLExtensionHandler12queryFeatureENS_22E_VIDEO_DRIVER_FEATUREE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(1880) %0, i32 noundef %1) local_unnamed_addr #7 align 2 {
bb.a:
  switch i32 %1, label %bb.aa [
    i32 0, label %bb.ab
    i32 1, label %bb.ab
    i32 2, label %bb.b
    i32 3, label %bb.ab
    i32 4, label %bb.ab
    i32 5, label %bb.c
    i32 6, label %bb.f
    i32 7, label %bb.g
    i32 16, label %bb.g
    i32 10, label %bb.h
    i32 11, label %bb.h
    i32 17, label %bb.h
    i32 14, label %bb.i
    i32 8, label %bb.i
    i32 18, label %bb.i
    i32 20, label %bb.ab
    i32 21, label %bb.j
    i32 22, label %bb.k
    i32 23, label %bb.l
    i32 25, label %bb.ab
    i32 24, label %bb.m
    i32 30, label %bb.n
    i32 26, label %bb.o
    i32 27, label %bb.p
    i32 28, label %bb.p
    i32 29, label %bb.q
    i32 31, label %bb.r
    i32 32, label %bb.s
    i32 33, label %bb.t
    i32 34, label %bb.u
    i32 35, label %bb.ab
    i32 36, label %bb.v
    i32 37, label %bb.w
    i32 38, label %bb.x
    i32 39, label %bb.y
    i32 41, label %bb.z
  ]

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 556
  %i.b = load i8, ptr %i.a, align 4, !tbaa !30
  %i.c = icmp ugt i8 %i.b, 1
  br label %bb.ab

bb.c:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 57
  %i.e = load i8, ptr %i.d, align 1, !tbaa !29, !range !24, !noundef !25
  %i.f = trunc nuw i8 %i.e to i1
  br i1 %i.f, label %bb.ab, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 475
  %i.h = load i8, ptr %i.g, align 1, !tbaa !21, !range !24, !noundef !25
  %i.i = trunc nuw i8 %i.h to i1
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 288
  %i.k = load i8, ptr %i.j, align 8, !range !24
  %i.l = trunc nuw i8 %i.k to i1
  %or.cond = select i1 %i.i, i1 true, i1 %i.l
  br i1 %or.cond, label %bb.ab, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 137
  %i.n = load i8, ptr %i.m, align 1, !tbaa !21, !range !24, !noundef !25
  %i.o = trunc nuw i8 %i.n to i1
  br label %bb.ab

bb.f:                                             ; preds = %bb.a
  %i.p = load i8, ptr %0, align 8, !tbaa !28, !range !24, !noundef !25
  %i.q = trunc nuw i8 %i.p to i1
  br label %bb.ab

bb.g:                                             ; preds = %bb.a, %bb.a
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 237
  %i.s = load i8, ptr %i.r, align 1, !tbaa !21, !range !24, !noundef !25
  %i.t = trunc nuw i8 %i.s to i1
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 451
  %i.v = load i8, ptr %i.u, align 1, !range !24
  %i.w = trunc nuw i8 %i.v to i1
  %i.x = select i1 %i.t, i1 true, i1 %i.w
  br label %bb.ab

bb.h:                                             ; preds = %bb.a, %bb.a, %bb.a
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 133
  %i.z = load i8, ptr %i.y, align 1, !tbaa !21, !range !24, !noundef !25
  %i.aa = trunc nuw i8 %i.z to i1
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 400
  %i.ac = load i8, ptr %i.ab, align 8, !range !24
  %i.ad = trunc nuw i8 %i.ac to i1
  %i.ae = select i1 %i.aa, i1 true, i1 %i.ad
  br label %bb.ab

bb.i:                                             ; preds = %bb.a, %bb.a, %bb.a
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 52
  %i.ag = load i16, ptr %i.af, align 4, !tbaa !27
  %i.ah = icmp ugt i16 %i.ag, 199
  br label %bb.ab

bb.j:                                             ; preds = %bb.a
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 214
  %i.aj = load i8, ptr %i.ai, align 2, !tbaa !21, !range !24, !noundef !25
  %i.ak = trunc nuw i8 %i.aj to i1
  br label %bb.ab

bb.k:                                             ; preds = %bb.a
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 288
  %i.am = load i8, ptr %i.al, align 8, !tbaa !21, !range !24, !noundef !25
  %i.an = trunc nuw i8 %i.am to i1
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 137
  %i.ap = load i8, ptr %i.ao, align 1, !range !24
  %i.aq = trunc nuw i8 %i.ap to i1
  %i.ar = select i1 %i.an, i1 true, i1 %i.aq
  br label %bb.ab

bb.l:                                             ; preds = %bb.a
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 236
  %i.at = load i8, ptr %i.as, align 4, !tbaa !21, !range !24, !noundef !25
  %i.au = trunc nuw i8 %i.at to i1
  br label %bb.ab

bb.m:                                             ; preds = %bb.a
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 156
  %i.aw = load i8, ptr %i.av, align 4, !tbaa !21, !range !24, !noundef !25
  %i.ax = trunc nuw i8 %i.aw to i1
  br label %bb.ab

bb.n:                                             ; preds = %bb.a
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 139
  %i.az = load i8, ptr %i.ay, align 1, !tbaa !21, !range !24, !noundef !25
  %i.ba = trunc nuw i8 %i.az to i1
  %i.bb = getelementptr inbounds nuw i8, ptr %0, i64 290
  %i.bc = load i8, ptr %i.bb, align 2, !range !24
  %i.bd = trunc nuw i8 %i.bc to i1
  %or.cond6 = select i1 %i.ba, i1 true, i1 %i.bd
  %i.be = getelementptr inbounds nuw i8, ptr %0, i64 405
  %2 = load i8, ptr %i.be, align 1, !range !24
  %3 = trunc nuw i8 %2 to i1
  %or.cond9 = select i1 %or.cond6, i1 true, i1 %3
  %4 = getelementptr inbounds nuw i8, ptr %0, i64 406
  %i.bf = load i8, ptr %4, align 2, !range !24
  %i.bg = trunc nuw i8 %i.bf to i1
  %i.bh = select i1 %or.cond9, i1 true, i1 %i.bg
  br label %bb.ab

bb.o:                                             ; preds = %bb.a
  %i.bi = getelementptr inbounds nuw i8, ptr %0, i64 121
  %i.bj = load i8, ptr %i.bi, align 1, !tbaa !21, !range !24, !noundef !25
  %i.bk = trunc nuw i8 %i.bj to i1
  %i.bl = getelementptr inbounds nuw i8, ptr %0, i64 243
  %i.bm = load i8, ptr %i.bl, align 1, !range !24
  %i.bn = trunc nuw i8 %i.bm to i1
  %i.bo = select i1 %i.bk, i1 true, i1 %i.bn
  br label %bb.ab

bb.p:                                             ; preds = %bb.a, %bb.a
  %i.bp = getelementptr inbounds nuw i8, ptr %0, i64 281
  %i.bq = load i8, ptr %i.bp, align 1, !tbaa !21, !range !24, !noundef !25
  %i.br = trunc nuw i8 %i.bq to i1
  br label %bb.ab

bb.q:                                             ; preds = %bb.a
  %i.bs = getelementptr inbounds nuw i8, ptr %0, i64 122
  %i.bt = load i8, ptr %i.bs, align 2, !tbaa !21, !range !24, !noundef !25
  %i.bu = trunc nuw i8 %i.bt to i1
  %i.bv = getelementptr inbounds nuw i8, ptr %0, i64 65
  %i.bw = load i8, ptr %i.bv, align 1, !range !24
  %i.bx = trunc nuw i8 %i.bw to i1
  %i.by = select i1 %i.bu, i1 true, i1 %i.bx
  br label %bb.ab

bb.r:                                             ; preds = %bb.a
  %i.bz = getelementptr inbounds nuw i8, ptr %0, i64 158
  %i.ca = load i8, ptr %i.bz, align 2, !tbaa !21, !range !24, !noundef !25
  %i.cb = trunc nuw i8 %i.ca to i1
  %i.cc = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.cd = load i8, ptr %i.cc, align 8, !range !24
  %i.ce = trunc nuw i8 %i.cd to i1
  %i.cf = select i1 %i.cb, i1 %i.ce, i1 false
  br label %bb.ab

bb.s:                                             ; preds = %bb.a
  %i.cg = getelementptr inbounds nuw i8, ptr %0, i64 52
  %i.ch = load i16, ptr %i.cg, align 4, !tbaa !27
  %i.ci = icmp ugt i16 %i.ch, 100
  br label %bb.ab

bb.t:                                             ; preds = %bb.a
  %i.cj = getelementptr inbounds nuw i8, ptr %0, i64 552
  %i.ck = load i8, ptr %i.cj, align 8, !tbaa !31, !range !24, !noundef !25
  %i.cl = trunc nuw i8 %i.ck to i1
  br label %bb.ab

bb.u:                                             ; preds = %bb.a
  %i.cm = getelementptr inbounds nuw i8, ptr %0, i64 52
  %i.cn = load i16, ptr %i.cm, align 4, !tbaa !27
  %i.co = icmp ugt i16 %i.cn, 103
  %i.cp = getelementptr inbounds nuw i8, ptr %0, i64 265
  %i.cq = load i8, ptr %i.cp, align 1, !range !24
  %i.cr = trunc nuw i8 %i.cq to i1
  %i.cs = select i1 %i.co, i1 true, i1 %i.cr
  br label %bb.ab

bb.v:                                             ; preds = %bb.a
  %i.ct = getelementptr inbounds nuw i8, ptr %0, i64 52
  %i.cu = load i16, ptr %i.ct, align 4, !tbaa !27
  %i.cv = icmp ugt i16 %i.cu, 102
  %i.cw = getelementptr inbounds nuw i8, ptr %0, i64 203
  %5 = load i8, ptr %i.cw, align 1, !range !24
  %6 = trunc nuw i8 %5 to i1
  %or.cond12 = select i1 %i.cv, i1 true, i1 %6
  %7 = getelementptr inbounds nuw i8, ptr %0, i64 331
  %i.cx = load i8, ptr %7, align 1, !range !24
  %i.cy = trunc nuw i8 %i.cx to i1
  %i.cz = select i1 %or.cond12, i1 true, i1 %i.cy
  br label %bb.ab

bb.w:                                             ; preds = %bb.a
  %i.da = getelementptr inbounds nuw i8, ptr %0, i64 171
  %i.db = load i8, ptr %i.da, align 1, !tbaa !21, !range !24, !noundef !25
  %i.dc = trunc nuw i8 %i.db to i1
  br label %bb.ab

bb.x:                                             ; preds = %bb.a
  %i.dd = getelementptr inbounds nuw i8, ptr %0, i64 393
  %i.de = load i8, ptr %i.dd, align 1, !tbaa !21, !range !24, !noundef !25
  %i.df = trunc nuw i8 %i.de to i1
  %i.dg = getelementptr inbounds nuw i8, ptr %0, i64 118
  %i.dh = load i8, ptr %i.dg, align 2, !range !24
  %i.di = trunc nuw i8 %i.dh to i1
  %i.dj = select i1 %i.df, i1 true, i1 %i.di
  br label %bb.ab

bb.y:                                             ; preds = %bb.a
  %i.dk = getelementptr inbounds nuw i8, ptr %0, i64 52
  %i.dl = load i16, ptr %i.dk, align 4, !tbaa !27
  %i.dm = icmp ugt i16 %i.dl, 301
  %i.dn = getelementptr inbounds nuw i8, ptr %0, i64 213
  %i.do = load i8, ptr %i.dn, align 1, !range !24
  %i.dp = trunc nuw i8 %i.do to i1
  %i.dq = select i1 %i.dm, i1 true, i1 %i.dp
  br label %bb.ab

bb.z:                                             ; preds = %bb.a
  %i.dr = getelementptr inbounds nuw i8, ptr %0, i64 52
  %i.ds = load i16, ptr %i.dr, align 4, !tbaa !27
  %i.dt = icmp ugt i16 %i.ds, 299
  %i.du = getelementptr inbounds nuw i8, ptr %0, i64 108
  %i.dv = load i8, ptr %i.du, align 4, !range !24
  %i.dw = trunc nuw i8 %i.dv to i1
  %i.dx = select i1 %i.dt, i1 true, i1 %i.dw
  br label %bb.ab

bb.aa:                                            ; preds = %bb.a
  br label %bb.ab

bb.ab:                                            ; preds = %bb.c, %bb.e, %bb.d, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.aa, %bb.z, %bb.y, %bb.x, %bb.w, %bb.v, %bb.u, %bb.t, %bb.s, %bb.r, %bb.q, %bb.p, %bb.o, %bb.n, %bb.m, %bb.l, %bb.k, %bb.j, %bb.i, %bb.h, %bb.g, %bb.f, %bb.b
  %.0 = phi i1 [ false, %bb.aa ], [ %i.dx, %bb.z ], [ true, %bb.a ], [ %i.c, %bb.b ], [ true, %bb.a ], [ true, %bb.a ], [ true, %bb.a ], [ %i.q, %bb.f ], [ %i.x, %bb.g ], [ %i.ae, %bb.h ], [ %i.ah, %bb.i ], [ true, %bb.d ], [ %i.ak, %bb.j ], [ %i.ar, %bb.k ], [ %i.au, %bb.l ], [ %i.o, %bb.e ], [ %i.ax, %bb.m ], [ %i.bh, %bb.n ], [ %i.bo, %bb.o ], [ %i.br, %bb.p ], [ %i.by, %bb.q ], [ %i.cf, %bb.r ], [ %i.ci, %bb.s ], [ %i.cl, %bb.t ], [ %i.cs, %bb.u ], [ false, %bb.c ], [ %i.cz, %bb.v ], [ %i.dc, %bb.w ], [ %i.dj, %bb.x ], [ %i.dq, %bb.y ], [ true, %bb.a ], [ true, %bb.a ], [ true, %bb.a ]
  ret i1 %.0
}

declare void @glGetFloatv(i32 noundef, ptr noundef) local_unnamed_addr #3

declare i32 @glGetError() local_unnamed_addr #3

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define noundef nonnull align 8 dereferenceable(24) ptr @_ZNK5video23COpenGLExtensionHandler10getFeatureEv(ptr nofree noundef nonnull readnone align 8 captures(ret: address, provenance) dereferenceable(1880) %0) local_unnamed_addr #8 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 544
  ret ptr %i.a
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZN5video18COpenGLCoreFeatureD2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %0) unnamed_addr #9 comdat align 2 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZN5video18COpenGLCoreFeatureD0Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #9 comdat align 2 {
bb.a:
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 24) #16
  ret void
}

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPvm(ptr noundef, i64 noundef) local_unnamed_addr #6

; Function Attrs: mustprogress nocallback nofree nounwind willreturn
declare double @strtod(ptr noundef readonly, ptr noundef captures(none)) local_unnamed_addr #10

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.floor.f32(float) #11

declare noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef nonnull align 8 dereferenceable(8), i64 noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #12

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i8 @llvm.umax.i8(i8, i8) #11

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i8 @llvm.umin.i8(i8, i8) #11

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nobuiltin allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nobuiltin nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { mustprogress nocallback nofree nounwind willreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #12 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #13 = { nounwind }
attributes #14 = { nounwind willreturn memory(read) }
attributes #15 = { builtin allocsize(0) }
attributes #16 = { builtin nounwind }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}
!llvm.errno.tbaa = !{!7}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"uwtable", i32 2}
!2 = !{!"Ubuntu clang version 24.0.0 (++20260802081851+e18c3ea02484-1~exp1~20260802082001.1761)"}
!3 = !{!"Simple C++ TBAA"}
!4 = !{!"omnipotent char", !3, i64 0}
!5 = !{!"int", !4, i64 0}
!6 = !{!"__libc_errno", !5, i64 0}
!7 = !{!6, !5, i64 0}
!8 = !{!4, !4, i64 0}
!9 = !{!"bool", !4, i64 0}
!10 = !{!"float", !4, i64 0}
!11 = !{!"short", !4, i64 0}
!12 = !{!"long", !4, i64 0}
!13 = !{!"_ZTSN5video18COpenGLCoreFeatureE", !9, i64 8, !9, i64 9, !4, i64 10, !4, i64 11, !4, i64 12, !12, i64 16}
!14 = !{!"any pointer", !4, i64 0}
!15 = !{!"_ZTSN5video23COpenGLExtensionHandlerE", !9, i64 0, !9, i64 1, !4, i64 2, !4, i64 3, !5, i64 4, !5, i64 8, !5, i64 12, !10, i64 16, !4, i64 20, !4, i64 28, !4, i64 36, !4, i64 44, !11, i64 52, !11, i64 54, !9, i64 56, !9, i64 57, !4, i64 58, !13, i64 544, !14, i64 568, !14, i64 576, !14, i64 584, !14, i64 592, !14, i64 600, !14, i64 608, !14, i64 616, !14, i64 624, !14, i64 632, !14, i64 640, !14, i64 648, !14, i64 656, !14, i64 664, !14, i64 672, !14, i64 680, !14, i64 688, !14, i64 696, !14, i64 704, !14, i64 712, !14, i64 720, !14, i64 728, !14, i64 736, !14, i64 744, !14, i64 752, !14, i64 760, !14, i64 768, !14, i64 776, !14, i64 784, !14, i64 792, !14, i64 800, !14, i64 808, !14, i64 816, !14, i64 824, !14, i64 832, !14, i64 840, !14, i64 848, !14, i64 856, !14, i64 864, !14, i64 872, !14, i64 880, !14, i64 888, !14, i64 896, !14, i64 904, !14, i64 912, !14, i64 920, !14, i64 928, !14, i64 936, !14, i64 944, !14, i64 952, !14, i64 960, !14, i64 968, !14, i64 976, !14, i64 984, !14, i64 992, !14, i64 1000, !14, i64 1008, !14, i64 1016, !14, i64 1024, !14, i64 1032, !14, i64 1040, !14, i64 1048, !14, i64 1056, !14, i64 1064, !14, i64 1072, !14, i64 1080, !14, i64 1088, !14, i64 1096, !14, i64 1104, !14, i64 1112, !14, i64 1120, !14, i64 1128, !14, i64 1136, !14, i64 1144, !14, i64 1152, !14, i64 1160, !14, i64 1168, !14, i64 1176, !14, i64 1184, !14, i64 1192, !14, i64 1200, !14, i64 1208, !14, i64 1216, !14, i64 1224, !14, i64 1232, !14, i64 1240, !14, i64 1248, !14, i64 1256, !14, i64 1264, !14, i64 1272, !14, i64 1280, !14, i64 1288, !14, i64 1296, !14, i64 1304, !14, i64 1312, !14, i64 1320, !14, i64 1328, !14, i64 1336, !14, i64 1344, !14, i64 1352, !14, i64 1360, !14, i64 1368, !14, i64 1376, !14, i64 1384, !14, i64 1392, !14, i64 1400, !14, i64 1408, !14, i64 1416, !14, i64 1424, !14, i64 1432, !14, i64 1440, !14, i64 1448, !14, i64 1456, !14, i64 1464, !14, i64 1472, !14, i64 1480, !14, i64 1488, !14, i64 1496, !14, i64 1504, !14, i64 1512, !14, i64 1520, !14, i64 1528, !14, i64 1536, !14, i64 1544, !14, i64 1552, !14, i64 1560, !14, i64 1568, !14, i64 1576, !14, i64 1584, !14, i64 1592, !14, i64 1600, !14, i64 1608, !14, i64 1616, !14, i64 1624, !14, i64 1632, !14, i64 1640, !14, i64 1648, !14, i64 1656, !14, i64 1664, !14, i64 1672, !14, i64 1680, !14, i64 1688, !14, i64 1696, !14, i64 1704, !14, i64 1712, !14, i64 1720, !14, i64 1728, !14, i64 1736, !14, i64 1744, !14, i64 1752, !14, i64 1760, !14, i64 1768, !14, i64 1776, !14, i64 1784, !14, i64 1792, !14, i64 1800, !14, i64 1808, !14, i64 1816, !14, i64 1824, !14, i64 1832, !14, i64 1840, !14, i64 1848, !14, i64 1856, !14, i64 1864, !14, i64 1872}
!16 = !{!15, !5, i64 4}
!17 = !{!15, !5, i64 8}
!18 = !{!15, !5, i64 12}
!19 = !{!"vtable pointer", !3, i64 0}
!20 = !{!19, !19, i64 0}
!21 = !{!9, !9, i64 0}
!22 = !{!"p1 omnipotent char", !14, i64 0}
!23 = !{!22, !22, i64 0}
!24 = !{i8 0, i8 2}
!25 = !{}
!26 = !{!"llvm.loop.mustprogress"}
!27 = !{!15, !11, i64 52}
!28 = !{!15, !9, i64 0}
!29 = !{!15, !9, i64 57}
!30 = !{!15, !4, i64 556}
!31 = !{!15, !9, i64 552}
!32 = !{!10, !10, i64 0}
!33 = distinct !{!33, !26}
!34 = distinct !{null}
!35 = distinct !{!35, !26}
!36 = distinct !{!36, !26}
!37 = distinct !{null}
!38 = !{!15, !9, i64 1}
!39 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_Alloc_hiderE", !22, i64 0}
!40 = !{!39, !22, i64 0}
!41 = !{!12, !12, i64 0}
!42 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE", !39, i64 0, !12, i64 8, !4, i64 16}
!43 = !{!42, !22, i64 0}
!44 = !{!42, !12, i64 8}
!45 = !{!15, !14, i64 576}
!46 = !{!15, !14, i64 584}
!47 = !{!15, !14, i64 592}
!48 = !{!15, !14, i64 600}
!49 = !{!15, !14, i64 608}
!50 = !{!15, !14, i64 616}
!51 = !{!15, !14, i64 640}
!52 = !{!15, !14, i64 648}
!53 = !{!15, !14, i64 624}
!54 = !{!15, !14, i64 632}
!55 = !{!15, !14, i64 656}
!56 = !{!15, !14, i64 664}
!57 = !{!15, !14, i64 776}
!58 = !{!15, !14, i64 672}
!59 = !{!15, !14, i64 784}
!60 = !{!15, !14, i64 680}
!61 = !{!15, !14, i64 792}
!62 = !{!15, !14, i64 688}
!63 = !{!15, !14, i64 728}
!64 = !{!15, !14, i64 696}
!65 = !{!15, !14, i64 800}
!66 = !{!15, !14, i64 704}
!67 = !{!15, !14, i64 808}
!68 = !{!15, !14, i64 712}
!69 = !{!15, !14, i64 736}
!70 = !{!15, !14, i64 720}
!71 = !{!15, !14, i64 744}
!72 = !{!15, !14, i64 752}
!73 = !{!15, !14, i64 768}
!74 = !{!15, !14, i64 760}
!75 = !{!15, !14, i64 816}
!76 = !{!15, !14, i64 824}
!77 = !{!15, !14, i64 832}
!78 = !{!15, !14, i64 840}
!79 = !{!15, !14, i64 848}
!80 = !{!15, !14, i64 856}
!81 = !{!15, !14, i64 864}
!82 = !{!15, !14, i64 872}
!83 = !{!15, !14, i64 880}
!84 = !{!15, !14, i64 888}
!85 = !{!15, !14, i64 896}
!86 = !{!15, !14, i64 904}
!87 = !{!15, !14, i64 912}
!88 = !{!15, !14, i64 920}
!89 = !{!15, !14, i64 928}
!90 = !{!15, !14, i64 936}
!91 = !{!15, !14, i64 944}
!92 = !{!15, !14, i64 952}
!93 = !{!15, !14, i64 960}
!94 = !{!15, !14, i64 968}
!95 = !{!15, !14, i64 976}
!96 = !{!15, !14, i64 984}
!97 = !{!15, !14, i64 992}
!98 = !{!15, !14, i64 1000}
!99 = !{!15, !14, i64 1008}
!100 = !{!15, !14, i64 1016}
!101 = !{!15, !14, i64 1024}
!102 = !{!15, !14, i64 1032}
!103 = !{!15, !14, i64 1040}
!104 = !{!15, !14, i64 1048}
!105 = !{!15, !14, i64 1056}
!106 = !{!15, !14, i64 1064}
!107 = !{!15, !14, i64 1072}
!108 = !{!15, !14, i64 1080}
!109 = !{!15, !14, i64 1088}
!110 = !{!15, !14, i64 1096}
!111 = !{!15, !14, i64 1104}
!112 = !{!15, !14, i64 1112}
!113 = !{!15, !14, i64 1120}
!114 = !{!15, !14, i64 1128}
!115 = !{!15, !14, i64 1136}
!116 = !{!15, !14, i64 1144}
!117 = !{!15, !14, i64 1152}
!118 = !{!15, !14, i64 1160}
!119 = !{!15, !14, i64 1168}
!120 = !{!15, !14, i64 1176}
!121 = !{!15, !14, i64 1184}
!122 = !{!15, !14, i64 1192}
!123 = !{!15, !14, i64 1200}
!124 = !{!15, !14, i64 1208}
!125 = !{!15, !14, i64 1216}
!126 = !{!15, !14, i64 1224}
!127 = !{!15, !14, i64 1232}
end_hunk_0
